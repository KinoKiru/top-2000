import 'package:url_launcher/url_launcher.dart' as ul;

Future<void> launchSite(String url) async {
  final Uri site = Uri(
    scheme: 'https',
    path: url,
  );
  if (!await ul.launchUrl(
    site,
    mode: ul.LaunchMode.inAppWebView,
  )) {
    throw 'Could not launch';
  }
  return;
}
