import 'package:examenapp/src/provider/provider_image.dart';
import 'package:examenapp/src/modelimage/image_Model.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final _providerImagen = ProviderImagen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Disney')),
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
      body: FutureBuilder(
        future: _providerImagen.obtenerImagenes(),
        builder: (BuildContext context, AsyncSnapshot<List<ImagenModel>> snapShot){
          final listaimagen = snapShot.data;
        if(snapShot.hasData){
          return ListView.builder(
            itemCount: listaimagen!.length,
            itemBuilder: (BuildContext context, int i){
              final imagen = listaimagen[i];
              return _Disney(imagen);
            },
            );
          }else{
          return Center(child: CircularProgressIndicator());
          }
        },  
      ),
    );
  }
}

class _Disney extends StatelessWidget{
  final ImagenModel imagen;
  _Disney(this.imagen);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=>Navigator.pushNamed(context, '/detalle', arguments: imagen),
      title: Text(imagen.name!),
      subtitle: Text(imagen.createdAt!),
      leading: Image.network(imagen.imageUrl!),
      trailing: Icon(Icons.movie,color: Colors.purple,),
    );
  }
}

