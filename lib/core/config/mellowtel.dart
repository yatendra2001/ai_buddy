import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mellowtel/mellowtel.dart';

Mellowtel get mellowtel {
  return Mellowtel(dotenv.env['MELLOWTEL_KEY'] ?? '',
      appName: 'AI Buddy',
      appIcon: 'assets/images/app_logo.png',
      incentive: 'Help us continue building AI Buddy',
      yesText: '',);
}

Future<void> startMellowtel(
  BuildContext context, {
  bool showConsentDialog = false,
}) async {
  if (Platform.isIOS) {
    await mellowtel.start(
        // ignore: use_build_context_synchronously
        context,
        onOptIn: () async {},
        onOptOut: () async {},
        showConsentDialog: showConsentDialog,);
  }
}

Future<void> showMellowtelSettings(BuildContext context) async {
  await mellowtel.showConsentSettingsPage(context,
      onOptIn: () async {}, onOptOut: () async {},);
}
