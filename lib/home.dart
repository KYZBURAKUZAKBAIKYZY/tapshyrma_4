import 'package:flutter/material.dart';
import 'package:tapshyrma_4/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive = false;
  String? phoneNumber;
  String? email;
  void ishtoo() {
    if (phoneNumber != null && email != null) {
      if (phoneNumber!.isEmpty || email!.isEmpty) {
        isActive = false;
      } else {
        isActive = true;
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          "Билимдуу Жаштар",
          style: TextStyle(color: Colors.black),
        )),
        elevation: 0,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Kyzburak Uzakbai",
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: "Pacifico-Regular"),
          ),
          const Text(
            "Flutter Developer",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          const Divider(
            height: 0,
            thickness: 2,
            indent: 57,
            endIndent: 48,
            color: Colors.white,
          ),
          const SizedBox(
            height: 23,
          ),
          Container(
            color: Colors.white,
            child: TextFormField(
              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w600),
              onChanged: (String? value) {
                phoneNumber = value;
                ishtoo();
              },
              decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Icon(
                      Icons.phone,
                      color: Color(0xff056c5c),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: TextFormField(
              style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff056c5c),
                  fontWeight: FontWeight.w600),
              onChanged: (String? value) {
                email = value;
                ishtoo();
              },
              decoration: const InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Icon(
                      Icons.mail,
                      color: Color(0xff056c5c),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff056c5c),
                side: const BorderSide(
                  width: 1,
                  color: Colors.white,
                ),
                elevation: 15),
            onPressed: isActive
                ? () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyApp()));
                  }
                : null,
            child: const Text("Click"),
          ),
        ]),
      ),
    );
  }
}
