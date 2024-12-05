import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/UI/Profile/Widgets/membership_card.dart';

class MembershipCardView extends StatelessWidget {
  const MembershipCardView(
      {super.key,
      required this.name,
      required this.district,
      required this.photo,
      required this.memberId,
      required this.joiningDate});

  final String name, district, photo, memberId, joiningDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 3.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context).popForced();
                },
                child: Icon(
                  Icons.close,
                  size: 20.sp,
                ),
              ),
            ],
          ),
        ),
        MembershipCard(
            name: name,
            district: district,
            photo: photo,
            memberId: memberId,
            joiningDate: joiningDate),
      ],
    );
  }
}
