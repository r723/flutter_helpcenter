<h1>Zendesk HelpCenter Flutter Plugin</h1>

<p>The Zendesk HelpCenter Flutter Plugin is a plugin for integrating Zendesk ticket creation functionality into your Flutter application. This plugin allows users to create support tickets within the app using Zendesk's HelpCenter for android and iOS.</p>

  

<h2>Features</h2>

<ul>
  <li>Ticket Creation: Users can create support tickets directly within the Flutter app.</li>
  <li>Zendesk Integration: The plugin seamlessly integrates with Zendesk's HelpCenter, ensuring smooth ticket creation and management.</li>
</ul>

<h2>Installation</h2>

<p>To use the Zendesk HelpCenter Flutter Plugin in your Flutter project, follow these steps:</p>

<ol>
  <li>Add the following dependency to your project's <code>pubspec.yaml</code> file:</li>
</ol>

<pre><code>dependencies:
  zendesk_helpcenter: ^1.0.0
</code></pre>

<ol start="2">
  <li>Run the following command to fetch the plugin's dependencies:</li>
</ol>

<pre><code>flutter pub get
</code></pre>

<ol start="3">
  <li>Import the plugin in your Dart code:</li>
</ol>

<pre><code>import 'package:zendesk_helpcenter/zendesk_helpcenter.dart';
</code></pre>

<h2>Usage</h2>

<p>To create a support ticket using the Zendesk HelpCenter Flutter Plugin, follow these steps:</p>

<ol>
  <li>Initialize the plugin with your Zendesk HelpCenter credentials:</li>
</ol>

<pre><code>ZendeskHelpcenter.initialize(
                    appId: "Your zendesk app id from zendesk developer console",
                    clientId: "Your zendesk client id from zendesk developer console",
                    nameIdentifier:
                        "Unique id for user , you can put jwt token or access token",
                    urlString: "App url from of zendesk app");
</code></pre>

<ol start="2">
  <li>Call the <code>createTicket</code> method to open the ticket creation interface:</li>
</ol>

<pre><code> ZendeskHelpcenter.showRequestList();

</code></pre>

<p>If community required custome filed with create ticket, let create the issue i will update repo</p>


<h2>Example</h2>

<p>Here's an example of how you can use the Zendesk HelpCenter Flutter Plugin:</p>

<pre><code>import 'package:flutter/material.dart';
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
                    urlString: "App url from of zendesk app");
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

</code></pre>

<p>Make sure to replace <code>'YOUR_ZENDESK_URL'</code>, <code>'YOUR_APP_ID'</code>, and <code>'YOUR_CLIENT_ID'</code> with your actual Zendesk HelpCenter credentials.</p>

<h2>Issues and Contributions</h2>

<p>If you encounter any issues with the Zendesk HelpCenter Flutter Plugin or would like to contribute to its development, please visit the GitHub repository: (https://github.com/r723/flutter_helpcenter/tree/main)</p>

<h2>License</h2>

<p>The Zendesk HelpCenter Flutter Plugin is released under the <a href="LICENSE">MIT License</a>.</p>

<h2>Acknowledgments</h2>

<p>We would like to acknowledge and thank Zendesk for their HelpCenter platform, which serves as the backbone for this plugin.</p>
