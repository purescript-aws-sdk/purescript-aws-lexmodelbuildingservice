## Module AWS.LexModelBuildingService.Types

#### `options`

``` purescript
options :: Options
```

#### `AliasName`

``` purescript
newtype AliasName
  = AliasName String
```

##### Instances
``` purescript
Newtype AliasName _
Generic AliasName _
Show AliasName
Decode AliasName
Encode AliasName
```

#### `AliasNameOrListAll`

``` purescript
newtype AliasNameOrListAll
  = AliasNameOrListAll String
```

##### Instances
``` purescript
Newtype AliasNameOrListAll _
Generic AliasNameOrListAll _
Show AliasNameOrListAll
Decode AliasNameOrListAll
Encode AliasNameOrListAll
```

#### `BadRequestException`

``` purescript
newtype BadRequestException
  = BadRequestException { message :: Maybe (String) }
```

<p>The request is not well formed. For example, a value is invalid or a required field is missing. Check the field values, and try again.</p>

##### Instances
``` purescript
Newtype BadRequestException _
Generic BadRequestException _
Show BadRequestException
Decode BadRequestException
Encode BadRequestException
```

#### `newBadRequestException`

``` purescript
newBadRequestException :: BadRequestException
```

Constructs BadRequestException from required parameters

#### `newBadRequestException'`

``` purescript
newBadRequestException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> BadRequestException
```

Constructs BadRequestException's fields from required parameters

#### `BotAliasMetadata`

``` purescript
newtype BotAliasMetadata
  = BotAliasMetadata { name :: Maybe (AliasName), description :: Maybe (Description), botVersion :: Maybe (Version), botName :: Maybe (BotName), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), checksum :: Maybe (String) }
```

<p>Provides information about a bot alias.</p>

##### Instances
``` purescript
Newtype BotAliasMetadata _
Generic BotAliasMetadata _
Show BotAliasMetadata
Decode BotAliasMetadata
Encode BotAliasMetadata
```

#### `newBotAliasMetadata`

``` purescript
newBotAliasMetadata :: BotAliasMetadata
```

Constructs BotAliasMetadata from required parameters

#### `newBotAliasMetadata'`

``` purescript
newBotAliasMetadata' :: ({ name :: Maybe (AliasName), description :: Maybe (Description), botVersion :: Maybe (Version), botName :: Maybe (BotName), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), checksum :: Maybe (String) } -> { name :: Maybe (AliasName), description :: Maybe (Description), botVersion :: Maybe (Version), botName :: Maybe (BotName), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), checksum :: Maybe (String) }) -> BotAliasMetadata
```

Constructs BotAliasMetadata's fields from required parameters

#### `BotAliasMetadataList`

``` purescript
newtype BotAliasMetadataList
  = BotAliasMetadataList (Array BotAliasMetadata)
```

##### Instances
``` purescript
Newtype BotAliasMetadataList _
Generic BotAliasMetadataList _
Show BotAliasMetadataList
Decode BotAliasMetadataList
Encode BotAliasMetadataList
```

#### `BotChannelAssociation`

``` purescript
newtype BotChannelAssociation
  = BotChannelAssociation { name :: Maybe (BotChannelName), description :: Maybe (Description), botAlias :: Maybe (AliasName), botName :: Maybe (BotName), createdDate :: Maybe (Timestamp), "type" :: Maybe (ChannelType), botConfiguration :: Maybe (ChannelConfigurationMap), status :: Maybe (ChannelStatus), failureReason :: Maybe (String) }
```

<p>Represents an association between an Amazon Lex bot and an external messaging platform.</p>

##### Instances
``` purescript
Newtype BotChannelAssociation _
Generic BotChannelAssociation _
Show BotChannelAssociation
Decode BotChannelAssociation
Encode BotChannelAssociation
```

#### `newBotChannelAssociation`

``` purescript
newBotChannelAssociation :: BotChannelAssociation
```

Constructs BotChannelAssociation from required parameters

#### `newBotChannelAssociation'`

``` purescript
newBotChannelAssociation' :: ({ name :: Maybe (BotChannelName), description :: Maybe (Description), botAlias :: Maybe (AliasName), botName :: Maybe (BotName), createdDate :: Maybe (Timestamp), "type" :: Maybe (ChannelType), botConfiguration :: Maybe (ChannelConfigurationMap), status :: Maybe (ChannelStatus), failureReason :: Maybe (String) } -> { name :: Maybe (BotChannelName), description :: Maybe (Description), botAlias :: Maybe (AliasName), botName :: Maybe (BotName), createdDate :: Maybe (Timestamp), "type" :: Maybe (ChannelType), botConfiguration :: Maybe (ChannelConfigurationMap), status :: Maybe (ChannelStatus), failureReason :: Maybe (String) }) -> BotChannelAssociation
```

Constructs BotChannelAssociation's fields from required parameters

#### `BotChannelAssociationList`

``` purescript
newtype BotChannelAssociationList
  = BotChannelAssociationList (Array BotChannelAssociation)
```

##### Instances
``` purescript
Newtype BotChannelAssociationList _
Generic BotChannelAssociationList _
Show BotChannelAssociationList
Decode BotChannelAssociationList
Encode BotChannelAssociationList
```

#### `BotChannelName`

``` purescript
newtype BotChannelName
  = BotChannelName String
```

##### Instances
``` purescript
Newtype BotChannelName _
Generic BotChannelName _
Show BotChannelName
Decode BotChannelName
Encode BotChannelName
```

#### `BotMetadata`

``` purescript
newtype BotMetadata
  = BotMetadata { name :: Maybe (BotName), description :: Maybe (Description), status :: Maybe (Status), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version) }
```

<p>Provides information about a bot. .</p>

##### Instances
``` purescript
Newtype BotMetadata _
Generic BotMetadata _
Show BotMetadata
Decode BotMetadata
Encode BotMetadata
```

#### `newBotMetadata`

``` purescript
newBotMetadata :: BotMetadata
```

Constructs BotMetadata from required parameters

#### `newBotMetadata'`

``` purescript
newBotMetadata' :: ({ name :: Maybe (BotName), description :: Maybe (Description), status :: Maybe (Status), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version) } -> { name :: Maybe (BotName), description :: Maybe (Description), status :: Maybe (Status), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version) }) -> BotMetadata
```

Constructs BotMetadata's fields from required parameters

#### `BotMetadataList`

``` purescript
newtype BotMetadataList
  = BotMetadataList (Array BotMetadata)
```

##### Instances
``` purescript
Newtype BotMetadataList _
Generic BotMetadataList _
Show BotMetadataList
Decode BotMetadataList
Encode BotMetadataList
```

#### `BotName`

``` purescript
newtype BotName
  = BotName String
```

##### Instances
``` purescript
Newtype BotName _
Generic BotName _
Show BotName
Decode BotName
Encode BotName
```

#### `BotVersions`

``` purescript
newtype BotVersions
  = BotVersions (Array Version)
```

##### Instances
``` purescript
Newtype BotVersions _
Generic BotVersions _
Show BotVersions
Decode BotVersions
Encode BotVersions
```

#### `BuiltinIntentMetadata`

``` purescript
newtype BuiltinIntentMetadata
  = BuiltinIntentMetadata { signature :: Maybe (BuiltinIntentSignature), supportedLocales :: Maybe (LocaleList) }
```

<p>Provides metadata for a built-in intent.</p>

##### Instances
``` purescript
Newtype BuiltinIntentMetadata _
Generic BuiltinIntentMetadata _
Show BuiltinIntentMetadata
Decode BuiltinIntentMetadata
Encode BuiltinIntentMetadata
```

#### `newBuiltinIntentMetadata`

``` purescript
newBuiltinIntentMetadata :: BuiltinIntentMetadata
```

Constructs BuiltinIntentMetadata from required parameters

#### `newBuiltinIntentMetadata'`

``` purescript
newBuiltinIntentMetadata' :: ({ signature :: Maybe (BuiltinIntentSignature), supportedLocales :: Maybe (LocaleList) } -> { signature :: Maybe (BuiltinIntentSignature), supportedLocales :: Maybe (LocaleList) }) -> BuiltinIntentMetadata
```

Constructs BuiltinIntentMetadata's fields from required parameters

#### `BuiltinIntentMetadataList`

``` purescript
newtype BuiltinIntentMetadataList
  = BuiltinIntentMetadataList (Array BuiltinIntentMetadata)
```

##### Instances
``` purescript
Newtype BuiltinIntentMetadataList _
Generic BuiltinIntentMetadataList _
Show BuiltinIntentMetadataList
Decode BuiltinIntentMetadataList
Encode BuiltinIntentMetadataList
```

#### `BuiltinIntentSignature`

``` purescript
newtype BuiltinIntentSignature
  = BuiltinIntentSignature String
```

##### Instances
``` purescript
Newtype BuiltinIntentSignature _
Generic BuiltinIntentSignature _
Show BuiltinIntentSignature
Decode BuiltinIntentSignature
Encode BuiltinIntentSignature
```

#### `BuiltinIntentSlot`

``` purescript
newtype BuiltinIntentSlot
  = BuiltinIntentSlot { name :: Maybe (String) }
```

<p>Provides information about a slot used in a built-in intent.</p>

##### Instances
``` purescript
Newtype BuiltinIntentSlot _
Generic BuiltinIntentSlot _
Show BuiltinIntentSlot
Decode BuiltinIntentSlot
Encode BuiltinIntentSlot
```

#### `newBuiltinIntentSlot`

``` purescript
newBuiltinIntentSlot :: BuiltinIntentSlot
```

Constructs BuiltinIntentSlot from required parameters

#### `newBuiltinIntentSlot'`

``` purescript
newBuiltinIntentSlot' :: ({ name :: Maybe (String) } -> { name :: Maybe (String) }) -> BuiltinIntentSlot
```

Constructs BuiltinIntentSlot's fields from required parameters

#### `BuiltinIntentSlotList`

``` purescript
newtype BuiltinIntentSlotList
  = BuiltinIntentSlotList (Array BuiltinIntentSlot)
```

##### Instances
``` purescript
Newtype BuiltinIntentSlotList _
Generic BuiltinIntentSlotList _
Show BuiltinIntentSlotList
Decode BuiltinIntentSlotList
Encode BuiltinIntentSlotList
```

#### `BuiltinSlotTypeMetadata`

``` purescript
newtype BuiltinSlotTypeMetadata
  = BuiltinSlotTypeMetadata { signature :: Maybe (BuiltinSlotTypeSignature), supportedLocales :: Maybe (LocaleList) }
```

<p>Provides information about a built in slot type.</p>

##### Instances
``` purescript
Newtype BuiltinSlotTypeMetadata _
Generic BuiltinSlotTypeMetadata _
Show BuiltinSlotTypeMetadata
Decode BuiltinSlotTypeMetadata
Encode BuiltinSlotTypeMetadata
```

#### `newBuiltinSlotTypeMetadata`

``` purescript
newBuiltinSlotTypeMetadata :: BuiltinSlotTypeMetadata
```

Constructs BuiltinSlotTypeMetadata from required parameters

#### `newBuiltinSlotTypeMetadata'`

``` purescript
newBuiltinSlotTypeMetadata' :: ({ signature :: Maybe (BuiltinSlotTypeSignature), supportedLocales :: Maybe (LocaleList) } -> { signature :: Maybe (BuiltinSlotTypeSignature), supportedLocales :: Maybe (LocaleList) }) -> BuiltinSlotTypeMetadata
```

Constructs BuiltinSlotTypeMetadata's fields from required parameters

#### `BuiltinSlotTypeMetadataList`

``` purescript
newtype BuiltinSlotTypeMetadataList
  = BuiltinSlotTypeMetadataList (Array BuiltinSlotTypeMetadata)
```

##### Instances
``` purescript
Newtype BuiltinSlotTypeMetadataList _
Generic BuiltinSlotTypeMetadataList _
Show BuiltinSlotTypeMetadataList
Decode BuiltinSlotTypeMetadataList
Encode BuiltinSlotTypeMetadataList
```

#### `BuiltinSlotTypeSignature`

``` purescript
newtype BuiltinSlotTypeSignature
  = BuiltinSlotTypeSignature String
```

##### Instances
``` purescript
Newtype BuiltinSlotTypeSignature _
Generic BuiltinSlotTypeSignature _
Show BuiltinSlotTypeSignature
Decode BuiltinSlotTypeSignature
Encode BuiltinSlotTypeSignature
```

#### `ChannelConfigurationMap`

``` purescript
newtype ChannelConfigurationMap
  = ChannelConfigurationMap (StrMap String)
```

##### Instances
``` purescript
Newtype ChannelConfigurationMap _
Generic ChannelConfigurationMap _
Show ChannelConfigurationMap
Decode ChannelConfigurationMap
Encode ChannelConfigurationMap
```

#### `ChannelStatus`

``` purescript
newtype ChannelStatus
  = ChannelStatus String
```

##### Instances
``` purescript
Newtype ChannelStatus _
Generic ChannelStatus _
Show ChannelStatus
Decode ChannelStatus
Encode ChannelStatus
```

#### `ChannelType`

``` purescript
newtype ChannelType
  = ChannelType String
```

##### Instances
``` purescript
Newtype ChannelType _
Generic ChannelType _
Show ChannelType
Decode ChannelType
Encode ChannelType
```

#### `CodeHook`

``` purescript
newtype CodeHook
  = CodeHook { uri :: LambdaARN, messageVersion :: MessageVersion }
```

<p>Specifies a Lambda function that verifies requests to a bot or fulfills the user's request to a bot..</p>

##### Instances
``` purescript
Newtype CodeHook _
Generic CodeHook _
Show CodeHook
Decode CodeHook
Encode CodeHook
```

