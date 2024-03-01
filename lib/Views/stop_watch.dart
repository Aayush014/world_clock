import 'dart:math';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_clock/Utils/watches.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

final StopWatchTimer _stopWatchTimer = StopWatchTimer();
const _isHours = true;

@override
void dispose() {
  dispose();
  _stopWatchTimer.dispose();
}

class _StopWatchState extends State<StopWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '\tStop Watch',
          style: GoogleFonts.poppins(
              color: const Color(0xFF00FFB2),
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                color: Color(0xff0a0a0a),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white38,
                    spreadRadius: 0.01,
                    blurRadius: 7,
                  )
                ]),
            child: const Icon(
              CupertinoIcons.settings,
              size: 30,
              color: Color(0xFF00FFB2),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        toolbarHeight: 80,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 350,
              width: 350,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        boxShadow: [
                          const BoxShadow(
                            color: Color(0x28000000),
                            blurRadius: 25,
                            offset: Offset(10.04, 10.04),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Colors.grey.shade900,
                            blurRadius: 25,
                            offset: const Offset(-15, -10),
                            spreadRadius: 0,
                          )
                        ],
                        color: const Color(0xFF1C1B1F),
                        shape: BoxShape.circle,
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ...List.generate(
                            60,
                            (index) => Transform.rotate(
                              angle: index * 6 * pi / 180,
                              child: const Center(
                                child: Divider(
                                  color: Colors.white,
                                  indent: 263,
                                  endIndent: 34,
                                  thickness: 2,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: StreamBuilder<int>(
                              stream: _stopWatchTimer.rawTime,
                              initialData: _stopWatchTimer.rawTime.value,
                              builder: (context, snapshot) {
                                final value = snapshot.data;
                                final displayTime =
                                    StopWatchTimer.getDisplayTime(value!,
                                        hours: _isHours);
                                return Text(
                                  displayTime,
                                  style: const TextStyle(
                                      fontSize: 35,
                                      color: Color(0xFF00FFB2),
                                      fontWeight: FontWeight.bold),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        startButton(),
                        stopButton(),
                      ],
                    ),
                  ),
                  resetButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector startButton() {
    return GestureDetector(
      onTap: () {
        _stopWatchTimer.onStartTimer();
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 130,
        decoration: BoxDecoration(
            color: const Color(0xFF1C1B1F),
            boxShadow: const [
              BoxShadow(
                color: Color(0x38000000),
                blurRadius: 12,
                offset: Offset(4, 4),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x7F4D4D4D),
                blurRadius: 12,
                offset: Offset(-4, -4),
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.circular(20)),
        child: GradientText(
          'Start',
          style: const TextStyle(
            fontSize: 30,
          ),
          gradientType: GradientType.linear,
          radius: 0.5,
          colors: [
            Colors.teal,
            Colors.green.shade300,
          ],
        ),
      ),
    );
  }

  GestureDetector stopButton() {
    return GestureDetector(
      onTap: () {
        _stopWatchTimer.onStopTimer();
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 130,
        decoration: BoxDecoration(
            color: const Color(0xFF1C1B1F),
            boxShadow: const [
              BoxShadow(
                color: Color(0x38000000),
                blurRadius: 12,
                offset: Offset(4, 4),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x7F4D4D4D),
                blurRadius: 12,
                offset: Offset(-4, -4),
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.circular(20)),
        child: GradientText(
          'Stop',
          style: const TextStyle(
            fontSize: 30,
          ),
          gradientType: GradientType.linear,
          radius: 0.5,
          colors: [
            Colors.green.shade300,
            Colors.teal,
          ],
        ),
      ),
    );
  }

  GestureDetector resetButton() {
    return GestureDetector(
      onTap: () {
        _stopWatchTimer.onResetTimer();
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 130,
        decoration: BoxDecoration(
            color: const Color(0xFF1C1B1F),
            boxShadow: const [
              BoxShadow(
                color: Color(0x38000000),
                blurRadius: 12,
                offset: Offset(4, 4),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x7F4D4D4D),
                blurRadius: 12,
                offset: Offset(-4, -4),
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.circular(20)),
        child: const Text(
          'Reset',
          style: TextStyle(fontSize: 30, color: Color(0xFF00FFB2)),
        ),
      ),
    );
  }
}

DateTime dateTime = DateTime.now();
