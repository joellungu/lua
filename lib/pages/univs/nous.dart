import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Nous extends StatelessWidget {
  Future<void> _makePhoneCall(String phoneNumber) async {
    // Use `Uri` to ensure that `phoneNumber` is properly URL-encoded.
    // Just using 'tel:$phoneNumber' would create invalid URLs in some cases,
    // such as spaces in the input, which would cause `launch` to fail on some
    // platforms.
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nous Contacter"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              _makePhoneCall("002435588456");
            },
            title: Text("Reception"),
            subtitle: Text("002435588456"),
            trailing: Icon(Icons.call_outlined),
          ),
          ListTile(
            onTap: () {
              _makePhoneCall("002435588456");
            },
            title: Text("Secretaire academique"),
            subtitle: Text("002435588456"),
            trailing: Icon(Icons.call_outlined),
          ),
          ListTile(
            onTap: () {
              _makePhoneCall("002435588456");
            },
            title: Text("Service comptable"),
            subtitle: Text("002435588456"),
            trailing: Icon(Icons.call_outlined),
          ),
          ListTile(
            onTap: () {
              _makePhoneCall("002435588456");
            },
            title: Text("Service client"),
            subtitle: Text("002435588456"),
            trailing: Icon(Icons.call_outlined),
          ),
        ],
      ),
    );
  }
}
