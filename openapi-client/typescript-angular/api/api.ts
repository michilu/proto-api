export * from './exampleService.service';
import { ExampleServiceService } from './exampleService.service';
export * from './health.service';
import { HealthService } from './health.service';
export const APIS = [ExampleServiceService, HealthService];
