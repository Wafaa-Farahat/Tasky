import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky/constants/assets_path.dart';
import 'package:tasky/constants/routes.dart';
import 'package:tasky/widgets/custom_elevated_btn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //like appBar
              SizedBox(
                width: 343,
                height: 72,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 21,
                      backgroundImage: NetworkImage(
                        "https://img.freepik.com/premium-vector/muslim-business-woman-wearing-hijab-working-table-with-laptop_548264-57.jpg",
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 251,
                      // height: 56, ////overflow
                      height: 65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Evening ,Wafaa",
                            style: Theme.of(
                              context,
                            ).textTheme.titleLarge?.copyWith(fontSize: 20),
                          ),
                          Text(
                            "One tast at a time.One step \ncloser.",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    // CircleAvatar(
                    //   radius: 17,
                    //   foregroundColor: Color(0xFF282828),
                    //   backgroundImage: AssetImage(
                    //     IconPath.darkModeIcon,
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Yuhuu , Your work is \nalmost done ! ",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    IconPath.wavingHandIcon,
                    width: 28,
                    height: 28,
                  ),
                ],
              ),

              //TODO : handle px after adding bottomBar&Rest of widgets
              SizedBox(
                height: 600,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: CustomElevatedBtn(
                  //TODO: make custmBtn accept svgIcon +
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.newTaskScreen);
                  },
                  text: "+ Add New Task",
                  width: 167,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
