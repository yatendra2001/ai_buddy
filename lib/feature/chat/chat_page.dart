import 'package:ai_buddy/feature/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:uuid/uuid.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<types.Message> messages = [];
  final user = const types.User(id: 'user_id');
  final uuid = const Uuid();

  @override
  Widget build(BuildContext context) {
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
                      Theme.of(context).colorScheme.primary.withOpacity(0.3),
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
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 108,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onSurface,
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
                          'Personal AI Buddy',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    flex: 12,
                    child: Chat(
                      messages: messages,
                      onSendPressed: _handleSendPressed,
                      user: user,
                      theme: DefaultChatTheme(
                        backgroundColor: Colors.transparent,
                        primaryColor: Theme.of(context).colorScheme.primary,
                        secondaryColor: Theme.of(context).colorScheme.secondary,
                        inputBackgroundColor:
                            Theme.of(context).colorScheme.onBackground,
                        inputTextColor: Theme.of(context).colorScheme.onSurface,
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

  void _handleSendPressed(types.PartialText text) {
    final textMessage = types.TextMessage(
      author: user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: uuid.v4(),
      text: text.text,
    );

    // Simulate sending message
    setState(() {
      messages.insert(0, textMessage);
    });

    // Simulate receiving a response from the Gemini model
    _simulateGeminiResponse(text.text);
  }

  void _simulateGeminiResponse(String query) {
    // Placeholder for the response generation logic
    final responseText = "This is a simulated response to '$query'.";

    final responseMessage = types.TextMessage(
      author: const types.User(id: 'gemini_model'),
      createdAt: DateTime.now().millisecondsSinceEpoch +
          1, // Ensure it comes after the user's message
      id: uuid.v4(),
      text: responseText,
    );

    // Simulate a slight delay in receiving the response
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        messages.insert(0, responseMessage);
      });
    });
  }
}
