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

defmodule GoogleApi.Composer.V1.Model.PrivateClusterConfig do
  @moduledoc """
  Configuration options for the private GKE cluster in a Cloud Composer environment.

  ## Attributes

  *   `enablePrivateEndpoint` (*type:* `boolean()`, *default:* `nil`) - Optional. If `true`, access to the public endpoint of the GKE cluster is denied.
  *   `masterIpv4CidrBlock` (*type:* `String.t`, *default:* `nil`) - Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, the default value of '172.16.0.0/23' is used.
  *   `masterIpv4ReservedRange` (*type:* `String.t`, *default:* `nil`) - Output only. The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the GKE cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster's network.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enablePrivateEndpoint => boolean(),
          :masterIpv4CidrBlock => String.t(),
          :masterIpv4ReservedRange => String.t()
        }

  field(:enablePrivateEndpoint)
  field(:masterIpv4CidrBlock)
  field(:masterIpv4ReservedRange)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1.Model.PrivateClusterConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1.Model.PrivateClusterConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1.Model.PrivateClusterConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
