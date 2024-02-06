import 'package:ai_buddy/feature/gemini/src/models/candidates/candidates.dart';

extension CandidateExtension on Candidates {
  String? get output => content?.parts?.lastOrNull?.text;
}
