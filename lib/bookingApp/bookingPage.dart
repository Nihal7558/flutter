import 'package:flutter/material.dart';
import 'package:homepage/bookingApp/confirmationPage.dart';

class Bookingpage extends StatefulWidget {
  const Bookingpage({super.key});

  @override
  State<Bookingpage> createState() => _BookingpageState();
}

class _BookingpageState extends State<Bookingpage> {
  DateTime? setDate;
  TimeOfDay? setTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 179, 128, 245),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Text(
                setDate != null
                    ? "${setDate!.day}-${setDate!.month}-${setDate!.year}"
                    : "change date",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: () async {
                  final DateTime? pickDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030),
                      currentDate: DateTime.now());
                  if (pickDate != null && pickDate != setDate) {
                    setState(() {
                      setDate = pickDate;
                    });
                  }
                },
                child: Text("change Date")),
            SizedBox(
              height: 120,
            ),
            Text(
                setTime != null
                    ? "${setTime!.hour}:${setTime!.minute}"
                    : "change time",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: () async {
                  final TimeOfDay? pickTime = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());

                  if (pickTime != null) {
                    setState(() {
                      setTime = pickTime;
                    });
                  }
                },
                child: Text("change Time")),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Confirmationpage()));
                },
                child: Text(
                  "confirm booking",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
