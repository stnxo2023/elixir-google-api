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

defmodule GoogleApi.AnalyticsHub.V1.Model.AnalyticsHubSubscriptionInfo do
  @moduledoc """
  Information about an associated [Analytics Hub subscription](https://cloud.google.com/bigquery/docs/analytics-hub-manage-subscriptions).

  ## Attributes

  *   `listing` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the associated Analytics Hub listing resource. Pattern: "projects/{project}/locations/{location}/dataExchanges/{data_exchange}/listings/{listing}"
  *   `subscription` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the associated Analytics Hub subscription resource. Pattern: "projects/{project}/locations/{location}/subscriptions/{subscription}"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :listing => String.t() | nil,
          :subscription => String.t() | nil
        }

  field(:listing)
  field(:subscription)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsHub.V1.Model.AnalyticsHubSubscriptionInfo do
  def decode(value, options) do
    GoogleApi.AnalyticsHub.V1.Model.AnalyticsHubSubscriptionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsHub.V1.Model.AnalyticsHubSubscriptionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
