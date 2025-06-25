import 'package:flutter/material.dart';
import 'package:myapp/models/person.dart';
import 'package:google_fonts/google_fonts.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: data[index].job.color
          ),
          margin: EdgeInsets.symmetric(horizontal: 2,vertical: 5),
          padding: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[index].name,
                    style: GoogleFonts.kanit(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      )
                    ),
                  ),
                  Text(
                    "อายุ ${data[index].age} ปี , อาชีพ : ${data[index].job.title}",
                    style: GoogleFonts.kanit(
                      textStyle: TextStyle(
                        fontSize: 20,
                        color:Colors.white,
                      )
                    ),
                  ),
                ],
              ),
              Image.asset(
                data[index].job.image,
                width: 75,
                height: 75,
              ),
            ],
          )
        );
      },
    );
  }
}
