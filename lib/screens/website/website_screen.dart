import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsiteScreen extends StatelessWidget {
  WebsiteScreen({super.key});
  final Uri url = Uri.parse("https://project-tsc.netlify.app");

  Future<void> launch_Url() async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Go to Website"),
        onPressed: () => launch_Url(),
      ),
    );
  }
}
