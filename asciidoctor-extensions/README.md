# HOWTO - Generate the INSPIRE guidelines for the RDF encoding of spatial data

* Install asciidoctor (for further details, see http://asciidoctor.org/docs/install-toolchain/).
* Check out the repository.
* Open a command prompt and navigate to your local folder that contains the main repository, with file 'index.adoc'. Execute the following command: `asciidoctor -r ./asciidoctor-extensions/custom_blocks.rb -r ./asciidoctor-extensions/register_turtle.rb index.adoc`
* A new version of file 'index.html' should now have been generated. If you are satisfied with the changes, push the new version of the HTML file to the repository.
  * NOTE 1: Also push the source file(s), i.e. the .adoc file(s) that contain the actual changes.
  * NOTE 2: If you do not have write permission for the repository, create a PullRequest with your changes.
  * NOTE 3: Once the changes are online, it can be useful to let the [W3C Link Checker](https://validator.w3.org/checklink) validate the guidelines document, to ensure that no links are broken.
