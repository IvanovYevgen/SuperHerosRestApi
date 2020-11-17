import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_chmelnitzk_2_16_11/pages/empty_page_one.dart';
import 'package:flutter_chmelnitzk_2_16_11/pages/empty_page_three.dart';
import 'package:flutter_chmelnitzk_2_16_11/pages/empty_page_two.dart';
import 'package:flutter_chmelnitzk_2_16_11/themes/colors.dart';
import 'package:http/http.dart' as http;
import 'detail_hero_page.dart';
import 'empty_page_four.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    EmptyPageOne(),
    EmptyPageTwo(),
    EmptyPageThree(),
    EmptyPageFour()
  ];

  List users = [];
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    this.fetchUser();
  }

  fetchUser() async {
    setState(() {
      isLoading = true;
    });
    var url = "https://superheroapi.com/api/724402521491149/search/%20";
    var response = await http.get(url);
    // print(response.body);
    if (response.statusCode == 200) {
      var items = json.decode(response.body)['results'];
      setState(() {
        users = items;
        isLoading = false;
      });
    } else {
      users = [];
      isLoading = false;
    }
    print(users);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing of SuperHeros"),
        centerTitle: true,
      ),
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => _widgetOptions[index],
            ),
          );
        },
      ),

      // makeBottom,
    );
  }

  Widget getBody() {
    if (users.contains(null) || users.length < 0 || isLoading) {
      return Center(
          child: CircularProgressIndicator(
        valueColor: new AlwaysStoppedAnimation<Color>(primary),
      ));
    }
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return getCard(users[index]);
        });
  }

  Widget getCard(item) {
    var fullName = item['name'];
    var profileUrl = item['image']['url'];
    return Card(
      elevation: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(60 / 2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(profileUrl),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                      width: MediaQuery.of(context).size.width - 140,
                      child: Text(
                        fullName,
                        style: TextStyle(fontSize: 17),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'SuperHero',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailHeroPage(
                        name: item['name'],
                        imageSrc: item['image']['url'],
                        intelligence:item['powerstats']['intelligence'].toString(),
                        strength: item['powerstats']['strength'].toString(),
                        speed: item['powerstats']['speed'].toString(),
                        biography: item['biography']['full-name'],
                        work: item['work']['occupation'],
                        gender: item['appearance']['gender'],
                        race: item['appearance']['race'],
                        height: item['appearance']['height'][1],
                      )),
            );
          },
        ),
      ),
    );
  }
}
