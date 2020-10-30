import 'package:flutter/material.dart';
import 'package:showcase_1/src/_utils/size_config.dart';

class BaseTextFormField extends StatelessWidget {
  final String formName;
  final TextInputType keyboardType;
  final bool secureInput;

  const BaseTextFormField({
    Key key,
    this.formName,
    this.secureInput = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: SizeConfig.scale(8)),
          child: Text(
            formName,
            style: TextStyle(
              color: Colors.grey,
              fontSize: SizeConfig.scale(12),
            ),
          ),
        ),
        TextFormField(
          style: TextStyle(fontSize: SizeConfig.scale(16)),
          autocorrect: false,
          keyboardType: keyboardType,
          obscureText: secureInput,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: SizeConfig.scale(8),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(SizeConfig.scale(8)),
            ),
          ),
        ),
      ],
    );
  }
}
