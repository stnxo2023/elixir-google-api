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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries do
  @moduledoc """
  The historical dedicated crawl rate timeseries data, used for monitoring. Dedicated crawl is used by Vertex AI to crawl the user's website when dedicate crawl is set.

  ## Attributes

  *   `autoRefreshCrawlErrorRate` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries.t`, *default:* `nil`) - Vertex AI's error rate time series of auto-refresh dedicated crawl.
  *   `autoRefreshCrawlRate` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries.t`, *default:* `nil`) - Vertex AI's dedicated crawl rate time series of auto-refresh, which is the crawl rate of Google-CloudVertexBot when dedicate crawl is set, and the crawl rate is for best effort use cases like refreshing urls periodically.
  *   `userTriggeredCrawlErrorRate` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries.t`, *default:* `nil`) - Vertex AI's error rate time series of user triggered dedicated crawl.
  *   `userTriggeredCrawlRate` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries.t`, *default:* `nil`) - Vertex AI's dedicated crawl rate time series of user triggered crawl, which is the crawl rate of Google-CloudVertexBot when dedicate crawl is set, and user triggered crawl rate is for deterministic use cases like crawling urls or sitemaps specified by users.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoRefreshCrawlErrorRate =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries.t()
            | nil,
          :autoRefreshCrawlRate =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries.t()
            | nil,
          :userTriggeredCrawlErrorRate =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries.t()
            | nil,
          :userTriggeredCrawlRate =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries.t()
            | nil
        }

  field(:autoRefreshCrawlErrorRate,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries
  )

  field(:autoRefreshCrawlRate,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries
  )

  field(:userTriggeredCrawlErrorRate,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries
  )

  field(:userTriggeredCrawlRate,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
