

##### Message Semantics Request
- The message semantics for retrieve MHD folder docs request shall be a POST request as specified by [SMART Health Link Manifest Request](https://build.fhir.org/ig/HL7/smart-health-cards-and-links/links-specification.html#smart-health-link-manifest-request), along with the passcode provided in the body of the request.


##### Message Semantics Response
- The message semantics shall follow the [ITI-67](https://profiles.ihe.net/ITI/MHD/ITI-67.html#2367422-message-semantics) Find Document References response message and for a successful queries return a FHIR bundle that includes all documentReference available in the MHD folder for the pilgrim.
