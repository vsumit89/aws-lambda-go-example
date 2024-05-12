## AWS Lambda Function Example in Go

This repository contains an example of an AWS Lambda function written in Go. The function demonstrates how to handle AWS Lambda events and perform basic operations.

### Prerequisites

Ensure you have the following installed:

- Go (1.16 or later)
- AWS CLI
- AWS SAM CLI

### Getting Started

1. **Clone the Repository**
   ```bash
   git clone <repository_url>
   cd <repository_name>
   ```

2. **Install Dependencies**
   ```bash
   make deps
   ```

3. **Build the Lambda Function**
   ```bash
   make build
   ```

4. **Run the Lambda Function Locally**
   ```bash
   make run-lambda
   ```

### Project Structure

- **`main.go`**: Contains the Lambda function code.
- **`template.yaml`**: AWS SAM template file defining the Lambda function.

### Commands

- **`make build`**: Builds the Lambda function binary.
- **`make run-lambda`**: Runs the Lambda function locally using AWS SAM CLI.

### Testing

To test the Lambda function locally, you can use the SAM CLI to invoke the function with sample event data:

```bash
make invoke-lambda
```

### Additional Notes

- Customize the `main.go` file to define your Lambda function logic.
- Update the `template.yaml` file to configure AWS Lambda resources and event triggers.

