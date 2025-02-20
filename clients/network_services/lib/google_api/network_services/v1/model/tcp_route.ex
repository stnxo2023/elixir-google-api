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

defmodule GoogleApi.NetworkServices.V1.Model.TcpRoute do
  @moduledoc """
  TcpRoute is the resource defining how TCP traffic should be routed by a Mesh/Gateway resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A free-text description of the resource. Max length 1024 characters.
  *   `gateways` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Set of label tags associated with the TcpRoute resource.
  *   `meshes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name>`.
  *   `rules` (*type:* `list(GoogleApi.NetworkServices.V1.Model.TcpRouteRouteRule.t)`, *default:* `nil`) - Required. Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Output only. Server-defined URL of this resource
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the resource was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :gateways => list(String.t()) | nil,
          :labels => map() | nil,
          :meshes => list(String.t()) | nil,
          :name => String.t() | nil,
          :rules => list(GoogleApi.NetworkServices.V1.Model.TcpRouteRouteRule.t()) | nil,
          :selfLink => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:gateways, type: :list)
  field(:labels, type: :map)
  field(:meshes, type: :list)
  field(:name)
  field(:rules, as: GoogleApi.NetworkServices.V1.Model.TcpRouteRouteRule, type: :list)
  field(:selfLink)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.TcpRoute do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.TcpRoute.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.TcpRoute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
