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

defmodule GoogleApi.AnalyticsHub.V1.Model.SubscribeListingRequest do
  @moduledoc """
  Message for subscribing to a listing.

  ## Attributes

  *   `destinationDataset` (*type:* `GoogleApi.AnalyticsHub.V1.Model.DestinationDataset.t`, *default:* `nil`) - Input only. BigQuery destination dataset to create for the subscriber.
  *   `destinationPubsubSubscription` (*type:* `GoogleApi.AnalyticsHub.V1.Model.DestinationPubSubSubscription.t`, *default:* `nil`) - Required. Input only. Destination Pub/Sub subscription to create for the subscriber.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinationDataset => GoogleApi.AnalyticsHub.V1.Model.DestinationDataset.t() | nil,
          :destinationPubsubSubscription =>
            GoogleApi.AnalyticsHub.V1.Model.DestinationPubSubSubscription.t() | nil
        }

  field(:destinationDataset, as: GoogleApi.AnalyticsHub.V1.Model.DestinationDataset)

  field(:destinationPubsubSubscription,
    as: GoogleApi.AnalyticsHub.V1.Model.DestinationPubSubSubscription
  )
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsHub.V1.Model.SubscribeListingRequest do
  def decode(value, options) do
    GoogleApi.AnalyticsHub.V1.Model.SubscribeListingRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsHub.V1.Model.SubscribeListingRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
