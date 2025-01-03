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

defmodule GoogleApi.AnalyticsHub.V1beta1.Model.CommercialInfo do
  @moduledoc """
  Commercial info metadata for this subscription.

  ## Attributes

  *   `cloudMarketplace` (*type:* `GoogleApi.AnalyticsHub.V1beta1.Model.GoogleCloudMarketplaceInfo.t`, *default:* `nil`) - Output only. This is set when the subscription is commercialised via Cloud Marketplace.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudMarketplace =>
            GoogleApi.AnalyticsHub.V1beta1.Model.GoogleCloudMarketplaceInfo.t() | nil
        }

  field(:cloudMarketplace, as: GoogleApi.AnalyticsHub.V1beta1.Model.GoogleCloudMarketplaceInfo)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsHub.V1beta1.Model.CommercialInfo do
  def decode(value, options) do
    GoogleApi.AnalyticsHub.V1beta1.Model.CommercialInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsHub.V1beta1.Model.CommercialInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
