void main() {
  var fruit = <Map<String, dynamic>>[
    {'Name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'Name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'Name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];

  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruit);

  applyPriceDiscount(fruit, 10);

  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruit);
}

void displayFruitDetails(List<Map<String, dynamic>> fruitsDetails) {
  for (var fruit in fruitsDetails) {
    print("Name: ${fruit['Name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruitsPrice, double PriceDiscount) {
  for (var fruit in fruitsPrice) {
    double originalPrice = fruit['price'];
    var AmountDiscount = (PriceDiscount / 100) * originalPrice;
    var discountedPrice = originalPrice - AmountDiscount;
    fruit['price'] = discountedPrice;
  }
}