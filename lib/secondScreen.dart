import 'package:HealthMantra/constants.dart';
import 'package:HealthMantra/widgets/card.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    int index = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
              color: Colors.black,
              iconSize: 30,
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context)),
          title: Text(
            cardList[index][0] + " " + cardList[index][1],
            style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: ListView(children: [
            Container(
              height: height * 0.24,
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return bottomText(context);
                },
              ),
            ),
            Divider(thickness: 20, color: Colors.grey[300]),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(firstRow[index][0],
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 22)),
                  FlatButton(
                    child: Text("View All",
                        style: TextStyle(
                            color: Colors.yellow[800],
                            fontWeight: FontWeight.normal,
                            fontSize: 22)),
                    onPressed: () {
                      print("view all");
                    },
                  )
                ],
              ),
            ),
            Container(
              height: height * 0.25,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: firstRow[index].length - 1,
                  itemBuilder: (context, i) {
                    return Container(
                      width: width * 0.35,
                      height: height * 0.3,
                      // width * 0.2,
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                              radius: 65,
                              backgroundImage: AssetImage("assets/banner.jpg")),
                          Text(firstRow[index][i + 1],
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18)),
                        ],
                      ),
                    );
                  }),
            ),
            Divider(thickness: 20, color: Colors.grey[300]),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(secondRow[index][0],
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 22)),
                  FlatButton(
                    child: Text("View All",
                        style: TextStyle(
                            color: Colors.yellow[800],
                            fontWeight: FontWeight.normal,
                            fontSize: 22)),
                    onPressed: () {
                      print("view all");
                    },
                  )
                ],
              ),
            ),
            Container(
              height: height * 0.25,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: secondRow[index].length - 1,
                  itemBuilder: (context, i) {
                    return Container(
                      width: width * 0.35,
                      height: height * 0.3,
                      // width * 0.2,
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                              radius: 65,
                              backgroundImage: AssetImage("assets/banner.jpg")),
                          Text(secondRow[index][i + 1],
                              maxLines: 2,
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18)),
                        ],
                      ),
                    );
                  }),
            ),
          ]),
        ));
  }
}
