import 'package:flutter/material.dart';

class ListProjectPage extends StatelessWidget {
  const ListProjectPage({Key? key}) : super(key: key);

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
                      'Проекты',
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
                width: MediaQuery.of(context).size.width * 0.95,
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/detail_project_page');
                      },
                        child: Table(
                          border: TableBorder.all(),
                          columnWidths: const <int, TableColumnWidth>{
                            0: FixedColumnWidth(100),
                            1: FlexColumnWidth(),
                            2: FlexColumnWidth(2),
                          },
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: <TableRow>[
                            TableRow(
                              decoration: const BoxDecoration(
                              ),
                              children: <Widget>[
                                Image.asset('assets/image_p.png'),
                                Container(
                                  height: 32,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Название проекта',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromRGBO(32, 86, 146, 1),
                                          fontWeight: FontWeight.w400
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      'Автор',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(114, 114, 114, 1.0),
                                          fontWeight: FontWeight.w400
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                    Text(
                                      'Тема проекта',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(32, 86, 146, 1),
                                          fontWeight: FontWeight.w400
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ],
                                ),
                              ],
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