//import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/properties/event.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendrier extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Calendrier();
  }
}

class _Calendrier extends State<Calendrier> {
  String calendrierType = "Semaine";
  bool planning = true;
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
        actions: [
          PopupMenuButton(
            onSelected: (e) {
              setState(() {
                if (e == 0) {
                  planning = true;
                } else {
                  planning = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Plan de la semaine",
                      //style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                value: 0,
              ),
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Plan du mois",
                      //style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                value: 1,
              ),
            ],
          ),
          /*  
          SizedBox(
            height: 50,
            width: 50,
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: DropdownButton<String>(
                icon: Icon(Icons.calendar_month),
                isExpanded: true,
                items: const [
                  DropdownMenuItem<String>(
                    child: Text("Vue de la semaine"),
                    value: "semaine",
                  ),
                  DropdownMenuItem<String>(
                    child: Text("Vue de la semaine"),
                    value: "semaine",
                  ),
                ],
                onChanged: (c) {
                  //
                },
              ),
            ),
          )
          */
        ],
      ),
      body: planning
          ? SfCalendar(
              view: CalendarView.week,
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
              dataSource: MeetingDataSource(
                getAppointment(),
              ),
            )
          : SfCalendar(
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
              /*
        dataSource: MeetingDataSource(
          getAppointment(),
        ),
        */
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
