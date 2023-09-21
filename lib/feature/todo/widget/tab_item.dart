import 'package:flutter/material.dart';
import 'package:to_do_application/core/theme/export.dart';

class TabItem extends StatelessWidget {
  const TabItem({
    Key? key,
    this.label = '',
    this.onTap,
    this.onSelected = false,
  }) : super(key: key);
  final String label;
  final Function()? onTap;
  final bool onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpace.m),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(AppSpace.m)),
          border: Border.all(color: AppColor.bluePrimary, width: 2.0),
          color: onSelected ? AppColor.bluePrimary : AppColor.whitePrimary,
        ),
        child: Text(
          label,
          style: AppText.arial14W500.copyWith(
            color: onSelected ? AppColor.whitePrimary : AppColor.blackPrimary,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
