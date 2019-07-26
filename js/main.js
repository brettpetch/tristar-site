const countUp = new CountUp('sqft', 60000);
if (!countUp.error) {
    countUp.start();
} else {
    console.error(countUp.error);
}