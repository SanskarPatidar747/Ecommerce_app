import 'package:flutter/material.dart';

class PostSlider extends StatefulWidget {
 final List<String> posts;
  const PostSlider(
      {Key? key,
        required this.posts,})
      : super(key: key);

  @override
  State<PostSlider> createState() => _PostSliderState();
}

class _PostSliderState extends State<PostSlider> {
  PageController _pageController = PageController();
  int _currentIndex = 0;


  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: widget.posts.length,
            itemBuilder: (context, index) {
              return Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      width: MediaQuery.of(context).size.width,
                      image: NetworkImage(widget.posts[index]),
                      fit: BoxFit.fill,
                    ))//Text("image")

              );
            },
          ),
        ),
        // Dot indicators
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.posts.length, (index) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 2.0),
                height: 8.0,
                width: _currentIndex == index ? 24.0 : 8.0,
                decoration: BoxDecoration(
                  color: _currentIndex == index ? Colors.blue : Colors.grey,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              );
            })),
        SizedBox(height: 16.0),
      ],
    );
  }
}
