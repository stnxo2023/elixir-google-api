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

defmodule GoogleApi.Redis.V1.Model.UpdateInfo do
  @moduledoc """
  Represents information about an updating cluster.

  ## Attributes

  *   `targetNodeType` (*type:* `String.t`, *default:* `nil`) - Target node type for redis cluster.
  *   `targetReplicaCount` (*type:* `integer()`, *default:* `nil`) - Target number of replica nodes per shard.
  *   `targetShardCount` (*type:* `integer()`, *default:* `nil`) - Target number of shards for redis cluster
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :targetNodeType => String.t() | nil,
          :targetReplicaCount => integer() | nil,
          :targetShardCount => integer() | nil
        }

  field(:targetNodeType)
  field(:targetReplicaCount)
  field(:targetShardCount)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1.Model.UpdateInfo do
  def decode(value, options) do
    GoogleApi.Redis.V1.Model.UpdateInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1.Model.UpdateInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
