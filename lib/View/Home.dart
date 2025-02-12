import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> MOT = ["Flight", "Train", "Bus", "Cab"];
  final List<FaIcon> ICONS = [
    FaIcon(FontAwesomeIcons.plane),
    FaIcon(FontAwesomeIcons.train),
    FaIcon(FontAwesomeIcons.bus),
    FaIcon(FontAwesomeIcons.taxi),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400, // Set a specific height for the GridView
              child: GridView.count(
                crossAxisCount: 4,
                padding: EdgeInsets.all(8.0),
                children: List.generate(4, (index) {
                  return Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        ICONS[index],
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          MOT[index],
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
