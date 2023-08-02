import 'package:flutter/material.dart';

class ListPersonWidget extends StatelessWidget {
  const ListPersonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xffcccccc),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff0D1778),
                  borderRadius: BorderRadius.circular(180),
                ),
                child: Center(
                    child: Text(
                  '나',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                )),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('나와의 채팅방'),
                  Text('메시지용 노출되는 자리'),
                ],
              ),
            ],
          ),
          Text('9:04 AM'),
        ],
      ),
    );
  }
}
