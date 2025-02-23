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

defmodule GoogleApi.VMwareEngine.V1.Model.Announcement do
  @moduledoc """
  Announcement for the resources of Vmware Engine.

  ## Attributes

  *   `activityType` (*type:* `String.t`, *default:* `nil`) - Optional. Activity type of the announcement There can be only one active announcement for a given activity type and target resource.
  *   `cluster` (*type:* `String.t`, *default:* `nil`) - A Cluster resource name.
  *   `code` (*type:* `String.t`, *default:* `nil`) - Required. Code of the announcement. Indicates the presence of a VMware Engine related announcement and corresponds to a related message in the `description` field.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of this resource. It also serves as start time of notification.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. Description of the announcement.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Output only. Additional structured details about this announcement.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the announcement. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-west1-a/announcements/my-announcement-id`
  *   `privateCloud` (*type:* `String.t`, *default:* `nil`) - A Private Cloud resource name.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the resource. New values may be added to this enum when appropriate.
  *   `targetResourceType` (*type:* `String.t`, *default:* `nil`) - Output only. Target Resource Type defines the type of the target for the announcement
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last update time of this resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activityType => String.t() | nil,
          :cluster => String.t() | nil,
          :code => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :metadata => map() | nil,
          :name => String.t() | nil,
          :privateCloud => String.t() | nil,
          :state => String.t() | nil,
          :targetResourceType => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:activityType)
  field(:cluster)
  field(:code)
  field(:createTime, as: DateTime)
  field(:description)
  field(:metadata, type: :map)
  field(:name)
  field(:privateCloud)
  field(:state)
  field(:targetResourceType)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.VMwareEngine.V1.Model.Announcement do
  def decode(value, options) do
    GoogleApi.VMwareEngine.V1.Model.Announcement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMwareEngine.V1.Model.Announcement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
