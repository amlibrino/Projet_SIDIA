public class JasonParse{
	public Integer status;	//200
	public String requestId;	//1c5834c9-0288-40df-906d-c33f77dc2108
	public cls_category[] category;
	public String logo;	//https://img.fullcontact.com/static/0e5c2b8061fe7f3d39ee44a345238e94_b7f539b758dee52ef2bae4a5260d10e87b9b3a3fe800dcbbea9c75e27910a5eb
	public String website;	//http://ei-technologies.com
	public cls_industries[] industries;
	public cls_organization organization;
	public cls_socialProfiles[] socialProfiles;
	public cls_traffic traffic;
	class cls_category {
		public String code;	//OTHER
		public String name;	//Other
	}
	class cls_industries {
		public String type;	//SIC
		public String name;	//Computer and Data Processing Services
		public String code;	//737
	}
	public class cls_organization {
		public String name;	//EI Technologies
		public Integer approxEmployees;	//350
		public String founded;	//2007
		public String overview;	//EI Technologies is an information technology services company which provides digital consulting, cloud marketing, analytics, sales cloud, platform, and chatter.
		public cls_contactInfo contactInfo;
		public cls_links[] links;
		public cls_images[] images;
	}
	class cls_contactInfo {
		public cls_phoneNumbers[] phoneNumbers;
		public cls_addresses[] addresses;
	}
	class cls_phoneNumbers {
		public String numbers;	//33 1 44 29 26 00
		public String label;	//other
	}
	class cls_addresses {
		public String locality;	//Levallois
		public cls_region region;
		public cls_country country;
		public String label;	//work
	}
	class cls_region {
		public String name;	//Ile-de-france
	}
	class cls_country {
		public String name;	//France
		public String code;	//FR
	}
	class cls_links {
		public String url;	//https://www.ei-technologies.com/en/home-page
		public String label;	//other
	}
	class cls_images {
		public String url;	//https://img.fullcontact.com/static/04e8d21f04e65d21c6cc1892203f7845_20eace8e57dd7b011b5270dcd34e6c004008d9c1b3a2bb111484136384c3110e
		public String label;	//other
	}
	class cls_socialProfiles {
		public String bio;	//EI-Technologies means integrating a human-sized group, with a high-quality management and teams who are experts in their field of activity.
		public String typeId;	//crunchbasecompany
		public String typeName;	//CrunchBase
		public String url;	//http://www.crunchbase.com/organization/ei-technologies-aa61
		public String username;	//ei-technologies-aa61
	}
	class cls_traffic {
		public cls_topCountryRanking[] topCountryRanking;
		public cls_ranking[] ranking;
	}
	class cls_topCountryRanking {
		public Integer rank;	//26401
		public String locale;	//fr
	}
	class cls_ranking {
		public Integer rank;	//740446
		public String locale;	//global
	}
	public static JasonParse parse(String json){
		return (JasonParse) System.JSON.deserialize(json, JasonParse.class);
    }
}
/*
	static testMethod void testParse() {
		String json=		'{'+
		'  "status" : 200,'+
		'  "requestId" : "1c5834c9-0288-40df-906d-c33f77dc2108",'+
		'  "category" : [ {'+
		'    "code" : "OTHER",'+
		'    "name" : "Other"'+
		'  } ],'+
		'  "logo" : "https://img.fullcontact.com/static/0e5c2b8061fe7f3d39ee44a345238e94_b7f539b758dee52ef2bae4a5260d10e87b9b3a3fe800dcbbea9c75e27910a5eb",'+
		'  "website" : "http://ei-technologies.com",'+
		'  "industries" : [ {'+
		'    "type" : "SIC",'+
		'    "name" : "Computer and Data Processing Services",'+
		'    "code" : "737"'+
		'  } ],'+
		'  "organization" : {'+
		'    "name" : "EI Technologies",'+
		'    "approxEmployees" : 350,'+
		'    "founded" : "2007",'+
		'    "overview" : "EI Technologies is an information technology services company which provides digital consulting, cloud marketing, analytics, sales cloud, platform, and chatter.",'+
		'    "contactInfo" : {'+
		'      "phoneNumbers" : [ {'+
		'        "number" : "33 1 44 29 26 00",'+
		'        "label" : "other"'+
		'      } ],'+
		'      "addresses" : [ {'+
		'        "locality" : "Levallois",'+
		'        "region" : {'+
		'          "name" : "Ile-de-france"'+
		'        },'+
		'        "country" : {'+
		'          "name" : "France",'+
		'          "code" : "FR"'+
		'        },'+
		'        "label" : "work"'+
		'      }, {'+
		'        "addressLine1" : "24, rue Jacques Ibert",'+
		'        "locality" : "Levallois-Perret",'+
		'        "country" : {'+
		'          "name" : "France",'+
		'          "code" : "FR"'+
		'        },'+
		'        "postalCode" : "92300",'+
		'        "label" : "work"'+
		'      }, {'+
		'        "country" : {'+
		'          "name" : "France"'+
		'        }'+
		'      } ]'+
		'    },'+
		'    "links" : [ {'+
		'      "url" : "https://www.ei-technologies.com/en/home-page",'+
		'      "label" : "other"'+
		'    } ],'+
		'    "images" : [ {'+
		'      "url" : "https://img.fullcontact.com/static/04e8d21f04e65d21c6cc1892203f7845_20eace8e57dd7b011b5270dcd34e6c004008d9c1b3a2bb111484136384c3110e",'+
		'      "label" : "other"'+
		'    }, {'+
		'      "url" : "https://img.fullcontact.com/static/ab64d1e897e2b59a9c2792edc57b9c5f_215bdf3de36456ff37cf2dce684879513604f8094d2658c134c2796d4a50dc96",'+
		'      "label" : "other"'+
		'    }, {'+
		'      "url" : "https://img.fullcontact.com/static/2a28f26ed5605b1d67008dd92b151d9f_ad64d3948653f9b8225eb110b5bdfeb7da5b9363ca6c41ae52e5238d3236a340",'+
		'      "label" : "logo"'+
		'    }, {'+
		'      "url" : "https://img.fullcontact.com/static/4a65c8cb8b1409e1bad2bca5f10ecb6b_fd6ec9d6f992ac6f8470fa661776d4c6b38eced9fe661d2ff5d8962bb38b8419",'+
		'      "label" : "other"'+
		'    }, {'+
		'      "url" : "https://img.fullcontact.com/static/0e5c2b8061fe7f3d39ee44a345238e94_b7f539b758dee52ef2bae4a5260d10e87b9b3a3fe800dcbbea9c75e27910a5eb",'+
		'      "label" : "other"'+
		'    } ]'+
		'  },'+
		'  "socialProfiles" : [ {'+
		'    "bio" : "EI-Technologies means integrating a human-sized group, with a high-quality management and teams who are experts in their field of activity.",'+
		'    "typeId" : "crunchbasecompany",'+
		'    "typeName" : "CrunchBase",'+
		'    "url" : "http://www.crunchbase.com/organization/ei-technologies-aa61",'+
		'    "username" : "ei-technologies-aa61"'+
		'  }, {'+
		'    "typeId" : "youtube",'+
		'    "typeName" : "YouTube",'+
		'    "url" : "https://youtube.com/user/EITechnologiesGroupe",'+
		'    "username" : "EITechnologiesGroupe"'+
		'  }, {'+
		'    "typeId" : "owler",'+
		'    "typeName" : "Other",'+
		'    "url" : "https://www.owler.com/iaApp/2791186/ei-technologies-company-profile",'+
		'    "username" : "ei-technologies",'+
		'    "id" : "2791186"'+
		'  }, {'+
		'    "typeId" : "twitter",'+
		'    "typeName" : "Twitter",'+
		'    "url" : "https://twitter.com/ei_technologies",'+
		'    "username" : "ei_technologies"'+
		'  }, {'+
		'    "typeId" : "linkedincompany",'+
		'    "typeName" : "LinkedIn",'+
		'    "url" : "https://www.linkedin.com/company/ei-technologies",'+
		'    "username" : "ei-technologies"'+
		'  } ],'+
		'  "traffic" : {'+
		'    "topCountryRanking" : [ {'+
		'      "rank" : 26401,'+
		'      "locale" : "fr"'+
		'    } ],'+
		'    "ranking" : [ {'+
		'      "rank" : 740446,'+
		'      "locale" : "global"'+
		'    } ]'+
		'  }'+
		'}';
		fromJSON obj = parse(json);
		System.assert(obj != null);
	}
}*/

