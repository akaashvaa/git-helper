#!/usr/bin/env node

const { execSync } = require('child_process')
const fs = require('fs')
const path = require('path')

// Constructing the absolute path to script.sh using __dirname
const scriptPath = path.join(__dirname, 'script.sh')

// Setting up the executable permission on the script.sh file
fs.chmodSync(scriptPath, '755')

const args = process.argv.slice(2)

// and last lets execute it
execSync(`${scriptPath} ${args.join(' ')}`, { stdio: 'inherit' })
