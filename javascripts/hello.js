function helloworld() {
    process.stdout.write("Hello World!\n");
}

function main(outputNum){
    for (let i =0; i<outputNum; i++){
    helloworld();
    }
}
main(5);