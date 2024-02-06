import 'package:ai_buddy/feature/gemini/src/models/gemini_model/gemini_model.dart';

class Constants {
  Constants._();
  static const String defaultModel = 'models/gemini-pro';
  static const String defaultVersion = 'v1beta';
  static const String defaultGenerateType = 'generateContent';
  static const String baseUrl = 'https://generativelanguage.googleapis.com/';

  static List<GeminiModel> get geminiDefaultModels => [
        {
          'name': 'models/chat-bison-001',
          'version': '001',
          'displayName': 'Chat Bison',
          'description': 'Chat-optimized generative language model.',
          'inputTokenLimit': 4096,
          'outputTokenLimit': 1024,
          'supportedGenerationMethods': [
            'generateMessage',
            'countMessageTokens',
          ],
          'temperature': 0.25,
          'topP': 0.95,
          'topK': 40,
        },
        {
          'name': 'models/text-bison-001',
          'version': '001',
          'displayName': 'Text Bison',
          'description': 'Model targeted for text generation.',
          'inputTokenLimit': 8196,
          'outputTokenLimit': 1024,
          'supportedGenerationMethods': [
            'generateText',
            'countTextTokens',
            'createTunedTextModel',
          ],
          'temperature': 0.7,
          'topP': 0.95,
          'topK': 40,
        },
        {
          'name': 'models/embedding-gecko-001',
          'version': '001',
          'displayName': 'Embedding Gecko',
          'description': 'Obtain a distributed representation of a text.',
          'inputTokenLimit': 1024,
          'outputTokenLimit': 1,
          'supportedGenerationMethods': ['embedText', 'countTextTokens'],
        },
        {
          'name': 'models/embedding-gecko-002',
          'version': '002',
          'displayName': 'Embedding Gecko 002',
          'description': 'Obtain a distributed representation of a text.',
          'inputTokenLimit': 2048,
          'outputTokenLimit': 1,
          'supportedGenerationMethods': ['embedText', 'countTextTokens'],
        },
        {
          'name': 'models/gemini-pro',
          'version': '001',
          'displayName': 'Gemini Pro',
          'description':
              'The best model for scaling across a wide range of tasks',
          'inputTokenLimit': 30720,
          'outputTokenLimit': 2048,
          'supportedGenerationMethods': ['generateContent', 'countTokens'],
          'temperature': 0.9,
          'topP': 1,
          'topK': 1,
        },
        {
          'name': 'models/gemini-pro-vision',
          'version': '001',
          'displayName': 'Gemini Pro Vision',
          'description':
              'The best image understanding model to handle a broad range of applications',
          'inputTokenLimit': 12288,
          'outputTokenLimit': 4096,
          'supportedGenerationMethods': ['generateContent', 'countTokens'],
          'temperature': 0.4,
          'topP': 1,
          'topK': 32,
        },
        {
          'name': 'models/gemini-ultra',
          'version': '001',
          'displayName': 'Gemini Ultra',
          'description': 'The most capable model for highly complex tasks',
          'inputTokenLimit': 30720,
          'outputTokenLimit': 2048,
          'supportedGenerationMethods': ['generateContent', 'countTokens'],
          'temperature': 0.9,
          'topP': 1,
          'topK': 32,
        },
        {
          'name': 'models/embedding-001',
          'version': '001',
          'displayName': 'Embedding 001',
          'description': 'Obtain a distributed representation of a text.',
          'inputTokenLimit': 2048,
          'outputTokenLimit': 1,
          'supportedGenerationMethods': ['embedContent', 'countTextTokens'],
        },
        {
          'name': 'models/aqa',
          'version': '001',
          'displayName': 'Model that performs Attributed Question Answering.',
          'description':
              'Model trained to return answers to questions that are grounded in provided sources, along with estimating answerable probability.',
          'inputTokenLimit': 7168,
          'outputTokenLimit': 1024,
          'supportedGenerationMethods': ['generateAnswer'],
          'temperature': 0.2,
          'topP': 1,
          'topK': 40,
        }
      ].map(GeminiModel.fromJson).toList();
}
