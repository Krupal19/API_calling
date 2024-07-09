import 'dart:convert';
import 'package:api_calling/model/api_calling.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RxList<ApiCalling> testingApiCalling = <ApiCalling>[].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchData(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return Obx(() {
              return ListView.builder(
                itemCount: testingApiCalling.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(testingApiCalling[index].title.toString()),
                    subtitle: Image.network(
                        testingApiCalling[index].thumbnailUrl.toString()),
                  );
                },
              );
            });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<ApiCalling>> fetchData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        testingApiCalling
            .addAll(data.map((index) => ApiCalling.fromJson(index)).toList());
      }
      return testingApiCalling;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
