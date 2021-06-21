import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:user_profile/themes/app_colors.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.pathIcon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String pathIcon;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
          onPressed: press,
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xfff5f6f9)),
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(20),
            ),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                pathIcon,
                width: 22,
                color: AppColors.primaryColor,
              ),
              SizedBox(width: 20),
              Expanded(
                  child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
              )),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
    );
  }
}
