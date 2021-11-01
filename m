Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8D3F441278
	for <lists+linux-man@lfdr.de>; Mon,  1 Nov 2021 04:45:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230233AbhKADsM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 31 Oct 2021 23:48:12 -0400
Received: from esa9.fujitsucc.c3s2.iphmx.com ([68.232.159.90]:5625 "EHLO
        esa9.fujitsucc.c3s2.iphmx.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230222AbhKADsL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 31 Oct 2021 23:48:11 -0400
X-Greylist: delayed 433 seconds by postgrey-1.27 at vger.kernel.org; Sun, 31 Oct 2021 23:48:11 EDT
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1635738339; x=1667274339;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=bw8W4LuslpfBP7ehAFfpVG/oq9ML5pma7sNhfB1EpUw=;
  b=KK7gvqYNkqCQ0zhvGGqPWMhlR1dnck/JeuKrwGa1AKJh8aBAyOKxUErI
   LR1bzBQ2nF7nw+hkRGIPYrXisTdD4OcIOEqVMlhSyXoioT8sCeFSjH4+3
   VEVRXZr5X8CJkXHyA8XVihV7o1EEpJf0zzz0YMAQjo2xyCCL7L36l9w6w
   0mKsW8Y3RiqRPHuMWGy/DdnK/uONqMIuWam9MfBlnWn7e6rkuLqz+U0Un
   EiavbihCM0fN+7ztzVK3QwBqZSu6/86x+OPV9xCv1vOa+YdykXyvpo8qp
   Zy48s4+7FszO98zGVcFGAlunTueRb7mFwovhQdDN413hGiId2MmJ80c0f
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="42616171"
X-IronPort-AV: E=Sophos;i="5.87,198,1631545200"; 
   d="scan'208";a="42616171"
Received: from mail-os2jpn01lp2056.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.56])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2021 12:38:23 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TsV9oVJeDmv4IO2HX+Czndxl7PgJCvm4a3QihJJpwiO3URJuszAq5aAj/3sCku82TAdoac7UYFEjwvhmZRXTn2eF7Ydg+Iovh6M5/mtPTxxQ/Ldsl5kI6g3D3q6bT0jVgD5djJHuZiCTYw0jV1O9An4gq8ufp3yK87gTh4FYzpADi7+fNekVg+nFICPZC0ydx2TYnNSeHYqLaaAe1sEkvZi/f35adc5ZK4yZfQKflxMVxDId/vC67+IwxfI3Nl8biNUBToiVFNS702bibs48eYKFhqI75Ixog2jNXaitfM4g6cnKfbzoG/fGl1KfFxSG/JG98e07YGOcHM618yEHqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bw8W4LuslpfBP7ehAFfpVG/oq9ML5pma7sNhfB1EpUw=;
 b=CXtIcm369g7pndX0jX298EW+0dO9iuqbIORFzEcpFnVT0vGTN3ond+9Q/U1K+XJq1Hl49DV0Qa8Qj3ShYguVrA2Cr1QFFi8h24PB406Kxe8j0dwf96MvEtBwqsKshyEYHFGdErN65tIfSrKMfwtkj1B7szOkK9HSa+VtbVAjY6Vyx1/yjXAVWPHe+B5dGGptSShT3oziAM0YFYxfj4wof4GPACHKYBWhxjquy7IZXxCsCzCzm+tcdzWpHj+r4XZY0AH6D3anWgD5XKVdskDAfdOg2gd/EPUfNHd5nXeto1KImWCpRIo+MxBe50pYJXinc+pNXwBQvzW4W9aSJ6ZwkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bw8W4LuslpfBP7ehAFfpVG/oq9ML5pma7sNhfB1EpUw=;
 b=hkAuDxULLWKgwYD+sTGCg45eNDP3kBljeMTeYKSlobu/lORyOSzLjuCGGSCVOZW/EtvQdLKiuMFd24a5yF0zAetlMmEM+1c8RXfmvBroJKXE7m9K/LireXkt77+l9CLHH6dpdHGgnDB8z0OUZcZ8UFq/sG45201++mvhJ+GAeV0=
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com (2603:1096:400:98::6)
 by TYAPR01MB4622.jpnprd01.prod.outlook.com (2603:1096:404:12e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Mon, 1 Nov
 2021 03:38:20 +0000
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9]) by TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9%7]) with mapi id 15.20.4649.019; Mon, 1 Nov 2021
 03:38:20 +0000
