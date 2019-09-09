/*
int solution1(string s) {
	int answer = s.length();

	for (int i = 2; i <= s.length() / 2; i++) {
		int temp = s.length();

		string ts = "";
		for (int j = 0; j < i; j++) {
			ts += s[j];
		}
		cout << ts << endl;

		string tt = "";


		for (int x = i; x < 2 * i; x++) {
			tt += s[x];

		}


		if (temp <= answer)
			answer = temp;
	}


	return answer;
}

string solution2(vector <int> v1) {
	string s = "";
	int temp = 0;
	int pointer = 0;

	for (int i = 0; i < v1.size(); i++) {
		temp += v1[i];
		if (temp == 0) {
			if (v1[pointer] == -1) {
				v1[pointer] = 1;
				v1[i] = -1;
				pointer = i + 1;
			}
		}
	}


	for (int i = 0; i < v1.size(); i++) {
		if (v1[i] == 1)
			s += '(';
		else
			s += ')';
	}


	return s;
}

vector<int> solution(vector<string> v1, vector<string> v2) {
	vector<int> answer;

	string temp = "";
	int count = 0;

	for (int i = 0; i < v2.size(); i++) {
		temp = v2[i]; //fro??

		for (int x = 0; x < v1.size(); x++) {
			string t = v1[x];
			if (t.length() != temp.length())
				continue;
			else {
				int error = 0;
				for (int j = 0; j < t.length(); j++) {
					if (t[j] != temp[j]) {
						if (temp[j] == '?') {
							continue;
						}
						else
							error = 1;
					}
				}
				if (error == 0)
					count++;
			}
		}

		answer.push_back(count);
		count = 0;
	}
	return answer;
}


int main() {
	
	string s = "";
	cin >> s;
	int ans = solution1(s);
	//cout << ans << endl;

	
	string s = "";
	cin >> s;

	vector <int> v1 = {};

	int arr[1000] = { 0, };
	for (int i = 0; i < s.length(); i++) {
		if (s[i] == '(')
			v1.push_back(1);
		else
			v1.push_back(-1);
	}

	string ans = solution2(v1);
	cout << ans << endl;
	*/

/*
	vector <string> v1 = {};
	vector <string> v2 = {};
	string s = "";

	getline(cin, s);

	string temp = "";
	int flag = 0;
	for (int i = 2; i < s.length(); i++) {
		if (s[i] == '"' && flag == 0) {
			if (temp != "")
				v1.push_back(temp);
			temp = "";
		}
		if (s[i] == '[')
			flag = 1;
		if (s[i] == '"' && flag == 1) {
			if (temp != "")
				v2.push_back(temp);
			temp = "";
		}
		if (s[i] == '"' || s[i] == ',' || s[i] == ' ' || s[i] == '[' || s[i] == ']')
			continue;
		temp += s[i];
	}

	solution(v1, v2);

	return 0;
	
	
	 #include <string>
#include <vector>
#include <stdio.h>
#include <iostream>
#include <vector>

using namespace std;

	 
}
*/