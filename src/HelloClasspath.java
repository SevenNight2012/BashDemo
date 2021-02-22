import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.ResponseBody;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class HelloClasspath {

    ExecutorService executorService = Executors.newCachedThreadPool();
    private static OkHttpClient sClient = new OkHttpClient();

    public static void main(String[] args) {
//        System.out.println(System.getProperty("java.class.path"));//系统的classpaht路径
//        System.out.println("-------------------------");
//        System.out.println(System.getProperty("user.dir"));//用户的当前路径
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("name", "小明");
        jsonObject.addProperty("age", 18);
        String json = jsonObject.toString();
        System.out.println(json);
        Request request = new Request.Builder().url("https://github.com/").build();
        try {
            ResponseBody responseBody = sClient.newCall(request).execute().body();
            if (responseBody != null) {
                String resp = responseBody.string();
//                System.out.println(resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}