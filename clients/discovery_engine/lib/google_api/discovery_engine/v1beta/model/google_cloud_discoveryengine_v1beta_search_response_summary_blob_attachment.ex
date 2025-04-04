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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryBlobAttachment do
  @moduledoc """
  Stores binarydata attached to text answer, e.g. image, video, audio, etc.

  ## Attributes

  *   `attributionType` (*type:* `String.t`, *default:* `nil`) - Output only. The attribution type of the blob.
  *   `data` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryBlobAttachmentBlob.t`, *default:* `nil`) - Output only. The blob data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributionType => String.t() | nil,
          :data =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryBlobAttachmentBlob.t()
            | nil
        }

  field(:attributionType)

  field(:data,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryBlobAttachmentBlob
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryBlobAttachment do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryBlobAttachment.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSummaryBlobAttachment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
