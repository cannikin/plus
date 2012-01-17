# Plus

A simple gem for using the Google+ API. See documentation here: https://developers.google.com/+/api/

## Pre-requisites

You'll need an API key from Google. You can apply from one here: https://code.google.com/apis/console

_Note: Plus does not currently support OAuth authentication._

## Usage

First, tell Plus about your API key:

    Plus.options[:api_key] = '12345abcde'

Now start getting data. Plus provies the same methods as the API and are named the same, so when
in doubt just check out the official docs. Each API call simply returns a Ruby hash mirroring the 
JSON sent back from the API. If in doubt as to how to access something just `.inspect` the code 
returned by the call.

### Activities.list

Lists recent posts for a given user:

    result = Plus::Activities.list(12345)

Where `12345` is a valid Google+ user id (a very large integer). To get the text of the first 
activity returned from the previous call:

    result['items'].first['object']['content']

### Activities.get

Retrieves data about the given activity:

    result = Plus::Activities.get('12345abcde')

Where `12345abcde` is a big string, the `id` of the activity you care about.

### Activities.search

Returns recent activity that matches the given search term:

    result = Plus::Activities.search('woodworking')

## Future

I'm thinking of abstracting the data returned from the API into nice Ruby objects so next time
you could get the data with a much simpler call (and what feels like method calls rather than
hash key access):

    result.items.first.content

