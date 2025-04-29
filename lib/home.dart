import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _PlaneHomeState();
}

class _PlaneHomeState extends State<Home> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isChecked ? Colors.black87 : Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isChecked = !_isChecked;
              });
            },
            icon: Icon(
              Icons.start_rounded,
              color: _isChecked ? Colors.blueAccent : Colors.black87,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 500,
                height: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxLxk_Xm4MUI8KHrOR2rLxvRcxgDJirxE14Q&s",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              secondChild: Container(
                width: 500,
                height: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Citystreet.svg/1552px-Citystreet.svg.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              crossFadeState:
                  _isChecked
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
              duration: Duration(seconds: 1),
            ),
            Positioned(
              top: 150,
              left: 100,
              child: Row(
                children: [
                  AnimatedPadding(
                    padding:
                        _isChecked
                            ? EdgeInsets.only(left: 10, right: 200)
                            : EdgeInsets.only(left: 200, right: 10),
                    duration: Duration(seconds: 1),
                    child:
                        _isChecked
                            ? SizedBox(
                              height: 150,
                              child: ElevatedButton(onPressed: (){}, child: Image.network(
                              "https://avatars.mds.yandex.net/i?id=9c8ea48a3b57f32da78d96580699d3ef-5434871-images-thumbs&ref=rim&n=33&w=480&h=316",
                              width: 100,
                            )),
                            )
                            : SizedBox(
                              height: 150,
                              child: ElevatedButton(onPressed: (){}, child: Image.network(
                              "https://avatars.mds.yandex.net/i?id=dcaddc61c651ad910937e95c5e223632_l-5284012-images-thumbs&n=13",
                              width: 100,
                            ),),
                            )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 // AnimatedAlign(
                  //   alignment:
                  //       _isChecked ? Alignment.topLeft : Alignment.topRight,
                  //   duration: Duration(seconds: 1),
                  //   child: Image.network(
                  //     "https://www.pinclipart.com/picdir/big/367-3675233_car-red-vehicle-car-top-view-clipart-png.png",
                  //     width: 100,
                  //   ),
                  // ),


              //     AnimatedAlign(
              //   alignment: _isChecked ? Alignment.topRight : Alignment.topLeft,
              //   duration: Duration(seconds: 1),
              //   child: Image.network(
              //     "https://www.pinclipart.com/picdir/middle/557-5575218_coloring-pages-printable-airplane-png-download-aeroplane-colouring.png",
              //     width: 100,
              //   ),
              // ),