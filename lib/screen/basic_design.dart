import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Image(
            image: AssetImage('assets/landscape.jpg'),
          ),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Id exercitation ad ea anim qui adipisicing officia cupidatat enim. Nulla dolor minim reprehenderit incididunt eiusmod ut non cillum aute culpa culpa. Nostrud ipsum elit quis pariatur aliquip est proident ullamco ut excepteur et Lorem officia. Et ullamco enim anim esse deserunt aute ad sint incididunt esse do et.',
            ),
          )
        ]),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ButtonIcon(
            icon: Icons.call,
            text: "CALL",
          ),
          ButtonIcon(
            icon: Icons.map_sharp,
            text: "ROUTE",
          ),
          ButtonIcon(
            icon: Icons.share,
            text: "SHARE",
          )
        ],
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const ButtonIcon({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deschien Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'KanderStreg, Swittzerland',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}
