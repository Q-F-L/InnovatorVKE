import 'dart:convert';

import 'package:flutter/material.dart';
import '../Request/AuthConvertJSON.dart';
import '../Request/MessageConvertJSON.dart';
import '../Request/ProjectsConvertJSON.dart';
import '../global.dart' as global;
import 'package:http/http.dart' as http;

class MassagetPage extends StatefulWidget {
  const MassagetPage({Key? key}) : super(key: key);

  @override
  _MassagetPage createState() => _MassagetPage();
}

class _MassagetPage extends State<MassagetPage> {
  late Future<DiscussionList>? discussion;
  late TextEditingController _message;
  final FocusNode _weightFocus = FocusNode();

  void initState() {
    super.initState();
    discussion = getDiscussionList();
    _message = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/arrow_back.png')),
                  ),
                  const Expanded(
                    flex: 4,
                    child: Text(
                      'Обсуждение',
                      style: TextStyle(
                          fontSize: 36,
                          color: Color.fromRGBO(32, 86, 146, 1),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                      flex: 1, child: Image.asset('assets/logo_image.png')),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Column(
                  children: [
                    Expanded(
                      child: FutureBuilder<DiscussionList>(
                        future: discussion,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return ListView.builder(
                              itemCount: snapshot.data?.discussion.length,
                              itemBuilder: (BuildContext context, int index) {
                                if (global.user_id !=
                                    snapshot.data?.discussion[index].user_id)
                                  return Container(
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(
                                        bottom: 20,
                                        top: 10,
                                        left: 15,
                                        right: 15),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(238, 240, 242, 1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            '${snapshot.data?.discussion[index].user_id}',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  161, 161, 161, 1),
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            '${snapshot.data?.discussion[index].message}',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                else
                                  return Container(
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.only(
                                        bottom: 20,
                                        top: 10,
                                        left: 15,
                                        right: 15),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            '${snapshot.data?.discussion[index].user_id}',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromRGBO(
                                                  161, 161, 161, 1),
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                            '${snapshot.data?.discussion[index].message}',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                              },
                            );
                          } else if (snapshot.hasError) {
                            print(snapshot);
                            return Text('${snapshot}');
                          }
                          return Text('Empty');
                        },
                      ),
                    ),
                    Container(
                      height: 58,
                      margin: const EdgeInsets.only(bottom: 10),
                      width: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(90),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.2,
                            blurRadius: 9,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        controller: _message,
                        focusNode: _weightFocus,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (_message) {
                          _weightFocus.unfocus();
                          createMessage(_message);
                        },
                        maxLength: 100,
                        decoration: const InputDecoration(
                          hintText: "Ваше сообщение",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void createMessage(String message) async {
    final response = await http.post(
        Uri.parse('http://didpisdp.beget.tech/api/create_message'),
        body: {
          "message": '$message',
          'user_id': '${global.user_id}',
          "discussion_id": "${global.discussion_id}"
        },
        headers: {
          'Accept':'application/json',
          'Authorization': 'Bearer ${global.token}',
        }
    );
    
    if (response.statusCode == 200) {
      print('200');
    } else {
      print('error');
    }
  }
}


