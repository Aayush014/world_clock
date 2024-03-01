import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:world_clock/Views/alarm_clock.dart';
import 'package:world_clock/Views/stop_watch.dart';
import 'package:world_clock/Views/timer_screen.dart';
import 'package:world_clock/Views/world_clock.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    WorldClock(),
    AlarmClock(),
    StopWatch(),
    TimerScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 90,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ClipRRect(
              child: GNav(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                tabBorderRadius: 18,
                rippleColor: Colors.grey[500]!,
                hoverColor: Colors.grey[100]!,
                gap: 10,
                activeColor: const Color(0xFF00FFB2),
                iconSize: 27,
                haptic: true,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                duration: const Duration(milliseconds: 200),
                tabBackgroundColor: Colors.black,
                style: GnavStyle.google,
                tabs: const [
                  GButton(
                    shadow: [
                      BoxShadow(
                          blurRadius: 1, spreadRadius: 0.5, color: Colors.black)
                    ],
                    icon: CupertinoIcons.clock,
                    iconColor: Colors.white,
                  ),
                  GButton(
                    shadow: [
                      BoxShadow(
                          blurRadius: 1, spreadRadius: 0.5, color: Colors.black)
                    ],
                    icon: CupertinoIcons.alarm,
                    iconColor: Colors.white,
                  ),
                  GButton(
                    shadow: [
                      BoxShadow(
                          blurRadius: 1, spreadRadius: 0.5, color: Colors.black)
                    ],
                    icon: CupertinoIcons.stopwatch,
                    iconColor: Colors.white,
                  ),
                  GButton(
                    shadow: [
                      BoxShadow(
                          blurRadius: 1, spreadRadius: 0.5, color: Colors.black)
                    ],
                    icon: CupertinoIcons.timer,
                    iconColor: Colors.white,
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
