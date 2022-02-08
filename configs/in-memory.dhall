let Values
    : Type
    = { description : Text
      , key : Text
      , value : Text
      , secretId : Text
      , secretARN : Text
      , fetchingRule : Text
      }

let InMemoryConfig
    : Type
    = { redisUrl : Values }

let developmentLocal
    : InMemoryConfig
    = { redisUrl =
        { description = "Redis URL"
        , key = "REDIS_URL"
        , value = "redis://localredis"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let developmentRemote
    : InMemoryConfig
    = { redisUrl =
        { description = "Redis URL"
        , key = "REDIS_URL"
        , value = "redis://localhost:6379"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let staging
    : InMemoryConfig
    = { redisUrl =
        { description = "Redis URL"
        , key = "REDIS_URL"
        , value = "redis://localhost:6379"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let production
    : InMemoryConfig
    = { redisUrl =
        { description = "Redis URL"
        , key = "REDIS_URL"
        , value = "redis://localhost:6379"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let result =
      { InMemoryConfig
      , developmentLocal
      , developmentRemote
      , staging
      , production
      }

in  result
