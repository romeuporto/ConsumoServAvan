import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _resultadoPreco() async {
    String url = "https://blockchain.info/ticker";
    http.Response response = await http.get(url);
    return response;

    Map<String, dynamic> retorno = json.decode(response.body);
    setState(() {
      _resultadoPreco() = retorno[exemplo].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
