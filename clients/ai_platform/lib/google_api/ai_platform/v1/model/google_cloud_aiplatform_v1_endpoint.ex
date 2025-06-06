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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Endpoint do
  @moduledoc """
  Models are deployed into it, and afterwards Endpoint is called to obtain predictions and explanations.

  ## Attributes

  *   `clientConnectionConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ClientConnectionConfig.t`, *default:* `nil`) - Configurations that are applied to the endpoint for online prediction.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Endpoint was created.
  *   `dedicatedEndpointDns` (*type:* `String.t`, *default:* `nil`) - Output only. DNS of the dedicated endpoint. Will only be populated if dedicated_endpoint_enabled is true. Depending on the features enabled, uid might be a random number or a string. For example, if fast_tryout is enabled, uid will be fasttryout. Format: `https://{endpoint_id}.{region}-{uid}.prediction.vertexai.goog`.
  *   `dedicatedEndpointEnabled` (*type:* `boolean()`, *default:* `nil`) - If true, the endpoint will be exposed through a dedicated DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS will be isolated from other users' traffic and will have better performance and reliability. Note: Once you enabled dedicated endpoint, you won't be able to send request to the shared DNS {region}-aiplatform.googleapis.com. The limitation will be removed soon.
  *   `deployedModels` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModel.t)`, *default:* `nil`) - Output only. The models deployed in this Endpoint. To add or remove DeployedModels use EndpointService.DeployModel and EndpointService.UndeployModel respectively.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the Endpoint.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  *   `enablePrivateServiceConnect` (*type:* `boolean()`, *default:* `nil`) - Deprecated: If true, expose the Endpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  *   `encryptionSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t`, *default:* `nil`) - Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  *   `genAiAdvancedFeaturesConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfig.t`, *default:* `nil`) - Optional. Configuration for GenAiAdvancedFeatures. If the endpoint is serving GenAI models, advanced features like native RAG integration can be configured. Currently, only Model Garden models are supported.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  *   `modelDeploymentMonitoringJob` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the Model Monitoring job associated with this Endpoint if monitoring is enabled by JobService.CreateModelDeploymentMonitoringJob. Format: `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the Endpoint.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Optional. The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  *   `predictRequestResponseLoggingConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig.t`, *default:* `nil`) - Configures the request-response logging for online prediction.
  *   `privateServiceConnectConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PrivateServiceConnectConfig.t`, *default:* `nil`) - Optional. Configuration for private service connect. network and private_service_connect_config are mutually exclusive.
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `trafficSplit` (*type:* `map()`, *default:* `nil`) - A map from a DeployedModel's ID to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel. If a DeployedModel's ID is not listed in this map, then it receives no traffic. The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Endpoint was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientConnectionConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ClientConnectionConfig.t() | nil,
          :createTime => DateTime.t() | nil,
          :dedicatedEndpointDns => String.t() | nil,
          :dedicatedEndpointEnabled => boolean() | nil,
          :deployedModels =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModel.t()) | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :enablePrivateServiceConnect => boolean() | nil,
          :encryptionSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec.t() | nil,
          :etag => String.t() | nil,
          :genAiAdvancedFeaturesConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfig.t()
            | nil,
          :labels => map() | nil,
          :modelDeploymentMonitoringJob => String.t() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :predictRequestResponseLoggingConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig.t()
            | nil,
          :privateServiceConnectConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PrivateServiceConnectConfig.t()
            | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :trafficSplit => map() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:clientConnectionConfig,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ClientConnectionConfig
  )

  field(:createTime, as: DateTime)
  field(:dedicatedEndpointDns)
  field(:dedicatedEndpointEnabled)

  field(:deployedModels,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1DeployedModel,
    type: :list
  )

  field(:description)
  field(:displayName)
  field(:enablePrivateServiceConnect)
  field(:encryptionSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1EncryptionSpec)
  field(:etag)

  field(:genAiAdvancedFeaturesConfig,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfig
  )

  field(:labels, type: :map)
  field(:modelDeploymentMonitoringJob)
  field(:name)
  field(:network)

  field(:predictRequestResponseLoggingConfig,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig
  )

  field(:privateServiceConnectConfig,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PrivateServiceConnectConfig
  )

  field(:satisfiesPzi)
  field(:satisfiesPzs)
  field(:trafficSplit, type: :map)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Endpoint do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Endpoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Endpoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
