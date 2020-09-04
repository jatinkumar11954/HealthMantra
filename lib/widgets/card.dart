import 'package:HealthMantra/constants.dart';
import 'package:HealthMantra/secondScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget card(context, int index) {
  return GestureDetector(
    onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Second(),
            settings: RouteSettings(arguments: index))),
    child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
            color: planList[index],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5))),
        child: Stack(
          children: [
            Positioned(
                bottom: 38,
                left: 10,
                child: Text(cardList[index][0],
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.w400))),
            Positioned(
              bottom: 8,
              left: 10,
              child: Text(cardList[index][1],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800)),
            ),
            Positioned(
                right: 1,
                top: 1,
                child: Container(
                    height: 68,
                    width: 85,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(50, 50))),
                    child:
                        Icon(planIcon[index], color: Colors.white, size: 60)))
          ],
        )),
  );
}

Widget bottomNavBar(context) {
  return BottomNavigationBar(
    // backgroundColor:
    //     // Colors.cyan[200],
    //     Color.fromRGBO(191, 32, 37, 1.0),
    elevation: 4.1,

    type: BottomNavigationBarType.fixed,
    currentIndex: 0,
    items:
        //  <BottomNavigationBarItem>
        [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.black54,
        ),
        title: Text('Home',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
        activeIcon: Icon(
          Icons.home,
          color: Colors.black,
        ),
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.library_books,
            color: Colors.black54,
          ),
          title: Text('Task',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800))),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.chat_bubble,
            color: Colors.black54,
          ),
          title: Text('Chat',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800))),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.directions_run,
            color: Colors.black54,
          ),
          title: Text('Workout',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800))),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.more_vert,
            color: Colors.black54,
          ),
          title: Text('More',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800))),
    ],
    unselectedLabelStyle: TextStyle(color: Colors.grey),
    selectedItemColor: Colors.black,
  );
}

Widget bottomText(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.23,
    width: MediaQuery.of(context).size.width * 0.42,
    margin: EdgeInsets.all(10),
    child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: GridTile(
            child: Image.asset(
              'assets/banner.jpg',
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.25,
              fit: BoxFit.fill,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black26,
              title: Text(
                cardList[1][0],
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ))),
  );
}
