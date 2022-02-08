let Values
    : Type
    = { description : Text
      , key : Text
      , value : Text
      , secretId : Text
      , secretARN : Text
      , fetchingRule : Text
      }

let ClientConfig
    : Type
    = { appDomain : Values
      , appEnv : Values
      , appHost : Values
      , backendHost : Values
      , frontendBranch : Values
      , generateSourceMap : Values
      , nodeEnv : Values
      , zapierHookDomain : Values
      }

let developmentLocal
    : ClientConfig
    = { appDomain =
        { description = "The domain of the client app, e.g. 'localhost:3000'"
        , key = "APP_DOMAIN"
        , value = "localhost"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appEnv =
        { description = "The environment of the client app, e.g. 'development'"
        , key = "APP_ENV"
        , value = "development"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appHost =
        { description = "The host of the client app, e.g. 'http://localhost'"
        , key = "APP_HOST"
        , value = "http://localhost"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , backendHost =
        { description = "The host of the backend, e.g. 'http://localhost:3003'"
        , key = "BACKEND_HOST"
        , value = "http://localhost:3003"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , frontendBranch =
        { description = "The branch of the frontend, e.g. 'main'"
        , key = "FRONTEND_BRANCH"
        , value = "development"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , generateSourceMap =
        { description = "Whether to generate source maps or not"
        , key = "GENERATE_SOURCE_MAP"
        , value = "true"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , nodeEnv =
        { description =
            "The node environment of the client app, e.g. 'development'"
        , key = "NODE_ENV"
        , value = "development"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , zapierHookDomain =
        { description =
            "The domain of the Zapier hook, e.g. 'https://hooks.zapier.com/hooks/catch/xxxx/yyyy'"
        , key = "ZAPIER_HOOK_DOMAIN"
        , value = "https://hooks.zapier.com/hooks/catch/xxxx/yyyy"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let developmentRemote
    : ClientConfig
    = { appDomain =
        { description = "The domain of the client app, e.g. 'localhost:3000'"
        , key = "APP_DOMAIN"
        , value = "localhost"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appEnv =
        { description = "The environment of the client app, e.g. 'development'"
        , key = "APP_ENV"
        , value = "development"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appHost =
        { description = "The host of the client app, e.g. 'http://localhost'"
        , key = "APP_HOST"
        , value = "http://localhost"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , backendHost =
        { description = "The host of the backend, e.g. 'http://localhost:3003'"
        , key = "BACKEND_HOST"
        , value = "http://localhost:3003"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , frontendBranch =
        { description = "The branch of the frontend, e.g. 'main'"
        , key = "FRONTEND_BRANCH"
        , value = "development"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , generateSourceMap =
        { description = "Whether to generate source maps or not"
        , key = "GENERATE_SOURCE_MAP"
        , value = "true"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , nodeEnv =
        { description =
            "The node environment of the client app, e.g. 'development'"
        , key = "NODE_ENV"
        , value = "development"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , zapierHookDomain =
        { description =
            "The domain of the Zapier hook, e.g. 'https://hooks.zapier.com/hooks/catch/xxxx/yyyy'"
        , key = "ZAPIER_HOOK_DOMAIN"
        , value = "https://hooks.zapier.com/hooks/catch/xxxxx/yyyyy"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let staging
    : ClientConfig
    = { appDomain =
        { description = "The domain of the client app, e.g. 'localhost:3000'"
        , key = "APP_DOMAIN"
        , value = "yourstaging-domain.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appEnv =
        { description = "The environment of the client app, e.g. 'development'"
        , key = "APP_ENV"
        , value = "staging"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appHost =
        { description = "The host of the client app, e.g. 'http://localhost'"
        , key = "APP_HOST"
        , value = "https://yourstaging-host.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , backendHost =
        { description = "The host of the backend, e.g. 'http://localhost:3003'"
        , key = "BACKEND_HOST"
        , value = "https://yourstaging-backehd-host.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , frontendBranch =
        { description = "The branch of the frontend, e.g. 'main'"
        , key = "FRONTEND_BRANCH"
        , value = "aws-staging"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , generateSourceMap =
        { description = "Whether to generate source maps or not"
        , key = "GENERATE_SOURCE_MAP"
        , value = "false"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , nodeEnv =
        { description =
            "The node environment of the client app, e.g. 'development'"
        , key = "NODE_ENV"
        , value = "staging"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , zapierHookDomain =
        { description =
            "The domain of the Zapier hook, e.g. 'https://hooks.zapier.com/hooks/catch/xxxx/yyyy'"
        , key = "ZAPIER_HOOK_DOMAIN"
        , value = "https://hooks.zapier.com/hooks/catch/xxxx/yyyyy"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let production
    : ClientConfig
    = { appDomain =
        { description = "The domain of the client app, e.g. 'localhost:3000'"
        , key = "APP_DOMAIN"
        , value = "yourproduction-domain.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appEnv =
        { description = "The environment of the client app, e.g. 'development'"
        , key = "APP_ENV"
        , value = "production"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , appHost =
        { description = "The host of the client app, e.g. 'http://localhost'"
        , key = "APP_HOST"
        , value = "https:/your-production-host.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , backendHost =
        { description = "The host of the backend, e.g. 'http://localhost:3003'"
        , key = "BACKEND_HOST"
        , value = "https://your-production-backend-host.com"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , frontendBranch =
        { description = "The branch of the frontend, e.g. 'main'"
        , key = "FRONTEND_BRANCH"
        , value = "production"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , generateSourceMap =
        { description = "Whether to generate source maps or not"
        , key = "GENERATE_SOURCE_MAP"
        , value = "false"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , nodeEnv =
        { description =
            "The node environment of the client app, e.g. 'development'"
        , key = "NODE_ENV"
        , value = "production"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      , zapierHookDomain =
        { description =
            "The domain of the Zapier hook, e.g. 'https://hooks.zapier.com/hooks/catch/xxxx/yyyy'"
        , key = "ZAPIER_HOOK_DOMAIN"
        , value = "https://hooks.zapier.com/hooks/catch/production/zapier/hooks"
        , secretId = "local"
        , secretARN = "local"
        , fetchingRule = "local"
        }
      }

let result =
      { ClientConfig, developmentLocal, developmentRemote, staging, production }

in  result
