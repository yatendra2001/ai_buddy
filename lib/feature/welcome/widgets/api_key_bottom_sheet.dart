import 'package:ai_buddy/core/extension/context.dart';
import 'package:ai_buddy/core/navigation/route.dart';
import 'package:ai_buddy/core/ui/input/input_field.dart';
import 'package:ai_buddy/core/util/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class APIKeyBottomSheet extends StatefulWidget {
  const APIKeyBottomSheet({
    required this.apiKeyController,
    required this.isCalledFromHomePage,
    super.key,
  });

  final TextEditingController apiKeyController;
  final bool isCalledFromHomePage;

  @override
  State<APIKeyBottomSheet> createState() => _APIKeyBottomSheetState();
}

class _APIKeyBottomSheetState extends State<APIKeyBottomSheet> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 50,
                decoration: BoxDecoration(
                  color: context.colorScheme.onSurface.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(2),
                ),
                margin: const EdgeInsets.only(bottom: 8),
              ),
              const SizedBox(height: 16),
              InputField.api(
                controller: widget.apiKeyController,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  context.closeKeyboard();
                  final apiKey = widget.apiKeyController.text;

                  setState(() {
                    _isLoading = true;
                  });
                  await SecureStorage().storeApiKey(apiKey);
                  setState(() {
                    _isLoading = false;
                  });

                  if (widget.isCalledFromHomePage) {
                    context.pop();
                  } else {
                    AppRoute.home.go(context);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.onSurface,
                  minimumSize: const Size(double.infinity, 56),
                ),
                child: _isLoading
                    ? CircularProgressIndicator(
                        color: context.colorScheme.surface,
                      )
                    : Text(
                        'Submit',
                        style: context.textTheme.labelLarge!.copyWith(
                          color: context.colorScheme.surface,
                        ),
                      ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () => launchUrl(
                  Uri.parse(
                    'https://makersuite.google.com/app/apikey',
                  ),
                ),
                child: Text(
                  'Get your Gemini API key from here',
                  style: context.textTheme.labelMedium!.copyWith(
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
