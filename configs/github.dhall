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

let HasuraConfig
    : Type
    = { accessToken : Values }

 let general
    : HasuraConfig
    = { accessToken =
        { description = "Personal Github Access Token"
        , key = "GITHUB_ACCESS_TOKEN"
        , value = "TBD"
        , secretId = "general/github/access-token"
        , secretARN =
            "arn:aws:secretsmanager:eu-central-1:XXXX:secret:general/github/access-token-XXX"
        , fetchingRule = "aws"
        }
      }

let developmentLocal
    : HasuraConfig
    = general

let developmentRemote
    : HasuraConfig
    = general

let staging
    : HasuraConfig
    = general

let production
    : HasuraConfig
    = general

let result =
      { HasuraConfig, developmentLocal, developmentRemote, staging, production }

in  result
