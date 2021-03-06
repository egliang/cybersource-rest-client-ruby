# CyberSource::TmsV1InstrumentIdentifiersPaymentInstrumentsGet200ResponseEmbeddedEmbeddedInstrumentIdentifier

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_links** | [**TmsV1InstrumentIdentifiersPost200ResponseLinks**](TmsV1InstrumentIdentifiersPost200ResponseLinks.md) |  | [optional] 
**object** | **String** | &#39;Describes type of token.&#39;  Valid values: - instrumentIdentifier  | [optional] 
**state** | **String** | &#39;Current state of the token.&#39;  Valid values: - ACTIVE - CLOSED  | [optional] 
**id** | **String** | The ID of the existing instrument identifier to be linked to the newly created payment instrument. | [optional] 
**card** | [**TmsV1InstrumentIdentifiersPost200ResponseCard**](TmsV1InstrumentIdentifiersPost200ResponseCard.md) |  | [optional] 
**tokenized_card** | [**TmsV1InstrumentIdentifiersPost200ResponseTokenizedCard**](TmsV1InstrumentIdentifiersPost200ResponseTokenizedCard.md) |  | [optional] 
**bank_account** | [**Tmsv1instrumentidentifiersBankAccount**](Tmsv1instrumentidentifiersBankAccount.md) |  | [optional] 
**issuer** | [**TmsV1InstrumentIdentifiersPost200ResponseIssuer**](TmsV1InstrumentIdentifiersPost200ResponseIssuer.md) |  | [optional] 
**processing_information** | [**TmsV1InstrumentIdentifiersPost200ResponseProcessingInformation**](TmsV1InstrumentIdentifiersPost200ResponseProcessingInformation.md) |  | [optional] 
**metadata** | [**TmsV1InstrumentIdentifiersPost200ResponseMetadata**](TmsV1InstrumentIdentifiersPost200ResponseMetadata.md) |  | [optional] 


