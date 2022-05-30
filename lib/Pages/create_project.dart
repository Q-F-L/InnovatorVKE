import 'package:flutter/material.dart';
import '../global.dart' as global;

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePage createState() => _CreatePage();
}

class _CreatePage extends State<CreatePage> {
  late TextEditingController _topic;
  late TextEditingController _title;

  void initState() {
    super.initState();
    _topic = TextEditingController();
    _title = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
           Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/menu_page');
                        },
                        child: Image.asset('assets/arrow_back.png')
                    ),
                  ),
                  const Expanded(
                      flex: 4,
                      child: Text(
                        'Создать',
                        style: TextStyle(
                          fontSize: 36,
                          color: Color.fromRGBO(32, 86, 146, 1),
                          fontWeight: FontWeight.w400
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Image.asset('assets/logo_image.png')
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 5,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: ListView(
                  children: [
                    const Text(
                      'Расскажите о предложении',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(32, 86, 146, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Виберите тему и название',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(32, 86, 146, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25),

                            height: 58,
                            width: MediaQuery
                                .of(context)
                                .size
                                .height * 0.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color.fromRGBO(32, 86, 146, 1),width: 2),
                              borderRadius: BorderRadius.circular(90),
                              //border corner radius
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  //color of shadow
                                  spreadRadius: 0.2,
                                  //spread radius
                                  blurRadius: 9,
                                  // blur radius
                                  offset: Offset(0, 6), // changes position of shadow
                                ),
                              ],
                            ),
                            child: TextFormField(
                              controller: _topic,
                              decoration: InputDecoration(
                                hintText: 'Тема проекта',
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 25),

                            height: 58,
                            width: MediaQuery
                                .of(context)
                                .size
                                .height * 0.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color.fromRGBO(32, 86, 146, 1),width: 2),
                              borderRadius: BorderRadius.circular(90),
                              //border corner radius
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  //color of shadow
                                  spreadRadius: 0.2,
                                  //spread radius
                                  blurRadius: 9,
                                  // blur radius
                                  offset: Offset(0, 6), // changes position of shadow
                                ),
                              ],
                            ),
                            child: TextFormField(
                              controller: _title,
                              decoration: InputDecoration(
                                hintText: 'Название',
                              ),
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            margin: EdgeInsets.only(top: 140),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Color.fromRGBO(255, 255, 255, 1)),
                                  minimumSize: MaterialStateProperty.all(
                                      Size(MediaQuery.of(context).size.width * 0.7, 58)
                                  ),
                                  shadowColor: MaterialStateProperty.all(Color.fromRGBO(1, 1, 1, 1)),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                    // side: BorderSide(color: Colors.red),
                                  )),
                                  elevation: MaterialStateProperty.all(10),
                                  // padding: MaterialStateProperty.all(EdgeInsets.all(20))
                                ),
                                onPressed: (){
                                  global.title = _title.text;
                                  global.topic = _topic.text;
                                  print(global.topic);
                                  print(global.title);
                                  Navigator.pushNamed(context, '/create_now_page');
                                },
                                child: Text(
                                  'Далее',
                                  style: TextStyle(color: Colors.blue[900], fontSize: 20),
                                )
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}