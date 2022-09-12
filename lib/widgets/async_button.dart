import 'dart:developer';

import 'package:flutter/material.dart';

enum AsyncButtonStyle {
  outlined,
  text,
}

class AsyncButton extends StatefulWidget {
  final Future<bool> Function()? onPressed;
  final String label;
  final AsyncButtonStyle style;

  const AsyncButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.style = AsyncButtonStyle.outlined,
  }) : super(key: key);

  @override
  _AsyncButtonState createState() => _AsyncButtonState();
}

class _AsyncButtonState extends State<AsyncButton> {
  Widget? overlayWidget;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final c;
    switch (widget.style) {
      case AsyncButtonStyle.outlined:
        c = OutlinedButton.new;
        break;
      case AsyncButtonStyle.text:
        c = TextButton.new;
        break;
    }

    return c(
      onPressed: overlayWidget == null && widget.onPressed != null
          ? () async {
              setState(() {
                overlayWidget = SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              });

              bool success;
              try {
                success = await widget.onPressed!();
              } catch (e) {
                log("AsyncListTile: onTap failed", error: e);
                success = false;
              }

              if (!mounted) return;

              if (success) {
                setState(() {
                  overlayWidget = Transform.scale(
                    scale: 1.5,
                    child: Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.green,
                    ),
                  );
                });
              } else {
                setState(() {
                  overlayWidget = Transform.scale(
                    scale: 1.5,
                    child: Icon(
                      Icons.close,
                      size: 16,
                      color: Colors.red,
                    ),
                  );
                });
              }

              await Future.delayed(Duration(milliseconds: 1000));

              if (!mounted) return;

              setState(() => overlayWidget = null);
            }
          : null,
      child: Stack(
        children: [
          Opacity(
            opacity: overlayWidget != null ? 0.2 : 1,
            child: Text(widget.label),
          ),
          if (overlayWidget != null)
            Positioned.fill(
              child: Center(
                child: overlayWidget,
              ),
            ),
        ],
      ),
    );
  }
}
