import 'package:flutter/material.dart';
import 'package:sweet_smash_app/config.dart';
import 'package:sweet_smash_app/services/shared_service.dart';
import 'package:url_launcher/url_launcher.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Config.appName),
        elevation: 0,
        actions: [
          //* LOGOUT
          IconButton(
            onPressed: () => SharedService.logout(context),
            icon: const Icon(Icons.logout_rounded),
            color: Colors.white,
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Compra realizada con éxito",
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () async {
            //     var url = Uri.parse('https://www.example.com');
            //     if (!await launchUrl(url)) {
            //       throw Exception('Could not launch $url');
            //     }
            //   },
            //   child: const Text("Realizar encuesta de satisfacción"),
            // ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, "/"),
              child: const Text("Volver a inicio"),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
