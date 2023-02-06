import 'dart:convert';

import 'package:http/http.dart';
import 'package:top2000/models/position.dart';
import 'package:top2000/models/song.dart';

class RemoteService {
  Future<List<Position>>? getSongs(String options) async {
    Client client = Client();
    Uri uri = Uri.parse(
        'https://10.0.2.2:5258/api/songs?year=2019&reversed=false&onlyIncreased=false&onlyDecreased=false');
    Response response = await client.get(uri);
    //if response if around 200 load it, else throw error
    if (response.statusCode < 300 && response.statusCode >= 200) {
      List<Position> songs;
      //fill list with car's
      songs = (jsonDecode(response.body) as List)
          .map((e) => Position.fromJson(e))
          .toList();
      return songs;
    } else {
      if (response.statusCode == 400) {
        return List.empty();
      }
      throw Exception("Probleem met ophalen van data, is de API wel online?");
    }
  }

  // Future<Photos?> getImage(String options) async {
  //   Client client = Client();
  //   Uri uri = Uri.parse(
  //       'https://api.pexels.com/v1/search?query=${options}&per_page=10');
  //   var response = await client.get(uri, headers: {
  //     'Authorization':
  //         '563492ad6f91700001000001536034ed63cc46deb5ca07609839aa59'
  //   });

  //   if (response.statusCode < 300 && response.statusCode >= 200) {
  //     Photos photoList;
  //     //fill list with photos
  //     photoList = Photos.fromJson(jsonDecode(response.body));

  //     return photoList;
  //   } else {
  //     if (response.statusCode == 400) {
  //       return null;
  //     }
  //     throw Exception("Probleem met ophalen van data, is de API wel online?");
  //   }
  // }
}
