## README for omeka_classic

This is a Docker image and docker-compose workflow for deploying [Omeka Classic](https://omeka.org/classic/) applications.

### Supported Versions
* Omeka Classic v. 2.6

### Requirements

* Docker
* docker-compose v.2 or higher

### Deployment

To deploy, clone this repo, then build the image tagged as `:latest` to keep it integrated with the docker-compose file (or tag it whatever you want and just change the tag referenced in the `docker-compose.yml` file).  Build the image this way by issuing the following command from the root of the cloned git repository for this image:

```
docker build -t omeka_classic:latest .
```

To spin up an instance:

```
docker-compose up
```

Your application should be available at port 80 in the browser.

### Plugins

Omeka applications deployed with this image ship with the following plugins:

* [AdminImages](https://omeka.org/classic/plugins/AdminImages/)
* [Annotator](https://omeka.org/classic/plugins/Annotator)
* [Blogger](https://omeka.org/classic/plugins/Blogger)
* [Blog Shortcode](https://omeka.org/classic/plugins/BlogShortcode)
* [Bulk Metadata Editor](https://omeka.org/classic/plugins/BulkMetadataEditor)
* [Collection Tree](https://omeka.org/classic/plugins/CollectionTree)
* [Commenting](https://omeka.org/classic/plugins/Commenting)
* [CsvExport](https://omeka.org/classic/plugins/CsvExport)
* [CsvImport](https://omeka.org/classic/plugins/CsvImport)
* [Derivative Images](https://omeka.org/classic/plugins/DerivatieImages)
* [Disqus Engage](https://omeka.org/classic/plugins/DisqusEngage)
* [Dublin Core Extended](https://omeka.org/classic/plugins/DublinCoreExtended)
* [Editorial](https://omeka.org/classic/plugins/Editorial)
* [Element Types](https://omeka.org/classic/plugins/ElementTypes)
* [Exhibit Image Annotation](https://omeka.org/classic/plugins/ExhibitImageAnnotation)
* [Geolocation](https://omeka.org/classic/plugins/Geolocation)
* [HideElements](https://omeka.org/classic/plugins/HideElements)
* [History Log](https://omeka.org/classic/plugins/HistoryLog)
* [HTML5 Media](https://omeka.org/classic/plugins/Html5Media)
* [Item Order](https://omeka.org/classic/plugins/ItemOrder)
* [Item Review](https://omeka.org/classic/plugins/ItemReview)
* [LC Suggest](https://omeka.org/classic/plugins/LcSuggest)
* [Maintenance](https://omeka.org/classic/plugins/Maintenance)
* [Neatline](https://omeka.org/classic/plugins/Neatline)
* [Neatline Time](https://omeka.org/classic/plugins/NeatlineTime)
* [Neatline Widget SIMILE Timeline](https://omeka.org/classic/plugins/NeatlineWidgetSimileTimeline)
* [Neatline Widget Text](https://omeka.org/classic/plugins/NeatlineWidgetText)
* [Neatline Features](https://omeka.org/classic/plugins/NeatlineFeatures)
* [Neatline Waypoints](https://omeka.org/classic/plugins/NeatlineWaypoints)
* [PDF Embed](https://omeka.org/classic/plugins/PdfEmbed)
* [PDF Text](https://omeka.org/classic/plugins/PdfText)
* [Record Relations](https://omeka.org/classic/plugins/RecordRelations)
* [Scripto](https://omeka.org/classic/plugins/Scripto)
* [Shortcode Carousel](https://omeka.org/classic/plugins/ShortcodeCarousel)
* [Simple Contact Form](https://omeka.org/classic/plugins/SimpleContactForm)
* [Simple Vocab](https://omeka.org/classic/plugins/SimpleVocab)
* [Sitemap](https://omeka.org/classic/plugins/Sitemap)
* [Social Bookmarking](https://omeka.org/classic/plugins/SocialBookmarking)
* [Taxonomy](https://omeka.org/classic/plugins/Taxonomy)
* [Timeline Shortcode](https://omeka.org/classic/plugins/TimelineShortcode)
* [User Profiles](https://omeka.org/classic/plugins/UserProfiles)

### Themes

This Docker image contains two themes featuring Penn Libraries branding, forked from the core Omeka themes [Thanks, Roy](https://omeka.org/classic/themes/default/) and [Emiglio](https://omeka.org/classic/themes/emiglio/).
