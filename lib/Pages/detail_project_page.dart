import 'package:diplomka/Request/ProjectsConvertJSON.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../global.dart' as global;

class DetailProjectPage extends StatefulWidget {
  const DetailProjectPage({Key? key}) : super(key: key);

  @override
  _DetailProjectPage createState() => _DetailProjectPage();
}

class _DetailProjectPage extends State<DetailProjectPage> {
  int _rating = 0;
  @override
  void initState() {
    super.initState();
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
                  //Шапка
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/list_project_page');
                        },
                        child: Image.asset('assets/arrow_back.png')),
                  ),
                  const Expanded(
                    flex: 4,
                    child: Text(
                      'Заявка',
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

            //Тело
            Expanded(
              flex: 9,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        global.status == 'accepted' ? 
                        Text('Одобренно', style: TextStyle(
                          color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold)) : 
                        Text(''),
                          SizedBox(
                            height: 10,
                          ),
                        const Text(
                          'Сейчас так:',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          '${global.now_description}',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          'Надо так:',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          '${global.need_description}',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          'И тогда будет так:',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          '${global.will_description}',
                          style: const TextStyle(
                              fontSize: 20,
                              color:  Color.fromRGBO(32, 86, 146, 1),
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: const Text(
                            'Оцените проект:',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Container()),
                            Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _rating = 1;
                                      getRating();
                                    });
                                  },
                                  icon: (_rating >= 1
                                      ? const Icon(
                                          Icons.star,
                                          size: 45,
                                          color: Colors.yellow,
                                        )
                                      : const Icon(
                                          Icons.star_border,
                                          size: 45,
                                          color:
                                              Color.fromARGB(255, 41, 108, 163),
                                        ))),
                            ),
                            Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _rating = 2;
                                      getRating();
                                    });
                                  },
                                  icon: (_rating >= 2
                                      ? const Icon(
                                          Icons.star,
                                          size: 45,
                                          color: Colors.yellow,
                                        )
                                      : const Icon(
                                          Icons.star_border,
                                          size: 45,
                                          color:
                                              Color.fromARGB(255, 41, 108, 163),
                                        ))),
                            ),
                            Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _rating = 3;
                                      getRating();
                                    });
                                  },
                                  icon: (_rating >= 3
                                      ? const Icon(
                                          Icons.star,
                                          size: 45,
                                          color: Colors.yellow,
                                        )
                                      : const Icon(
                                          Icons.star_border,
                                          size: 45,
                                          color:
                                              Color.fromARGB(255, 41, 108, 163),
                                        ))),
                            ),
                            Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _rating = 4;
                                      getRating();
                                    });
                                  },
                                  icon: (_rating >= 4
                                      ? const Icon(
                                          Icons.star,
                                          size: 45,
                                          color: Colors.yellow,
                                        )
                                      : const Icon(
                                          Icons.star_border,
                                          size: 45,
                                          color:
                                              Color.fromARGB(255, 41, 108, 163),
                                        ))),
                            ),
                            Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _rating = 5;
                                      getRating();
                                    });
                                  },
                                  icon: (_rating >= 5
                                      ? const Icon(
                                          Icons.star,
                                          size: 45,
                                          color: Colors.yellow,
                                        )
                                      : const Icon(
                                          Icons.star_border,
                                          size: 45,
                                          color:
                                              Color.fromARGB(255, 41, 108, 163),
                                        ))),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          margin:
                              const EdgeInsets.only(bottom: 10, left: 10, right: 10),
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
                                Navigator.pushNamed(context, '/message_page');
                              },
                              child: Text(
                                'Обсудить',
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 20),
                                textAlign: TextAlign.center,
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        global.type == 'admin'
                            ? Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                margin: const EdgeInsets.only(
                                    bottom: 10, left: 10, right: 10),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          const Color.fromRGBO(0, 0, 0, 1)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromRGBO(255, 255, 255, 1)),
                                      minimumSize: MaterialStateProperty.all(
                                          Size(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
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
                                      deleteProject();
                                      Navigator.pushNamed(context, '/list_project_page');
                                    },
                                    child: const Text(
                                      'Удалить',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 190, 16, 16),
                                          fontSize: 20),
                                      textAlign: TextAlign.center,
                                    )),
                              )
                            : Container(),
                        global.type == 'admin'
                            ? Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                margin: const EdgeInsets.only(
                                    bottom: 10, left: 10, right: 10),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          const Color.fromRGBO(0, 0, 0, 1)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromRGBO(255, 255, 255, 1)),
                                      minimumSize: MaterialStateProperty.all(
                                          Size(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
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
                                      acceptedProject();
                                      Navigator.pushNamed(context, '/list_project_page');
                                    },
                                    child: const Text(
                                      'Одобрить',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 36, 190, 16),
                                          fontSize: 20),
                                      textAlign: TextAlign.center,
                                    )),
                              )
                            : Container(),
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

  Future getRating() async {
    final response = await http.get(
        Uri.parse(
            'http://didpisdp.beget.tech/api/rating/${global.id}/$_rating'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${global.token}',
        });
    final uploadRatingCalc = await http.get(
        Uri.parse('http://didpisdp.beget.tech/api/rating_calc/${global.id}'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${global.token}',
        });
    if (response.statusCode == 200) {
    } else {
      throw Exception('Error: ${response.reasonPhrase}');
    }
  }
}
