let Values
    : Type
    = { description : Text
      , key : Text
      , value : Text
      , secretId : Text
      , secretARN : Text
      , fetchingRule : Text
      }

let HasuraConfig
    : Type
    = { adminSecret : Values, domain : Values }

let developmentLocal
    : HasuraConfig
    = { adminSecret =
        { description = "Hasura admin secret"
        , key = "HASURA_GRAPHQL_ADMIN_SECRET"
        -- , value = env:HASURA_GRAPHQL_ADMIN_SECRET as Text
        , value = "TBD"
        , secretId = "development-local/hasura/admin-secret"
        , secretARN = "arn:aws:secretsmanager:eu-central-1:XXXX:secret:development-local/hasura/admin-secret-XXXX"
        , fetchingRule = "aws"
        }
      , domain =
        { description = "Hasura domain"
        , key = "HASURA_DOMAIN"
        , value = "https://hasura-domain-for-dev.com/v1/graphql"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let developmentRemote
    : HasuraConfig
    = { adminSecret =
        { description = "Hasura admin secret"
        , key = "HASURA_GRAPHQL_ADMIN_SECRET"
        -- , value = env:HASURA_GRAPHQL_ADMIN_SECRET as Text
        , value = "TBD"
        , secretId = "development-remote/hasura/admin-secret"
        , secretARN = "arn:aws:secretsmanager:eu-central-1:XXXX:secret:development-remote/hasura/admin-secret-XXX"
        , fetchingRule = "aws"
        }
      , domain =
        { description = "Hasura domain"
        , key = "HASURA_DOMAIN"
        , value = "https://hasura-domain-for-dev-remote.com/v1/graphql"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let staging
    : HasuraConfig
    = { adminSecret =
        { description = "Hasura admin secret"
        , key = "HASURA_GRAPHQL_ADMIN_SECRET"
        -- , value = env:HASURA_GRAPHQL_ADMIN_SECRET as Text
        , value = "TBD"
        , secretId = "staging/hasura/admin-secret"
        , secretARN = "arn:aws:secretsmanager:eu-central-1:XXXX:secret:staging/hasura/admin-secret-XXXX"
        , fetchingRule = "aws"
        }
      , domain =
        { description = "Hasura domain"
        , key = "HASURA_DOMAIN"
        , value = "https://hasura-domain-for-staging.com/v1/graphql"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let production
    : HasuraConfig
    = { adminSecret =
        { description = "Hasura admin secret"
        , key = "HASURA_GRAPHQL_ADMIN_SECRET"
        , value = "TBD"
        , secretId = "production/hasura/admin-secret"
        , secretARN = "arn:aws:secretsmanager:eu-central-1:XXXX:secret:production/hasura/admin-secret-XXXX"
        , fetchingRule = "aws"
        }
      , domain =
        { description = "Hasura domain"
        , key = "HASURA_DOMAIN"
        , value = "https://hasura-domain-for-production.com/v1/graphql"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let result =
      { HasuraConfig, developmentLocal, developmentRemote, staging, production }

in  result
