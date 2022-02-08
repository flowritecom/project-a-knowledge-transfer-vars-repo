let Values
    : Type
    = { description : Text
      , key : Text
      , value : Text
      , secretId : Text
      , secretARN : Text
      , fetchingRule : Text
      }

      -- TODO: TYPE THE ABOVE

let FirebaseConfig
    : Type
    = { env : Values
      , apiKey : Values
      , authDomain : Values
      , projectId : Values
      , dbUrl : Values
      , storageBucket : Values
      , messagingSenderId : Values
      , appId : Values
      , measurementId : Values
      }

let developmentLocal
    : FirebaseConfig
    = { env =
        { description = "Firebase main environment"
        , key = "FB_ENV"
        , value = "development-local"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , apiKey =
        { description = "Firebase API key"
        , key = "FB_API_KEY"
        -- , value = env:FB_API_KEY as Text
        , value = "TBD"
        , secretId = "development-local/firebase/api-key"
        , secretARN =
            "arn:aws:secretsmanager:eu-central-1:XXXX:secret:development-local/firebase/api-key-XXX"
        , fetchingRule = "aws"
        }
      , authDomain =
        { description = "Firebase main environment"
        , key = "FB_AUTH_DOMAIN"
        , value = "firebase-development-domain-for-app.firebaseapp.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , projectId =
        { description = "Firebase project Id"
        , key = "FB_PROJECT_ID"
        , value = "firebase-project-id-for-dev"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , dbUrl =
        { description = "Firebase Database URL address"
        , key = "FB_DB_URL"
        , value =
            "https://firebase-name-for-your-db-default-rtdb.europe-west1.firebasedatabase.app"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , storageBucket =
        { description = "Firebase storage bucket address"
        , key = "FB_STORAGE_BUCKET"
        , value = "firebase-name-for-storage.appspot.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , messagingSenderId =
        { description = "Firebase messaging sender id"
        , key = "FB_MESSAGING"
        , value = "messaging-id"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appId =
        { description = "Firebase application id"
        , key = "FB_APP_ID"
        , value = "this-is-the-app-id"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , measurementId =
        { description = "Firebase measurement id"
        , key = "FB_MEASUREMENT_ID"
        , value = "this-is-the-measurement-id"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let developmentRemote
    : FirebaseConfig
    = { env =
        { description = "Firebase main environment"
        , key = "FB_ENV"
        , value = "development-remote"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , apiKey =
        { description = "Firebase API key"
        , key = "FB_API_KEY"
        -- , value = env:FB_API_KEY as Text
        , value = "TBD"
        , secretId = "development-remote/firebase/api-key"
        , secretARN =
            "arn:aws:secretsmanager:eu-central-1:XXXXX:secret:development-remote/firebase/api-key-XXXX"
        , fetchingRule = "aws"
        }
      , authDomain =
        { description = "Firebase authentication domain"
        , key = "FB_AUTH_DOMAIN"
        , value = "firebase-auth-staging-domain-for-your-app.firebaseapp.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , projectId =
        { description = "Firebase project Id"
        , key = "FB_PROJECT_ID"
        , value = "firebase-project-id-for-remote-dev"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , dbUrl =
        { description = "Firebase Database URL address"
        , key = "FB_DB_URL"
        , value =
            "https://firebase-remote-dev-db-url-rtdb.europe-west1.firebasedatabase.app"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , storageBucket =
        { description = "Firebase storage bucket address"
        , key = "FB_STORAGE_BUCKET"
        , value = "firebase-storage-bucket-remote-dev.appspot.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , messagingSenderId =
        { description = "Firebase messaging sender id"
        , key = "FB_MESSAGING"
        , value = "firebase-messaging-id-remote-dev"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appId =
        { description = "Firebase application id"
        , key = "FB_APP_ID"
        , value = "firebase-app-id-remote-dev"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , measurementId =
        { description = "Firebase measurement id"
        , key = "FB_MEASUREMENT_ID"
        , value = "firebease-measurement-id-remote-dev"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let staging
    : FirebaseConfig
    = { env =
        { description = "Firebase main environment"
        , key = "FB_ENV"
        , value = "staging"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , apiKey =
        { description = "Firebase API key"
        , key = "FB_API_KEY"
        -- , value = env:FB_API_KEY as Text
        , value = "TBD"
        , secretId = "staging/firebase/api-key"
        , secretARN =
            "arn:aws:secretsmanager:eu-central-1:XXXX:secret:staging/firebase/api-key-XXXX"
        , fetchingRule = "aws"
        }
      , authDomain =
        { description = "Firebase authentication domain"
        , key = "FB_AUTH_DOMAIN"
        , value = "firebase-auth-domain-for-staging.firebaseapp.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , projectId =
        { description = "Firebase project Id"
        , key = "FB_PROJECT_ID"
        , value = "firebase-project-id-for-staging"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , dbUrl =
        { description = "Firebase Database URL address"
        , key = "FB_DB_URL"
        , value =
            "https://firebase-database-url-for-staging-default-rtdb.europe-west1.firebasedatabase.app"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , storageBucket =
        { description = "Firebase storage bucket address"
        , key = "FB_STORAGE_BUCKET"
        , value = "firebase-storage-bucket-for-staging.appspot.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , messagingSenderId =
        { description = "Firebase messaging sender id"
        , key = "FB_MESSAGING"
        , value = "firebase-messaging-id-for-staging"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appId =
        { description = "Firebase application id"
        , key = "FB_APP_ID"
        , value = "firebase-app-id-for-staging"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , measurementId =
        { description = "Firebase measurement id"
        , key = "FB_MEASUREMENT_ID"
        , value = "firebease-measurement-id-for-staging"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let production
    : FirebaseConfig
    = { env =
        { description = "Firebase main environment"
        , key = "FB_ENV"
        , value = "production"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , apiKey =
        { description = "Firebase API key"
        , key = "FB_API_KEY"
        , value = "TBD"
        , secretId = "production/firebase/api-key"
        , secretARN =
            "arn:aws:secretsmanager:eu-central-1:XXXX:secret:production/firebase/api-key-XXXX"
        , fetchingRule = "aws"
        }
      , authDomain =
        { description = "Firebase authentication domain"
        , key = "FB_AUTH_DOMAIN"
        , value = "firebase-auth-domain-for-production.firebaseapp.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , projectId =
        { description = "Firebase project Id"
        , key = "FB_PROJECT_ID"
        , value = "firebase-project-id-for-production"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , dbUrl =
        { description = "Firebase Database URL address"
        , key = "FB_DB_URL"
        , value =
            "https://firebase-database-url-for-production-default-rtdb.europe-west1.firebasedatabase.app"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , storageBucket =
        { description = "Firebase storage bucket address"
        , key = "FB_STORAGE_BUCKET"
        , value = "firebase-storage-bucket-for-production.appspot.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , messagingSenderId =
        { description = "Firebase messaging sender id"
        , key = "FB_MESSAGING"
        , value = "firebase-messaging-id-for-production"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appId =
        { description = "Firebase application id"
        , key = "FB_APP_ID"
        , value = "firebase-app-id-for-production"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , measurementId =
        { description = "Firebase measurement id"
        , key = "FB_MEASUREMENT_ID"
        , value = "firebease-measurement-id-for-production"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let result =
      { FirebaseConfig
      , developmentLocal
      , developmentRemote
      , staging
      , production
      }

in  result
