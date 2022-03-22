//import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/properties/event.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class PlanningMois extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlanningMois();
  }
}

class _PlanningMois extends State<PlanningMois> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: Icon(
                Icons.school,
                color: Colors.white,
              ),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Text("Planning")
          ],
        ),
      ),
      body: SfCalendar(
        view: CalendarView.month,
        onTap: (c) {
          //
          print(c.date);
          //
          print(c.appointments!.first);
          //
          print(c.targetElement);
          //
          print(c.resource);
        },
      ),
    );
  }
}

List<Appointment> getAppointment() {
  List<Appointment> meeting = <Appointment>[];
  DateTime lelo = DateTime.now();
  //
  DateTime debut1 = DateTime(lelo.year, lelo.month, lelo.day, 9, 0, 0);
  DateTime fin1 = debut1.add(const Duration(hours: 2));
  //
  DateTime debut2 = DateTime(lelo.year, lelo.month, lelo.day, 11, 0, 0);
  DateTime fin2 = debut2.add(const Duration(hours: 2));
  //
  DateTime debut3 = DateTime(lelo.year, lelo.month, lelo.day, 13, 0, 0);
  DateTime fin3 = debut3.add(const Duration(hours: 1));
  //
  DateTime debut4 = DateTime(lelo.year, lelo.month, lelo.day, 14, 0, 0);
  DateTime fin4 = debut4.add(const Duration(hours: 1));
  //
  DateTime debut5 = DateTime(lelo.year, lelo.month, lelo.day, 15, 0, 0);
  DateTime fin5 = debut5.add(const Duration(hours: 2));
  //

  meeting.add(
    Appointment(
      startTime: debut1,
      endTime: fin1,
      subject: "Algebre",
      color: Colors.teal,
    ),
  );
  //
  meeting.add(
    Appointment(
      startTime: debut2,
      endTime: fin2,
      subject: "Chimie",
      color: Colors.brown,
    ),
  );
  //
  meeting.add(
    Appointment(
      startTime: debut3,
      endTime: fin3,
      subject: "Physique",
      color: Colors.green,
    ),
  );
  //
  meeting.add(
    Appointment(
      startTime: debut4,
      endTime: fin4,
      subject: "Literature",
      color: Colors.red.shade700,
    ),
  );
  //
  meeting.add(
    Appointment(
      startTime: debut5,
      endTime: fin5,
      subject: "Informatique",
      color: Colors.green,
    ),
  );

  return meeting;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
