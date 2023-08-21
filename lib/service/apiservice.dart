import 'dart:convert';
import 'package:http/http.dart' as http;


import '../model/models.dart';

class ApiService{
  Future<List<Articles_model>> getArticle() async{
    final url="https://newsapi.org/v2/everything?q=bitcoin&apiKey=4de117aa14174d659d3854ed1d07b522";

    var response=await http.get(Uri.parse(url));
    if(response.statusCode==200){
      var body=json.decode(response.body);

      List<Articles_model> _data=List<Articles_model>.from(
          body['articles'].map((e) => Articles_model.fromJson(e)).toList());
      return _data;
    }
    else{
      List<Articles_model> _data = [];
      return _data;
    }
  }
}
