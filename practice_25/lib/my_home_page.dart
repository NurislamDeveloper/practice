import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
            size: 28,
          ),
          // leading: IconButton(
          //   onPressed: () {},
          //   icon:const Icon(
          //     Icons.menu,
          //     size: 25,
          //     color: Colors.white,
          //   ),
          // ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.cloud_outlined,
                  size: 25,
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      spreadRadius: 2,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.airline_seat_flat_angled_rounded,
                  size: 25,
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      blurStyle: BlurStyle.normal,
                      spreadRadius: 2,
                      offset: Offset(
                        1,
                        1,
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.gas_meter_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Image.network(
                "https://i.pinimg.com/564x/2b/e3/21/2be3213fb749e0a57cce6bb21cd6fa0e.jpg",
              ),
            ),
            Center(
              child: Image.network(
                "https://i.pinimg.com/564x/dd/bb/6e/ddbb6e0e0a85884b98696df0aab4d971.jpg",
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                  "https://i.pinimg.com/564x/5a/ae/d1/5aaed1c25e9a88a030018478b6410086.jpg",
                ),
              ),
            ),
          ],
        ),
        drawer: const Drawer(
          backgroundColor: Colors.blueAccent,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 20,
                ),
                child: Text.rich(
                  TextSpan(
                    text: "Wellcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.normal,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: " to",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " the",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: " America",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 26,
                color: Colors.white,
              ),
              label: "Favorite",
            ),
              BottomNavigationBarItem(
              icon: Icon(
                Icons.car_rental,
                size: 26,
                color: Colors.white,
              ),
              label: "Car",
            ),
                          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border_rounded,
                size: 26,
                color: Colors.white,
              ),
              label: "BookMark",
            ),
          
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }
}
