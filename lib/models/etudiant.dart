class Etudiant {
  //
  var nom;
  var postnom;
  var prenom;
  var date_de_naissance;
  var numero;
  var email;
  var nompere;
  var nommere;
  var lieu_de_naissance;
  var nationalite;
  var adresse;
  var etat_civil;
  int? nombreEnfants;
  DateTime? promotion;
  var diplome_en;
  var ecoleObtentionDiplome;
  var villeActuelle;
  var activites;
  //
  Etudiant({
    this.activites,
    this.adresse,
    this.numero,
    this.email,
    this.date_de_naissance,
    this.diplome_en,
    this.ecoleObtentionDiplome,
    this.etat_civil,
    this.lieu_de_naissance,
    this.nationalite,
    this.nom,
    this.nombreEnfants,
    this.nommere,
    this.nompere,
    this.postnom,
    this.prenom,
    this.promotion,
    this.villeActuelle,
  });

  Etudiant.fromJson(Map<String, dynamic> json)
      : nom = json['nom'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'nom': nom,
        'email': email,
      };
}
