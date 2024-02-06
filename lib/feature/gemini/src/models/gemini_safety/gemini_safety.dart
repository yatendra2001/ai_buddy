import 'package:ai_buddy/feature/gemini/src/models/gemini_safety/gemini_safety_category.dart';
import 'package:ai_buddy/feature/gemini/src/models/gemini_safety/gemini_safety_threshold.dart';

class SafetySetting {
  SafetySetting({
    required this.category,
    required this.threshold,
  });
  final SafetyCategory category;
  final SafetyThreshold threshold;
}
