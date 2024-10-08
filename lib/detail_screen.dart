import 'package:flutter/material.dart';
import 'package:list_motor/list_pemain.dart';
import 'package:readmore/readmore.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.listPemain});
  final ListPemain listPemain;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(221, 16, 19, 41),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.topLeft,
                            children: [
                              // Background image or design
                              Positioned(
                                child: Image.asset(
                                  listPemain.secondImage,
                                  color: const Color.fromARGB(106, 127, 68, 68),
                                ),
                              ),
                              // Negara flag in oval shape
                              Positioned(
                                left: 40,
                                top: 50,
                                child: ClipOval(
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(
                                        20), // Image radius
                                    child: Image.asset(
                                      listPemain.negara,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              // Second image of the player
                              Positioned(
                                left: 5,
                                top: 50,
                                child: Image.asset(
                                  listPemain.secondImage,
                                  width: 43,
                                ),
                              ),
                              // Player name
                              Positioned(
                                top: 100,
                                child: Text(
                                  listPemain.nama,
                                  style: const TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Lato",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              // Player second name
                              Positioned(
                                top: 140,
                                left: 40,
                                child: Text(
                                  listPemain.secondNama,
                                  style: const TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Lato",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              // Player image
                              Positioned(
                                left: 190,
                                top: 30,
                                child: Image.asset(
                                  listPemain.image,
                                  height: 300,
                                  width: 200,
                                ),
                              ),
                              // Jersey image
                              Positioned(
                                top: 250,
                                child: Image.asset(
                                  listPemain.jersy,
                                  color: Colors.white,
                                  height: 60,
                                ),
                              ),
                              // Player position text
                              Positioned(
                                top: 270,
                                left: 50,
                                child: Text(
                                  listPemain.posisi,
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Lato",
                                  ),
                                ),
                              ),
                              // Tombol kembali di bagian atas
                              Positioned(
                                top: -10,
                                left: -10,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              // Age Container
                              Positioned(
                                top: 320,
                                child: Container(
                                  width: 115,
                                  height: 115,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(184, 56, 55, 55),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Age',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30.0),
                                          child: Text(
                                            listPemain.age,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 28,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // Games Container
                              Positioned(
                                top: 320,
                                left: 130,
                                child: Container(
                                  width: 115,
                                  height: 115,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(184, 56, 55, 55),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Games',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30.0),
                                          child: Text(
                                            listPemain.main,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 28,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              // Goals Container
                              Positioned(
                                top: 320,
                                left: 260,
                                child: Container(
                                  width: 115,
                                  height: 115,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(184, 56, 55, 55),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Goals',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30),
                                          child: Text(
                                            listPemain.goals,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 28,
                                              letterSpacing: 1,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 206),
                  child: Container(
                    width: 373,
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 20, 27, 54),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${listPemain.secondNama} said:${listPemain.kata}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 373,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 20, 27, 54),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 250.0),
                          child: Text(
                            'ABOUT',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Date of birth',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  listPemain.birth,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Join Club',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  listPemain.join,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Debut',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              listPemain.debut,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'BIOGRAPHY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ReadMoreText(
                        listPemain.biography,
                        trimLines: 4,
                        textAlign: TextAlign.justify,
                        trimMode: TrimMode.Line,
                        lessStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        moreStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                        style: TextStyle(
                            fontFamily: "LibreBaskerville",
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
