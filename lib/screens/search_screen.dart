import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_app/widgets/input_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  var searchController = TextEditingController();
  String query = '';
  Future<void> readJson() async{
    final String data = await rootBundle.loadString('lib/data/api.json');
    final dataApi = await jsonDecode(data);
    print(dataApi);

  }
  void onChangeQuery (String querySearch) {
    setState(() {
      query = querySearch;
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: 
     SafeArea(child:Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InputSearch(
            onChanged: onChangeQuery
          ),
        ),

        Text('${query}')
      ],
     )) 

    );
  }
}