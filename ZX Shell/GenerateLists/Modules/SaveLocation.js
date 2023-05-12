import dotenv from 'dotenv';
dotenv.config()
console.log(process.env.SAVE_LOCATION)

const saveLocation = process.env.SAVE_LOCATION;

// where to save the file lists
export default saveLocation;
