import 'package:flutter/material.dart';

class MassagetPage extends StatelessWidget {
  const MassagetPage({Key? key}) : super(key: key);

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
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/arrow_back.png')
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Обсуждение',
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
              flex: 9,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: 100,
                        itemBuilder: (BuildContext context, int index) {
                          if(index%2 == 0)
                          return Container(
                              alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 20),
                            padding: EdgeInsets.only(bottom: 20, top: 10, left: 15, right: 15),
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                      'avtor',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromRGBO(161, 161, 161, 1),
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
                                    'Сам ты , ничего не понимаешь в проектах так сиди и не тренькай, норм тема!',
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
                          else return Container(
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 20),
                              padding: EdgeInsets.only(bottom: 20, top: 10, left: 15, right: 15),
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
                                      'Вы',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(161, 161, 161, 1),
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
                                      'Сам ты , ничего не понимаешь в проектах так сиди и не тренькай, норм тема!',
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
                      ),
                    ),
                Container(
                  height: 58,
                  margin: EdgeInsets.only(bottom: 10),
                  width: MediaQuery
                      .of(context)
                      .size
                      .height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                    decoration: InputDecoration(
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
}