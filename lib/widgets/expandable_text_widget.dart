import 'package:burger/utils/dimensions.dart';
import 'package:burger/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeigth / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      setState(() {
        firstHalf = widget.text.substring(0, textHeight.toInt());
        secondHalf =
            widget.text.substring(textHeight.toInt() + 1, widget.text.length);
      });
    } else {
      setState(() {
        firstHalf = widget.text;
        secondHalf = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          child: secondHalf.isEmpty
              ? SmallText(text: firstHalf, size: 16,)
              : Column(
                  children: [
                    SmallText(
                        text:
                            hiddenText ? "$firstHalf..." : firstHalf + secondHalf, size: 16, height: 1.8,),

                    SizedBox(height: Dimensions.sizedBoxHeigth10,),        
                    InkWell(
                      onTap: () {
                        setState(() {
                          hiddenText = !hiddenText;
                        });
                      },
                      child: Row(
                        children: [
                          SmallText(text: "Show More"),
                          Icon(hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up)
                        ],
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
