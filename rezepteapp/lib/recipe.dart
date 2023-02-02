class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );

  static List<Recipe> samples = [
    Recipe('Green Power-Suppe', 'assets/green-power.jpg', 4, [
      Ingredient(1, 'EL', 'Essig'),
      Ingredient(1, '', 'Zwiebel'),
      Ingredient(1, 'cm', 'Ingwer'),
      Ingredient(300, 'g', 'Jungspinat'),
      Ingredient(6, 'dl', 'Gemüsebouillon'),
      Ingredient(2, 'dl', 'Kokosmilch'),
    ]),
    Recipe('Club Sandwich', 'assets/club-sandwich.jpg', 4, [
      Ingredient(8, 'Tranchen', 'Bratspeck'),
      Ingredient(2, '', 'Pouletbrüstli'),
      Ingredient(0.5, 'TL', 'Paprika'),
      Ingredient(0.5, 'TL', 'Salz'),
      Ingredient(4, '', 'Eier'),
      Ingredient(12, 'Scheiben', 'Toastbrot'),
      Ingredient(125, 'g', 'Frischkäse'),
      Ingredient(2, 'EL', 'grobkörniger Senf'),
      Ingredient(2, '', 'Tomaten'),
      Ingredient(0.5, '', 'Eisbergsalat'),
    ]),
    Recipe('Parmigiana', 'assets/parmigiana.jpg', 4, [
      Ingredient(1, 'Flasche', 'Tomatensugo'),
      Ingredient(1, 'kg', 'Auberginen'),
      Ingredient(5, 'EL', 'Olivenöl'),
      Ingredient(1, 'TL', 'Salz'),
      Ingredient(250, 'g', 'Mozzarella'),
      Ingredient(1, 'Bund', 'Basilikum'),
    ]),
    Recipe('Taboule', 'assets/taboule.jpg', 4, [
      Ingredient(1, 'TL', 'Olivenöl'),
      Ingredient(50, 'g', 'Bulgur'),
      Ingredient(1.5, 'dl', 'Wasser'),
      Ingredient(50, 'g', 'Granatapfelkerne'),
      Ingredient(100, 'g', 'Stangensellerie'),
      Ingredient(0.5, '', 'Gurke'),
      Ingredient(1, 'Bund', 'Petersilie'),
      Ingredient(1, 'Bund', 'Pfefferminze'),
      Ingredient(1, '', 'Bio-Zitrone'),
    ]),
    Recipe('Tagliatelle Alfredo', 'assets/tagliatelle-alfredo.jpg', 2, [
      Ingredient(300, 'g', 'Tagliatelle'),
      Ingredient(60, 'g', 'Butter'),
      Ingredient(60, 'g', 'Parmesan'),
    ]),
    Recipe('Vegi Stroganoff', 'assets/vegi-stroganoff.jpg', 4, [
      Ingredient(400, 'g', 'Cornatur Geschnetzeltes'),
      Ingredient(1, 'EL', 'Olivenöl'),
      Ingredient(1, 'EL', 'Paprikapulver'),
      Ingredient(1, '', 'Peperoni'),
      Ingredient(100, 'g', 'Cornichons'),
      Ingredient(100, 'g', 'Champignons'),
      Ingredient(0.5, 'Bund', 'Thymian'),
      Ingredient(2, 'dl', 'Halbrahm'),
      Ingredient(1, 'dl', 'Milch'),
      Ingredient(0.25, 'TL', 'Salz'),
    ]),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
