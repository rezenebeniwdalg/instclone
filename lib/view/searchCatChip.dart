import 'package:flutter/material.dart';
import 'package:instclone/core/constants/colorconst.dart';

class SearchCatChip extends StatelessWidget {
  const SearchCatChip({super.key, this.icon});
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(color: ColorConstants.primaryBlack.withOpacity(.1))),
      child: Row(children: [
        icon != null ? Icon(Icons.live_tv_rounded) : SizedBox(),
        SizedBox(
          width: 6,
        ),
        Text("IGTV"),
      ]),
    );
  }
}