From:   "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
To:     "Alejandro Colomar (mailing lists; readonly)" 
        <alx.mailinglists@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Topic: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Index: AQHXxVROpR5fexAzmEGKVloBqdrEKKvuGTkA
Date:   Mon, 1 Nov 2021 03:38:20 +0000
Message-ID: <617F6138.5040601@fujitsu.com>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
In-Reply-To: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f254a1a3-e805-4ea6-64ad-08d99ce90ced
x-ms-traffictypediagnostic: TYAPR01MB4622:
x-microsoft-antispam-prvs: <TYAPR01MB4622E43CB293A6356180148CFD8A9@TYAPR01MB4622.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:397;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xcLHWazQmsAx1LtqzgiVvkqJuta/QIAOzTuZ0ewm0s6yZ2m0DhUUkJcPzUHdptcxg+UNWEioqsa6YxRtBlJlSEccLLrIUlnGx1dno2Q5wtry6RA+3qN+Q/TQblceFEGUP+MzocN5WW6++GV6nVwk0JiQ5s/ReArI7uYegphDUBgaqGObeMM4a0Fk8d6rTAfeKyPq5uZbyqBPDbxQVn7Dh32FCcH3azN+P+GXNiBSBMF+0S+MukVj6/z0YpwmAZeUbRTCSZcmLXAUO+svhzn5EUV8B95oDxrsjpmAiyNiaB4GQFoXQHXJZM1Rgh4cGXZ5pPQKBWQFEZqaM7DT2WZgiHvAdCnSzXh8TeS9JT01B0psdvwNiT7fryMfehh+0MlHoT3kLW3FPtEukbX4paVjYGAStO1mR5uRqKzuwC1phs2sXZNGk/zaMOZBfKUn2gs7q9Vt0ZzWlAmW6oPxTSlGvuxqn5izGFW3d/3ljJpaCZlM6ayX6fp/4d9gz66FNcwhp8GzgzdGr69Fxvj79amxHnJ9hJWqipSXl30iIvtFAwuIdK4bITfhgqDhxiMPJxiUw8VP/soTbomO5rB0L+jcMTFjLtPOJdI6K0lbOEi0FKPQu/TwWHI2fsjaiXG4GV2E5L0mPTydWj3i0LP2X+yg/CNHFLUDVtxnaGaqHZAInlKYugizgYPqetQE3Ryh9btzG+x9B7CiIkHVAmdAYP8jlFFsbkosal0KWA8ppo2/K//H4TiMwfZtCZ3H72v+bzMWhQlHu808T6Iz+X0AJhVxc3Qzgrua4P5mxiTTyEgDr78=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB6544.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(5660300002)(76116006)(26005)(91956017)(6512007)(66946007)(85182001)(6506007)(186003)(8676002)(4744005)(6486002)(4326008)(86362001)(2616005)(66446008)(87266011)(64756008)(66556008)(66476007)(71200400001)(508600001)(8936002)(82960400001)(316002)(15650500001)(36756003)(33656002)(110136005)(2906002)(38070700005)(38100700002)(83380400001)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?bmxtckZQSG9HdnNEcFUyWlJEOTIxNXdWVTg5V2plTHRUSEM4bGpPaC9BdTRW?=
 =?gb2312?B?UDJNT3RlZFREM1RjSS91d2dxSmZCYlhjMXRxTUppaDJabFpXdXpibTlKUGpP?=
 =?gb2312?B?emN3a2NJMlNnaERkUU16V3M3SGpxQTdoeWptTlRmVGtUMW1OUkJSc2RGL0Ew?=
 =?gb2312?B?Z0FBUWxTdDZrSm5DbWZkZkxsKzhEM0UwckFZQVRPUzNtOURtYnNuc2EyVk5j?=
 =?gb2312?B?cjBkWGdMNFd3c1dySzNVRTFjTi9PbUR5MFg4c2sxTDFmNnBjdWlwbHdkT0VV?=
 =?gb2312?B?RmxxcWZKc28xSzM2RXVlVE5JM0l3eFhmbEx3cVNnckhxb05YQkdQeFV3ZEp1?=
 =?gb2312?B?dTV3M2JPNEFCRFNIUUh2UHFFdTdNcmJzTHlSSUlCTWFWUVV3T3YwemY0TWNG?=
 =?gb2312?B?d200M3Rua3NXSlQrYVViY01iaG5TbGlkVFcwa25YOVUzV0R5S0Z2K2M0SE5C?=
 =?gb2312?B?L0Nhdk9DcjRWQkp4dW1mYVg1YitYWVh0YThKMFNFR1dra0pJVkFLcFBvbndy?=
 =?gb2312?B?SU8yQ1hjOUNoeHFtOTA0SlQ2MEdKZHN2Vll1SWg2NWcyL0FNamhNYkl3TjJ5?=
 =?gb2312?B?OG9XOWg1RlF1TlNIbStNU2k3Q3VxNWNDNmFPMmVzdTBPcHJmOVh1NkFJNWlW?=
 =?gb2312?B?Y3R0YW5pYUJ0Q1JSemNnbWJCb29UL2c1d2J3bGRocE5nMHhlWjFRYlU1K2xH?=
 =?gb2312?B?Mis4a1N3ODZrTHZobExrbmUwbFVPamh4eHlMRmZwdExqNUQxbzdmUExiRFZF?=
 =?gb2312?B?dFMvMGpab3pOOFVHUDg4RTczN3ZzWlh3QVAzc2h3RjNYYk9RaGd3S0JQQlVn?=
 =?gb2312?B?OTNHMHZNdFp2ekUzRHB1UU9yZ0Q1Y3pPYUhKQXJCUE45YnkwM2Z3dFRycEw3?=
 =?gb2312?B?T1RjR2dzRzhDNDVRUHN0OG5jbVhwOVdYVDVGQ0ozQnhoWm9ETVdlUjlQSlI1?=
 =?gb2312?B?REZHeXVyM1ZJTGttbWo1NDJabWpMdjI0Z014TFkrU01HNHIrZjBIbCswWE9H?=
 =?gb2312?B?S0FNaUxUbnhpNWdYandSVisrNVJVV0d3enNNQkdxSXVwVTFKcTVsUTZzNGFY?=
 =?gb2312?B?Qks4ZlV6TFNtR29wK0dNY0xoMm04Y2ppanNBajlxYXJQQlVUM0lkMXJLS2ZN?=
 =?gb2312?B?M0tpYlRzTVNtRGxvRmVGY0lNVUwwOUpIbWRJMGJhakhpZU55Y1lFWW1MY1U4?=
 =?gb2312?B?Q1VGVFN0K3daZDE5TjE4eThCTWQzUDNOditpY2V3aGxENFNnZ2gzZUdtOTVr?=
 =?gb2312?B?aGxFNzNSMzRsSHpMMHFwSE9tNC9ZMnNjRGRiZTJGanY5Y05tczB5UXlaUmJW?=
 =?gb2312?B?ek55Wjk2N0p3a013QlFvMTlCb1VaREhpVU5STDBPWHpPaktNM21wd3FiRVJL?=
 =?gb2312?B?ZnpVdGM1VE4yZTFaNnlWOFdnQjNIL05qd2gyRk0zQXUyL25tWFlwOVh3bjht?=
 =?gb2312?B?bDA0Mzl3TDJOU2F6Tmp1YTBpK2NFR3hUTTNtTVJWd0l4KzZOTFFhZjVtRHdL?=
 =?gb2312?B?eDJBNlBvSmhlRUIzZ1U5VDZxa2hSTmYwTXgzcGpUUjFqV2xtQkN4MUhPcFVV?=
 =?gb2312?B?QnhHZ002cTdDZ3hIYnI2UU54TUJKTTBZSjJ0aHRUclowWmE5b0FVajZ5TzE2?=
 =?gb2312?B?Tnl2L3VlWFZnWnZJeUxmbmxUUHUyMUVIWE9IcC9Jd0Riam5oUUFTam1PZkR3?=
 =?gb2312?B?cWNXL2o2NThNenBKalptdTVmdEcrYVJYM01mUDFGUXVDOGVZSklhMWZzZWZh?=
 =?gb2312?B?aFQxS2g0U1FyTDhHY2NMbXBMVXVydjlKdkZtck9iRVlSamxoZ0thNDd1Mlhm?=
 =?gb2312?B?NXpIbkdnREJLWGxxR3JjTEV2bnRqVURRbDlndWJEd2ZVeUNLd05sZFVZWVNE?=
 =?gb2312?B?WHhhcnRKNHpjenVJVkRHZVdoYzJ4eWY3TmZma0xaNm0ybndJMmxMbFJIVjhh?=
 =?gb2312?B?ZmovdkEySm5iMEtNUzIxNm01WUZDbU5IeXUyelgrK3JyUS9aeEExaldNcDdm?=
 =?gb2312?B?UWR5S2dvT0dLQTFEbUVMZ2FZT3FrUFZtSjV3VnBub2NVSW5ydzdrVGFKYzdy?=
 =?gb2312?B?N2xMZkR0VCtBNngxVnVDZTRwNXdUaWlXQk91NVMweDU3cWJiQ2hVZWl1Sm53?=
 =?gb2312?B?dGN6d01SbGJYMUE1dkZaamtJVzNYdWFKZVBTQ3labFFZL3lPcEZ3NWQvT0FQ?=
 =?gb2312?B?UERsVXMycHIyaDI3RzFxbUJKYWt6aHl3bnZUQVhBelJUYUxwcmtNSmY3WjNN?=
 =?gb2312?Q?zGzJFiLfmf5xmgiDpapaj6enUvcAhCN056q9+kD4KQ=3D?=
