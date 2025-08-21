import 'styles.dart';
import 'texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/light.dart';


class GenericButton extends StatelessWidget {
  const GenericButton({
    Key? key,
    this.onPressed,
    this.backgroundColor = UIThemeLight.primary,
    this.label = "Continue",
    this.borderColor = Colors.transparent,
    this.labelColor = Colors.white,
    this.loading = false,
    this.icon,
    this.enabled = true
  }) : super(key: key);

  const GenericButton.outlined({
    Key? key,
    this.onPressed,
    this.backgroundColor = Colors.transparent,
    this.label = "Continue",
    this.loading = false,
    this.borderColor = UIThemeLight.primary,
    this.labelColor = Colors.black,
    this.icon,
    this.enabled = true
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Color labelColor;
  final bool loading;
  final String label;
  final Widget? icon;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: loading ? (){} : onPressed,
      child: Container(
        height: 52,
        width: Get.width,
        decoration: BoxDecoration(
          color: enabled ? backgroundColor : UIThemeLight.slategray400,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: enabled ? borderColor : UIThemeLight.slategray400)
        ),
        child: loading ? Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: CircularProgressIndicator(color: backgroundColor == Colors.transparent ? UIThemeLight.primary : Colors.white,),
          ),
        ) : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null ? Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: icon!,
            ) : const SizedBox.shrink(),
            UIText.bold(text: label, color: labelColor, style: baseBold.copyWith(fontWeight: FontWeight.w500),),
          ],
        )
      ),
    );
  }
}


