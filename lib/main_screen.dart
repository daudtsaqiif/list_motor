import 'package:flutter/material.dart';
import 'package:list_motor/detail_screen.dart';
import 'package:list_motor/list_pemain.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 223, 42, 29),
          title: const Text(
            'Mancester United Players Man',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 19,
              fontFamily: "Lato",
            ),
          ),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemBuilder: (BuildContext context, index) {
              final ListPemain listPemain = pemain[index];
              return InkWell(
                onTap: () {
                  print('Card Cliked');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(listPemain: listPemain),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              width: 340,
                              height: 200,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 14, 9, 33),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 20,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    listPemain.nama,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                  Text(
                                    listPemain.posisi,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: "PlayfairDisplay",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 50,
                              left: 240,
                              child: Image.asset(
                                listPemain.image,
                                height: 150,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: pemain.length,
          ),
        ),
      ),
    );
  }
}
