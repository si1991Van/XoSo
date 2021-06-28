import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleWithDropdown extends StatelessWidget {
  final String title, contentDialog, hint, value, errorText;
  final List<String> itemsDropdown;
  final bool isShowDialog, isRequired, haveTitle, haveBorder;
  final Function onChangedCustom;

  TitleWithDropdown(
      this.title,
      this.contentDialog,
      this.hint,
      this.value,
      this.errorText,
      this.itemsDropdown,
      this.isShowDialog,
      this.isRequired,
      this.haveTitle,
      this.haveBorder,
      this.onChangedCustom);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputDecorator(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(right: 10,left: 10, top: 10),
                    border: OutlineInputBorder(),
                    labelText: hint ?? "",
                    labelStyle: TextStyle(color: Colors.grey.shade800)
                ),
                child: DropdownButton<String>(
                  // hint: Text(
                  //  hint ?? "", style: TextStyle(color: Colors.grey.shade800),
                  // ),
                  value: value,
                  isExpanded: true,
                  underline: Container(),
                  items: itemsDropdown.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {
                    FocusScope.of(context).requestFocus(new FocusNode());
                    onChangedCustom(_);
                  },
                ),
              ),
              // ignore: unnecessary_null_comparison
              errorText == null
                  ? Container()
                  : Text(
                errorText,
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ),
      ],
    );
  }
}


