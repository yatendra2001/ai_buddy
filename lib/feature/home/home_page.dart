import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackgroundCurvesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.05)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // Draw multiple concentric curves
    for (double i = 0; i < size.height * 0.4; i += 20) {
      final path = Path();
      path.moveTo(0, i);
      path.quadraticBezierTo(
        size.width / 4,
        i - 10,
        size.width / 2,
        i,
      );
      path.quadraticBezierTo(
        size.width * 3 / 4,
        i + 10,
        size.width,
        i,
      );
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  const SizedBox(height: 16),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSurface,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(4, 4),
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
                            ),
                            const SizedBox(height: 8),
                            CardButton(
                              title: 'Ask Image',
                              color: Theme.of(context).colorScheme.tertiary,
                              icondata: FontAwesomeIcons.images,
                              isMainButton: false,
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
                              onPressed: () {
                                // TODO: Implement see all action
                              },
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
                      const SizedBox(height: 16),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        separatorBuilder: (_, __) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final items = [
                            {
                              'icon': Entypo.book_open,
                              'text': 'I need some UI inspiration for dark...',
                              'color': Theme.of(context).colorScheme.primary,
                            },
                            {
                              'icon': Linecons.comment,
                              'text': 'Show me some color palettes for AI...',
                              'color': Theme.of(context).colorScheme.secondary,
                            },
                            {
                              'icon': FontAwesomeIcons.images,
                              'text': 'What are the best mobile apps 2023...',
                              'color': Theme.of(context).colorScheme.tertiary,
                            },
                          ];
                          return HistoryItem(
                            label: items[index]['text']! as String,
                            icondata: items[index]['icon']! as IconData,
                            color: items[index]['color']! as Color,
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

class CardButton extends StatelessWidget {
  const CardButton({
    required this.title,
    required this.icondata,
    required this.color,
    required this.isMainButton,
    super.key,
  });
  final String title;
  final IconData icondata;
  final Color color;
  final bool isMainButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // TODO: Implement navigation to chat feature
      },
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
                    Theme.of(context).colorScheme.background.withOpacity(0.2),
                child: Icon(
                  icondata,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
              FaIcon(
                CupertinoIcons.arrow_up_right,
                color: Theme.of(context).colorScheme.background,
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
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: isMainButton ? 32 : 18,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    required this.label,
    required this.icondata,
    required this.color,
    super.key,
  });
  final String label;
  final IconData icondata;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ElevatedButton(
        onPressed: () {},
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
              backgroundColor: color,
              radius: 21,
              child: Icon(
                icondata,
                size: 20,
                color: Theme.of(context).colorScheme.background,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withOpacity(0.95),
                    ),
              ),
            ),
            const Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
