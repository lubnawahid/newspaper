import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/models.dart';



Future<News>fetchAlbum() async{
  var responce = await http.get(Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2023-07-20&sortBy=publishedAt&apiKey=4de117aa14174d659d3854ed1d07b522https://newsapi.org/v2/everything?q=tesla&from=2023-07-20&sortBy=publishedAt&apiKey=4de117aa14174d659d3854ed1d07b522https://newsapi.org/v2/everything?q=tesla&from=2023-07-20&sortBy=publishedAt&apiKey=4de117aa14174d659d3854ed1d07b522https://newsapi.org/v2/everything?q=tesla&from=2023-07-20&sortBy=publishedAt&apiKey=4de117aa14174d659d3854ed1d07b522https://newsapi.org/v2/everything?q=tesla&from=2023-07-20&sortBy=publishedAt&apiKey=4de117aa14174d659d3854ed1d07b522https://newsapi.org/v2/everything?q=tesla&from=2023-07-20&sortBy=publishedAt&apiKey=4de117aa14174d659d3854ed1d07b522'));
  var news = jsonDecode(responce.body);
  return News.fromJson(news);
}