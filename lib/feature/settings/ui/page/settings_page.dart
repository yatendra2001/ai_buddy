import 'package:flutter/material.dart';
import 'package:ai_buddy/core/ui/dialog/dialogs.dart';
import 'package:ai_buddy/core/util/urls.dart';
import 'package:ai_buddy/feature/settings/ui/widget/app_version.dart';
import 'package:ai_buddy/feature/settings/ui/widget/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SettingsTile(
            icon: Icons.security_outlined,
            label: 'Privacy Policy',
            onTap: Urls.showPrivacyPolicy,
          ),
          const SettingsTile(
            icon: Icons.fact_check_outlined,
            label: 'Terms of Service',
            onTap: Urls.showTermsOfService,
          ),
          SettingsTile(
            icon: Icons.delete_outlined,
            label: 'Delete Account',
            onTap: () => Dialogs.showDeleteAccountConfirmationDialog(context),
          ),
          SettingsTile(
            icon: Icons.logout_outlined,
            label: 'Sign Out',
            onTap: () => Dialogs.showLogOutConfirmationDialog(context),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: AppVersion(),
          ),
        ],
      ),
    );
  }
}
