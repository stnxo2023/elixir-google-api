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

defmodule GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionPolicy do
  @moduledoc """
  The ServiceConnectionPolicy resource. Next id: 12

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the ServiceConnectionMap was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of this resource.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `infrastructure` (*type:* `String.t`, *default:* `nil`) - Output only. The type of underlying resources used to create the connection.
  *   `labels` (*type:* `map()`, *default:* `nil`) - User-defined labels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  *   `network` (*type:* `String.t`, *default:* `nil`) - The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  *   `pscConfig` (*type:* `GoogleApi.NetworkConnectivity.V1.Model.PscConfig.t`, *default:* `nil`) - Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  *   `pscConnections` (*type:* `list(GoogleApi.NetworkConnectivity.V1.Model.PscConnection.t)`, *default:* `nil`) - Output only. [Output only] Information about each Private Service Connect connection.
  *   `serviceClass` (*type:* `String.t`, *default:* `nil`) - The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass. It is provided by the Service Producer. Google services have a prefix of gcp or google-cloud. For example, gcp-memorystore-redis or google-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the ServiceConnectionMap was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :infrastructure => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :pscConfig => GoogleApi.NetworkConnectivity.V1.Model.PscConfig.t() | nil,
          :pscConnections => list(GoogleApi.NetworkConnectivity.V1.Model.PscConnection.t()) | nil,
          :serviceClass => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:infrastructure)
  field(:labels, type: :map)
  field(:name)
  field(:network)
  field(:pscConfig, as: GoogleApi.NetworkConnectivity.V1.Model.PscConfig)
  field(:pscConnections, as: GoogleApi.NetworkConnectivity.V1.Model.PscConnection, type: :list)
  field(:serviceClass)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionPolicy do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.ServiceConnectionPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
