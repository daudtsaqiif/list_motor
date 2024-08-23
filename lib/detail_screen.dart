import 'package:country_flags/country_flags.dart';
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset(
                  listPemain.image,
                  height: 330,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        listPemain.nama,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Lato",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontFamily: "Lato",
                              ),
                            ),
                            Text(
                              listPemain.age,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontFamily: "Ramaraja",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'APPEARANCES',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontFamily: "Lato",
                              ),
                            ),
                            Text(
                              listPemain.main,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontFamily: "Ramaraja",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'TOTAL GOALS',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontFamily: "Lato",
                              ),
                            ),
                            Text(
                              listPemain.goals,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontFamily: "Ramaraja",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        listPemain.kata,
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: "PlayfairDisplay",
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'POSITION',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.person),
                              Text(
                                listPemain.posisi,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "LibreBaskerville",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'COUNTRY',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              CountryFlag.fromCountryCode(
                                'pt',
                                width: 30,
                                height: 20,
                                shape: Circle(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  listPemain.negara,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "LibreBaskerville",
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'JOINED',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '10 JAN 2020',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontFamily: "LibreBaskerville",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'UNITED DEBUT',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '1 FEB 2020',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontFamily: "LibreBaskerville",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: <Widget>[
                          Text(
                            'JERSY NUMBER',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            listPemain.jersy,
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontFamily: "LibreBaskerville",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'DATE OF BIRTH',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            listPemain.birth,
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontFamily: "LibreBaskerville",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Biograpy
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'BIOGRAPHY',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
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
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
