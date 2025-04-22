#!/bin/bash

echo "-------------------------------------"
echo "🚀 Starting build on branch: $BRANCH_NAME"
echo "🕒 Build started at: $(date)"
echo "-------------------------------------"

# Simulate some steps
echo "🔧 Running setup..."
sleep 1
echo "✅ Code linting passed!"
sleep 1
echo "🧪 Running unit tests..."
sleep 2
echo "✅ All tests passed!"
sleep 1
echo "📦 Packaging application..."
sleep 2
echo "🚀 Deploying application..."
sleep 1

echo "-------------------------------------"
echo "✅ Build completed successfully at: $(date)"
echo "-------------------------------------"
