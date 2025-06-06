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

defmodule GoogleApi.NetworkConnectivity.V1.Model.AcceptSpokeUpdateRequest do
  @moduledoc """
  The request for HubService.AcceptSpokeUpdate.

  ## Attributes

  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server knows to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  *   `spokeEtag` (*type:* `String.t`, *default:* `nil`) - Required. The etag of the spoke to accept update.
  *   `spokeUri` (*type:* `String.t`, *default:* `nil`) - Required. The URI of the spoke to accept update.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requestId => String.t() | nil,
          :spokeEtag => String.t() | nil,
          :spokeUri => String.t() | nil
        }

  field(:requestId)
  field(:spokeEtag)
  field(:spokeUri)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.AcceptSpokeUpdateRequest do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.AcceptSpokeUpdateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.AcceptSpokeUpdateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
