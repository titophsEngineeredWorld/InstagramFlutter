import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  String _imageUrl;
  double _size;
  bool _isStory;
  bool _isWatched;

  CircleImage(this._imageUrl, this._size, this._isStory, this._isWatched);

  @override
  Widget build(BuildContext context) {
    if (_isStory) {
      if (_isWatched) {
        return Center(
          child: Container(
            width: _size,
            height: _size,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[900]),
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(_imageUrl),
              ),
            ),
          ),
        );
      } else {
        return Center(
          child: Container(
            width: _size,
            height: _size,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pinkAccent, width: 2.0),
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(_imageUrl),
              ),
            ),
          ),
        );
      }
    } else {
      return Center(
        child: Container(
          width: _size,
          height: _size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(_imageUrl),
            ),
          ),
        ),
      );
    }
  }
}