#### `newCodeHook`

``` purescript
newCodeHook :: MessageVersion -> LambdaARN -> CodeHook
```

Constructs CodeHook from required parameters

#### `newCodeHook'`

``` purescript
newCodeHook' :: MessageVersion -> LambdaARN -> ({ uri :: LambdaARN, messageVersion :: MessageVersion } -> { uri :: LambdaARN, messageVersion :: MessageVersion }) -> CodeHook
```

Constructs CodeHook's fields from required parameters

#### `ConflictException`

``` purescript
newtype ConflictException
  = ConflictException { message :: Maybe (String) }
```

<p> There was a conflict processing the request. Try your request again. </p>

##### Instances
``` purescript
Newtype ConflictException _
Generic ConflictException _
Show ConflictException
Decode ConflictException
Encode ConflictException
```

#### `newConflictException`

``` purescript
newConflictException :: ConflictException
```

Constructs ConflictException from required parameters

#### `newConflictException'`

``` purescript
newConflictException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> ConflictException
```

Constructs ConflictException's fields from required parameters

#### `ContentString`

``` purescript
newtype ContentString
  = ContentString String
```

##### Instances
``` purescript
Newtype ContentString _
Generic ContentString _
Show ContentString
Decode ContentString
Encode ContentString
```

#### `ContentType`

``` purescript
newtype ContentType
  = ContentType String
```

##### Instances
``` purescript
Newtype ContentType _
Generic ContentType _
Show ContentType
Decode ContentType
Encode ContentType
```

#### `Count`

``` purescript
newtype Count
  = Count Int
```

##### Instances
``` purescript
Newtype Count _
Generic Count _
Show Count
Decode Count
Encode Count
```

#### `CreateBotVersionRequest`

``` purescript
newtype CreateBotVersionRequest
  = CreateBotVersionRequest { name :: BotName, checksum :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateBotVersionRequest _
Generic CreateBotVersionRequest _
Show CreateBotVersionRequest
Decode CreateBotVersionRequest
Encode CreateBotVersionRequest
```

#### `newCreateBotVersionRequest`

``` purescript
newCreateBotVersionRequest :: BotName -> CreateBotVersionRequest
```

Constructs CreateBotVersionRequest from required parameters

#### `newCreateBotVersionRequest'`

``` purescript
newCreateBotVersionRequest' :: BotName -> ({ name :: BotName, checksum :: Maybe (String) } -> { name :: BotName, checksum :: Maybe (String) }) -> CreateBotVersionRequest
```

Constructs CreateBotVersionRequest's fields from required parameters

#### `CreateBotVersionResponse`

``` purescript
newtype CreateBotVersionResponse
  = CreateBotVersionResponse { name :: Maybe (BotName), description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), status :: Maybe (Status), failureReason :: Maybe (String), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), version :: Maybe (Version), locale :: Maybe (Locale), childDirected :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype CreateBotVersionResponse _
Generic CreateBotVersionResponse _
Show CreateBotVersionResponse
Decode CreateBotVersionResponse
Encode CreateBotVersionResponse
```

#### `newCreateBotVersionResponse`

``` purescript
newCreateBotVersionResponse :: CreateBotVersionResponse
```

Constructs CreateBotVersionResponse from required parameters

#### `newCreateBotVersionResponse'`

``` purescript
newCreateBotVersionResponse' :: ({ name :: Maybe (BotName), description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), status :: Maybe (Status), failureReason :: Maybe (String), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), version :: Maybe (Version), locale :: Maybe (Locale), childDirected :: Maybe (Boolean) } -> { name :: Maybe (BotName), description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), status :: Maybe (Status), failureReason :: Maybe (String), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), version :: Maybe (Version), locale :: Maybe (Locale), childDirected :: Maybe (Boolean) }) -> CreateBotVersionResponse
```

Constructs CreateBotVersionResponse's fields from required parameters

#### `CreateIntentVersionRequest`

``` purescript
newtype CreateIntentVersionRequest
  = CreateIntentVersionRequest { name :: IntentName, checksum :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateIntentVersionRequest _
Generic CreateIntentVersionRequest _
Show CreateIntentVersionRequest
Decode CreateIntentVersionRequest
Encode CreateIntentVersionRequest
```

#### `newCreateIntentVersionRequest`

``` purescript
newCreateIntentVersionRequest :: IntentName -> CreateIntentVersionRequest
```

Constructs CreateIntentVersionRequest from required parameters

#### `newCreateIntentVersionRequest'`

``` purescript
newCreateIntentVersionRequest' :: IntentName -> ({ name :: IntentName, checksum :: Maybe (String) } -> { name :: IntentName, checksum :: Maybe (String) }) -> CreateIntentVersionRequest
```

Constructs CreateIntentVersionRequest's fields from required parameters

#### `CreateIntentVersionResponse`

``` purescript
newtype CreateIntentVersionResponse
  = CreateIntentVersionResponse { name :: Maybe (IntentName), description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateIntentVersionResponse _
Generic CreateIntentVersionResponse _
Show CreateIntentVersionResponse
Decode CreateIntentVersionResponse
Encode CreateIntentVersionResponse
```

#### `newCreateIntentVersionResponse`

``` purescript
newCreateIntentVersionResponse :: CreateIntentVersionResponse
```

Constructs CreateIntentVersionResponse from required parameters

#### `newCreateIntentVersionResponse'`

``` purescript
newCreateIntentVersionResponse' :: ({ name :: Maybe (IntentName), description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String) } -> { name :: Maybe (IntentName), description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String) }) -> CreateIntentVersionResponse
```

Constructs CreateIntentVersionResponse's fields from required parameters

#### `CreateSlotTypeVersionRequest`

``` purescript
newtype CreateSlotTypeVersionRequest
  = CreateSlotTypeVersionRequest { name :: SlotTypeName, checksum :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateSlotTypeVersionRequest _
Generic CreateSlotTypeVersionRequest _
Show CreateSlotTypeVersionRequest
Decode CreateSlotTypeVersionRequest
Encode CreateSlotTypeVersionRequest
```

#### `newCreateSlotTypeVersionRequest`

``` purescript
newCreateSlotTypeVersionRequest :: SlotTypeName -> CreateSlotTypeVersionRequest
```

Constructs CreateSlotTypeVersionRequest from required parameters

#### `newCreateSlotTypeVersionRequest'`

``` purescript
newCreateSlotTypeVersionRequest' :: SlotTypeName -> ({ name :: SlotTypeName, checksum :: Maybe (String) } -> { name :: SlotTypeName, checksum :: Maybe (String) }) -> CreateSlotTypeVersionRequest
```

Constructs CreateSlotTypeVersionRequest's fields from required parameters

#### `CreateSlotTypeVersionResponse`

``` purescript
newtype CreateSlotTypeVersionResponse
  = CreateSlotTypeVersionResponse { name :: Maybe (SlotTypeName), description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy) }
```

##### Instances
``` purescript
Newtype CreateSlotTypeVersionResponse _
Generic CreateSlotTypeVersionResponse _
Show CreateSlotTypeVersionResponse
Decode CreateSlotTypeVersionResponse
Encode CreateSlotTypeVersionResponse
```

#### `newCreateSlotTypeVersionResponse`

``` purescript
newCreateSlotTypeVersionResponse :: CreateSlotTypeVersionResponse
```

Constructs CreateSlotTypeVersionResponse from required parameters

#### `newCreateSlotTypeVersionResponse'`

``` purescript
newCreateSlotTypeVersionResponse' :: ({ name :: Maybe (SlotTypeName), description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy) } -> { name :: Maybe (SlotTypeName), description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy) }) -> CreateSlotTypeVersionResponse
```

Constructs CreateSlotTypeVersionResponse's fields from required parameters

#### `CustomOrBuiltinSlotTypeName`

``` purescript
newtype CustomOrBuiltinSlotTypeName
  = CustomOrBuiltinSlotTypeName String
```

##### Instances
``` purescript
Newtype CustomOrBuiltinSlotTypeName _
Generic CustomOrBuiltinSlotTypeName _
Show CustomOrBuiltinSlotTypeName
Decode CustomOrBuiltinSlotTypeName
Encode CustomOrBuiltinSlotTypeName
```

#### `DeleteBotAliasRequest`

``` purescript
newtype DeleteBotAliasRequest
  = DeleteBotAliasRequest { name :: AliasName, botName :: BotName }
```

##### Instances
``` purescript
Newtype DeleteBotAliasRequest _
Generic DeleteBotAliasRequest _
Show DeleteBotAliasRequest
Decode DeleteBotAliasRequest
Encode DeleteBotAliasRequest
```

#### `newDeleteBotAliasRequest`

``` purescript
newDeleteBotAliasRequest :: BotName -> AliasName -> DeleteBotAliasRequest
```

Constructs DeleteBotAliasRequest from required parameters

#### `newDeleteBotAliasRequest'`

``` purescript
newDeleteBotAliasRequest' :: BotName -> AliasName -> ({ name :: AliasName, botName :: BotName } -> { name :: AliasName, botName :: BotName }) -> DeleteBotAliasRequest
```

Constructs DeleteBotAliasRequest's fields from required parameters

#### `DeleteBotChannelAssociationRequest`

``` purescript
newtype DeleteBotChannelAssociationRequest
  = DeleteBotChannelAssociationRequest { name :: BotChannelName, botName :: BotName, botAlias :: AliasName }
```

##### Instances
``` purescript
Newtype DeleteBotChannelAssociationRequest _
Generic DeleteBotChannelAssociationRequest _
Show DeleteBotChannelAssociationRequest
Decode DeleteBotChannelAssociationRequest
Encode DeleteBotChannelAssociationRequest
```

#### `newDeleteBotChannelAssociationRequest`

``` purescript
newDeleteBotChannelAssociationRequest :: AliasName -> BotName -> BotChannelName -> DeleteBotChannelAssociationRequest
```

Constructs DeleteBotChannelAssociationRequest from required parameters

#### `newDeleteBotChannelAssociationRequest'`

``` purescript
newDeleteBotChannelAssociationRequest' :: AliasName -> BotName -> BotChannelName -> ({ name :: BotChannelName, botName :: BotName, botAlias :: AliasName } -> { name :: BotChannelName, botName :: BotName, botAlias :: AliasName }) -> DeleteBotChannelAssociationRequest
```

Constructs DeleteBotChannelAssociationRequest's fields from required parameters

#### `DeleteBotRequest`

``` purescript
newtype DeleteBotRequest
  = DeleteBotRequest { name :: BotName }
```

##### Instances
``` purescript
Newtype DeleteBotRequest _
Generic DeleteBotRequest _
Show DeleteBotRequest
Decode DeleteBotRequest
Encode DeleteBotRequest
```

#### `newDeleteBotRequest`

``` purescript
newDeleteBotRequest :: BotName -> DeleteBotRequest
```

Constructs DeleteBotRequest from required parameters

#### `newDeleteBotRequest'`

``` purescript
newDeleteBotRequest' :: BotName -> ({ name :: BotName } -> { name :: BotName }) -> DeleteBotRequest
```

Constructs DeleteBotRequest's fields from required parameters

#### `DeleteBotVersionRequest`

``` purescript
newtype DeleteBotVersionRequest
  = DeleteBotVersionRequest { name :: BotName, version :: NumericalVersion }
```

##### Instances
``` purescript
Newtype DeleteBotVersionRequest _
Generic DeleteBotVersionRequest _
Show DeleteBotVersionRequest
Decode DeleteBotVersionRequest
Encode DeleteBotVersionRequest
```

#### `newDeleteBotVersionRequest`

``` purescript
newDeleteBotVersionRequest :: BotName -> NumericalVersion -> DeleteBotVersionRequest
```

Constructs DeleteBotVersionRequest from required parameters

#### `newDeleteBotVersionRequest'`

``` purescript
newDeleteBotVersionRequest' :: BotName -> NumericalVersion -> ({ name :: BotName, version :: NumericalVersion } -> { name :: BotName, version :: NumericalVersion }) -> DeleteBotVersionRequest
```

Constructs DeleteBotVersionRequest's fields from required parameters

#### `DeleteIntentRequest`

``` purescript
newtype DeleteIntentRequest
  = DeleteIntentRequest { name :: IntentName }
```

##### Instances
``` purescript
Newtype DeleteIntentRequest _
Generic DeleteIntentRequest _
Show DeleteIntentRequest
Decode DeleteIntentRequest
Encode DeleteIntentRequest
```

#### `newDeleteIntentRequest`

``` purescript
newDeleteIntentRequest :: IntentName -> DeleteIntentRequest
```

Constructs DeleteIntentRequest from required parameters

#### `newDeleteIntentRequest'`

``` purescript
newDeleteIntentRequest' :: IntentName -> ({ name :: IntentName } -> { name :: IntentName }) -> DeleteIntentRequest
```

Constructs DeleteIntentRequest's fields from required parameters

#### `DeleteIntentVersionRequest`

``` purescript
newtype DeleteIntentVersionRequest
  = DeleteIntentVersionRequest { name :: IntentName, version :: NumericalVersion }
```

##### Instances
``` purescript
Newtype DeleteIntentVersionRequest _
Generic DeleteIntentVersionRequest _
Show DeleteIntentVersionRequest
Decode DeleteIntentVersionRequest
Encode DeleteIntentVersionRequest
```

#### `newDeleteIntentVersionRequest`

``` purescript
newDeleteIntentVersionRequest :: IntentName -> NumericalVersion -> DeleteIntentVersionRequest
```

Constructs DeleteIntentVersionRequest from required parameters

#### `newDeleteIntentVersionRequest'`

