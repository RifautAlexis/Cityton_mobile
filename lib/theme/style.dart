import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primarySwatch: MaterialColor(4293023522, {
    50: Color(0xfffceee8),
    100: Color(0xfff9ddd2),
    200: Color(0xfff3baa5),
    300: Color(0xffed9878),
    400: Color(0xffe7764b),
    500: Color(0xffe1541e),
    600: Color(0xffb44318),
    700: Color(0xff873212),
    800: Color(0xff5a210c),
    900: Color(0xff2d1106)
  }),
  brightness: Brightness.dark,
  primaryColor: Color(0xffe25722),
  primaryColorBrightness: Brightness.dark,
  primaryColorLight: Color(0xffffffff),
  primaryColorDark: Color(0xff000000),
  accentColor: Color(0xffea805f),
  accentColorBrightness: Brightness.light,
  canvasColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xff303030),
  bottomAppBarColor: Color(0xff424242),
  cardColor: Color(0xffec8859),
  dividerColor: Colors.black,
  highlightColor: Color(0x40cccccc),
  splashColor: Color(0x40cccccc),
  selectedRowColor: Color(0xfff5f5f5),
  unselectedWidgetColor: Color(0xb3ffffff),
  disabledColor: Color(0x4dffffff),
  buttonColor: Color(0xffff6940),
  toggleableActiveColor: Color(0xffff9780),
  secondaryHeaderColor: Color(0xff999999),
  textSelectionColor: Color(0xffffffff),
  cursorColor: Color(0xff4285f4),
  textSelectionHandleColor: Color(0xffffffff),
  backgroundColor: Color(0xffffffff),
  dialogBackgroundColor: Color(0xffffffff),
  indicatorColor: Color(0xfff58c7a),
  hintColor: Color(0x80ffffff),
  errorColor: Color(0xffd32f2f),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88.0,
    height: 36.0,
    padding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0.0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: true,
    buttonColor: Color(0xffff6940),
    disabledColor: Color(0x4dffffff),
    highlightColor: Color(0x29ffffff),
    splashColor: Color(0x1fffffff),
    colorScheme: ColorScheme(
      primary: Color(0xffec5722),
      primaryVariant: Color(0xff000000),
      secondary: Color(0xffce5722),
      secondaryVariant: Color(0xff00bfa5),
      surface: Color(0xff424242),
      background: Color(0xff616161),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      onSurface: Color(0xffffffff),
      onBackground: Color(0xffffffff),
      onError: Color(0xffd32f2f),
      brightness: Brightness.dark,
    ),
  ),
  textTheme: TextTheme(
    display4: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display3: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display2: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    display1: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline: TextStyle(
      color: Color(0xffffffff),
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    title: TextStyle(
      color: Color(0xffffffff),
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    subhead: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body2: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body1: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
    ),
    subtitle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    overline: TextStyle(
      color: Color(0xffffffff),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: TextTheme(
    display4: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display3: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display2: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    display1: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline: TextStyle(
      color: Color(0xffffffff),
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    title: TextStyle(
      color: Color(0xffffffff),
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    subhead: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body2: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body1: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
    ),
    subtitle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    overline: TextStyle(
      color: Color(0xffffffff),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  accentTextTheme: TextTheme(
    display4: TextStyle(
      color: Color(0x8a000000),
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display3: TextStyle(
      color: Color(0x8a000000),
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display2: TextStyle(
      color: Color(0x8a000000),
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    display1: TextStyle(
      color: Color(0x8a000000),
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline: TextStyle(
      color: Color(0xdd000000),
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    title: TextStyle(
      color: Color(0xdd000000),
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    subhead: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body2: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body1: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: TextStyle(
      color: Color(0x8a000000),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
    ),
    subtitle: TextStyle(
      color: Color(0xff000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    overline: TextStyle(
      color: Color(0xff000000),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0x80ffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xffd32f2f),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    hasFloatingPlaceholder: true,
    isDense: true,
    contentPadding:
        EdgeInsets.only(top: 8.0, bottom: 8.0, left: 0.0, right: 0.0),
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: Color(0x00000000),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffd32f2f),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffd32f2f),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
  iconTheme: IconThemeData(
    color: Color(0xffffffff),
    opacity: 1.0,
    size: 24.0,
  ),
  primaryIconTheme: IconThemeData(
    color: Color(0xffffffff),
    opacity: 1.0,
    size: 24.0,
  ),
  accentIconTheme: IconThemeData(
    color: Color(0xffffffff),
    opacity: 1.0,
    size: 24.0,
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: Color(0xff212121),
    inactiveTrackColor: Color(0x3d212121),
    disabledActiveTrackColor: Color(0x52000000),
    disabledInactiveTrackColor: Color(0x1f000000),
    activeTickMarkColor: Color(0x8a9e9e9e),
    inactiveTickMarkColor: Color(0x8a212121),
    disabledActiveTickMarkColor: Color(0x1f9e9e9e),
    disabledInactiveTickMarkColor: Color(0x1f000000),
    thumbColor: Color(0xff212121),
    disabledThumbColor: Color(0x52000000),
    thumbShape: RoundSliderThumbShape(),
    overlayColor: Color(0x29212121),
    valueIndicatorColor: Color(0xff212121),
    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
    showValueIndicator: ShowValueIndicator.onlyForDiscrete,
    valueIndicatorTextStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.label,
    labelColor: Color(0xffffffff),
    unselectedLabelColor: Color(0xb2ffffff),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Color(0xffff7349),
    brightness: Brightness.dark,
    deleteIconColor: Color(0xdeffffff),
    disabledColor: Color(0xffffb27f),
    labelPadding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 8.0, right: 8.0),
    labelStyle: TextStyle(
      color: Color(0xdeffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
    secondaryLabelStyle: TextStyle(
      color: Color(0xffff8a22),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0xff6200ee),
    selectedColor: Color(0xffff8a22),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0.0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: DialogTheme(
      shape: StadiumBorder(
          side: BorderSide(
    color: Color(0xff000000),
    width: 0.0,
    style: BorderStyle.none,
  ))),
);
