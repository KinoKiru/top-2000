import 'package:jiffy/jiffy.dart';
import 'package:flutter/material.dart';
import 'package:top2000/globals.dart';

class DateTimePicker extends StatefulWidget {
  final double width;
  final double height;
  final bool isTime;
  final TextEditingController controller;
  final TimeOfDay? startTime;
  final DateTime? startDate;
  final bool yearpicker;
  String? format;

  DateTimePicker({
    Key? key,
    required this.controller,
    required this.width,
    this.height = 44.0,
    this.isTime = false,
    this.yearpicker = false,
    this.startTime,
    this.startDate,
    this.format,
  }) : super(key: key);

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  late DateTime selectedDate;
  late String _setDate;
  late TimeOfDay selectedTime;
  late int _hour, _minute;
  late String _setTime;

  @override
  void initState() {
    if (widget.isTime) {
      widget.format = widget.format ?? 'hh:mm a';
      selectedTime =
          widget.startTime ?? TimeOfDay.fromDateTime(Jiffy().dateTime);
      _hour = 0;
      _minute = 0;
      _setTime = '';
      widget.controller.text =
          Jiffy(selectedTime).format(widget.format).toString();
    } else {
      widget.format = widget.format ?? 'y';
      selectedDate = widget.startDate ?? Jiffy().dateTime;
      _setDate = Jiffy().format(widget.format).toString();
      widget.controller.text =
          Jiffy(selectedDate).format(widget.format).toString();
    }

    super.initState();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode:
            widget.yearpicker ? DatePickerMode.year : DatePickerMode.day,
        firstDate: DateTime(1970),
        lastDate: DateTime(3000));
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        widget.controller.text =
            Jiffy(selectedDate).format(widget.format).toString();
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour;
        _minute = selectedTime.minute;
        widget.controller.text =
            Jiffy([Jiffy().year, Jiffy().month, Jiffy().day, _hour, _minute])
                .format(widget.format)
                .toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.isTime ? _selectTime(context) : _selectDate(context);
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        alignment: Alignment.center,
        child: TextFormField(
          textAlign: TextAlign.center,
          enabled: false,
          keyboardType: TextInputType.text,
          controller: widget.controller,
          onSaved: (String? val) {
            widget.isTime ? _setTime = val! : _setDate = val!;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            disabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(
                color: isDarkMode ? Colors.white : Colors.black,
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
