import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({
    super.key,
    required this.title,
    this.horizontal = 8,
    this.vertical = 2,
  });

  final double horizontal;
  final double vertical;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      decoration: BoxDecoration(
        color: const Color(0xffF5E6BD),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(title),
    );
  }
}
