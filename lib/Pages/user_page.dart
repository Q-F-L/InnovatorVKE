import 'package:diplomka/Request/UserConvertJSON.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  _UserPage createState() => _UserPage();
}

class _UserPage extends State<UserPage> {
  int user_id = 101;
  late Future<User> user;

  void initState() {
    super.initState();
    user = getUser(user_id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  const Expanded(
                    flex: 4,
                    child: Text(
                      'Личный кабинет',
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
              flex: 5,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: FutureBuilder<User>(
                  future: user,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView(
                        children: [
                          Column(
                              children: [
                                Image.asset('assets/user_icon.png'),
                              ],
                            ),
                          Table(
                            columnWidths: const <int, TableColumnWidth>{
                              0: FixedColumnWidth(150),
                              1: FlexColumnWidth(),
                              2: FixedColumnWidth(60),
                            },
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.bottom,
                            children: <TableRow>[
                              TableRow(
                                children: [
                                  Container(
                                    child:const Text(
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
                                      '${snapshot.data!.estimation}',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
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
                                    child: const Text(
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
                                      '${snapshot.data!.comments}',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
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
                                    child: const Text(
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
                                      '${snapshot.data!.offers}',
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
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
                                    child:const Text(
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
                                      '${snapshot.data!.approved}',
                                      textAlign: TextAlign.start,
                                      style:const TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(32, 86, 146, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.2,
                            ),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(0, 0, 0, 1)),
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(255, 255, 255, 1)),
                                  minimumSize: MaterialStateProperty.all(Size(
                                      MediaQuery.of(context).size.width * 0.7,
                                      58)),
                                  shadowColor: MaterialStateProperty.all(
                                      const Color.fromRGBO(1, 1, 1, 1)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24),
                                  )),
                                  elevation: MaterialStateProperty.all(10),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/menu_page');
                                },
                                child: Text(
                                  'Готово',
                                  style: TextStyle(
                                      color: Colors.blue[900], fontSize: 20),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ],
                      );
                    } else if (snapshot.hasError) {
                      return Text("Error $snapshot");
                    }
                    return const Text('Empty');
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
