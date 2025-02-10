import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Settings'),
        actions: [
          Padding(
              padding: const EdgeInsets.only(bottom: 8, right: 12),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(21),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.help,
                        color: Colors.blue[100],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Help')
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
