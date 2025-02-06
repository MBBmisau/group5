const student = {
    name: "Sani Danladi Gidado",
    email: "sanidanladigidado@gmail.com",
    phone: "08038513353",
    area_of_interest: "Genomics"
};

for (const key in student) {
    console.log(`${key.charAt(0).toUpperCase() + key.slice(1)}: ${student[key]}`);
}
