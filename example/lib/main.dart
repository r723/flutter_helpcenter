import 'package:flutter/material.dart';
import 'package:zendesk_helpcenter/zendesk_helpcenter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6), // <-- Radius
                ),
                backgroundColor: Colors.red,
                elevation: 10,
                minimumSize: const Size.fromHeight(
                    40), // fromHeight use double.infinity as width and 40 is the height
              ),
              onPressed: () {
                ZendeskHelpcenter.initialize(
                    appId: "Your zendesk app id from zendesk developer console",
                    clientId: "Your zendesk client id from zendesk developer console",
                    nameIdentifier:
                        "Unique id for user , you can put jwt token or access token",
                    urlString: "App url from of zendesk app"
                    
                    );
              },
              child: const Text('Initialize'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                backgroundColor: Colors.blue,
                elevation: 10,
                minimumSize: const Size.fromHeight(40),
              ),
              onPressed: () {
                ZendeskHelpcenter.showRequestList();
              },
              child: const Text(
                'Request List',
              ),
            ),
            const SizedBox(height: 20),
          ],
        )),
      ),
    );
  }
}
