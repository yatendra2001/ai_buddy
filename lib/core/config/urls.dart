import 'package:url_launcher/url_launcher.dart';

class Urls {
  Urls._();

  static const _getApiKeyLink = 'https://makersuite.google.com/app/apikey';

  static void getApiKeyLink() => _show(_getApiKeyLink);

  static void _show(String url) {
    launchUrl(Uri.parse(url));
  }
}
