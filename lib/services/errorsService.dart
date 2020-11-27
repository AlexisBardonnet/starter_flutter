class ErrorsService{

   /* Get the errors of firebase auth */
   static getErrorFirebaseAuth(code){
      String message = '';
      switch(code){
         case "ERROR_WRONG_PASSWORD"                           : message = "Mot de passe invalide. L'utilisateur existe déja avec un mot de passe différent."; break;
         case "ERROR_WEAK_PASSWORD"                            : message = "Mot de passe trop faible."; break;
         case "ERROR_INVALID_EMAIL"                            : message = "L'adresse mail est incorrecte."; break;
         case "ERROR_INVALID_CUSTOM_TOKEN"                     : message = "Le format du token est invalide"; break;
         case "ERROR_INVALID_CREDENTIAL"                       : message = "Les identifiants ne sont pas valides."; break;
         case "ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL" : message = "Ce compte existe avec la même adresse email mais avec un système d'authentiifaction différent."; break;
         case "ERROR_EMAIL_ALREADY_IN_USE"                     : message = "Cette adresse mail est déja utilisée par un autre compte."; break;
         case "ERROR_USER_DISABLED"                            : message = "Le compte utilisateur a été désactivé par l'administrateur."; break;
         case "ERROR_CREDENTIAL_ALREADY_IN_USE"                : message = "Les informations sont déja associées à un utilisateur différent."; break;
         case "ERROR_USER_TOKEN_EXPIRED"                       : message = "La session a expirée, veuillez vous authentifier de nouveau."; break;
         case "ERROR_USER_NOT_FOUND"                           : message = "Utilisateur non reconnu. Ce numéro de téléphone "; break;
         case "ERROR_OPERATION_NOT_ALLOWED"                    : message = "Vous n'êtes pas autorisé à faire cette opération."; break;
         case "ERROR_INVALID_ACTION_CODE"                      : message = "Code d'activation malformé."; break;
         case "ERROR_INVALID_VERIFICATION_CODE"                : message = "Le code est invalide."; break;
         case "ERROR_TOO_MANY_REQUESTS"                        : message = "Nombre de tentatives dépassé. Veuillez réessayer plus tard."; break;
         case "ERROR_SESSION_EXPIRED"                          : message = "Le code SMS a expiré, veuillez ré-essayer."; break;
         default : message = "Une erreur s'est produite."; break;
      }
      return message;
   }
}