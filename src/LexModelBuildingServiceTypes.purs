
module AWS.LexModelBuildingService.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AliasName = AliasName String
derive instance newtypeAliasName :: Newtype AliasName _
derive instance repGenericAliasName :: Generic AliasName _
instance showAliasName :: Show AliasName where show = genericShow
instance decodeAliasName :: Decode AliasName where decode = genericDecode options
instance encodeAliasName :: Encode AliasName where encode = genericEncode options



newtype AliasNameOrListAll = AliasNameOrListAll String
derive instance newtypeAliasNameOrListAll :: Newtype AliasNameOrListAll _
derive instance repGenericAliasNameOrListAll :: Generic AliasNameOrListAll _
instance showAliasNameOrListAll :: Show AliasNameOrListAll where show = genericShow
instance decodeAliasNameOrListAll :: Decode AliasNameOrListAll where decode = genericDecode options
instance encodeAliasNameOrListAll :: Encode AliasNameOrListAll where encode = genericEncode options



-- | <p>The request is not well formed. For example, a value is invalid or a required field is missing. Check the field values, and try again.</p>
newtype BadRequestException = BadRequestException 
  { "message" :: Maybe (String)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where decode = genericDecode options
instance encodeBadRequestException :: Encode BadRequestException where encode = genericEncode options

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "message": Nothing }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "message": Nothing }



-- | <p>Provides information about a bot alias.</p>
newtype BotAliasMetadata = BotAliasMetadata 
  { "name" :: Maybe (AliasName)
  , "description" :: Maybe (Description)
  , "botVersion" :: Maybe (Version)
  , "botName" :: Maybe (BotName)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "checksum" :: Maybe (String)
  }
derive instance newtypeBotAliasMetadata :: Newtype BotAliasMetadata _
derive instance repGenericBotAliasMetadata :: Generic BotAliasMetadata _
instance showBotAliasMetadata :: Show BotAliasMetadata where show = genericShow
instance decodeBotAliasMetadata :: Decode BotAliasMetadata where decode = genericDecode options
instance encodeBotAliasMetadata :: Encode BotAliasMetadata where encode = genericEncode options

