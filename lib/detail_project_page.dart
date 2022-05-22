import 'package:diplomka/UserConvertJSON.dart';
import 'package:diplomka/ProjectsConvertJSON.dart';
import 'package:flutter/material.dart';

class DetailProjectPage extends StatefulWidget {
  const DetailProjectPage({Key? key}) : super(key: key);

  @override
  _DetailProjectPage createState() => _DetailProjectPage();
}

class _DetailProjectPage extends State<DetailProjectPage> {
  late Project project;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context)!.settings;
    project = settings.arguments as Project;
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
                          Navigator.pushNamed(context, '/menu_page');
                        },
                        child: Image.asset('assets/arrow_back.png')),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Проекты',
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
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Сейчас так:',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '${project.now_description}',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Expanded(
                              flex: 2,
                              child: Image.asset('assets/Video_zaglushka.png'),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Expanded(
                              flex: 2,
                              child: Image.asset('assets/Image_zaglushka.png'),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          'Надо так:',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'asd',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Expanded(
                              flex: 2,
                              child: Image.asset('assets/Video_zaglushka.png'),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Expanded(
                              flex: 2,
                              child: Image.asset('assets/Image_zaglushka.png'),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Text(
                          'И тогда будет так:',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'asd',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'Оцените проект:',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Container()),
                            Expanded(
                              child: Image.asset('assets/Star_active.png'),
                            ),
                            Expanded(
                              child: Image.asset('assets/Star_active.png'),
                            ),
                            Expanded(
                              child: Image.asset('assets/Star_active.png'),
                            ),
                            Expanded(
                              child: Image.asset('assets/Star_active.png'),
                            ),
                            Expanded(
                              child: Image.asset('assets/Star_pasiv.png'),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          margin:
                              EdgeInsets.only(bottom: 10, left: 10, right: 10),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Color.fromRGBO(0, 0, 0, 1)),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(255, 255, 255, 1)),
                                minimumSize: MaterialStateProperty.all(Size(
                                    MediaQuery.of(context).size.width * 0.7,
                                    58)),
                                shadowColor: MaterialStateProperty.all(
                                    Color.fromRGBO(1, 1, 1, 1)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  // side: BorderSide(color: Colors.red),
                                )),
                                elevation: MaterialStateProperty.all(10),
                                // padding: MaterialStateProperty.all(EdgeInsets.all(20))
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/message_page');
                              },
                              child: Text(
                                'Обсудить',
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 20),
                                textAlign: TextAlign.center,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
