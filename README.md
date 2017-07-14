# INSPIRE data in RDF

The [INSPIRE initiative](http://inspire.ec.europa.eu/) aims at improving the sharing of spatial data and services between public authorities in Europe and in particular between the Member States and the European Institutions. INSPIRE addresses the interoperability of geospatial data sets and services for the exchange of data related to one of the 34 spatial data themes defined in the INSPIRE Directive. It does so through the creation of [application schemas (using UML) and geospatial encodings mechanisms (using GML, GeoTIFF and other formats)](http://inspire.ec.europa.eu/data-specifications).

At the same time, e-Government applications and tools start to use the Linked Data paradigm, based on Semantic Web languages and technologies, such as the Resource Description Framework (RDF). If INSPIRE data was available as Linked Data, these e-Government applications and tools could easily link to it. INSPIRE Linked Data has the potential to unlock new applications and services, not only for e-Government. The information contained in data stacks that were previously separate could easily be combined to acquire new, useful information.

However: while the methodology to publish INSPIRE data as GML together with according schemas is well-defined, a methodology for the publication of INSPIRE data as Linked Data still needs to be defined. The methodology needs to cover:
* the creation of RDF vocabularies representing the INSPIRE data models and 
* the transformation of INSPIRE data into RDF

In a first step, the [ARE3NA](https://joinup.ec.europa.eu/community/are3na) activity of the [European Commission Joint Research Center](https://ec.europa.eu/jrc/) had performed a [study](https://ies-svn.jrc.ec.europa.eu/projects/rdf-pids/wiki/ARE3NA_RDF_+_PIDs_study) that identified recommendations for INSPIRE in RDF as well as a number of issues that have to be resolved in order to specify a common methodology. 

In a second step, draft guidelines for representing data from INSPIRE in RDF and recommendations to solve open issues have been developed by ARE3NA. This repository contains the [draft guidelines](http://inspire-eu-rdf.github.io/inspire-rdf-guidelines/).

Draft RDF vocabularies for (selected) INSPIRE spatial object types based on the draft guidelines are made available in [another repository](https://github.com/inspire-eu-rdf/inspire-rdf-vocabularies).

The current draft guidelines and draft vocabularies have been tested an reviewed mainly through the execution of [two pilot projects](http://inspire.ec.europa.eu/news/linking-inspire-data-draft-guidelines-and-pilots) and need wider stakeholder review. 

All identified issues or comments are documented in the [issue tracker](https://github.com/inspire-eu-rdf/inspire-rdf-guidelines/issues). The issue tracker provides an environment where we can discuss each issue and solve it together. If you are interested, please review the issues and provide feedback or create a new issue. To create or comment on an issue you will need a GitHub account. If you are an expert in the field of Linked Data or the Web and are interested in INSPIRE, your input is highly appreciated. 
