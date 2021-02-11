import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Future<Map> _rescuperaPreco() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
      future: _rescuperaPreco(),
      builder: (context, snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.none :
          case ConnectionState.waiting :
            print("conexao wating");
            break;
          case ConnectionState.done :
            print("conexao done");
            break;
          case ConnectionState.active:
        }
      }
    );
  }
}