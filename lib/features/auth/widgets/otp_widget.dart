// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  const OTPWidget({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 68,
        child: TextFormField(
            onChanged: ((value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 0) {
                FocusScope.of(context).previousFocus();
              }
            }),
            controller: textEditingController,
            decoration: const InputDecoration(
                hintText: "0",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffbffffff)),
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ]));
  }
}
