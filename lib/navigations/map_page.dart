import 'package:flutter/material.dart';
import 'package:osiki/home.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          onPressed: () {
            /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          */
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 2.2,
        backgroundColor: const Color.fromARGB(255, 4, 52, 91),
        title: SizedBox(
          height: 35,
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "OSIKI",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.person_3_outlined,
                  color: Color.fromARGB(255, 4, 52, 91),
                ),
              ),
            ],
          ),
        ),
        shadowColor: Colors.white,
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text("Map View"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => {},
        currentIndex: 1,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Map View",
            icon: Icon(
              Icons.location_pin,
            ),
          ),
          BottomNavigationBarItem(
            label: "Log",
            icon: Icon(
              Icons.storage,
            ),
          ),
        ],
      ),
    );
  }
}
