import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky/constants/assets_path.dart';
import 'package:tasky/constants/routes.dart';
import 'package:tasky/widgets/custom_elevated_btn.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.homeScreen);
          },
          icon: SvgPicture.asset(
            IconPath.arrowLeftIcon,
            color: Color(0xffFFFCFC),
            width: 16,
            height: 16,
          ),
        ),
        title: Text(
          "User Details",
          style: Theme.of(
            context,
          ).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "USer Name",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontSize: 20),
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
                  hintText: 'Wafaa Farahat',
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
              height: 20,
            ),
            Text(
              "Motivation Quote",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 160,
              margin: const EdgeInsets.only(
                bottom: 10,
              ), // gap
              child: TextField(
                maxLines: 7,
                // minLines: 3,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: 'One task at a time. One step closer',
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

            SizedBox(
              height: 253,
            ),
            CustomElevatedBtn(
              onPressed: () {},
              text: "Save Changes",
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
