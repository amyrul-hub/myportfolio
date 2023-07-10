import 'package:flutter/material.dart';


class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 214, 7, 246),
              ),
              child: Text('About Me'),
            ),
            ListTile(
              title: const Text('Background Details'),
              onTap: () {
                // Update the state of the app.
                // Navigate to Item 1 when tapped
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
            
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.purple,
        title: const Text(
          'My Portfolio',
          
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('hello world'),
            
            
          ],
        ),
      ),
    ));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Background Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "asset/989.png",
              height: 300,
              width: 200,
            ),
            
            
            
            const Text(
                'NAME : MUHAMMAD AMIRUL FITRI BIN ROSIDI \nAGE     : 21 YEARS OLD\nLOCATION : SIK, KEDAH \nINSTITUTION : INSTITUT KEMAHIRAN MARA SIK, KEDAH \nHOBBIES: ONLINE GAMES AND BADMINTON \nEDUCATION: "DIPLOMA IN COMPUTER TECHNOLOGY SECURITY \nCONTACT: 013-8732421',
                style: TextStyle(fontSize: 20.0),
              )

          ],
        ),
      ),
    );
  }
}

