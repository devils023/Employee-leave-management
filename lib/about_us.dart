import 'package:flutter/material.dart';

import 'navbar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  'About Us',
                  style: TextStyle(color: Colors.black, fontSize: 40),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  """Upaya City Cargo is an online logistics company operating in various cities in Nepal. We are an innovative tech platform that delivers quality logistics solutions with a commitment to transform the way things move in Nepal.

Our On-Demand service connects individuals and businesses with our pickup driver-partners as well as two wheeler rider-partners and integrates technology to ensure quick and hassle-free delivery of small as well as bulk goods. We add value to your delivery needs by providing our service at the lowest prices as compared to existing market rates, quickest delivery given our large network of driver & rider partners, and in the most convenient ways by offering mobile/tracking technology and Tax invoice.

We also provide customized logistics solutions to the corporates/business houses, ecommerce/socio-commerce companies and SMEs based on their needs. We are expanding across all the major cities in Nepal and also building a complete End-to-End logistics solution that includes sorting & bundling services, same day-next day delivery, cold chain solution, return management, fulfillment facilities and a complete tech-enabled transport solution.

Our management team consists of a group of professionals - each of whom have almost two decades of experience in sectors ranging from banking, management, telecommunication, technology, consulting/advisory, finance, research, etc. The management team guides a young and enthusiastic operation team who want to set a mark for themselves in Nepal’s startup ecosystem. This blend of experienced management team guiding a young operations team has proven to be a really beneficial & successful model, which is evident through Upaya City Cargo’s performance in this short span of time.

We have a vision to become the logistics backbone of digital Nepal and our 5 core values are commitment to customers & trust, accountability, respect, quality, and innovation.""",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
