Instance: VHLDocumentResponder
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://smart.who.int/smart-ips-pilgrimage/CapabilityStatement/VHLDocumentResponder"
* name = "VHL DocumentResponder"
* title = "VHL Document Responder (server)"
* status = #active
* experimental = false
* date = "2024-12-31"
* description = "VHL Document Responder (server) - Search DocumentReferences in a List."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* imports = "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentResponder"
* rest
  * mode = #server
  * resource[+]
    * type = #DocumentReference
    // * profile = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.List"
    // * supportedProfile[0] = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.SubmissionSet"
    // * supportedProfile[+] = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet"
    // * supportedProfile[+] = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet"
    // * supportedProfile[+] = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.Folder"
    // * supportedProfile[+] = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder"
    // * interaction[0].code = #read
    // * interaction[+].code = #search-type
    * searchParam[0]
      * name = "_list"
      * type = #special
      * documentation = "A server compatible with the VHLDocumentResponder SHALL support searches using the _list search parameter as defined in the core FHIR specification."
