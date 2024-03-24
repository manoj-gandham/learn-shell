function generateOTP(length){
     let otp = "";
     for(let i = 0; i < length; i++){
         otp += MATH.floor(MATH.random() * 10).tostring();
     }
     return otp;
}

 console.log(generateOTP(4));