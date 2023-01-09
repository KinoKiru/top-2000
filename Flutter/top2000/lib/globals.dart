import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

bool isDarkMode =
    SchedulerBinding.instance.window.platformBrightness == Brightness.dark;
