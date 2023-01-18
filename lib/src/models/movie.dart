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
    return List<CarouselImage>.generate(
        5, (index) => CarouselImage(image: 'image$index'));
  }
}

class TicketStates {
  static const int idle = 0;
  static const int active = 1;
  static const int busy = 2;
}

final List<String> days = ['SAT', 'SUN', 'MON', 'TUE'];
final List<String> times = ['12:20', '14:30', '16:40', '19:00'];

final List<int> dateStates = [
  TicketStates.idle,
  TicketStates.idle,
  TicketStates.busy,
  TicketStates.idle,
];

final List<int> timeStates_1 = [
  TicketStates.idle,
  TicketStates.idle,
  TicketStates.busy,
  TicketStates.idle,
];

final List<String> seats = ['A', 'B', 'C', 'D', 'E', 'F'];

final List<int> seatNumbers = [1, 2, 3, 4, 5, 6];
