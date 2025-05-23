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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ReasoningEngineSpecDeploymentSpec do
  @moduledoc """
  The specification of a Reasoning Engine deployment.

  ## Attributes

  *   `env` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EnvVar.t)`, *default:* `nil`) - Optional. Environment variables to be set with the Reasoning Engine deployment. The environment variables can be updated through the UpdateReasoningEngine API.
  *   `secretEnv` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SecretEnvVar.t)`, *default:* `nil`) - Optional. Environment variables where the value is a secret in Cloud Secret Manager. To use this feature, add 'Secret Manager Secret Accessor' role (roles/secretmanager.secretAccessor) to AI Platform Reasoning Engine Service Agent.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :env => list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EnvVar.t()) | nil,
          :secretEnv =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SecretEnvVar.t()) | nil
        }

  field(:env, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EnvVar, type: :list)

  field(:secretEnv,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SecretEnvVar,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ReasoningEngineSpecDeploymentSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ReasoningEngineSpecDeploymentSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ReasoningEngineSpecDeploymentSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
