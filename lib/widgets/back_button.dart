import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  const BackButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.chevron_left,
          size: 50,
          color: Color(0xFF1A1D1E),
        ),
      ),
    );
  }
}
