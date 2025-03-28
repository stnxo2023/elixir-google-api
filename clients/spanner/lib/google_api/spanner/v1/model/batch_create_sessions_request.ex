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

defmodule GoogleApi.Spanner.V1.Model.BatchCreateSessionsRequest do
  @moduledoc """
  The request for BatchCreateSessions.

  ## Attributes

  *   `sessionCount` (*type:* `integer()`, *default:* `nil`) - Required. The number of sessions to be created in this batch call. The API can return fewer than the requested number of sessions. If a specific number of sessions are desired, the client can make additional calls to `BatchCreateSessions` (adjusting session_count as necessary).
  *   `sessionTemplate` (*type:* `GoogleApi.Spanner.V1.Model.Session.t`, *default:* `nil`) - Parameters to apply to each created session.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sessionCount => integer() | nil,
          :sessionTemplate => GoogleApi.Spanner.V1.Model.Session.t() | nil
        }

  field(:sessionCount)
  field(:sessionTemplate, as: GoogleApi.Spanner.V1.Model.Session)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.BatchCreateSessionsRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.BatchCreateSessionsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.BatchCreateSessionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
