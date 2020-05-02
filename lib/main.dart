import 'package:flutter/material.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Todo List App',
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todo List'),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            _buildCard('images/monday.png'),
            _buildCard('images/tuesday.png'),
            _buildCard('images/wednesday.png'),
            _buildCard('images/thursday.png'),
            _buildCard('images/friday.png'),
            _buildCard('images/saturday.png'),
            _buildCard('images/sunday.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String image) {
    return
      Container(
        margin: const EdgeInsets.only(bottom: 32.0),
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset(
                image,
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              )
            ],
          ),
        )
    );
  }
}