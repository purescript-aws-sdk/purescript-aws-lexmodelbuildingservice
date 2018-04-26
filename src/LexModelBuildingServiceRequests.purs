
module AWS.LexModelBuildingService.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.LexModelBuildingService as LexModelBuildingService
import AWS.LexModelBuildingService.Types as LexModelBuildingServiceTypes


-- | <p>Creates a new version of the bot based on the <code>$LATEST</code> version. If the <code>$LATEST</code> version of this resource hasn't changed since you created the last version, Amazon Lex doesn't create a new version. It returns the last created version.</p> <note> <p>You can update only the <code>$LATEST</code> version of the bot. You can't update the numbered versions that you create with the <code>CreateBotVersion</code> operation.</p> </note> <p> When you create the first version of a bot, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p> <p> This operation requires permission for the <code>lex:CreateBotVersion</code> action. </p>
createBotVersion :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.CreateBotVersionRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.CreateBotVersionResponse
createBotVersion (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createBotVersion"


-- | <p>Creates a new version of an intent based on the <code>$LATEST</code> version of the intent. If the <code>$LATEST</code> version of this intent hasn't changed since you last updated it, Amazon Lex doesn't create a new version. It returns the last version you created.</p> <note> <p>You can update only the <code>$LATEST</code> version of the intent. You can't update the numbered versions that you create with the <code>CreateIntentVersion</code> operation.</p> </note> <p> When you create a version of an intent, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p> <p>This operation requires permissions to perform the <code>lex:CreateIntentVersion</code> action. </p>
createIntentVersion :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.CreateIntentVersionRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.CreateIntentVersionResponse
createIntentVersion (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createIntentVersion"


-- | <p>Creates a new version of a slot type based on the <code>$LATEST</code> version of the specified slot type. If the <code>$LATEST</code> version of this resource has not changed since the last version that you created, Amazon Lex doesn't create a new version. It returns the last version that you created. </p> <note> <p>You can update only the <code>$LATEST</code> version of a slot type. You can't update the numbered versions that you create with the <code>CreateSlotTypeVersion</code> operation.</p> </note> <p>When you create a version of a slot type, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p> <p>This operation requires permissions for the <code>lex:CreateSlotTypeVersion</code> action.</p>
createSlotTypeVersion :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.CreateSlotTypeVersionRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.CreateSlotTypeVersionResponse
createSlotTypeVersion (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSlotTypeVersion"


-- | <p>Deletes all versions of the bot, including the <code>$LATEST</code> version. To delete a specific version of the bot, use the <a>DeleteBotVersion</a> operation.</p> <p>If a bot has an alias, you can't delete it. Instead, the <code>DeleteBot</code> operation returns a <code>ResourceInUseException</code> exception that includes a reference to the alias that refers to the bot. To remove the reference to the bot, delete the alias. If you get the same exception again, delete the referring alias until the <code>DeleteBot</code> operation is successful.</p> <p>This operation requires permissions for the <code>lex:DeleteBot</code> action.</p>
deleteBot :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.DeleteBotRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteBot (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteBot"


-- | <p>Deletes an alias for the specified bot. </p> <p>You can't delete an alias that is used in the association between a bot and a messaging channel. If an alias is used in a channel association, the <code>DeleteBot</code> operation returns a <code>ResourceInUseException</code> exception that includes a reference to the channel association that refers to the bot. You can remove the reference to the alias by deleting the channel association. If you get the same exception again, delete the referring association until the <code>DeleteBotAlias</code> operation is successful.</p>
deleteBotAlias :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.DeleteBotAliasRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteBotAlias (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteBotAlias"


-- | <p>Deletes the association between an Amazon Lex bot and a messaging platform.</p> <p>This operation requires permission for the <code>lex:DeleteBotChannelAssociation</code> action.</p>
deleteBotChannelAssociation :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.DeleteBotChannelAssociationRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteBotChannelAssociation (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteBotChannelAssociation"


-- | <p>Deletes a specific version of a bot. To delete all versions of a bot, use the <a>DeleteBot</a> operation. </p> <p>This operation requires permissions for the <code>lex:DeleteBotVersion</code> action.</p>
deleteBotVersion :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.DeleteBotVersionRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteBotVersion (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteBotVersion"


-- | <p>Deletes all versions of the intent, including the <code>$LATEST</code> version. To delete a specific version of the intent, use the <a>DeleteIntentVersion</a> operation.</p> <p> You can delete a version of an intent only if it is not referenced. To delete an intent that is referred to in one or more bots (see <a>how-it-works</a>), you must remove those references first. </p> <note> <p> If you get the <code>ResourceInUseException</code> exception, it provides an example reference that shows where the intent is referenced. To remove the reference to the intent, either update the bot or delete it. If you get the same exception when you attempt to delete the intent again, repeat until the intent has no references and the call to <code>DeleteIntent</code> is successful. </p> </note> <p> This operation requires permission for the <code>lex:DeleteIntent</code> action. </p>
deleteIntent :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.DeleteIntentRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteIntent (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteIntent"


-- | <p>Deletes a specific version of an intent. To delete all versions of a intent, use the <a>DeleteIntent</a> operation. </p> <p>This operation requires permissions for the <code>lex:DeleteIntentVersion</code> action.</p>
deleteIntentVersion :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.DeleteIntentVersionRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteIntentVersion (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteIntentVersion"


-- | <p>Deletes all versions of the slot type, including the <code>$LATEST</code> version. To delete a specific version of the slot type, use the <a>DeleteSlotTypeVersion</a> operation.</p> <p> You can delete a version of a slot type only if it is not referenced. To delete a slot type that is referred to in one or more intents, you must remove those references first. </p> <note> <p> If you get the <code>ResourceInUseException</code> exception, the exception provides an example reference that shows the intent where the slot type is referenced. To remove the reference to the slot type, either update the intent or delete it. If you get the same exception when you attempt to delete the slot type again, repeat until the slot type has no references and the <code>DeleteSlotType</code> call is successful. </p> </note> <p>This operation requires permission for the <code>lex:DeleteSlotType</code> action.</p>
deleteSlotType :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.DeleteSlotTypeRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteSlotType (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSlotType"


-- | <p>Deletes a specific version of a slot type. To delete all versions of a slot type, use the <a>DeleteSlotType</a> operation. </p> <p>This operation requires permissions for the <code>lex:DeleteSlotTypeVersion</code> action.</p>
deleteSlotTypeVersion :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.DeleteSlotTypeVersionRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteSlotTypeVersion (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSlotTypeVersion"


-- | <p>Deletes stored utterances.</p> <p>Amazon Lex stores the utterances that users send to your bot. Utterances are stored for 15 days for use with the <a>GetUtterancesView</a> operation, and then stored indefinitely for use in improving the ability of your bot to respond to user input.</p> <p>Use the <code>DeleteStoredUtterances</code> operation to manually delete stored utterances for a specific user.</p> <p>This operation requires permissions for the <code>lex:DeleteUtterances</code> action.</p>
deleteUtterances :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.DeleteUtterancesRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteUtterances (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteUtterances"


-- | <p>Returns metadata information for a specific bot. You must provide the bot name and the bot version or alias. </p> <p> This operation requires permissions for the <code>lex:GetBot</code> action. </p>
getBot :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetBotRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetBotResponse
getBot (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBot"


-- | <p>Returns information about an Amazon Lex bot alias. For more information about aliases, see <a>versioning-aliases</a>.</p> <p>This operation requires permissions for the <code>lex:GetBotAlias</code> action.</p>
getBotAlias :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetBotAliasRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetBotAliasResponse
getBotAlias (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBotAlias"


-- | <p>Returns a list of aliases for a specified Amazon Lex bot.</p> <p>This operation requires permissions for the <code>lex:GetBotAliases</code> action.</p>
getBotAliases :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetBotAliasesRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetBotAliasesResponse
getBotAliases (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBotAliases"


-- | <p>Returns information about the association between an Amazon Lex bot and a messaging platform.</p> <p>This operation requires permissions for the <code>lex:GetBotChannelAssociation</code> action.</p>
getBotChannelAssociation :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetBotChannelAssociationRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetBotChannelAssociationResponse
getBotChannelAssociation (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBotChannelAssociation"


-- | <p> Returns a list of all of the channels associated with the specified bot. </p> <p>The <code>GetBotChannelAssociations</code> operation requires permissions for the <code>lex:GetBotChannelAssociations</code> action.</p>
getBotChannelAssociations :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetBotChannelAssociationsRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetBotChannelAssociationsResponse
getBotChannelAssociations (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBotChannelAssociations"


-- | <p>Gets information about all of the versions of a bot.</p> <p>The <code>GetBotVersions</code> operation returns a <code>BotMetadata</code> object for each version of a bot. For example, if a bot has three numbered versions, the <code>GetBotVersions</code> operation returns four <code>BotMetadata</code> objects in the response, one for each numbered version and one for the <code>$LATEST</code> version. </p> <p>The <code>GetBotVersions</code> operation always returns at least one version, the <code>$LATEST</code> version.</p> <p>This operation requires permissions for the <code>lex:GetBotVersions</code> action.</p>
getBotVersions :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetBotVersionsRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetBotVersionsResponse
getBotVersions (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBotVersions"


-- | <p>Returns bot information as follows: </p> <ul> <li> <p>If you provide the <code>nameContains</code> field, the response includes information for the <code>$LATEST</code> version of all bots whose name contains the specified string.</p> </li> <li> <p>If you don't specify the <code>nameContains</code> field, the operation returns information about the <code>$LATEST</code> version of all of your bots.</p> </li> </ul> <p>This operation requires permission for the <code>lex:GetBots</code> action.</p>
getBots :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetBotsRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetBotsResponse
getBots (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBots"


-- | <p>Returns information about a built-in intent.</p> <p>This operation requires permission for the <code>lex:GetBuiltinIntent</code> action.</p>
getBuiltinIntent :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetBuiltinIntentRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetBuiltinIntentResponse
getBuiltinIntent (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBuiltinIntent"


-- | <p>Gets a list of built-in intents that meet the specified criteria.</p> <p>This operation requires permission for the <code>lex:GetBuiltinIntents</code> action.</p>
getBuiltinIntents :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetBuiltinIntentsRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetBuiltinIntentsResponse
getBuiltinIntents (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBuiltinIntents"


-- | <p>Gets a list of built-in slot types that meet the specified criteria.</p> <p>For a list of built-in slot types, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference">Slot Type Reference</a> in the <i>Alexa Skills Kit</i>.</p> <p>This operation requires permission for the <code>lex:GetBuiltInSlotTypes</code> action.</p>
getBuiltinSlotTypes :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetBuiltinSlotTypesRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetBuiltinSlotTypesResponse
getBuiltinSlotTypes (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBuiltinSlotTypes"


-- | <p>Exports the contents of a Amazon Lex resource in a specified format. </p>
getExport :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetExportRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetExportResponse
getExport (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getExport"


-- | <p>Gets information about an import job started with the <code>StartImport</code> operation.</p>
getImport :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetImportRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetImportResponse
getImport (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getImport"


-- | <p> Returns information about an intent. In addition to the intent name, you must specify the intent version. </p> <p> This operation requires permissions to perform the <code>lex:GetIntent</code> action. </p>
getIntent :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetIntentRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetIntentResponse
getIntent (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getIntent"


-- | <p>Gets information about all of the versions of an intent.</p> <p>The <code>GetIntentVersions</code> operation returns an <code>IntentMetadata</code> object for each version of an intent. For example, if an intent has three numbered versions, the <code>GetIntentVersions</code> operation returns four <code>IntentMetadata</code> objects in the response, one for each numbered version and one for the <code>$LATEST</code> version. </p> <p>The <code>GetIntentVersions</code> operation always returns at least one version, the <code>$LATEST</code> version.</p> <p>This operation requires permissions for the <code>lex:GetIntentVersions</code> action.</p>
getIntentVersions :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetIntentVersionsRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetIntentVersionsResponse
getIntentVersions (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getIntentVersions"


-- | <p>Returns intent information as follows: </p> <ul> <li> <p>If you specify the <code>nameContains</code> field, returns the <code>$LATEST</code> version of all intents that contain the specified string.</p> </li> <li> <p> If you don't specify the <code>nameContains</code> field, returns information about the <code>$LATEST</code> version of all intents. </p> </li> </ul> <p> The operation requires permission for the <code>lex:GetIntents</code> action. </p>
getIntents :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetIntentsRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetIntentsResponse
getIntents (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getIntents"


-- | <p>Returns information about a specific version of a slot type. In addition to specifying the slot type name, you must specify the slot type version.</p> <p>This operation requires permissions for the <code>lex:GetSlotType</code> action.</p>
getSlotType :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetSlotTypeRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetSlotTypeResponse
getSlotType (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getSlotType"


-- | <p>Gets information about all versions of a slot type.</p> <p>The <code>GetSlotTypeVersions</code> operation returns a <code>SlotTypeMetadata</code> object for each version of a slot type. For example, if a slot type has three numbered versions, the <code>GetSlotTypeVersions</code> operation returns four <code>SlotTypeMetadata</code> objects in the response, one for each numbered version and one for the <code>$LATEST</code> version. </p> <p>The <code>GetSlotTypeVersions</code> operation always returns at least one version, the <code>$LATEST</code> version.</p> <p>This operation requires permissions for the <code>lex:GetSlotTypeVersions</code> action.</p>
getSlotTypeVersions :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetSlotTypeVersionsRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetSlotTypeVersionsResponse
getSlotTypeVersions (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getSlotTypeVersions"


-- | <p>Returns slot type information as follows: </p> <ul> <li> <p>If you specify the <code>nameContains</code> field, returns the <code>$LATEST</code> version of all slot types that contain the specified string.</p> </li> <li> <p> If you don't specify the <code>nameContains</code> field, returns information about the <code>$LATEST</code> version of all slot types. </p> </li> </ul> <p> The operation requires permission for the <code>lex:GetSlotTypes</code> action. </p>
getSlotTypes :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetSlotTypesRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetSlotTypesResponse
getSlotTypes (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getSlotTypes"


-- | <p>Use the <code>GetUtterancesView</code> operation to get information about the utterances that your users have made to your bot. You can use this list to tune the utterances that your bot responds to.</p> <p>For example, say that you have created a bot to order flowers. After your users have used your bot for a while, use the <code>GetUtterancesView</code> operation to see the requests that they have made and whether they have been successful. You might find that the utterance "I want flowers" is not being recognized. You could add this utterance to the <code>OrderFlowers</code> intent so that your bot recognizes that utterance.</p> <p>After you publish a new version of a bot, you can get information about the old version and the new so that you can compare the performance across the two versions. </p> <note> <p>Utterance statistics are generated once a day. Data is available for the last 15 days. You can request information for up to 5 versions in each request. The response contains information about a maximum of 100 utterances for each version.</p> </note> <p>This operation requires permissions for the <code>lex:GetUtterancesView</code> action.</p>
getUtterancesView :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.GetUtterancesViewRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.GetUtterancesViewResponse
getUtterancesView (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getUtterancesView"


-- | <p>Creates an Amazon Lex conversational bot or replaces an existing bot. When you create or update a bot you are only required to specify a name, a locale, and whether the bot is directed toward children under age 13. You can use this to add intents later, or to remove intents from an existing bot. When you create a bot with the minimum information, the bot is created or updated but Amazon Lex returns the <code/> response <code>FAILED</code>. You can build the bot after you add one or more intents. For more information about Amazon Lex bots, see <a>how-it-works</a>. </p> <p>If you specify the name of an existing bot, the fields in the request replace the existing values in the <code>$LATEST</code> version of the bot. Amazon Lex removes any fields that you don't provide values for in the request, except for the <code>idleTTLInSeconds</code> and <code>privacySettings</code> fields, which are set to their default values. If you don't specify values for required fields, Amazon Lex throws an exception.</p> <p>This operation requires permissions for the <code>lex:PutBot</code> action. For more information, see <a>auth-and-access-control</a>.</p>
putBot :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.PutBotRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.PutBotResponse
putBot (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putBot"


-- | <p>Creates an alias for the specified version of the bot or replaces an alias for the specified bot. To change the version of the bot that the alias points to, replace the alias. For more information about aliases, see <a>versioning-aliases</a>.</p> <p>This operation requires permissions for the <code>lex:PutBotAlias</code> action. </p>
putBotAlias :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.PutBotAliasRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.PutBotAliasResponse
putBotAlias (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putBotAlias"


-- | <p>Creates an intent or replaces an existing intent.</p> <p>To define the interaction between the user and your bot, you use one or more intents. For a pizza ordering bot, for example, you would create an <code>OrderPizza</code> intent. </p> <p>To create an intent or replace an existing intent, you must provide the following:</p> <ul> <li> <p>Intent name. For example, <code>OrderPizza</code>.</p> </li> <li> <p>Sample utterances. For example, "Can I order a pizza, please." and "I want to order a pizza."</p> </li> <li> <p>Information to be gathered. You specify slot types for the information that your bot will request from the user. You can specify standard slot types, such as a date or a time, or custom slot types such as the size and crust of a pizza.</p> </li> <li> <p>How the intent will be fulfilled. You can provide a Lambda function or configure the intent to return the intent information to the client application. If you use a Lambda function, when all of the intent information is available, Amazon Lex invokes your Lambda function. If you configure your intent to return the intent information to the client application. </p> </li> </ul> <p>You can specify other optional information in the request, such as:</p> <ul> <li> <p>A confirmation prompt to ask the user to confirm an intent. For example, "Shall I order your pizza?"</p> </li> <li> <p>A conclusion statement to send to the user after the intent has been fulfilled. For example, "I placed your pizza order."</p> </li> <li> <p>A follow-up prompt that asks the user for additional activity. For example, asking "Do you want to order a drink with your pizza?"</p> </li> </ul> <p>If you specify an existing intent name to update the intent, Amazon Lex replaces the values in the <code>$LATEST</code> version of the intent with the values in the request. Amazon Lex removes fields that you don't provide in the request. If you don't specify the required fields, Amazon Lex throws an exception. When you update the <code>$LATEST</code> version of an intent, the <code>status</code> field of any bot that uses the <code>$LATEST</code> version of the intent is set to <code>NOT_BUILT</code>.</p> <p>For more information, see <a>how-it-works</a>.</p> <p>This operation requires permissions for the <code>lex:PutIntent</code> action.</p>
putIntent :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.PutIntentRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.PutIntentResponse
putIntent (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putIntent"


-- | <p>Creates a custom slot type or replaces an existing custom slot type.</p> <p>To create a custom slot type, specify a name for the slot type and a set of enumeration values, which are the values that a slot of this type can assume. For more information, see <a>how-it-works</a>.</p> <p>If you specify the name of an existing slot type, the fields in the request replace the existing values in the <code>$LATEST</code> version of the slot type. Amazon Lex removes the fields that you don't provide in the request. If you don't specify required fields, Amazon Lex throws an exception. When you update the <code>$LATEST</code> version of a slot type, if a bot uses the <code>$LATEST</code> version of an intent that contains the slot type, the bot's <code>status</code> field is set to <code>NOT_BUILT</code>.</p> <p>This operation requires permissions for the <code>lex:PutSlotType</code> action.</p>
putSlotType :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.PutSlotTypeRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.PutSlotTypeResponse
putSlotType (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putSlotType"


-- | <p>Starts a job to import a resource to Amazon Lex.</p>
startImport :: forall eff. LexModelBuildingService.Service -> LexModelBuildingServiceTypes.StartImportRequest -> Aff (exception :: EXCEPTION | eff) LexModelBuildingServiceTypes.StartImportResponse
startImport (LexModelBuildingService.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startImport"
