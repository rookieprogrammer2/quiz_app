import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'package:quiz/Custom%20Widgets/feeling_item.dart';
import 'package:quiz/Custom Widgets/svgStrings.dart';

class MoodyScreen extends StatefulWidget {
  static const routeName = "moody_screen";

  @override
  State<MoodyScreen> createState() => _MoodyScreenState();
}

class _MoodyScreenState extends State<MoodyScreen> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        currentIndex: currentTab,
        selectedItemColor: Colors.green,
        onTap: (index) {
          currentTab = index;
          setState(() {});
        },
        items: [
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/home.png")),
              label: "Home"),
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/grid.png")),
              label: "Grid"),
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/calendar.png")),
              label: "Calendar"),
          const BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/user.png")),
              label: "User"),
        ],
      ),
      appBar: AppBar(
        leadingWidth: 100,
        titleSpacing: 0.0,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Container(
          margin: const EdgeInsets.only(left: 7, top: 5),
          child: SvgPicture.string(
            logoSvgString,
          ),
        ),
        title: Text(
          "Moody",
          style: GoogleFonts.happyMonkey(
            textStyle: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 40, top: 20),
            child: badges.Badge(
              child: SvgPicture.asset(
                "assets/icons/bell.svg",
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 24, bottom: 32, left: 32, right: 32),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Hello, ",
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  "Sara Rose!",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Text(
                  "How are you feeling today?",
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeelingItem(text: 'Love', iconPath: "assets/icons/love.svg"),
                FeelingItem(text: 'Cool', iconPath: "assets/icons/cool.svg"),
                FeelingItem(text: 'Happy', iconPath: "assets/icons/happy.svg"),
                FeelingItem(text: 'Sad', iconPath: "assets/icons/sad.svg"),
              ],
            ),
            const SizedBox(height: 40),
            const Row(
              children: [
                Text(
                  "Feature",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  "See More",
                  style: TextStyle(color: Colors.green),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.green,
                )
              ],
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              width: 326,
              height: 186,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Positive Vibes",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Boost your mode with\npositive vibes",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/_Play button.svg",
                              fit: BoxFit.none,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "10 Mins",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(children: [
                        Container(
                            margin: const EdgeInsets.only(top: 19),
                            child: Image.asset("assets/images/dog.png")),
                      ]),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Row(
              children: [
                Text(
                  "Exercise",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  "See More",
                  style: TextStyle(color: Colors.green),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.green,
                )
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              children: [Row(), Row()],
            ),
          ],
        ),
      ),
    );
  }
}
