import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget{
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("images/logo.png", height: 100, width: 170,),
            ),
            DrawerListTitle(
              title: "Dashboard",
              svgSrc: "icons/menu_dashboard.svg",
              press: () {},
            ),
            DrawerListTitle(
              title: "Patient Details",
              svgSrc: "icons/patients.svg",
              press: () {},
            ),
            DrawerListTitle(
              title: "Eye Appointments",
              svgSrc: "icons/eye.svg",
              press: () {},
            ),
            DrawerListTitle(
              title: "Dental Appointments",
              svgSrc: "icons/tooth.svg",
              press: () {},
            ),
            DrawerListTitle(
              title: "Optical Appointments",
              svgSrc: "icons/opticals.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}


class DrawerListTitle extends StatelessWidget{
  const DrawerListTitle({
    Key? key,
    required this.title,
    required this.press,
    required this.svgSrc,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white70,
        height: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

