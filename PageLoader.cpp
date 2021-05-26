#include "pl.hpp"

static size_t cb(void *data, size_t size, size_t nmemb, void *userp)
{
		size_t realsize = size * nmemb;
		string result = string((char * )data);
		pars(result);
		return realsize;

}

void Load(const string link)
{
	long http;
    CURL *curl=curl_easy_init();

	curl_easy_setopt(curl,CURLOPT_URL,link.c_str());
	curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
    curl_easy_setopt(curl,CURLOPT_WRITEFUNCTION,cb);

    CURLcode res=curl_easy_perform(curl);
    curl_easy_getinfo (curl, CURLINFO_HTTP_CODE, &http);
     curl_easy_cleanup(curl);
}