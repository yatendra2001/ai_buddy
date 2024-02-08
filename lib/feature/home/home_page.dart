import 'package:ai_buddy/core/logger/logger.dart';
import 'package:ai_buddy/core/navigation/route.dart';
import 'package:ai_buddy/feature/hive/config/type_of_bot.dart';
import 'package:ai_buddy/feature/hive/model/chat_bot/chat_bot.dart';
import 'package:ai_buddy/feature/hive/repository/hive_repository.dart';
import 'package:ai_buddy/feature/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uuid/uuid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ChatBot> chatBotsList = [];
  ChatBot? chatBot;
  @override
  void initState() {
    super.initState();
    _getChatBots();
  }

  Future<void> _getChatBots() async {
    final chatBotsList = await HiveRepository().getChatBots();
    logInfo('ChatBots List: $chatBotsList');
  }

  final uuid = const Uuid();

  void _showAllHistory(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return ListView.builder(
          itemCount: chatBotsList.length,
          itemBuilder: (context, index) {
            final chatBot = chatBotsList[index];
            return HistoryItem(
              icondata: chatBot.typeOfBot == TypeOfBot.pdf
                  ? Entypo.book_open
                  : chatBot.typeOfBot == TypeOfBot.image
                      ? FontAwesomeIcons.images
                      : Linecons.comment,
              label: chatBot.title,
              color: chatBot.typeOfBot == TypeOfBot.pdf
                  ? Theme.of(context).colorScheme.primary
                  : chatBot.typeOfBot == TypeOfBot.image
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.tertiary,
              chatbot: chatBot,
            );
          },
        );
      },
    );
  }

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
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
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
                    child: Text(
                      'Personal AI Buddy',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.background,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'How may I help\nyou today?',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontSize: 32),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(
                        child: CardButton(
                          title: 'Chat\nwith PDF',
                          color: Theme.of(context).colorScheme.primary,
                          icondata: Entypo.book_open,
                          isMainButton: true,
                          onPressed: () => AppRoute.chat.push(context),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          children: [
                            CardButton(
                              title: 'Chat with AI',
                              color: Theme.of(context).colorScheme.secondary,
                              icondata: Linecons.comment,
                              isMainButton: false,
                              onPressed: () async {
                                setState(() {
                                  chatBot = ChatBot(
                                    messagesList: [],
                                    id: uuid.v4(),
                                    title: 'Placeholder title',
                                    typeOfBot: TypeOfBot.text,
                                  );
                                });
                                await HiveRepository().saveChatBot(
                                  chatBot: chatBot!,
                                );
                                AppRoute.chat.push(context);
                              },
                            ),
                            const SizedBox(height: 8),
                            CardButton(
                              title: 'Ask Image',
                              color: Theme.of(context).colorScheme.tertiary,
                              icondata: FontAwesomeIcons.images,
                              isMainButton: false,
                              onPressed: () => AppRoute.chat.push(context),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'History',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary
                                        .withOpacity(0.95),
                                  ),
                            ),
                            TextButton(
                              onPressed: () => _showAllHistory(context),
                              child: Text(
                                'See all',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withOpacity(0.8),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (chatBotsList.isEmpty)
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(64),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const SizedBox(width: 12),
                                Text(
                                  'No chats yet',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary
                                            .withOpacity(0.95),
                                      ),
                                ),
                                const FaIcon(Entypo.back_in_time),
                                const SizedBox(width: 12),
                              ],
                            ),
                          ),
                        )
                      else
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount:
                              chatBotsList.length > 3 ? 3 : chatBotsList.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 4),
                          itemBuilder: (context, index) {
                            final chatBot = chatBotsList[index];
                            return HistoryItem(
                              label: chatBot.title,
                              icondata: chatBot.typeOfBot == TypeOfBot.pdf
                                  ? Entypo.book_open
                                  : chatBot.typeOfBot == TypeOfBot.image
                                      ? FontAwesomeIcons.images
                                      : Linecons.comment,
                              color: chatBot.typeOfBot == TypeOfBot.pdf
                                  ? Theme.of(context).colorScheme.primary
                                  : chatBot.typeOfBot == TypeOfBot.image
                                      ? Theme.of(context).colorScheme.secondary
                                      : Theme.of(context).colorScheme.tertiary,
                              chatbot: chatBot,
                            );
                          },
                        ),
                    ],
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
