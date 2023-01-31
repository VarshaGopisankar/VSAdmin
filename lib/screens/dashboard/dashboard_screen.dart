import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vsadmin/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.headline6,
              ),
              Spacer(flex: 2,),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  fillColor: secondaryColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 40,
                      padding: EdgeInsets.all(defaultPadding * 0.55),
                      margin: EdgeInsets.symmetric(
                        horizontal: defaultPadding / 2),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SvgPicture.asset("icons/search.svg", color: Colors.white,),
                    ),
                  ),
                ),
              ),
              ),
              Container(
                margin: EdgeInsets.only(left: defaultPadding),
                padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding/2,),
                decoration: BoxDecoration(color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.white10),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("icons/profile.svg", color: Colors.white, height: 38,),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding / 2),
                      child: Text("Varsha"),
                      ),
          Icon(Icons.keyboard_arrow_down),
          ]
                    ),
              ),
                ],
              )
            ],
          ),
      ),
    );
  }
}