-- | Constructs BotAliasMetadata from required parameters
newBotAliasMetadata :: BotAliasMetadata
newBotAliasMetadata  = BotAliasMetadata { "botName": Nothing, "botVersion": Nothing, "checksum": Nothing, "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing }

-- | Constructs BotAliasMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBotAliasMetadata' :: ( { "name" :: Maybe (AliasName) , "description" :: Maybe (Description) , "botVersion" :: Maybe (Version) , "botName" :: Maybe (BotName) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "checksum" :: Maybe (String) } -> {"name" :: Maybe (AliasName) , "description" :: Maybe (Description) , "botVersion" :: Maybe (Version) , "botName" :: Maybe (BotName) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "checksum" :: Maybe (String) } ) -> BotAliasMetadata
newBotAliasMetadata'  customize = (BotAliasMetadata <<< customize) { "botName": Nothing, "botVersion": Nothing, "checksum": Nothing, "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing }



newtype BotAliasMetadataList = BotAliasMetadataList (Array BotAliasMetadata)
derive instance newtypeBotAliasMetadataList :: Newtype BotAliasMetadataList _
derive instance repGenericBotAliasMetadataList :: Generic BotAliasMetadataList _
instance showBotAliasMetadataList :: Show BotAliasMetadataList where show = genericShow
instance decodeBotAliasMetadataList :: Decode BotAliasMetadataList where decode = genericDecode options
instance encodeBotAliasMetadataList :: Encode BotAliasMetadataList where encode = genericEncode options



-- | <p>Represents an association between an Amazon Lex bot and an external messaging platform.</p>
newtype BotChannelAssociation = BotChannelAssociation 
  { "name" :: Maybe (BotChannelName)
  , "description" :: Maybe (Description)
  , "botAlias" :: Maybe (AliasName)
  , "botName" :: Maybe (BotName)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "type" :: Maybe (ChannelType)
  , "botConfiguration" :: Maybe (ChannelConfigurationMap)
  , "status" :: Maybe (ChannelStatus)
  , "failureReason" :: Maybe (String)
  }
derive instance newtypeBotChannelAssociation :: Newtype BotChannelAssociation _
derive instance repGenericBotChannelAssociation :: Generic BotChannelAssociation _
instance showBotChannelAssociation :: Show BotChannelAssociation where show = genericShow
instance decodeBotChannelAssociation :: Decode BotChannelAssociation where decode = genericDecode options
instance encodeBotChannelAssociation :: Encode BotChannelAssociation where encode = genericEncode options

-- | Constructs BotChannelAssociation from required parameters
newBotChannelAssociation :: BotChannelAssociation
newBotChannelAssociation  = BotChannelAssociation { "botAlias": Nothing, "botConfiguration": Nothing, "botName": Nothing, "createdDate": Nothing, "description": Nothing, "failureReason": Nothing, "name": Nothing, "status": Nothing, "type": Nothing }

-- | Constructs BotChannelAssociation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBotChannelAssociation' :: ( { "name" :: Maybe (BotChannelName) , "description" :: Maybe (Description) , "botAlias" :: Maybe (AliasName) , "botName" :: Maybe (BotName) , "createdDate" :: Maybe (Types.Timestamp) , "type" :: Maybe (ChannelType) , "botConfiguration" :: Maybe (ChannelConfigurationMap) , "status" :: Maybe (ChannelStatus) , "failureReason" :: Maybe (String) } -> {"name" :: Maybe (BotChannelName) , "description" :: Maybe (Description) , "botAlias" :: Maybe (AliasName) , "botName" :: Maybe (BotName) , "createdDate" :: Maybe (Types.Timestamp) , "type" :: Maybe (ChannelType) , "botConfiguration" :: Maybe (ChannelConfigurationMap) , "status" :: Maybe (ChannelStatus) , "failureReason" :: Maybe (String) } ) -> BotChannelAssociation
newBotChannelAssociation'  customize = (BotChannelAssociation <<< customize) { "botAlias": Nothing, "botConfiguration": Nothing, "botName": Nothing, "createdDate": Nothing, "description": Nothing, "failureReason": Nothing, "name": Nothing, "status": Nothing, "type": Nothing }



newtype BotChannelAssociationList = BotChannelAssociationList (Array BotChannelAssociation)
derive instance newtypeBotChannelAssociationList :: Newtype BotChannelAssociationList _
derive instance repGenericBotChannelAssociationList :: Generic BotChannelAssociationList _
instance showBotChannelAssociationList :: Show BotChannelAssociationList where show = genericShow
instance decodeBotChannelAssociationList :: Decode BotChannelAssociationList where decode = genericDecode options
instance encodeBotChannelAssociationList :: Encode BotChannelAssociationList where encode = genericEncode options



newtype BotChannelName = BotChannelName String
derive instance newtypeBotChannelName :: Newtype BotChannelName _
derive instance repGenericBotChannelName :: Generic BotChannelName _
instance showBotChannelName :: Show BotChannelName where show = genericShow
instance decodeBotChannelName :: Decode BotChannelName where decode = genericDecode options
instance encodeBotChannelName :: Encode BotChannelName where encode = genericEncode options



-- | <p>Provides information about a bot. .</p>
newtype BotMetadata = BotMetadata 
  { "name" :: Maybe (BotName)
  , "description" :: Maybe (Description)
  , "status" :: Maybe (Status)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "version" :: Maybe (Version)
  }
derive instance newtypeBotMetadata :: Newtype BotMetadata _
derive instance repGenericBotMetadata :: Generic BotMetadata _
instance showBotMetadata :: Show BotMetadata where show = genericShow
instance decodeBotMetadata :: Decode BotMetadata where decode = genericDecode options
instance encodeBotMetadata :: Encode BotMetadata where encode = genericEncode options

-- | Constructs BotMetadata from required parameters
newBotMetadata :: BotMetadata
newBotMetadata  = BotMetadata { "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "status": Nothing, "version": Nothing }

-- | Constructs BotMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBotMetadata' :: ( { "name" :: Maybe (BotName) , "description" :: Maybe (Description) , "status" :: Maybe (Status) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) } -> {"name" :: Maybe (BotName) , "description" :: Maybe (Description) , "status" :: Maybe (Status) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) } ) -> BotMetadata
newBotMetadata'  customize = (BotMetadata <<< customize) { "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "status": Nothing, "version": Nothing }



newtype BotMetadataList = BotMetadataList (Array BotMetadata)
derive instance newtypeBotMetadataList :: Newtype BotMetadataList _
derive instance repGenericBotMetadataList :: Generic BotMetadataList _
instance showBotMetadataList :: Show BotMetadataList where show = genericShow
instance decodeBotMetadataList :: Decode BotMetadataList where decode = genericDecode options
instance encodeBotMetadataList :: Encode BotMetadataList where encode = genericEncode options



newtype BotName = BotName String
derive instance newtypeBotName :: Newtype BotName _
derive instance repGenericBotName :: Generic BotName _
instance showBotName :: Show BotName where show = genericShow
instance decodeBotName :: Decode BotName where decode = genericDecode options
instance encodeBotName :: Encode BotName where encode = genericEncode options



newtype BotVersions = BotVersions (Array Version)
derive instance newtypeBotVersions :: Newtype BotVersions _
derive instance repGenericBotVersions :: Generic BotVersions _
instance showBotVersions :: Show BotVersions where show = genericShow
instance decodeBotVersions :: Decode BotVersions where decode = genericDecode options
instance encodeBotVersions :: Encode BotVersions where encode = genericEncode options



-- | <p>Provides metadata for a built-in intent.</p>
newtype BuiltinIntentMetadata = BuiltinIntentMetadata 
  { "signature" :: Maybe (BuiltinIntentSignature)
  , "supportedLocales" :: Maybe (LocaleList)
  }
derive instance newtypeBuiltinIntentMetadata :: Newtype BuiltinIntentMetadata _
derive instance repGenericBuiltinIntentMetadata :: Generic BuiltinIntentMetadata _
instance showBuiltinIntentMetadata :: Show BuiltinIntentMetadata where show = genericShow
instance decodeBuiltinIntentMetadata :: Decode BuiltinIntentMetadata where decode = genericDecode options
instance encodeBuiltinIntentMetadata :: Encode BuiltinIntentMetadata where encode = genericEncode options

-- | Constructs BuiltinIntentMetadata from required parameters
newBuiltinIntentMetadata :: BuiltinIntentMetadata
newBuiltinIntentMetadata  = BuiltinIntentMetadata { "signature": Nothing, "supportedLocales": Nothing }

-- | Constructs BuiltinIntentMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBuiltinIntentMetadata' :: ( { "signature" :: Maybe (BuiltinIntentSignature) , "supportedLocales" :: Maybe (LocaleList) } -> {"signature" :: Maybe (BuiltinIntentSignature) , "supportedLocales" :: Maybe (LocaleList) } ) -> BuiltinIntentMetadata
newBuiltinIntentMetadata'  customize = (BuiltinIntentMetadata <<< customize) { "signature": Nothing, "supportedLocales": Nothing }



newtype BuiltinIntentMetadataList = BuiltinIntentMetadataList (Array BuiltinIntentMetadata)
derive instance newtypeBuiltinIntentMetadataList :: Newtype BuiltinIntentMetadataList _
derive instance repGenericBuiltinIntentMetadataList :: Generic BuiltinIntentMetadataList _
instance showBuiltinIntentMetadataList :: Show BuiltinIntentMetadataList where show = genericShow
instance decodeBuiltinIntentMetadataList :: Decode BuiltinIntentMetadataList where decode = genericDecode options
instance encodeBuiltinIntentMetadataList :: Encode BuiltinIntentMetadataList where encode = genericEncode options



newtype BuiltinIntentSignature = BuiltinIntentSignature String
derive instance newtypeBuiltinIntentSignature :: Newtype BuiltinIntentSignature _
derive instance repGenericBuiltinIntentSignature :: Generic BuiltinIntentSignature _
instance showBuiltinIntentSignature :: Show BuiltinIntentSignature where show = genericShow
instance decodeBuiltinIntentSignature :: Decode BuiltinIntentSignature where decode = genericDecode options
instance encodeBuiltinIntentSignature :: Encode BuiltinIntentSignature where encode = genericEncode options



-- | <p>Provides information about a slot used in a built-in intent.</p>
newtype BuiltinIntentSlot = BuiltinIntentSlot 
  { "name" :: Maybe (String)
  }
derive instance newtypeBuiltinIntentSlot :: Newtype BuiltinIntentSlot _
derive instance repGenericBuiltinIntentSlot :: Generic BuiltinIntentSlot _
instance showBuiltinIntentSlot :: Show BuiltinIntentSlot where show = genericShow
instance decodeBuiltinIntentSlot :: Decode BuiltinIntentSlot where decode = genericDecode options
instance encodeBuiltinIntentSlot :: Encode BuiltinIntentSlot where encode = genericEncode options

-- | Constructs BuiltinIntentSlot from required parameters
newBuiltinIntentSlot :: BuiltinIntentSlot
newBuiltinIntentSlot  = BuiltinIntentSlot { "name": Nothing }

-- | Constructs BuiltinIntentSlot's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBuiltinIntentSlot' :: ( { "name" :: Maybe (String) } -> {"name" :: Maybe (String) } ) -> BuiltinIntentSlot
newBuiltinIntentSlot'  customize = (BuiltinIntentSlot <<< customize) { "name": Nothing }



newtype BuiltinIntentSlotList = BuiltinIntentSlotList (Array BuiltinIntentSlot)
derive instance newtypeBuiltinIntentSlotList :: Newtype BuiltinIntentSlotList _
derive instance repGenericBuiltinIntentSlotList :: Generic BuiltinIntentSlotList _
instance showBuiltinIntentSlotList :: Show BuiltinIntentSlotList where show = genericShow
instance decodeBuiltinIntentSlotList :: Decode BuiltinIntentSlotList where decode = genericDecode options
instance encodeBuiltinIntentSlotList :: Encode BuiltinIntentSlotList where encode = genericEncode options



-- | <p>Provides information about a built in slot type.</p>
newtype BuiltinSlotTypeMetadata = BuiltinSlotTypeMetadata 
  { "signature" :: Maybe (BuiltinSlotTypeSignature)
  , "supportedLocales" :: Maybe (LocaleList)
  }
derive instance newtypeBuiltinSlotTypeMetadata :: Newtype BuiltinSlotTypeMetadata _
derive instance repGenericBuiltinSlotTypeMetadata :: Generic BuiltinSlotTypeMetadata _
instance showBuiltinSlotTypeMetadata :: Show BuiltinSlotTypeMetadata where show = genericShow
instance decodeBuiltinSlotTypeMetadata :: Decode BuiltinSlotTypeMetadata where decode = genericDecode options
instance encodeBuiltinSlotTypeMetadata :: Encode BuiltinSlotTypeMetadata where encode = genericEncode options

-- | Constructs BuiltinSlotTypeMetadata from required parameters
newBuiltinSlotTypeMetadata :: BuiltinSlotTypeMetadata
newBuiltinSlotTypeMetadata  = BuiltinSlotTypeMetadata { "signature": Nothing, "supportedLocales": Nothing }

-- | Constructs BuiltinSlotTypeMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBuiltinSlotTypeMetadata' :: ( { "signature" :: Maybe (BuiltinSlotTypeSignature) , "supportedLocales" :: Maybe (LocaleList) } -> {"signature" :: Maybe (BuiltinSlotTypeSignature) , "supportedLocales" :: Maybe (LocaleList) } ) -> BuiltinSlotTypeMetadata
newBuiltinSlotTypeMetadata'  customize = (BuiltinSlotTypeMetadata <<< customize) { "signature": Nothing, "supportedLocales": Nothing }



newtype BuiltinSlotTypeMetadataList = BuiltinSlotTypeMetadataList (Array BuiltinSlotTypeMetadata)
derive instance newtypeBuiltinSlotTypeMetadataList :: Newtype BuiltinSlotTypeMetadataList _
derive instance repGenericBuiltinSlotTypeMetadataList :: Generic BuiltinSlotTypeMetadataList _
instance showBuiltinSlotTypeMetadataList :: Show BuiltinSlotTypeMetadataList where show = genericShow
instance decodeBuiltinSlotTypeMetadataList :: Decode BuiltinSlotTypeMetadataList where decode = genericDecode options
instance encodeBuiltinSlotTypeMetadataList :: Encode BuiltinSlotTypeMetadataList where encode = genericEncode options



newtype BuiltinSlotTypeSignature = BuiltinSlotTypeSignature String
derive instance newtypeBuiltinSlotTypeSignature :: Newtype BuiltinSlotTypeSignature _
derive instance repGenericBuiltinSlotTypeSignature :: Generic BuiltinSlotTypeSignature _
instance showBuiltinSlotTypeSignature :: Show BuiltinSlotTypeSignature where show = genericShow
instance decodeBuiltinSlotTypeSignature :: Decode BuiltinSlotTypeSignature where decode = genericDecode options
instance encodeBuiltinSlotTypeSignature :: Encode BuiltinSlotTypeSignature where encode = genericEncode options



newtype ChannelConfigurationMap = ChannelConfigurationMap (StrMap.StrMap String)
derive instance newtypeChannelConfigurationMap :: Newtype ChannelConfigurationMap _
derive instance repGenericChannelConfigurationMap :: Generic ChannelConfigurationMap _
instance showChannelConfigurationMap :: Show ChannelConfigurationMap where show = genericShow
instance decodeChannelConfigurationMap :: Decode ChannelConfigurationMap where decode = genericDecode options
instance encodeChannelConfigurationMap :: Encode ChannelConfigurationMap where encode = genericEncode options



newtype ChannelStatus = ChannelStatus String
derive instance newtypeChannelStatus :: Newtype ChannelStatus _
derive instance repGenericChannelStatus :: Generic ChannelStatus _
instance showChannelStatus :: Show ChannelStatus where show = genericShow
instance decodeChannelStatus :: Decode ChannelStatus where decode = genericDecode options
instance encodeChannelStatus :: Encode ChannelStatus where encode = genericEncode options



newtype ChannelType = ChannelType String
derive instance newtypeChannelType :: Newtype ChannelType _
derive instance repGenericChannelType :: Generic ChannelType _
instance showChannelType :: Show ChannelType where show = genericShow
instance decodeChannelType :: Decode ChannelType where decode = genericDecode options
instance encodeChannelType :: Encode ChannelType where encode = genericEncode options



-- | <p>Specifies a Lambda function that verifies requests to a bot or fulfills the user's request to a bot..</p>
newtype CodeHook = CodeHook 
  { "uri" :: (LambdaARN)
  , "messageVersion" :: (MessageVersion)
  }
derive instance newtypeCodeHook :: Newtype CodeHook _
derive instance repGenericCodeHook :: Generic CodeHook _
instance showCodeHook :: Show CodeHook where show = genericShow
instance decodeCodeHook :: Decode CodeHook where decode = genericDecode options
instance encodeCodeHook :: Encode CodeHook where encode = genericEncode options

-- | Constructs CodeHook from required parameters
newCodeHook :: MessageVersion -> LambdaARN -> CodeHook
newCodeHook _messageVersion _uri = CodeHook { "messageVersion": _messageVersion, "uri": _uri }

-- | Constructs CodeHook's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCodeHook' :: MessageVersion -> LambdaARN -> ( { "uri" :: (LambdaARN) , "messageVersion" :: (MessageVersion) } -> {"uri" :: (LambdaARN) , "messageVersion" :: (MessageVersion) } ) -> CodeHook
newCodeHook' _messageVersion _uri customize = (CodeHook <<< customize) { "messageVersion": _messageVersion, "uri": _uri }



-- | <p> There was a conflict processing the request. Try your request again. </p>
newtype ConflictException = ConflictException 
  { "message" :: Maybe (String)
  }
derive instance newtypeConflictException :: Newtype ConflictException _
derive instance repGenericConflictException :: Generic ConflictException _
instance showConflictException :: Show ConflictException where show = genericShow
instance decodeConflictException :: Decode ConflictException where decode = genericDecode options
instance encodeConflictException :: Encode ConflictException where encode = genericEncode options

-- | Constructs ConflictException from required parameters
newConflictException :: ConflictException
newConflictException  = ConflictException { "message": Nothing }

-- | Constructs ConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> ConflictException
newConflictException'  customize = (ConflictException <<< customize) { "message": Nothing }



newtype ContentString = ContentString String
derive instance newtypeContentString :: Newtype ContentString _
derive instance repGenericContentString :: Generic ContentString _
instance showContentString :: Show ContentString where show = genericShow
instance decodeContentString :: Decode ContentString where decode = genericDecode options
instance encodeContentString :: Encode ContentString where encode = genericEncode options



newtype ContentType = ContentType String
derive instance newtypeContentType :: Newtype ContentType _
derive instance repGenericContentType :: Generic ContentType _
instance showContentType :: Show ContentType where show = genericShow
instance decodeContentType :: Decode ContentType where decode = genericDecode options
instance encodeContentType :: Encode ContentType where encode = genericEncode options



newtype Count = Count Int
derive instance newtypeCount :: Newtype Count _
derive instance repGenericCount :: Generic Count _
instance showCount :: Show Count where show = genericShow
instance decodeCount :: Decode Count where decode = genericDecode options
instance encodeCount :: Encode Count where encode = genericEncode options



newtype CreateBotVersionRequest = CreateBotVersionRequest 
  { "name" :: (BotName)
  , "checksum" :: Maybe (String)
  }
derive instance newtypeCreateBotVersionRequest :: Newtype CreateBotVersionRequest _
derive instance repGenericCreateBotVersionRequest :: Generic CreateBotVersionRequest _
instance showCreateBotVersionRequest :: Show CreateBotVersionRequest where show = genericShow
instance decodeCreateBotVersionRequest :: Decode CreateBotVersionRequest where decode = genericDecode options
instance encodeCreateBotVersionRequest :: Encode CreateBotVersionRequest where encode = genericEncode options

-- | Constructs CreateBotVersionRequest from required parameters
newCreateBotVersionRequest :: BotName -> CreateBotVersionRequest
newCreateBotVersionRequest _name = CreateBotVersionRequest { "name": _name, "checksum": Nothing }

-- | Constructs CreateBotVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateBotVersionRequest' :: BotName -> ( { "name" :: (BotName) , "checksum" :: Maybe (String) } -> {"name" :: (BotName) , "checksum" :: Maybe (String) } ) -> CreateBotVersionRequest
newCreateBotVersionRequest' _name customize = (CreateBotVersionRequest <<< customize) { "name": _name, "checksum": Nothing }



newtype CreateBotVersionResponse = CreateBotVersionResponse 
  { "name" :: Maybe (BotName)
  , "description" :: Maybe (Description)
  , "intents" :: Maybe (IntentList)
  , "clarificationPrompt" :: Maybe (Prompt)
  , "abortStatement" :: Maybe (Statement)
  , "status" :: Maybe (Status)
  , "failureReason" :: Maybe (String)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "idleSessionTTLInSeconds" :: Maybe (SessionTTL)
  , "voiceId" :: Maybe (String)
  , "checksum" :: Maybe (String)
  , "version" :: Maybe (Version)
  , "locale" :: Maybe (Locale)
  , "childDirected" :: Maybe (Boolean)
  }
derive instance newtypeCreateBotVersionResponse :: Newtype CreateBotVersionResponse _
derive instance repGenericCreateBotVersionResponse :: Generic CreateBotVersionResponse _
instance showCreateBotVersionResponse :: Show CreateBotVersionResponse where show = genericShow
instance decodeCreateBotVersionResponse :: Decode CreateBotVersionResponse where decode = genericDecode options
instance encodeCreateBotVersionResponse :: Encode CreateBotVersionResponse where encode = genericEncode options

-- | Constructs CreateBotVersionResponse from required parameters
newCreateBotVersionResponse :: CreateBotVersionResponse
newCreateBotVersionResponse  = CreateBotVersionResponse { "abortStatement": Nothing, "checksum": Nothing, "childDirected": Nothing, "clarificationPrompt": Nothing, "createdDate": Nothing, "description": Nothing, "failureReason": Nothing, "idleSessionTTLInSeconds": Nothing, "intents": Nothing, "lastUpdatedDate": Nothing, "locale": Nothing, "name": Nothing, "status": Nothing, "version": Nothing, "voiceId": Nothing }

-- | Constructs CreateBotVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateBotVersionResponse' :: ( { "name" :: Maybe (BotName) , "description" :: Maybe (Description) , "intents" :: Maybe (IntentList) , "clarificationPrompt" :: Maybe (Prompt) , "abortStatement" :: Maybe (Statement) , "status" :: Maybe (Status) , "failureReason" :: Maybe (String) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "idleSessionTTLInSeconds" :: Maybe (SessionTTL) , "voiceId" :: Maybe (String) , "checksum" :: Maybe (String) , "version" :: Maybe (Version) , "locale" :: Maybe (Locale) , "childDirected" :: Maybe (Boolean) } -> {"name" :: Maybe (BotName) , "description" :: Maybe (Description) , "intents" :: Maybe (IntentList) , "clarificationPrompt" :: Maybe (Prompt) , "abortStatement" :: Maybe (Statement) , "status" :: Maybe (Status) , "failureReason" :: Maybe (String) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "idleSessionTTLInSeconds" :: Maybe (SessionTTL) , "voiceId" :: Maybe (String) , "checksum" :: Maybe (String) , "version" :: Maybe (Version) , "locale" :: Maybe (Locale) , "childDirected" :: Maybe (Boolean) } ) -> CreateBotVersionResponse
newCreateBotVersionResponse'  customize = (CreateBotVersionResponse <<< customize) { "abortStatement": Nothing, "checksum": Nothing, "childDirected": Nothing, "clarificationPrompt": Nothing, "createdDate": Nothing, "description": Nothing, "failureReason": Nothing, "idleSessionTTLInSeconds": Nothing, "intents": Nothing, "lastUpdatedDate": Nothing, "locale": Nothing, "name": Nothing, "status": Nothing, "version": Nothing, "voiceId": Nothing }



newtype CreateIntentVersionRequest = CreateIntentVersionRequest 
  { "name" :: (IntentName)
  , "checksum" :: Maybe (String)
  }
derive instance newtypeCreateIntentVersionRequest :: Newtype CreateIntentVersionRequest _
derive instance repGenericCreateIntentVersionRequest :: Generic CreateIntentVersionRequest _
instance showCreateIntentVersionRequest :: Show CreateIntentVersionRequest where show = genericShow
instance decodeCreateIntentVersionRequest :: Decode CreateIntentVersionRequest where decode = genericDecode options
instance encodeCreateIntentVersionRequest :: Encode CreateIntentVersionRequest where encode = genericEncode options

-- | Constructs CreateIntentVersionRequest from required parameters
newCreateIntentVersionRequest :: IntentName -> CreateIntentVersionRequest
newCreateIntentVersionRequest _name = CreateIntentVersionRequest { "name": _name, "checksum": Nothing }

-- | Constructs CreateIntentVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIntentVersionRequest' :: IntentName -> ( { "name" :: (IntentName) , "checksum" :: Maybe (String) } -> {"name" :: (IntentName) , "checksum" :: Maybe (String) } ) -> CreateIntentVersionRequest
newCreateIntentVersionRequest' _name customize = (CreateIntentVersionRequest <<< customize) { "name": _name, "checksum": Nothing }



newtype CreateIntentVersionResponse = CreateIntentVersionResponse 
  { "name" :: Maybe (IntentName)
  , "description" :: Maybe (Description)
  , "slots" :: Maybe (SlotList)
  , "sampleUtterances" :: Maybe (IntentUtteranceList)
  , "confirmationPrompt" :: Maybe (Prompt)
  , "rejectionStatement" :: Maybe (Statement)
  , "followUpPrompt" :: Maybe (FollowUpPrompt)
  , "conclusionStatement" :: Maybe (Statement)
  , "dialogCodeHook" :: Maybe (CodeHook)
  , "fulfillmentActivity" :: Maybe (FulfillmentActivity)
  , "parentIntentSignature" :: Maybe (BuiltinIntentSignature)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "version" :: Maybe (Version)
  , "checksum" :: Maybe (String)
  }
derive instance newtypeCreateIntentVersionResponse :: Newtype CreateIntentVersionResponse _
derive instance repGenericCreateIntentVersionResponse :: Generic CreateIntentVersionResponse _
instance showCreateIntentVersionResponse :: Show CreateIntentVersionResponse where show = genericShow
instance decodeCreateIntentVersionResponse :: Decode CreateIntentVersionResponse where decode = genericDecode options
instance encodeCreateIntentVersionResponse :: Encode CreateIntentVersionResponse where encode = genericEncode options

-- | Constructs CreateIntentVersionResponse from required parameters
newCreateIntentVersionResponse :: CreateIntentVersionResponse
newCreateIntentVersionResponse  = CreateIntentVersionResponse { "checksum": Nothing, "conclusionStatement": Nothing, "confirmationPrompt": Nothing, "createdDate": Nothing, "description": Nothing, "dialogCodeHook": Nothing, "followUpPrompt": Nothing, "fulfillmentActivity": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "parentIntentSignature": Nothing, "rejectionStatement": Nothing, "sampleUtterances": Nothing, "slots": Nothing, "version": Nothing }

-- | Constructs CreateIntentVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateIntentVersionResponse' :: ( { "name" :: Maybe (IntentName) , "description" :: Maybe (Description) , "slots" :: Maybe (SlotList) , "sampleUtterances" :: Maybe (IntentUtteranceList) , "confirmationPrompt" :: Maybe (Prompt) , "rejectionStatement" :: Maybe (Statement) , "followUpPrompt" :: Maybe (FollowUpPrompt) , "conclusionStatement" :: Maybe (Statement) , "dialogCodeHook" :: Maybe (CodeHook) , "fulfillmentActivity" :: Maybe (FulfillmentActivity) , "parentIntentSignature" :: Maybe (BuiltinIntentSignature) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) } -> {"name" :: Maybe (IntentName) , "description" :: Maybe (Description) , "slots" :: Maybe (SlotList) , "sampleUtterances" :: Maybe (IntentUtteranceList) , "confirmationPrompt" :: Maybe (Prompt) , "rejectionStatement" :: Maybe (Statement) , "followUpPrompt" :: Maybe (FollowUpPrompt) , "conclusionStatement" :: Maybe (Statement) , "dialogCodeHook" :: Maybe (CodeHook) , "fulfillmentActivity" :: Maybe (FulfillmentActivity) , "parentIntentSignature" :: Maybe (BuiltinIntentSignature) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) } ) -> CreateIntentVersionResponse
newCreateIntentVersionResponse'  customize = (CreateIntentVersionResponse <<< customize) { "checksum": Nothing, "conclusionStatement": Nothing, "confirmationPrompt": Nothing, "createdDate": Nothing, "description": Nothing, "dialogCodeHook": Nothing, "followUpPrompt": Nothing, "fulfillmentActivity": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "parentIntentSignature": Nothing, "rejectionStatement": Nothing, "sampleUtterances": Nothing, "slots": Nothing, "version": Nothing }



newtype CreateSlotTypeVersionRequest = CreateSlotTypeVersionRequest 
  { "name" :: (SlotTypeName)
  , "checksum" :: Maybe (String)
  }
derive instance newtypeCreateSlotTypeVersionRequest :: Newtype CreateSlotTypeVersionRequest _
derive instance repGenericCreateSlotTypeVersionRequest :: Generic CreateSlotTypeVersionRequest _
instance showCreateSlotTypeVersionRequest :: Show CreateSlotTypeVersionRequest where show = genericShow
instance decodeCreateSlotTypeVersionRequest :: Decode CreateSlotTypeVersionRequest where decode = genericDecode options
instance encodeCreateSlotTypeVersionRequest :: Encode CreateSlotTypeVersionRequest where encode = genericEncode options

-- | Constructs CreateSlotTypeVersionRequest from required parameters
newCreateSlotTypeVersionRequest :: SlotTypeName -> CreateSlotTypeVersionRequest
newCreateSlotTypeVersionRequest _name = CreateSlotTypeVersionRequest { "name": _name, "checksum": Nothing }

-- | Constructs CreateSlotTypeVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSlotTypeVersionRequest' :: SlotTypeName -> ( { "name" :: (SlotTypeName) , "checksum" :: Maybe (String) } -> {"name" :: (SlotTypeName) , "checksum" :: Maybe (String) } ) -> CreateSlotTypeVersionRequest
newCreateSlotTypeVersionRequest' _name customize = (CreateSlotTypeVersionRequest <<< customize) { "name": _name, "checksum": Nothing }



newtype CreateSlotTypeVersionResponse = CreateSlotTypeVersionResponse 
  { "name" :: Maybe (SlotTypeName)
  , "description" :: Maybe (Description)
  , "enumerationValues" :: Maybe (EnumerationValues)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "version" :: Maybe (Version)
  , "checksum" :: Maybe (String)
  , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy)
  }
derive instance newtypeCreateSlotTypeVersionResponse :: Newtype CreateSlotTypeVersionResponse _
derive instance repGenericCreateSlotTypeVersionResponse :: Generic CreateSlotTypeVersionResponse _
instance showCreateSlotTypeVersionResponse :: Show CreateSlotTypeVersionResponse where show = genericShow
instance decodeCreateSlotTypeVersionResponse :: Decode CreateSlotTypeVersionResponse where decode = genericDecode options
instance encodeCreateSlotTypeVersionResponse :: Encode CreateSlotTypeVersionResponse where encode = genericEncode options

-- | Constructs CreateSlotTypeVersionResponse from required parameters
newCreateSlotTypeVersionResponse :: CreateSlotTypeVersionResponse
newCreateSlotTypeVersionResponse  = CreateSlotTypeVersionResponse { "checksum": Nothing, "createdDate": Nothing, "description": Nothing, "enumerationValues": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "valueSelectionStrategy": Nothing, "version": Nothing }

-- | Constructs CreateSlotTypeVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSlotTypeVersionResponse' :: ( { "name" :: Maybe (SlotTypeName) , "description" :: Maybe (Description) , "enumerationValues" :: Maybe (EnumerationValues) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy) } -> {"name" :: Maybe (SlotTypeName) , "description" :: Maybe (Description) , "enumerationValues" :: Maybe (EnumerationValues) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy) } ) -> CreateSlotTypeVersionResponse
newCreateSlotTypeVersionResponse'  customize = (CreateSlotTypeVersionResponse <<< customize) { "checksum": Nothing, "createdDate": Nothing, "description": Nothing, "enumerationValues": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "valueSelectionStrategy": Nothing, "version": Nothing }



newtype CustomOrBuiltinSlotTypeName = CustomOrBuiltinSlotTypeName String
derive instance newtypeCustomOrBuiltinSlotTypeName :: Newtype CustomOrBuiltinSlotTypeName _
derive instance repGenericCustomOrBuiltinSlotTypeName :: Generic CustomOrBuiltinSlotTypeName _
instance showCustomOrBuiltinSlotTypeName :: Show CustomOrBuiltinSlotTypeName where show = genericShow
instance decodeCustomOrBuiltinSlotTypeName :: Decode CustomOrBuiltinSlotTypeName where decode = genericDecode options
instance encodeCustomOrBuiltinSlotTypeName :: Encode CustomOrBuiltinSlotTypeName where encode = genericEncode options



newtype DeleteBotAliasRequest = DeleteBotAliasRequest 
  { "name" :: (AliasName)
  , "botName" :: (BotName)
  }
derive instance newtypeDeleteBotAliasRequest :: Newtype DeleteBotAliasRequest _
derive instance repGenericDeleteBotAliasRequest :: Generic DeleteBotAliasRequest _
instance showDeleteBotAliasRequest :: Show DeleteBotAliasRequest where show = genericShow
instance decodeDeleteBotAliasRequest :: Decode DeleteBotAliasRequest where decode = genericDecode options
instance encodeDeleteBotAliasRequest :: Encode DeleteBotAliasRequest where encode = genericEncode options

-- | Constructs DeleteBotAliasRequest from required parameters
newDeleteBotAliasRequest :: BotName -> AliasName -> DeleteBotAliasRequest
newDeleteBotAliasRequest _botName _name = DeleteBotAliasRequest { "botName": _botName, "name": _name }

-- | Constructs DeleteBotAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteBotAliasRequest' :: BotName -> AliasName -> ( { "name" :: (AliasName) , "botName" :: (BotName) } -> {"name" :: (AliasName) , "botName" :: (BotName) } ) -> DeleteBotAliasRequest
newDeleteBotAliasRequest' _botName _name customize = (DeleteBotAliasRequest <<< customize) { "botName": _botName, "name": _name }



newtype DeleteBotChannelAssociationRequest = DeleteBotChannelAssociationRequest 
  { "name" :: (BotChannelName)
  , "botName" :: (BotName)
  , "botAlias" :: (AliasName)
  }
derive instance newtypeDeleteBotChannelAssociationRequest :: Newtype DeleteBotChannelAssociationRequest _
derive instance repGenericDeleteBotChannelAssociationRequest :: Generic DeleteBotChannelAssociationRequest _
instance showDeleteBotChannelAssociationRequest :: Show DeleteBotChannelAssociationRequest where show = genericShow
instance decodeDeleteBotChannelAssociationRequest :: Decode DeleteBotChannelAssociationRequest where decode = genericDecode options
instance encodeDeleteBotChannelAssociationRequest :: Encode DeleteBotChannelAssociationRequest where encode = genericEncode options

-- | Constructs DeleteBotChannelAssociationRequest from required parameters
newDeleteBotChannelAssociationRequest :: AliasName -> BotName -> BotChannelName -> DeleteBotChannelAssociationRequest
newDeleteBotChannelAssociationRequest _botAlias _botName _name = DeleteBotChannelAssociationRequest { "botAlias": _botAlias, "botName": _botName, "name": _name }

-- | Constructs DeleteBotChannelAssociationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteBotChannelAssociationRequest' :: AliasName -> BotName -> BotChannelName -> ( { "name" :: (BotChannelName) , "botName" :: (BotName) , "botAlias" :: (AliasName) } -> {"name" :: (BotChannelName) , "botName" :: (BotName) , "botAlias" :: (AliasName) } ) -> DeleteBotChannelAssociationRequest
newDeleteBotChannelAssociationRequest' _botAlias _botName _name customize = (DeleteBotChannelAssociationRequest <<< customize) { "botAlias": _botAlias, "botName": _botName, "name": _name }



newtype DeleteBotRequest = DeleteBotRequest 
  { "name" :: (BotName)
  }
derive instance newtypeDeleteBotRequest :: Newtype DeleteBotRequest _
derive instance repGenericDeleteBotRequest :: Generic DeleteBotRequest _
instance showDeleteBotRequest :: Show DeleteBotRequest where show = genericShow
instance decodeDeleteBotRequest :: Decode DeleteBotRequest where decode = genericDecode options
instance encodeDeleteBotRequest :: Encode DeleteBotRequest where encode = genericEncode options

-- | Constructs DeleteBotRequest from required parameters
newDeleteBotRequest :: BotName -> DeleteBotRequest
newDeleteBotRequest _name = DeleteBotRequest { "name": _name }

-- | Constructs DeleteBotRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteBotRequest' :: BotName -> ( { "name" :: (BotName) } -> {"name" :: (BotName) } ) -> DeleteBotRequest
newDeleteBotRequest' _name customize = (DeleteBotRequest <<< customize) { "name": _name }



newtype DeleteBotVersionRequest = DeleteBotVersionRequest 
  { "name" :: (BotName)
  , "version" :: (NumericalVersion)
  }
derive instance newtypeDeleteBotVersionRequest :: Newtype DeleteBotVersionRequest _
derive instance repGenericDeleteBotVersionRequest :: Generic DeleteBotVersionRequest _
instance showDeleteBotVersionRequest :: Show DeleteBotVersionRequest where show = genericShow
instance decodeDeleteBotVersionRequest :: Decode DeleteBotVersionRequest where decode = genericDecode options
instance encodeDeleteBotVersionRequest :: Encode DeleteBotVersionRequest where encode = genericEncode options

-- | Constructs DeleteBotVersionRequest from required parameters
newDeleteBotVersionRequest :: BotName -> NumericalVersion -> DeleteBotVersionRequest
newDeleteBotVersionRequest _name _version = DeleteBotVersionRequest { "name": _name, "version": _version }

-- | Constructs DeleteBotVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteBotVersionRequest' :: BotName -> NumericalVersion -> ( { "name" :: (BotName) , "version" :: (NumericalVersion) } -> {"name" :: (BotName) , "version" :: (NumericalVersion) } ) -> DeleteBotVersionRequest
newDeleteBotVersionRequest' _name _version customize = (DeleteBotVersionRequest <<< customize) { "name": _name, "version": _version }



newtype DeleteIntentRequest = DeleteIntentRequest 
  { "name" :: (IntentName)
  }
derive instance newtypeDeleteIntentRequest :: Newtype DeleteIntentRequest _
derive instance repGenericDeleteIntentRequest :: Generic DeleteIntentRequest _
instance showDeleteIntentRequest :: Show DeleteIntentRequest where show = genericShow
instance decodeDeleteIntentRequest :: Decode DeleteIntentRequest where decode = genericDecode options
instance encodeDeleteIntentRequest :: Encode DeleteIntentRequest where encode = genericEncode options

-- | Constructs DeleteIntentRequest from required parameters
newDeleteIntentRequest :: IntentName -> DeleteIntentRequest
newDeleteIntentRequest _name = DeleteIntentRequest { "name": _name }

-- | Constructs DeleteIntentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIntentRequest' :: IntentName -> ( { "name" :: (IntentName) } -> {"name" :: (IntentName) } ) -> DeleteIntentRequest
newDeleteIntentRequest' _name customize = (DeleteIntentRequest <<< customize) { "name": _name }



newtype DeleteIntentVersionRequest = DeleteIntentVersionRequest 
  { "name" :: (IntentName)
  , "version" :: (NumericalVersion)
  }
derive instance newtypeDeleteIntentVersionRequest :: Newtype DeleteIntentVersionRequest _
derive instance repGenericDeleteIntentVersionRequest :: Generic DeleteIntentVersionRequest _
instance showDeleteIntentVersionRequest :: Show DeleteIntentVersionRequest where show = genericShow
instance decodeDeleteIntentVersionRequest :: Decode DeleteIntentVersionRequest where decode = genericDecode options
instance encodeDeleteIntentVersionRequest :: Encode DeleteIntentVersionRequest where encode = genericEncode options

-- | Constructs DeleteIntentVersionRequest from required parameters
newDeleteIntentVersionRequest :: IntentName -> NumericalVersion -> DeleteIntentVersionRequest
newDeleteIntentVersionRequest _name _version = DeleteIntentVersionRequest { "name": _name, "version": _version }

-- | Constructs DeleteIntentVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteIntentVersionRequest' :: IntentName -> NumericalVersion -> ( { "name" :: (IntentName) , "version" :: (NumericalVersion) } -> {"name" :: (IntentName) , "version" :: (NumericalVersion) } ) -> DeleteIntentVersionRequest
newDeleteIntentVersionRequest' _name _version customize = (DeleteIntentVersionRequest <<< customize) { "name": _name, "version": _version }



newtype DeleteSlotTypeRequest = DeleteSlotTypeRequest 
  { "name" :: (SlotTypeName)
  }
derive instance newtypeDeleteSlotTypeRequest :: Newtype DeleteSlotTypeRequest _
derive instance repGenericDeleteSlotTypeRequest :: Generic DeleteSlotTypeRequest _
instance showDeleteSlotTypeRequest :: Show DeleteSlotTypeRequest where show = genericShow
instance decodeDeleteSlotTypeRequest :: Decode DeleteSlotTypeRequest where decode = genericDecode options
instance encodeDeleteSlotTypeRequest :: Encode DeleteSlotTypeRequest where encode = genericEncode options

-- | Constructs DeleteSlotTypeRequest from required parameters
newDeleteSlotTypeRequest :: SlotTypeName -> DeleteSlotTypeRequest
newDeleteSlotTypeRequest _name = DeleteSlotTypeRequest { "name": _name }

-- | Constructs DeleteSlotTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSlotTypeRequest' :: SlotTypeName -> ( { "name" :: (SlotTypeName) } -> {"name" :: (SlotTypeName) } ) -> DeleteSlotTypeRequest
newDeleteSlotTypeRequest' _name customize = (DeleteSlotTypeRequest <<< customize) { "name": _name }



newtype DeleteSlotTypeVersionRequest = DeleteSlotTypeVersionRequest 
  { "name" :: (SlotTypeName)
  , "version" :: (NumericalVersion)
  }
derive instance newtypeDeleteSlotTypeVersionRequest :: Newtype DeleteSlotTypeVersionRequest _
derive instance repGenericDeleteSlotTypeVersionRequest :: Generic DeleteSlotTypeVersionRequest _
instance showDeleteSlotTypeVersionRequest :: Show DeleteSlotTypeVersionRequest where show = genericShow
instance decodeDeleteSlotTypeVersionRequest :: Decode DeleteSlotTypeVersionRequest where decode = genericDecode options
instance encodeDeleteSlotTypeVersionRequest :: Encode DeleteSlotTypeVersionRequest where encode = genericEncode options

-- | Constructs DeleteSlotTypeVersionRequest from required parameters
newDeleteSlotTypeVersionRequest :: SlotTypeName -> NumericalVersion -> DeleteSlotTypeVersionRequest
newDeleteSlotTypeVersionRequest _name _version = DeleteSlotTypeVersionRequest { "name": _name, "version": _version }

-- | Constructs DeleteSlotTypeVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSlotTypeVersionRequest' :: SlotTypeName -> NumericalVersion -> ( { "name" :: (SlotTypeName) , "version" :: (NumericalVersion) } -> {"name" :: (SlotTypeName) , "version" :: (NumericalVersion) } ) -> DeleteSlotTypeVersionRequest
newDeleteSlotTypeVersionRequest' _name _version customize = (DeleteSlotTypeVersionRequest <<< customize) { "name": _name, "version": _version }



newtype DeleteUtterancesRequest = DeleteUtterancesRequest 
  { "botName" :: (BotName)
  , "userId" :: (UserId)
  }
derive instance newtypeDeleteUtterancesRequest :: Newtype DeleteUtterancesRequest _
derive instance repGenericDeleteUtterancesRequest :: Generic DeleteUtterancesRequest _
instance showDeleteUtterancesRequest :: Show DeleteUtterancesRequest where show = genericShow
instance decodeDeleteUtterancesRequest :: Decode DeleteUtterancesRequest where decode = genericDecode options
instance encodeDeleteUtterancesRequest :: Encode DeleteUtterancesRequest where encode = genericEncode options

-- | Constructs DeleteUtterancesRequest from required parameters
newDeleteUtterancesRequest :: BotName -> UserId -> DeleteUtterancesRequest
newDeleteUtterancesRequest _botName _userId = DeleteUtterancesRequest { "botName": _botName, "userId": _userId }

-- | Constructs DeleteUtterancesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteUtterancesRequest' :: BotName -> UserId -> ( { "botName" :: (BotName) , "userId" :: (UserId) } -> {"botName" :: (BotName) , "userId" :: (UserId) } ) -> DeleteUtterancesRequest
newDeleteUtterancesRequest' _botName _userId customize = (DeleteUtterancesRequest <<< customize) { "botName": _botName, "userId": _userId }



newtype Description = Description String
derive instance newtypeDescription :: Newtype Description _
derive instance repGenericDescription :: Generic Description _
instance showDescription :: Show Description where show = genericShow
instance decodeDescription :: Decode Description where decode = genericDecode options
instance encodeDescription :: Encode Description where encode = genericEncode options



-- | <p>Each slot type can have a set of values. Each enumeration value represents a value the slot type can take. </p> <p>For example, a pizza ordering bot could have a slot type that specifies the type of crust that the pizza should have. The slot type could include the values </p> <ul> <li> <p>thick</p> </li> <li> <p>thin</p> </li> <li> <p>stuffed</p> </li> </ul>
newtype EnumerationValue = EnumerationValue 
  { "value" :: (Value)
  , "synonyms" :: Maybe (SynonymList)
  }
derive instance newtypeEnumerationValue :: Newtype EnumerationValue _
derive instance repGenericEnumerationValue :: Generic EnumerationValue _
instance showEnumerationValue :: Show EnumerationValue where show = genericShow
instance decodeEnumerationValue :: Decode EnumerationValue where decode = genericDecode options
instance encodeEnumerationValue :: Encode EnumerationValue where encode = genericEncode options

-- | Constructs EnumerationValue from required parameters
newEnumerationValue :: Value -> EnumerationValue
newEnumerationValue _value = EnumerationValue { "value": _value, "synonyms": Nothing }

-- | Constructs EnumerationValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnumerationValue' :: Value -> ( { "value" :: (Value) , "synonyms" :: Maybe (SynonymList) } -> {"value" :: (Value) , "synonyms" :: Maybe (SynonymList) } ) -> EnumerationValue
newEnumerationValue' _value customize = (EnumerationValue <<< customize) { "value": _value, "synonyms": Nothing }



newtype EnumerationValues = EnumerationValues (Array EnumerationValue)
derive instance newtypeEnumerationValues :: Newtype EnumerationValues _
derive instance repGenericEnumerationValues :: Generic EnumerationValues _
instance showEnumerationValues :: Show EnumerationValues where show = genericShow
instance decodeEnumerationValues :: Decode EnumerationValues where decode = genericDecode options
instance encodeEnumerationValues :: Encode EnumerationValues where encode = genericEncode options



newtype ExportStatus = ExportStatus String
derive instance newtypeExportStatus :: Newtype ExportStatus _
derive instance repGenericExportStatus :: Generic ExportStatus _
instance showExportStatus :: Show ExportStatus where show = genericShow
instance decodeExportStatus :: Decode ExportStatus where decode = genericDecode options
instance encodeExportStatus :: Encode ExportStatus where encode = genericEncode options



newtype ExportType = ExportType String
derive instance newtypeExportType :: Newtype ExportType _
derive instance repGenericExportType :: Generic ExportType _
instance showExportType :: Show ExportType where show = genericShow
instance decodeExportType :: Decode ExportType where decode = genericDecode options
instance encodeExportType :: Encode ExportType where encode = genericEncode options



-- | <p>A prompt for additional activity after an intent is fulfilled. For example, after the <code>OrderPizza</code> intent is fulfilled, you might prompt the user to find out whether the user wants to order drinks.</p>
newtype FollowUpPrompt = FollowUpPrompt 
  { "prompt" :: (Prompt)
  , "rejectionStatement" :: (Statement)
  }
derive instance newtypeFollowUpPrompt :: Newtype FollowUpPrompt _
derive instance repGenericFollowUpPrompt :: Generic FollowUpPrompt _
instance showFollowUpPrompt :: Show FollowUpPrompt where show = genericShow
instance decodeFollowUpPrompt :: Decode FollowUpPrompt where decode = genericDecode options
instance encodeFollowUpPrompt :: Encode FollowUpPrompt where encode = genericEncode options

-- | Constructs FollowUpPrompt from required parameters
newFollowUpPrompt :: Prompt -> Statement -> FollowUpPrompt
newFollowUpPrompt _prompt _rejectionStatement = FollowUpPrompt { "prompt": _prompt, "rejectionStatement": _rejectionStatement }

-- | Constructs FollowUpPrompt's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFollowUpPrompt' :: Prompt -> Statement -> ( { "prompt" :: (Prompt) , "rejectionStatement" :: (Statement) } -> {"prompt" :: (Prompt) , "rejectionStatement" :: (Statement) } ) -> FollowUpPrompt
newFollowUpPrompt' _prompt _rejectionStatement customize = (FollowUpPrompt <<< customize) { "prompt": _prompt, "rejectionStatement": _rejectionStatement }



-- | <p> Describes how the intent is fulfilled after the user provides all of the information required for the intent. You can provide a Lambda function to process the intent, or you can return the intent information to the client application. We recommend that you use a Lambda function so that the relevant logic lives in the Cloud and limit the client-side code primarily to presentation. If you need to update the logic, you only update the Lambda function; you don't need to upgrade your client application. </p> <p>Consider the following examples:</p> <ul> <li> <p>In a pizza ordering application, after the user provides all of the information for placing an order, you use a Lambda function to place an order with a pizzeria. </p> </li> <li> <p>In a gaming application, when a user says "pick up a rock," this information must go back to the client application so that it can perform the operation and update the graphics. In this case, you want Amazon Lex to return the intent data to the client. </p> </li> </ul>
newtype FulfillmentActivity = FulfillmentActivity 
  { "type" :: (FulfillmentActivityType)
  , "codeHook" :: Maybe (CodeHook)
  }
derive instance newtypeFulfillmentActivity :: Newtype FulfillmentActivity _
derive instance repGenericFulfillmentActivity :: Generic FulfillmentActivity _
instance showFulfillmentActivity :: Show FulfillmentActivity where show = genericShow
instance decodeFulfillmentActivity :: Decode FulfillmentActivity where decode = genericDecode options
instance encodeFulfillmentActivity :: Encode FulfillmentActivity where encode = genericEncode options

-- | Constructs FulfillmentActivity from required parameters
newFulfillmentActivity :: FulfillmentActivityType -> FulfillmentActivity
newFulfillmentActivity _type = FulfillmentActivity { "type": _type, "codeHook": Nothing }

-- | Constructs FulfillmentActivity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFulfillmentActivity' :: FulfillmentActivityType -> ( { "type" :: (FulfillmentActivityType) , "codeHook" :: Maybe (CodeHook) } -> {"type" :: (FulfillmentActivityType) , "codeHook" :: Maybe (CodeHook) } ) -> FulfillmentActivity
newFulfillmentActivity' _type customize = (FulfillmentActivity <<< customize) { "type": _type, "codeHook": Nothing }



newtype FulfillmentActivityType = FulfillmentActivityType String
derive instance newtypeFulfillmentActivityType :: Newtype FulfillmentActivityType _
derive instance repGenericFulfillmentActivityType :: Generic FulfillmentActivityType _
instance showFulfillmentActivityType :: Show FulfillmentActivityType where show = genericShow
instance decodeFulfillmentActivityType :: Decode FulfillmentActivityType where decode = genericDecode options
instance encodeFulfillmentActivityType :: Encode FulfillmentActivityType where encode = genericEncode options



newtype GetBotAliasRequest = GetBotAliasRequest 
  { "name" :: (AliasName)
  , "botName" :: (BotName)
  }
derive instance newtypeGetBotAliasRequest :: Newtype GetBotAliasRequest _
derive instance repGenericGetBotAliasRequest :: Generic GetBotAliasRequest _
instance showGetBotAliasRequest :: Show GetBotAliasRequest where show = genericShow
instance decodeGetBotAliasRequest :: Decode GetBotAliasRequest where decode = genericDecode options
instance encodeGetBotAliasRequest :: Encode GetBotAliasRequest where encode = genericEncode options

-- | Constructs GetBotAliasRequest from required parameters
newGetBotAliasRequest :: BotName -> AliasName -> GetBotAliasRequest
newGetBotAliasRequest _botName _name = GetBotAliasRequest { "botName": _botName, "name": _name }

-- | Constructs GetBotAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotAliasRequest' :: BotName -> AliasName -> ( { "name" :: (AliasName) , "botName" :: (BotName) } -> {"name" :: (AliasName) , "botName" :: (BotName) } ) -> GetBotAliasRequest
newGetBotAliasRequest' _botName _name customize = (GetBotAliasRequest <<< customize) { "botName": _botName, "name": _name }



newtype GetBotAliasResponse = GetBotAliasResponse 
  { "name" :: Maybe (AliasName)
  , "description" :: Maybe (Description)
  , "botVersion" :: Maybe (Version)
  , "botName" :: Maybe (BotName)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "checksum" :: Maybe (String)
  }
derive instance newtypeGetBotAliasResponse :: Newtype GetBotAliasResponse _
derive instance repGenericGetBotAliasResponse :: Generic GetBotAliasResponse _
instance showGetBotAliasResponse :: Show GetBotAliasResponse where show = genericShow
instance decodeGetBotAliasResponse :: Decode GetBotAliasResponse where decode = genericDecode options
instance encodeGetBotAliasResponse :: Encode GetBotAliasResponse where encode = genericEncode options

-- | Constructs GetBotAliasResponse from required parameters
newGetBotAliasResponse :: GetBotAliasResponse
newGetBotAliasResponse  = GetBotAliasResponse { "botName": Nothing, "botVersion": Nothing, "checksum": Nothing, "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing }

-- | Constructs GetBotAliasResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotAliasResponse' :: ( { "name" :: Maybe (AliasName) , "description" :: Maybe (Description) , "botVersion" :: Maybe (Version) , "botName" :: Maybe (BotName) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "checksum" :: Maybe (String) } -> {"name" :: Maybe (AliasName) , "description" :: Maybe (Description) , "botVersion" :: Maybe (Version) , "botName" :: Maybe (BotName) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "checksum" :: Maybe (String) } ) -> GetBotAliasResponse
newGetBotAliasResponse'  customize = (GetBotAliasResponse <<< customize) { "botName": Nothing, "botVersion": Nothing, "checksum": Nothing, "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing }



newtype GetBotAliasesRequest = GetBotAliasesRequest 
  { "botName" :: (BotName)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  , "nameContains" :: Maybe (AliasName)
  }
derive instance newtypeGetBotAliasesRequest :: Newtype GetBotAliasesRequest _
derive instance repGenericGetBotAliasesRequest :: Generic GetBotAliasesRequest _
instance showGetBotAliasesRequest :: Show GetBotAliasesRequest where show = genericShow
instance decodeGetBotAliasesRequest :: Decode GetBotAliasesRequest where decode = genericDecode options
instance encodeGetBotAliasesRequest :: Encode GetBotAliasesRequest where encode = genericEncode options

-- | Constructs GetBotAliasesRequest from required parameters
newGetBotAliasesRequest :: BotName -> GetBotAliasesRequest
newGetBotAliasesRequest _botName = GetBotAliasesRequest { "botName": _botName, "maxResults": Nothing, "nameContains": Nothing, "nextToken": Nothing }

-- | Constructs GetBotAliasesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotAliasesRequest' :: BotName -> ( { "botName" :: (BotName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "nameContains" :: Maybe (AliasName) } -> {"botName" :: (BotName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "nameContains" :: Maybe (AliasName) } ) -> GetBotAliasesRequest
newGetBotAliasesRequest' _botName customize = (GetBotAliasesRequest <<< customize) { "botName": _botName, "maxResults": Nothing, "nameContains": Nothing, "nextToken": Nothing }



newtype GetBotAliasesResponse = GetBotAliasesResponse 
  { "BotAliases" :: Maybe (BotAliasMetadataList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetBotAliasesResponse :: Newtype GetBotAliasesResponse _
derive instance repGenericGetBotAliasesResponse :: Generic GetBotAliasesResponse _
instance showGetBotAliasesResponse :: Show GetBotAliasesResponse where show = genericShow
instance decodeGetBotAliasesResponse :: Decode GetBotAliasesResponse where decode = genericDecode options
instance encodeGetBotAliasesResponse :: Encode GetBotAliasesResponse where encode = genericEncode options

-- | Constructs GetBotAliasesResponse from required parameters
newGetBotAliasesResponse :: GetBotAliasesResponse
newGetBotAliasesResponse  = GetBotAliasesResponse { "BotAliases": Nothing, "nextToken": Nothing }

-- | Constructs GetBotAliasesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotAliasesResponse' :: ( { "BotAliases" :: Maybe (BotAliasMetadataList) , "nextToken" :: Maybe (NextToken) } -> {"BotAliases" :: Maybe (BotAliasMetadataList) , "nextToken" :: Maybe (NextToken) } ) -> GetBotAliasesResponse
newGetBotAliasesResponse'  customize = (GetBotAliasesResponse <<< customize) { "BotAliases": Nothing, "nextToken": Nothing }



newtype GetBotChannelAssociationRequest = GetBotChannelAssociationRequest 
  { "name" :: (BotChannelName)
  , "botName" :: (BotName)
  , "botAlias" :: (AliasName)
  }
derive instance newtypeGetBotChannelAssociationRequest :: Newtype GetBotChannelAssociationRequest _
derive instance repGenericGetBotChannelAssociationRequest :: Generic GetBotChannelAssociationRequest _
instance showGetBotChannelAssociationRequest :: Show GetBotChannelAssociationRequest where show = genericShow
instance decodeGetBotChannelAssociationRequest :: Decode GetBotChannelAssociationRequest where decode = genericDecode options
instance encodeGetBotChannelAssociationRequest :: Encode GetBotChannelAssociationRequest where encode = genericEncode options

-- | Constructs GetBotChannelAssociationRequest from required parameters
newGetBotChannelAssociationRequest :: AliasName -> BotName -> BotChannelName -> GetBotChannelAssociationRequest
newGetBotChannelAssociationRequest _botAlias _botName _name = GetBotChannelAssociationRequest { "botAlias": _botAlias, "botName": _botName, "name": _name }

-- | Constructs GetBotChannelAssociationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotChannelAssociationRequest' :: AliasName -> BotName -> BotChannelName -> ( { "name" :: (BotChannelName) , "botName" :: (BotName) , "botAlias" :: (AliasName) } -> {"name" :: (BotChannelName) , "botName" :: (BotName) , "botAlias" :: (AliasName) } ) -> GetBotChannelAssociationRequest
newGetBotChannelAssociationRequest' _botAlias _botName _name customize = (GetBotChannelAssociationRequest <<< customize) { "botAlias": _botAlias, "botName": _botName, "name": _name }



newtype GetBotChannelAssociationResponse = GetBotChannelAssociationResponse 
  { "name" :: Maybe (BotChannelName)
  , "description" :: Maybe (Description)
  , "botAlias" :: Maybe (AliasName)
  , "botName" :: Maybe (BotName)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "type" :: Maybe (ChannelType)
  , "botConfiguration" :: Maybe (ChannelConfigurationMap)
  , "status" :: Maybe (ChannelStatus)
  , "failureReason" :: Maybe (String)
  }
derive instance newtypeGetBotChannelAssociationResponse :: Newtype GetBotChannelAssociationResponse _
derive instance repGenericGetBotChannelAssociationResponse :: Generic GetBotChannelAssociationResponse _
instance showGetBotChannelAssociationResponse :: Show GetBotChannelAssociationResponse where show = genericShow
instance decodeGetBotChannelAssociationResponse :: Decode GetBotChannelAssociationResponse where decode = genericDecode options
instance encodeGetBotChannelAssociationResponse :: Encode GetBotChannelAssociationResponse where encode = genericEncode options

-- | Constructs GetBotChannelAssociationResponse from required parameters
newGetBotChannelAssociationResponse :: GetBotChannelAssociationResponse
newGetBotChannelAssociationResponse  = GetBotChannelAssociationResponse { "botAlias": Nothing, "botConfiguration": Nothing, "botName": Nothing, "createdDate": Nothing, "description": Nothing, "failureReason": Nothing, "name": Nothing, "status": Nothing, "type": Nothing }

-- | Constructs GetBotChannelAssociationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotChannelAssociationResponse' :: ( { "name" :: Maybe (BotChannelName) , "description" :: Maybe (Description) , "botAlias" :: Maybe (AliasName) , "botName" :: Maybe (BotName) , "createdDate" :: Maybe (Types.Timestamp) , "type" :: Maybe (ChannelType) , "botConfiguration" :: Maybe (ChannelConfigurationMap) , "status" :: Maybe (ChannelStatus) , "failureReason" :: Maybe (String) } -> {"name" :: Maybe (BotChannelName) , "description" :: Maybe (Description) , "botAlias" :: Maybe (AliasName) , "botName" :: Maybe (BotName) , "createdDate" :: Maybe (Types.Timestamp) , "type" :: Maybe (ChannelType) , "botConfiguration" :: Maybe (ChannelConfigurationMap) , "status" :: Maybe (ChannelStatus) , "failureReason" :: Maybe (String) } ) -> GetBotChannelAssociationResponse
newGetBotChannelAssociationResponse'  customize = (GetBotChannelAssociationResponse <<< customize) { "botAlias": Nothing, "botConfiguration": Nothing, "botName": Nothing, "createdDate": Nothing, "description": Nothing, "failureReason": Nothing, "name": Nothing, "status": Nothing, "type": Nothing }



newtype GetBotChannelAssociationsRequest = GetBotChannelAssociationsRequest 
  { "botName" :: (BotName)
  , "botAlias" :: (AliasNameOrListAll)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  , "nameContains" :: Maybe (BotChannelName)
  }
derive instance newtypeGetBotChannelAssociationsRequest :: Newtype GetBotChannelAssociationsRequest _
derive instance repGenericGetBotChannelAssociationsRequest :: Generic GetBotChannelAssociationsRequest _
instance showGetBotChannelAssociationsRequest :: Show GetBotChannelAssociationsRequest where show = genericShow
instance decodeGetBotChannelAssociationsRequest :: Decode GetBotChannelAssociationsRequest where decode = genericDecode options
instance encodeGetBotChannelAssociationsRequest :: Encode GetBotChannelAssociationsRequest where encode = genericEncode options

-- | Constructs GetBotChannelAssociationsRequest from required parameters
newGetBotChannelAssociationsRequest :: AliasNameOrListAll -> BotName -> GetBotChannelAssociationsRequest
newGetBotChannelAssociationsRequest _botAlias _botName = GetBotChannelAssociationsRequest { "botAlias": _botAlias, "botName": _botName, "maxResults": Nothing, "nameContains": Nothing, "nextToken": Nothing }

-- | Constructs GetBotChannelAssociationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotChannelAssociationsRequest' :: AliasNameOrListAll -> BotName -> ( { "botName" :: (BotName) , "botAlias" :: (AliasNameOrListAll) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "nameContains" :: Maybe (BotChannelName) } -> {"botName" :: (BotName) , "botAlias" :: (AliasNameOrListAll) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "nameContains" :: Maybe (BotChannelName) } ) -> GetBotChannelAssociationsRequest
newGetBotChannelAssociationsRequest' _botAlias _botName customize = (GetBotChannelAssociationsRequest <<< customize) { "botAlias": _botAlias, "botName": _botName, "maxResults": Nothing, "nameContains": Nothing, "nextToken": Nothing }



newtype GetBotChannelAssociationsResponse = GetBotChannelAssociationsResponse 
  { "botChannelAssociations" :: Maybe (BotChannelAssociationList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetBotChannelAssociationsResponse :: Newtype GetBotChannelAssociationsResponse _
derive instance repGenericGetBotChannelAssociationsResponse :: Generic GetBotChannelAssociationsResponse _
instance showGetBotChannelAssociationsResponse :: Show GetBotChannelAssociationsResponse where show = genericShow
instance decodeGetBotChannelAssociationsResponse :: Decode GetBotChannelAssociationsResponse where decode = genericDecode options
instance encodeGetBotChannelAssociationsResponse :: Encode GetBotChannelAssociationsResponse where encode = genericEncode options

-- | Constructs GetBotChannelAssociationsResponse from required parameters
newGetBotChannelAssociationsResponse :: GetBotChannelAssociationsResponse
newGetBotChannelAssociationsResponse  = GetBotChannelAssociationsResponse { "botChannelAssociations": Nothing, "nextToken": Nothing }

-- | Constructs GetBotChannelAssociationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotChannelAssociationsResponse' :: ( { "botChannelAssociations" :: Maybe (BotChannelAssociationList) , "nextToken" :: Maybe (NextToken) } -> {"botChannelAssociations" :: Maybe (BotChannelAssociationList) , "nextToken" :: Maybe (NextToken) } ) -> GetBotChannelAssociationsResponse
newGetBotChannelAssociationsResponse'  customize = (GetBotChannelAssociationsResponse <<< customize) { "botChannelAssociations": Nothing, "nextToken": Nothing }



newtype GetBotRequest = GetBotRequest 
  { "name" :: (BotName)
  , "versionOrAlias" :: (String)
  }
derive instance newtypeGetBotRequest :: Newtype GetBotRequest _
derive instance repGenericGetBotRequest :: Generic GetBotRequest _
instance showGetBotRequest :: Show GetBotRequest where show = genericShow
instance decodeGetBotRequest :: Decode GetBotRequest where decode = genericDecode options
instance encodeGetBotRequest :: Encode GetBotRequest where encode = genericEncode options

-- | Constructs GetBotRequest from required parameters
newGetBotRequest :: BotName -> String -> GetBotRequest
newGetBotRequest _name _versionOrAlias = GetBotRequest { "name": _name, "versionOrAlias": _versionOrAlias }

-- | Constructs GetBotRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotRequest' :: BotName -> String -> ( { "name" :: (BotName) , "versionOrAlias" :: (String) } -> {"name" :: (BotName) , "versionOrAlias" :: (String) } ) -> GetBotRequest
newGetBotRequest' _name _versionOrAlias customize = (GetBotRequest <<< customize) { "name": _name, "versionOrAlias": _versionOrAlias }



newtype GetBotResponse = GetBotResponse 
  { "name" :: Maybe (BotName)
  , "description" :: Maybe (Description)
  , "intents" :: Maybe (IntentList)
  , "clarificationPrompt" :: Maybe (Prompt)
  , "abortStatement" :: Maybe (Statement)
  , "status" :: Maybe (Status)
  , "failureReason" :: Maybe (String)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "idleSessionTTLInSeconds" :: Maybe (SessionTTL)
  , "voiceId" :: Maybe (String)
  , "checksum" :: Maybe (String)
  , "version" :: Maybe (Version)
  , "locale" :: Maybe (Locale)
  , "childDirected" :: Maybe (Boolean)
  }
derive instance newtypeGetBotResponse :: Newtype GetBotResponse _
derive instance repGenericGetBotResponse :: Generic GetBotResponse _
instance showGetBotResponse :: Show GetBotResponse where show = genericShow
instance decodeGetBotResponse :: Decode GetBotResponse where decode = genericDecode options
instance encodeGetBotResponse :: Encode GetBotResponse where encode = genericEncode options

-- | Constructs GetBotResponse from required parameters
newGetBotResponse :: GetBotResponse
newGetBotResponse  = GetBotResponse { "abortStatement": Nothing, "checksum": Nothing, "childDirected": Nothing, "clarificationPrompt": Nothing, "createdDate": Nothing, "description": Nothing, "failureReason": Nothing, "idleSessionTTLInSeconds": Nothing, "intents": Nothing, "lastUpdatedDate": Nothing, "locale": Nothing, "name": Nothing, "status": Nothing, "version": Nothing, "voiceId": Nothing }

-- | Constructs GetBotResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotResponse' :: ( { "name" :: Maybe (BotName) , "description" :: Maybe (Description) , "intents" :: Maybe (IntentList) , "clarificationPrompt" :: Maybe (Prompt) , "abortStatement" :: Maybe (Statement) , "status" :: Maybe (Status) , "failureReason" :: Maybe (String) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "idleSessionTTLInSeconds" :: Maybe (SessionTTL) , "voiceId" :: Maybe (String) , "checksum" :: Maybe (String) , "version" :: Maybe (Version) , "locale" :: Maybe (Locale) , "childDirected" :: Maybe (Boolean) } -> {"name" :: Maybe (BotName) , "description" :: Maybe (Description) , "intents" :: Maybe (IntentList) , "clarificationPrompt" :: Maybe (Prompt) , "abortStatement" :: Maybe (Statement) , "status" :: Maybe (Status) , "failureReason" :: Maybe (String) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "idleSessionTTLInSeconds" :: Maybe (SessionTTL) , "voiceId" :: Maybe (String) , "checksum" :: Maybe (String) , "version" :: Maybe (Version) , "locale" :: Maybe (Locale) , "childDirected" :: Maybe (Boolean) } ) -> GetBotResponse
newGetBotResponse'  customize = (GetBotResponse <<< customize) { "abortStatement": Nothing, "checksum": Nothing, "childDirected": Nothing, "clarificationPrompt": Nothing, "createdDate": Nothing, "description": Nothing, "failureReason": Nothing, "idleSessionTTLInSeconds": Nothing, "intents": Nothing, "lastUpdatedDate": Nothing, "locale": Nothing, "name": Nothing, "status": Nothing, "version": Nothing, "voiceId": Nothing }



newtype GetBotVersionsRequest = GetBotVersionsRequest 
  { "name" :: (BotName)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeGetBotVersionsRequest :: Newtype GetBotVersionsRequest _
derive instance repGenericGetBotVersionsRequest :: Generic GetBotVersionsRequest _
instance showGetBotVersionsRequest :: Show GetBotVersionsRequest where show = genericShow
instance decodeGetBotVersionsRequest :: Decode GetBotVersionsRequest where decode = genericDecode options
instance encodeGetBotVersionsRequest :: Encode GetBotVersionsRequest where encode = genericEncode options

-- | Constructs GetBotVersionsRequest from required parameters
newGetBotVersionsRequest :: BotName -> GetBotVersionsRequest
newGetBotVersionsRequest _name = GetBotVersionsRequest { "name": _name, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs GetBotVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotVersionsRequest' :: BotName -> ( { "name" :: (BotName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } -> {"name" :: (BotName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } ) -> GetBotVersionsRequest
newGetBotVersionsRequest' _name customize = (GetBotVersionsRequest <<< customize) { "name": _name, "maxResults": Nothing, "nextToken": Nothing }



newtype GetBotVersionsResponse = GetBotVersionsResponse 
  { "bots" :: Maybe (BotMetadataList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetBotVersionsResponse :: Newtype GetBotVersionsResponse _
derive instance repGenericGetBotVersionsResponse :: Generic GetBotVersionsResponse _
instance showGetBotVersionsResponse :: Show GetBotVersionsResponse where show = genericShow
instance decodeGetBotVersionsResponse :: Decode GetBotVersionsResponse where decode = genericDecode options
instance encodeGetBotVersionsResponse :: Encode GetBotVersionsResponse where encode = genericEncode options

-- | Constructs GetBotVersionsResponse from required parameters
newGetBotVersionsResponse :: GetBotVersionsResponse
newGetBotVersionsResponse  = GetBotVersionsResponse { "bots": Nothing, "nextToken": Nothing }

-- | Constructs GetBotVersionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotVersionsResponse' :: ( { "bots" :: Maybe (BotMetadataList) , "nextToken" :: Maybe (NextToken) } -> {"bots" :: Maybe (BotMetadataList) , "nextToken" :: Maybe (NextToken) } ) -> GetBotVersionsResponse
newGetBotVersionsResponse'  customize = (GetBotVersionsResponse <<< customize) { "bots": Nothing, "nextToken": Nothing }



newtype GetBotsRequest = GetBotsRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  , "nameContains" :: Maybe (BotName)
  }
derive instance newtypeGetBotsRequest :: Newtype GetBotsRequest _
derive instance repGenericGetBotsRequest :: Generic GetBotsRequest _
instance showGetBotsRequest :: Show GetBotsRequest where show = genericShow
instance decodeGetBotsRequest :: Decode GetBotsRequest where decode = genericDecode options
instance encodeGetBotsRequest :: Encode GetBotsRequest where encode = genericEncode options

-- | Constructs GetBotsRequest from required parameters
newGetBotsRequest :: GetBotsRequest
newGetBotsRequest  = GetBotsRequest { "maxResults": Nothing, "nameContains": Nothing, "nextToken": Nothing }

-- | Constructs GetBotsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotsRequest' :: ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "nameContains" :: Maybe (BotName) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "nameContains" :: Maybe (BotName) } ) -> GetBotsRequest
newGetBotsRequest'  customize = (GetBotsRequest <<< customize) { "maxResults": Nothing, "nameContains": Nothing, "nextToken": Nothing }



newtype GetBotsResponse = GetBotsResponse 
  { "bots" :: Maybe (BotMetadataList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetBotsResponse :: Newtype GetBotsResponse _
derive instance repGenericGetBotsResponse :: Generic GetBotsResponse _
instance showGetBotsResponse :: Show GetBotsResponse where show = genericShow
instance decodeGetBotsResponse :: Decode GetBotsResponse where decode = genericDecode options
instance encodeGetBotsResponse :: Encode GetBotsResponse where encode = genericEncode options

-- | Constructs GetBotsResponse from required parameters
newGetBotsResponse :: GetBotsResponse
newGetBotsResponse  = GetBotsResponse { "bots": Nothing, "nextToken": Nothing }

-- | Constructs GetBotsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBotsResponse' :: ( { "bots" :: Maybe (BotMetadataList) , "nextToken" :: Maybe (NextToken) } -> {"bots" :: Maybe (BotMetadataList) , "nextToken" :: Maybe (NextToken) } ) -> GetBotsResponse
newGetBotsResponse'  customize = (GetBotsResponse <<< customize) { "bots": Nothing, "nextToken": Nothing }



newtype GetBuiltinIntentRequest = GetBuiltinIntentRequest 
  { "signature" :: (BuiltinIntentSignature)
  }
derive instance newtypeGetBuiltinIntentRequest :: Newtype GetBuiltinIntentRequest _
derive instance repGenericGetBuiltinIntentRequest :: Generic GetBuiltinIntentRequest _
instance showGetBuiltinIntentRequest :: Show GetBuiltinIntentRequest where show = genericShow
instance decodeGetBuiltinIntentRequest :: Decode GetBuiltinIntentRequest where decode = genericDecode options
instance encodeGetBuiltinIntentRequest :: Encode GetBuiltinIntentRequest where encode = genericEncode options

-- | Constructs GetBuiltinIntentRequest from required parameters
newGetBuiltinIntentRequest :: BuiltinIntentSignature -> GetBuiltinIntentRequest
newGetBuiltinIntentRequest _signature = GetBuiltinIntentRequest { "signature": _signature }

-- | Constructs GetBuiltinIntentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBuiltinIntentRequest' :: BuiltinIntentSignature -> ( { "signature" :: (BuiltinIntentSignature) } -> {"signature" :: (BuiltinIntentSignature) } ) -> GetBuiltinIntentRequest
newGetBuiltinIntentRequest' _signature customize = (GetBuiltinIntentRequest <<< customize) { "signature": _signature }



newtype GetBuiltinIntentResponse = GetBuiltinIntentResponse 
  { "signature" :: Maybe (BuiltinIntentSignature)
  , "supportedLocales" :: Maybe (LocaleList)
  , "slots" :: Maybe (BuiltinIntentSlotList)
  }
derive instance newtypeGetBuiltinIntentResponse :: Newtype GetBuiltinIntentResponse _
derive instance repGenericGetBuiltinIntentResponse :: Generic GetBuiltinIntentResponse _
instance showGetBuiltinIntentResponse :: Show GetBuiltinIntentResponse where show = genericShow
instance decodeGetBuiltinIntentResponse :: Decode GetBuiltinIntentResponse where decode = genericDecode options
instance encodeGetBuiltinIntentResponse :: Encode GetBuiltinIntentResponse where encode = genericEncode options

-- | Constructs GetBuiltinIntentResponse from required parameters
newGetBuiltinIntentResponse :: GetBuiltinIntentResponse
newGetBuiltinIntentResponse  = GetBuiltinIntentResponse { "signature": Nothing, "slots": Nothing, "supportedLocales": Nothing }

-- | Constructs GetBuiltinIntentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBuiltinIntentResponse' :: ( { "signature" :: Maybe (BuiltinIntentSignature) , "supportedLocales" :: Maybe (LocaleList) , "slots" :: Maybe (BuiltinIntentSlotList) } -> {"signature" :: Maybe (BuiltinIntentSignature) , "supportedLocales" :: Maybe (LocaleList) , "slots" :: Maybe (BuiltinIntentSlotList) } ) -> GetBuiltinIntentResponse
newGetBuiltinIntentResponse'  customize = (GetBuiltinIntentResponse <<< customize) { "signature": Nothing, "slots": Nothing, "supportedLocales": Nothing }



newtype GetBuiltinIntentsRequest = GetBuiltinIntentsRequest 
  { "locale" :: Maybe (Locale)
  , "signatureContains" :: Maybe (String)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeGetBuiltinIntentsRequest :: Newtype GetBuiltinIntentsRequest _
derive instance repGenericGetBuiltinIntentsRequest :: Generic GetBuiltinIntentsRequest _
instance showGetBuiltinIntentsRequest :: Show GetBuiltinIntentsRequest where show = genericShow
instance decodeGetBuiltinIntentsRequest :: Decode GetBuiltinIntentsRequest where decode = genericDecode options
instance encodeGetBuiltinIntentsRequest :: Encode GetBuiltinIntentsRequest where encode = genericEncode options

-- | Constructs GetBuiltinIntentsRequest from required parameters
newGetBuiltinIntentsRequest :: GetBuiltinIntentsRequest
newGetBuiltinIntentsRequest  = GetBuiltinIntentsRequest { "locale": Nothing, "maxResults": Nothing, "nextToken": Nothing, "signatureContains": Nothing }

-- | Constructs GetBuiltinIntentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBuiltinIntentsRequest' :: ( { "locale" :: Maybe (Locale) , "signatureContains" :: Maybe (String) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } -> {"locale" :: Maybe (Locale) , "signatureContains" :: Maybe (String) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } ) -> GetBuiltinIntentsRequest
newGetBuiltinIntentsRequest'  customize = (GetBuiltinIntentsRequest <<< customize) { "locale": Nothing, "maxResults": Nothing, "nextToken": Nothing, "signatureContains": Nothing }



newtype GetBuiltinIntentsResponse = GetBuiltinIntentsResponse 
  { "intents" :: Maybe (BuiltinIntentMetadataList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetBuiltinIntentsResponse :: Newtype GetBuiltinIntentsResponse _
derive instance repGenericGetBuiltinIntentsResponse :: Generic GetBuiltinIntentsResponse _
instance showGetBuiltinIntentsResponse :: Show GetBuiltinIntentsResponse where show = genericShow
instance decodeGetBuiltinIntentsResponse :: Decode GetBuiltinIntentsResponse where decode = genericDecode options
instance encodeGetBuiltinIntentsResponse :: Encode GetBuiltinIntentsResponse where encode = genericEncode options

-- | Constructs GetBuiltinIntentsResponse from required parameters
newGetBuiltinIntentsResponse :: GetBuiltinIntentsResponse
newGetBuiltinIntentsResponse  = GetBuiltinIntentsResponse { "intents": Nothing, "nextToken": Nothing }

-- | Constructs GetBuiltinIntentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBuiltinIntentsResponse' :: ( { "intents" :: Maybe (BuiltinIntentMetadataList) , "nextToken" :: Maybe (NextToken) } -> {"intents" :: Maybe (BuiltinIntentMetadataList) , "nextToken" :: Maybe (NextToken) } ) -> GetBuiltinIntentsResponse
newGetBuiltinIntentsResponse'  customize = (GetBuiltinIntentsResponse <<< customize) { "intents": Nothing, "nextToken": Nothing }



newtype GetBuiltinSlotTypesRequest = GetBuiltinSlotTypesRequest 
  { "locale" :: Maybe (Locale)
  , "signatureContains" :: Maybe (String)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeGetBuiltinSlotTypesRequest :: Newtype GetBuiltinSlotTypesRequest _
derive instance repGenericGetBuiltinSlotTypesRequest :: Generic GetBuiltinSlotTypesRequest _
instance showGetBuiltinSlotTypesRequest :: Show GetBuiltinSlotTypesRequest where show = genericShow
instance decodeGetBuiltinSlotTypesRequest :: Decode GetBuiltinSlotTypesRequest where decode = genericDecode options
instance encodeGetBuiltinSlotTypesRequest :: Encode GetBuiltinSlotTypesRequest where encode = genericEncode options

-- | Constructs GetBuiltinSlotTypesRequest from required parameters
newGetBuiltinSlotTypesRequest :: GetBuiltinSlotTypesRequest
newGetBuiltinSlotTypesRequest  = GetBuiltinSlotTypesRequest { "locale": Nothing, "maxResults": Nothing, "nextToken": Nothing, "signatureContains": Nothing }

-- | Constructs GetBuiltinSlotTypesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBuiltinSlotTypesRequest' :: ( { "locale" :: Maybe (Locale) , "signatureContains" :: Maybe (String) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } -> {"locale" :: Maybe (Locale) , "signatureContains" :: Maybe (String) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } ) -> GetBuiltinSlotTypesRequest
newGetBuiltinSlotTypesRequest'  customize = (GetBuiltinSlotTypesRequest <<< customize) { "locale": Nothing, "maxResults": Nothing, "nextToken": Nothing, "signatureContains": Nothing }



newtype GetBuiltinSlotTypesResponse = GetBuiltinSlotTypesResponse 
  { "slotTypes" :: Maybe (BuiltinSlotTypeMetadataList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetBuiltinSlotTypesResponse :: Newtype GetBuiltinSlotTypesResponse _
derive instance repGenericGetBuiltinSlotTypesResponse :: Generic GetBuiltinSlotTypesResponse _
instance showGetBuiltinSlotTypesResponse :: Show GetBuiltinSlotTypesResponse where show = genericShow
instance decodeGetBuiltinSlotTypesResponse :: Decode GetBuiltinSlotTypesResponse where decode = genericDecode options
instance encodeGetBuiltinSlotTypesResponse :: Encode GetBuiltinSlotTypesResponse where encode = genericEncode options

-- | Constructs GetBuiltinSlotTypesResponse from required parameters
newGetBuiltinSlotTypesResponse :: GetBuiltinSlotTypesResponse
newGetBuiltinSlotTypesResponse  = GetBuiltinSlotTypesResponse { "nextToken": Nothing, "slotTypes": Nothing }

-- | Constructs GetBuiltinSlotTypesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBuiltinSlotTypesResponse' :: ( { "slotTypes" :: Maybe (BuiltinSlotTypeMetadataList) , "nextToken" :: Maybe (NextToken) } -> {"slotTypes" :: Maybe (BuiltinSlotTypeMetadataList) , "nextToken" :: Maybe (NextToken) } ) -> GetBuiltinSlotTypesResponse
newGetBuiltinSlotTypesResponse'  customize = (GetBuiltinSlotTypesResponse <<< customize) { "nextToken": Nothing, "slotTypes": Nothing }



newtype GetExportRequest = GetExportRequest 
  { "name" :: (Name)
  , "version" :: (NumericalVersion)
  , "resourceType" :: (ResourceType)
  , "exportType" :: (ExportType)
  }
derive instance newtypeGetExportRequest :: Newtype GetExportRequest _
derive instance repGenericGetExportRequest :: Generic GetExportRequest _
instance showGetExportRequest :: Show GetExportRequest where show = genericShow
instance decodeGetExportRequest :: Decode GetExportRequest where decode = genericDecode options
instance encodeGetExportRequest :: Encode GetExportRequest where encode = genericEncode options

-- | Constructs GetExportRequest from required parameters
newGetExportRequest :: ExportType -> Name -> ResourceType -> NumericalVersion -> GetExportRequest
newGetExportRequest _exportType _name _resourceType _version = GetExportRequest { "exportType": _exportType, "name": _name, "resourceType": _resourceType, "version": _version }

-- | Constructs GetExportRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetExportRequest' :: ExportType -> Name -> ResourceType -> NumericalVersion -> ( { "name" :: (Name) , "version" :: (NumericalVersion) , "resourceType" :: (ResourceType) , "exportType" :: (ExportType) } -> {"name" :: (Name) , "version" :: (NumericalVersion) , "resourceType" :: (ResourceType) , "exportType" :: (ExportType) } ) -> GetExportRequest
newGetExportRequest' _exportType _name _resourceType _version customize = (GetExportRequest <<< customize) { "exportType": _exportType, "name": _name, "resourceType": _resourceType, "version": _version }



newtype GetExportResponse = GetExportResponse 
  { "name" :: Maybe (Name)
  , "version" :: Maybe (NumericalVersion)
  , "resourceType" :: Maybe (ResourceType)
  , "exportType" :: Maybe (ExportType)
  , "exportStatus" :: Maybe (ExportStatus)
  , "failureReason" :: Maybe (String)
  , "url" :: Maybe (String)
  }
derive instance newtypeGetExportResponse :: Newtype GetExportResponse _
derive instance repGenericGetExportResponse :: Generic GetExportResponse _
instance showGetExportResponse :: Show GetExportResponse where show = genericShow
instance decodeGetExportResponse :: Decode GetExportResponse where decode = genericDecode options
instance encodeGetExportResponse :: Encode GetExportResponse where encode = genericEncode options

-- | Constructs GetExportResponse from required parameters
newGetExportResponse :: GetExportResponse
newGetExportResponse  = GetExportResponse { "exportStatus": Nothing, "exportType": Nothing, "failureReason": Nothing, "name": Nothing, "resourceType": Nothing, "url": Nothing, "version": Nothing }

-- | Constructs GetExportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetExportResponse' :: ( { "name" :: Maybe (Name) , "version" :: Maybe (NumericalVersion) , "resourceType" :: Maybe (ResourceType) , "exportType" :: Maybe (ExportType) , "exportStatus" :: Maybe (ExportStatus) , "failureReason" :: Maybe (String) , "url" :: Maybe (String) } -> {"name" :: Maybe (Name) , "version" :: Maybe (NumericalVersion) , "resourceType" :: Maybe (ResourceType) , "exportType" :: Maybe (ExportType) , "exportStatus" :: Maybe (ExportStatus) , "failureReason" :: Maybe (String) , "url" :: Maybe (String) } ) -> GetExportResponse
newGetExportResponse'  customize = (GetExportResponse <<< customize) { "exportStatus": Nothing, "exportType": Nothing, "failureReason": Nothing, "name": Nothing, "resourceType": Nothing, "url": Nothing, "version": Nothing }



newtype GetImportRequest = GetImportRequest 
  { "importId" :: (String)
  }
derive instance newtypeGetImportRequest :: Newtype GetImportRequest _
derive instance repGenericGetImportRequest :: Generic GetImportRequest _
instance showGetImportRequest :: Show GetImportRequest where show = genericShow
instance decodeGetImportRequest :: Decode GetImportRequest where decode = genericDecode options
instance encodeGetImportRequest :: Encode GetImportRequest where encode = genericEncode options

-- | Constructs GetImportRequest from required parameters
newGetImportRequest :: String -> GetImportRequest
newGetImportRequest _importId = GetImportRequest { "importId": _importId }

-- | Constructs GetImportRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetImportRequest' :: String -> ( { "importId" :: (String) } -> {"importId" :: (String) } ) -> GetImportRequest
newGetImportRequest' _importId customize = (GetImportRequest <<< customize) { "importId": _importId }



newtype GetImportResponse = GetImportResponse 
  { "name" :: Maybe (Name)
  , "resourceType" :: Maybe (ResourceType)
  , "mergeStrategy" :: Maybe (MergeStrategy)
  , "importId" :: Maybe (String)
  , "importStatus" :: Maybe (ImportStatus)
  , "failureReason" :: Maybe (StringList)
  , "createdDate" :: Maybe (Types.Timestamp)
  }
derive instance newtypeGetImportResponse :: Newtype GetImportResponse _
derive instance repGenericGetImportResponse :: Generic GetImportResponse _
instance showGetImportResponse :: Show GetImportResponse where show = genericShow
instance decodeGetImportResponse :: Decode GetImportResponse where decode = genericDecode options
instance encodeGetImportResponse :: Encode GetImportResponse where encode = genericEncode options

-- | Constructs GetImportResponse from required parameters
newGetImportResponse :: GetImportResponse
newGetImportResponse  = GetImportResponse { "createdDate": Nothing, "failureReason": Nothing, "importId": Nothing, "importStatus": Nothing, "mergeStrategy": Nothing, "name": Nothing, "resourceType": Nothing }

-- | Constructs GetImportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetImportResponse' :: ( { "name" :: Maybe (Name) , "resourceType" :: Maybe (ResourceType) , "mergeStrategy" :: Maybe (MergeStrategy) , "importId" :: Maybe (String) , "importStatus" :: Maybe (ImportStatus) , "failureReason" :: Maybe (StringList) , "createdDate" :: Maybe (Types.Timestamp) } -> {"name" :: Maybe (Name) , "resourceType" :: Maybe (ResourceType) , "mergeStrategy" :: Maybe (MergeStrategy) , "importId" :: Maybe (String) , "importStatus" :: Maybe (ImportStatus) , "failureReason" :: Maybe (StringList) , "createdDate" :: Maybe (Types.Timestamp) } ) -> GetImportResponse
newGetImportResponse'  customize = (GetImportResponse <<< customize) { "createdDate": Nothing, "failureReason": Nothing, "importId": Nothing, "importStatus": Nothing, "mergeStrategy": Nothing, "name": Nothing, "resourceType": Nothing }



newtype GetIntentRequest = GetIntentRequest 
  { "name" :: (IntentName)
  , "version" :: (Version)
  }
derive instance newtypeGetIntentRequest :: Newtype GetIntentRequest _
derive instance repGenericGetIntentRequest :: Generic GetIntentRequest _
instance showGetIntentRequest :: Show GetIntentRequest where show = genericShow
instance decodeGetIntentRequest :: Decode GetIntentRequest where decode = genericDecode options
instance encodeGetIntentRequest :: Encode GetIntentRequest where encode = genericEncode options

-- | Constructs GetIntentRequest from required parameters
newGetIntentRequest :: IntentName -> Version -> GetIntentRequest
newGetIntentRequest _name _version = GetIntentRequest { "name": _name, "version": _version }

-- | Constructs GetIntentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIntentRequest' :: IntentName -> Version -> ( { "name" :: (IntentName) , "version" :: (Version) } -> {"name" :: (IntentName) , "version" :: (Version) } ) -> GetIntentRequest
newGetIntentRequest' _name _version customize = (GetIntentRequest <<< customize) { "name": _name, "version": _version }



newtype GetIntentResponse = GetIntentResponse 
  { "name" :: Maybe (IntentName)
  , "description" :: Maybe (Description)
  , "slots" :: Maybe (SlotList)
  , "sampleUtterances" :: Maybe (IntentUtteranceList)
  , "confirmationPrompt" :: Maybe (Prompt)
  , "rejectionStatement" :: Maybe (Statement)
  , "followUpPrompt" :: Maybe (FollowUpPrompt)
  , "conclusionStatement" :: Maybe (Statement)
  , "dialogCodeHook" :: Maybe (CodeHook)
  , "fulfillmentActivity" :: Maybe (FulfillmentActivity)
  , "parentIntentSignature" :: Maybe (BuiltinIntentSignature)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "version" :: Maybe (Version)
  , "checksum" :: Maybe (String)
  }
derive instance newtypeGetIntentResponse :: Newtype GetIntentResponse _
derive instance repGenericGetIntentResponse :: Generic GetIntentResponse _
instance showGetIntentResponse :: Show GetIntentResponse where show = genericShow
instance decodeGetIntentResponse :: Decode GetIntentResponse where decode = genericDecode options
instance encodeGetIntentResponse :: Encode GetIntentResponse where encode = genericEncode options

-- | Constructs GetIntentResponse from required parameters
newGetIntentResponse :: GetIntentResponse
newGetIntentResponse  = GetIntentResponse { "checksum": Nothing, "conclusionStatement": Nothing, "confirmationPrompt": Nothing, "createdDate": Nothing, "description": Nothing, "dialogCodeHook": Nothing, "followUpPrompt": Nothing, "fulfillmentActivity": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "parentIntentSignature": Nothing, "rejectionStatement": Nothing, "sampleUtterances": Nothing, "slots": Nothing, "version": Nothing }

-- | Constructs GetIntentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIntentResponse' :: ( { "name" :: Maybe (IntentName) , "description" :: Maybe (Description) , "slots" :: Maybe (SlotList) , "sampleUtterances" :: Maybe (IntentUtteranceList) , "confirmationPrompt" :: Maybe (Prompt) , "rejectionStatement" :: Maybe (Statement) , "followUpPrompt" :: Maybe (FollowUpPrompt) , "conclusionStatement" :: Maybe (Statement) , "dialogCodeHook" :: Maybe (CodeHook) , "fulfillmentActivity" :: Maybe (FulfillmentActivity) , "parentIntentSignature" :: Maybe (BuiltinIntentSignature) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) } -> {"name" :: Maybe (IntentName) , "description" :: Maybe (Description) , "slots" :: Maybe (SlotList) , "sampleUtterances" :: Maybe (IntentUtteranceList) , "confirmationPrompt" :: Maybe (Prompt) , "rejectionStatement" :: Maybe (Statement) , "followUpPrompt" :: Maybe (FollowUpPrompt) , "conclusionStatement" :: Maybe (Statement) , "dialogCodeHook" :: Maybe (CodeHook) , "fulfillmentActivity" :: Maybe (FulfillmentActivity) , "parentIntentSignature" :: Maybe (BuiltinIntentSignature) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) } ) -> GetIntentResponse
newGetIntentResponse'  customize = (GetIntentResponse <<< customize) { "checksum": Nothing, "conclusionStatement": Nothing, "confirmationPrompt": Nothing, "createdDate": Nothing, "description": Nothing, "dialogCodeHook": Nothing, "followUpPrompt": Nothing, "fulfillmentActivity": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "parentIntentSignature": Nothing, "rejectionStatement": Nothing, "sampleUtterances": Nothing, "slots": Nothing, "version": Nothing }



newtype GetIntentVersionsRequest = GetIntentVersionsRequest 
  { "name" :: (IntentName)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeGetIntentVersionsRequest :: Newtype GetIntentVersionsRequest _
derive instance repGenericGetIntentVersionsRequest :: Generic GetIntentVersionsRequest _
instance showGetIntentVersionsRequest :: Show GetIntentVersionsRequest where show = genericShow
instance decodeGetIntentVersionsRequest :: Decode GetIntentVersionsRequest where decode = genericDecode options
instance encodeGetIntentVersionsRequest :: Encode GetIntentVersionsRequest where encode = genericEncode options

-- | Constructs GetIntentVersionsRequest from required parameters
newGetIntentVersionsRequest :: IntentName -> GetIntentVersionsRequest
newGetIntentVersionsRequest _name = GetIntentVersionsRequest { "name": _name, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs GetIntentVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIntentVersionsRequest' :: IntentName -> ( { "name" :: (IntentName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } -> {"name" :: (IntentName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } ) -> GetIntentVersionsRequest
newGetIntentVersionsRequest' _name customize = (GetIntentVersionsRequest <<< customize) { "name": _name, "maxResults": Nothing, "nextToken": Nothing }



newtype GetIntentVersionsResponse = GetIntentVersionsResponse 
  { "intents" :: Maybe (IntentMetadataList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetIntentVersionsResponse :: Newtype GetIntentVersionsResponse _
derive instance repGenericGetIntentVersionsResponse :: Generic GetIntentVersionsResponse _
instance showGetIntentVersionsResponse :: Show GetIntentVersionsResponse where show = genericShow
instance decodeGetIntentVersionsResponse :: Decode GetIntentVersionsResponse where decode = genericDecode options
instance encodeGetIntentVersionsResponse :: Encode GetIntentVersionsResponse where encode = genericEncode options

-- | Constructs GetIntentVersionsResponse from required parameters
newGetIntentVersionsResponse :: GetIntentVersionsResponse
newGetIntentVersionsResponse  = GetIntentVersionsResponse { "intents": Nothing, "nextToken": Nothing }

-- | Constructs GetIntentVersionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIntentVersionsResponse' :: ( { "intents" :: Maybe (IntentMetadataList) , "nextToken" :: Maybe (NextToken) } -> {"intents" :: Maybe (IntentMetadataList) , "nextToken" :: Maybe (NextToken) } ) -> GetIntentVersionsResponse
newGetIntentVersionsResponse'  customize = (GetIntentVersionsResponse <<< customize) { "intents": Nothing, "nextToken": Nothing }



newtype GetIntentsRequest = GetIntentsRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  , "nameContains" :: Maybe (IntentName)
  }
derive instance newtypeGetIntentsRequest :: Newtype GetIntentsRequest _
derive instance repGenericGetIntentsRequest :: Generic GetIntentsRequest _
instance showGetIntentsRequest :: Show GetIntentsRequest where show = genericShow
instance decodeGetIntentsRequest :: Decode GetIntentsRequest where decode = genericDecode options
instance encodeGetIntentsRequest :: Encode GetIntentsRequest where encode = genericEncode options

-- | Constructs GetIntentsRequest from required parameters
newGetIntentsRequest :: GetIntentsRequest
newGetIntentsRequest  = GetIntentsRequest { "maxResults": Nothing, "nameContains": Nothing, "nextToken": Nothing }

-- | Constructs GetIntentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIntentsRequest' :: ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "nameContains" :: Maybe (IntentName) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "nameContains" :: Maybe (IntentName) } ) -> GetIntentsRequest
newGetIntentsRequest'  customize = (GetIntentsRequest <<< customize) { "maxResults": Nothing, "nameContains": Nothing, "nextToken": Nothing }



newtype GetIntentsResponse = GetIntentsResponse 
  { "intents" :: Maybe (IntentMetadataList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetIntentsResponse :: Newtype GetIntentsResponse _
derive instance repGenericGetIntentsResponse :: Generic GetIntentsResponse _
instance showGetIntentsResponse :: Show GetIntentsResponse where show = genericShow
instance decodeGetIntentsResponse :: Decode GetIntentsResponse where decode = genericDecode options
instance encodeGetIntentsResponse :: Encode GetIntentsResponse where encode = genericEncode options

-- | Constructs GetIntentsResponse from required parameters
newGetIntentsResponse :: GetIntentsResponse
newGetIntentsResponse  = GetIntentsResponse { "intents": Nothing, "nextToken": Nothing }

-- | Constructs GetIntentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIntentsResponse' :: ( { "intents" :: Maybe (IntentMetadataList) , "nextToken" :: Maybe (NextToken) } -> {"intents" :: Maybe (IntentMetadataList) , "nextToken" :: Maybe (NextToken) } ) -> GetIntentsResponse
newGetIntentsResponse'  customize = (GetIntentsResponse <<< customize) { "intents": Nothing, "nextToken": Nothing }



newtype GetSlotTypeRequest = GetSlotTypeRequest 
  { "name" :: (SlotTypeName)
  , "version" :: (Version)
  }
derive instance newtypeGetSlotTypeRequest :: Newtype GetSlotTypeRequest _
derive instance repGenericGetSlotTypeRequest :: Generic GetSlotTypeRequest _
instance showGetSlotTypeRequest :: Show GetSlotTypeRequest where show = genericShow
instance decodeGetSlotTypeRequest :: Decode GetSlotTypeRequest where decode = genericDecode options
instance encodeGetSlotTypeRequest :: Encode GetSlotTypeRequest where encode = genericEncode options

-- | Constructs GetSlotTypeRequest from required parameters
newGetSlotTypeRequest :: SlotTypeName -> Version -> GetSlotTypeRequest
newGetSlotTypeRequest _name _version = GetSlotTypeRequest { "name": _name, "version": _version }

-- | Constructs GetSlotTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSlotTypeRequest' :: SlotTypeName -> Version -> ( { "name" :: (SlotTypeName) , "version" :: (Version) } -> {"name" :: (SlotTypeName) , "version" :: (Version) } ) -> GetSlotTypeRequest
newGetSlotTypeRequest' _name _version customize = (GetSlotTypeRequest <<< customize) { "name": _name, "version": _version }



newtype GetSlotTypeResponse = GetSlotTypeResponse 
  { "name" :: Maybe (SlotTypeName)
  , "description" :: Maybe (Description)
  , "enumerationValues" :: Maybe (EnumerationValues)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "version" :: Maybe (Version)
  , "checksum" :: Maybe (String)
  , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy)
  }
derive instance newtypeGetSlotTypeResponse :: Newtype GetSlotTypeResponse _
derive instance repGenericGetSlotTypeResponse :: Generic GetSlotTypeResponse _
instance showGetSlotTypeResponse :: Show GetSlotTypeResponse where show = genericShow
instance decodeGetSlotTypeResponse :: Decode GetSlotTypeResponse where decode = genericDecode options
instance encodeGetSlotTypeResponse :: Encode GetSlotTypeResponse where encode = genericEncode options

-- | Constructs GetSlotTypeResponse from required parameters
newGetSlotTypeResponse :: GetSlotTypeResponse
newGetSlotTypeResponse  = GetSlotTypeResponse { "checksum": Nothing, "createdDate": Nothing, "description": Nothing, "enumerationValues": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "valueSelectionStrategy": Nothing, "version": Nothing }

-- | Constructs GetSlotTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSlotTypeResponse' :: ( { "name" :: Maybe (SlotTypeName) , "description" :: Maybe (Description) , "enumerationValues" :: Maybe (EnumerationValues) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy) } -> {"name" :: Maybe (SlotTypeName) , "description" :: Maybe (Description) , "enumerationValues" :: Maybe (EnumerationValues) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy) } ) -> GetSlotTypeResponse
newGetSlotTypeResponse'  customize = (GetSlotTypeResponse <<< customize) { "checksum": Nothing, "createdDate": Nothing, "description": Nothing, "enumerationValues": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "valueSelectionStrategy": Nothing, "version": Nothing }



newtype GetSlotTypeVersionsRequest = GetSlotTypeVersionsRequest 
  { "name" :: (SlotTypeName)
  , "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  }
derive instance newtypeGetSlotTypeVersionsRequest :: Newtype GetSlotTypeVersionsRequest _
derive instance repGenericGetSlotTypeVersionsRequest :: Generic GetSlotTypeVersionsRequest _
instance showGetSlotTypeVersionsRequest :: Show GetSlotTypeVersionsRequest where show = genericShow
instance decodeGetSlotTypeVersionsRequest :: Decode GetSlotTypeVersionsRequest where decode = genericDecode options
instance encodeGetSlotTypeVersionsRequest :: Encode GetSlotTypeVersionsRequest where encode = genericEncode options

-- | Constructs GetSlotTypeVersionsRequest from required parameters
newGetSlotTypeVersionsRequest :: SlotTypeName -> GetSlotTypeVersionsRequest
newGetSlotTypeVersionsRequest _name = GetSlotTypeVersionsRequest { "name": _name, "maxResults": Nothing, "nextToken": Nothing }

-- | Constructs GetSlotTypeVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSlotTypeVersionsRequest' :: SlotTypeName -> ( { "name" :: (SlotTypeName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } -> {"name" :: (SlotTypeName) , "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) } ) -> GetSlotTypeVersionsRequest
newGetSlotTypeVersionsRequest' _name customize = (GetSlotTypeVersionsRequest <<< customize) { "name": _name, "maxResults": Nothing, "nextToken": Nothing }



newtype GetSlotTypeVersionsResponse = GetSlotTypeVersionsResponse 
  { "slotTypes" :: Maybe (SlotTypeMetadataList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetSlotTypeVersionsResponse :: Newtype GetSlotTypeVersionsResponse _
derive instance repGenericGetSlotTypeVersionsResponse :: Generic GetSlotTypeVersionsResponse _
instance showGetSlotTypeVersionsResponse :: Show GetSlotTypeVersionsResponse where show = genericShow
instance decodeGetSlotTypeVersionsResponse :: Decode GetSlotTypeVersionsResponse where decode = genericDecode options
instance encodeGetSlotTypeVersionsResponse :: Encode GetSlotTypeVersionsResponse where encode = genericEncode options

-- | Constructs GetSlotTypeVersionsResponse from required parameters
newGetSlotTypeVersionsResponse :: GetSlotTypeVersionsResponse
newGetSlotTypeVersionsResponse  = GetSlotTypeVersionsResponse { "nextToken": Nothing, "slotTypes": Nothing }

-- | Constructs GetSlotTypeVersionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSlotTypeVersionsResponse' :: ( { "slotTypes" :: Maybe (SlotTypeMetadataList) , "nextToken" :: Maybe (NextToken) } -> {"slotTypes" :: Maybe (SlotTypeMetadataList) , "nextToken" :: Maybe (NextToken) } ) -> GetSlotTypeVersionsResponse
newGetSlotTypeVersionsResponse'  customize = (GetSlotTypeVersionsResponse <<< customize) { "nextToken": Nothing, "slotTypes": Nothing }



newtype GetSlotTypesRequest = GetSlotTypesRequest 
  { "nextToken" :: Maybe (NextToken)
  , "maxResults" :: Maybe (MaxResults)
  , "nameContains" :: Maybe (SlotTypeName)
  }
derive instance newtypeGetSlotTypesRequest :: Newtype GetSlotTypesRequest _
derive instance repGenericGetSlotTypesRequest :: Generic GetSlotTypesRequest _
instance showGetSlotTypesRequest :: Show GetSlotTypesRequest where show = genericShow
instance decodeGetSlotTypesRequest :: Decode GetSlotTypesRequest where decode = genericDecode options
instance encodeGetSlotTypesRequest :: Encode GetSlotTypesRequest where encode = genericEncode options

-- | Constructs GetSlotTypesRequest from required parameters
newGetSlotTypesRequest :: GetSlotTypesRequest
newGetSlotTypesRequest  = GetSlotTypesRequest { "maxResults": Nothing, "nameContains": Nothing, "nextToken": Nothing }

-- | Constructs GetSlotTypesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSlotTypesRequest' :: ( { "nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "nameContains" :: Maybe (SlotTypeName) } -> {"nextToken" :: Maybe (NextToken) , "maxResults" :: Maybe (MaxResults) , "nameContains" :: Maybe (SlotTypeName) } ) -> GetSlotTypesRequest
newGetSlotTypesRequest'  customize = (GetSlotTypesRequest <<< customize) { "maxResults": Nothing, "nameContains": Nothing, "nextToken": Nothing }



newtype GetSlotTypesResponse = GetSlotTypesResponse 
  { "slotTypes" :: Maybe (SlotTypeMetadataList)
  , "nextToken" :: Maybe (NextToken)
  }
derive instance newtypeGetSlotTypesResponse :: Newtype GetSlotTypesResponse _
derive instance repGenericGetSlotTypesResponse :: Generic GetSlotTypesResponse _
instance showGetSlotTypesResponse :: Show GetSlotTypesResponse where show = genericShow
instance decodeGetSlotTypesResponse :: Decode GetSlotTypesResponse where decode = genericDecode options
instance encodeGetSlotTypesResponse :: Encode GetSlotTypesResponse where encode = genericEncode options

-- | Constructs GetSlotTypesResponse from required parameters
newGetSlotTypesResponse :: GetSlotTypesResponse
newGetSlotTypesResponse  = GetSlotTypesResponse { "nextToken": Nothing, "slotTypes": Nothing }

-- | Constructs GetSlotTypesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSlotTypesResponse' :: ( { "slotTypes" :: Maybe (SlotTypeMetadataList) , "nextToken" :: Maybe (NextToken) } -> {"slotTypes" :: Maybe (SlotTypeMetadataList) , "nextToken" :: Maybe (NextToken) } ) -> GetSlotTypesResponse
newGetSlotTypesResponse'  customize = (GetSlotTypesResponse <<< customize) { "nextToken": Nothing, "slotTypes": Nothing }



newtype GetUtterancesViewRequest = GetUtterancesViewRequest 
  { "botName" :: (BotName)
  , "botVersions" :: (BotVersions)
  , "statusType" :: (StatusType)
  }
derive instance newtypeGetUtterancesViewRequest :: Newtype GetUtterancesViewRequest _
derive instance repGenericGetUtterancesViewRequest :: Generic GetUtterancesViewRequest _
instance showGetUtterancesViewRequest :: Show GetUtterancesViewRequest where show = genericShow
instance decodeGetUtterancesViewRequest :: Decode GetUtterancesViewRequest where decode = genericDecode options
instance encodeGetUtterancesViewRequest :: Encode GetUtterancesViewRequest where encode = genericEncode options

-- | Constructs GetUtterancesViewRequest from required parameters
newGetUtterancesViewRequest :: BotName -> BotVersions -> StatusType -> GetUtterancesViewRequest
newGetUtterancesViewRequest _botName _botVersions _statusType = GetUtterancesViewRequest { "botName": _botName, "botVersions": _botVersions, "statusType": _statusType }

-- | Constructs GetUtterancesViewRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUtterancesViewRequest' :: BotName -> BotVersions -> StatusType -> ( { "botName" :: (BotName) , "botVersions" :: (BotVersions) , "statusType" :: (StatusType) } -> {"botName" :: (BotName) , "botVersions" :: (BotVersions) , "statusType" :: (StatusType) } ) -> GetUtterancesViewRequest
newGetUtterancesViewRequest' _botName _botVersions _statusType customize = (GetUtterancesViewRequest <<< customize) { "botName": _botName, "botVersions": _botVersions, "statusType": _statusType }



newtype GetUtterancesViewResponse = GetUtterancesViewResponse 
  { "botName" :: Maybe (BotName)
  , "utterances" :: Maybe (ListsOfUtterances)
  }
derive instance newtypeGetUtterancesViewResponse :: Newtype GetUtterancesViewResponse _
derive instance repGenericGetUtterancesViewResponse :: Generic GetUtterancesViewResponse _
instance showGetUtterancesViewResponse :: Show GetUtterancesViewResponse where show = genericShow
instance decodeGetUtterancesViewResponse :: Decode GetUtterancesViewResponse where decode = genericDecode options
instance encodeGetUtterancesViewResponse :: Encode GetUtterancesViewResponse where encode = genericEncode options

-- | Constructs GetUtterancesViewResponse from required parameters
newGetUtterancesViewResponse :: GetUtterancesViewResponse
newGetUtterancesViewResponse  = GetUtterancesViewResponse { "botName": Nothing, "utterances": Nothing }

-- | Constructs GetUtterancesViewResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetUtterancesViewResponse' :: ( { "botName" :: Maybe (BotName) , "utterances" :: Maybe (ListsOfUtterances) } -> {"botName" :: Maybe (BotName) , "utterances" :: Maybe (ListsOfUtterances) } ) -> GetUtterancesViewResponse
newGetUtterancesViewResponse'  customize = (GetUtterancesViewResponse <<< customize) { "botName": Nothing, "utterances": Nothing }



newtype GroupNumber = GroupNumber Int
derive instance newtypeGroupNumber :: Newtype GroupNumber _
derive instance repGenericGroupNumber :: Generic GroupNumber _
instance showGroupNumber :: Show GroupNumber where show = genericShow
instance decodeGroupNumber :: Decode GroupNumber where decode = genericDecode options
instance encodeGroupNumber :: Encode GroupNumber where encode = genericEncode options



newtype ImportStatus = ImportStatus String
derive instance newtypeImportStatus :: Newtype ImportStatus _
derive instance repGenericImportStatus :: Generic ImportStatus _
instance showImportStatus :: Show ImportStatus where show = genericShow
instance decodeImportStatus :: Decode ImportStatus where decode = genericDecode options
instance encodeImportStatus :: Encode ImportStatus where encode = genericEncode options



-- | <p>Identifies the specific version of an intent.</p>
newtype Intent = Intent 
  { "intentName" :: (IntentName)
  , "intentVersion" :: (Version)
  }
derive instance newtypeIntent :: Newtype Intent _
derive instance repGenericIntent :: Generic Intent _
instance showIntent :: Show Intent where show = genericShow
instance decodeIntent :: Decode Intent where decode = genericDecode options
instance encodeIntent :: Encode Intent where encode = genericEncode options

-- | Constructs Intent from required parameters
newIntent :: IntentName -> Version -> Intent
newIntent _intentName _intentVersion = Intent { "intentName": _intentName, "intentVersion": _intentVersion }

-- | Constructs Intent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIntent' :: IntentName -> Version -> ( { "intentName" :: (IntentName) , "intentVersion" :: (Version) } -> {"intentName" :: (IntentName) , "intentVersion" :: (Version) } ) -> Intent
newIntent' _intentName _intentVersion customize = (Intent <<< customize) { "intentName": _intentName, "intentVersion": _intentVersion }



newtype IntentList = IntentList (Array Intent)
derive instance newtypeIntentList :: Newtype IntentList _
derive instance repGenericIntentList :: Generic IntentList _
instance showIntentList :: Show IntentList where show = genericShow
instance decodeIntentList :: Decode IntentList where decode = genericDecode options
instance encodeIntentList :: Encode IntentList where encode = genericEncode options



-- | <p>Provides information about an intent.</p>
newtype IntentMetadata = IntentMetadata 
  { "name" :: Maybe (IntentName)
  , "description" :: Maybe (Description)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "version" :: Maybe (Version)
  }
derive instance newtypeIntentMetadata :: Newtype IntentMetadata _
derive instance repGenericIntentMetadata :: Generic IntentMetadata _
instance showIntentMetadata :: Show IntentMetadata where show = genericShow
instance decodeIntentMetadata :: Decode IntentMetadata where decode = genericDecode options
instance encodeIntentMetadata :: Encode IntentMetadata where encode = genericEncode options

-- | Constructs IntentMetadata from required parameters
newIntentMetadata :: IntentMetadata
newIntentMetadata  = IntentMetadata { "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "version": Nothing }

-- | Constructs IntentMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIntentMetadata' :: ( { "name" :: Maybe (IntentName) , "description" :: Maybe (Description) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) } -> {"name" :: Maybe (IntentName) , "description" :: Maybe (Description) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) } ) -> IntentMetadata
newIntentMetadata'  customize = (IntentMetadata <<< customize) { "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "version": Nothing }



newtype IntentMetadataList = IntentMetadataList (Array IntentMetadata)
derive instance newtypeIntentMetadataList :: Newtype IntentMetadataList _
derive instance repGenericIntentMetadataList :: Generic IntentMetadataList _
instance showIntentMetadataList :: Show IntentMetadataList where show = genericShow
instance decodeIntentMetadataList :: Decode IntentMetadataList where decode = genericDecode options
instance encodeIntentMetadataList :: Encode IntentMetadataList where encode = genericEncode options



newtype IntentName = IntentName String
derive instance newtypeIntentName :: Newtype IntentName _
derive instance repGenericIntentName :: Generic IntentName _
instance showIntentName :: Show IntentName where show = genericShow
instance decodeIntentName :: Decode IntentName where decode = genericDecode options
instance encodeIntentName :: Encode IntentName where encode = genericEncode options



newtype IntentUtteranceList = IntentUtteranceList (Array Utterance)
derive instance newtypeIntentUtteranceList :: Newtype IntentUtteranceList _
derive instance repGenericIntentUtteranceList :: Generic IntentUtteranceList _
instance showIntentUtteranceList :: Show IntentUtteranceList where show = genericShow
instance decodeIntentUtteranceList :: Decode IntentUtteranceList where decode = genericDecode options
instance encodeIntentUtteranceList :: Encode IntentUtteranceList where encode = genericEncode options



-- | <p>An internal Amazon Lex error occurred. Try your request again.</p>
newtype InternalFailureException = InternalFailureException 
  { "message" :: Maybe (String)
  }
derive instance newtypeInternalFailureException :: Newtype InternalFailureException _
derive instance repGenericInternalFailureException :: Generic InternalFailureException _
instance showInternalFailureException :: Show InternalFailureException where show = genericShow
instance decodeInternalFailureException :: Decode InternalFailureException where decode = genericDecode options
instance encodeInternalFailureException :: Encode InternalFailureException where encode = genericEncode options

-- | Constructs InternalFailureException from required parameters
newInternalFailureException :: InternalFailureException
newInternalFailureException  = InternalFailureException { "message": Nothing }

-- | Constructs InternalFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalFailureException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> InternalFailureException
newInternalFailureException'  customize = (InternalFailureException <<< customize) { "message": Nothing }



newtype LambdaARN = LambdaARN String
derive instance newtypeLambdaARN :: Newtype LambdaARN _
derive instance repGenericLambdaARN :: Generic LambdaARN _
instance showLambdaARN :: Show LambdaARN where show = genericShow
instance decodeLambdaARN :: Decode LambdaARN where decode = genericDecode options
instance encodeLambdaARN :: Encode LambdaARN where encode = genericEncode options



-- | <p>The request exceeded a limit. Try your request again.</p>
newtype LimitExceededException = LimitExceededException 
  { "retryAfterSeconds" :: Maybe (String)
  , "message" :: Maybe (String)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": Nothing, "retryAfterSeconds": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "retryAfterSeconds" :: Maybe (String) , "message" :: Maybe (String) } -> {"retryAfterSeconds" :: Maybe (String) , "message" :: Maybe (String) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": Nothing, "retryAfterSeconds": Nothing }



newtype ListOfUtterance = ListOfUtterance (Array UtteranceData)
derive instance newtypeListOfUtterance :: Newtype ListOfUtterance _
derive instance repGenericListOfUtterance :: Generic ListOfUtterance _
instance showListOfUtterance :: Show ListOfUtterance where show = genericShow
instance decodeListOfUtterance :: Decode ListOfUtterance where decode = genericDecode options
instance encodeListOfUtterance :: Encode ListOfUtterance where encode = genericEncode options



newtype ListsOfUtterances = ListsOfUtterances (Array UtteranceList)
derive instance newtypeListsOfUtterances :: Newtype ListsOfUtterances _
derive instance repGenericListsOfUtterances :: Generic ListsOfUtterances _
instance showListsOfUtterances :: Show ListsOfUtterances where show = genericShow
instance decodeListsOfUtterances :: Decode ListsOfUtterances where decode = genericDecode options
instance encodeListsOfUtterances :: Encode ListsOfUtterances where encode = genericEncode options



newtype Locale = Locale String
derive instance newtypeLocale :: Newtype Locale _
derive instance repGenericLocale :: Generic Locale _
instance showLocale :: Show Locale where show = genericShow
instance decodeLocale :: Decode Locale where decode = genericDecode options
instance encodeLocale :: Encode Locale where encode = genericEncode options



newtype LocaleList = LocaleList (Array Locale)
derive instance newtypeLocaleList :: Newtype LocaleList _
derive instance repGenericLocaleList :: Generic LocaleList _
instance showLocaleList :: Show LocaleList where show = genericShow
instance decodeLocaleList :: Decode LocaleList where decode = genericDecode options
instance encodeLocaleList :: Encode LocaleList where encode = genericEncode options



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype MergeStrategy = MergeStrategy String
derive instance newtypeMergeStrategy :: Newtype MergeStrategy _
derive instance repGenericMergeStrategy :: Generic MergeStrategy _
instance showMergeStrategy :: Show MergeStrategy where show = genericShow
instance decodeMergeStrategy :: Decode MergeStrategy where decode = genericDecode options
instance encodeMergeStrategy :: Encode MergeStrategy where encode = genericEncode options



-- | <p>The message object that provides the message text and its type.</p>
newtype Message = Message 
  { "contentType" :: (ContentType)
  , "content" :: (ContentString)
  , "groupNumber" :: Maybe (GroupNumber)
  }
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options

-- | Constructs Message from required parameters
newMessage :: ContentString -> ContentType -> Message
newMessage _content _contentType = Message { "content": _content, "contentType": _contentType, "groupNumber": Nothing }

-- | Constructs Message's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMessage' :: ContentString -> ContentType -> ( { "contentType" :: (ContentType) , "content" :: (ContentString) , "groupNumber" :: Maybe (GroupNumber) } -> {"contentType" :: (ContentType) , "content" :: (ContentString) , "groupNumber" :: Maybe (GroupNumber) } ) -> Message
newMessage' _content _contentType customize = (Message <<< customize) { "content": _content, "contentType": _contentType, "groupNumber": Nothing }



newtype MessageList = MessageList (Array Message)
derive instance newtypeMessageList :: Newtype MessageList _
derive instance repGenericMessageList :: Generic MessageList _
instance showMessageList :: Show MessageList where show = genericShow
instance decodeMessageList :: Decode MessageList where decode = genericDecode options
instance encodeMessageList :: Encode MessageList where encode = genericEncode options



newtype MessageVersion = MessageVersion String
derive instance newtypeMessageVersion :: Newtype MessageVersion _
derive instance repGenericMessageVersion :: Generic MessageVersion _
instance showMessageVersion :: Show MessageVersion where show = genericShow
instance decodeMessageVersion :: Decode MessageVersion where decode = genericDecode options
instance encodeMessageVersion :: Encode MessageVersion where encode = genericEncode options



newtype Name = Name String
derive instance newtypeName :: Newtype Name _
derive instance repGenericName :: Generic Name _
instance showName :: Show Name where show = genericShow
instance decodeName :: Decode Name where decode = genericDecode options
instance encodeName :: Encode Name where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>The resource specified in the request was not found. Check the resource and try again.</p>
newtype NotFoundException = NotFoundException 
  { "message" :: Maybe (String)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "message": Nothing }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "message": Nothing }



newtype NumericalVersion = NumericalVersion String
derive instance newtypeNumericalVersion :: Newtype NumericalVersion _
derive instance repGenericNumericalVersion :: Generic NumericalVersion _
instance showNumericalVersion :: Show NumericalVersion where show = genericShow
instance decodeNumericalVersion :: Decode NumericalVersion where decode = genericDecode options
instance encodeNumericalVersion :: Encode NumericalVersion where encode = genericEncode options



-- | <p> The checksum of the resource that you are trying to change does not match the checksum in the request. Check the resource's checksum and try again.</p>
newtype PreconditionFailedException = PreconditionFailedException 
  { "message" :: Maybe (String)
  }
derive instance newtypePreconditionFailedException :: Newtype PreconditionFailedException _
derive instance repGenericPreconditionFailedException :: Generic PreconditionFailedException _
instance showPreconditionFailedException :: Show PreconditionFailedException where show = genericShow
instance decodePreconditionFailedException :: Decode PreconditionFailedException where decode = genericDecode options
instance encodePreconditionFailedException :: Encode PreconditionFailedException where encode = genericEncode options

-- | Constructs PreconditionFailedException from required parameters
newPreconditionFailedException :: PreconditionFailedException
newPreconditionFailedException  = PreconditionFailedException { "message": Nothing }

-- | Constructs PreconditionFailedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPreconditionFailedException' :: ( { "message" :: Maybe (String) } -> {"message" :: Maybe (String) } ) -> PreconditionFailedException
newPreconditionFailedException'  customize = (PreconditionFailedException <<< customize) { "message": Nothing }



newtype Priority = Priority Int
derive instance newtypePriority :: Newtype Priority _
derive instance repGenericPriority :: Generic Priority _
instance showPriority :: Show Priority where show = genericShow
instance decodePriority :: Decode Priority where decode = genericDecode options
instance encodePriority :: Encode Priority where encode = genericEncode options



newtype ProcessBehavior = ProcessBehavior String
derive instance newtypeProcessBehavior :: Newtype ProcessBehavior _
derive instance repGenericProcessBehavior :: Generic ProcessBehavior _
instance showProcessBehavior :: Show ProcessBehavior where show = genericShow
instance decodeProcessBehavior :: Decode ProcessBehavior where decode = genericDecode options
instance encodeProcessBehavior :: Encode ProcessBehavior where encode = genericEncode options



-- | <p>Obtains information from the user. To define a prompt, provide one or more messages and specify the number of attempts to get information from the user. If you provide more than one message, Amazon Lex chooses one of the messages to use to prompt the user. For more information, see <a>how-it-works</a>.</p>
newtype Prompt = Prompt 
  { "messages" :: (MessageList)
  , "maxAttempts" :: (PromptMaxAttempts)
  , "responseCard" :: Maybe (ResponseCard)
  }
derive instance newtypePrompt :: Newtype Prompt _
derive instance repGenericPrompt :: Generic Prompt _
instance showPrompt :: Show Prompt where show = genericShow
instance decodePrompt :: Decode Prompt where decode = genericDecode options
instance encodePrompt :: Encode Prompt where encode = genericEncode options

-- | Constructs Prompt from required parameters
newPrompt :: PromptMaxAttempts -> MessageList -> Prompt
newPrompt _maxAttempts _messages = Prompt { "maxAttempts": _maxAttempts, "messages": _messages, "responseCard": Nothing }

-- | Constructs Prompt's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPrompt' :: PromptMaxAttempts -> MessageList -> ( { "messages" :: (MessageList) , "maxAttempts" :: (PromptMaxAttempts) , "responseCard" :: Maybe (ResponseCard) } -> {"messages" :: (MessageList) , "maxAttempts" :: (PromptMaxAttempts) , "responseCard" :: Maybe (ResponseCard) } ) -> Prompt
newPrompt' _maxAttempts _messages customize = (Prompt <<< customize) { "maxAttempts": _maxAttempts, "messages": _messages, "responseCard": Nothing }



newtype PromptMaxAttempts = PromptMaxAttempts Int
derive instance newtypePromptMaxAttempts :: Newtype PromptMaxAttempts _
derive instance repGenericPromptMaxAttempts :: Generic PromptMaxAttempts _
instance showPromptMaxAttempts :: Show PromptMaxAttempts where show = genericShow
instance decodePromptMaxAttempts :: Decode PromptMaxAttempts where decode = genericDecode options
instance encodePromptMaxAttempts :: Encode PromptMaxAttempts where encode = genericEncode options



newtype PutBotAliasRequest = PutBotAliasRequest 
  { "name" :: (AliasName)
  , "description" :: Maybe (Description)
  , "botVersion" :: (Version)
  , "botName" :: (BotName)
  , "checksum" :: Maybe (String)
  }
derive instance newtypePutBotAliasRequest :: Newtype PutBotAliasRequest _
derive instance repGenericPutBotAliasRequest :: Generic PutBotAliasRequest _
instance showPutBotAliasRequest :: Show PutBotAliasRequest where show = genericShow
instance decodePutBotAliasRequest :: Decode PutBotAliasRequest where decode = genericDecode options
instance encodePutBotAliasRequest :: Encode PutBotAliasRequest where encode = genericEncode options

-- | Constructs PutBotAliasRequest from required parameters
newPutBotAliasRequest :: BotName -> Version -> AliasName -> PutBotAliasRequest
newPutBotAliasRequest _botName _botVersion _name = PutBotAliasRequest { "botName": _botName, "botVersion": _botVersion, "name": _name, "checksum": Nothing, "description": Nothing }

-- | Constructs PutBotAliasRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutBotAliasRequest' :: BotName -> Version -> AliasName -> ( { "name" :: (AliasName) , "description" :: Maybe (Description) , "botVersion" :: (Version) , "botName" :: (BotName) , "checksum" :: Maybe (String) } -> {"name" :: (AliasName) , "description" :: Maybe (Description) , "botVersion" :: (Version) , "botName" :: (BotName) , "checksum" :: Maybe (String) } ) -> PutBotAliasRequest
newPutBotAliasRequest' _botName _botVersion _name customize = (PutBotAliasRequest <<< customize) { "botName": _botName, "botVersion": _botVersion, "name": _name, "checksum": Nothing, "description": Nothing }



newtype PutBotAliasResponse = PutBotAliasResponse 
  { "name" :: Maybe (AliasName)
  , "description" :: Maybe (Description)
  , "botVersion" :: Maybe (Version)
  , "botName" :: Maybe (BotName)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "checksum" :: Maybe (String)
  }
derive instance newtypePutBotAliasResponse :: Newtype PutBotAliasResponse _
derive instance repGenericPutBotAliasResponse :: Generic PutBotAliasResponse _
instance showPutBotAliasResponse :: Show PutBotAliasResponse where show = genericShow
instance decodePutBotAliasResponse :: Decode PutBotAliasResponse where decode = genericDecode options
instance encodePutBotAliasResponse :: Encode PutBotAliasResponse where encode = genericEncode options

-- | Constructs PutBotAliasResponse from required parameters
newPutBotAliasResponse :: PutBotAliasResponse
newPutBotAliasResponse  = PutBotAliasResponse { "botName": Nothing, "botVersion": Nothing, "checksum": Nothing, "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing }

-- | Constructs PutBotAliasResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutBotAliasResponse' :: ( { "name" :: Maybe (AliasName) , "description" :: Maybe (Description) , "botVersion" :: Maybe (Version) , "botName" :: Maybe (BotName) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "checksum" :: Maybe (String) } -> {"name" :: Maybe (AliasName) , "description" :: Maybe (Description) , "botVersion" :: Maybe (Version) , "botName" :: Maybe (BotName) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "checksum" :: Maybe (String) } ) -> PutBotAliasResponse
newPutBotAliasResponse'  customize = (PutBotAliasResponse <<< customize) { "botName": Nothing, "botVersion": Nothing, "checksum": Nothing, "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing }



newtype PutBotRequest = PutBotRequest 
  { "name" :: (BotName)
  , "description" :: Maybe (Description)
  , "intents" :: Maybe (IntentList)
  , "clarificationPrompt" :: Maybe (Prompt)
  , "abortStatement" :: Maybe (Statement)
  , "idleSessionTTLInSeconds" :: Maybe (SessionTTL)
  , "voiceId" :: Maybe (String)
  , "checksum" :: Maybe (String)
  , "processBehavior" :: Maybe (ProcessBehavior)
  , "locale" :: (Locale)
  , "childDirected" :: (Boolean)
  , "createVersion" :: Maybe (Boolean)
  }
derive instance newtypePutBotRequest :: Newtype PutBotRequest _
derive instance repGenericPutBotRequest :: Generic PutBotRequest _
instance showPutBotRequest :: Show PutBotRequest where show = genericShow
instance decodePutBotRequest :: Decode PutBotRequest where decode = genericDecode options
instance encodePutBotRequest :: Encode PutBotRequest where encode = genericEncode options

-- | Constructs PutBotRequest from required parameters
newPutBotRequest :: Boolean -> Locale -> BotName -> PutBotRequest
newPutBotRequest _childDirected _locale _name = PutBotRequest { "childDirected": _childDirected, "locale": _locale, "name": _name, "abortStatement": Nothing, "checksum": Nothing, "clarificationPrompt": Nothing, "createVersion": Nothing, "description": Nothing, "idleSessionTTLInSeconds": Nothing, "intents": Nothing, "processBehavior": Nothing, "voiceId": Nothing }

-- | Constructs PutBotRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutBotRequest' :: Boolean -> Locale -> BotName -> ( { "name" :: (BotName) , "description" :: Maybe (Description) , "intents" :: Maybe (IntentList) , "clarificationPrompt" :: Maybe (Prompt) , "abortStatement" :: Maybe (Statement) , "idleSessionTTLInSeconds" :: Maybe (SessionTTL) , "voiceId" :: Maybe (String) , "checksum" :: Maybe (String) , "processBehavior" :: Maybe (ProcessBehavior) , "locale" :: (Locale) , "childDirected" :: (Boolean) , "createVersion" :: Maybe (Boolean) } -> {"name" :: (BotName) , "description" :: Maybe (Description) , "intents" :: Maybe (IntentList) , "clarificationPrompt" :: Maybe (Prompt) , "abortStatement" :: Maybe (Statement) , "idleSessionTTLInSeconds" :: Maybe (SessionTTL) , "voiceId" :: Maybe (String) , "checksum" :: Maybe (String) , "processBehavior" :: Maybe (ProcessBehavior) , "locale" :: (Locale) , "childDirected" :: (Boolean) , "createVersion" :: Maybe (Boolean) } ) -> PutBotRequest
newPutBotRequest' _childDirected _locale _name customize = (PutBotRequest <<< customize) { "childDirected": _childDirected, "locale": _locale, "name": _name, "abortStatement": Nothing, "checksum": Nothing, "clarificationPrompt": Nothing, "createVersion": Nothing, "description": Nothing, "idleSessionTTLInSeconds": Nothing, "intents": Nothing, "processBehavior": Nothing, "voiceId": Nothing }



newtype PutBotResponse = PutBotResponse 
  { "name" :: Maybe (BotName)
  , "description" :: Maybe (Description)
  , "intents" :: Maybe (IntentList)
  , "clarificationPrompt" :: Maybe (Prompt)
  , "abortStatement" :: Maybe (Statement)
  , "status" :: Maybe (Status)
  , "failureReason" :: Maybe (String)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "idleSessionTTLInSeconds" :: Maybe (SessionTTL)
  , "voiceId" :: Maybe (String)
  , "checksum" :: Maybe (String)
  , "version" :: Maybe (Version)
  , "locale" :: Maybe (Locale)
  , "childDirected" :: Maybe (Boolean)
  , "createVersion" :: Maybe (Boolean)
  }
derive instance newtypePutBotResponse :: Newtype PutBotResponse _
derive instance repGenericPutBotResponse :: Generic PutBotResponse _
instance showPutBotResponse :: Show PutBotResponse where show = genericShow
instance decodePutBotResponse :: Decode PutBotResponse where decode = genericDecode options
instance encodePutBotResponse :: Encode PutBotResponse where encode = genericEncode options

-- | Constructs PutBotResponse from required parameters
newPutBotResponse :: PutBotResponse
newPutBotResponse  = PutBotResponse { "abortStatement": Nothing, "checksum": Nothing, "childDirected": Nothing, "clarificationPrompt": Nothing, "createVersion": Nothing, "createdDate": Nothing, "description": Nothing, "failureReason": Nothing, "idleSessionTTLInSeconds": Nothing, "intents": Nothing, "lastUpdatedDate": Nothing, "locale": Nothing, "name": Nothing, "status": Nothing, "version": Nothing, "voiceId": Nothing }

-- | Constructs PutBotResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutBotResponse' :: ( { "name" :: Maybe (BotName) , "description" :: Maybe (Description) , "intents" :: Maybe (IntentList) , "clarificationPrompt" :: Maybe (Prompt) , "abortStatement" :: Maybe (Statement) , "status" :: Maybe (Status) , "failureReason" :: Maybe (String) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "idleSessionTTLInSeconds" :: Maybe (SessionTTL) , "voiceId" :: Maybe (String) , "checksum" :: Maybe (String) , "version" :: Maybe (Version) , "locale" :: Maybe (Locale) , "childDirected" :: Maybe (Boolean) , "createVersion" :: Maybe (Boolean) } -> {"name" :: Maybe (BotName) , "description" :: Maybe (Description) , "intents" :: Maybe (IntentList) , "clarificationPrompt" :: Maybe (Prompt) , "abortStatement" :: Maybe (Statement) , "status" :: Maybe (Status) , "failureReason" :: Maybe (String) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "idleSessionTTLInSeconds" :: Maybe (SessionTTL) , "voiceId" :: Maybe (String) , "checksum" :: Maybe (String) , "version" :: Maybe (Version) , "locale" :: Maybe (Locale) , "childDirected" :: Maybe (Boolean) , "createVersion" :: Maybe (Boolean) } ) -> PutBotResponse
newPutBotResponse'  customize = (PutBotResponse <<< customize) { "abortStatement": Nothing, "checksum": Nothing, "childDirected": Nothing, "clarificationPrompt": Nothing, "createVersion": Nothing, "createdDate": Nothing, "description": Nothing, "failureReason": Nothing, "idleSessionTTLInSeconds": Nothing, "intents": Nothing, "lastUpdatedDate": Nothing, "locale": Nothing, "name": Nothing, "status": Nothing, "version": Nothing, "voiceId": Nothing }



newtype PutIntentRequest = PutIntentRequest 
  { "name" :: (IntentName)
  , "description" :: Maybe (Description)
  , "slots" :: Maybe (SlotList)
  , "sampleUtterances" :: Maybe (IntentUtteranceList)
  , "confirmationPrompt" :: Maybe (Prompt)
  , "rejectionStatement" :: Maybe (Statement)
  , "followUpPrompt" :: Maybe (FollowUpPrompt)
  , "conclusionStatement" :: Maybe (Statement)
  , "dialogCodeHook" :: Maybe (CodeHook)
  , "fulfillmentActivity" :: Maybe (FulfillmentActivity)
  , "parentIntentSignature" :: Maybe (BuiltinIntentSignature)
  , "checksum" :: Maybe (String)
  , "createVersion" :: Maybe (Boolean)
  }
derive instance newtypePutIntentRequest :: Newtype PutIntentRequest _
derive instance repGenericPutIntentRequest :: Generic PutIntentRequest _
instance showPutIntentRequest :: Show PutIntentRequest where show = genericShow
instance decodePutIntentRequest :: Decode PutIntentRequest where decode = genericDecode options
instance encodePutIntentRequest :: Encode PutIntentRequest where encode = genericEncode options

-- | Constructs PutIntentRequest from required parameters
newPutIntentRequest :: IntentName -> PutIntentRequest
newPutIntentRequest _name = PutIntentRequest { "name": _name, "checksum": Nothing, "conclusionStatement": Nothing, "confirmationPrompt": Nothing, "createVersion": Nothing, "description": Nothing, "dialogCodeHook": Nothing, "followUpPrompt": Nothing, "fulfillmentActivity": Nothing, "parentIntentSignature": Nothing, "rejectionStatement": Nothing, "sampleUtterances": Nothing, "slots": Nothing }

-- | Constructs PutIntentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutIntentRequest' :: IntentName -> ( { "name" :: (IntentName) , "description" :: Maybe (Description) , "slots" :: Maybe (SlotList) , "sampleUtterances" :: Maybe (IntentUtteranceList) , "confirmationPrompt" :: Maybe (Prompt) , "rejectionStatement" :: Maybe (Statement) , "followUpPrompt" :: Maybe (FollowUpPrompt) , "conclusionStatement" :: Maybe (Statement) , "dialogCodeHook" :: Maybe (CodeHook) , "fulfillmentActivity" :: Maybe (FulfillmentActivity) , "parentIntentSignature" :: Maybe (BuiltinIntentSignature) , "checksum" :: Maybe (String) , "createVersion" :: Maybe (Boolean) } -> {"name" :: (IntentName) , "description" :: Maybe (Description) , "slots" :: Maybe (SlotList) , "sampleUtterances" :: Maybe (IntentUtteranceList) , "confirmationPrompt" :: Maybe (Prompt) , "rejectionStatement" :: Maybe (Statement) , "followUpPrompt" :: Maybe (FollowUpPrompt) , "conclusionStatement" :: Maybe (Statement) , "dialogCodeHook" :: Maybe (CodeHook) , "fulfillmentActivity" :: Maybe (FulfillmentActivity) , "parentIntentSignature" :: Maybe (BuiltinIntentSignature) , "checksum" :: Maybe (String) , "createVersion" :: Maybe (Boolean) } ) -> PutIntentRequest
newPutIntentRequest' _name customize = (PutIntentRequest <<< customize) { "name": _name, "checksum": Nothing, "conclusionStatement": Nothing, "confirmationPrompt": Nothing, "createVersion": Nothing, "description": Nothing, "dialogCodeHook": Nothing, "followUpPrompt": Nothing, "fulfillmentActivity": Nothing, "parentIntentSignature": Nothing, "rejectionStatement": Nothing, "sampleUtterances": Nothing, "slots": Nothing }



newtype PutIntentResponse = PutIntentResponse 
  { "name" :: Maybe (IntentName)
  , "description" :: Maybe (Description)
  , "slots" :: Maybe (SlotList)
  , "sampleUtterances" :: Maybe (IntentUtteranceList)
  , "confirmationPrompt" :: Maybe (Prompt)
  , "rejectionStatement" :: Maybe (Statement)
  , "followUpPrompt" :: Maybe (FollowUpPrompt)
  , "conclusionStatement" :: Maybe (Statement)
  , "dialogCodeHook" :: Maybe (CodeHook)
  , "fulfillmentActivity" :: Maybe (FulfillmentActivity)
  , "parentIntentSignature" :: Maybe (BuiltinIntentSignature)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "version" :: Maybe (Version)
  , "checksum" :: Maybe (String)
  , "createVersion" :: Maybe (Boolean)
  }
derive instance newtypePutIntentResponse :: Newtype PutIntentResponse _
derive instance repGenericPutIntentResponse :: Generic PutIntentResponse _
instance showPutIntentResponse :: Show PutIntentResponse where show = genericShow
instance decodePutIntentResponse :: Decode PutIntentResponse where decode = genericDecode options
instance encodePutIntentResponse :: Encode PutIntentResponse where encode = genericEncode options

-- | Constructs PutIntentResponse from required parameters
newPutIntentResponse :: PutIntentResponse
newPutIntentResponse  = PutIntentResponse { "checksum": Nothing, "conclusionStatement": Nothing, "confirmationPrompt": Nothing, "createVersion": Nothing, "createdDate": Nothing, "description": Nothing, "dialogCodeHook": Nothing, "followUpPrompt": Nothing, "fulfillmentActivity": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "parentIntentSignature": Nothing, "rejectionStatement": Nothing, "sampleUtterances": Nothing, "slots": Nothing, "version": Nothing }

-- | Constructs PutIntentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutIntentResponse' :: ( { "name" :: Maybe (IntentName) , "description" :: Maybe (Description) , "slots" :: Maybe (SlotList) , "sampleUtterances" :: Maybe (IntentUtteranceList) , "confirmationPrompt" :: Maybe (Prompt) , "rejectionStatement" :: Maybe (Statement) , "followUpPrompt" :: Maybe (FollowUpPrompt) , "conclusionStatement" :: Maybe (Statement) , "dialogCodeHook" :: Maybe (CodeHook) , "fulfillmentActivity" :: Maybe (FulfillmentActivity) , "parentIntentSignature" :: Maybe (BuiltinIntentSignature) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) , "createVersion" :: Maybe (Boolean) } -> {"name" :: Maybe (IntentName) , "description" :: Maybe (Description) , "slots" :: Maybe (SlotList) , "sampleUtterances" :: Maybe (IntentUtteranceList) , "confirmationPrompt" :: Maybe (Prompt) , "rejectionStatement" :: Maybe (Statement) , "followUpPrompt" :: Maybe (FollowUpPrompt) , "conclusionStatement" :: Maybe (Statement) , "dialogCodeHook" :: Maybe (CodeHook) , "fulfillmentActivity" :: Maybe (FulfillmentActivity) , "parentIntentSignature" :: Maybe (BuiltinIntentSignature) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) , "createVersion" :: Maybe (Boolean) } ) -> PutIntentResponse
newPutIntentResponse'  customize = (PutIntentResponse <<< customize) { "checksum": Nothing, "conclusionStatement": Nothing, "confirmationPrompt": Nothing, "createVersion": Nothing, "createdDate": Nothing, "description": Nothing, "dialogCodeHook": Nothing, "followUpPrompt": Nothing, "fulfillmentActivity": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "parentIntentSignature": Nothing, "rejectionStatement": Nothing, "sampleUtterances": Nothing, "slots": Nothing, "version": Nothing }



newtype PutSlotTypeRequest = PutSlotTypeRequest 
  { "name" :: (SlotTypeName)
  , "description" :: Maybe (Description)
  , "enumerationValues" :: Maybe (EnumerationValues)
  , "checksum" :: Maybe (String)
  , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy)
  , "createVersion" :: Maybe (Boolean)
  }
derive instance newtypePutSlotTypeRequest :: Newtype PutSlotTypeRequest _
derive instance repGenericPutSlotTypeRequest :: Generic PutSlotTypeRequest _
instance showPutSlotTypeRequest :: Show PutSlotTypeRequest where show = genericShow
instance decodePutSlotTypeRequest :: Decode PutSlotTypeRequest where decode = genericDecode options
instance encodePutSlotTypeRequest :: Encode PutSlotTypeRequest where encode = genericEncode options

-- | Constructs PutSlotTypeRequest from required parameters
newPutSlotTypeRequest :: SlotTypeName -> PutSlotTypeRequest
newPutSlotTypeRequest _name = PutSlotTypeRequest { "name": _name, "checksum": Nothing, "createVersion": Nothing, "description": Nothing, "enumerationValues": Nothing, "valueSelectionStrategy": Nothing }

-- | Constructs PutSlotTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutSlotTypeRequest' :: SlotTypeName -> ( { "name" :: (SlotTypeName) , "description" :: Maybe (Description) , "enumerationValues" :: Maybe (EnumerationValues) , "checksum" :: Maybe (String) , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy) , "createVersion" :: Maybe (Boolean) } -> {"name" :: (SlotTypeName) , "description" :: Maybe (Description) , "enumerationValues" :: Maybe (EnumerationValues) , "checksum" :: Maybe (String) , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy) , "createVersion" :: Maybe (Boolean) } ) -> PutSlotTypeRequest
newPutSlotTypeRequest' _name customize = (PutSlotTypeRequest <<< customize) { "name": _name, "checksum": Nothing, "createVersion": Nothing, "description": Nothing, "enumerationValues": Nothing, "valueSelectionStrategy": Nothing }



newtype PutSlotTypeResponse = PutSlotTypeResponse 
  { "name" :: Maybe (SlotTypeName)
  , "description" :: Maybe (Description)
  , "enumerationValues" :: Maybe (EnumerationValues)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "version" :: Maybe (Version)
  , "checksum" :: Maybe (String)
  , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy)
  , "createVersion" :: Maybe (Boolean)
  }
derive instance newtypePutSlotTypeResponse :: Newtype PutSlotTypeResponse _
derive instance repGenericPutSlotTypeResponse :: Generic PutSlotTypeResponse _
instance showPutSlotTypeResponse :: Show PutSlotTypeResponse where show = genericShow
instance decodePutSlotTypeResponse :: Decode PutSlotTypeResponse where decode = genericDecode options
instance encodePutSlotTypeResponse :: Encode PutSlotTypeResponse where encode = genericEncode options

-- | Constructs PutSlotTypeResponse from required parameters
newPutSlotTypeResponse :: PutSlotTypeResponse
newPutSlotTypeResponse  = PutSlotTypeResponse { "checksum": Nothing, "createVersion": Nothing, "createdDate": Nothing, "description": Nothing, "enumerationValues": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "valueSelectionStrategy": Nothing, "version": Nothing }

-- | Constructs PutSlotTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutSlotTypeResponse' :: ( { "name" :: Maybe (SlotTypeName) , "description" :: Maybe (Description) , "enumerationValues" :: Maybe (EnumerationValues) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy) , "createVersion" :: Maybe (Boolean) } -> {"name" :: Maybe (SlotTypeName) , "description" :: Maybe (Description) , "enumerationValues" :: Maybe (EnumerationValues) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) , "checksum" :: Maybe (String) , "valueSelectionStrategy" :: Maybe (SlotValueSelectionStrategy) , "createVersion" :: Maybe (Boolean) } ) -> PutSlotTypeResponse
newPutSlotTypeResponse'  customize = (PutSlotTypeResponse <<< customize) { "checksum": Nothing, "createVersion": Nothing, "createdDate": Nothing, "description": Nothing, "enumerationValues": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "valueSelectionStrategy": Nothing, "version": Nothing }



newtype ReferenceType = ReferenceType String
derive instance newtypeReferenceType :: Newtype ReferenceType _
derive instance repGenericReferenceType :: Generic ReferenceType _
instance showReferenceType :: Show ReferenceType where show = genericShow
instance decodeReferenceType :: Decode ReferenceType where decode = genericDecode options
instance encodeReferenceType :: Encode ReferenceType where encode = genericEncode options



-- | <p>The resource that you are attempting to delete is referred to by another resource. Use this information to remove references to the resource that you are trying to delete.</p> <p>The body of the exception contains a JSON object that describes the resource.</p> <p> <code>{ "resourceType": BOT | BOTALIAS | BOTCHANNEL | INTENT,</code> </p> <p> <code>"resourceReference": {</code> </p> <p> <code>"name": <i>string</i>, "version": <i>string</i> } }</code> </p>
newtype ResourceInUseException = ResourceInUseException 
  { "referenceType" :: Maybe (ReferenceType)
  , "exampleReference" :: Maybe (ResourceReference)
  }
derive instance newtypeResourceInUseException :: Newtype ResourceInUseException _
derive instance repGenericResourceInUseException :: Generic ResourceInUseException _
instance showResourceInUseException :: Show ResourceInUseException where show = genericShow
instance decodeResourceInUseException :: Decode ResourceInUseException where decode = genericDecode options
instance encodeResourceInUseException :: Encode ResourceInUseException where encode = genericEncode options

-- | Constructs ResourceInUseException from required parameters
newResourceInUseException :: ResourceInUseException
newResourceInUseException  = ResourceInUseException { "exampleReference": Nothing, "referenceType": Nothing }

-- | Constructs ResourceInUseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceInUseException' :: ( { "referenceType" :: Maybe (ReferenceType) , "exampleReference" :: Maybe (ResourceReference) } -> {"referenceType" :: Maybe (ReferenceType) , "exampleReference" :: Maybe (ResourceReference) } ) -> ResourceInUseException
newResourceInUseException'  customize = (ResourceInUseException <<< customize) { "exampleReference": Nothing, "referenceType": Nothing }



-- | <p>Describes the resource that refers to the resource that you are attempting to delete. This object is returned as part of the <code>ResourceInUseException</code> exception. </p>
newtype ResourceReference = ResourceReference 
  { "name" :: Maybe (Name)
  , "version" :: Maybe (Version)
  }
derive instance newtypeResourceReference :: Newtype ResourceReference _
derive instance repGenericResourceReference :: Generic ResourceReference _
instance showResourceReference :: Show ResourceReference where show = genericShow
instance decodeResourceReference :: Decode ResourceReference where decode = genericDecode options
instance encodeResourceReference :: Encode ResourceReference where encode = genericEncode options

-- | Constructs ResourceReference from required parameters
newResourceReference :: ResourceReference
newResourceReference  = ResourceReference { "name": Nothing, "version": Nothing }

-- | Constructs ResourceReference's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceReference' :: ( { "name" :: Maybe (Name) , "version" :: Maybe (Version) } -> {"name" :: Maybe (Name) , "version" :: Maybe (Version) } ) -> ResourceReference
newResourceReference'  customize = (ResourceReference <<< customize) { "name": Nothing, "version": Nothing }



newtype ResourceType = ResourceType String
derive instance newtypeResourceType :: Newtype ResourceType _
derive instance repGenericResourceType :: Generic ResourceType _
instance showResourceType :: Show ResourceType where show = genericShow
instance decodeResourceType :: Decode ResourceType where decode = genericDecode options
instance encodeResourceType :: Encode ResourceType where encode = genericEncode options



newtype ResponseCard = ResponseCard String
derive instance newtypeResponseCard :: Newtype ResponseCard _
derive instance repGenericResponseCard :: Generic ResponseCard _
instance showResponseCard :: Show ResponseCard where show = genericShow
instance decodeResponseCard :: Decode ResponseCard where decode = genericDecode options
instance encodeResponseCard :: Encode ResponseCard where encode = genericEncode options



newtype SessionTTL = SessionTTL Int
derive instance newtypeSessionTTL :: Newtype SessionTTL _
derive instance repGenericSessionTTL :: Generic SessionTTL _
instance showSessionTTL :: Show SessionTTL where show = genericShow
instance decodeSessionTTL :: Decode SessionTTL where decode = genericDecode options
instance encodeSessionTTL :: Encode SessionTTL where encode = genericEncode options



-- | <p>Identifies the version of a specific slot.</p>
newtype Slot = Slot 
  { "name" :: (SlotName)
  , "description" :: Maybe (Description)
  , "slotConstraint" :: (SlotConstraint)
  , "slotType" :: Maybe (CustomOrBuiltinSlotTypeName)
  , "slotTypeVersion" :: Maybe (Version)
  , "valueElicitationPrompt" :: Maybe (Prompt)
  , "priority" :: Maybe (Priority)
  , "sampleUtterances" :: Maybe (SlotUtteranceList)
  , "responseCard" :: Maybe (ResponseCard)
  }
derive instance newtypeSlot :: Newtype Slot _
derive instance repGenericSlot :: Generic Slot _
instance showSlot :: Show Slot where show = genericShow
instance decodeSlot :: Decode Slot where decode = genericDecode options
instance encodeSlot :: Encode Slot where encode = genericEncode options

-- | Constructs Slot from required parameters
newSlot :: SlotName -> SlotConstraint -> Slot
newSlot _name _slotConstraint = Slot { "name": _name, "slotConstraint": _slotConstraint, "description": Nothing, "priority": Nothing, "responseCard": Nothing, "sampleUtterances": Nothing, "slotType": Nothing, "slotTypeVersion": Nothing, "valueElicitationPrompt": Nothing }

-- | Constructs Slot's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSlot' :: SlotName -> SlotConstraint -> ( { "name" :: (SlotName) , "description" :: Maybe (Description) , "slotConstraint" :: (SlotConstraint) , "slotType" :: Maybe (CustomOrBuiltinSlotTypeName) , "slotTypeVersion" :: Maybe (Version) , "valueElicitationPrompt" :: Maybe (Prompt) , "priority" :: Maybe (Priority) , "sampleUtterances" :: Maybe (SlotUtteranceList) , "responseCard" :: Maybe (ResponseCard) } -> {"name" :: (SlotName) , "description" :: Maybe (Description) , "slotConstraint" :: (SlotConstraint) , "slotType" :: Maybe (CustomOrBuiltinSlotTypeName) , "slotTypeVersion" :: Maybe (Version) , "valueElicitationPrompt" :: Maybe (Prompt) , "priority" :: Maybe (Priority) , "sampleUtterances" :: Maybe (SlotUtteranceList) , "responseCard" :: Maybe (ResponseCard) } ) -> Slot
newSlot' _name _slotConstraint customize = (Slot <<< customize) { "name": _name, "slotConstraint": _slotConstraint, "description": Nothing, "priority": Nothing, "responseCard": Nothing, "sampleUtterances": Nothing, "slotType": Nothing, "slotTypeVersion": Nothing, "valueElicitationPrompt": Nothing }



newtype SlotConstraint = SlotConstraint String
derive instance newtypeSlotConstraint :: Newtype SlotConstraint _
derive instance repGenericSlotConstraint :: Generic SlotConstraint _
instance showSlotConstraint :: Show SlotConstraint where show = genericShow
instance decodeSlotConstraint :: Decode SlotConstraint where decode = genericDecode options
instance encodeSlotConstraint :: Encode SlotConstraint where encode = genericEncode options



newtype SlotList = SlotList (Array Slot)
derive instance newtypeSlotList :: Newtype SlotList _
derive instance repGenericSlotList :: Generic SlotList _
instance showSlotList :: Show SlotList where show = genericShow
instance decodeSlotList :: Decode SlotList where decode = genericDecode options
instance encodeSlotList :: Encode SlotList where encode = genericEncode options



newtype SlotName = SlotName String
derive instance newtypeSlotName :: Newtype SlotName _
derive instance repGenericSlotName :: Generic SlotName _
instance showSlotName :: Show SlotName where show = genericShow
instance decodeSlotName :: Decode SlotName where decode = genericDecode options
instance encodeSlotName :: Encode SlotName where encode = genericEncode options



-- | <p>Provides information about a slot type..</p>
newtype SlotTypeMetadata = SlotTypeMetadata 
  { "name" :: Maybe (SlotTypeName)
  , "description" :: Maybe (Description)
  , "lastUpdatedDate" :: Maybe (Types.Timestamp)
  , "createdDate" :: Maybe (Types.Timestamp)
  , "version" :: Maybe (Version)
  }
derive instance newtypeSlotTypeMetadata :: Newtype SlotTypeMetadata _
derive instance repGenericSlotTypeMetadata :: Generic SlotTypeMetadata _
instance showSlotTypeMetadata :: Show SlotTypeMetadata where show = genericShow
instance decodeSlotTypeMetadata :: Decode SlotTypeMetadata where decode = genericDecode options
instance encodeSlotTypeMetadata :: Encode SlotTypeMetadata where encode = genericEncode options

-- | Constructs SlotTypeMetadata from required parameters
newSlotTypeMetadata :: SlotTypeMetadata
newSlotTypeMetadata  = SlotTypeMetadata { "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "version": Nothing }

-- | Constructs SlotTypeMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSlotTypeMetadata' :: ( { "name" :: Maybe (SlotTypeName) , "description" :: Maybe (Description) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) } -> {"name" :: Maybe (SlotTypeName) , "description" :: Maybe (Description) , "lastUpdatedDate" :: Maybe (Types.Timestamp) , "createdDate" :: Maybe (Types.Timestamp) , "version" :: Maybe (Version) } ) -> SlotTypeMetadata
newSlotTypeMetadata'  customize = (SlotTypeMetadata <<< customize) { "createdDate": Nothing, "description": Nothing, "lastUpdatedDate": Nothing, "name": Nothing, "version": Nothing }



newtype SlotTypeMetadataList = SlotTypeMetadataList (Array SlotTypeMetadata)
derive instance newtypeSlotTypeMetadataList :: Newtype SlotTypeMetadataList _
derive instance repGenericSlotTypeMetadataList :: Generic SlotTypeMetadataList _
instance showSlotTypeMetadataList :: Show SlotTypeMetadataList where show = genericShow
instance decodeSlotTypeMetadataList :: Decode SlotTypeMetadataList where decode = genericDecode options
instance encodeSlotTypeMetadataList :: Encode SlotTypeMetadataList where encode = genericEncode options



newtype SlotTypeName = SlotTypeName String
derive instance newtypeSlotTypeName :: Newtype SlotTypeName _
derive instance repGenericSlotTypeName :: Generic SlotTypeName _
instance showSlotTypeName :: Show SlotTypeName where show = genericShow
instance decodeSlotTypeName :: Decode SlotTypeName where decode = genericDecode options
instance encodeSlotTypeName :: Encode SlotTypeName where encode = genericEncode options



newtype SlotUtteranceList = SlotUtteranceList (Array Utterance)
derive instance newtypeSlotUtteranceList :: Newtype SlotUtteranceList _
derive instance repGenericSlotUtteranceList :: Generic SlotUtteranceList _
instance showSlotUtteranceList :: Show SlotUtteranceList where show = genericShow
instance decodeSlotUtteranceList :: Decode SlotUtteranceList where decode = genericDecode options
instance encodeSlotUtteranceList :: Encode SlotUtteranceList where encode = genericEncode options



newtype SlotValueSelectionStrategy = SlotValueSelectionStrategy String
derive instance newtypeSlotValueSelectionStrategy :: Newtype SlotValueSelectionStrategy _
derive instance repGenericSlotValueSelectionStrategy :: Generic SlotValueSelectionStrategy _
instance showSlotValueSelectionStrategy :: Show SlotValueSelectionStrategy where show = genericShow
instance decodeSlotValueSelectionStrategy :: Decode SlotValueSelectionStrategy where decode = genericDecode options
instance encodeSlotValueSelectionStrategy :: Encode SlotValueSelectionStrategy where encode = genericEncode options



newtype StartImportRequest = StartImportRequest 
  { "payload" :: (String)
  , "resourceType" :: (ResourceType)
  , "mergeStrategy" :: (MergeStrategy)
  }
derive instance newtypeStartImportRequest :: Newtype StartImportRequest _
derive instance repGenericStartImportRequest :: Generic StartImportRequest _
instance showStartImportRequest :: Show StartImportRequest where show = genericShow
instance decodeStartImportRequest :: Decode StartImportRequest where decode = genericDecode options
instance encodeStartImportRequest :: Encode StartImportRequest where encode = genericEncode options

-- | Constructs StartImportRequest from required parameters
newStartImportRequest :: MergeStrategy -> String -> ResourceType -> StartImportRequest
newStartImportRequest _mergeStrategy _payload _resourceType = StartImportRequest { "mergeStrategy": _mergeStrategy, "payload": _payload, "resourceType": _resourceType }

-- | Constructs StartImportRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartImportRequest' :: MergeStrategy -> String -> ResourceType -> ( { "payload" :: (String) , "resourceType" :: (ResourceType) , "mergeStrategy" :: (MergeStrategy) } -> {"payload" :: (String) , "resourceType" :: (ResourceType) , "mergeStrategy" :: (MergeStrategy) } ) -> StartImportRequest
newStartImportRequest' _mergeStrategy _payload _resourceType customize = (StartImportRequest <<< customize) { "mergeStrategy": _mergeStrategy, "payload": _payload, "resourceType": _resourceType }



newtype StartImportResponse = StartImportResponse 
  { "name" :: Maybe (Name)
  , "resourceType" :: Maybe (ResourceType)
  , "mergeStrategy" :: Maybe (MergeStrategy)
  , "importId" :: Maybe (String)
  , "importStatus" :: Maybe (ImportStatus)
  , "createdDate" :: Maybe (Types.Timestamp)
  }
derive instance newtypeStartImportResponse :: Newtype StartImportResponse _
derive instance repGenericStartImportResponse :: Generic StartImportResponse _
instance showStartImportResponse :: Show StartImportResponse where show = genericShow
instance decodeStartImportResponse :: Decode StartImportResponse where decode = genericDecode options
instance encodeStartImportResponse :: Encode StartImportResponse where encode = genericEncode options

-- | Constructs StartImportResponse from required parameters
newStartImportResponse :: StartImportResponse
newStartImportResponse  = StartImportResponse { "createdDate": Nothing, "importId": Nothing, "importStatus": Nothing, "mergeStrategy": Nothing, "name": Nothing, "resourceType": Nothing }

-- | Constructs StartImportResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartImportResponse' :: ( { "name" :: Maybe (Name) , "resourceType" :: Maybe (ResourceType) , "mergeStrategy" :: Maybe (MergeStrategy) , "importId" :: Maybe (String) , "importStatus" :: Maybe (ImportStatus) , "createdDate" :: Maybe (Types.Timestamp) } -> {"name" :: Maybe (Name) , "resourceType" :: Maybe (ResourceType) , "mergeStrategy" :: Maybe (MergeStrategy) , "importId" :: Maybe (String) , "importStatus" :: Maybe (ImportStatus) , "createdDate" :: Maybe (Types.Timestamp) } ) -> StartImportResponse
newStartImportResponse'  customize = (StartImportResponse <<< customize) { "createdDate": Nothing, "importId": Nothing, "importStatus": Nothing, "mergeStrategy": Nothing, "name": Nothing, "resourceType": Nothing }



-- | <p>A collection of messages that convey information to the user. At runtime, Amazon Lex selects the message to convey. </p>
newtype Statement = Statement 
  { "messages" :: (MessageList)
  , "responseCard" :: Maybe (ResponseCard)
  }
derive instance newtypeStatement :: Newtype Statement _
derive instance repGenericStatement :: Generic Statement _
instance showStatement :: Show Statement where show = genericShow
instance decodeStatement :: Decode Statement where decode = genericDecode options
instance encodeStatement :: Encode Statement where encode = genericEncode options

-- | Constructs Statement from required parameters
newStatement :: MessageList -> Statement
newStatement _messages = Statement { "messages": _messages, "responseCard": Nothing }

-- | Constructs Statement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStatement' :: MessageList -> ( { "messages" :: (MessageList) , "responseCard" :: Maybe (ResponseCard) } -> {"messages" :: (MessageList) , "responseCard" :: Maybe (ResponseCard) } ) -> Statement
newStatement' _messages customize = (Statement <<< customize) { "messages": _messages, "responseCard": Nothing }



newtype Status = Status String
derive instance newtypeStatus :: Newtype Status _
derive instance repGenericStatus :: Generic Status _
instance showStatus :: Show Status where show = genericShow
instance decodeStatus :: Decode Status where decode = genericDecode options
instance encodeStatus :: Encode Status where encode = genericEncode options



newtype StatusType = StatusType String
derive instance newtypeStatusType :: Newtype StatusType _
derive instance repGenericStatusType :: Generic StatusType _
instance showStatusType :: Show StatusType where show = genericShow
instance decodeStatusType :: Decode StatusType where decode = genericDecode options
instance encodeStatusType :: Encode StatusType where encode = genericEncode options



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



newtype SynonymList = SynonymList (Array Value)
derive instance newtypeSynonymList :: Newtype SynonymList _
derive instance repGenericSynonymList :: Generic SynonymList _
instance showSynonymList :: Show SynonymList where show = genericShow
instance decodeSynonymList :: Decode SynonymList where decode = genericDecode options
instance encodeSynonymList :: Encode SynonymList where encode = genericEncode options



newtype UserId = UserId String
derive instance newtypeUserId :: Newtype UserId _
derive instance repGenericUserId :: Generic UserId _
instance showUserId :: Show UserId where show = genericShow
instance decodeUserId :: Decode UserId where decode = genericDecode options
instance encodeUserId :: Encode UserId where encode = genericEncode options



newtype Utterance = Utterance String
derive instance newtypeUtterance :: Newtype Utterance _
derive instance repGenericUtterance :: Generic Utterance _
instance showUtterance :: Show Utterance where show = genericShow
instance decodeUtterance :: Decode Utterance where decode = genericDecode options
instance encodeUtterance :: Encode Utterance where encode = genericEncode options



-- | <p>Provides information about a single utterance that was made to your bot. </p>
newtype UtteranceData = UtteranceData 
  { "utteranceString" :: Maybe (UtteranceString)
  , "count" :: Maybe (Count)
  , "distinctUsers" :: Maybe (Count)
  , "firstUtteredDate" :: Maybe (Types.Timestamp)
  , "lastUtteredDate" :: Maybe (Types.Timestamp)
  }
derive instance newtypeUtteranceData :: Newtype UtteranceData _
derive instance repGenericUtteranceData :: Generic UtteranceData _
instance showUtteranceData :: Show UtteranceData where show = genericShow
instance decodeUtteranceData :: Decode UtteranceData where decode = genericDecode options
instance encodeUtteranceData :: Encode UtteranceData where encode = genericEncode options

-- | Constructs UtteranceData from required parameters
newUtteranceData :: UtteranceData
newUtteranceData  = UtteranceData { "count": Nothing, "distinctUsers": Nothing, "firstUtteredDate": Nothing, "lastUtteredDate": Nothing, "utteranceString": Nothing }

-- | Constructs UtteranceData's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUtteranceData' :: ( { "utteranceString" :: Maybe (UtteranceString) , "count" :: Maybe (Count) , "distinctUsers" :: Maybe (Count) , "firstUtteredDate" :: Maybe (Types.Timestamp) , "lastUtteredDate" :: Maybe (Types.Timestamp) } -> {"utteranceString" :: Maybe (UtteranceString) , "count" :: Maybe (Count) , "distinctUsers" :: Maybe (Count) , "firstUtteredDate" :: Maybe (Types.Timestamp) , "lastUtteredDate" :: Maybe (Types.Timestamp) } ) -> UtteranceData
newUtteranceData'  customize = (UtteranceData <<< customize) { "count": Nothing, "distinctUsers": Nothing, "firstUtteredDate": Nothing, "lastUtteredDate": Nothing, "utteranceString": Nothing }



-- | <p>Provides a list of utterances that have been made to a specific version of your bot. The list contains a maximum of 100 utterances.</p>
newtype UtteranceList = UtteranceList 
  { "botVersion" :: Maybe (Version)
  , "utterances" :: Maybe (ListOfUtterance)
  }
derive instance newtypeUtteranceList :: Newtype UtteranceList _
derive instance repGenericUtteranceList :: Generic UtteranceList _
instance showUtteranceList :: Show UtteranceList where show = genericShow
instance decodeUtteranceList :: Decode UtteranceList where decode = genericDecode options
instance encodeUtteranceList :: Encode UtteranceList where encode = genericEncode options

-- | Constructs UtteranceList from required parameters
newUtteranceList :: UtteranceList
newUtteranceList  = UtteranceList { "botVersion": Nothing, "utterances": Nothing }

-- | Constructs UtteranceList's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUtteranceList' :: ( { "botVersion" :: Maybe (Version) , "utterances" :: Maybe (ListOfUtterance) } -> {"botVersion" :: Maybe (Version) , "utterances" :: Maybe (ListOfUtterance) } ) -> UtteranceList
newUtteranceList'  customize = (UtteranceList <<< customize) { "botVersion": Nothing, "utterances": Nothing }



newtype UtteranceString = UtteranceString String
derive instance newtypeUtteranceString :: Newtype UtteranceString _
derive instance repGenericUtteranceString :: Generic UtteranceString _
instance showUtteranceString :: Show UtteranceString where show = genericShow
instance decodeUtteranceString :: Decode UtteranceString where decode = genericDecode options
instance encodeUtteranceString :: Encode UtteranceString where encode = genericEncode options



newtype Value = Value String
derive instance newtypeValue :: Newtype Value _
derive instance repGenericValue :: Generic Value _
instance showValue :: Show Value where show = genericShow
instance decodeValue :: Decode Value where decode = genericDecode options
instance encodeValue :: Encode Value where encode = genericEncode options



newtype Version = Version String
derive instance newtypeVersion :: Newtype Version _
derive instance repGenericVersion :: Generic Version _
instance showVersion :: Show Version where show = genericShow
instance decodeVersion :: Decode Version where decode = genericDecode options
instance encodeVersion :: Encode Version where encode = genericEncode options

