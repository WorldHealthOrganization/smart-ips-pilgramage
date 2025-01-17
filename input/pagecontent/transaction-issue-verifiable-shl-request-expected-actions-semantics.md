The following are the expected actions for the [Origin Country HIE](system-actors.html#ochie) once it receives the privacy configuration:
- The [SHL specifications](https://build.fhir.org/ig/HL7/smart-health-cards-and-links/links-specification.html)shall be followed to create a SMART Health Link which is then wrapped in [HCERT structure](https://www.smart.who.int/trust/StructureDefinition-Hcert.html) and shared as a [CWT structure](https://www.smart.who.int/trust/StructureDefinition-CWT.html), by following the below steps:
  - Establish a SMART Health Link Manifest URL
  - Build SHL manifest json that points to the health document (IPS) content
  - Generate SHLink URL for Manifest
  - Construct [SHLink Payload](https://smart.who.int/trust/StructureDefinition-SmartHealthLinkPayload.html)
    - Minified
    - Base64urlencoded
    - Prefixed with shlink:/
  - Build HCERT containing SHL generated in previous step
  - Build COSE Payload including the HCERT and sign with private key using Kid
  - Build CWT with header payload and signature
  - Serialize the CWT and using Base64
  - Generate QR code