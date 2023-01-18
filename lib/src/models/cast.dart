class CarouselImage {
  String? image;

// added '?'

  CarouselImage({this.image});
  // can also add 'required' keyword
}

class Movie {
  static List genresList() {
    return List.generate(5, (index) => 'Category${index + 1}');
  }

  static List<CarouselImage> genresListCarousel() {
    return List<CarouselImage>.generate(5, (index) => CarouselImage(image: 'image$index'));
  }
}
