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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaActionConfig do
  @moduledoc """
  Informations to support actions on the connector.

  ## Attributes

  *   `actionParams` (*type:* `map()`, *default:* `nil`) - Required. Params needed to support actions in the format of (Key, Value) pairs. Required parameters for sources that support OAUTH, i.e. `gmail`, `google_calendar`, `jira`, `workday`, `salesforce`, `confluence`: * Key: `client_id` * Value: type STRING. The client id for the service provider to identify your application. * Key: `client_secret` * Value:type STRING. The client secret generated by the application's authorization server.
  *   `isActionConfigured` (*type:* `boolean()`, *default:* `nil`) - Output only. The connector contains the necessary parameters and is configured to support actions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionParams => map() | nil,
          :isActionConfigured => boolean() | nil
        }

  field(:actionParams, type: :map)
  field(:isActionConfigured)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaActionConfig do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaActionConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaActionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
