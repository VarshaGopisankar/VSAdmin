import 'package:flutter/material.dart';
import 'package:vsadmin/screens/dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
                children: [
                  Expanded(
                    child: SideMenu(),
                  ),
                  Expanded(
                      flex: 5,
                      child: DashboardScreen(),
                  ),
                ],
            ),
        ),
    );
  }
}

