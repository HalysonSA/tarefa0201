import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      home: const MyHomePage(title: 'Barra de navegação'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StyledText(
                text:
                    'Esse é um texto <red>com</red> <bold>tags</bold> <red>estilizadas</red>',
                tags: {
                  'bold': StyledTextTag(
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  'red': StyledTextTag(
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                },
                style: const TextStyle(fontSize: 30),
              ),
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://picsum.photos/250?image=9',
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.home),
                label: const Text('Home'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(30),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Adicionar'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(30),
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.person),
                label: const Text('Perfil'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(30),
                ),
              ),
            ),
          ],
        ));
  }
}
