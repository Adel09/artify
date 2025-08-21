import 'styles.dart';
import 'package:flutter/material.dart';

import '../theme/light.dart';


class UIText extends StatelessWidget {
  const UIText(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.style = base,
      this.overflow = TextOverflow.visible,
      this.alignment, this.maxLines});

  const UIText.light(
      {super.key,
        required this.text,
        this.color = UIThemeLight.gray800,
        this.style = light,
        this.overflow = TextOverflow.visible,
        this.alignment, this.maxLines});

  const UIText.centered(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.style = base,
      this.overflow = TextOverflow.visible,
      this.alignment = TextAlign.center, this.maxLines});

  const UIText.bold(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.style = baseBold,
      this.overflow = TextOverflow.visible,
      this.alignment, this.maxLines});

  const UIText.xxSmall(
      {super.key,
      required this.text,
      this.color = UIThemeLight.gray700,
      this.style = xxSmall,
      this.overflow = TextOverflow.visible,
      this.alignment, this.maxLines});

  const UIText.xSmall(
      {super.key,
      required this.text,
      this.color = UIThemeLight.gray700,
      this.style = xSmall,
      this.overflow = TextOverflow.visible,
      this.alignment, this.maxLines});

  const UIText.xSmallSimiBold(
      {super.key,
      required this.text,
      this.color = UIThemeLight.gray700,
      this.style = xSmallSemiBold,
      this.overflow = TextOverflow.visible,
      this.alignment, this.maxLines});
  const UIText.small(
      {super.key,
      required this.text,
      this.color = UIThemeLight.black,
      this.overflow = TextOverflow.visible,
      this.style = small,
      this.alignment, this.maxLines});
  const UIText.smallBold(
      {super.key,
        required this.text,
        this.color = UIThemeLight.black,
        this.overflow = TextOverflow.visible,
        this.style = smallBold,
        this.alignment, this.maxLines});
  const UIText.medium(
      {super.key,
      required this.text,
      this.color = UIThemeLight.gray800,
      this.overflow = TextOverflow.visible,
      this.style = medium,
      this.alignment, this.maxLines});
  const UIText.mediumBold(
      {super.key,
      required this.text,
      this.color = UIThemeLight.black,
      this.overflow = TextOverflow.visible,
      this.style = mediumBold,
      this.alignment, this.maxLines});
  const UIText.large(
      {super.key,
      this.overflow = TextOverflow.visible,
      required this.text,
      this.color = UIThemeLight.black,
      this.style = large,
      this.alignment, this.maxLines});

  const UIText.largeBold(
      {super.key,
      this.overflow = TextOverflow.visible,
      required this.text,
      this.color = UIThemeLight.gray900,
      this.style = largeBold,
      this.alignment, this.maxLines});

  const UIText.xLarge(
      {super.key,
      required this.text,
      this.color = UIThemeLight.black,
      this.overflow = TextOverflow.visible,
      this.style = xLarge,
      this.alignment, this.maxLines});

  const UIText.xxLarge(
      {super.key,
      required this.text,
      this.color = UIThemeLight.gray900,
      this.overflow = TextOverflow.visible,
      this.style = xxLarge,
      this.alignment, this.maxLines});

  const UIText.xxxLarge(
      {super.key,
        required this.text,
        this.color = UIThemeLight.gray900,
        this.overflow = TextOverflow.visible,
        this.style = xxxLarge,
        this.alignment, this.maxLines});

  final String text;
  final Color color;
  final TextStyle style;
  final TextAlign? alignment;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        overflow: overflow,
        style: style.copyWith(color: color),
        textAlign: alignment,
      maxLines: maxLines,
    );
  }
}
