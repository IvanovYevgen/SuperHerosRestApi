import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_chmelnitzk_2_16_11/pages/detail_screen.dart';
import 'package:flutter_chmelnitzk_2_16_11/themes/colors.dart';
import 'package:http/http.dart' as http;

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
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

  final makeBottom = Container(
    height: 55.0,
    child: BottomAppBar(
      color: Color.fromRGBO(58, 66, 86, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.supervisor_account, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_box, color: Colors.white),
            onPressed: () {},
          )
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing of SuperHeros"),
        centerTitle: true,
      ),
      body: getBody(),
      bottomNavigationBar: makeBottom,
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
            builder: (context) => 
            Container(
              child: Column(children:[
Text('Marvel'),
Text('Super hero'),
Text('Intelligence'),

Text('Strength'),
Text('Speed'),
Text('Durability'),
Text('Power'),
Text('Combat'),
Text('gender'),
Text('race'),
Text('height'),
Text('weight'),
Text('eye-color'),
Text('hair-color'),



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

              
            )
            
            // DetailScreen(todo: 'GO'),
            
            // print('gogogogog'),
          ),
        );
      },
        ),
      ),
    );
  }
}
