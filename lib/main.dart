import 'package:flutter/material.dart';
import 'package:nutrition_app/details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutrition App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: Colors.grey[200],
                  width: 2,
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Icon(Icons.search),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: Colors.grey[200],
                  width: 2,
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Icon(Icons.shopping_basket),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: RaisedButton(
                splashColor: Colors.grey,
                padding: EdgeInsets.all(20),
                color: Color(0xFF150b24),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage())),
                child: Text(
                  "Checkout",
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'Mons'),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 20),
            child: Row(
              children: <Widget>[
                Text(
                  "Healthy",
                  style: TextStyle(
                    fontFamily: 'Mons',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Food",
                  style: TextStyle(
                    fontFamily: 'Mons',
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75))),
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              primary: false,
              padding: EdgeInsets.only(left: 25, right: 20, top: 50),
              children: <Widget>[
                // ! Cards
                new ListItemCard(),
                new ListItemCard(),
                new ListItemCard(),
                new ListItemCard(),
                new ListItemCard(),
                new ListItemCard(),
                new ListItemCard(),
                new ListItemCard(),
                new ListItemCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListItemCard extends StatelessWidget {
  const ListItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('images/plate1.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Salmon Bowl",
                  style: TextStyle(
                    fontFamily: 'Mons',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "\$24.00",
                  style: TextStyle(
                    fontFamily: 'Mons',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            splashColor: Colors.purple,
            onPressed: () {
              print("Clicked");
            },
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
