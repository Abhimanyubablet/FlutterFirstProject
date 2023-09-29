import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Calendar App'),
      ),
      body: Center(
        child: TableCalendar(
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            // Use this callback to specify which day is currently selected.
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            // Callback when a day is selected.
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          focusedDay: _focusedDay,
          firstDay: DateTime(2023),
          lastDay: DateTime(2024),
        ),
      ),
    );
  }
}

