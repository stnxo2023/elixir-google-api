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

defmodule GoogleApi.OnDemandScanning.V1.Model.PackageIssue do
  @moduledoc """
  A detail for a distro and package this vulnerability occurrence was found in and its associated fix (if one is available).

  ## Attributes

  *   `affectedCpeUri` (*type:* `String.t`, *default:* `nil`) - Required. The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was found in.
  *   `affectedPackage` (*type:* `String.t`, *default:* `nil`) - Required. The package this vulnerability was found in.
  *   `affectedVersion` (*type:* `GoogleApi.OnDemandScanning.V1.Model.Version.t`, *default:* `nil`) - Required. The version of the package that is installed on the resource affected by this vulnerability.
  *   `effectiveSeverity` (*type:* `String.t`, *default:* `nil`) - Output only. The distro or language system assigned severity for this vulnerability when that is available and note provider assigned severity when it is not available.
  *   `fixAvailable` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether a fix is available for this package.
  *   `fixedCpeUri` (*type:* `String.t`, *default:* `nil`) - The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was fixed in. It is possible for this to be different from the affected_cpe_uri.
  *   `fixedPackage` (*type:* `String.t`, *default:* `nil`) - The package this vulnerability was fixed in. It is possible for this to be different from the affected_package.
  *   `fixedVersion` (*type:* `GoogleApi.OnDemandScanning.V1.Model.Version.t`, *default:* `nil`) - Required. The version of the package this vulnerability was fixed in. Setting this to VersionKind.MAXIMUM means no fix is yet available.
  *   `packageType` (*type:* `String.t`, *default:* `nil`) - The type of package (e.g. OS, MAVEN, GO).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :affectedCpeUri => String.t() | nil,
          :affectedPackage => String.t() | nil,
          :affectedVersion => GoogleApi.OnDemandScanning.V1.Model.Version.t() | nil,
          :effectiveSeverity => String.t() | nil,
          :fixAvailable => boolean() | nil,
          :fixedCpeUri => String.t() | nil,
          :fixedPackage => String.t() | nil,
          :fixedVersion => GoogleApi.OnDemandScanning.V1.Model.Version.t() | nil,
          :packageType => String.t() | nil
        }

  field(:affectedCpeUri)
  field(:affectedPackage)
  field(:affectedVersion, as: GoogleApi.OnDemandScanning.V1.Model.Version)
  field(:effectiveSeverity)
  field(:fixAvailable)
  field(:fixedCpeUri)
  field(:fixedPackage)
  field(:fixedVersion, as: GoogleApi.OnDemandScanning.V1.Model.Version)
  field(:packageType)
end

defimpl Poison.Decoder, for: GoogleApi.OnDemandScanning.V1.Model.PackageIssue do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.PackageIssue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OnDemandScanning.V1.Model.PackageIssue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
