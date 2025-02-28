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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext do
  @moduledoc """
  The error payload that is populated on LRO sync APIs, including the following: * `google.cloud.discoveryengine.v1main.DataConnectorService.SetUpDataConnector` * `google.cloud.discoveryengine.v1main.DataConnectorService.StartConnectorRun`

  ## Attributes

  *   `connectorRun` (*type:* `String.t`, *default:* `nil`) - The full resource name of the Connector Run. Format: `projects/*/locations/*/collections/*/dataConnector/connectorRuns/*`. The `connector_run_id` is system-generated.
  *   `dataConnector` (*type:* `String.t`, *default:* `nil`) - The full resource name of the DataConnector. Format: `projects/*/locations/*/collections/*/dataConnector`.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the connector run ended.
  *   `entity` (*type:* `String.t`, *default:* `nil`) - The entity to sync for the connector run.
  *   `operation` (*type:* `String.t`, *default:* `nil`) - The operation resource name of the LRO to sync the connector.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the connector run started.
  *   `syncType` (*type:* `String.t`, *default:* `nil`) - The type of sync run. Can be one of the following: * `FULL` * `INCREMENTAL`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectorRun => String.t() | nil,
          :dataConnector => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :entity => String.t() | nil,
          :operation => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :syncType => String.t() | nil
        }

  field(:connectorRun)
  field(:dataConnector)
  field(:endTime, as: DateTime)
  field(:entity)
  field(:operation)
  field(:startTime, as: DateTime)
  field(:syncType)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
