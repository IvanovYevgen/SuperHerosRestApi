import 'package:flutter/material.dart';
import 'package:flutter_chmelnitzk_2_16_11/components/textMaker.dart';

class DetailHeroPage extends StatelessWidget {
  const DetailHeroPage({
    Key key,
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
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'MARVEL',
                        fontsize: 30.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Super hero',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 27.0),
                      child: Container(
                          width: 360,
                          height: 360,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1527203561188-dae1bc1a417f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80'),
                                fit: BoxFit.fill),
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'NAME',
                        fontsize: 30.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Intelligence',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Intelligence',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Strength',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Strength',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Speed',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Speed',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),

                SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Biography',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Biography',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 10.0),

  SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Work',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Work',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 10.0),


                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Durability',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Durability',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Power',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Power',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Gender',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Gender',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
  SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Iye-color',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Iye-color',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),


               SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Race',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Race',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                  SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Height',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Height',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
      
              SizedBox(height: 10.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Iye-color',
                        fontsize: 20.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    TextMaker(
                        padding: const EdgeInsets.only(left: 40.0),
                        text: 'Iye-color',
                        fontsize: 14.0,
                        fontWeight: FontWeight.bold),
                  ],
                ),
               
// biography   work
// u['biography'],
                // u['powerstats']['intelligence'],
                // u['powerstats']['strength'],
                // u['powerstats']['speed'],
                // u['powerstats']['durability'],
                // u['powerstats']['power'],
                // u['powerstats']['combat'],
                // u['appearance']['gender'],
                // u['appearance']['race'],
                // u['appearance']['height'][1],
                // u['appearance']['weight'][1],
                // u['appearance']['eye-color'],
                // u['appearance']['hair-color'],
                // u['image']
              ]),
            ],
          )),
    );
  }
}
