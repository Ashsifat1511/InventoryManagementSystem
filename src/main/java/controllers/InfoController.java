package main.java.controllers;

import com.jfoenix.controls.JFXButton;
import com.mysql.cj.xdevapi.JsonParser;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.stage.Stage;
import main.java.others.DBConnection;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//import java.text.ParseException;
import java.util.Optional;
import java.util.ResourceBundle;
import java.net.MalformedURLException;
import java.net.ProtocolException;

public class InfoController implements Initializable {
    @FXML
    private Label welcomeText;
    public void fetchdata(){
        try {
            URL url = new URL("https://api.myjson.online/v1/records/783b26d2-1359-4615-a478-7409dcc4d252");

            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            InputStreamReader inputStreamReader = new InputStreamReader(connection.getInputStream());
            BufferedReader reader = new BufferedReader(inputStreamReader);

            StringBuilder response = new StringBuilder();
            String line;

            while ((line = reader.readLine()) != null) {
                response.append(line);
            }

            reader.close();
            connection.disconnect();

            String json = response.toString();
            jsonParse(json);

        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        } catch (ProtocolException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }
    public void jsonParse(String response) throws ParseException {

        JSONParser parser = new JSONParser();
        Object object = parser.parse(response);

        JSONObject mainjsonObject = (JSONObject) object;
        JSONObject dataObject = (JSONObject) mainjsonObject.get("data");

        String name = (String) dataObject.get("name");
        String roll = (String) dataObject.get("roll");
        String batch = (String) dataObject.get("batch");
        String email = (String) dataObject.get("email");
        String dept = (String) dataObject.get("department");
        String uni = (String) dataObject.get("university");

        String text = welcomeText.getText();
        welcomeText.setText(text+"\n"+name+"\n"+roll+"\n"+batch+"\n"+email+"\n"+dept+"\n"+uni);

    }
    @Override
    public void initialize(URL location, ResourceBundle resources) {
            fetchdata();
    }
}
