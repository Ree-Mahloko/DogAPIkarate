package DogAPI;

import com.intuit.karate.junit5.Karate;

class DogAPI {

    @Karate.Test
    Karate testStatus() {
        return Karate.run("DogAPI").relativeTo(getClass());
    }

}

