import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:user_profile/enums.dart';
import 'package:user_profile/themes/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xffb6b6b6);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xffdadada).withOpacity(0.15))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: null,
              icon: SvgPicture.asset("assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? AppColors.primaryColor
                      : inActiveIconColor)),
          IconButton(
              onPressed: null,
              icon: SvgPicture.asset("assets/icons/Heart Icon.svg",
                  color: MenuState.favourite == selectedMenu
                      ? AppColors.primaryColor
                      : inActiveIconColor)),
          IconButton(
              onPressed: null,
              icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg",
                  color: MenuState.message == selectedMenu
                      ? AppColors.primaryColor
                      : inActiveIconColor)),
          IconButton(
              onPressed: null,
              icon: SvgPicture.asset("assets/icons/User_Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? AppColors.primaryColor
                      : inActiveIconColor))
        ],
      ),
    );
  }
}
