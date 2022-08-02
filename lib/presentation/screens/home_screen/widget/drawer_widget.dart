import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/auth.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(color: Colors.black87),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${AuthSystem.auth.currentUser?.displayName}',
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    '${AuthSystem.auth.currentUser?.email}',
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              )),
          const Spacer(),
          ListTile(
            title: const Text(
              'Sign out',
              style: TextStyle(fontSize: 20),
            ),
            leading: const Icon(
              Icons.exit_to_app,
              size: 25,
            ),
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', (route) => false);
            },
          )
        ],
      ),
    );
  }
}
