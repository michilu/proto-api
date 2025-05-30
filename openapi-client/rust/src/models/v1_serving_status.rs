/*
 * An example of generating swagger via gRPC ecosystem.
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0
 * Contact: none@example.com
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

/// 
#[derive(Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, Serialize, Deserialize)]
pub enum V1ServingStatus {
    #[serde(rename = "SERVING_STATUS_UNKNOWN_UNSPECIFIED")]
    ServingStatusUnknownUnspecified,
    #[serde(rename = "SERVING_STATUS_SERVING")]
    ServingStatusServing,
    #[serde(rename = "SERVING_STATUS_NOT_SERVING")]
    ServingStatusNotServing,

}

impl std::fmt::Display for V1ServingStatus {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        match self {
            Self::ServingStatusUnknownUnspecified => write!(f, "SERVING_STATUS_UNKNOWN_UNSPECIFIED"),
            Self::ServingStatusServing => write!(f, "SERVING_STATUS_SERVING"),
            Self::ServingStatusNotServing => write!(f, "SERVING_STATUS_NOT_SERVING"),
        }
    }
}

impl Default for V1ServingStatus {
    fn default() -> V1ServingStatus {
        Self::ServingStatusUnknownUnspecified
    }
}

