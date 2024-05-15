/*
 * An example of generating swagger via gRPC ecosystem.
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0
 * Contact: none@example.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct V1ExampleServiceQueryResponse {
    #[serde(rename = "status", skip_serializing_if = "Option::is_none")]
    pub status: Option<Box<crate::models::Protov1Status>>,
}

impl V1ExampleServiceQueryResponse {
    pub fn new() -> V1ExampleServiceQueryResponse {
        V1ExampleServiceQueryResponse {
            status: None,
        }
    }
}


