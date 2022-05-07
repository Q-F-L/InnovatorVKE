import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

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
                      'Мой статус',
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
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset('assets/user_icon.png'),

                        ],
                      ),
                    ),
                    Expanded(
                        child: Table(
                          columnWidths: const <int, TableColumnWidth>{
                            0: FixedColumnWidth(150),
                            1: FlexColumnWidth(),
                            2: FixedColumnWidth(60),
                          },
                          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                          children: <TableRow>[
                            TableRow(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Оценок',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                ),
                                Center(
                                  child: Text(
                                    '30',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Комментариев',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                ),
                                Center(
                                  child: Text(
                                    '25',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Предложений',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                ),
                                Center(
                                  child: Text(
                                    '4',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Одобрено',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                ),
                                Center(
                                  child: Text(
                                    '1',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(32, 86, 146, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2,),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 1)),
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
                            Navigator.pushNamed(context, '/menu_page');
                          },
                          child: Text(
                            'Готово',
                            style: TextStyle(color: Colors.blue[900], fontSize: 20),
                            textAlign: TextAlign.center,
                          )
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