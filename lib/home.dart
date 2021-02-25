import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color fabColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mission 1",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[Colors.amber[100], Colors.white],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Image.network(
                      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gettyimages-183354852-1558479028.jpg'),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                                'https://digitalcontent.api.tesco.com/v2/media/ghs/f6734d64-c93d-45a3-ba91-1cd64717673f/snapshotimagehandler_1776212331.jpeg?h=540&w=540'),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                                'https://digitalcontent.api.tesco.com/v2/media/ghs/f6734d64-c93d-45a3-ba91-1cd64717673f/snapshotimagehandler_1776212331.jpeg?h=540&w=540'),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                                'https://digitalcontent.api.tesco.com/v2/media/ghs/f6734d64-c93d-45a3-ba91-1cd64717673f/snapshotimagehandler_1776212331.jpeg?h=540&w=540'),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                                'https://digitalcontent.api.tesco.com/v2/media/ghs/f6734d64-c93d-45a3-ba91-1cd64717673f/snapshotimagehandler_1776212331.jpeg?h=540&w=540'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  'What is Honey?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: ListView(
                      children: <Widget>[
                        Text(
                          'Honey is a sweet, viscous food substance made by honey bees and some related insects. Bees produce honey from the sugary secretions of plants (floral nectar) or from secretions of other insects (such as honeydew), by regurgitation, enzymatic activity, and water evaporation. Bees store honey in wax structures called honeycombs. The variety of honey produced by honey bees (the genus Apis) is the best-known, due to its worldwide commercial production and human consumption. Honey is collected from wild bee colonies, or from hives of domesticated bees, a practice known as beekeeping or apiculture.',
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Honey gets its sweetness from the monosaccharides fructose and glucose, and has about the same relative sweetness as sucrose (table sugar). Fifteen millilitres (1 US tablespoon) of honey provides around 190 kilojoules (46 kilocalories) of food energy.[6] It has attractive chemical properties for baking and a distinctive flavor when used as a sweetener. Most microorganisms do not grow in honey, so sealed honey does not spoil, even after thousands of years.',
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Honey use and production have a long and varied history as an ancient activity. Several cave paintings in Cuevas de la Araña in Spain depict humans foraging for honey at least 8,000 years ago.',
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  child: Icon(Icons.favorite),
                  backgroundColor: Colors.white,
                  foregroundColor: fabColor,
                  onPressed: () {
                    setState(() {
                      if (fabColor == Colors.grey) {
                        fabColor = Colors.amber;
                      } else {
                        fabColor = Colors.grey;
                      }
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
