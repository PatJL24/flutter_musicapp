import 'package:flutter/material.dart';
import 'package:musicapp/assets/my_instruments_icons.dart';
import 'package:musicapp/widgets/drawerItem.dart';
import 'package:musicapp/instruments/piano.dart';
import 'package:musicapp/instruments/guitar.dart';
import 'package:musicapp/instruments/drum.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(48, 48, 48, 1),
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
              child: DrawerHeader(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Select Instruments",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )),
            ),
            drawerItem(
                icon: Icons.piano,
                text: "Piano",
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const Piano(),
                    ),
                  );
                }
            ),
            drawerItem(
                icon: MyInstruments.guitar,
                text: "Guitar",
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const Guitar(),
                    ),
                  );
                }
            ),
            drawerItem(
                icon: MyInstruments.drum,
                text: "Drum",
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const Drum(),
                    ),
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
