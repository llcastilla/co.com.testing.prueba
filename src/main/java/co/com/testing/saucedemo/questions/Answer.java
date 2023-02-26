package co.com.testing.saucedemo.questions;

import co.com.testing.saucedemo.userinterface.SelectProduct;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Question;
import net.serenitybdd.screenplay.questions.Text;

public class Answer implements Question<Boolean> {
    private String question;

    public Answer(String question) {
        this.question = question;
    }

    public static Answer toThe(String question) {
        return new Answer(question);
    }

    @Override
    public Boolean answeredBy(Actor actor) {
        Boolean result;
        String nameProduct = Text.of(SelectProduct.NAME_PRODUCT).viewedBy(actor).asString();
        if (question.equals(nameProduct)) {

            result = true;

        } else {
            result = false;

        }
        return result;

    }


}
