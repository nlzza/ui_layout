import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Button(
          icon: Icons.call,
          text: "CALL",
        ),
        Button(
          icon: Icons.near_me,
          text: "ROUTE",
        ),
        Button(
          icon: Icons.share,
          text: "SHARE",
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: Colors.purple,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.purple),
        )
      ],
    );
  }
}
