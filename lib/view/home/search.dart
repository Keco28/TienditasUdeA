import 'package:flutter/material.dart';
import 'package:tienditas_udea/view/store/storelist.dart';

class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.green, Colors.grey],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36),
          bottomRight: Radius.circular(36),
        ),
      ),
      margin: const EdgeInsets.only(bottom: 15.0 * 2.5),
      child: SizedBox(
        height: size.height * 0.08,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: const Color(0xFF082652).withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => StoreList(),
                          ),);
                        },
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Buscar Tienditas",
                          hintStyle: TextStyle(
                            color: const Color(0xFF254587).withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    const Icon(Icons.search),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}