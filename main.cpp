#include <iostream>
#include <fstream>
#include <ctime>

using namespace std;

int max(int a, int b){
    return (a > b) ? a : b;
}

//recursive implementation
int knapsack(int n, int cap, int** matrix){
    int result = 0;
    // we check if we reach the end
    if (n == -1 || cap == 0)
        return result;
    // if weight of an item is bigger than current capacity, we skip it
    if (matrix[n][0] > cap)
        return knapsack(n-1, cap, matrix);
    // else
    // we create 2 cases: 1st without, 2nd with the item
    int without = knapsack(n-1, cap, matrix);
    int with = matrix[n][1] + knapsack(n-1, cap-matrix[n][0], matrix);
    // we pick a better option
    if (without > with)
        result = without;
    else
        result = with;
    return result;
}


//DP implementation
int knapsack_dp(int n, int cap, int** matrix)
{
    int K[n + 1][cap + 1];

    // Build K[][]
    for(int i = 0; i <= n; i++)
    {
        for(int w = 0; w <= cap; w++)
        {
            if (i == 0 || w == 0)
                K[i][w] = 0;
            else if (matrix[i - 1][0] <= w)
                K[i][w] = max(matrix[i - 1][1] + K[i - 1][w - matrix[i - 1][0]], K[i - 1][w]);
            else
                K[i][w] = K[i - 1][w];
        }
    }
    return K[n][cap];
}


int main() {
    for(int set_nr=1; set_nr<10; set_nr++) {
        cout << "Results for a set nr: " << set_nr << endl;
        int upper_bound = 34;
        int base = 10;
        int difference = 1;
        double times[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        int results[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        for (int n = base; n <= upper_bound; n += difference) {
            ifstream file;
            string filename =
                    R"(D:\studia\sem2\Algorithms&DS\plecak_klopot\set)" +
                    to_string(set_nr) + R"(\knapsack )" + to_string(n) + ".txt";
            file.open(filename);

            string line;
            int max_capacity;

            int **matrix = new int *[n];
            for (int a = 0; a < n; ++a)
                matrix[a] = new int[2];

            // writing data to matrix
            int row = 0;
            while (getline(file, line)) {
                if (row == 0) {
                    int weight_sum = stoi(line);
                    max_capacity = weight_sum / 2;
                } else {
                    int space_id = line.find(' ');
                    int value = stoi(line.substr(0, space_id));
                    int weight = stoi(line.substr(space_id + 1, line.length() - 1));
                    matrix[row - 1][0] = weight;
                    matrix[row - 1][1] = value;
                }
                row++;
            }

            // algorithm
            int repeats = 1;
            if (n < 22)
                repeats = 1000;
            time_t start = clock();
            for (int rep = 0; rep < repeats; rep++) {
                results[n - 10] = knapsack_dp(n, max_capacity, matrix);
            }
            time_t stop = clock();
            times[n - 10] += (double) (stop - start) / CLOCKS_PER_SEC;

            if (repeats == 1000)
                cout << n << " " << times[n - 10] / 1000 << " " << results[n - 10] << endl;
            else
                cout << n << " " << times[n - 10] << " " << results[n - 10] << endl;
        }
    }
    return 0;
}