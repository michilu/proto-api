export * from './exampleService.service';
import { ExampleServiceService } from './exampleService.service';
export * from './healthCheckService.service';
import { HealthCheckServiceService } from './healthCheckService.service';
export const APIS = [ExampleServiceService, HealthCheckServiceService];
