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

defmodule GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Results do
  @moduledoc """
  Artifacts created by the build pipeline.

  ## Attributes

  *   `artifactManifest` (*type:* `String.t`, *default:* `nil`) - Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
  *   `artifactTiming` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan.t`, *default:* `nil`) - Time to push all non-container artifacts to Cloud Storage.
  *   `buildStepImages` (*type:* `list(String.t)`, *default:* `nil`) - List of build step digests, in the order corresponding to build step indices.
  *   `buildStepOutputs` (*type:* `list(String.t)`, *default:* `nil`) - List of build step outputs, produced by builder images, in the order corresponding to build step indices. [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders) can produce this output by writing to `$BUILDER_OUTPUT/output`. Only the first 4KB of data is stored.
  *   `images` (*type:* `list(GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage.t)`, *default:* `nil`) - Container images that were built as a part of the build.
  *   `mavenArtifacts` (*type:* `list(GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact.t)`, *default:* `nil`) - Maven artifacts uploaded to Artifact Registry at the end of the build.
  *   `numArtifacts` (*type:* `String.t`, *default:* `nil`) - Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
  *   `pythonPackages` (*type:* `list(GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage.t)`, *default:* `nil`) - Python artifacts uploaded to Artifact Registry at the end of the build.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artifactManifest => String.t() | nil,
          :artifactTiming =>
            GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan.t()
            | nil,
          :buildStepImages => list(String.t()) | nil,
          :buildStepOutputs => list(String.t()) | nil,
          :images =>
            list(
              GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage.t()
            )
            | nil,
          :mavenArtifacts =>
            list(
              GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact.t()
            )
            | nil,
          :numArtifacts => String.t() | nil,
          :pythonPackages =>
            list(
              GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage.t()
            )
            | nil
        }

  field(:artifactManifest)

  field(:artifactTiming,
    as: GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
  )

  field(:buildStepImages, type: :list)
  field(:buildStepOutputs, type: :list)

  field(:images,
    as:
      GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage,
    type: :list
  )

  field(:mavenArtifacts,
    as:
      GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact,
    type: :list
  )

  field(:numArtifacts)

  field(:pythonPackages,
    as:
      GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Results do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Results.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContainerAnalysis.V1.Model.ContaineranalysisGoogleDevtoolsCloudbuildV1Results do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
