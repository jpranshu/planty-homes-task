import 'package:flutter/material.dart';
import 'package:planty_homes/screens/home/widget/nursery.dart';

class NurseryCard extends StatelessWidget {
  const NurseryCard({Key? key, required this.nurseryInstance})
      : super(key: key);
  final Nursery nurseryInstance;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    TextStyle cardText = TextStyle(
        color: Color.fromARGB(255, 116, 20, 13),
        fontWeight: FontWeight.w800,
        fontSize: size.height * 0.012);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(size.height * 0.02),
        side: BorderSide(
          width: size.width * 0.002,
          color: Colors.green,
        ),
      ),
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              height: size.height * 0.18,
              width: size.width * 0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: AlignmentDirectional.topCenter,
                    image: AssetImage(nurseryInstance.image),
                    fit: BoxFit.fitWidth),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(size.height * 0.02),
                  topRight: Radius.circular(size.height * 0.02),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nurseryInstance.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: size.height * 0.022,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: size.height * 0.007,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.access_alarm_sharp,
                      size: size.width * 0.04,
                      color: const Color.fromARGB(255, 116, 20, 13),
                    ),
                    Text(
                      nurseryInstance.time,
                      style: cardText,
                    ),
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 11, 107, 15),
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                      ),
                      child: Text(
                        nurseryInstance.rating.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.route,
                      size: size.width * 0.04,
                      color: const Color.fromARGB(255, 116, 20, 13),
                    ),
                    Text(
                      nurseryInstance.distance,
                      style: cardText,
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    Text(
                      '₹' + nurseryInstance.price.toString() + '(min.)',
                      textAlign: TextAlign.end,
                      style: cardText,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
