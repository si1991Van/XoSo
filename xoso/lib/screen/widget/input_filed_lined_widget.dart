import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xoso/screen/style/style.dart';

class TitleWithNormalInput extends StatefulWidget {
  final String title, hintText, contentDialog, errorText;
  final bool isShowDialog, isRequired, haveTitle, obscureText, haveBorder;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final Function onChangedCustom, onToggleCustom;

  TitleWithNormalInput(
      this.title,
      this.hintText,
      this.contentDialog,
      this.errorText,
      this.isShowDialog,
      this.isRequired,
      this.haveTitle,
      this.obscureText,
      this.haveBorder,
      this.textInputType,
      this.textEditingController,
      this.onChangedCustom,
      this.onToggleCustom);

  @override
  _TitleWithNormalInputState createState() => _TitleWithNormalInputState();
}

class _TitleWithNormalInputState extends State<TitleWithNormalInput> {
  bool showRequire = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Stack(
            children: [
              TextField(
                obscureText: widget.obscureText ?? false,
                controller: widget.textEditingController,
                keyboardType: widget.textInputType ?? TextInputType.text,
                decoration: InputDecoration(
                    isDense: true,
                    errorText: widget.errorText,

                    suffixIcon:
                    widget.obscureText == null
                        ? null
                        : InkWell(
                        onTap: () {
                          widget.onToggleCustom();
                        },
                        child: Icon(widget.obscureText
                            ? Icons.remove_red_eye_rounded
                            : Icons.visibility_off,color: Colors.grey.shade800)),
                    labelText: widget.hintText,
                    hintStyle: text_label_in_register,
                    labelStyle: TextStyle(color: Colors.grey.shade800),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: colorPrimaryLogin, width: 0.5,)),
                    border: widget.haveBorder == null || widget.haveBorder == false
                        ? null
                        : OutlineInputBorder()),
                onChanged: (content) {
                  setState(() {
                    if(widget.textEditingController.text.trim().isNotEmpty) {
                      showRequire = false;
                    } else {
                      showRequire = true;
                    }
                  });
                  if (widget.textEditingController.text.trim().isNotEmpty &&
                      widget.textEditingController.text.length == 1) {
                    widget.onChangedCustom();
                  }
                },
              ),
              widget.isRequired != null && widget.isRequired ?showRequire?Positioned(
                  right: 0,
                  top: 15,
                  child: Text("(*)", style: TextStyle(color: Colors.red, fontSize: 16),)):Container():Container()
            ],
          ),
        ),
      ],
    );
  }
}

