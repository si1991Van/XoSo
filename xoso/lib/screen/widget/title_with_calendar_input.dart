import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xoso/screen/style/style.dart';

class TitleWithCalendarInput extends StatefulWidget {
  final String title, hintText, contentDialog, errorText;
  final bool isShowDialog, isRequired, haveTitle, haveBorder;
  final TextEditingController textDateController;
  final Function onClickChooseDate;


  TitleWithCalendarInput(
      this.title,
      this.hintText,
      this.contentDialog,
      this.errorText,
      this.isShowDialog,
      this.isRequired,
      this.haveTitle,
      this.haveBorder,
      this.textDateController,
      this.onClickChooseDate);

  @override
  _TitleWithCalendarInputState createState() => _TitleWithCalendarInputState();
}

class _TitleWithCalendarInputState extends State<TitleWithCalendarInput> {
  DateTime selectedDate = DateTime.now();
  DateTime now = DateTime.now();

  bool isErrorDate = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      widget.onClickChooseDate(selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: TextField(
            controller: widget.textDateController,
            readOnly: true,
            decoration: InputDecoration(
                isDense: true,
                suffixIcon: Icon(Icons.calendar_today_outlined,
                    color: widget.errorText == null
                        ? Colors.grey.shade600
                        : Colors.red.shade800),
                errorText: widget.errorText,
                labelText: widget.hintText,
                labelStyle: TextStyle(color: Colors.grey.shade800),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorPrimaryLogin, width: 0.5,)),
                border: widget.haveBorder == false
                    ? null
                    : OutlineInputBorder()),
            onTap: () {
              _selectDate(context);
            },
          ),
        )
      ],
    );
  }
}
