import 'dart:developer';

import 'package:flutter/material.dart';

class AsyncListTile extends StatefulWidget {
  final Future<bool> Function()? onTap;
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;

  const AsyncListTile({
    Key? key,
    this.onTap,
    this.title,
    this.subtitle,
    this.leading,
    this.trailing,
  }) : super(key: key);

  @override
  _AsyncListTileState createState() => _AsyncListTileState();
}

class _AsyncListTileState extends State<AsyncListTile> {
  Widget? _spinner;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: _spinner == null,
      onTap: _spinner == null && widget.onTap != null
          ? () async {
              setState(() {
                _spinner = SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator.adaptive(
                    strokeWidth: 2,
                  ),
                );
              });

              bool success;
              try {
                success = await widget.onTap!();
              } catch (e) {
                log("AsyncListTile: onTap failed", error: e);
                success = false;
              }

              if (!mounted) return;

              if (success) {
                setState(() {
                  _spinner = Icon(
                    Icons.check,
                    color: Colors.green,
                  );
                });
              } else {
                setState(() {
                  _spinner = Icon(
                    Icons.close,
                    color: Colors.red,
                  );
                });
              }

              await Future.delayed(Duration(milliseconds: 1000));

              if (!mounted) return;

              setState(() => _spinner = null);
            }
          : null,
      leading: _spinner ?? widget.leading,
      title: widget.title,
      subtitle: widget.subtitle,
      trailing: widget.trailing,
    );
  }
}
