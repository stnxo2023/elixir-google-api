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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocumentIndexStatus do
  @moduledoc """
  Index status of the document.

  ## Attributes

  *   `errorSamples` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t)`, *default:* `nil`) - A sample of errors encountered while indexing the document. If this field is populated, the document is not indexed due to errors.
  *   `indexTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the document was indexed. If this field is populated, it means the document has been indexed.
  *   `pendingMessage` (*type:* `String.t`, *default:* `nil`) - Immutable. The message indicates the document index is in progress. If this field is populated, the document index is pending.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorSamples => list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t()) | nil,
          :indexTime => DateTime.t() | nil,
          :pendingMessage => String.t() | nil
        }

  field(:errorSamples, as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus, type: :list)
  field(:indexTime, as: DateTime)
  field(:pendingMessage)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocumentIndexStatus do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocumentIndexStatus.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocumentIndexStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
