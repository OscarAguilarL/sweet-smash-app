import 'package:flutter/material.dart';
import 'package:sweet_smash_app/modules/auth/services/auth_service.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.getUserProfile(),
      builder: (BuildContext context, AsyncSnapshot<String> model) {
        if (model.hasData) {
          return Center(child: Text(model.data!));
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
