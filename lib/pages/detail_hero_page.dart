import 'package:flutter/material.dart';

class DetailHeroPage extends StatelessWidget {
  final String name;
  final String imageSrc;
  final String intelligence;
  final String strength;
  final String speed;
  final String biography;
  final String work;
  final String power;
  final String gender;
  final String eyeColor;
  final String race;
  final String height;
  const DetailHeroPage({
    Key key,
    this.name,
    this.imageSrc,
    this.intelligence,
    this.strength,
    this.speed,
    this.biography,
    this.work,
    this.power,
    this.gender,
    this.eyeColor,
    this.race,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF0c0d29),
      appBar: AppBar(
        backgroundColor: Color(0xFF0c0d29),
      ),
      body: Container(
          width: double.infinity,
          color: Color(0xFF0c0d29),
          child: ListView(
            children: <Widget>[
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text('MARVEL',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text('Super hero',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 27.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(imageSrc),
                                fit: BoxFit.fill),
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(name,
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text('Intelligence',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(intelligence,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text('Strength',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(strength,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text('Speed',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(speed,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text('Biography',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(biography,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text('Work',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(work,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text('Gender',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(gender,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text('Race',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(race,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text('Height',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(height,
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ]),
            ],
          )),
    );
  }
}
