import 'package:ai_buddy/core/navigation/route.dart';
import 'package:ai_buddy/feature/hive/model/chat_bot/chat_bot.dart';
import 'package:ai_buddy/feature/hive/repository/hive_repository.dart';
import 'package:flutter/material.dart';

class HistoryItem extends StatefulWidget {
  const HistoryItem({
    required this.label,
    required this.icondata,
    required this.color,
    required this.chatbot,
    super.key,
  });
  final String label;
  final IconData icondata;
  final Color color;
  final ChatBot chatbot;

  @override
  State<HistoryItem> createState() => _HistoryItemState();
}

class _HistoryItemState extends State<HistoryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ElevatedButton(
        onPressed: () {
          AppRoute.chat.push(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.onBackground,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: widget.color,
              radius: 21,
              child: Icon(
                widget.icondata,
                size: 20,
                color: Theme.of(context).colorScheme.background,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                widget.label,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(0.95),
                    ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              style: IconButton.styleFrom(
                padding: null,
              ),
              onPressed: () async {
                await HiveRepository().deleteChatBot(chatBot: widget.chatbot);
              },
            ),
          ],
        ),
      ),
    );
  }
}
