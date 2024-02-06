enum SafetyCategory {
  harassment('HARM_CATEGORY_HARASSMENT'),
  hateSpeech('HARM_CATEGORY_HATE_SPEECH'),
  sexuallyExplicit('HARM_CATEGORY_SEXUALLY_EXPLICIT'),
  dangerous('HARM_CATEGORY_DANGEROUS');

  const SafetyCategory(this.value);
  final String value;
}
