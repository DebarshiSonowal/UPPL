import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/configuration.dart';
import '../../../Navigation/Router/app_router.dart';
import '../../../Repository/repository.dart';

class UnverifiedMembersTab extends StatelessWidget {
  const UnverifiedMembersTab({
    super.key,
    required this.rowSpacer,
    required this.data,
  });

  final Repository data;
  final TableRow rowSpacer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: Table(
        children: [
          TableRow(
            children: [
              SizedBox(
                width: 18.w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: Configuration.primaryFont(
                          fontSize: 13.sp,
                          color: const Color(0xff5C5C5C),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
              SizedBox(
                width: 25.w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Constituency',
                        style: Configuration.primaryFont(
                          fontSize: 13.sp,
                          color: const Color(0xff5C5C5C),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
              SizedBox(
                width: 22.w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Primary',
                        style: Configuration.primaryFont(
                          fontSize: 13.sp,
                          color: const Color(0xff5C5C5C),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'View Details',
                    style: Configuration.primaryFont(
                      fontSize: 13.sp,
                      color: const Color(0xff5C5C5C),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ],
          ),
          rowSpacer,
          for (var i in data.unverifiedJoinedByReferralMember)
            TableRow(
              children: [
                SizedBox(
                  width: 18.w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          i.memberName,
                          style: Configuration.primaryFont(
                            fontSize: 13.sp,
                            // color:
                            //     const Color(0xff5C5C5C),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  width: 25.w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          i.constituencyName,
                          style: Configuration.primaryFont(
                            fontSize: 13.sp,
                            // color:
                            //     const Color(0xff5C5C5C),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  width: 22.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        i.primaryName,
                        style: Configuration.primaryFont(
                          fontSize: 13.sp,
                          // color: const Color(0xff5C5C5C),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(
                          JoinedReferralViewDetailsMemberRoute(id: i.memberId),
                        );
                      },
                      child: const Icon(Icons.remove_red_eye),
                    )
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
