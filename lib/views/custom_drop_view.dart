import 'package:block_chain/common/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: kcBackgroundColor3,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: DropdownButtonFormField(
          decoration: InputDecoration(),
            validator: (value) => value == null ? 'Cant be empty' : null,
            //hint: Text('Wallet'),
            items: List.generate(3, (int index) {
              return DropdownMenuItem(
                  value: index,
                  child: Text('USD'));
            }),
            onChanged: (dynamic? value) {
             // print(value);
            }),
      ),
    );
  }
}
