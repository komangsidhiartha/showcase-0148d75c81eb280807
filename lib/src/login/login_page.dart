import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:showcase_1/src/_base/base_colors.dart';
import 'package:showcase_1/src/_base/base_text_form_field.dart';
import 'package:showcase_1/src/_base/bordered_avatar_view.dart';
import 'package:showcase_1/src/_utils/size_config.dart';

import '../_base/base_page.dart';

class LoginPage extends BasePage {
  static const loremIpsum =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus cursus "
      "varius gravida. Morbi accumsan metus ut mauris varius ornare. Duis "
      "consequat hendrerit ante eget rutrum. Pellentesque et lectus risus. "
      "Praesent consectetur congue porttitor.";

  const LoginPage();

  @override
  bool get isFullBody => true;

  @override
  Widget buildAppBar() {
    return AppBar(
      brightness: Brightness.dark,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
    );
  }

  @override
  Widget buildBody() {
    return Stack(
      children: [
        Positioned.fill(
          child: _buildBackground(),
        ),
        _buildContents(),
      ],
    );
  }

  Widget _buildBackground() {
    return Container(
      color: BaseColors.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _columnSpacer(102),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContents() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _columnSpacer(24),
            ..._buildChurchDetails(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(SizeConfig.scale(16)),
              child: _buildLoginForm(),
            ),
            _columnSpacer(4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: SizeConfig.scale(28),
                  height: SizeConfig.scale(28),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(SizeConfig.scale(6)),
                    color: Colors.grey,
                  ),
                ),
                _columnSpacer(4),
                Text(
                  "Corner Stone",
                  style: TextStyle(
                    fontSize: SizeConfig.scale(12),
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            _columnSpacer(8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.scale(16)),
              child: Text(
                loremIpsum,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: SizeConfig.scale(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildChurchDetails() {
    return [
      BorderedAvatarView(
        url:
            "https://stanthony-wishlist.app/uploads/item_image-1599790343358.PNG",
        size: SizeConfig.scale(64),
      ),
      _columnSpacer(8),
      Text(
        "St. Goerge and St. Anthony",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: SizeConfig.scale(16),
        ),
      ),
      _columnSpacer(4),
      Text(
        "17th St - Al MushrifW24-02 - Abu Dhabi - UAE",
        style: TextStyle(
          color: Colors.grey,
          fontSize: SizeConfig.scale(12),
        ),
      ),
    ];
  }

  Widget _buildLoginForm() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          SizeConfig.scale(8),
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(SizeConfig.scale(16)),
        child: Column(
          children: [
            Text(
              "WELCOME TO",
              style: TextStyle(
                fontSize: SizeConfig.scale(10),
              ),
            ),
            _columnSpacer(4),
            Text(
              "Corner Stone",
              style: TextStyle(
                fontSize: SizeConfig.scale(32),
              ),
            ),
            _columnSpacer(8),
            BaseTextFormField(
              formName: "Email",
              keyboardType: TextInputType.emailAddress,
            ),
            _columnSpacer(4),
            BaseTextFormField(
              formName: "Password",
              secureInput: true,
            ),
            _columnSpacer(8),
            ObxValue(
              (checked) => CheckboxListTile(
                title: Text("Remember me"),
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.all(0),
                value: checked.value,
                onChanged: (value) => checked.value = value,
              ),
              false.obs,
            ),
            _columnSpacer(8),
            Container(
              width: double.infinity,
              child: FlatButton(
                color: BaseColors.actionButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(SizeConfig.scale(8)),
                ),
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(SizeConfig.scale(13)),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            _columnSpacer(8),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            _columnSpacer(4),
            Container(
              width: double.infinity,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: BaseColors.actionButtonColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _columnSpacer(double space) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.scale(space)),
    );
  }
}
