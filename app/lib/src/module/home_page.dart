import 'package:app/src/widgets/custom_input_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double widget = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(50),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff1F5869),
              Color(0xff2C8B87),
            ],
          ),
        ),
        width: widget,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Usuario",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const CustomTextField(
              icon: Icon(Icons.person),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Senha",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const CustomTextField(icon: Icon(Icons.https)),
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff44BD6E),
                  ),
                  child: const Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            TextButton(
              onPressed: () {},
              child: const Text("Política de privacidade",
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      )),
    );
  }
}
