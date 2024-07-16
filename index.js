#!/usr/bin/env node

const { execSync } = require('child_process')
const fs = require('fs')
const path = require('path')

// Constructing the absolute path to script.sh using __dirname
const scriptPath = path.join(__dirname, 'script.sh')
const packageJsonPath = path.join(__dirname, 'package.json');
// Setting up the executable permission on the script.sh file
fs.chmodSync(scriptPath, '755')

const showVersion = () => {
    if (!fs.existsSync(packageJsonPath)) {
        console.error('Error: package.json not found at ' + packageJsonPath);
        process.exit(1);
    }
    const packageJson = JSON.parse(fs.readFileSync(packageJsonPath, 'utf8'));
    console.log(`v${packageJson.version}`);
};

const args = process.argv.slice(2)

if (args.length === 1 && (args[0] === '--version' || args[0] === '-V')) {
    showVersion();
} else {
execSync(`${scriptPath} ${args.join(' ')}`, { stdio: 'inherit' })
}
// and last lets execute it
