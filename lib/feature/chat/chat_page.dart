import 'package:ai_buddy/core/config/assets_constants.dart';
import 'package:ai_buddy/core/config/type_of_bot.dart';
import 'package:ai_buddy/core/config/type_of_message.dart';
import 'package:ai_buddy/feature/chat/provider/message_provider.dart';
import 'package:ai_buddy/feature/home/provider/chat_bot_provider.dart';
import 'package:ai_buddy/feature/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatPage extends ConsumerWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatBot = ref.watch(messageListProvider);
    final color = chatBot.typeOfBot == TypeOfBot.pdf
        ? Theme.of(context).colorScheme.primary
        : chatBot.typeOfBot == TypeOfBot.text
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.tertiary;
    final imagePath = chatBot.typeOfBot == TypeOfBot.pdf
        ? AssetConstants.pdfLogo
        : chatBot.typeOfBot == TypeOfBot.image
            ? AssetConstants.imageLogo
            : AssetConstants.textLogo;

    final List<types.Message> messages = chatBot.messagesList.map((msg) {
      return types.TextMessage(
        author: types.User(id: msg['typeOfMessage'] as String),
        createdAt:
            DateTime.parse(msg['createdAt'] as String).millisecondsSinceEpoch,
        id: msg['id'] as String,
        text: msg['text'] as String,
      );
    }).toList()
      ..sort((a, b) => b.createdAt!.compareTo(a.createdAt!));

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: -300,
              top: -00,
              child: Container(
                height: 500,
                width: 600,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      color.withOpacity(0.5),
                      Theme.of(context).colorScheme.background.withOpacity(0.5),
                    ],
                  ),
                ),
              ),
            ),
            CustomPaint(
              painter: BackgroundCurvesPainter(),
              size: Size.infinite,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        onPressed: () {
                          ref
                              .read(chatBotListProvider.notifier)
                              .updateChatBotOnHomeScreen(chatBot);
                          Navigator.of(context).pop();
                        },
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              offset: const Offset(4, 4),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'AI Buddy',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.surface,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 42,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Chat(
                      messages: messages,
                      onSendPressed: (text) => ref
                          .watch(messageListProvider.notifier)
                          .handleSendPressed(text.text),
                      user: const types.User(id: TypeOfMessage.user),
                      showUserAvatars: true,
                      avatarBuilder: (user) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: CircleAvatar(
                          backgroundColor: color,
                          radius: 19,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              imagePath,
                              color: Theme.of(context).colorScheme.surface,
                            ),
                          ),
                        ),
                      ),
                      theme: DefaultChatTheme(
                        backgroundColor: Colors.transparent,
                        primaryColor: Theme.of(context).colorScheme.onSurface,
                        secondaryColor: color,
                        inputBackgroundColor:
                            Theme.of(context).colorScheme.onBackground,
                        inputTextColor: Theme.of(context).colorScheme.onSurface,
                        sendingIcon: Icon(
                          Icons.send,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        inputTextCursorColor:
                            Theme.of(context).colorScheme.onSurface,
                        receivedMessageBodyTextStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                        sentMessageBodyTextStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                        dateDividerTextStyle: TextStyle(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          height: 1.333,
                        ),
                        inputTextStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        inputTextDecoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          isCollapsed: true,
                          fillColor: Theme.of(context).colorScheme.onBackground,
                        ),
                        inputBorderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
