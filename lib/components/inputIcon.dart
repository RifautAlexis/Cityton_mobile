import 'package:flutter/material.dart';

class InputIcon extends StatefulWidget {
  final String labelText;
  final List<IconAction> iconsAction;
  final String placeholder;
  final TextEditingController customController;

  InputIcon(
      {@required this.iconsAction,
      this.labelText,
      this.placeholder,
      this.customController});

  @override
  InputIconState createState() => InputIconState();
}

class InputIconState extends State<InputIcon> {
  TextEditingController inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.customController != null)
      inputController = widget.customController;

    inputController.text = widget.placeholder;

    return Row(children: <Widget>[
      Flexible(
          child: TextField(
              controller: inputController,
              decoration: InputDecoration(labelText: widget.labelText))),
      Row(children: <Widget>[..._buildIcons()])
    ]);
  }

  List<Widget> _buildIcons() {
    List<Widget> widgets = List<Widget>();

    if (widget.iconsAction != null) {
      widget.iconsAction
          .forEach((IconAction iconAction) => widgets.add(IconButton(
              icon: iconAction.icon,
              onPressed: () {
                iconAction.action(inputController.text);
              })));
    }

    return widgets;
  }
}

class IconAction {
  final Icon icon;
  final Function(String) action;

  IconAction({@required this.icon, @required this.action});
}
