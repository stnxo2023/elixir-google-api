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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CorroborateContentRequest do
  @moduledoc """
  Request message for CorroborateContent.

  ## Attributes

  *   `content` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t`, *default:* `nil`) - Optional. Input content to corroborate, only text format is supported for now.
  *   `facts` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Fact.t)`, *default:* `nil`) - Optional. Facts used to generate the text can also be used to corroborate the text.
  *   `parameters` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CorroborateContentRequestParameters.t`, *default:* `nil`) - Optional. Parameters that can be set to override default settings per request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t() | nil,
          :facts => list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Fact.t()) | nil,
          :parameters =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CorroborateContentRequestParameters.t()
            | nil
        }

  field(:content, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content)
  field(:facts, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Fact, type: :list)

  field(:parameters,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CorroborateContentRequestParameters
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CorroborateContentRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CorroborateContentRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CorroborateContentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
