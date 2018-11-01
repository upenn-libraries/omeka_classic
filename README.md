## README for omeka_classic

This is a set of Docker images and a Docker swarm workflow for deploying [Omeka Classic](https://omeka.org/classic/) applications.

### Supported Versions
* Omeka Classic v. 2.6

### Requirements

* Docker CE 17.12 or higher
* one or more Docker hosts configured as a swarm

### Building the Images

This repository contains two images: `omeka_classic` and `omeka_db`. To build these images, run the following commands from the root of the repository:

```
docker build -t omeka_classic:latest images/omeka_classic
docker build -t omeka_db:latest images/omeka_db
```

Note that the `latest` tag is the tag referred to in the `docker-compose.yml` file. If you use a different tag, update the `docker-compose.yml` file to refer to the new tag before attempting a deployment.

### Deployment

To deploy, clone this repo and build the images as directed in the previous section. Execute the following commands to create the environment files that will be mapped into the `omeka_classic` and `omeka_db` services as secrets upon deployment:

```
cp images/omeka_classic/db.ini.example images/omeka_classic/db.ini
cp images/omeka_db/.env.example images/omeka_db/.env
```

Edit the newly created `db.ini` and `.env` files to use your desired database credentials. Note that `username`, `password`, and `database` in `dbi.ini` must match `MYSQL_USER`, `MYSQL_PASSWORD`, and `MYSQL_DATABASE` in `.env`, respectively. Execute the following command from the root of the repository to deploy the application to the swarm:

```
docker stack deploy -c docker-compose.yml omeka_classic
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

The `omeka_classic` image contains two themes featuring Penn Libraries branding, forked from the core Omeka themes [Thanks, Roy](https://omeka.org/classic/themes/default/) and [Emiglio](https://omeka.org/classic/themes/emiglio/).
