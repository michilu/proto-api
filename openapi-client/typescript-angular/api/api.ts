export * from './exampleService.service';
import { ExampleServiceService } from './exampleService.service';
export * from './healthService.service';
import { HealthServiceService } from './healthService.service';
export const APIS = [ExampleServiceService, HealthServiceService];
