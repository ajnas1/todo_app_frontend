import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todoapp/utils/p_color.dart';
import 'package:todoapp/utils/p_text_style.dart';
import 'package:todoapp/view/widgets/custom_tab_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double Progress = 0.6;
  int selectedIndex = 0;
  List RandomImages = [
    //'https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW4lMjBmYWNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528',
  ];

  final List<String> tabs = ['In Progress', 'To Do', 'Completed'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  color: AppColors.placeholderBackground,
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
            SizedBox(height: 10),
            CustomSegmentTabBar(),

            // List.generate(tabs.length. (index){

            // }),
            SizedBox(
              height: 500,
              child: ListView.separated(
                itemBuilder: (context, I) {
                  return SizedBox(
                    height: 200,
                    //width: 140,
                    child: Card(
                      color: AppColors.background,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Design',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blue,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 340),
                              child: CircleAvatar(
                                foregroundColor: AppColors.borderColor,
                                radius: 15,
                                child: CircleAvatar(
                                  backgroundColor: AppColors.background,
                                  radius: 14.5,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_horiz, size: 16),
                                  ),
                                ),
                              ),
                            ),
                            Text('The Logo Process', style: AppTextStyles.bold),
                            Text(
                              'Progress',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: LinearProgressIndicator(
                                    value: Progress,
                                    color: AppColors.primary,
                                    backgroundColor: Colors.grey,
                                    minHeight: 6,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  '${(Progress * 100).toInt()}%',
                                  style: AppTextStyles.medium,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [         
                                  SvgPicture.asset("assets/images/calendar_clock.svg"),
                                SizedBox(width: 4),
                                Text(
                                  '12 Jan 2023',
                                  style: TextStyle(color: Colors.grey[800]),
                                ),
                                SizedBox(
                                  width: 16,
                                ), // space between start and end date
                                Icon(Icons.flag, size: 18, color: Colors.blue),
                                SizedBox(width: 4),
                                Text(
                                  '20 Mar 2023',
                                  style: TextStyle(color: Colors.grey[800]),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                for (int i = 0; i < RandomImages.length; i++)
                                  Align(
                                    widthFactor: 0.5,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundImage: NetworkImage(
                                        RandomImages[i],
                                      ),
                                    ),
                                  ),
                                Align(
                                  widthFactor: 0.3,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.add, color: Colors.white),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.zero,
                                      minimumSize: Size(15, 15),
                                      //tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      backgroundColor:
                                          Colors.blue, // <-- Button color
                                      foregroundColor:
                                          Colors.white, // <-- Splash color
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 240),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('High'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.primary,
                                      foregroundColor: AppColors.background,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
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
