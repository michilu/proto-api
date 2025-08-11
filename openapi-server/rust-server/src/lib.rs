#![allow(missing_docs, trivial_casts, unused_variables, unused_mut, unused_imports, unused_extern_crates, unused_attributes, non_camel_case_types)]
#![allow(clippy::derive_partial_eq_without_eq, clippy::disallowed_names)]

use async_trait::async_trait;
use futures::Stream;
use std::error::Error;
use std::collections::BTreeSet;
use std::task::{Poll, Context};
use swagger::{ApiError, ContextWrapper};
use serde::{Serialize, Deserialize};
use crate::server::Authorization;


type ServiceError = Box<dyn Error + Send + Sync + 'static>;

pub const BASE_PATH: &str = "";
pub const API_VERSION: &str = "1.0";

mod auth;
pub use auth::{AuthenticationApi, Claims};


#[derive(Debug, PartialEq, Serialize, Deserialize)]
pub enum ExampleServiceQueryResponse {
    /// A successful response.
    ASuccessfulResponse
    (models::V1ExampleServiceQueryResponse)
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
pub enum HealthServiceCheckResponse {
    /// A successful response.
    ASuccessfulResponse
    (models::V1CheckResponse)
}

/// API
#[async_trait]
#[allow(clippy::too_many_arguments, clippy::ptr_arg)]
pub trait Api<C: Send + Sync> {
    fn poll_ready(&self, _cx: &mut Context) -> Poll<Result<(), Box<dyn Error + Send + Sync + 'static>>> {
        Poll::Ready(Ok(()))
    }

    async fn example_service_query(
        &self,
        id: uuid::Uuid,
        body: models::ExampleServiceQueryBody,
        context: &C) -> Result<ExampleServiceQueryResponse, ApiError>;

    async fn health_service_check(
        &self,
        serving_name: String,
        context: &C) -> Result<HealthServiceCheckResponse, ApiError>;

}

/// API where `Context` isn't passed on every API call
#[async_trait]
#[allow(clippy::too_many_arguments, clippy::ptr_arg)]
pub trait ApiNoContext<C: Send + Sync> {

    fn poll_ready(&self, _cx: &mut Context) -> Poll<Result<(), Box<dyn Error + Send + Sync + 'static>>>;

    fn context(&self) -> &C;

    async fn example_service_query(
        &self,
        id: uuid::Uuid,
        body: models::ExampleServiceQueryBody,
        ) -> Result<ExampleServiceQueryResponse, ApiError>;

    async fn health_service_check(
        &self,
        serving_name: String,
        ) -> Result<HealthServiceCheckResponse, ApiError>;

}

/// Trait to extend an API to make it easy to bind it to a context.
pub trait ContextWrapperExt<C: Send + Sync> where Self: Sized
{
    /// Binds this API to a context.
    fn with_context(self, context: C) -> ContextWrapper<Self, C>;
}

impl<T: Api<C> + Send + Sync, C: Clone + Send + Sync> ContextWrapperExt<C> for T {
    fn with_context(self: T, context: C) -> ContextWrapper<T, C> {
         ContextWrapper::<T, C>::new(self, context)
    }
}

#[async_trait]
impl<T: Api<C> + Send + Sync, C: Clone + Send + Sync> ApiNoContext<C> for ContextWrapper<T, C> {
    fn poll_ready(&self, cx: &mut Context) -> Poll<Result<(), ServiceError>> {
        self.api().poll_ready(cx)
    }

    fn context(&self) -> &C {
        ContextWrapper::context(self)
    }

    async fn example_service_query(
        &self,
        id: uuid::Uuid,
        body: models::ExampleServiceQueryBody,
        ) -> Result<ExampleServiceQueryResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().example_service_query(id, body, &context).await
    }

    async fn health_service_check(
        &self,
        serving_name: String,
        ) -> Result<HealthServiceCheckResponse, ApiError>
    {
        let context = self.context().clone();
        self.api().health_service_check(serving_name, &context).await
    }

}


#[cfg(feature = "client")]
pub mod client;

// Re-export Client as a top-level name
#[cfg(feature = "client")]
pub use client::Client;

#[cfg(feature = "server")]
pub mod server;

// Re-export router() as a top-level name
#[cfg(feature = "server")]
pub use self::server::Service;

#[cfg(feature = "server")]
pub mod context;

pub mod models;

#[cfg(any(feature = "client", feature = "server"))]
pub(crate) mod header;
