/*
 * An example of generating swagger via gRPC ecosystem.
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0
 * Contact: none@example.com
 * Generated by: https://openapi-generator.tech
 */


/// 
#[derive(Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, Serialize, Deserialize)]
pub enum CheckResponseServingStatus {
    #[serde(rename = "SERVING_STATUS_UNKNOWN_UNSPECIFIED")]
    UnknownUnspecified,
    #[serde(rename = "SERVING_STATUS_SERVING")]
    Serving,
    #[serde(rename = "SERVING_STATUS_NOT_SERVING")]
    NotServing,

}

impl ToString for CheckResponseServingStatus {
    fn to_string(&self) -> String {
        match self {
            Self::UnknownUnspecified => String::from("SERVING_STATUS_UNKNOWN_UNSPECIFIED"),
            Self::Serving => String::from("SERVING_STATUS_SERVING"),
            Self::NotServing => String::from("SERVING_STATUS_NOT_SERVING"),
        }
    }
}

impl Default for CheckResponseServingStatus {
    fn default() -> CheckResponseServingStatus {
        Self::UnknownUnspecified
    }
}




