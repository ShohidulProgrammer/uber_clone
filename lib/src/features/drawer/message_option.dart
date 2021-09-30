import 'package:flutter/material.dart';

class MessageOption extends StatelessWidget {
  const MessageOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 1,
          color: Colors.white70,
        ),
        InkWell(
          onTap: () async => await Navigator.pushNamed(context, '/chats'),
          splashColor: Colors.white,
          child: const ListTile(
            title: Align(
              alignment: Alignment(-1.2, 0),
              child: Text(
                'Messages',
                style: TextStyle(color: Colors.white),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.white70,
            ),
          ),
        ),
        const Divider(
          height: 1,
          color: Colors.white70,
        ),
      ],
    );
  }
}
