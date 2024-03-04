import 'dart:convert';
import 'dart:html';
import 'note.dart';
import 'urls.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


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
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Django Demo'),
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
  Client client = http.Client();
  List<Node> notes = [];

  void initState() {
    _retrieveNotes();
    super.initState();
  }

  _retrieveNotes() async{
    notes = [];
    List response = json.decode((await client.get(ApiUrls.retrieveUrl())).body);
    response.forEach((element) {
      notes.add(Note.fromMap(element) as Node);
     });
     setState(() {
      
     });
  }

  void _deleteNode(int id) {
    client.delete(ApiUrls.deleteUrl(id));
    _retrieveNotes();
  }

  

  @override
  Widget build(BuildContext context) {   
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: () async{
          _retrieveNotes();
        },
        child: ListView.builder(
          itemCount: notes.title,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(notes[index].title), // Use notes[index].title here
              onTap: () {},
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => _deleteNode(notes[index].id),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){} ,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}