# Plus

A simple gem for using the Google+ API. See documentation here: https://developers.google.com/+/api/

## Pre-requisites

You'll need an API key from Google. You can apply from one here.

Note: Plus does not currently support OAuth authentication.

## Usage

First, tell Plus about your API key:

    Plus.options[:api_key] = '12345abcde'

Now start getting data. Plus provies the same methods as the API and are named the same:

    results = Plus::Activities.list(12345)

Where `12345` is a valid Google+ user id (a very large integer). Each API call simply returns a Ruby
hash mirroring the JSON sent back from the API. So, to get the text of the first activity returned
from the previous call:

    results['items'].first['content']

Pretty simple! If in doubt just `.inspect` the code returned by the call.
