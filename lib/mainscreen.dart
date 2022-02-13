import 'package:flutter/material.dart';
import 'package:localnotificationflutter/notificationservice.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();

    tz.initializeTimeZones();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
                NotificationService().showNotification(1, "title", "body",1);
              },
           child: Text("Notifiction")),
        ),
        ElevatedButton(
          onPressed: () {
                NotificationService().showNotification(2, "title", "body", 5);
              }, 
        child: Text("send notification in 5 secounds")),
      ],

        ),
      ),
    );
  }
}
