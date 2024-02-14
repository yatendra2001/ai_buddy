import 'package:ai_buddy/core/extension/context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    required this.title,
    required this.imagePath,
    required this.color,
    required this.isMainButton,
    required this.onPressed,
    super.key,
  });
  final String title;
  final String imagePath;
  final Color color;
  final bool isMainButton;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor:
                    context.colorScheme.background.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    imagePath,
                    color: context.colorScheme.background,
                  ),
                ),
              ),
              Icon(
                CupertinoIcons.arrow_up_right,
                color: context.colorScheme.background,
                size: 32,
              ),
            ],
          ),
          SizedBox(
            height: isMainButton ? 50 : 8,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: context.textTheme.bodyLarge!.copyWith(
                color: context.colorScheme.background,
                fontSize: isMainButton ? 32 : 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
