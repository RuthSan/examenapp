import 'package:examenapp/src/modelimage/image_Model.dart';
import 'package:flutter/material.dart';

class Detalles extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     ImagenModel imagen = ModalRoute.of(context)!.settings.arguments as ImagenModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(imagen.name!),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_sharp),
            label: 'Peliculas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Estrenos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one),
            label: 'Mas',
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
              image: new AssetImage('assets/1.jpg'),
              fit: BoxFit.cover,
              color: Colors.black45,
              colorBlendMode: BlendMode.darken),
          new Center(
            child: Image.network(imagen.imageUrl!),
          ),
        ],
      ),
    );
  }
}