``` purescript
newDeleteIntentVersionRequest' :: IntentName -> NumericalVersion -> ({ name :: IntentName, version :: NumericalVersion } -> { name :: IntentName, version :: NumericalVersion }) -> DeleteIntentVersionRequest
```

Constructs DeleteIntentVersionRequest's fields from required parameters

#### `DeleteSlotTypeRequest`

``` purescript
newtype DeleteSlotTypeRequest
  = DeleteSlotTypeRequest { name :: SlotTypeName }
```

##### Instances
``` purescript
Newtype DeleteSlotTypeRequest _
Generic DeleteSlotTypeRequest _
Show DeleteSlotTypeRequest
Decode DeleteSlotTypeRequest
Encode DeleteSlotTypeRequest
```

#### `newDeleteSlotTypeRequest`

``` purescript
newDeleteSlotTypeRequest :: SlotTypeName -> DeleteSlotTypeRequest
```

Constructs DeleteSlotTypeRequest from required parameters

#### `newDeleteSlotTypeRequest'`

``` purescript
newDeleteSlotTypeRequest' :: SlotTypeName -> ({ name :: SlotTypeName } -> { name :: SlotTypeName }) -> DeleteSlotTypeRequest
```

Constructs DeleteSlotTypeRequest's fields from required parameters

#### `DeleteSlotTypeVersionRequest`

``` purescript
newtype DeleteSlotTypeVersionRequest
  = DeleteSlotTypeVersionRequest { name :: SlotTypeName, version :: NumericalVersion }
```

##### Instances
``` purescript
Newtype DeleteSlotTypeVersionRequest _
Generic DeleteSlotTypeVersionRequest _
Show DeleteSlotTypeVersionRequest
Decode DeleteSlotTypeVersionRequest
Encode DeleteSlotTypeVersionRequest
```

#### `newDeleteSlotTypeVersionRequest`

``` purescript
newDeleteSlotTypeVersionRequest :: SlotTypeName -> NumericalVersion -> DeleteSlotTypeVersionRequest
```

Constructs DeleteSlotTypeVersionRequest from required parameters

#### `newDeleteSlotTypeVersionRequest'`

``` purescript
newDeleteSlotTypeVersionRequest' :: SlotTypeName -> NumericalVersion -> ({ name :: SlotTypeName, version :: NumericalVersion } -> { name :: SlotTypeName, version :: NumericalVersion }) -> DeleteSlotTypeVersionRequest
```

Constructs DeleteSlotTypeVersionRequest's fields from required parameters

#### `DeleteUtterancesRequest`

``` purescript
newtype DeleteUtterancesRequest
  = DeleteUtterancesRequest { botName :: BotName, userId :: UserId }
```

##### Instances
``` purescript
Newtype DeleteUtterancesRequest _
Generic DeleteUtterancesRequest _
Show DeleteUtterancesRequest
Decode DeleteUtterancesRequest
Encode DeleteUtterancesRequest
```

#### `newDeleteUtterancesRequest`

``` purescript
newDeleteUtterancesRequest :: BotName -> UserId -> DeleteUtterancesRequest
```

Constructs DeleteUtterancesRequest from required parameters

#### `newDeleteUtterancesRequest'`

``` purescript
newDeleteUtterancesRequest' :: BotName -> UserId -> ({ botName :: BotName, userId :: UserId } -> { botName :: BotName, userId :: UserId }) -> DeleteUtterancesRequest
```

Constructs DeleteUtterancesRequest's fields from required parameters

#### `Description`

``` purescript
newtype Description
  = Description String
```

##### Instances
``` purescript
Newtype Description _
Generic Description _
Show Description
Decode Description
Encode Description
```

#### `EnumerationValue`

``` purescript
newtype EnumerationValue
  = EnumerationValue { value :: Value, synonyms :: Maybe (SynonymList) }
```

<p>Each slot type can have a set of values. Each enumeration value represents a value the slot type can take. </p> <p>For example, a pizza ordering bot could have a slot type that specifies the type of crust that the pizza should have. The slot type could include the values </p> <ul> <li> <p>thick</p> </li> <li> <p>thin</p> </li> <li> <p>stuffed</p> </li> </ul>

##### Instances
``` purescript
Newtype EnumerationValue _
Generic EnumerationValue _
Show EnumerationValue
Decode EnumerationValue
Encode EnumerationValue
```

#### `newEnumerationValue`

``` purescript
newEnumerationValue :: Value -> EnumerationValue
```

Constructs EnumerationValue from required parameters

#### `newEnumerationValue'`

``` purescript
newEnumerationValue' :: Value -> ({ value :: Value, synonyms :: Maybe (SynonymList) } -> { value :: Value, synonyms :: Maybe (SynonymList) }) -> EnumerationValue
```

Constructs EnumerationValue's fields from required parameters

#### `EnumerationValues`

``` purescript
newtype EnumerationValues
  = EnumerationValues (Array EnumerationValue)
```

##### Instances
``` purescript
Newtype EnumerationValues _
Generic EnumerationValues _
Show EnumerationValues
Decode EnumerationValues
Encode EnumerationValues
```

#### `ExportStatus`

``` purescript
newtype ExportStatus
  = ExportStatus String
```

##### Instances
``` purescript
Newtype ExportStatus _
Generic ExportStatus _
Show ExportStatus
Decode ExportStatus
Encode ExportStatus
```

#### `ExportType`

``` purescript
newtype ExportType
  = ExportType String
```

##### Instances
``` purescript
Newtype ExportType _
Generic ExportType _
Show ExportType
Decode ExportType
Encode ExportType
```

#### `FollowUpPrompt`

``` purescript
newtype FollowUpPrompt
  = FollowUpPrompt { prompt :: Prompt, rejectionStatement :: Statement }
```

<p>A prompt for additional activity after an intent is fulfilled. For example, after the <code>OrderPizza</code> intent is fulfilled, you might prompt the user to find out whether the user wants to order drinks.</p>

##### Instances
``` purescript
Newtype FollowUpPrompt _
Generic FollowUpPrompt _
Show FollowUpPrompt
Decode FollowUpPrompt
Encode FollowUpPrompt
```

#### `newFollowUpPrompt`

``` purescript
newFollowUpPrompt :: Prompt -> Statement -> FollowUpPrompt
```

Constructs FollowUpPrompt from required parameters

#### `newFollowUpPrompt'`

``` purescript
newFollowUpPrompt' :: Prompt -> Statement -> ({ prompt :: Prompt, rejectionStatement :: Statement } -> { prompt :: Prompt, rejectionStatement :: Statement }) -> FollowUpPrompt
```

Constructs FollowUpPrompt's fields from required parameters

#### `FulfillmentActivity`

``` purescript
newtype FulfillmentActivity
  = FulfillmentActivity { "type" :: FulfillmentActivityType, codeHook :: Maybe (CodeHook) }
```

<p> Describes how the intent is fulfilled after the user provides all of the information required for the intent. You can provide a Lambda function to process the intent, or you can return the intent information to the client application. We recommend that you use a Lambda function so that the relevant logic lives in the Cloud and limit the client-side code primarily to presentation. If you need to update the logic, you only update the Lambda function; you don't need to upgrade your client application. </p> <p>Consider the following examples:</p> <ul> <li> <p>In a pizza ordering application, after the user provides all of the information for placing an order, you use a Lambda function to place an order with a pizzeria. </p> </li> <li> <p>In a gaming application, when a user says "pick up a rock," this information must go back to the client application so that it can perform the operation and update the graphics. In this case, you want Amazon Lex to return the intent data to the client. </p> </li> </ul>

##### Instances
``` purescript
Newtype FulfillmentActivity _
Generic FulfillmentActivity _
Show FulfillmentActivity
Decode FulfillmentActivity
Encode FulfillmentActivity
```

#### `newFulfillmentActivity`

``` purescript
newFulfillmentActivity :: FulfillmentActivityType -> FulfillmentActivity
```

Constructs FulfillmentActivity from required parameters

#### `newFulfillmentActivity'`

``` purescript
newFulfillmentActivity' :: FulfillmentActivityType -> ({ "type" :: FulfillmentActivityType, codeHook :: Maybe (CodeHook) } -> { "type" :: FulfillmentActivityType, codeHook :: Maybe (CodeHook) }) -> FulfillmentActivity
```

Constructs FulfillmentActivity's fields from required parameters

#### `FulfillmentActivityType`

``` purescript
newtype FulfillmentActivityType
  = FulfillmentActivityType String
```

##### Instances
``` purescript
Newtype FulfillmentActivityType _
Generic FulfillmentActivityType _
Show FulfillmentActivityType
Decode FulfillmentActivityType
Encode FulfillmentActivityType
```

#### `GetBotAliasRequest`

``` purescript
newtype GetBotAliasRequest
  = GetBotAliasRequest { name :: AliasName, botName :: BotName }
```

##### Instances
``` purescript
Newtype GetBotAliasRequest _
Generic GetBotAliasRequest _
Show GetBotAliasRequest
Decode GetBotAliasRequest
Encode GetBotAliasRequest
```

#### `newGetBotAliasRequest`

``` purescript
newGetBotAliasRequest :: BotName -> AliasName -> GetBotAliasRequest
```

Constructs GetBotAliasRequest from required parameters

#### `newGetBotAliasRequest'`

``` purescript
newGetBotAliasRequest' :: BotName -> AliasName -> ({ name :: AliasName, botName :: BotName } -> { name :: AliasName, botName :: BotName }) -> GetBotAliasRequest
```

Constructs GetBotAliasRequest's fields from required parameters

#### `GetBotAliasResponse`

``` purescript
newtype GetBotAliasResponse
  = GetBotAliasResponse { name :: Maybe (AliasName), description :: Maybe (Description), botVersion :: Maybe (Version), botName :: Maybe (BotName), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), checksum :: Maybe (String) }
```

##### Instances
``` purescript
Newtype GetBotAliasResponse _
Generic GetBotAliasResponse _
Show GetBotAliasResponse
Decode GetBotAliasResponse
Encode GetBotAliasResponse
```

#### `newGetBotAliasResponse`

``` purescript
newGetBotAliasResponse :: GetBotAliasResponse
```

Constructs GetBotAliasResponse from required parameters

#### `newGetBotAliasResponse'`

``` purescript
newGetBotAliasResponse' :: ({ name :: Maybe (AliasName), description :: Maybe (Description), botVersion :: Maybe (Version), botName :: Maybe (BotName), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), checksum :: Maybe (String) } -> { name :: Maybe (AliasName), description :: Maybe (Description), botVersion :: Maybe (Version), botName :: Maybe (BotName), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), checksum :: Maybe (String) }) -> GetBotAliasResponse
```

Constructs GetBotAliasResponse's fields from required parameters

#### `GetBotAliasesRequest`

``` purescript
newtype GetBotAliasesRequest
  = GetBotAliasesRequest { botName :: BotName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (AliasName) }
```

##### Instances
``` purescript
Newtype GetBotAliasesRequest _
Generic GetBotAliasesRequest _
Show GetBotAliasesRequest
Decode GetBotAliasesRequest
Encode GetBotAliasesRequest
```

#### `newGetBotAliasesRequest`

``` purescript
newGetBotAliasesRequest :: BotName -> GetBotAliasesRequest
```

Constructs GetBotAliasesRequest from required parameters

#### `newGetBotAliasesRequest'`

``` purescript
newGetBotAliasesRequest' :: BotName -> ({ botName :: BotName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (AliasName) } -> { botName :: BotName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (AliasName) }) -> GetBotAliasesRequest
```

Constructs GetBotAliasesRequest's fields from required parameters

#### `GetBotAliasesResponse`

``` purescript
newtype GetBotAliasesResponse
  = GetBotAliasesResponse { "BotAliases" :: Maybe (BotAliasMetadataList), nextToken :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype GetBotAliasesResponse _
Generic GetBotAliasesResponse _
Show GetBotAliasesResponse
Decode GetBotAliasesResponse
Encode GetBotAliasesResponse
```

#### `newGetBotAliasesResponse`

``` purescript
newGetBotAliasesResponse :: GetBotAliasesResponse
```

Constructs GetBotAliasesResponse from required parameters

#### `newGetBotAliasesResponse'`

``` purescript
newGetBotAliasesResponse' :: ({ "BotAliases" :: Maybe (BotAliasMetadataList), nextToken :: Maybe (NextToken) } -> { "BotAliases" :: Maybe (BotAliasMetadataList), nextToken :: Maybe (NextToken) }) -> GetBotAliasesResponse
```

Constructs GetBotAliasesResponse's fields from required parameters

#### `GetBotChannelAssociationRequest`

``` purescript
newtype GetBotChannelAssociationRequest
  = GetBotChannelAssociationRequest { name :: BotChannelName, botName :: BotName, botAlias :: AliasName }
```

##### Instances
``` purescript
Newtype GetBotChannelAssociationRequest _
Generic GetBotChannelAssociationRequest _
Show GetBotChannelAssociationRequest
Decode GetBotChannelAssociationRequest
Encode GetBotChannelAssociationRequest
```

#### `newGetBotChannelAssociationRequest`

``` purescript
newGetBotChannelAssociationRequest :: AliasName -> BotName -> BotChannelName -> GetBotChannelAssociationRequest
```

Constructs GetBotChannelAssociationRequest from required parameters

#### `newGetBotChannelAssociationRequest'`

``` purescript
newGetBotChannelAssociationRequest' :: AliasName -> BotName -> BotChannelName -> ({ name :: BotChannelName, botName :: BotName, botAlias :: AliasName } -> { name :: BotChannelName, botName :: BotName, botAlias :: AliasName }) -> GetBotChannelAssociationRequest
```

Constructs GetBotChannelAssociationRequest's fields from required parameters

