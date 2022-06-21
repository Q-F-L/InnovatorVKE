import 'package:flutter/material.dart';

Widget ButtonMyWidget (context, path, title,double marginTop) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.7,
    margin: EdgeInsets.only(top: marginTop),
    child: ElevatedButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(const Color.fromRGBO(0, 0, 0, 1)),
          backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(255, 255, 255, 1)),
          minimumSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width * 0.7, 58)
          ),
          shadowColor: MaterialStateProperty.all(const Color.fromRGBO(1, 1, 1, 1)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            // side: BorderSide(color: Colors.red),
          )),
          elevation: MaterialStateProperty.all(10),
          // padding: MaterialStateProperty.all(EdgeInsets.all(20))
        ),
        onPressed: (){
          Navigator.pushNamed(context, path);
        },
        child: Text(
          title,
          style: TextStyle(color: Colors.blue[900], fontSize: 20),
          textAlign: TextAlign.center,
        )
    ),
  );
}

Widget AppBarMyWidget (context, path, title){
  return Expanded(
    flex: 1,
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, path);
              },
              child: Image.asset('assets/arrow_back.png')
          ),
        ),
        Expanded(
          flex: 4,
          child: Text(
            title,
            style: const TextStyle(
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
  );
}