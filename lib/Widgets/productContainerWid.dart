import 'package:flutter/material.dart';

class ProductContainerW extends StatefulWidget {
  ProductContainerW({super.key, required this.pimage, });

  Image pimage;
  // ElevatedButton onpressed;

  @override
  State<ProductContainerW> createState() => _ProductContainerWState();
}

String dropdownvalue = 'Select';

// List of items in our dropdown menu
var items = [
  'Select',
  '1 kg',
  '1.5 kg',
  '2 kg',
  '2.5 kg',
  '3 kg',
  '3.5 kg',
  '4 kg',
  '4.5 kg',
  '5 kg',
  '5.5 kg',
  '6 kg',
  '6.5 kg',
  '10 kg',
];

class _ProductContainerWState extends State<ProductContainerW> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      color: Color(0xffA4D0A4).withOpacity(1),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: size.width / 1.03,
        height: size.height * 0.101,
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9).withOpacity(0.4),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                  height: size.height * 0.09,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: widget.pimage),
                ),
              ],
            ),
            SizedBox(width: size.width * 0.04),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tomato",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "தக்காளி",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(width: size.width * 0.04),
            Row(
              children: [
                Container(
                  height: size.height * 0.04,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Center(
                    child: DropdownButton(
                      elevation: 10,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                // SizedBox(
                //   width: size.width * 0.04,
                // ),
                // Container(
                //     height: size.height * 0.03,
                //     width: size.width * 0.17,
                //     color: Colors.amberAccent,
                //     child: widget.onpressed,
                //     ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