Content-Type: text/plain; charset="gb2312"
Content-ID: <2300D8270ECA704ABDE1D3BE4225E715@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB6544.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f254a1a3-e805-4ea6-64ad-08d99ce90ced
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 03:38:20.7375
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sl4ktFdNt09dCXLpDYBbq7nNob5hgHVhURf8rufjWfyirincM+H3IlPK4ipT6rjWsb77f4zgPXCGLySmfODITEdPClBVLOhkpCRivkAYo9k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB4622
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SGkgQWxlamFuZHJvLCBNaWNoYWVsDQoNClBpbmchDQoNCkJlc3QgUmVnYXJkcw0KWWFuZyBYdQ0K
PiBUaGlzIHBhdGNoWzFdIGlzIGRlc2lnbmVkIHRvIGZpeCBidWcgZm9yIFFfWFFVT1RBUk0gaW9j
dGwgbm90IGZvciBpbnRyb2R1Y2VkLg0KPiBTbyByZW1vdmUgaXQuDQo+IA0KPiBbMV1odHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5n
aXQvY29tbWl0Lz9pZD05ZGE5M2Y5YjdjDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBZYW5nIFh1PHh1
eWFuZzIwMTguanlAZnVqaXRzdS5jb20+DQo+IC0tLQ0KPiAgIG1hbjIvcXVvdGFjdGwuMiB8IDMg
Ky0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL21hbjIvcXVvdGFjdGwuMiBiL21hbjIvcXVvdGFjdGwuMg0KPiBp
bmRleCBkMjJkOGM1ODQuLjQ2Zjc3YThiMSAxMDA2NDQNCj4gLS0tIGEvbWFuMi9xdW90YWN0bC4y
DQo+ICsrKyBiL21hbjIvcXVvdGFjdGwuMg0KPiBAQCAtNjUxLDggKzY1MSw3IEBAIFRoZQ0KPiAg
IC5JIGlkDQo+ICAgYXJndW1lbnQgaXMgaWdub3JlZC4NCj4gICAuVFANCj4gLS5CIFFfWFFVT1RB
Uk0gIiAoc2luY2UgTGludXggMy4xNikiDQo+IC0uXCIgOWRhOTNmOWI3Y2RmOGFiMjhkYTZiMzY0
Y2RjMWZhZmM4NjcwYjRkYw0KPiArLkIgUV9YUVVPVEFSTQ0KPiAgIEZyZWUgdGhlIGRpc2sgc3Bh
Y2UgdGFrZW4gYnkgZGlzayBxdW90YXMuDQo+ICAgVGhlDQo+ICAgLkkgYWRkcg0K
