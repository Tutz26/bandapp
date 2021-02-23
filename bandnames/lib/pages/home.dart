import 'package:flutter/material.dart';
import 'package:bandnames/models/band.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Band> bands = [
    Band(id: '1', name: 'Metallica', votes: 5),
    Band(id: '2', name: 'Queen', votes: 5),
    Band(id: '3', name: 'Heroes del silencio', votes: 5),
    Band(id: '4', name: 'Bon Jovi', votes: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BandNames', style: TextStyle(color: Colors.black87 ) ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: ListView.builder(
          itemCount: bands.length,
          itemBuilder: (context, i) => _bandTile(bands[i] )
          ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        elevation: 1,
        onPressed: (){},
      ),
    );
  }

  ListTile _bandTile( Band band) {
    return ListTile(
            leading: CircleAvatar(
              child: Text(band.name.substring(0,2) ),
              backgroundColor: Colors.blue[100],
            ),
      title: Text(band.name),
      trailing: Text('${ band.votes }', style: TextStyle( fontSize: 20) ),
      onTap: () {
              print(band.name);
      },
          );
  }
}
