enum SafetyThreshold {
  blockNone('BLOCK_NONE'),
  blockOnlyHigh('BLOCK_ONLY_HIGH'),
  blockMediumAndAbove('BLOCK_MEDIUM_AND_ABOVE'),
  blockLowAndAbove('BLOCK_LOW_AND_ABOVE'),
  harmBlockThresholdUnspecified('HARM_BLOCK_THRESHOLD_UNSPECIFIED');

  const SafetyThreshold(this.value);
  final String value;
}
