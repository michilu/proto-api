FROM golang:latest as builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . ./
RUN CGO_ENABLED=0 go build -o /app/output ./cmd/server

FROM gcr.io/distroless/static-debian12 AS runtime
COPY --from=builder /app/output /output
ENTRYPOINT ["/output"]
