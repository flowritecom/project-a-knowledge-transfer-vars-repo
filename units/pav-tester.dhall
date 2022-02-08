let client = ../configs/client.dhall

let inMemory = ../configs/in-memory.dhall

let NixosWorkerConfig
    : Type
    = { client : client.ClientConfig, inMemory : inMemory.InMemoryConfig }

let developmentLocal
    : NixosWorkerConfig
    = { client = client.developmentLocal, inMemory = inMemory.developmentLocal }

let developmentRemote
    : NixosWorkerConfig
    = { client = client.developmentRemote
      , inMemory = inMemory.developmentRemote
      }

let staging
    : NixosWorkerConfig
    = { client = client.staging, inMemory = inMemory.staging }

let production
    : NixosWorkerConfig
    = { client = client.production, inMemory = inMemory.production }

in  { developmentLocal, developmentRemote, staging, production }
