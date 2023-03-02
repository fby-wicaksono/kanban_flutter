import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

SnackBar generalAppSnackbar({required String message}) {
  return SnackBar(content: Text(message));
}

String formattedDateText(DateTime? dateTime) {
  return dateTime != null ? DateFormat('EEE, MMM d, h:mm a').format(dateTime) : '';
}