import 'package:flutter/material.dart';
import 'package:showcase_1/src/_utils/size_config.dart';

class BorderedAvatarView extends StatelessWidget {
  static const double _targetSize = 64;
  final String url;
  final double size;

  const BorderedAvatarView({Key key, this.url, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderWidth = 3 * size / SizeConfig.scale(_targetSize);
    final borderRadius = 8 * size / SizeConfig.scale(_targetSize);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: SizeConfig.scale(borderWidth),
        ),
        borderRadius: BorderRadius.circular(
          SizeConfig.scale(borderRadius),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            url,
          ),
        ),
      ),
    );
  }
}
