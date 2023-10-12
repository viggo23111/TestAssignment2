package katas.bowling;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.List;
import java.util.Map;

public class BowlingStepdefs {

    private Game game;
    private List<Integer> pinsHitList;
    private int score;

    @Given("a new bowling game")
    public void aNewBowlingGame() {
        this.game = new Game();
    }

    @When("I roll {int} times {int} pins")
    public void iRollTimesPins(int roll, int hitTimes) {
        for (int i = 0; i < roll; i++) {
            game.roll(hitTimes);
        }
    }

    @Then("my total score should be {int}")
    public void myTotalScoreShouldBe(int arg0) {
        this.score = arg0;
        assert game.score() == score;
    }

    @When("I score the game")
    public void iScoreTheGame() {
        for (int i = 0; i < pinsHitList.size(); i++) {
            game.roll(pinsHitList.get(i));
        }
    }

    @Given("I roll" )
    public void iRoll (List<Integer> pinsHit) {
        this.game = new Game();
        this.pinsHitList = pinsHit;
    }


}
