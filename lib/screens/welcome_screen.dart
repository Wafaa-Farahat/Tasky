import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky/constants/assets_path.dart';
import 'package:tasky/constants/routes.dart';
import 'package:tasky/widgets/custom_elevated_btn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImagePath.logo,
              width: 42,
              height: 42,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "Tasky",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 105,
          ),
          //Welcome Msg
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 46,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome To Tasky",
                  style: Theme.of(context).textTheme.headlineSmall,
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Text(
              "Your Productivity Journey Starts here.",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(
            height: 24,
          ),

          //InProgress Img
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 64,
            ),
            child: SvgPicture.asset(
              ImagePath.workInProgress,
              width: 215,
              height: 205,
            ),
          ),
          const SizedBox(
            height: 28,
          ),

          //name,field,btn
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Full Name",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 56,
                  margin: const EdgeInsets.only(
                    bottom: 10,
                  ), // gap
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      hintText: 'e.g. Wafaa Farahat',
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 16.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          width: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          width: 1.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomElevatedBtn(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Routes.homeScreen,
                    );
                  },
                  text: "Let's Get Started",
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
