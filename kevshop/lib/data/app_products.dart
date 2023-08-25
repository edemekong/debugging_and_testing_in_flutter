import '../models/product.dart';

class AppProducts {
  static List<Product> get products => List.generate(raw.length, (index) => Product.fromMap(raw[index]).copyWith(image: "https://picsum.photos/10$index"));
}

List<Map<String, dynamic>> raw = [
  {
    "id": "1",
    "name": "Cozy Cloud Pillow",
    "image": "https://example.com/cozy-cloud-pillow.jpg",
    "amount": 25,
    "description": "Experience a heavenly sleep with this cloud-like pillow that provides ultimate comfort."
  },
  {
    "id": "2",
    "name": "Gourmet Chocolate Box",
    "image": "https://example.com/gourmet-chocolate-box.jpg",
    "amount": 15,
    "description": "Indulge in the finest selection of gourmet chocolates that will delight your taste buds."
  },
  {
    "id": "3",
    "name": "Smartphone Gimbal Stabilizer",
    "image": "https://example.com/smartphone-gimbal-stabilizer.jpg",
    "amount": 60,
    "description": "Capture professional-grade videos with this advanced smartphone gimbal stabilizer."
  },
  {
    "id": "4",
    "name": "Eco-Friendly Reusable Water Bottle",
    "image": "https://example.com/reusable-water-bottle.jpg",
    "amount": 20,
    "description": "Stay hydrated and help the environment with this stylish and durable reusable water bottle."
  },
  {
    "id": "5",
    "name": "Wireless Bluetooth Earbuds",
    "image": "https://example.com/wireless-bluetooth-earbuds.jpg",
    "amount": 40,
    "description": "Enjoy high-quality sound and freedom of movement with these wireless Bluetooth earbuds."
  },
  {
    "id": "6",
    "name": "Portable Espresso Maker",
    "image": "https://example.com/portable-espresso-maker.jpg",
    "amount": 75,
    "description": "Satisfy your coffee cravings on the go with this compact and easy-to-use portable espresso maker."
  },
  {
    "id": "7",
    "name": "Aromatherapy Essential Oils Set",
    "image": "https://example.com/aromatherapy-essential-oils.jpg",
    "amount": 30,
    "description": "Create a relaxing and soothing atmosphere with this set of aromatherapy essential oils."
  },
  {
    "id": "8",
    "name": "Fitness Tracker Watch",
    "image": "https://example.com/fitness-tracker-watch.jpg",
    "amount": 50,
    "description": "Monitor your health and track your fitness goals with this feature-packed fitness tracker watch."
  },
  {
    "id": "9",
    "name": "Stainless Steel Kitchen Knife Set",
    "image": "https://example.com/kitchen-knife-set.jpg",
    "amount": 90,
    "description": "Upgrade your culinary skills with this premium stainless steel kitchen knife set."
  },
  {
    "id": "10",
    "name": "Smart Home Security Camera",
    "image": "https://example.com/smart-home-security-camera.jpg",
    "amount": 70,
    "description": "Keep an eye on your home and loved ones with this advanced smart home security camera."
  },
  {
    "id": "11",
    "name": "Folding Electric Scooter",
    "image": "https://example.com/folding-electric-scooter.jpg",
    "amount": 300,
    "description": "Zip through the city streets with ease using this foldable and eco-friendly electric scooter."
  },
  {
    "id": "12",
    "name": "Natural Bath Bombs Gift Set",
    "image": "https://example.com/natural-bath-bombs.jpg",
    "amount": 25,
    "description": "Transform your bath into a spa-like experience with these delightful and natural bath bombs."
  },
  {
    "id": "13",
    "name": "High-Performance Gaming Mouse",
    "image": "https://example.com/high-performance-gaming-mouse.jpg",
    "amount": 55,
    "description": "Gain a competitive edge in gaming with this high-performance and customizable gaming mouse."
  },
  {
    "id": "14",
    "name": "Premium Leather Wallet",
    "image": "https://example.com/premium-leather-wallet.jpg",
    "amount": 40,
    "description": "Organize your cards and cash in style with this luxurious premium leather wallet."
  },
  {
    "id": "15",
    "name": "Multi-Function Bluetooth Speaker",
    "image": "https://example.com/multi-function-bluetooth-speaker.jpg",
    "amount": 80,
    "description": "Enjoy your favorite music with enhanced sound quality using this versatile Bluetooth speaker."
  },
  {
    "id": "16",
    "name": "Fitness Exercise Resistance Bands",
    "image": "https://example.com/exercise-resistance-bands.jpg",
    "amount": 20,
    "description": "Stay fit and active with these durable and effective fitness exercise resistance bands."
  },
  {
    "id": "17",
    "name": "HD Webcam with Microphone",
    "image": "https://example.com/hd-webcam-with-microphone.jpg",
    "amount": 35,
    "description": "Upgrade your video conferencing and streaming experience with this high-definition webcam."
  },
  {
    "id": "18",
    "name": "Premium Dog Bed",
    "image": "https://example.com/premium-dog-bed.jpg",
    "amount": 45,
    "description": "Give your furry friend the ultimate comfort with this premium and cozy dog bed."
  },
  {
    "id": "19",
    "name": "Automatic Robot Vacuum Cleaner",
    "image": "https://example.com/robot-vacuum-cleaner.jpg",
    "amount": 150,
    "description": "Keep your floors clean and tidy effortlessly with this smart and automatic robot vacuum cleaner."
  },
  {
    "id": "20",
    "name": "Professional Makeup Brush Set",
    "image": "https://example.com/professional-makeup-brush-set.jpg",
    "amount": 25,
    "description": "Achieve flawless makeup application with this comprehensive and high-quality makeup brush set."
  }
];
