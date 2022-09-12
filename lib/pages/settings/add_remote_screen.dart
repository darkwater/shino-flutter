import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shino/isar/keypair.dart';
import 'package:shino/isar/remote_host.dart';
import 'package:shino/main.dart';
import 'package:shino/widgets/async_listtile.dart';

import 'select_keypair_screen.dart';

const _defaultPort = "22";
const _defaultCommand = "./shino.sh";

class AddRemoteScreen extends StatefulWidget {
  const AddRemoteScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const AddRemoteScreen(),
      fullscreenDialog: true,
    );
  }

  @override
  State<AddRemoteScreen> createState() => _AddRemoteScreenState();
}

class _AddRemoteScreenState extends State<AddRemoteScreen> {
  late final GlobalKey<FormState> _formKey;

  final _nameController = TextEditingController(text: "sinon");
  final _addressController = TextEditingController(text: "192.168.0.106");
  final _portController = TextEditingController();
  final _usernameController = TextEditingController(text: "dark");
  final _passwordController = TextEditingController();
  final _commandController = TextEditingController();
  Keypair? _keypair;

  bool _showPassword = false;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add remote"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            _buildInputField(
              context,
              label: "Name",
              controller: _nameController,
            ),
            Row(
              children: [
                Expanded(
                  child: _buildInputField(
                    context,
                    label: "Address",
                    controller: _addressController,
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: _buildInputField(
                    context,
                    label: "Port",
                    controller: _portController,
                    defaultValue: _defaultPort,
                    port: true,
                  ),
                ),
              ],
            ),
            _buildInputField(
              context,
              label: "Username",
              controller: _usernameController,
            ),
            _buildInputField(
              context,
              label: "Password",
              controller: _passwordController,
              password: true,
            ),
            _buildInputField(
              context,
              label: "Command",
              controller: _commandController,
              defaultValue: _defaultCommand,
              mono: true,
              last: true,
            ),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(
                _keypair != null ? Icons.badge : Icons.badge_outlined,
              ),
              title: Text("Select keypair"),
              subtitle: Text(
                _keypair?.name ?? "Use key auth instead of password",
              ),
              trailing: _keypair != null
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () => setState(() => _keypair = null),
                    )
                  : null,
              onTap: _selectKeypair,
            ),
            Divider(),
            AsyncListTile(
              leading: const Icon(Icons.play_arrow),
              title: Text("Test"),
              onTap: _test,
            ),
            ListTile(
              leading: const Icon(Icons.save),
              title: Text("Save"),
              onTap: _save,
            ),
          ],
        ),
      ),
    );
  }

  RemoteHost _buildHost() {
    final host = RemoteHost(
      name: _nameController.text,
      address: _addressController.text,
      port: int.parse(_portController.text.isNotEmpty
          ? _portController.text
          : _defaultPort),
      username: _usernameController.text,
      password: _passwordController.text,
      command: _commandController.text.isNotEmpty
          ? _commandController.text
          : _defaultCommand,
    );

    host.keypair.value = _keypair;

    return host;
  }

  Future<void> _selectKeypair() async {
    final kp = await Navigator.push(
      context,
      SelectKeypairScreen.route(),
    );

    if (kp != null) {
      setState(() {
        _keypair = kp;
      });
    }
  }

  Future<bool> _test() async {
    if (_formKey.currentState!.validate()) {
      try {
        final connection =
            await _buildHost().connect().timeout(Duration(seconds: 8));

        final res =
            await connection.execute("uname -a").timeout(Duration(seconds: 3));

        log(res);

        return true;
      } catch (e, stack) {
        log("test error:", error: e, stackTrace: stack);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "Test failed: $e",
              softWrap: true,
            ),
          ),
        );

        return false;
      }
    }

    return false;
  }

  void _save() {
    if (_formKey.currentState!.validate()) {
      final host = _buildHost();
      host.save();

      Navigator.pop(context, host);
    }
  }

  Widget _buildInputField(
    BuildContext context, {
    required String label,
    required TextEditingController controller,
    String? defaultValue,
    bool port = false,
    bool password = false,
    bool mono = false,
    bool last = false,
  }) {
    return ListTile(
      title: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: defaultValue,
          floatingLabelBehavior:
              defaultValue != null ? FloatingLabelBehavior.always : null,
          suffixIcon: password
              ? IconButton(
                  icon: Icon(
                      _showPassword ? Icons.visibility : Icons.visibility_off),
                  onPressed: () =>
                      setState(() => _showPassword = !_showPassword),
                )
              : null,
        ),
        style: mono ? monoTextStyle : null,
        keyboardType: port ? TextInputType.number : TextInputType.text,
        textInputAction: last ? TextInputAction.done : TextInputAction.next,
        obscureText: password && !_showPassword,
        validator: (value) {
          if (password) return null;

          if (value == null || value.isEmpty) {
            if (defaultValue != null) {
              return null;
            } else if (port) {
              return "No port";
            } else {
              return "Please enter a value";
            }
          }

          if (port &&
              (int.tryParse(value) == null ||
                  int.parse(value) < 1 ||
                  int.parse(value) > 65535)) {
            return "Bad port";
          }

          return null;
        },
      ),
    );
  }
}
