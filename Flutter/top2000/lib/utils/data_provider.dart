import 'dart:convert';
import 'package:http/http.dart';
import 'package:top2000/models/artist.dart';
import 'package:top2000/models/artist_page.dart';
import 'package:top2000/models/home_page.dart';

class RemoteService {
  static final Client _client = Client();
  final String _apiUrl = 'http://143.178.215.190:5325/api';

  Future<List<HomeData>>? getSongs(String options) async {
    Uri uri = Uri.parse('$_apiUrl/songs?$options');
    Response response = await _client.get(uri);
    //if response if around 200 load it, else throw error
    if (response.statusCode < 300 && response.statusCode >= 200) {
      List<HomeData> songs;
      //fill list with car's
      songs = (jsonDecode(response.body) as List<dynamic>)
          .map((dynamic e) => HomeData.fromJson(e))
          .toList();
      return songs;
    } else {
      if (response.statusCode == 400) {
        return List<HomeData>.empty();
      }
      throw Exception('Probleem met ophalen van data, is de API wel online?');
    }
  }

  Future<List<ArtistData>>? getArtist(String options) async {
    Uri uri = Uri.parse('$_apiUrl/artist?ArtistId=$options');
    Response response = await _client.get(uri);
    //if response if around 200 load it, else throw error
    if (response.statusCode < 300 && response.statusCode >= 200) {
      List<ArtistData> artists;
      //fill list with car's
      artists = (jsonDecode(response.body) as List<dynamic>)
          .map((dynamic e) => ArtistData.fromJson(e))
          .toList();
      return artists;
    } else {
      if (response.statusCode == 400) {
        return List<ArtistData>.empty();
      }
      throw Exception('Probleem met ophalen van data, is de API wel online?');
    }
  }

  Future<List<Artist>> searchArtist(String name) async {
    Uri uri = Uri.parse('$_apiUrl/search?ArtistName=$name');
    Response response = await _client.get(uri);
    if (response.statusCode < 300 && response.statusCode >= 200) {
      List<Artist> artists;
      artists = (jsonDecode(response.body) as List<dynamic>)
          .map((dynamic e) => Artist.fromJson(e))
          .toList();
      return artists;
    } else {
      if (response.statusCode == 400) {
        return List<Artist>.empty();
      }
      throw Exception(
          'Probleem met ophalen van de data, is de API wel online?');
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
