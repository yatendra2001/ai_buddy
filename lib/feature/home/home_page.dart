import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF323232),
              Color(0xFF171717),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GreetingSection(),
                SizedBox(height: 32),
                ActionButtonSection(),
                SizedBox(height: 32),
                HistorySection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, Michael 👋',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'How may I help you today?',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}

class ActionButtonSection extends StatelessWidget {
  const ActionButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        ActionButton(
          icon: Icons.mic,
          label: 'Talk with Bot',
          color: Colors.green,
        ),
        ActionButton(
          icon: Icons.chat,
          label: 'Chat with Bot',
          color: Colors.purple,
        ),
        ActionButton(
          icon: Icons.image_search,
          label: 'Search by Image',
          color: Colors.pink,
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.color,
  }) : super(key: key);
  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color.withOpacity(0.9), color],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'History',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView(
              children: const [
                HistoryItem(label: 'I need some UI inspiration for dark...'),
                HistoryItem(label: 'Show me some color palettes for AI...'),
                HistoryItem(label: 'What are the best mobile apps 2023...'),
              ],
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
    super.key,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.history, color: Colors.green),
          const SizedBox(width: 8),
          Expanded(child: Text(label)),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
