import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://saenuree3.oopy.io/');

void main() => runApp(
      MaterialApp(
        home: Material(
          child: Center(
            child: GestureDetector(
              onTap: () {
                _launchUrl();
              },
              child: Image.asset(
                'images/saenuree3_2.png',
                width: 700,
                height: 700,
              ),
            ),
          ),
        ),
      ),
    );

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
