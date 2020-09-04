import 'package:HealthMantra/constants.dart';
import 'package:HealthMantra/widgets/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.white,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Stack(children: [
            IconButton(
              iconSize: 29,
              color: Colors.grey,
              icon: Icon(Icons.notifications_active),
              onPressed: () => print("notification"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 5,
              ),
            )
          ])
        ],
        elevation: 15,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Health Mantra",
            style: TextStyle(
                fontFamily: "DNC",
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavBar(context),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(height: 15),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                child: GridView.builder(
                  itemCount: cardList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(bottom: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 1.8),
                  itemBuilder: (context, index) {
                    return card(context, index);
                  },
                ),
              ),
            ),
            Container(
                // height: MediaQuery.of(context).size.height*0.37,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Icon(Icons.lightbulb_outline),
                          ),
                          Text(
                            "Life Hacks",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              // color: Colors.blueAccent
                            ),
                          ),
                          Spacer(),
                          Text("May 12,2020",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              )),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/banner.jpg",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height * 0.28,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(imageBelow, softWrap: true,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              )
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: reminder,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text("Reminders", softWrap: true,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.normal,
                              )

                              ),
                            ),
                            Expanded(
                                                          child: Padding(
                                padding: const EdgeInsets.only(right:5),
                                child: Divider(
                                  thickness: 2,
                                  color:Colors.black
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.yellow,
                              child: Icon(Icons.free_breakfast)),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("May 12,2020"
                                  ,
                                  
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              )),
                                  Text("Lunch", softWrap: true,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.normal,
                              )
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Text("12:30 PM",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              )
                            ),
                            Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    setState(() {});
                                  });
                                },
                                activeColor: Colors.blue),
                                SizedBox(width:5)
                          ],
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
