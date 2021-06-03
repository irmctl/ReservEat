class KullaniciValidationMixin {
  String validateAd(String value) {
    if (value.length < 3) {
      return "Ad en az 3 karakterden oluşmalı.";
    }
  }

  String validateSoyad(String value) {
    if (value.length < 2) {
      return "Soyad en az 3 karakterden oluşmalı.";
    }
  }

  String validateTelefonNo(String value) {
    if (value.length < 11) {
      return "Telefo Numarası eksik ya da yanlış girdiniz.";
    }
  }

  String validateSifre(String value) {
    if (value.length < 8) {
      return "Sifre en az 8 karakterden oluşmalı.";
    }
  }
}