#### `GetBotChannelAssociationResponse`

``` purescript
newtype GetBotChannelAssociationResponse
  = GetBotChannelAssociationResponse { name :: Maybe (BotChannelName), description :: Maybe (Description), botAlias :: Maybe (AliasName), botName :: Maybe (BotName), createdDate :: Maybe (Timestamp), "type" :: Maybe (ChannelType), botConfiguration :: Maybe (ChannelConfigurationMap), status :: Maybe (ChannelStatus), failureReason :: Maybe (String) }
```

##### Instances
``` purescript
Newtype GetBotChannelAssociationResponse _
Generic GetBotChannelAssociationResponse _
Show GetBotChannelAssociationResponse
Decode GetBotChannelAssociationResponse
Encode GetBotChannelAssociationResponse
```

#### `newGetBotChannelAssociationResponse`

``` purescript
newGetBotChannelAssociationResponse :: GetBotChannelAssociationResponse
```

Constructs GetBotChannelAssociationResponse from required parameters

#### `newGetBotChannelAssociationResponse'`

``` purescript
newGetBotChannelAssociationResponse' :: ({ name :: Maybe (BotChannelName), description :: Maybe (Description), botAlias :: Maybe (AliasName), botName :: Maybe (BotName), createdDate :: Maybe (Timestamp), "type" :: Maybe (ChannelType), botConfiguration :: Maybe (ChannelConfigurationMap), status :: Maybe (ChannelStatus), failureReason :: Maybe (String) } -> { name :: Maybe (BotChannelName), description :: Maybe (Description), botAlias :: Maybe (AliasName), botName :: Maybe (BotName), createdDate :: Maybe (Timestamp), "type" :: Maybe (ChannelType), botConfiguration :: Maybe (ChannelConfigurationMap), status :: Maybe (ChannelStatus), failureReason :: Maybe (String) }) -> GetBotChannelAssociationResponse
```

Constructs GetBotChannelAssociationResponse's fields from required parameters

#### `GetBotChannelAssociationsRequest`

``` purescript
newtype GetBotChannelAssociationsRequest
  = GetBotChannelAssociationsRequest { botName :: BotName, botAlias :: AliasNameOrListAll, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (BotChannelName) }
```

##### Instances
``` purescript
Newtype GetBotChannelAssociationsRequest _
Generic GetBotChannelAssociationsRequest _
Show GetBotChannelAssociationsRequest
Decode GetBotChannelAssociationsRequest
Encode GetBotChannelAssociationsRequest
```

#### `newGetBotChannelAssociationsRequest`

``` purescript
newGetBotChannelAssociationsRequest :: AliasNameOrListAll -> BotName -> GetBotChannelAssociationsRequest
```

Constructs GetBotChannelAssociationsRequest from required parameters

#### `newGetBotChannelAssociationsRequest'`

``` purescript
newGetBotChannelAssociationsRequest' :: AliasNameOrListAll -> BotName -> ({ botName :: BotName, botAlias :: AliasNameOrListAll, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (BotChannelName) } -> { botName :: BotName, botAlias :: AliasNameOrListAll, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (BotChannelName) }) -> GetBotChannelAssociationsRequest
```

Constructs GetBotChannelAssociationsRequest's fields from required parameters

#### `GetBotChannelAssociationsResponse`

``` purescript
newtype GetBotChannelAssociationsResponse
  = GetBotChannelAssociationsResponse { botChannelAssociations :: Maybe (BotChannelAssociationList), nextToken :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype GetBotChannelAssociationsResponse _
Generic GetBotChannelAssociationsResponse _
Show GetBotChannelAssociationsResponse
Decode GetBotChannelAssociationsResponse
Encode GetBotChannelAssociationsResponse
```

#### `newGetBotChannelAssociationsResponse`

``` purescript
newGetBotChannelAssociationsResponse :: GetBotChannelAssociationsResponse
```

Constructs GetBotChannelAssociationsResponse from required parameters

#### `newGetBotChannelAssociationsResponse'`

``` purescript
newGetBotChannelAssociationsResponse' :: ({ botChannelAssociations :: Maybe (BotChannelAssociationList), nextToken :: Maybe (NextToken) } -> { botChannelAssociations :: Maybe (BotChannelAssociationList), nextToken :: Maybe (NextToken) }) -> GetBotChannelAssociationsResponse
```

Constructs GetBotChannelAssociationsResponse's fields from required parameters

#### `GetBotRequest`

``` purescript
newtype GetBotRequest
  = GetBotRequest { name :: BotName, versionOrAlias :: String }
```

##### Instances
``` purescript
Newtype GetBotRequest _
Generic GetBotRequest _
Show GetBotRequest
Decode GetBotRequest
Encode GetBotRequest
```

#### `newGetBotRequest`

``` purescript
newGetBotRequest :: BotName -> String -> GetBotRequest
```

Constructs GetBotRequest from required parameters

#### `newGetBotRequest'`

``` purescript
newGetBotRequest' :: BotName -> String -> ({ name :: BotName, versionOrAlias :: String } -> { name :: BotName, versionOrAlias :: String }) -> GetBotRequest
```

Constructs GetBotRequest's fields from required parameters

#### `GetBotResponse`

``` purescript
newtype GetBotResponse
  = GetBotResponse { name :: Maybe (BotName), description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), status :: Maybe (Status), failureReason :: Maybe (String), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), version :: Maybe (Version), locale :: Maybe (Locale), childDirected :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype GetBotResponse _
Generic GetBotResponse _
Show GetBotResponse
Decode GetBotResponse
Encode GetBotResponse
```

#### `newGetBotResponse`

``` purescript
newGetBotResponse :: GetBotResponse
```

Constructs GetBotResponse from required parameters

#### `newGetBotResponse'`

``` purescript
newGetBotResponse' :: ({ name :: Maybe (BotName), description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), status :: Maybe (Status), failureReason :: Maybe (String), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), version :: Maybe (Version), locale :: Maybe (Locale), childDirected :: Maybe (Boolean) } -> { name :: Maybe (BotName), description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), status :: Maybe (Status), failureReason :: Maybe (String), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), version :: Maybe (Version), locale :: Maybe (Locale), childDirected :: Maybe (Boolean) }) -> GetBotResponse
```

Constructs GetBotResponse's fields from required parameters

#### `GetBotVersionsRequest`

``` purescript
newtype GetBotVersionsRequest
  = GetBotVersionsRequest { name :: BotName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype GetBotVersionsRequest _
Generic GetBotVersionsRequest _
Show GetBotVersionsRequest
Decode GetBotVersionsRequest
Encode GetBotVersionsRequest
```

#### `newGetBotVersionsRequest`

``` purescript
newGetBotVersionsRequest :: BotName -> GetBotVersionsRequest
```

Constructs GetBotVersionsRequest from required parameters

#### `newGetBotVersionsRequest'`

``` purescript
newGetBotVersionsRequest' :: BotName -> ({ name :: BotName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) } -> { name :: BotName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }) -> GetBotVersionsRequest
```

Constructs GetBotVersionsRequest's fields from required parameters

#### `GetBotVersionsResponse`

``` purescript
newtype GetBotVersionsResponse
  = GetBotVersionsResponse { bots :: Maybe (BotMetadataList), nextToken :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype GetBotVersionsResponse _
Generic GetBotVersionsResponse _
Show GetBotVersionsResponse
Decode GetBotVersionsResponse
Encode GetBotVersionsResponse
```

#### `newGetBotVersionsResponse`

``` purescript
newGetBotVersionsResponse :: GetBotVersionsResponse
```

Constructs GetBotVersionsResponse from required parameters

#### `newGetBotVersionsResponse'`

``` purescript
newGetBotVersionsResponse' :: ({ bots :: Maybe (BotMetadataList), nextToken :: Maybe (NextToken) } -> { bots :: Maybe (BotMetadataList), nextToken :: Maybe (NextToken) }) -> GetBotVersionsResponse
```

Constructs GetBotVersionsResponse's fields from required parameters

#### `GetBotsRequest`

``` purescript
newtype GetBotsRequest
  = GetBotsRequest { nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (BotName) }
```

##### Instances
``` purescript
Newtype GetBotsRequest _
Generic GetBotsRequest _
Show GetBotsRequest
Decode GetBotsRequest
Encode GetBotsRequest
```

#### `newGetBotsRequest`

``` purescript
newGetBotsRequest :: GetBotsRequest
```

Constructs GetBotsRequest from required parameters

#### `newGetBotsRequest'`

``` purescript
newGetBotsRequest' :: ({ nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (BotName) } -> { nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (BotName) }) -> GetBotsRequest
```

Constructs GetBotsRequest's fields from required parameters

#### `GetBotsResponse`

``` purescript
newtype GetBotsResponse
  = GetBotsResponse { bots :: Maybe (BotMetadataList), nextToken :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype GetBotsResponse _
Generic GetBotsResponse _
Show GetBotsResponse
Decode GetBotsResponse
Encode GetBotsResponse
```

#### `newGetBotsResponse`

``` purescript
newGetBotsResponse :: GetBotsResponse
```

Constructs GetBotsResponse from required parameters

#### `newGetBotsResponse'`

``` purescript
newGetBotsResponse' :: ({ bots :: Maybe (BotMetadataList), nextToken :: Maybe (NextToken) } -> { bots :: Maybe (BotMetadataList), nextToken :: Maybe (NextToken) }) -> GetBotsResponse
```

Constructs GetBotsResponse's fields from required parameters

#### `GetBuiltinIntentRequest`

``` purescript
newtype GetBuiltinIntentRequest
  = GetBuiltinIntentRequest { signature :: BuiltinIntentSignature }
```

##### Instances
``` purescript
Newtype GetBuiltinIntentRequest _
Generic GetBuiltinIntentRequest _
Show GetBuiltinIntentRequest
Decode GetBuiltinIntentRequest
Encode GetBuiltinIntentRequest
```

#### `newGetBuiltinIntentRequest`

``` purescript
newGetBuiltinIntentRequest :: BuiltinIntentSignature -> GetBuiltinIntentRequest
```

Constructs GetBuiltinIntentRequest from required parameters

#### `newGetBuiltinIntentRequest'`

``` purescript
newGetBuiltinIntentRequest' :: BuiltinIntentSignature -> ({ signature :: BuiltinIntentSignature } -> { signature :: BuiltinIntentSignature }) -> GetBuiltinIntentRequest
```

Constructs GetBuiltinIntentRequest's fields from required parameters

#### `GetBuiltinIntentResponse`

``` purescript
newtype GetBuiltinIntentResponse
  = GetBuiltinIntentResponse { signature :: Maybe (BuiltinIntentSignature), supportedLocales :: Maybe (LocaleList), slots :: Maybe (BuiltinIntentSlotList) }
```

##### Instances
``` purescript
Newtype GetBuiltinIntentResponse _
Generic GetBuiltinIntentResponse _
Show GetBuiltinIntentResponse
Decode GetBuiltinIntentResponse
Encode GetBuiltinIntentResponse
```

#### `newGetBuiltinIntentResponse`

``` purescript
newGetBuiltinIntentResponse :: GetBuiltinIntentResponse
```

Constructs GetBuiltinIntentResponse from required parameters

#### `newGetBuiltinIntentResponse'`

``` purescript
newGetBuiltinIntentResponse' :: ({ signature :: Maybe (BuiltinIntentSignature), supportedLocales :: Maybe (LocaleList), slots :: Maybe (BuiltinIntentSlotList) } -> { signature :: Maybe (BuiltinIntentSignature), supportedLocales :: Maybe (LocaleList), slots :: Maybe (BuiltinIntentSlotList) }) -> GetBuiltinIntentResponse
```

Constructs GetBuiltinIntentResponse's fields from required parameters

#### `GetBuiltinIntentsRequest`

``` purescript
newtype GetBuiltinIntentsRequest
  = GetBuiltinIntentsRequest { locale :: Maybe (Locale), signatureContains :: Maybe (String), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype GetBuiltinIntentsRequest _
Generic GetBuiltinIntentsRequest _
Show GetBuiltinIntentsRequest
Decode GetBuiltinIntentsRequest
Encode GetBuiltinIntentsRequest
```

#### `newGetBuiltinIntentsRequest`

``` purescript
newGetBuiltinIntentsRequest :: GetBuiltinIntentsRequest
```

Constructs GetBuiltinIntentsRequest from required parameters

#### `newGetBuiltinIntentsRequest'`

``` purescript
newGetBuiltinIntentsRequest' :: ({ locale :: Maybe (Locale), signatureContains :: Maybe (String), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) } -> { locale :: Maybe (Locale), signatureContains :: Maybe (String), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }) -> GetBuiltinIntentsRequest
```

Constructs GetBuiltinIntentsRequest's fields from required parameters

#### `GetBuiltinIntentsResponse`

``` purescript
newtype GetBuiltinIntentsResponse
  = GetBuiltinIntentsResponse { intents :: Maybe (BuiltinIntentMetadataList), nextToken :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype GetBuiltinIntentsResponse _
Generic GetBuiltinIntentsResponse _
Show GetBuiltinIntentsResponse
Decode GetBuiltinIntentsResponse
Encode GetBuiltinIntentsResponse
```

#### `newGetBuiltinIntentsResponse`

``` purescript
newGetBuiltinIntentsResponse :: GetBuiltinIntentsResponse
```

Constructs GetBuiltinIntentsResponse from required parameters

#### `newGetBuiltinIntentsResponse'`

``` purescript
newGetBuiltinIntentsResponse' :: ({ intents :: Maybe (BuiltinIntentMetadataList), nextToken :: Maybe (NextToken) } -> { intents :: Maybe (BuiltinIntentMetadataList), nextToken :: Maybe (NextToken) }) -> GetBuiltinIntentsResponse
```

