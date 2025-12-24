# Shodan Reconnaissance Report: holbertonschool.com

## 1. IP Ranges & Infrastructure
Based on the provided Shodan output, the following infrastructure has been identified:

* **IP Address:** `51.44.96.144`
* **Hosting/Server:** Nginx/1.20.0
    * The server explicitly identifies itself as `nginx/1.20.0` in the HTTP headers.

## 2. Technologies & Frameworks
The following technologies and frameworks were detected on the subdomain `apply.holbertonschool.com` (hosted on the identified IP):

### Web Server & Backend
* **Web Server:** Nginx 1.20.0
* **Framework:** Ruby on Rails
    * *Evidence:* Extensive usage of `rails-assets.holbertonschool.com` for serving stylesheets and scripts (e.g., `application_init...css`, `application...js`).
    * *Evidence:* Presence of `csrf-param` tag with content `authenticity_token`, which is standard in Rails applications.

### Frontend Libraries & Assets
* **Bootstrap Social:** Used for social login buttons (referenced in CSS).
* **Font Awesome:** Icon set library (version 4.7.0 detected).
* **Slick Carousel:** A jQuery carousel plugin (v1.8.1).
* **Flag Icon CSS:** Used for displaying country flags.
* **Adobe Typekit:** Used for web fonts (`use.typekit.net`).

### Analytics, Tracking & Marketing
* **Google Analytics:** Tracking ID `UA-67152800-4`.
* **Google Tag Manager:** Container ID `GTM-N4RFFZJ`.
* **Facebook Pixel:** Tracking code for marketing (`741076262717796`).
* **Quora Pixel:** Tracking code for Quora ads.

### Customer Support & Widgets
* **Zendesk:** Customer support chat widget (`static.zdassets.com`).
