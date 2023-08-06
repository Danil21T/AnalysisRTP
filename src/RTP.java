import java.io.FileWriter;
import java.util.*;

public class RTP {
    private double delta;
    private double lambda;
    private int packetsCount = 100;
    private LinkedList<Double> pointT = new LinkedList<>();
    private LinkedList<Double> start_window = new LinkedList<>();
    private HashMap<Integer, Double> packet = new HashMap<>();
    private int exp = 1000;


    public RTP(double l) {
        lambda = l;
        delta = 2;
    }

    public void initData() {
        packet.clear();
        double time = 0.0;
        for (int i = 0; i < packetsCount; i++) {
            double t = getTime();
            packet.put(i, time + t);
            time += delta;
        }
    }
    private double get_M() {
        return Math.pow(lambda, -1);
    }

    private double getTime() {
        return -1 / lambda * Math.log(Math.random());
    }

    public void modeling() {
        double max_window = 7;
        double min_window = 0;
        double step = 0.5;
        int size = (int) ((max_window - min_window)/step+1);
        double[] point = new double[size];
        double[] s_window = new double[size];
        for(int i = 0;i<exp;i++) {
            initData();
            int z_index = 0;
            for (double j = min_window; j <= max_window; j += step) {
                double start_time = j * delta;
                double cur_time = start_time;
                int timeBreaker = 0;
                HashMap<Integer, Double> exp_potok = new HashMap<>(packet);
                LinkedList<Integer> pacReady = new LinkedList<>();
                for(int k = 0; k<packetsCount;k++){
                    if(exp_potok.get(k) <= start_time){
                        pacReady.add(k);
                        exp_potok.remove(k);
                    }
                }
                int cur_pac = 0;
                for(;cur_pac<packetsCount;cur_pac++){
                    if(pacReady.contains(cur_pac)){
                        pacReady.remove(pacReady.indexOf(cur_pac));
                    }else{
                        timeBreaker++;
                    }
                    cur_time+=delta;
                    for(int k = 0; k<packetsCount;k++){
                        if(exp_potok.containsKey(k)) {
                            if (exp_potok.get(k) <= cur_time) {
                                pacReady.add(k);
                                exp_potok.remove(k);
                            }
                        }
                    }
                }
                point[z_index] += (double)timeBreaker/packetsCount;
                s_window[z_index] = j;
                z_index++;
            }
        }
        for(double d : point){
            pointT.add( d / exp * 100);
        }
        for(double s : s_window){
            start_window.add(s);
        }
        write("res" + lambda, start_window, pointT);
    }


    private void write(String fileName, List<Double> x, List<Double> y) {
        try {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < x.size(); ++i) {
                sb.append(x.get(i)).append(" ").append(y.get(i)).append("\n");
            }
            FileWriter writer = new FileWriter(fileName + ".txt");
            writer.write(sb.toString());
            writer.flush();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