Constructs GetBuiltinIntentsResponse's fields from required parameters

#### `GetBuiltinSlotTypesRequest`

``` purescript
newtype GetBuiltinSlotTypesRequest
  = GetBuiltinSlotTypesRequest { locale :: Maybe (Locale), signatureContains :: Maybe (String), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype GetBuiltinSlotTypesRequest _
Generic GetBuiltinSlotTypesRequest _
Show GetBuiltinSlotTypesRequest
Decode GetBuiltinSlotTypesRequest
Encode GetBuiltinSlotTypesRequest
```

#### `newGetBuiltinSlotTypesRequest`

``` purescript
newGetBuiltinSlotTypesRequest :: GetBuiltinSlotTypesRequest
```

Constructs GetBuiltinSlotTypesRequest from required parameters

#### `newGetBuiltinSlotTypesRequest'`

``` purescript
newGetBuiltinSlotTypesRequest' :: ({ locale :: Maybe (Locale), signatureContains :: Maybe (String), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) } -> { locale :: Maybe (Locale), signatureContains :: Maybe (String), nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }) -> GetBuiltinSlotTypesRequest
```

Constructs GetBuiltinSlotTypesRequest's fields from required parameters

#### `GetBuiltinSlotTypesResponse`

``` purescript
newtype GetBuiltinSlotTypesResponse
  = GetBuiltinSlotTypesResponse { slotTypes :: Maybe (BuiltinSlotTypeMetadataList), nextToken :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype GetBuiltinSlotTypesResponse _
Generic GetBuiltinSlotTypesResponse _
Show GetBuiltinSlotTypesResponse
Decode GetBuiltinSlotTypesResponse
Encode GetBuiltinSlotTypesResponse
```

#### `newGetBuiltinSlotTypesResponse`

``` purescript
newGetBuiltinSlotTypesResponse :: GetBuiltinSlotTypesResponse
```

Constructs GetBuiltinSlotTypesResponse from required parameters

#### `newGetBuiltinSlotTypesResponse'`

``` purescript
newGetBuiltinSlotTypesResponse' :: ({ slotTypes :: Maybe (BuiltinSlotTypeMetadataList), nextToken :: Maybe (NextToken) } -> { slotTypes :: Maybe (BuiltinSlotTypeMetadataList), nextToken :: Maybe (NextToken) }) -> GetBuiltinSlotTypesResponse
```

Constructs GetBuiltinSlotTypesResponse's fields from required parameters

#### `GetExportRequest`

``` purescript
newtype GetExportRequest
  = GetExportRequest { name :: Name, version :: NumericalVersion, resourceType :: ResourceType, exportType :: ExportType }
```

##### Instances
``` purescript
Newtype GetExportRequest _
Generic GetExportRequest _
Show GetExportRequest
Decode GetExportRequest
Encode GetExportRequest
```

#### `newGetExportRequest`

``` purescript
newGetExportRequest :: ExportType -> Name -> ResourceType -> NumericalVersion -> GetExportRequest
```

Constructs GetExportRequest from required parameters

#### `newGetExportRequest'`

``` purescript
newGetExportRequest' :: ExportType -> Name -> ResourceType -> NumericalVersion -> ({ name :: Name, version :: NumericalVersion, resourceType :: ResourceType, exportType :: ExportType } -> { name :: Name, version :: NumericalVersion, resourceType :: ResourceType, exportType :: ExportType }) -> GetExportRequest
```

Constructs GetExportRequest's fields from required parameters

#### `GetExportResponse`

``` purescript
newtype GetExportResponse
  = GetExportResponse { name :: Maybe (Name), version :: Maybe (NumericalVersion), resourceType :: Maybe (ResourceType), exportType :: Maybe (ExportType), exportStatus :: Maybe (ExportStatus), failureReason :: Maybe (String), url :: Maybe (String) }
```

##### Instances
``` purescript
Newtype GetExportResponse _
Generic GetExportResponse _
Show GetExportResponse
Decode GetExportResponse
Encode GetExportResponse
```

#### `newGetExportResponse`

``` purescript
newGetExportResponse :: GetExportResponse
```

Constructs GetExportResponse from required parameters

#### `newGetExportResponse'`

``` purescript
newGetExportResponse' :: ({ name :: Maybe (Name), version :: Maybe (NumericalVersion), resourceType :: Maybe (ResourceType), exportType :: Maybe (ExportType), exportStatus :: Maybe (ExportStatus), failureReason :: Maybe (String), url :: Maybe (String) } -> { name :: Maybe (Name), version :: Maybe (NumericalVersion), resourceType :: Maybe (ResourceType), exportType :: Maybe (ExportType), exportStatus :: Maybe (ExportStatus), failureReason :: Maybe (String), url :: Maybe (String) }) -> GetExportResponse
```

Constructs GetExportResponse's fields from required parameters

#### `GetImportRequest`

``` purescript
newtype GetImportRequest
  = GetImportRequest { importId :: String }
```

##### Instances
``` purescript
Newtype GetImportRequest _
Generic GetImportRequest _
Show GetImportRequest
Decode GetImportRequest
Encode GetImportRequest
```

#### `newGetImportRequest`

``` purescript
newGetImportRequest :: String -> GetImportRequest
```

Constructs GetImportRequest from required parameters

#### `newGetImportRequest'`

``` purescript
newGetImportRequest' :: String -> ({ importId :: String } -> { importId :: String }) -> GetImportRequest
```

Constructs GetImportRequest's fields from required parameters

#### `GetImportResponse`

``` purescript
newtype GetImportResponse
  = GetImportResponse { name :: Maybe (Name), resourceType :: Maybe (ResourceType), mergeStrategy :: Maybe (MergeStrategy), importId :: Maybe (String), importStatus :: Maybe (ImportStatus), failureReason :: Maybe (StringList), createdDate :: Maybe (Timestamp) }
```

##### Instances
``` purescript
Newtype GetImportResponse _
Generic GetImportResponse _
Show GetImportResponse
Decode GetImportResponse
Encode GetImportResponse
```

#### `newGetImportResponse`

``` purescript
newGetImportResponse :: GetImportResponse
```

Constructs GetImportResponse from required parameters

#### `newGetImportResponse'`

``` purescript
newGetImportResponse' :: ({ name :: Maybe (Name), resourceType :: Maybe (ResourceType), mergeStrategy :: Maybe (MergeStrategy), importId :: Maybe (String), importStatus :: Maybe (ImportStatus), failureReason :: Maybe (StringList), createdDate :: Maybe (Timestamp) } -> { name :: Maybe (Name), resourceType :: Maybe (ResourceType), mergeStrategy :: Maybe (MergeStrategy), importId :: Maybe (String), importStatus :: Maybe (ImportStatus), failureReason :: Maybe (StringList), createdDate :: Maybe (Timestamp) }) -> GetImportResponse
```

Constructs GetImportResponse's fields from required parameters

#### `GetIntentRequest`

``` purescript
newtype GetIntentRequest
  = GetIntentRequest { name :: IntentName, version :: Version }
```

##### Instances
``` purescript
Newtype GetIntentRequest _
Generic GetIntentRequest _
Show GetIntentRequest
Decode GetIntentRequest
Encode GetIntentRequest
```

#### `newGetIntentRequest`

``` purescript
newGetIntentRequest :: IntentName -> Version -> GetIntentRequest
```

Constructs GetIntentRequest from required parameters

#### `newGetIntentRequest'`

``` purescript
newGetIntentRequest' :: IntentName -> Version -> ({ name :: IntentName, version :: Version } -> { name :: IntentName, version :: Version }) -> GetIntentRequest
```

Constructs GetIntentRequest's fields from required parameters

#### `GetIntentResponse`

``` purescript
newtype GetIntentResponse
  = GetIntentResponse { name :: Maybe (IntentName), description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String) }
```

##### Instances
``` purescript
Newtype GetIntentResponse _
Generic GetIntentResponse _
Show GetIntentResponse
Decode GetIntentResponse
Encode GetIntentResponse
```

#### `newGetIntentResponse`

``` purescript
newGetIntentResponse :: GetIntentResponse
```

Constructs GetIntentResponse from required parameters

#### `newGetIntentResponse'`

``` purescript
newGetIntentResponse' :: ({ name :: Maybe (IntentName), description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String) } -> { name :: Maybe (IntentName), description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String) }) -> GetIntentResponse
```

Constructs GetIntentResponse's fields from required parameters

#### `GetIntentVersionsRequest`

``` purescript
newtype GetIntentVersionsRequest
  = GetIntentVersionsRequest { name :: IntentName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype GetIntentVersionsRequest _
Generic GetIntentVersionsRequest _
Show GetIntentVersionsRequest
Decode GetIntentVersionsRequest
Encode GetIntentVersionsRequest
```

#### `newGetIntentVersionsRequest`

``` purescript
newGetIntentVersionsRequest :: IntentName -> GetIntentVersionsRequest
```

Constructs GetIntentVersionsRequest from required parameters

#### `newGetIntentVersionsRequest'`

``` purescript
newGetIntentVersionsRequest' :: IntentName -> ({ name :: IntentName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) } -> { name :: IntentName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }) -> GetIntentVersionsRequest
```

Constructs GetIntentVersionsRequest's fields from required parameters

#### `GetIntentVersionsResponse`

``` purescript
newtype GetIntentVersionsResponse
  = GetIntentVersionsResponse { intents :: Maybe (IntentMetadataList), nextToken :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype GetIntentVersionsResponse _
Generic GetIntentVersionsResponse _
Show GetIntentVersionsResponse
Decode GetIntentVersionsResponse
Encode GetIntentVersionsResponse
```

#### `newGetIntentVersionsResponse`

``` purescript
newGetIntentVersionsResponse :: GetIntentVersionsResponse
```

Constructs GetIntentVersionsResponse from required parameters

#### `newGetIntentVersionsResponse'`

``` purescript
newGetIntentVersionsResponse' :: ({ intents :: Maybe (IntentMetadataList), nextToken :: Maybe (NextToken) } -> { intents :: Maybe (IntentMetadataList), nextToken :: Maybe (NextToken) }) -> GetIntentVersionsResponse
```

Constructs GetIntentVersionsResponse's fields from required parameters

#### `GetIntentsRequest`

``` purescript
newtype GetIntentsRequest
  = GetIntentsRequest { nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (IntentName) }
```

##### Instances
``` purescript
Newtype GetIntentsRequest _
Generic GetIntentsRequest _
Show GetIntentsRequest
Decode GetIntentsRequest
Encode GetIntentsRequest
```

#### `newGetIntentsRequest`

``` purescript
newGetIntentsRequest :: GetIntentsRequest
```

Constructs GetIntentsRequest from required parameters

#### `newGetIntentsRequest'`

``` purescript
newGetIntentsRequest' :: ({ nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (IntentName) } -> { nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (IntentName) }) -> GetIntentsRequest
```

Constructs GetIntentsRequest's fields from required parameters

#### `GetIntentsResponse`

``` purescript
newtype GetIntentsResponse
  = GetIntentsResponse { intents :: Maybe (IntentMetadataList), nextToken :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype GetIntentsResponse _
Generic GetIntentsResponse _
Show GetIntentsResponse
Decode GetIntentsResponse
Encode GetIntentsResponse
```

#### `newGetIntentsResponse`

``` purescript
newGetIntentsResponse :: GetIntentsResponse
```

Constructs GetIntentsResponse from required parameters

#### `newGetIntentsResponse'`

``` purescript
newGetIntentsResponse' :: ({ intents :: Maybe (IntentMetadataList), nextToken :: Maybe (NextToken) } -> { intents :: Maybe (IntentMetadataList), nextToken :: Maybe (NextToken) }) -> GetIntentsResponse
```

Constructs GetIntentsResponse's fields from required parameters

#### `GetSlotTypeRequest`

``` purescript
newtype GetSlotTypeRequest
  = GetSlotTypeRequest { name :: SlotTypeName, version :: Version }
```

##### Instances
``` purescript
Newtype GetSlotTypeRequest _
Generic GetSlotTypeRequest _
Show GetSlotTypeRequest
Decode GetSlotTypeRequest
Encode GetSlotTypeRequest
```

#### `newGetSlotTypeRequest`

``` purescript
newGetSlotTypeRequest :: SlotTypeName -> Version -> GetSlotTypeRequest
```

Constructs GetSlotTypeRequest from required parameters

#### `newGetSlotTypeRequest'`

``` purescript
newGetSlotTypeRequest' :: SlotTypeName -> Version -> ({ name :: SlotTypeName, version :: Version } -> { name :: SlotTypeName, version :: Version }) -> GetSlotTypeRequest
```

Constructs GetSlotTypeRequest's fields from required parameters

#### `GetSlotTypeResponse`

``` purescript
newtype GetSlotTypeResponse
  = GetSlotTypeResponse { name :: Maybe (SlotTypeName), description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy) }
```

##### Instances
``` purescript
Newtype GetSlotTypeResponse _
Generic GetSlotTypeResponse _
Show GetSlotTypeResponse
Decode GetSlotTypeResponse
Encode GetSlotTypeResponse
```

#### `newGetSlotTypeResponse`

``` purescript
newGetSlotTypeResponse :: GetSlotTypeResponse
```

Constructs GetSlotTypeResponse from required parameters

#### `newGetSlotTypeResponse'`

``` purescript
newGetSlotTypeResponse' :: ({ name :: Maybe (SlotTypeName), description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy) } -> { name :: Maybe (SlotTypeName), description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy) }) -> GetSlotTypeResponse
```

Constructs GetSlotTypeResponse's fields from required parameters

