import 'package:clean_architecture/domain/entities/planet_entity.dart';

class PlanetModel extends PlanetEntity {
  PlanetModel({
    required name,
    required rotation_period,
    required orbital_period,
    required diameter,
    required climate,
    required gravity,
    required terrain,
    required surface_water,
    required population,
    required residents,
    required films,
    required url
  }) : super(
      name: name,
      rotation_period: rotation_period,
      orbital_period: orbital_period,
      diameter: diameter,
      climate: climate,
      gravity: gravity,
      terrain: terrain,
      surface_water: surface_water,
      population: population,
      residents: residents,
      films: films,
      url: url
  );

  factory PlanetModel.fromJson(Map<String, dynamic> json) {
    return PlanetModel(
        name: json['name'],
        rotation_period: json['rotation_period'],
        orbital_period: json['orbital_period'],
        diameter: json['diameter'],
        climate: json['climate'],
        gravity: json['gravity'],
        terrain: json['terrain'],
        surface_water: json['surface_water'],
        population: json['population'],
        residents: json['residents'],
        films: json['films'],
        url: json['url']
    );
  } 

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "rotation_period": rotation_period,
      "orbital_period": orbital_period,
      "diameter": diameter,
      "climate": climate,
      "gravity": gravity,
      "terrain": terrain,
      "surface_water": surface_water,
      "population": population,
      "residents": residents,
      "films": films,
      "url": url
    };
  }

}