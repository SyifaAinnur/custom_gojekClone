import 'package:flutter/material.dart';

class Homes extends StatefulWidget {
  @override
  _HomesState createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 25,
          child: Image.asset('images/logo.png'),
        ),
        actions: <Widget>[
          Image.asset(
            'images/diskon.png',
            scale: 3,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 1.0,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'images/gopay.png',
                      scale: 3,
                    ),
                    Text(
                      'Rp.37.000',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Container(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    HeaderItem(
                      images: 'images/pay.png',
                      title: 'Pay',
                      textcolor: Colors.white,
                    ),
                    HeaderItem(
                      images: 'images/promo.png',
                      title: 'Promo',
                      textcolor: Colors.white,
                    ),
                    HeaderItem(
                      images: 'images/topup.png',
                      title: 'Top Up',
                      textcolor: Colors.white,
                    ),
                    HeaderItem(
                      images: 'images/more.png',
                      title: 'More',
                      textcolor: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: HeaderItem(
                    images: 'images/goride.png',
                    title: 'GoRide',
                    textcolor: Colors.grey[600]!,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HeaderItem(
                    images: 'images/gocar.png',
                    title: 'GoCar',
                    textcolor: Colors.grey[600]!,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HeaderItem(
                    images: 'images/gofood.png',
                    title: 'GoFood',
                    textcolor: Colors.grey[600]!,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HeaderItem(
                    images: 'images/gobluebird.png',
                    title: 'GoBlueBird',
                    textcolor: Colors.grey[600]!,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: HeaderItem(
                    images: 'images/gosend.png',
                    title: 'GoSend',
                    textcolor: Colors.grey[600]!,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HeaderItem(
                    images: 'images/godeals.png',
                    title: 'GoDeals',
                    textcolor: Colors.grey[600]!,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HeaderItem(
                    images: 'images/godeals.png',
                    title: 'GoDeals',
                    textcolor: Colors.grey[600]!,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: HeaderItem(
                    images: 'images/gopulsa.png',
                    title: 'GoPulsa',
                    textcolor: Colors.grey[600]!,
                  ),
                ),
                // InkWell(
                //   onTap: () {},
                //   child: HeaderItem(
                //     images: 'images/more-1.png',
                //     title: 'MORE',
                //     textcolor: Colors.grey[600]!,
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pilihan Terlaris",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 16),
                        ),
                        Text(
                          "Lihat Semua",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 13, color: Color(0xFF00B34C)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 142,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ImageScroll(
                          imgpath: "images/MieAyam.jpg",
                          text: "Mie Ayam",
                        ),
                        ImageScroll(
                          imgpath: "images/NasiGoreng.jpg",
                          text: "Nasi Goreng",
                        ),
                        ImageScroll(
                          imgpath: "images/Kwetiausapi.jpg",
                          text: "Kwetiau Goreng",
                        ),
                        ImageScroll(
                          imgpath: "images/Bihun.jpg",
                          text: "Bihun Goreng",
                        ),
                        ImageScroll(
                          imgpath: "images/Pempek.jpg",
                          text: "Pempek Palembang",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(left: 18),
              child: Text("Promo Hari ini",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              height: 270,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 3))
                  ]),
              child: Stack(
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('images/banner01.png'),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 5),
                              child: Text('Kebagian promonya, dapat hematnya',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 20),
                              child: Text(
                                  'Our new logo symbolizes Gojek’s transformation from being a ride-hailing service '),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5,),
              height: 270,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 3))
                  ]),
              child: Stack(
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('images/bannertopup.png'),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 5),
                              child: Text('Kebagian promonya, dapat hematnya',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 20),
                              child: Text(
                                  'Our new logo symbolizes Gojek’s transformation from being a ride-hailing service '),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5, bottom: 20),
              height: 290,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 3))
                  ]),
              child: Stack(
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Image.asset('images/banner02.png'),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 5),
                              child: Text('Kebagian promonya, dapat hematnya',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 20),
                              child: Text(
                                  'Our new logo symbolizes Gojek’s transformation from being a ride-hailing service '),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageScroll extends StatelessWidget {
  final String imgpath;
  final text;
  const ImageScroll({
    required this.imgpath,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Column(
        children: <Widget>[
          Container(
            width: 123,
            height: 123,
            decoration: new BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgpath), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(height: 6),
          Text(
            text,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 11),
          )
        ],
      ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  const HeaderItem(
      {required this.images, required this.title, required this.textcolor});

  final String images;
  final String title;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: <Widget>[
          Image.asset(
            images,
            scale: 3,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(color: textcolor),
          )
        ],
      ),
    );
  }
}
