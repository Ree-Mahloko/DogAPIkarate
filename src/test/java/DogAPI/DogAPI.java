package DogAPI;

import com.intuit.karate.junit5.Karate;

class DogAPI {

    @Karate.Test
    Karate testStatus() {
        return Karate.run("classpath:DogAPI").relativeTo(getClass());
    }

}

