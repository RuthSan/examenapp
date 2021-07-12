import 'package:dio/dio.dart';
import 'package:examenapp/src/modelimage/image_Model.dart';

class ProviderImagen{
  final _url = 'https://api.disneyapi.dev/characters';
  final _http = Dio();

  Future<List<ImagenModel>>obtenerImagenes() async {
    final response = await _http.get(_url);
    List<dynamic> data = response.data['data'];
    final listaimagenes = data.map((data) => ImagenModel.fromMapJson(data)).toList();
    //print(listaimagenes);
    return listaimagenes;
  }
}