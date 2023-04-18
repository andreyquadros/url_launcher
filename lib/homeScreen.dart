import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_example/launch_intents.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final Uri url = Uri(scheme: 'https', host: 'www.globo.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              makePhoneCall('+5569993485858');
            }, child: Text('Fazer ligação')),
            ElevatedButton(onPressed: (){
              launchInBrowser(url);
            }, child: Text('Acessar Site')),
            ElevatedButton(onPressed: (){
              launchInWebViewOrVC(url);
            }, child: Text('Acessar com WebView')),


          ],
        ),
      ),
    );
  }
}
