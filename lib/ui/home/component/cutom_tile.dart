import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:workout_task/data/models/home/res_user.dart';

import '../../../utils/constants/color_constant.dart';
import '../../../utils/constants/fontsize_constant.dart';

class CustomCard extends StatelessWidget {
  final ResUser user;
  final void Function()? onPressed;
  final String buttonName;
  final bool isSelected;
  const CustomCard(
      {Key? key,
      required this.user,
      required this.onPressed,
      required this.buttonName,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: lightPurple.withOpacity(0.5),
              child: Text(
                getInitials(string: user.name ?? ''),
                style: const TextStyle(fontWeight: bold),
              ),
            ),
            const Gap(20),
            customRow(title: "Name", subTitle: user.name ?? ''),
            const Gap(10),
            customRow(title: "Email", subTitle: user.email ?? ''),
            const Gap(10),
            customRow(title: "Phone", subTitle: user.phone ?? ''),
            const Gap(20),
            if (isSelected)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.phone),
                    onPressed: () async {
                      final Uri launchUri = Uri(
                        scheme: 'tel',
                        path: user.phone,
                      );
                      await launchUrl(launchUri);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.pin_drop),
                    onPressed: () async {
                      String googleUrl =
                          'comgooglemaps://?center=${user.address!.geo!.lat},${user.address!.geo!.lng}';
                      String appleUrl =
                          'https://maps.apple.com/?sll=${user.address!.geo!.lat},${user.address!.geo!.lng}';
                      if (Platform.isAndroid) {
                        await launchUrl(Uri.parse(googleUrl));
                      } else if (Platform.isIOS) {
                        await launchUrl(Uri.parse(appleUrl));
                      } else {
                        throw 'Could not launch url';
                      }
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.sms),
                    onPressed: () async {
                      if (Platform.isAndroid) {
                        String uri = 'sms:${user.phone}?body=hello%20there';
                        await launchUrl(Uri.parse(uri));
                      } else if (Platform.isIOS) {
                        // iOS
                        String uri = 'sms:${user.phone}&body=hello%20there';
                        await launchUrl(Uri.parse(uri));
                      }
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.mail),
                    onPressed: () async {
                      if (!await launchUrl(
                        Uri.parse("mailto:${user.email}?subject=&body=Hi"),
                        mode: LaunchMode.externalApplication,
                      )) {
                        throw Exception('Could not launch ${user.website}');
                      }
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.link_rounded),
                    onPressed: () async {
                      if (!await launchUrl(
                        Uri.parse(user.website ?? ''),
                        mode: LaunchMode.externalApplication,
                      )) {
                        throw Exception('Could not launch ${user.website}');
                      }
                    },
                  ),
                ],
              ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(MediaQuery.of(context).size.width, 56)),
                child: Text(
                  buttonName,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  customRow({required String title, required String subTitle}) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: bold),
        ),
        const Spacer(),
        Text(
          subTitle,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  String getInitials({required String string, int? limitTo}) {
    var buffer = StringBuffer();
    var split = string.split(' ');
    for (var i = 0; i < (limitTo ?? split.length); i++) {
      buffer.write(split[i][0]);
    }

    return buffer.toString();
  }
}
