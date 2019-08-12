import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF708fdb),
      appBar: AppBar(
        backgroundColor: Color(0xFF708fdb),
        elevation: 0,
        title: Text(
          "Details",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Mons',
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 100,
                child: Container(),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, bottom: 30),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Avocado",
                              style: TextStyle(
                                fontFamily: 'Mons',
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Bowl",
                              style: TextStyle(
                                fontFamily: 'Mons',
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              " \$26.00",
                              style: TextStyle(
                                fontFamily: 'Mons',
                                color: Colors.grey,
                                fontSize: 25,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 2,
                              color: Colors.grey[300],
                            ),
                            Container(
                              width: 200,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 6),
                              decoration: BoxDecoration(
                                  color: Color(0xFF708fdb),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                      fontFamily: 'Mons',
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: IconButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Color(0xFF708fdb),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 200,
                        padding: EdgeInsets.all(20),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            new HorizontalListItem(
                              content: 'Weight',
                              number: '300',
                              unit: 'G',
                              backgroundColor: Color(0xFF708fdb),
                              topicColor: Colors.white,
                              numberColor: Colors.white,
                            ),
                            new HorizontalListItem(
                              content: 'Calories',
                              number: '267',
                              unit: 'CAL',
                              backgroundColor: Colors.white,
                              topicColor: Colors.grey,
                              numberColor: Colors.black,
                              borderColor: Colors.grey,
                            ),
                            new HorizontalListItem(
                              content: 'vitamins',
                              number: 'A, B6',
                              unit: 'Vit',
                              backgroundColor: Colors.white,
                              topicColor: Colors.grey,
                              numberColor: Colors.black,
                              borderColor: Colors.grey,
                            ),
                            new HorizontalListItem(
                              content: 'Calories',
                              number: '267',
                              unit: 'CAL',
                              backgroundColor: Colors.white,
                              topicColor: Colors.grey,
                              numberColor: Colors.black,
                              borderColor: Colors.grey,
                            ),
                            new HorizontalListItem(
                              content: 'Calories',
                              number: '267',
                              unit: 'CAL',
                              backgroundColor: Colors.white,
                              topicColor: Colors.grey,
                              numberColor: Colors.black,
                              borderColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 50,
            left: MediaQuery.of(context).size.width / 2 - 100,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                ),
                image: DecorationImage(
                  image: AssetImage('images/plate2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 200,
              width: 200,
            ),
          ),
          Positioned(
            bottom: 14,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF150b24),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              height: 90,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '\$52.00',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mons',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalListItem extends StatelessWidget {
  final content;
  final number;
  final unit;
  final Color backgroundColor;
  final Color topicColor;
  final Color numberColor;
  final Color borderColor;

  const HorizontalListItem({
    this.content,
    this.number,
    this.unit,
    this.backgroundColor,
    this.topicColor,
    this.numberColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(10),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          border: borderColor != null
              ? Border.all(
                  color: borderColor, width: 1, style: BorderStyle.solid)
              : Border.all(
                  color: Colors.transparent,
                  width: 1,
                  style: BorderStyle.solid)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$content'.toUpperCase(),
            style: TextStyle(
              fontFamily: 'Mons',
              color: topicColor,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$number',
                style: TextStyle(
                  fontFamily: 'Mons',
                  color: numberColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                '$unit',
                style: TextStyle(
                  fontFamily: 'Mons',
                  color: numberColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
