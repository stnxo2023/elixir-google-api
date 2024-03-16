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

defmodule GoogleApi.ContentWarehouse.V1.Model.OceanDocTag do
  @moduledoc """
  ============> Next available number: 102 (ksridhara) <================

  ## Attributes

  *   `DEPRECATEDIssueDate` (*type:* `String.t`, *default:* `nil`) - this is in ONIX format.
  *   `coverPage` (*type:* `String.t`, *default:* `nil`) - cover page (PrintedAsSeen string), to generate results snippet thumbnail image urls
  *   `editors` (*type:* `String.t`, *default:* `nil`) - Editors string for front end.
  *   `encryptedExpressionId` (*type:* `String.t`, *default:* `nil`) - 
  *   `segmentTime` (*type:* `integer()`, *default:* `nil`) - 
  *   `viewability` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanVolumeViewability.t`, *default:* `nil`) - Volume viewability, which defines how/if the volume should be displayed in various locales.
  *   `pageNumber` (*type:* `integer()`, *default:* `nil`) - page_number of the page (OceanTypes::PageNumberType) In CAv2: page_number of the page ocean::PageNumber::T
  *   `sourceType` (*type:* `integer()`, *default:* `nil`) - The source type of the document. See BoundVolumeSource::SourceType in ocean/data/volume_types.protodevel for possible values.
  *   `blockSnippet` (*type:* `boolean()`, *default:* `nil`) - 
  *   `newspaperspecific` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagNewspaperSpecific.t`, *default:* `nil`) - 
  *   `encryptedVolumeId` (*type:* `String.t`, *default:* `nil`) - 
  *   `volumeVersion` (*type:* `String.t`, *default:* `nil`) - The version of the volume (serialized form). ONLY populated for Volume level docs
  *   `isLandingPage` (*type:* `boolean()`, *default:* `nil`) - whether this a landing page chosen at indexing time.
  *   `availableDownloads` (*type:* `integer()`, *default:* `nil`) - A bitmap containing all available download formats (values defined in AvaialableDownloadFormats enum) NOTE: Only populated for Volume level docs
  *   `contributor` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.OceanDocTagContributor.t)`, *default:* `nil`) - 
  *   `objectionableContentBitmap` (*type:* `integer()`, *default:* `nil`) - A bitmap indicating whether content may be objectionable NOTE: Only populated for volume level docs
  *   `pagerank` (*type:* `float()`, *default:* `nil`) - the page rank value of the book page
  *   `searchInBookUrl` (*type:* `String.t`, *default:* `nil`) - the URL for the "search in book"
  *   `contentType` (*type:* `integer()`, *default:* `nil`) - The content type of the document. See BoundVolumeSource::ContentType in ocean/data/volume_types.protodevel for possible values.
  *   `workcluster` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagWorkCluster.t`, *default:* `nil`) - 
  *   `price` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanGEPrice.t`, *default:* `nil`) - Price information for a volume (per locale). Note existence of a price for a locale implies that the book is sellable for that locale.
  *   `DEPRECATEDApplicationDate` (*type:* `String.t`, *default:* `nil`) - this is in ONIX format.
  *   `goodTextDetail` (*type:* `integer()`, *default:* `nil`) - Text quality as defined in CA_VolumeScoreResult::OACapabilities::TextQualityAssessment Note - This is only populated if good_text() and is_ge_quality() are true
  *   `patentspecific` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagPatentSpecific.t`, *default:* `nil`) - 
  *   `bookspecific` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagBookSpecific.t`, *default:* `nil`) - 
  *   `structuredPageNumber` (*type:* `String.t`, *default:* `nil`) - In CAv2 only: structured page number (printed number as we understand it) (result of ocean::StructuredPageNumberProto::AppendToString)
  *   `catalogspecific` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagCatalogSpecific.t`, *default:* `nil`) - 
  *   `authors` (*type:* `String.t`, *default:* `nil`) - TODO(leonid) Deprecate these Authors string for front end.
  *   `refPageUrl` (*type:* `String.t`, *default:* `nil`) - the URL of the reference page (About this book)
  *   `numPages` (*type:* `integer()`, *default:* `nil`) - Number of pages in this volume (usually as specified in metadata)
  *   `metadataCoverExists` (*type:* `boolean()`, *default:* `nil`) - metadata_cover_exists will be set if there's a metadata-provided cover thumbnail. the thumbnail will be used for scanless books or when a scanned book is in metadata-only view.
  *   `subjectBitmap` (*type:* `String.t`, *default:* `nil`) - Bitmap indicating top-level subjects associated with this document. See ocean/metadata/subjects/util.h for more detail.
  *   `subTitle` (*type:* `String.t`, *default:* `nil`) - Sub title string for front end
  *   `thumbnailUrl` (*type:* `String.t`, *default:* `nil`) - the URL of the cover page.
  *   `coverPageSize` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanImageSize.t`, *default:* `nil`) - The size (in pixels) of the full-resolution clean images used for the cover page. The width and height will be zero if no image for that page.
  *   `isGeQuality` (*type:* `boolean()`, *default:* `nil`) - Set to true if volume has ge quality
  *   `DEPRECATEDPatentNumber` (*type:* `String.t`, *default:* `nil`) - patent-specific fields. ALL DEPRECATED, moved into PatentSpecific group, above.
  *   `DEPRECATEDPublisherPercentVisible` (*type:* `integer()`, *default:* `nil`) - Percent rights granted by publisher. This should only be set, and definitely should only be considered, if source_type == BoundVolumeSource::PUBLISHER. '0' may mean we have no info on publisher rights so we have to just assume 0%. Deprecated as this is taken into account by viewability
  *   `metadataCoverSize` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanImageSize.t`, *default:* `nil`) - The size (in pixels) of the metadata cover image.
  *   `geoRestrict` (*type:* `list(String.t)`, *default:* `nil`) - DEPRECATED! Being replaced in favor of viewability, below. geo restrict info (from OceanRights::geo_restrict) In CAv2: geo restrict info (from ocean::VolumeImprintRights::geo_restrict)
  *   `printedPageNumber` (*type:* `String.t`, *default:* `nil`) - printed page number (OceanPrintedPageNumber; from OceanPageInfoMap::Page::printed_page_number)
  *   `magazinespecific` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagMagazineSpecific.t`, *default:* `nil`) - 
  *   `volumeType` (*type:* `integer()`, *default:* `nil`) - 
  *   `urlKey` (*type:* `String.t`, *default:* `nil`) - Bibkey to be used as part of the URL (to make them persistent in some sense). This is obtained by doing a GetURLKey() on the bibdata which returns the main bibkey associated with the volume based on priority. This is parseable into an OceanVolumeBibKey (ocean/metadata/bibkeys.h) Note: This should ideally be a required field longer term but for now keeping it optional for compatibility. In case of this being absent, we don't include the key in the URL (just use volumeId as before). Note: For content type books, this key is supplemented by other bibkeys for this volumes(the field is aux_bibkeys)
  *   `DEPRECATEDPatentAssignee` (*type:* `String.t`, *default:* `nil`) - 
  *   `pageid` (*type:* `integer()`, *default:* `nil`) - pageid of the page (OceanTypes::PageIdType)
  *   `grantableLocale` (*type:* `list(String.t)`, *default:* `nil`) - List of locales for which this book can be bought from a publisher, and read as a Google eBook. Each locale is a lowercase, two-letter country-code (eg "ca"), and is copied from PublisherGrantability.Locale.locale, defined in ocean/data/docinfo/volume_viewability.proto.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title string for front end.
  *   `usingActualCover` (*type:* `boolean()`, *default:* `nil`) - using_actual_cover will be set if we are using the actual cover of the book (instead of the table of content, etc.). This is particularly useful to identify books where we inserted a generated cover via Coverups.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :DEPRECATEDIssueDate => String.t() | nil,
          :coverPage => String.t() | nil,
          :editors => String.t() | nil,
          :encryptedExpressionId => String.t() | nil,
          :segmentTime => integer() | nil,
          :viewability => GoogleApi.ContentWarehouse.V1.Model.OceanVolumeViewability.t() | nil,
          :pageNumber => integer() | nil,
          :sourceType => integer() | nil,
          :blockSnippet => boolean() | nil,
          :newspaperspecific =>
            GoogleApi.ContentWarehouse.V1.Model.OceanDocTagNewspaperSpecific.t() | nil,
          :encryptedVolumeId => String.t() | nil,
          :volumeVersion => String.t() | nil,
          :isLandingPage => boolean() | nil,
          :availableDownloads => integer() | nil,
          :contributor =>
            list(GoogleApi.ContentWarehouse.V1.Model.OceanDocTagContributor.t()) | nil,
          :objectionableContentBitmap => integer() | nil,
          :pagerank => float() | nil,
          :searchInBookUrl => String.t() | nil,
          :contentType => integer() | nil,
          :workcluster => GoogleApi.ContentWarehouse.V1.Model.OceanDocTagWorkCluster.t() | nil,
          :price => GoogleApi.ContentWarehouse.V1.Model.OceanGEPrice.t() | nil,
          :DEPRECATEDApplicationDate => String.t() | nil,
          :goodTextDetail => integer() | nil,
          :patentspecific =>
            GoogleApi.ContentWarehouse.V1.Model.OceanDocTagPatentSpecific.t() | nil,
          :bookspecific => GoogleApi.ContentWarehouse.V1.Model.OceanDocTagBookSpecific.t() | nil,
          :structuredPageNumber => String.t() | nil,
          :catalogspecific =>
            GoogleApi.ContentWarehouse.V1.Model.OceanDocTagCatalogSpecific.t() | nil,
          :authors => String.t() | nil,
          :refPageUrl => String.t() | nil,
          :numPages => integer() | nil,
          :metadataCoverExists => boolean() | nil,
          :subjectBitmap => String.t() | nil,
          :subTitle => String.t() | nil,
          :thumbnailUrl => String.t() | nil,
          :coverPageSize => GoogleApi.ContentWarehouse.V1.Model.OceanImageSize.t() | nil,
          :isGeQuality => boolean() | nil,
          :DEPRECATEDPatentNumber => String.t() | nil,
          :DEPRECATEDPublisherPercentVisible => integer() | nil,
          :metadataCoverSize => GoogleApi.ContentWarehouse.V1.Model.OceanImageSize.t() | nil,
          :geoRestrict => list(String.t()) | nil,
          :printedPageNumber => String.t() | nil,
          :magazinespecific =>
            GoogleApi.ContentWarehouse.V1.Model.OceanDocTagMagazineSpecific.t() | nil,
          :volumeType => integer() | nil,
          :urlKey => String.t() | nil,
          :DEPRECATEDPatentAssignee => String.t() | nil,
          :pageid => integer() | nil,
          :grantableLocale => list(String.t()) | nil,
          :title => String.t() | nil,
          :usingActualCover => boolean() | nil
        }

  field(:DEPRECATEDIssueDate)
  field(:coverPage)
  field(:editors)
  field(:encryptedExpressionId)
  field(:segmentTime)
  field(:viewability, as: GoogleApi.ContentWarehouse.V1.Model.OceanVolumeViewability)
  field(:pageNumber)
  field(:sourceType)
  field(:blockSnippet)
  field(:newspaperspecific, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagNewspaperSpecific)
  field(:encryptedVolumeId)
  field(:volumeVersion)
  field(:isLandingPage)
  field(:availableDownloads)
  field(:contributor, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagContributor, type: :list)
  field(:objectionableContentBitmap)
  field(:pagerank)
  field(:searchInBookUrl)
  field(:contentType)
  field(:workcluster, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagWorkCluster)
  field(:price, as: GoogleApi.ContentWarehouse.V1.Model.OceanGEPrice)
  field(:DEPRECATEDApplicationDate)
  field(:goodTextDetail)
  field(:patentspecific, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagPatentSpecific)
  field(:bookspecific, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagBookSpecific)
  field(:structuredPageNumber)
  field(:catalogspecific, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagCatalogSpecific)
  field(:authors)
  field(:refPageUrl)
  field(:numPages)
  field(:metadataCoverExists)
  field(:subjectBitmap)
  field(:subTitle)
  field(:thumbnailUrl)
  field(:coverPageSize, as: GoogleApi.ContentWarehouse.V1.Model.OceanImageSize)
  field(:isGeQuality)
  field(:DEPRECATEDPatentNumber)
  field(:DEPRECATEDPublisherPercentVisible)
  field(:metadataCoverSize, as: GoogleApi.ContentWarehouse.V1.Model.OceanImageSize)
  field(:geoRestrict, type: :list)
  field(:printedPageNumber)
  field(:magazinespecific, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagMagazineSpecific)
  field(:volumeType)
  field(:urlKey)
  field(:DEPRECATEDPatentAssignee)
  field(:pageid)
  field(:grantableLocale, type: :list)
  field(:title)
  field(:usingActualCover)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.OceanDocTag do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.OceanDocTag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.OceanDocTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
