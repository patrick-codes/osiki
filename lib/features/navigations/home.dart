import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'map_page.dart';
import 'video_call.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //final TimeOfDay _timeOfDay = TimeOfDay.now();

  //var _callPrompt = "";

  /* void _callCenter() {
    setState(() {
      _callPrompt = "Help is underway..!!";
    });
  }
*/
  void _snackBar(BuildContext context) {
    showTopSnackBar(
      Overlay.of(context),
      const CustomSnackBar.success(
        message: "Emergency Activation Successful!!",
      ),
    );
  }

  Future _bottomDraw(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => SizedBox(
        height: 90,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset.zero,
                        color: Colors.grey,
                        blurRadius: 10,
                      )
                    ]),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const VideoCallPage(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.video,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        "Video Call",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset.zero,
                        color: Colors.grey,
                        blurRadius: 10,
                      )
                    ]),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.phone,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      "Voice Call",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              //const SizedBox(width: 100),
              /* Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset.zero,
                      color: Colors.grey,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Icon(
                  Icons.person,
                  size: 45,
                  color: Colors.grey,
                ),
              ),
            */
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2.2,
        backgroundColor: const Color.fromARGB(255, 4, 52, 91),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        title: SizedBox(
          height: 35,
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 4, 52, 91),
                ),
              ),
              const Text(
                "OSIKI EMERGENCY",
                style: TextStyle(
                  fontSize: 20,
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
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*  Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset.zero,
                    blurRadius: 12,
                  )
                ],
              ),
              child: Center(
                child: Text(
                  "${_timeOfDay.hour} : ${_timeOfDay.minute}",
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            */
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    "Click on the bell icon to\n" "Call Emergency Now",
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 20,
                      color: Color.fromARGB(255, 4, 52, 91),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => {
                showDialog(
                  context: context,
                  builder: (buildContext) => AlertDialog(
                    icon: const Center(
                      child: FaIcon(
                        color: Colors.green,
                        size: 50,
                        FontAwesomeIcons.motorcycle,
                      ),
                    ),
                    title: const Center(
                      child: Text(
                        "A panic button has being created for you. Help is underway. Stay calm and expect help.Thank You!!",
                        style: TextStyle(
                          color: Color.fromARGB(255, 4, 52, 91),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    actions: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MapPage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 4, 52, 91),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SizedBox(height: 9),
                                    FaIcon(
                                      FontAwesomeIcons.map,
                                      color: Colors.amberAccent,
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      "Track Help",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amberAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 4, 52, 91),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Check Log",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  barrierDismissible: true,
                ),
              },
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 21, 4),
                      borderRadius: BorderRadius.circular(123),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.3),
                    child: Container(
                      height: 230,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(123),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.notifications_active,
                          size: 80,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  _snackBar(context);
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ACTIVATE EMERGENCY",
                        style: TextStyle(
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
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 4, 52, 91),
        onPressed: () {
          _bottomDraw(context);
        },
        /*() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MapPage()),
          );
        },*/
        tooltip: 'Call',
        child: const Icon(
          Icons.call_rounded,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
