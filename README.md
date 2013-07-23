[![Build Status](https://travis-ci.org/phereford/DPLibrary.png)](https://travis-ci.org/phereford/DPLibrary)
[![Code Climate](https://codeclimate.com/github/phereford/DPLibrary.png)](https://codeclimate.com/github/phereford/DPLibrary)
[![Coverage Status](https://coveralls.io/repos/phereford/DPLibrary/badge.png)](https://coveralls.io/r/phereford/DPLibrary)
# DPLibrary

A simple ruby API wrapper around the [Digital Public Library of
America](http://http://dp.la/info/developers/)

## Installation

Add this line to your application's Gemfile:

    gem 'DPLibrary'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install DPLibrary

## Configuration

1. Acquire an API KEY from dp.la. To do this, simply run the
following command from your terminal (replace YOUR_EMAIL with your
email):

```
curl -v -XPOST http://api.dp.la/v2/api_key/YOUR_EMAIL@example.com
```

You will receive an email with an api key (should take less than 5
minutes).

2) Before making any api calls you will need to set your api
key in your application. To do that, do the following:

```
DPLibrary.api_key = '<API KEY GOES HERE>'
```

If you are using a rails app, putting this in a config/initializer makes
the most sense.

## Usages

After setting your api_key to DPLibrary.api_key, it's time to start
querying the DPLA!!

For reference, you should glance at the [DPLA API
Reference](http://dp.la/info/developers).

Let's get started!
```
@documents_collection = DPLibrary::DocumentCollection.new({q: 'chicken'})
@documents_collection.count # => returns the total count of your query.
@documents_collection.limit # => the limit of documents per query
@documents_collection.offset # => pagination offset in results
@documents_collection.documents # => Returns an array of document objects
```

```
@document = DPLibrary::DocumentCollection.new({q: 'chicken'}).documents.first
@document.collection # => returns a collection object
@document.original_record # => returns an original record object

## Attributes for documents
:id, :url, :source, :title, :description, :subject, :language, :format,
:type, :publisher, :creaetor, :provider, :collection, :score,
:original_record
```

Now there are many types of parameters you can pass in the
DocumentCollection initialize method. For a complete list, check out the
[DPLA API Reference](http://dp.la/info/developers).
 
For the lazy, here is a brief list of what those params can be. It's
pretty straightforward what the params do.

```
q # => query string 
sourceResource.id
sourceResource.contributor
sourceResource.date.begin
sourceResource.date.end
sourceResource.extent
sourceResource.language.name
sourceResource.language.iso639
sourceResource.format
sourceResource.stateLocatedIn.name
sourceResource.stateLocatedIn.iso3166-2
sourceResource.spatial.name
sourceResource.spatial.country
sourceResource.spatial.region
sourceResource.spatial.county
sourceResource.spatial.state
sourceResource.spatial.city
sourceResource.spatial.iso3166-2
sourceResource.spatial.coordinates
sourceResource.subject.@id
sourceResource.subject.type
sourceResource.subject.name
sourceResource.temporal.begin
sourceResource.temporal.end
sourceResource.title
sourceResource.type
hasView.@id
hasView.format
isPartOf.@id
isPartOf.name
isShownAt
object
provider.@id
provider.name
```

## ToDo's
* Write Tests
* Create fixtures for tests
* Dry up lib files
* Write up collection.find method for querying collections

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
