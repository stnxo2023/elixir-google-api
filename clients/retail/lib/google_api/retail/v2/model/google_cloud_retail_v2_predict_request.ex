# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PredictRequest do
  @moduledoc """
  Request message for Predict method.

  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - Filter for restricting prediction results with a length limit of 5,000 characters. Accepts values for tags and the `filterOutOfStockItems` flag. * Tag expressions. Restricts predictions to products that match all of the specified tags. Boolean operators `OR` and `NOT` are supported if the expression is enclosed in parentheses, and must be separated from the tag values by a space. `-"tagA"` is also supported and is equivalent to `NOT "tagA"`. Tag values must be double quoted UTF-8 encoded strings with a size limit of 1,000 characters. Note: "Recently viewed" models don't support tag filtering at the moment. * filterOutOfStockItems. Restricts predictions to products that do not have a stockState value of OUT_OF_STOCK. Examples: * tag=("Red" OR "Blue") tag="New-Arrival" tag=(NOT "promotional") * filterOutOfStockItems tag=(-"promotional") * filterOutOfStockItems If your filter blocks all prediction results, the API will return generic (unfiltered) popular products. If you only want results strictly matching the filters, set `strictFiltering` to True in `PredictRequest.params` to receive empty results instead. Note that the API will never return items with storageStatus of "EXPIRED" or "DELETED" regardless of filter choices. If `filterSyntaxV2` is set to true under the `params` field, then attribute-based expressions are expected instead of the above described tag-based syntax. Examples: * (colors: ANY("Red", "Blue")) AND NOT (categories: ANY("Phones")) * (availability: ANY("IN_STOCK")) AND (colors: ANY("Red") OR categories: ANY("Phones"))
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels applied to a resource must meet the following requirements: * Each resource can have multiple labels, up to a maximum of 64. * Each label must be a key-value pair. * Keys have a minimum length of 1 character and a maximum length of 63 characters and cannot be empty. Values can be empty and have a maximum length of 63 characters. * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. All characters must use UTF-8 encoding, and international characters are allowed. * The key portion of a label must be unique. However, you can use the same key with multiple resources. * Keys must start with a lowercase letter or international character. See [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements) for more details.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Maximum number of results to return. Set this property to the number of prediction results needed. If zero, the service will choose a reasonable default. The maximum allowed value is 100. Values above 100 will be coerced to 100.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - This field is not used; leave it unset.
  *   `params` (*type:* `map()`, *default:* `nil`) - Additional domain specific parameters for the predictions. Allowed values: * `returnProduct`: Boolean. If set to true, the associated product object will be returned in the `results.metadata` field in the prediction response. * `returnScore`: Boolean. If set to true, the prediction 'score' corresponding to each returned product will be set in the `results.metadata` field in the prediction response. The given 'score' indicates the probability of an product being clicked/purchased given the user's context and history. * `strictFiltering`: Boolean. True by default. If set to false, the service will return generic (unfiltered) popular products instead of empty if your filter blocks all prediction results. * `priceRerankLevel`: String. Default empty. If set to be non-empty, then it needs to be one of {'no-price-reranking', 'low-price-reranking', 'medium-price-reranking', 'high-price-reranking'}. This gives request-level control and adjusts prediction results based on product price. * `diversityLevel`: String. Default empty. If set to be non-empty, then it needs to be one of {'no-diversity', 'low-diversity', 'medium-diversity', 'high-diversity', 'auto-diversity'}. This gives request-level control and adjusts prediction results based on product category. * `filterSyntaxV2`: Boolean. False by default. If set to true, the `filter` field is interpreteted according to the new, attribute-based syntax.
  *   `userEvent` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2UserEvent.t`, *default:* `nil`) - Required. Context about the user, what they are looking at and what action they took to trigger the predict request. Note that this user event detail won't be ingested to userEvent logs. Thus, a separate userEvent write request is required for event logging. Don't set UserEvent.visitor_id or UserInfo.user_id to the same fixed ID for different users. If you are trying to receive non-personalized recommendations (not recommended; this can negatively impact model performance), instead set UserEvent.visitor_id to a random unique ID and leave UserInfo.user_id unset.
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - Use validate only mode for this prediction query. If set to true, a dummy model will be used that returns arbitrary products. Note that the validate only mode should only be used for testing the API, or if the model is not ready.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t() | nil,
          :labels => map() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :params => map() | nil,
          :userEvent => GoogleApi.Retail.V2.Model.GoogleCloudRetailV2UserEvent.t() | nil,
          :validateOnly => boolean() | nil
        }

  field(:filter)
  field(:labels, type: :map)
  field(:pageSize)
  field(:pageToken)
  field(:params, type: :map)
  field(:userEvent, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2UserEvent)
  field(:validateOnly)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PredictRequest do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PredictRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2PredictRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
