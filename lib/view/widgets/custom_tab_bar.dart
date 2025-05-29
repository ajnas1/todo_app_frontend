import 'package:flutter/material.dart';
// import 'package:todoapp/view/auth_screen/calendar_screen.dart';
// import 'package:todoapp/view/auth_screen/graph_screen.dart';
// import 'package:todoapp/view/auth_screen/home_screen.dart';
// import 'package:todoapp/view/auth_screen/profile_screen.dart';
// import 'package:todoapp/view/widgets/nav_bar.dart';

// class CustomTabBar extends StatefulWidget {
//   const CustomTabBar({
//     super.key,
//     required TabController controller,
//     required TabBarIndicatorSize indicatorSize,
//     required BoxDecoration indicator,
//     required List<Tab> tabs,
//   });

//   @override
//   _customTabBarState createState() => _customTabBarState();
// }

// class _customTabBarState extends State<TabBar> {
//   late final TabController _tabController;
//   List<Widget> _body = [
//     BottomNavBar(),
//     CalendarScreen(),
//     GraphScreen(),
//     ProfileScreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Column(
//         children: [
//           TabBar(
//             controller: _tabController,
//             indicatorSize: TabBarIndicatorSize.tab,
//             indicator: BoxDecoration(
//               borderRadius: BorderRadius.circular(8.0),
//               color: Colors.blue,
//             ),
//             tabs: const [
//               Tab(text: 'In Progress'),
//               Tab(text: 'To Do'),
//               Tab(text: 'Completed'),
//             ],
//           ),
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: _body
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class CustomSegmentTabBar extends StatefulWidget {
  @override
  _CustomSegmentTabBarState createState() => _CustomSegmentTabBarState();
}

class _CustomSegmentTabBarState extends State<CustomSegmentTabBar> {
  int selectedIndex = 0;

  final List<String> tabs = ['In Progress', 'To Do', 'Completed'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(tabs.length, (index) {
            final bool isSelected = index == selectedIndex;
        
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 6),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue : Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: isSelected ? Colors.blue : Colors.grey.shade300,
                  ),
                ),
                child: Text(
                  tabs[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          }),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}