#### `GetSlotTypeVersionsRequest`

``` purescript
newtype GetSlotTypeVersionsRequest
  = GetSlotTypeVersionsRequest { name :: SlotTypeName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype GetSlotTypeVersionsRequest _
Generic GetSlotTypeVersionsRequest _
Show GetSlotTypeVersionsRequest
Decode GetSlotTypeVersionsRequest
Encode GetSlotTypeVersionsRequest
```

#### `newGetSlotTypeVersionsRequest`

``` purescript
newGetSlotTypeVersionsRequest :: SlotTypeName -> GetSlotTypeVersionsRequest
```

Constructs GetSlotTypeVersionsRequest from required parameters

#### `newGetSlotTypeVersionsRequest'`

``` purescript
newGetSlotTypeVersionsRequest' :: SlotTypeName -> ({ name :: SlotTypeName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) } -> { name :: SlotTypeName, nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults) }) -> GetSlotTypeVersionsRequest
```

Constructs GetSlotTypeVersionsRequest's fields from required parameters

#### `GetSlotTypeVersionsResponse`

``` purescript
newtype GetSlotTypeVersionsResponse
  = GetSlotTypeVersionsResponse { slotTypes :: Maybe (SlotTypeMetadataList), nextToken :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype GetSlotTypeVersionsResponse _
Generic GetSlotTypeVersionsResponse _
Show GetSlotTypeVersionsResponse
Decode GetSlotTypeVersionsResponse
Encode GetSlotTypeVersionsResponse
```

#### `newGetSlotTypeVersionsResponse`

``` purescript
newGetSlotTypeVersionsResponse :: GetSlotTypeVersionsResponse
```

Constructs GetSlotTypeVersionsResponse from required parameters

#### `newGetSlotTypeVersionsResponse'`

``` purescript
newGetSlotTypeVersionsResponse' :: ({ slotTypes :: Maybe (SlotTypeMetadataList), nextToken :: Maybe (NextToken) } -> { slotTypes :: Maybe (SlotTypeMetadataList), nextToken :: Maybe (NextToken) }) -> GetSlotTypeVersionsResponse
```

Constructs GetSlotTypeVersionsResponse's fields from required parameters

#### `GetSlotTypesRequest`

``` purescript
newtype GetSlotTypesRequest
  = GetSlotTypesRequest { nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (SlotTypeName) }
```

##### Instances
``` purescript
Newtype GetSlotTypesRequest _
Generic GetSlotTypesRequest _
Show GetSlotTypesRequest
Decode GetSlotTypesRequest
Encode GetSlotTypesRequest
```

#### `newGetSlotTypesRequest`

``` purescript
newGetSlotTypesRequest :: GetSlotTypesRequest
```

Constructs GetSlotTypesRequest from required parameters

#### `newGetSlotTypesRequest'`

``` purescript
newGetSlotTypesRequest' :: ({ nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (SlotTypeName) } -> { nextToken :: Maybe (NextToken), maxResults :: Maybe (MaxResults), nameContains :: Maybe (SlotTypeName) }) -> GetSlotTypesRequest
```

Constructs GetSlotTypesRequest's fields from required parameters

#### `GetSlotTypesResponse`

``` purescript
newtype GetSlotTypesResponse
  = GetSlotTypesResponse { slotTypes :: Maybe (SlotTypeMetadataList), nextToken :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype GetSlotTypesResponse _
Generic GetSlotTypesResponse _
Show GetSlotTypesResponse
Decode GetSlotTypesResponse
Encode GetSlotTypesResponse
```

#### `newGetSlotTypesResponse`

``` purescript
newGetSlotTypesResponse :: GetSlotTypesResponse
```

Constructs GetSlotTypesResponse from required parameters

#### `newGetSlotTypesResponse'`

``` purescript
newGetSlotTypesResponse' :: ({ slotTypes :: Maybe (SlotTypeMetadataList), nextToken :: Maybe (NextToken) } -> { slotTypes :: Maybe (SlotTypeMetadataList), nextToken :: Maybe (NextToken) }) -> GetSlotTypesResponse
```

Constructs GetSlotTypesResponse's fields from required parameters

#### `GetUtterancesViewRequest`

``` purescript
newtype GetUtterancesViewRequest
  = GetUtterancesViewRequest { botName :: BotName, botVersions :: BotVersions, statusType :: StatusType }
```

##### Instances
``` purescript
Newtype GetUtterancesViewRequest _
Generic GetUtterancesViewRequest _
Show GetUtterancesViewRequest
Decode GetUtterancesViewRequest
Encode GetUtterancesViewRequest
```

#### `newGetUtterancesViewRequest`

``` purescript
newGetUtterancesViewRequest :: BotName -> BotVersions -> StatusType -> GetUtterancesViewRequest
```

Constructs GetUtterancesViewRequest from required parameters

#### `newGetUtterancesViewRequest'`

``` purescript
newGetUtterancesViewRequest' :: BotName -> BotVersions -> StatusType -> ({ botName :: BotName, botVersions :: BotVersions, statusType :: StatusType } -> { botName :: BotName, botVersions :: BotVersions, statusType :: StatusType }) -> GetUtterancesViewRequest
```

Constructs GetUtterancesViewRequest's fields from required parameters

#### `GetUtterancesViewResponse`

``` purescript
newtype GetUtterancesViewResponse
  = GetUtterancesViewResponse { botName :: Maybe (BotName), utterances :: Maybe (ListsOfUtterances) }
```

##### Instances
``` purescript
Newtype GetUtterancesViewResponse _
Generic GetUtterancesViewResponse _
Show GetUtterancesViewResponse
Decode GetUtterancesViewResponse
Encode GetUtterancesViewResponse
```

#### `newGetUtterancesViewResponse`

``` purescript
newGetUtterancesViewResponse :: GetUtterancesViewResponse
```

Constructs GetUtterancesViewResponse from required parameters

#### `newGetUtterancesViewResponse'`

``` purescript
newGetUtterancesViewResponse' :: ({ botName :: Maybe (BotName), utterances :: Maybe (ListsOfUtterances) } -> { botName :: Maybe (BotName), utterances :: Maybe (ListsOfUtterances) }) -> GetUtterancesViewResponse
```

Constructs GetUtterancesViewResponse's fields from required parameters

#### `GroupNumber`

``` purescript
newtype GroupNumber
  = GroupNumber Int
```

##### Instances
``` purescript
Newtype GroupNumber _
Generic GroupNumber _
Show GroupNumber
Decode GroupNumber
Encode GroupNumber
```

#### `ImportStatus`

``` purescript
newtype ImportStatus
  = ImportStatus String
```

##### Instances
``` purescript
Newtype ImportStatus _
Generic ImportStatus _
Show ImportStatus
Decode ImportStatus
Encode ImportStatus
```

#### `Intent`

``` purescript
newtype Intent
  = Intent { intentName :: IntentName, intentVersion :: Version }
```

<p>Identifies the specific version of an intent.</p>

##### Instances
``` purescript
Newtype Intent _
Generic Intent _
Show Intent
Decode Intent
Encode Intent
```

#### `newIntent`

``` purescript
newIntent :: IntentName -> Version -> Intent
```

Constructs Intent from required parameters

#### `newIntent'`

``` purescript
newIntent' :: IntentName -> Version -> ({ intentName :: IntentName, intentVersion :: Version } -> { intentName :: IntentName, intentVersion :: Version }) -> Intent
```

Constructs Intent's fields from required parameters

#### `IntentList`

``` purescript
newtype IntentList
  = IntentList (Array Intent)
```

##### Instances
``` purescript
Newtype IntentList _
Generic IntentList _
Show IntentList
Decode IntentList
Encode IntentList
```

#### `IntentMetadata`

``` purescript
newtype IntentMetadata
  = IntentMetadata { name :: Maybe (IntentName), description :: Maybe (Description), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version) }
```

<p>Provides information about an intent.</p>

##### Instances
``` purescript
Newtype IntentMetadata _
Generic IntentMetadata _
Show IntentMetadata
Decode IntentMetadata
Encode IntentMetadata
```

#### `newIntentMetadata`

``` purescript
newIntentMetadata :: IntentMetadata
```

Constructs IntentMetadata from required parameters

#### `newIntentMetadata'`

``` purescript
newIntentMetadata' :: ({ name :: Maybe (IntentName), description :: Maybe (Description), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version) } -> { name :: Maybe (IntentName), description :: Maybe (Description), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version) }) -> IntentMetadata
```

Constructs IntentMetadata's fields from required parameters

#### `IntentMetadataList`

``` purescript
newtype IntentMetadataList
  = IntentMetadataList (Array IntentMetadata)
```

##### Instances
``` purescript
Newtype IntentMetadataList _
Generic IntentMetadataList _
Show IntentMetadataList
Decode IntentMetadataList
Encode IntentMetadataList
```

#### `IntentName`

``` purescript
newtype IntentName
  = IntentName String
```

##### Instances
``` purescript
Newtype IntentName _
Generic IntentName _
Show IntentName
Decode IntentName
Encode IntentName
```

#### `IntentUtteranceList`

``` purescript
newtype IntentUtteranceList
  = IntentUtteranceList (Array Utterance)
```

##### Instances
``` purescript
Newtype IntentUtteranceList _
Generic IntentUtteranceList _
Show IntentUtteranceList
Decode IntentUtteranceList
Encode IntentUtteranceList
```

#### `InternalFailureException`

``` purescript
newtype InternalFailureException
  = InternalFailureException { message :: Maybe (String) }
```

<p>An internal Amazon Lex error occurred. Try your request again.</p>

##### Instances
``` purescript
Newtype InternalFailureException _
Generic InternalFailureException _
Show InternalFailureException
Decode InternalFailureException
Encode InternalFailureException
```

#### `newInternalFailureException`

``` purescript
newInternalFailureException :: InternalFailureException
```

Constructs InternalFailureException from required parameters

#### `newInternalFailureException'`

``` purescript
newInternalFailureException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> InternalFailureException
```

Constructs InternalFailureException's fields from required parameters

#### `LambdaARN`

``` purescript
newtype LambdaARN
  = LambdaARN String
```

##### Instances
``` purescript
Newtype LambdaARN _
Generic LambdaARN _
Show LambdaARN
Decode LambdaARN
Encode LambdaARN
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { retryAfterSeconds :: Maybe (String), message :: Maybe (String) }
```

