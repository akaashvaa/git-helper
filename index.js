#!/usr/bin/env node

const { execSync } = require('child_process')
const fs = require('fs')
const path = require('path') // Import the 'path' module

// Construct the absolute path to script.sh using __dirname
const scriptPath = path.join(__dirname, 'script.sh')

// Set executable permission on the script.sh file
fs.chmodSync(scriptPath, '755')

// Extract command-line arguments excluding the first two elements (node and index.js)
const args = process.argv.slice(2)

// Execute the script.sh file with the provided arguments
execSync(`${scriptPath} ${args.join(' ')}`, { stdio: 'inherit' })
