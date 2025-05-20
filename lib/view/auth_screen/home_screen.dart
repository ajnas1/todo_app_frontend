import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapp/utils/p_color.dart';
import 'package:todoapp/utils/p_text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.red[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.black,
                  dividerColor: Colors.black,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      text: 'In Progress',
                    ),
                    Tab(
                      text: 'To Do',
                    ),
                    Tab(
                      text: 'Compleeted',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  HomeScreen()
                  // MyPostTab(),
                  // MyReelsTab(),
                  // MyTagTab(),
                ]),
              ),
            

            Padding(
              padding: const EdgeInsets.only(top: 40, left: 25),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://image.cdn2.seaart.ai/20240905/97c8dff7-04a8-40c6-bd02-174579e2ce7d.png',
                    ),
                    radius: 23,
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    height: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello'),
                        Text(
                          'sartak',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 210),
                    child: CircleAvatar(
                      foregroundColor: AppColors.borderColor,
                      radius: 20,
                      child: CircleAvatar(
                        backgroundColor: AppColors.background,
                        radius: 19.5,
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/images/Menu.svg'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Container(
                height: 45,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: 300),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/images/Search.svg'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Your Task', style: AppTextStyles.bold),
            ),
      
            SizedBox(
              height: 500,
              child: ListView.separated(
                itemBuilder: (context, I) {
                  return SizedBox(
                    height: 200,
                    width: 200,
                    child: Card(color: Colors.black,));
                },
                separatorBuilder: (context, d) {
                  return SizedBox();
                },
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