<p>The request exceeded a limit. Try your request again.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ retryAfterSeconds :: Maybe (String), message :: Maybe (String) } -> { retryAfterSeconds :: Maybe (String), message :: Maybe (String) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListOfUtterance`

``` purescript
newtype ListOfUtterance
  = ListOfUtterance (Array UtteranceData)
```

##### Instances
``` purescript
Newtype ListOfUtterance _
Generic ListOfUtterance _
Show ListOfUtterance
Decode ListOfUtterance
Encode ListOfUtterance
```

#### `ListsOfUtterances`

``` purescript
newtype ListsOfUtterances
  = ListsOfUtterances (Array UtteranceList)
```

##### Instances
``` purescript
Newtype ListsOfUtterances _
Generic ListsOfUtterances _
Show ListsOfUtterances
Decode ListsOfUtterances
Encode ListsOfUtterances
```

#### `Locale`

``` purescript
newtype Locale
  = Locale String
```

##### Instances
``` purescript
Newtype Locale _
Generic Locale _
Show Locale
Decode Locale
Encode Locale
```

#### `LocaleList`

``` purescript
newtype LocaleList
  = LocaleList (Array Locale)
```

##### Instances
``` purescript
Newtype LocaleList _
Generic LocaleList _
Show LocaleList
Decode LocaleList
Encode LocaleList
```

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MergeStrategy`

``` purescript
newtype MergeStrategy
  = MergeStrategy String
```

##### Instances
``` purescript
Newtype MergeStrategy _
Generic MergeStrategy _
Show MergeStrategy
Decode MergeStrategy
Encode MergeStrategy
```

#### `Message`

``` purescript
newtype Message
  = Message { contentType :: ContentType, content :: ContentString, groupNumber :: Maybe (GroupNumber) }
```

<p>The message object that provides the message text and its type.</p>

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `newMessage`

``` purescript
newMessage :: ContentString -> ContentType -> Message
```

Constructs Message from required parameters

#### `newMessage'`

``` purescript
newMessage' :: ContentString -> ContentType -> ({ contentType :: ContentType, content :: ContentString, groupNumber :: Maybe (GroupNumber) } -> { contentType :: ContentType, content :: ContentString, groupNumber :: Maybe (GroupNumber) }) -> Message
```

Constructs Message's fields from required parameters

#### `MessageList`

``` purescript
newtype MessageList
  = MessageList (Array Message)
```

##### Instances
``` purescript
Newtype MessageList _
Generic MessageList _
Show MessageList
Decode MessageList
Encode MessageList
```

#### `MessageVersion`

``` purescript
newtype MessageVersion
  = MessageVersion String
```

##### Instances
``` purescript
Newtype MessageVersion _
Generic MessageVersion _
Show MessageVersion
Decode MessageVersion
Encode MessageVersion
```

#### `Name`

``` purescript
newtype Name
  = Name String
```

##### Instances
``` purescript
Newtype Name _
Generic Name _
Show Name
Decode Name
Encode Name
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { message :: Maybe (String) }
```

<p>The resource specified in the request was not found. Check the resource and try again.</p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `NumericalVersion`

``` purescript
newtype NumericalVersion
  = NumericalVersion String
```

##### Instances
``` purescript
Newtype NumericalVersion _
Generic NumericalVersion _
Show NumericalVersion
Decode NumericalVersion
Encode NumericalVersion
```

#### `PreconditionFailedException`

``` purescript
newtype PreconditionFailedException
  = PreconditionFailedException { message :: Maybe (String) }
```

<p> The checksum of the resource that you are trying to change does not match the checksum in the request. Check the resource's checksum and try again.</p>

##### Instances
``` purescript
Newtype PreconditionFailedException _
Generic PreconditionFailedException _
Show PreconditionFailedException
Decode PreconditionFailedException
Encode PreconditionFailedException
```

#### `newPreconditionFailedException`

``` purescript
newPreconditionFailedException :: PreconditionFailedException
```

Constructs PreconditionFailedException from required parameters

#### `newPreconditionFailedException'`

``` purescript
newPreconditionFailedException' :: ({ message :: Maybe (String) } -> { message :: Maybe (String) }) -> PreconditionFailedException
```

Constructs PreconditionFailedException's fields from required parameters

#### `Priority`

``` purescript
newtype Priority
  = Priority Int
```

##### Instances
``` purescript
Newtype Priority _
Generic Priority _
Show Priority
Decode Priority
Encode Priority
```

#### `ProcessBehavior`

``` purescript
newtype ProcessBehavior
  = ProcessBehavior String
```

##### Instances
``` purescript
Newtype ProcessBehavior _
Generic ProcessBehavior _
Show ProcessBehavior
Decode ProcessBehavior
Encode ProcessBehavior
```

#### `Prompt`

``` purescript
newtype Prompt
  = Prompt { messages :: MessageList, maxAttempts :: PromptMaxAttempts, responseCard :: Maybe (ResponseCard) }
```

<p>Obtains information from the user. To define a prompt, provide one or more messages and specify the number of attempts to get information from the user. If you provide more than one message, Amazon Lex chooses one of the messages to use to prompt the user. For more information, see <a>how-it-works</a>.</p>

##### Instances
``` purescript
Newtype Prompt _
Generic Prompt _
Show Prompt
Decode Prompt
Encode Prompt
```

#### `newPrompt`

``` purescript
newPrompt :: PromptMaxAttempts -> MessageList -> Prompt
```

Constructs Prompt from required parameters

#### `newPrompt'`

``` purescript
newPrompt' :: PromptMaxAttempts -> MessageList -> ({ messages :: MessageList, maxAttempts :: PromptMaxAttempts, responseCard :: Maybe (ResponseCard) } -> { messages :: MessageList, maxAttempts :: PromptMaxAttempts, responseCard :: Maybe (ResponseCard) }) -> Prompt
```

Constructs Prompt's fields from required parameters

#### `PromptMaxAttempts`

``` purescript
newtype PromptMaxAttempts
  = PromptMaxAttempts Int
```

##### Instances
``` purescript
Newtype PromptMaxAttempts _
Generic PromptMaxAttempts _
Show PromptMaxAttempts
Decode PromptMaxAttempts
Encode PromptMaxAttempts
```

#### `PutBotAliasRequest`

``` purescript
newtype PutBotAliasRequest
  = PutBotAliasRequest { name :: AliasName, description :: Maybe (Description), botVersion :: Version, botName :: BotName, checksum :: Maybe (String) }
```

##### Instances
``` purescript
Newtype PutBotAliasRequest _
Generic PutBotAliasRequest _
Show PutBotAliasRequest
Decode PutBotAliasRequest
Encode PutBotAliasRequest
```

#### `newPutBotAliasRequest`

``` purescript
newPutBotAliasRequest :: BotName -> Version -> AliasName -> PutBotAliasRequest
```

Constructs PutBotAliasRequest from required parameters

#### `newPutBotAliasRequest'`

``` purescript
newPutBotAliasRequest' :: BotName -> Version -> AliasName -> ({ name :: AliasName, description :: Maybe (Description), botVersion :: Version, botName :: BotName, checksum :: Maybe (String) } -> { name :: AliasName, description :: Maybe (Description), botVersion :: Version, botName :: BotName, checksum :: Maybe (String) }) -> PutBotAliasRequest
```

Constructs PutBotAliasRequest's fields from required parameters

#### `PutBotAliasResponse`

``` purescript
newtype PutBotAliasResponse
  = PutBotAliasResponse { name :: Maybe (AliasName), description :: Maybe (Description), botVersion :: Maybe (Version), botName :: Maybe (BotName), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), checksum :: Maybe (String) }
```

##### Instances
``` purescript
Newtype PutBotAliasResponse _
Generic PutBotAliasResponse _
Show PutBotAliasResponse
Decode PutBotAliasResponse
Encode PutBotAliasResponse
```

#### `newPutBotAliasResponse`

``` purescript
newPutBotAliasResponse :: PutBotAliasResponse
```

Constructs PutBotAliasResponse from required parameters

#### `newPutBotAliasResponse'`

``` purescript
newPutBotAliasResponse' :: ({ name :: Maybe (AliasName), description :: Maybe (Description), botVersion :: Maybe (Version), botName :: Maybe (BotName), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), checksum :: Maybe (String) } -> { name :: Maybe (AliasName), description :: Maybe (Description), botVersion :: Maybe (Version), botName :: Maybe (BotName), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), checksum :: Maybe (String) }) -> PutBotAliasResponse
```

Constructs PutBotAliasResponse's fields from required parameters

#### `PutBotRequest`

``` purescript
newtype PutBotRequest
  = PutBotRequest { name :: BotName, description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), processBehavior :: Maybe (ProcessBehavior), locale :: Locale, childDirected :: Boolean, createVersion :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype PutBotRequest _
Generic PutBotRequest _
Show PutBotRequest
Decode PutBotRequest
Encode PutBotRequest
```

#### `newPutBotRequest`

``` purescript
newPutBotRequest :: Boolean -> Locale -> BotName -> PutBotRequest
```

Constructs PutBotRequest from required parameters

#### `newPutBotRequest'`

``` purescript
newPutBotRequest' :: Boolean -> Locale -> BotName -> ({ name :: BotName, description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), processBehavior :: Maybe (ProcessBehavior), locale :: Locale, childDirected :: Boolean, createVersion :: Maybe (Boolean) } -> { name :: BotName, description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), processBehavior :: Maybe (ProcessBehavior), locale :: Locale, childDirected :: Boolean, createVersion :: Maybe (Boolean) }) -> PutBotRequest
```

Constructs PutBotRequest's fields from required parameters

#### `PutBotResponse`

``` purescript
newtype PutBotResponse
  = PutBotResponse { name :: Maybe (BotName), description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), status :: Maybe (Status), failureReason :: Maybe (String), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), version :: Maybe (Version), locale :: Maybe (Locale), childDirected :: Maybe (Boolean), createVersion :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype PutBotResponse _
Generic PutBotResponse _
Show PutBotResponse
Decode PutBotResponse
Encode PutBotResponse
```

#### `newPutBotResponse`

``` purescript
newPutBotResponse :: PutBotResponse
```

Constructs PutBotResponse from required parameters

#### `newPutBotResponse'`

``` purescript
newPutBotResponse' :: ({ name :: Maybe (BotName), description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), status :: Maybe (Status), failureReason :: Maybe (String), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), version :: Maybe (Version), locale :: Maybe (Locale), childDirected :: Maybe (Boolean), createVersion :: Maybe (Boolean) } -> { name :: Maybe (BotName), description :: Maybe (Description), intents :: Maybe (IntentList), clarificationPrompt :: Maybe (Prompt), abortStatement :: Maybe (Statement), status :: Maybe (Status), failureReason :: Maybe (String), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), idleSessionTTLInSeconds :: Maybe (SessionTTL), voiceId :: Maybe (String), checksum :: Maybe (String), version :: Maybe (Version), locale :: Maybe (Locale), childDirected :: Maybe (Boolean), createVersion :: Maybe (Boolean) }) -> PutBotResponse
```

Constructs PutBotResponse's fields from required parameters

#### `PutIntentRequest`

``` purescript
newtype PutIntentRequest
  = PutIntentRequest { name :: IntentName, description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), checksum :: Maybe (String), createVersion :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype PutIntentRequest _
Generic PutIntentRequest _
Show PutIntentRequest
Decode PutIntentRequest
Encode PutIntentRequest
```

#### `newPutIntentRequest`

``` purescript
newPutIntentRequest :: IntentName -> PutIntentRequest
```

Constructs PutIntentRequest from required parameters

#### `newPutIntentRequest'`

``` purescript
newPutIntentRequest' :: IntentName -> ({ name :: IntentName, description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), checksum :: Maybe (String), createVersion :: Maybe (Boolean) } -> { name :: IntentName, description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), checksum :: Maybe (String), createVersion :: Maybe (Boolean) }) -> PutIntentRequest
```

Constructs PutIntentRequest's fields from required parameters

#### `PutIntentResponse`

``` purescript
newtype PutIntentResponse
  = PutIntentResponse { name :: Maybe (IntentName), description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), createVersion :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype PutIntentResponse _
Generic PutIntentResponse _
Show PutIntentResponse
Decode PutIntentResponse
Encode PutIntentResponse
```

#### `newPutIntentResponse`

``` purescript
newPutIntentResponse :: PutIntentResponse
```

Constructs PutIntentResponse from required parameters

#### `newPutIntentResponse'`

``` purescript
newPutIntentResponse' :: ({ name :: Maybe (IntentName), description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), createVersion :: Maybe (Boolean) } -> { name :: Maybe (IntentName), description :: Maybe (Description), slots :: Maybe (SlotList), sampleUtterances :: Maybe (IntentUtteranceList), confirmationPrompt :: Maybe (Prompt), rejectionStatement :: Maybe (Statement), followUpPrompt :: Maybe (FollowUpPrompt), conclusionStatement :: Maybe (Statement), dialogCodeHook :: Maybe (CodeHook), fulfillmentActivity :: Maybe (FulfillmentActivity), parentIntentSignature :: Maybe (BuiltinIntentSignature), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), createVersion :: Maybe (Boolean) }) -> PutIntentResponse
```

Constructs PutIntentResponse's fields from required parameters

#### `PutSlotTypeRequest`

``` purescript
newtype PutSlotTypeRequest
  = PutSlotTypeRequest { name :: SlotTypeName, description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy), createVersion :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype PutSlotTypeRequest _
Generic PutSlotTypeRequest _
Show PutSlotTypeRequest
Decode PutSlotTypeRequest
Encode PutSlotTypeRequest
```

#### `newPutSlotTypeRequest`

``` purescript
newPutSlotTypeRequest :: SlotTypeName -> PutSlotTypeRequest
```

Constructs PutSlotTypeRequest from required parameters

#### `newPutSlotTypeRequest'`

``` purescript
newPutSlotTypeRequest' :: SlotTypeName -> ({ name :: SlotTypeName, description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy), createVersion :: Maybe (Boolean) } -> { name :: SlotTypeName, description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy), createVersion :: Maybe (Boolean) }) -> PutSlotTypeRequest
```

Constructs PutSlotTypeRequest's fields from required parameters

#### `PutSlotTypeResponse`

``` purescript
newtype PutSlotTypeResponse
  = PutSlotTypeResponse { name :: Maybe (SlotTypeName), description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy), createVersion :: Maybe (Boolean) }
```

##### Instances
``` purescript
Newtype PutSlotTypeResponse _
Generic PutSlotTypeResponse _
Show PutSlotTypeResponse
Decode PutSlotTypeResponse
Encode PutSlotTypeResponse
```

#### `newPutSlotTypeResponse`

``` purescript
newPutSlotTypeResponse :: PutSlotTypeResponse
```

Constructs PutSlotTypeResponse from required parameters

#### `newPutSlotTypeResponse'`

``` purescript
newPutSlotTypeResponse' :: ({ name :: Maybe (SlotTypeName), description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy), createVersion :: Maybe (Boolean) } -> { name :: Maybe (SlotTypeName), description :: Maybe (Description), enumerationValues :: Maybe (EnumerationValues), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version), checksum :: Maybe (String), valueSelectionStrategy :: Maybe (SlotValueSelectionStrategy), createVersion :: Maybe (Boolean) }) -> PutSlotTypeResponse
```

Constructs PutSlotTypeResponse's fields from required parameters

#### `ReferenceType`

``` purescript
newtype ReferenceType
  = ReferenceType String
```

##### Instances
``` purescript
Newtype ReferenceType _
Generic ReferenceType _
Show ReferenceType
Decode ReferenceType
Encode ReferenceType
```

#### `ResourceInUseException`

``` purescript
newtype ResourceInUseException
  = ResourceInUseException { referenceType :: Maybe (ReferenceType), exampleReference :: Maybe (ResourceReference) }
```

<p>The resource that you are attempting to delete is referred to by another resource. Use this information to remove references to the resource that you are trying to delete.</p> <p>The body of the exception contains a JSON object that describes the resource.</p> <p> <code>{ "resourceType": BOT | BOTALIAS | BOTCHANNEL | INTENT,</code> </p> <p> <code>"resourceReference": {</code> </p> <p> <code>"name": <i>string</i>, "version": <i>string</i> } }</code> </p>

##### Instances
``` purescript
Newtype ResourceInUseException _
Generic ResourceInUseException _
Show ResourceInUseException
Decode ResourceInUseException
Encode ResourceInUseException
```

#### `newResourceInUseException`

``` purescript
newResourceInUseException :: ResourceInUseException
```

Constructs ResourceInUseException from required parameters

#### `newResourceInUseException'`

``` purescript
newResourceInUseException' :: ({ referenceType :: Maybe (ReferenceType), exampleReference :: Maybe (ResourceReference) } -> { referenceType :: Maybe (ReferenceType), exampleReference :: Maybe (ResourceReference) }) -> ResourceInUseException
```

Constructs ResourceInUseException's fields from required parameters

#### `ResourceReference`

``` purescript
newtype ResourceReference
  = ResourceReference { name :: Maybe (Name), version :: Maybe (Version) }
```

<p>Describes the resource that refers to the resource that you are attempting to delete. This object is returned as part of the <code>ResourceInUseException</code> exception. </p>

##### Instances
``` purescript
Newtype ResourceReference _
Generic ResourceReference _
Show ResourceReference
Decode ResourceReference
Encode ResourceReference
```

#### `newResourceReference`

``` purescript
newResourceReference :: ResourceReference
```

Constructs ResourceReference from required parameters

#### `newResourceReference'`

``` purescript
newResourceReference' :: ({ name :: Maybe (Name), version :: Maybe (Version) } -> { name :: Maybe (Name), version :: Maybe (Version) }) -> ResourceReference
```

Constructs ResourceReference's fields from required parameters

#### `ResourceType`

``` purescript
newtype ResourceType
  = ResourceType String
```

##### Instances
``` purescript
Newtype ResourceType _
Generic ResourceType _
Show ResourceType
Decode ResourceType
Encode ResourceType
```

#### `ResponseCard`

``` purescript
newtype ResponseCard
  = ResponseCard String
```

##### Instances
``` purescript
Newtype ResponseCard _
Generic ResponseCard _
Show ResponseCard
Decode ResponseCard
Encode ResponseCard
```

#### `SessionTTL`

``` purescript
newtype SessionTTL
  = SessionTTL Int
```

##### Instances
``` purescript
Newtype SessionTTL _
Generic SessionTTL _
Show SessionTTL
Decode SessionTTL
Encode SessionTTL
```

#### `Slot`

``` purescript
newtype Slot
  = Slot { name :: SlotName, description :: Maybe (Description), slotConstraint :: SlotConstraint, slotType :: Maybe (CustomOrBuiltinSlotTypeName), slotTypeVersion :: Maybe (Version), valueElicitationPrompt :: Maybe (Prompt), priority :: Maybe (Priority), sampleUtterances :: Maybe (SlotUtteranceList), responseCard :: Maybe (ResponseCard) }
```

<p>Identifies the version of a specific slot.</p>

##### Instances
``` purescript
Newtype Slot _
Generic Slot _
Show Slot
Decode Slot
Encode Slot
```

#### `newSlot`

``` purescript
newSlot :: SlotName -> SlotConstraint -> Slot
```

Constructs Slot from required parameters

#### `newSlot'`

``` purescript
newSlot' :: SlotName -> SlotConstraint -> ({ name :: SlotName, description :: Maybe (Description), slotConstraint :: SlotConstraint, slotType :: Maybe (CustomOrBuiltinSlotTypeName), slotTypeVersion :: Maybe (Version), valueElicitationPrompt :: Maybe (Prompt), priority :: Maybe (Priority), sampleUtterances :: Maybe (SlotUtteranceList), responseCard :: Maybe (ResponseCard) } -> { name :: SlotName, description :: Maybe (Description), slotConstraint :: SlotConstraint, slotType :: Maybe (CustomOrBuiltinSlotTypeName), slotTypeVersion :: Maybe (Version), valueElicitationPrompt :: Maybe (Prompt), priority :: Maybe (Priority), sampleUtterances :: Maybe (SlotUtteranceList), responseCard :: Maybe (ResponseCard) }) -> Slot
```

Constructs Slot's fields from required parameters

#### `SlotConstraint`

``` purescript
newtype SlotConstraint
  = SlotConstraint String
```

##### Instances
``` purescript
Newtype SlotConstraint _
Generic SlotConstraint _
Show SlotConstraint
Decode SlotConstraint
Encode SlotConstraint
```

#### `SlotList`

``` purescript
newtype SlotList
  = SlotList (Array Slot)
```

##### Instances
``` purescript
Newtype SlotList _
Generic SlotList _
Show SlotList
Decode SlotList
Encode SlotList
```

#### `SlotName`

``` purescript
newtype SlotName
  = SlotName String
```

##### Instances
``` purescript
Newtype SlotName _
Generic SlotName _
Show SlotName
Decode SlotName
Encode SlotName
```

#### `SlotTypeMetadata`

``` purescript
newtype SlotTypeMetadata
  = SlotTypeMetadata { name :: Maybe (SlotTypeName), description :: Maybe (Description), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version) }
```

<p>Provides information about a slot type..</p>

##### Instances
``` purescript
Newtype SlotTypeMetadata _
Generic SlotTypeMetadata _
Show SlotTypeMetadata
Decode SlotTypeMetadata
Encode SlotTypeMetadata
```

#### `newSlotTypeMetadata`

``` purescript
newSlotTypeMetadata :: SlotTypeMetadata
```

Constructs SlotTypeMetadata from required parameters

#### `newSlotTypeMetadata'`

``` purescript
newSlotTypeMetadata' :: ({ name :: Maybe (SlotTypeName), description :: Maybe (Description), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version) } -> { name :: Maybe (SlotTypeName), description :: Maybe (Description), lastUpdatedDate :: Maybe (Timestamp), createdDate :: Maybe (Timestamp), version :: Maybe (Version) }) -> SlotTypeMetadata
```

Constructs SlotTypeMetadata's fields from required parameters

#### `SlotTypeMetadataList`

``` purescript
newtype SlotTypeMetadataList
  = SlotTypeMetadataList (Array SlotTypeMetadata)
```

##### Instances
``` purescript
Newtype SlotTypeMetadataList _
Generic SlotTypeMetadataList _
Show SlotTypeMetadataList
Decode SlotTypeMetadataList
Encode SlotTypeMetadataList
```

#### `SlotTypeName`

``` purescript
newtype SlotTypeName
  = SlotTypeName String
```

##### Instances
``` purescript
Newtype SlotTypeName _
Generic SlotTypeName _
Show SlotTypeName
Decode SlotTypeName
Encode SlotTypeName
```

#### `SlotUtteranceList`

``` purescript
newtype SlotUtteranceList
  = SlotUtteranceList (Array Utterance)
```

##### Instances
``` purescript
Newtype SlotUtteranceList _
Generic SlotUtteranceList _
Show SlotUtteranceList
Decode SlotUtteranceList
Encode SlotUtteranceList
```

#### `SlotValueSelectionStrategy`

``` purescript
newtype SlotValueSelectionStrategy
  = SlotValueSelectionStrategy String
```

##### Instances
``` purescript
Newtype SlotValueSelectionStrategy _
Generic SlotValueSelectionStrategy _
Show SlotValueSelectionStrategy
Decode SlotValueSelectionStrategy
Encode SlotValueSelectionStrategy
```

#### `StartImportRequest`

``` purescript
newtype StartImportRequest
  = StartImportRequest { payload :: String, resourceType :: ResourceType, mergeStrategy :: MergeStrategy }
```

##### Instances
``` purescript
Newtype StartImportRequest _
Generic StartImportRequest _
Show StartImportRequest
Decode StartImportRequest
Encode StartImportRequest
```

#### `newStartImportRequest`

``` purescript
newStartImportRequest :: MergeStrategy -> String -> ResourceType -> StartImportRequest
```

Constructs StartImportRequest from required parameters

#### `newStartImportRequest'`

``` purescript
newStartImportRequest' :: MergeStrategy -> String -> ResourceType -> ({ payload :: String, resourceType :: ResourceType, mergeStrategy :: MergeStrategy } -> { payload :: String, resourceType :: ResourceType, mergeStrategy :: MergeStrategy }) -> StartImportRequest
```

Constructs StartImportRequest's fields from required parameters

#### `StartImportResponse`

``` purescript
newtype StartImportResponse
  = StartImportResponse { name :: Maybe (Name), resourceType :: Maybe (ResourceType), mergeStrategy :: Maybe (MergeStrategy), importId :: Maybe (String), importStatus :: Maybe (ImportStatus), createdDate :: Maybe (Timestamp) }
```

##### Instances
``` purescript
Newtype StartImportResponse _
Generic StartImportResponse _
Show StartImportResponse
Decode StartImportResponse
Encode StartImportResponse
```

#### `newStartImportResponse`

``` purescript
newStartImportResponse :: StartImportResponse
```

Constructs StartImportResponse from required parameters

#### `newStartImportResponse'`

``` purescript
newStartImportResponse' :: ({ name :: Maybe (Name), resourceType :: Maybe (ResourceType), mergeStrategy :: Maybe (MergeStrategy), importId :: Maybe (String), importStatus :: Maybe (ImportStatus), createdDate :: Maybe (Timestamp) } -> { name :: Maybe (Name), resourceType :: Maybe (ResourceType), mergeStrategy :: Maybe (MergeStrategy), importId :: Maybe (String), importStatus :: Maybe (ImportStatus), createdDate :: Maybe (Timestamp) }) -> StartImportResponse
```

Constructs StartImportResponse's fields from required parameters

#### `Statement`

``` purescript
newtype Statement
  = Statement { messages :: MessageList, responseCard :: Maybe (ResponseCard) }
```

<p>A collection of messages that convey information to the user. At runtime, Amazon Lex selects the message to convey. </p>

##### Instances
``` purescript
Newtype Statement _
Generic Statement _
Show Statement
Decode Statement
Encode Statement
```

#### `newStatement`

``` purescript
newStatement :: MessageList -> Statement
```

Constructs Statement from required parameters

#### `newStatement'`

``` purescript
newStatement' :: MessageList -> ({ messages :: MessageList, responseCard :: Maybe (ResponseCard) } -> { messages :: MessageList, responseCard :: Maybe (ResponseCard) }) -> Statement
```

Constructs Statement's fields from required parameters

#### `Status`

``` purescript
newtype Status
  = Status String
```

##### Instances
``` purescript
Newtype Status _
Generic Status _
Show Status
Decode Status
Encode Status
```

#### `StatusType`

``` purescript
newtype StatusType
  = StatusType String
```

##### Instances
``` purescript
Newtype StatusType _
Generic StatusType _
Show StatusType
Decode StatusType
Encode StatusType
```

#### `StringList`

``` purescript
newtype StringList
  = StringList (Array String)
```

##### Instances
``` purescript
Newtype StringList _
Generic StringList _
Show StringList
Decode StringList
Encode StringList
```

#### `SynonymList`

``` purescript
newtype SynonymList
  = SynonymList (Array Value)
```

##### Instances
``` purescript
Newtype SynonymList _
Generic SynonymList _
Show SynonymList
Decode SynonymList
Encode SynonymList
```

#### `UserId`

``` purescript
newtype UserId
  = UserId String
```

##### Instances
``` purescript
Newtype UserId _
Generic UserId _
Show UserId
Decode UserId
Encode UserId
```

#### `Utterance`

``` purescript
newtype Utterance
  = Utterance String
```

##### Instances
``` purescript
Newtype Utterance _
Generic Utterance _
Show Utterance
Decode Utterance
Encode Utterance
```

#### `UtteranceData`

``` purescript
newtype UtteranceData
  = UtteranceData { utteranceString :: Maybe (UtteranceString), count :: Maybe (Count), distinctUsers :: Maybe (Count), firstUtteredDate :: Maybe (Timestamp), lastUtteredDate :: Maybe (Timestamp) }
```

<p>Provides information about a single utterance that was made to your bot. </p>

##### Instances
``` purescript
Newtype UtteranceData _
Generic UtteranceData _
Show UtteranceData
Decode UtteranceData
Encode UtteranceData
```

#### `newUtteranceData`

``` purescript
newUtteranceData :: UtteranceData
```

Constructs UtteranceData from required parameters

#### `newUtteranceData'`

``` purescript
newUtteranceData' :: ({ utteranceString :: Maybe (UtteranceString), count :: Maybe (Count), distinctUsers :: Maybe (Count), firstUtteredDate :: Maybe (Timestamp), lastUtteredDate :: Maybe (Timestamp) } -> { utteranceString :: Maybe (UtteranceString), count :: Maybe (Count), distinctUsers :: Maybe (Count), firstUtteredDate :: Maybe (Timestamp), lastUtteredDate :: Maybe (Timestamp) }) -> UtteranceData
```

Constructs UtteranceData's fields from required parameters

#### `UtteranceList`

``` purescript
newtype UtteranceList
  = UtteranceList { botVersion :: Maybe (Version), utterances :: Maybe (ListOfUtterance) }
```

<p>Provides a list of utterances that have been made to a specific version of your bot. The list contains a maximum of 100 utterances.</p>

##### Instances
``` purescript
Newtype UtteranceList _
Generic UtteranceList _
Show UtteranceList
Decode UtteranceList
Encode UtteranceList
```

#### `newUtteranceList`

``` purescript
newUtteranceList :: UtteranceList
```

Constructs UtteranceList from required parameters

#### `newUtteranceList'`

``` purescript
newUtteranceList' :: ({ botVersion :: Maybe (Version), utterances :: Maybe (ListOfUtterance) } -> { botVersion :: Maybe (Version), utterances :: Maybe (ListOfUtterance) }) -> UtteranceList
```

Constructs UtteranceList's fields from required parameters

#### `UtteranceString`

``` purescript
newtype UtteranceString
  = UtteranceString String
```

##### Instances
``` purescript
Newtype UtteranceString _
Generic UtteranceString _
Show UtteranceString
Decode UtteranceString
Encode UtteranceString
```

#### `Value`

``` purescript
newtype Value
  = Value String
```

##### Instances
``` purescript
Newtype Value _
Generic Value _
Show Value
Decode Value
Encode Value
```

#### `Version`

``` purescript
newtype Version
  = Version String
```

##### Instances
``` purescript
Newtype Version _
Generic Version _
Show Version
Decode Version
Encode Version
```


