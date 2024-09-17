import 'package:flutter/material.dart';
import 'package:list_motor/detail_screen.dart';
import 'package:list_motor/list_pemain.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, this.username, this.password});

  final String? username;
  final String? password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 223, 42, 29),
          title: const Text(
            'Top 10 Manchester United Players',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 19,
              fontFamily: "Lato",
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('UserName: ${username ?? 'Guest'}'),
                accountEmail: Text('Your password: ${password ?? 'No Password'}'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.red,
                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 42, 29),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemBuilder: (BuildContext context, index) {
              final ListPemain listPemain = pemain[index];
              return InkWell(
                onTap: () {
                  print('Card Clicked');
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
                          clipBehavior: Clip.none,
                          children: <Widget>[
                            Container(
                              width: 340,
                              height: 200,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 14, 9, 33),
                                borderRadius: BorderRadius.circular(20),
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
                              top: 55,
                              left: 250,
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
