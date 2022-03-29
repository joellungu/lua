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
                //
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Cours",
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
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Examens",
                      //style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                value: 1,
              ),
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "T.P",
                      //style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                value: 2,
              ),
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Interrogations",
                      //style: Theme.of(context).textTheme.bodyText1,
                    )
                  ],
                ),
                value: 3,
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
      body: SfCalendar(
        view: CalendarView.week,
        showCurrentTimeIndicator: false,
        onTap: (c) {
          //
          Appointment? a;
          //
          c.appointments!.forEach((e) {
            //
            a = e;
            print(a!.subject);
          });

          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                //backgroundColor: a!.color,
                title: Text(
                  "${a!.subject}",
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                content: RichText(
                  text: TextSpan(
                    text: "Prf. Kilelo\n",
                    children: [
                      //TextSpan(text: "Note: ${a!.notes}"),
                      const TextSpan(text: "Heure: "),
                      WidgetSpan(
                        child: Container(
                          height: 50,
                          //width: 100,
                          child: Text("${a!.startTime}"),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(),
                        ),
                      ),
                      const TextSpan(text: " à "),
                      WidgetSpan(
                        child: Container(
                          height: 50,
                          //width: 100,
                          child: Text("${a!.endTime}"),
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(),
                        ),
                      ),
                      const TextSpan(text: "\n"),
                      const TextSpan(text: "..."),
                    ],
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.check),
                  )
                ],
              );
            },
          );
        },
        dataSource: MeetingDataSource(
          getAppointment(),
        ),
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
      color: Colors.amber,
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

  /*for (int j = 0; j < lelo.month; j++) {
  for (int t = 0; t < 5; t + 2) {
    DateTime deb = DateTime(lelo.year, lelo.month, lelo.day + 1, t + 8, 0, 0);
    DateTime fin = debut5.add(const Duration(hours: 2));
    meeting.add(
      Appointment(
        startTime: deb,
        endTime: fin,
        subject: "Algebre",
        color: Colors.teal,
      ),
    );
  }
  */
  //}

  return meeting;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
