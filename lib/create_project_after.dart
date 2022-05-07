import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAfterPage extends StatelessWidget {
  const CreateAfterPage({Key? key}) : super(key: key);

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
                        onTap: (){
                          Navigator.pushNamed(context, '/menu_page');
                        },
                        child: Image.asset('assets/arrow_back.png')
                    ),
                  ),
                  Expanded(
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
                    Text(
                      'Расскажите как надо',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(32, 86, 146, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),

                    Form(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25),
                            width: MediaQuery
                                .of(context)
                                .size
                                .height * 0.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color.fromRGBO(32, 86, 146, 1),width: 2),
                              borderRadius: BorderRadius.circular(20),
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
                              maxLines: 20,
                              maxLength: 999,
                              minLines: 10,
                              decoration: InputDecoration(
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Text(
                            'Добавьте фото или видео',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                            ),
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(flex:1,child: Container()),
                              Expanded(flex:1,child: Image.asset('assets/video.png')),
                              Expanded(flex:1,child: Container()),
                              Expanded(flex:1,child: Image.asset('assets/photo.png')),
                              Expanded(flex:1,child: Container()),
                            ],
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
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
                                  Navigator.pushNamed(context, '/create_will_be_page');
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