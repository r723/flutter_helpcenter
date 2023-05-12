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
                backgroundColor: Colors.pink,
                elevation: 0,
                minimumSize: const Size.fromHeight(
                    40), // fromHeight use double.infinity as width and 40 is the height
              ),
              onPressed: () {
                ZendeskHelpcenter.initialize(
                    appId: "a14de18f781d1bd2c0660152083275f2c43b31ea1b30e2b3",
                    clientId: "mobile_sdk_client_0114e6e9c12d9b12967c",
                    nameIdentifier:
                        "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImlYanNxeGRYdGVSOW5MZGFfOGJ4ciJ9.eyJpc3MiOiJodHRwczovL2xvb3Btb25leS1kZXYuZXUuYXV0aDAuY29tLyIsInN1YiI6InNtc3w2MzRkMWJlNTBmYTBkNjBhNzA2OWRmNDUiLCJhdWQiOiJodHRwczovL2xvb3Btb25leS1kZXYuZXUuYXV0aDAuY29tL2FwaS92Mi8iLCJpYXQiOjE2ODM1MjMzNTksImV4cCI6MTY4MzYwOTc1OCwiYXpwIjoia1pxZ0QzVjhidDZmQWlDY3huWDZWZUhTSkM3Q1lSUm4iLCJzY29wZSI6InJlYWQ6Y3VycmVudF91c2VyIHVwZGF0ZTpjdXJyZW50X3VzZXJfbWV0YWRhdGEgZGVsZXRlOmN1cnJlbnRfdXNlcl9tZXRhZGF0YSBjcmVhdGU6Y3VycmVudF91c2VyX21ldGFkYXRhIGNyZWF0ZTpjdXJyZW50X3VzZXJfZGV2aWNlX2NyZWRlbnRpYWxzIGRlbGV0ZTpjdXJyZW50X3VzZXJfZGV2aWNlX2NyZWRlbnRpYWxzIHVwZGF0ZTpjdXJyZW50X3VzZXJfaWRlbnRpdGllcyBvZmZsaW5lX2FjY2VzcyIsImd0eSI6WyJyZWZyZXNoX3Rva2VuIiwicGFzc3dvcmQiXX0.uziBGyjVJpivuNrajx0ykKT62TUS1hRjqKb2lFMJOLD8fz6A2aboDVw9EfROHsQA5En-MawADzo048ZmAnrEmtliDrXJWPOfu-WjbbgzKs984CcxqTNS8kQ-N5WDSLpcy3DkfB4ZLKTU_uboUrgzG6Sqm-ZqLEwyQp0sY4Je1Elpr7N4Zkh_g1Svmf7T5q-8P0TWRQBxBybTzTk4j-UcubJlgzLaxCzm1TZIG_BX5TAczXpur-3sk0qhfWCrw4xKKSJxkoVG869qkjSMsvwg0cdh0c7_fINJ6bfQfEYnIDeDQB3E9Dce9ZFtC1CuXbDxXRJ5NNkSzGlYd_FE4b7ADw",
                    urlString: "https://loopmoney.zendesk.com");
              },
              child: const Text('Initialize'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                backgroundColor: Colors.pink,
                elevation: 0,
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
