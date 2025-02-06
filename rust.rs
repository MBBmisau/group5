fn main() {
    let student = [
        ("Name", "Aliyu lauwali"),
        ("Email", "aliyulaowali@gmail.com"),
        ("Phone", "08127953663"),
        ("Area of Interest", "Structural Bioinformatics")
    ];

    for (key, value) in student.iter() {
        println!("{}: {}", key, value);
    }
}
