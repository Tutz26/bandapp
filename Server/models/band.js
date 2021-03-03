const { v4: uuid } = require('uuid');


class Band {

    constructor( name = 'no-name' ) {

        this.id = uuid(); //Identificador unico
        this.name = name;
        this.votes = 0;

    }

}


module.exports = Band;;