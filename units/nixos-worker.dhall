let client = ../configs/client.dhall

let firebase = ../configs/firebase.dhall

let hasura = ../configs/hasura.dhall

let inMemory = ../configs/in-memory.dhall

let NixosWorkerConfig
    : Type
    = { client : client.ClientConfig
      , firebase : firebase.FirebaseConfig
      , hasura : hasura.HasuraConfig
      , inMemory : inMemory.InMemoryConfig
      }

let developmentLocal
    : NixosWorkerConfig
    = { client = client.developmentLocal
      , firebase = firebase.developmentLocal
      , hasura = hasura.developmentLocal
      , inMemory = inMemory.developmentLocal
      }

let developmentRemote
    : NixosWorkerConfig
    = { client = client.developmentRemote
      , firebase = firebase.developmentRemote
      , hasura = hasura.developmentRemote
      , inMemory = inMemory.developmentRemote
      }

let staging
    : NixosWorkerConfig
    = { client = client.staging
      , firebase = firebase.staging
      , hasura = hasura.staging
      , inMemory = inMemory.staging
      }

let production
    : NixosWorkerConfig
    = { client = client.production
      , firebase = firebase.production
      , hasura = hasura.production
      , inMemory = inMemory.production
      }

in  { developmentLocal
    , developmentRemote
    , staging
    , production
    }
