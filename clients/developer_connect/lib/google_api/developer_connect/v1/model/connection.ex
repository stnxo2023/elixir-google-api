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

defmodule GoogleApi.DeveloperConnect.V1.Model.Connection do
  @moduledoc """
  Message describing Connection object

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Optional. Allows clients to store small amounts of arbitrary data.
  *   `bitbucketCloudConfig` (*type:* `GoogleApi.DeveloperConnect.V1.Model.BitbucketCloudConfig.t`, *default:* `nil`) - Configuration for connections to an instance of Bitbucket Clouds.
  *   `bitbucketDataCenterConfig` (*type:* `GoogleApi.DeveloperConnect.V1.Model.BitbucketDataCenterConfig.t`, *default:* `nil`) - Configuration for connections to an instance of Bitbucket Data Center.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. [Output only] Create timestamp
  *   `cryptoKeyConfig` (*type:* `GoogleApi.DeveloperConnect.V1.Model.CryptoKeyConfig.t`, *default:* `nil`) - Optional. The crypto key configuration. This field is used by the Customer-Managed Encryption Keys (CMEK) feature.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. [Output only] Delete timestamp
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Optional. If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `gitProxyConfig` (*type:* `GoogleApi.DeveloperConnect.V1.Model.GitProxyConfig.t`, *default:* `nil`) - Optional. Configuration for the git proxy feature. Enabling the git proxy allows clients to perform git operations on the repositories linked in the connection.
  *   `githubConfig` (*type:* `GoogleApi.DeveloperConnect.V1.Model.GitHubConfig.t`, *default:* `nil`) - Configuration for connections to github.com.
  *   `githubEnterpriseConfig` (*type:* `GoogleApi.DeveloperConnect.V1.Model.GitHubEnterpriseConfig.t`, *default:* `nil`) - Configuration for connections to an instance of GitHub Enterprise.
  *   `gitlabConfig` (*type:* `GoogleApi.DeveloperConnect.V1.Model.GitLabConfig.t`, *default:* `nil`) - Configuration for connections to gitlab.com.
  *   `gitlabEnterpriseConfig` (*type:* `GoogleApi.DeveloperConnect.V1.Model.GitLabEnterpriseConfig.t`, *default:* `nil`) - Configuration for connections to an instance of GitLab Enterprise.
  *   `installationState` (*type:* `GoogleApi.DeveloperConnect.V1.Model.InstallationState.t`, *default:* `nil`) - Output only. Installation state of the Connection.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Labels as key value pairs
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. Set to true when the connection is being set up or updated in the background.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. A system-assigned unique identifier for the Connection.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. [Output only] Update timestamp
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :bitbucketCloudConfig =>
            GoogleApi.DeveloperConnect.V1.Model.BitbucketCloudConfig.t() | nil,
          :bitbucketDataCenterConfig =>
            GoogleApi.DeveloperConnect.V1.Model.BitbucketDataCenterConfig.t() | nil,
          :createTime => DateTime.t() | nil,
          :cryptoKeyConfig => GoogleApi.DeveloperConnect.V1.Model.CryptoKeyConfig.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :disabled => boolean() | nil,
          :etag => String.t() | nil,
          :gitProxyConfig => GoogleApi.DeveloperConnect.V1.Model.GitProxyConfig.t() | nil,
          :githubConfig => GoogleApi.DeveloperConnect.V1.Model.GitHubConfig.t() | nil,
          :githubEnterpriseConfig =>
            GoogleApi.DeveloperConnect.V1.Model.GitHubEnterpriseConfig.t() | nil,
          :gitlabConfig => GoogleApi.DeveloperConnect.V1.Model.GitLabConfig.t() | nil,
          :gitlabEnterpriseConfig =>
            GoogleApi.DeveloperConnect.V1.Model.GitLabEnterpriseConfig.t() | nil,
          :installationState => GoogleApi.DeveloperConnect.V1.Model.InstallationState.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :reconciling => boolean() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:bitbucketCloudConfig, as: GoogleApi.DeveloperConnect.V1.Model.BitbucketCloudConfig)

  field(:bitbucketDataCenterConfig,
    as: GoogleApi.DeveloperConnect.V1.Model.BitbucketDataCenterConfig
  )

  field(:createTime, as: DateTime)
  field(:cryptoKeyConfig, as: GoogleApi.DeveloperConnect.V1.Model.CryptoKeyConfig)
  field(:deleteTime, as: DateTime)
  field(:disabled)
  field(:etag)
  field(:gitProxyConfig, as: GoogleApi.DeveloperConnect.V1.Model.GitProxyConfig)
  field(:githubConfig, as: GoogleApi.DeveloperConnect.V1.Model.GitHubConfig)
  field(:githubEnterpriseConfig, as: GoogleApi.DeveloperConnect.V1.Model.GitHubEnterpriseConfig)
  field(:gitlabConfig, as: GoogleApi.DeveloperConnect.V1.Model.GitLabConfig)
  field(:gitlabEnterpriseConfig, as: GoogleApi.DeveloperConnect.V1.Model.GitLabEnterpriseConfig)
  field(:installationState, as: GoogleApi.DeveloperConnect.V1.Model.InstallationState)
  field(:labels, type: :map)
  field(:name)
  field(:reconciling)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DeveloperConnect.V1.Model.Connection do
  def decode(value, options) do
    GoogleApi.DeveloperConnect.V1.Model.Connection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeveloperConnect.V1.Model.Connection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
