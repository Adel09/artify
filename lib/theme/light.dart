import 'package:flutter/material.dart';

class UIThemeLight {
  UIThemeLight();
  static const Color red100 = Color(0XFFFCE7E9);
  static const Color red600 = Color(0XFFE31B27);

  static const Color baseColor = Color(0XFF132355);

  static const Color orange50 = Color(0XFFFFF7ED);
  static const Color orange100 = Color(0XFFFFEDD5);
  static const Color orange900 = Color(0XFF7C2D12);
  static const Color orange600 = Color(0XFFEA580C);

  static const Color gray900 = Color(0xFF111827);
  static const Color gray800 = Color(0xFF343232);
  static const Color gray700 = Color(0XFF374151);
  static const Color gray500 = Color(0xFF597091);
  static const Color gray400 = Color(0xFF94A3b8);
  static const Color gray300 = Color(0xFFD1D5DB);
  static const Color gray200 = Color(0XFFD1D5DB);
  static const Color gray100 = Color(0XFFF1F5F9);
  static const Color slategray100 = Color(0XFFf1f5f9);
  static const Color slategray200 = Color(0XFFE2E8F0);
  static const Color slategray300 = Color(0XFFcbd5e1);
  static const Color slategray400 = Color(0XFF94a3b8);
  static const Color slategray500 = Color(0XFF64748b);
  static const Color slategray600 = Color(0XFF475569);

  static const Color blue600 = Color(0XFF0049B5);
  static const Color blue400 = Color(0XFF1973F8);
  static const Color blue100 = Color(0XFFEDF4FF);
  static const Color blue200 = Color(0xFFCFE2FF);
  static const Color blue50 = Color(0XFFF4F9FF);
  static const Color primary = Color(0xFF3D99F5);
  static const Color primaryLight = Color(0xFFC2B2E0);
  static const Color secondary = Color(0xFF0064F7);
  static const Color tertiary = Color(0xFFFDD700);
  static const Color yellow700 = Color(0xFF988200);
  static const Color yellow50 = Color(0xFFFFFBE6);

  static const Color white = Colors.white;
  static const Color black = Colors.black87;
  static const Color blackest = Colors.black;

  static const Color success = Color(0xFF15803D);
  static const Color teal = Color(0xFF008080);

  static const Color green100 = Color(0XFFD1FAE5);
  static const Color green600 = Color(0XFF059669);

  static const Color globalPrimaryColor = primary;
  static const Color globalShoppingCartColor = Color(0xFF7B61FF);
  static const Color globalShoppingCartBadgeColor = Color(0xFFEF4444);
  static const Color globalBackgroundColor = Color(0xFFEDF4FF);
  static const Color globalBackgroundColor2 = Color(0xFFF4F9FF);
  static const Color globalSecondaryColor = Color(0xFFFFFFFF);
  static const Color globalTertiaryColor = Color(0xFFE5E5E5);
  static const Color globalTextColorMain = Color(0xFF001330);
  static const Color globalTextColorSub = Color(0xFF001330);
  static const Color globalTextColorHeading1 = Color(0xFF000A1A);
  static const Color globalTextColorHeading2 = Color(0xFF5C6572);
  static const Color globalTextColorHeading3 = Color(0xFF172D4F);
  static const Color globalTextColorHeading4 = Color(0xFF597091);
  static const Color globalTextColorHeading5 = Color(0xFF111827);
  static const Color globalSeparatorColor = Color(0xFF9BAABE);
  static const Color globalVerifiedBackground = Color(0xFFCDF8C9);
  static const Color globalVerifiedForeground = Color(0xFF00BC28);
  static const Color globalUnverifiedBackground = Color(0xFFF9D1D3);
  static const Color globalUnverifiedForeground = Color(0xFFE31B27);
  static const Color globalInactiveColor = Color(0xFF9CA3AF);
  static const Color globalBorderColor = Color(0xFF9BAABE);
  static const Color globalExitButtonColor = Color(0xFF292D32);
  static const Color globalOrange = Color(0xFFEA580C);
  static const Color globalSearchBackground = Color(0xFFF9FAFB);
  static const Color globalCloseIconColor = Color(0xFF374151);
  static const Color globalInactivePriceColor = Color(0xFF6B7280);
  static const Color globalTextInputBorder = Color(0xFFD1D5DB);
  static const Color globalTileColor = Color(0xFF111827);
  static const Color profileIconColor = Color(0xFF7689A3);

  ThemeData get theme => ThemeData(
      //backgroundColor: Colors.white,
      disabledColor: gray400,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: primary,
        onPrimary: primary,
        secondary: secondary,
        onSecondary: secondary,
        tertiary: tertiary,
        error: red600,
        onError: red600,
        //background: Color(0xFFF9F6FE),
        background: white,
        onBackground: white,
        surface: white,
        onSurface: white,
      ),
      primaryColor: primary,
      dividerTheme: const DividerThemeData(color: globalSeparatorColor),
      scaffoldBackgroundColor: Colors.white,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: globalPrimaryColor),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(10)),
            side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: globalPrimaryColor)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(
                fontFamily: 'nunito',
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: globalSecondaryColor,
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return globalInactiveColor;
                }
                return globalPrimaryColor;
              },
            )),
      ),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          fillColor: Colors.white,
          filled: true,
          iconColor: globalBorderColor,
          hintStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: globalTextColorHeading4,
            fontFamily: '/nunito',
          ),
          border: OutlineInputBorder(borderSide: const BorderSide(color: gray300), borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: gray300), borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: gray300), borderRadius: BorderRadius.circular(8)),
          errorBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.red), borderRadius: BorderRadius.circular(8)),
          disabledBorder: InputBorder.none),
      radioTheme: RadioThemeData(
        visualDensity: VisualDensity.compact,
        fillColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return globalPrimaryColor;
            }
            return globalInactiveColor;
          },
        ),
      ));


}
