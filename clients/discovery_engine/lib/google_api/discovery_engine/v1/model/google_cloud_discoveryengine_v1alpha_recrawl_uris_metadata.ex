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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata do
  @moduledoc """
  Metadata related to the progress of the SiteSearchEngineService.RecrawlUris operation. This will be returned by the google.longrunning.Operation.metadata field.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Operation create time.
  *   `invalidUris` (*type:* `list(String.t)`, *default:* `nil`) - Unique URIs in the request that have invalid format. Sample limited to 1000.
  *   `invalidUrisCount` (*type:* `integer()`, *default:* `nil`) - Total number of unique URIs in the request that have invalid format.
  *   `noindexUris` (*type:* `list(String.t)`, *default:* `nil`) - URIs that have no index meta tag. Sample limited to 1000.
  *   `noindexUrisCount` (*type:* `integer()`, *default:* `nil`) - Total number of URIs that have no index meta tag.
  *   `pendingCount` (*type:* `integer()`, *default:* `nil`) - Total number of URIs that have yet to be crawled.
  *   `quotaExceededCount` (*type:* `integer()`, *default:* `nil`) - Total number of URIs that were rejected due to insufficient indexing resources.
  *   `successCount` (*type:* `integer()`, *default:* `nil`) - Total number of URIs that have been crawled so far.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Operation last update time. If the operation is done, this is also the finish time.
  *   `urisNotMatchingTargetSites` (*type:* `list(String.t)`, *default:* `nil`) - Unique URIs in the request that don't match any TargetSite in the DataStore, only match TargetSites that haven't been fully indexed, or match a TargetSite with type EXCLUDE. Sample limited to 1000.
  *   `urisNotMatchingTargetSitesCount` (*type:* `integer()`, *default:* `nil`) - Total number of URIs that don't match any TargetSites.
  *   `validUrisCount` (*type:* `integer()`, *default:* `nil`) - Total number of unique URIs in the request that are not in invalid_uris.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :invalidUris => list(String.t()) | nil,
          :invalidUrisCount => integer() | nil,
          :noindexUris => list(String.t()) | nil,
          :noindexUrisCount => integer() | nil,
          :pendingCount => integer() | nil,
          :quotaExceededCount => integer() | nil,
          :successCount => integer() | nil,
          :updateTime => DateTime.t() | nil,
          :urisNotMatchingTargetSites => list(String.t()) | nil,
          :urisNotMatchingTargetSitesCount => integer() | nil,
          :validUrisCount => integer() | nil
        }

  field(:createTime, as: DateTime)
  field(:invalidUris, type: :list)
  field(:invalidUrisCount)
  field(:noindexUris, type: :list)
  field(:noindexUrisCount)
  field(:pendingCount)
  field(:quotaExceededCount)
  field(:successCount)
  field(:updateTime, as: DateTime)
  field(:urisNotMatchingTargetSites, type: :list)
  field(:urisNotMatchingTargetSitesCount)
  field(:validUrisCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
