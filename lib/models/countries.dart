class Country {
  final String countryName;
  final String imageAddress;

  const Country({
    required this.countryName,
    required this.imageAddress,
  });
}

class CountriesList {
  static const List<Country> countries = [
    Country(countryName: 'China', imageAddress: 'images/countries/cn.svg'),
    Country(countryName: 'Philippines', imageAddress: 'images/countries/ph.svg'),
    Country(countryName: 'USA', imageAddress: 'images/countries/us.svg'),
  ];
}
