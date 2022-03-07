//import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter_contacts/properties/event.dart';

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
            Text("Prog. de la semaine")
          ],
        ),
      ),
      body: WeekView(
        controller: EventController(),
        eventTileBuilder: (d1, l, r, d2, d3) {
          return Text(
            "Truc date time",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
            ),
          );
        },
        timeLineBuilder: (d1) {
          return Container(
            height: 50,
            width: 120,
            alignment: Alignment.center,
            child: Text(
              "${d1.hour}:${d1.minute}",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.teal,
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
            ),
          );
        },
        weekPageHeaderBuilder: (d1, d2) {
          return Container(
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Icon(Icons.library_books),
            height: 50,
            width: 50,
          );
        },
        /**/
        weekDayBuilder: (d1) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              "${d1.day}",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.teal,
          );
        },
        showLiveTimeLineInAllDays: true,
        onEventTap: (events, date) => print(events),
        onDateLongPress: (date) => print(date),
      ),
      /*
      Calendar(
        weekendOpacityEnable: true,
        previous: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300]!,
                    spreadRadius: 1.5,
                    blurRadius: 5,
                    offset: Offset(2.0, 0.0))
              ]),
          child: CircleAvatar(
            radius: 14,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back_ios,
              size: 16,
              color: Colors.orange,
            ),
          ),
        ),
        next: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300]!,
                    spreadRadius: 1.5,
                    blurRadius: 5,
                    offset: Offset(2.0, 0.0))
              ]),
          child: CircleAvatar(
            radius: 14,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.orange,
            ),
          ),
        ),
        space: 20,
        onSelected: print,
        backgroundColor: Colors.white,
        activeColor: Colors.orange,
        textStyleDays:
            TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
        textStyleWeekDay:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        selectedStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      */
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
        },
        child: Icon(Icons.calendar_today),
      ),
    );
  }
}
