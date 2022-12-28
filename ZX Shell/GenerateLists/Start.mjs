#! /usr/bin/env node

// imports
import 'zx/globals'
import chalk from 'chalk';
import topics from './Modules/Topics.js';
import saveLocation from './Modules/SaveLocation.js'
const fs = require('fs-extra');
$.verbose = false;

// define chalk themes
const reading = chalk.bold.blue.bgBlack;
const adding = chalk.bold.magenta.bgBlack;
const formatting = chalk.bold.yellow.bgBlack;
const writing = chalk.bold.green.bgBlack;
const fault = chalk.bold.red.bgBlack;

// loop each topic directory
topics.forEach(topic => {
	readTopic(topic)
});

// read directory and write to file
async function readTopic(topic) {
  try {
    console.log(reading(`Reading the ${topic.name} directory...`))
    let data = fs.readdirSync(topic.path)
    console.log(adding(`Adding title and underline...`))
    data.unshift('===================')
    data.unshift(`${topic.name}`)
    console.log(formatting(`Formatting the rest of ${topic.name}...`))
    let formatData = data.join('\n')
    console.log(writing(`Write data to a Markdown file ${topic.name}...`))
		fs.writeFileSync(`${saveLocation}/${topic.name}.md`, formatData)
  } catch (error) {
    console.log(fault(`Error reading ${topic.name} topic directory: ${error}`));
  }
}