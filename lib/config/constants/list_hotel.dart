import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/constants/hotel.dart';

class ListHotel {
  List<Hotel> hotels = [
    Hotel(
      id: 0,
      image:
          "https://images.adsttc.com/media/images/6890/cbcc/cb12/3860/6270/abbe/slideshow/zha-sierra-blanca_4.jpg",
      title: "Hainan Blue Bay Westin Resort Hotel / gad",
      hotelFeatures: "12 guests .5 bedrooms 10beds 5 baths",
      description:
          "Completed in 2014 in Lingshui, China. Images by Yao Li, Zhao Qiang, Ian F. Gibb. From the architect. The project is located at the most east end of the Clear Water Bay, Lingshui County of Hainan. Blue sky and sea, white sand...",
      icon: [
        {"WIFI": Icons.wifi},
        {"Kitchen": Icons.soup_kitchen_sharp},
        {"Pool": Icons.pool},
        {"Parking": Icons.local_parking_outlined},
      ],
      address: "China",
      price: 500,
    ),
    Hotel(
      id: 1,
      image:
          "https://images.adsttc.com/media/images/6614/9c94/dec8/f057/d22a/6023/slideshow/swissotel-resort-and-residences-cesme-dilekci-architects_13.jpg",
      title: "Swissotel Resort and Residences Çeşme / Dilekci Architects",
      hotelFeatures: "12 guests .5 bedrooms 10beds 5 baths",
      description:
          "Text description provided by the architects. Swissotel Resort and Residences Çeşme is a transformation project that upcycled the existing 11-storey hotel, which was originally constructed in 1997. Instead of demolishing the building and starting anew, Dilekci Architects aimed to extend the building’s lifespan by retaining as much of the existing structure as possible, thereby minimizing its carbon footprint. By adding a new residential function to the hotel, the project serves as an example of adaptive reuse in architecture, transforming the building not only in the environmental context but also in the urban and social.",
      icon: [
        {"WIFI": Icons.wifi},
        {"Kitchen": Icons.soup_kitchen_sharp},
        {"Pool": Icons.pool},
        {"Parking": Icons.local_parking_outlined},
      ],
      address: "China",
      price: 800,
    ),
    Hotel(
      id: 2,
      image:
          "https://images.adsttc.com/media/images/65eb/71a0/855b/f264/9e6f/8923/newsletter/the-cliff-hotel-jeju-soltozibin-architects_1.jpg",
      title: "Seogwipo, South Korea",
      hotelFeatures: "12 guests .5 bedrooms 10beds 5 baths",
      description:
          "arrative Landscape - The Jeju Landscape Plan is a hyponymy of the Narrative Landscape, which is a continuous combination of the environment, facilities, and human activities. While respecting the Jeju landscape plan, the hotel is placed towards Yeryecheon and its scenery instead of leaving the axis from Hanlla Mountain to the ocean as an empty space. Yeryecheon is a stream that begins at Hanlla Mountain, but it hasn’t been recognized for a long time. As you approach closer to Yeryecheon, the vast valley forms breathtaking scenery that overwhelms visitors. In the outer stream next to the hotel, there is a waterfall named 'Eongtto Falls' that only falls loudly after rainfall. Yeryecheon's scenery expands more at higher levels of the hotel. As the view continues from the gates of the hotel to Hanlla Mountain, the hotel seems as if it is floating above an ocean of green. By connecting nature and people, the hotel creates a unitary scenery.",
      icon: [
        {"WIFI": Icons.wifi},
        {"Kitchen": Icons.soup_kitchen_sharp},
        {"Pool": Icons.pool},
        {"Parking": Icons.local_parking_outlined},
      ],
      address: "542 Yeraehaean-ro, Seogwipo, Jeju-do, South Korea",
      price: 400,
    ),
    Hotel(
      id: 3,
      image:
          "https://images.adsttc.com/media/images/6614/9c30/ce8b/1231/d49a/3b08/slideshow/swissotel-resort-and-residences-cesme-dilekci-architects_11.jpg",
      title: "Çeşme, Türkiye",
      hotelFeatures: "12 guests .5 bedrooms 10beds 5 baths",
      description:
          "Text description provided by the architects. Swissotel Resort and Residences Çeşme is a transformation project that upcycled the existing 11-storey hotel, which was originally constructed in 1997. Instead of demolishing the building and starting anew, Dilekci Architects aimed to extend the building’s lifespan by retaining as much of the existing structure as possible, thereby minimizing its carbon footprint. By adding a new residential function to the hotel, the project serves as an example of adaptive reuse in architecture, transforming the building not only in the environmental context but also in the urban and social.",
      icon: [
        {"WIFI": Icons.wifi},
        {"Kitchen": Icons.soup_kitchen_sharp},
        {"Pool": Icons.pool},
        {"Parking": Icons.local_parking_outlined},
      ],
      address: "Türkiye",
      price: 1500,
    ),
  ];
}
