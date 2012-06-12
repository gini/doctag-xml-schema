# DocTag XML Schema

This is the formal description of the docTag (working title) document exchange
format. With docTag we (see Supporters) aim to simplify the exchange of documents
e.g. invoices, between services.

Our goal is to provide a small common subset of objects and fields, which can
be extended by everybody. As a starting point we tackle invoice documents.

## Other formats

The idea to exchange documents in a structured, machine readable format isn't
new. We could not find any existing solution which could fit small businesses
needs and where easy to implement.

Formats like [EDI](http://en.wikipedia.org/wiki/Electronic_Data_Interchange#See_also)
and it's XML-based subsets rather fit big enterprises and are way too bloated.

## Test

[![Build Status](https://secure.travis-ci.org/smarchive/doctag-xml-schema.png?branch=master)](http://travis-ci.org/smarchive/doctag-xml-schema)

A tiny test-suite in /test ensures that the demo files contain valid XML according to the schema.
The test are run after each commit by Travis CI (see badge above).

To run the test locally you need Ruby. First install the dependencies and then run it:

    cd test
    bundle install
    ruby validate.rb


## Initiative Supporters a-z

* Billomat
* CentralStation CRM
* Doctape
* Easybill
* FastBill
* Fileee
* FreeFibu
* Fortrabbit
* Mein Tagwerk
* Salesking
* smarchive
* Skippr

## License