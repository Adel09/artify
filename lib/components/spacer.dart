import 'package:flutter/material.dart';

class Space extends StatelessWidget {

  const Space.zero({Key? key, this.height = 0}) : super(key: key);

  const Space.vTight({Key? key, this.height = 4}) : super(key: key);

  const Space.vNormal({Key? key, this.height = 6}) : super(key: key);

  const Space.v8({Key? key, this.height = 8}) : super(key: key);

  const Space.ten({Key? key, this.height = 10}) : super(key: key);

  const Space.vLoose({Key? key, this.height = 12}) : super(key: key);

  const Space.normal({Key? key, this.height = 16}) : super(key: key);

  const Space.generic({Key? key, this.height = 20}) : super(key: key);

  const Space.vRelaxed({Key? key, this.height = 24}) : super(key: key);

  const Space.vWide({Key? key, this.height = 32}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
