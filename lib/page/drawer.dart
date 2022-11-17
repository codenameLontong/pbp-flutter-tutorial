import 'package:flutter/material.dart';
import 'package:firstapp/page/home_page.dart';
import 'package:firstapp/page/form.dart';
import 'package:firstapp/page/to_do_page.dart';

class GlobalDrawer extends StatelessWidget {
  const GlobalDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Form'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('To-Do'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ToDoPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}