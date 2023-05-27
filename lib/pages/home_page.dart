import 'package:flutter/material.dart';
import 'package:sweet_smash_app/config.dart';
import 'package:sweet_smash_app/services/shared_service.dart';
import 'package:sweet_smash_app/widgets/user_profile_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Config.appName),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              SharedService.logout(context);
            },
            icon: const Icon(Icons.logout_rounded),
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],

      body: const UserProfileInfo(),
    );
  }
}
