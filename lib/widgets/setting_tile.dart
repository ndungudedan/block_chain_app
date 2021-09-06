import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final String label;
  final Color? color;
  SettingTile({required this.label,this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: color ?? null),
            ),
            Icon(Icons.arrow_forward_ios,color: color,size: 15,)
          ],
        ),
      ),
    );
  }
}
