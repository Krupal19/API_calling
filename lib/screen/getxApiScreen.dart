import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';


class GetxApiScreen extends StatefulWidget {
  const GetxApiScreen({super.key});

  @override
  State<GetxApiScreen> createState() => _GetxApiScreenState();
}

class _GetxApiScreenState extends State<GetxApiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            // if (snapshot.hasData){
            // } else {
            //             return const Center(
            //               child: CircularProgressIndicator(),
            //             );
            //           }
            return Container(
              decoration: BoxDecoration(
                color: const Color(0xE3E2E8F3),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xA58A99A2),
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.network(
                      "src",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: Text(
                      "widget.title!",
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 16),
                      child: Text(
                        "widget.dateTime!",
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<List<dynamic>> xmlToJson() async {}
}
