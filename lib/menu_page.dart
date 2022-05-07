import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

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
                        child: Container()
                    ),
                    Expanded(
                      flex: 4,
                        child: Image.asset('assets/logo_text.png')
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
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 0,
                                //spread radius
                                blurRadius: 0,
                                // blur radius
                                offset: Offset(0, 6), // changes position of shadow
                              ),
                            ]),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/create_page');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/create_project.png',
                                  height: MediaQuery.of(context).size.height * 0.25),
                              Container(
                                  alignment: AlignmentDirectional.center,
                                  height: 100,
                                  width: 150,
                                  child: Text(
                                    'Создать предложение',
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 0,
                                //spread radius
                                blurRadius: 0,
                                // blur radius
                                offset: Offset(0, 6), // changes position of shadow
                              ),
                            ]),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/list_project_page');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/view.png',
                                  height: MediaQuery.of(context).size.height * 0.25),
                              Container(
                                  alignment: AlignmentDirectional.center,
                                  height: 100,
                                  width: 150,
                                  child: Text(
                                    'Заявки',
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                //color of shadow
                                spreadRadius: 0,
                                //spread radius
                                blurRadius: 0,
                                // blur radius
                                offset: Offset(0, 6), // changes position of shadow
                              ),
                            ]),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/user_page');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/user.png',
                                  height: MediaQuery.of(context).size.height * 0.25),
                              Container(
                                  alignment: AlignmentDirectional.center,
                                  height: 100,
                                  width: 150,
                                  child: Text(
                                    'Личный кабинет',
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ))
                            ],
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
}