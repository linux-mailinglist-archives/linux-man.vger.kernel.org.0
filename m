Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A10A744126C
	for <lists+linux-man@lfdr.de>; Mon,  1 Nov 2021 04:36:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230233AbhKADjV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 31 Oct 2021 23:39:21 -0400
Received: from esa15.fujitsucc.c3s2.iphmx.com ([68.232.156.107]:32714 "EHLO
        esa15.fujitsucc.c3s2.iphmx.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230222AbhKADjU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 31 Oct 2021 23:39:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1635737809; x=1667273809;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=tJI/tkiRJTFSgzEbEM/Z0U62Qyz1GH4ehd7qNJ6MiNY=;
  b=eV4r6G9g82IMDBQREzHXqfdrySu7UZ1awqjnmPDfr48iTcst1DjrEmLj
   vaey/zwwl8oxI55k98BCNkqDXy+Zlk681Pq4T61FDb9MdXTcBFc/N3cbj
   ASruwV/tsnTjDzZ56oFRndIGMuOV2P2R5mXaiuaDPHlDyL9MMmMc5M2z4
   /oeBTswrpCf7tBZinKXoundcojpMOWFOD41ijIoosyyEwMa0hMzBAFRvq
   6d61qVmBshyWfyYO9gm/C0oY8g5cjhNTP3YCLJTzZ8QxfNSmbYxBh79Lc
   3IXemTyjXF1JJ27FKDB6IwW41wcaJEt93qczHSvBUigwc7Xo6eF48A7aY
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="42491812"
X-IronPort-AV: E=Sophos;i="5.87,198,1631545200"; 
   d="scan'208";a="42491812"
Received: from mail-ty1jpn01lp2054.outbound.protection.outlook.com (HELO JPN01-TY1-obe.outbound.protection.outlook.com) ([104.47.93.54])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2021 12:36:46 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogPUxXHGq4AWHuAWoCFv9GpLuhTWW3z/ebt7HsOFn0x0cVhWcTihrQlDJFTpn7dbByAk3WsreX6V9GrNsMfei5BgVgyLCaJy07wJXIMRBBrkU8SKNGcnrIVsclX5U76M/JRFoXEc6ZhSh18tp4/7aDSjGVSc82y7g6kNXHoQ8gWvxgzyr5BJqyoTVoQrK//siCA9hslP8nxJyJ5JwSBqf4yO+ZmUosyBdO+cFO592ALvFlNBRhbP5ma2Ln8ysxs2+DCFOwqVar6YDfP7fO6H/sqxGTS73s8uqYR5Lg3w1Crz5TAyXFlpE7p7+lNWTVMgXZCtIcm9ZwCsLqnjauZx9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tJI/tkiRJTFSgzEbEM/Z0U62Qyz1GH4ehd7qNJ6MiNY=;
 b=RXIo7A0ObT5hjnEt7F7DaVJGI2StXVIfgz20QHzbmXzn3ZhXbKBxf6eKKNL16CQdOIK04Bht0SPY3Kmf7Rs4WaCKaVa+bDfQHrlEm27q1N6ccwCQBuupyakWkgIwEYOk+/Ja9qu22oL8qMgzQFuUHtOMS1GrBpNr66OQxK7AZHh0RQSQSy2AoNTLFtrs3dJmvj8G8caLfWMffdbXxTtx8D+0PmORc7N47rtT+48edxtYbMC0NHctloBmunWb6IBguf4sDO+VfkNKcSXnOnNtkGZ86lJYxQAk4vkxuo4YQ5BtKEI+IlriVqqx6gAaFv/KbygWnGw2G4Fz8Jm4I6Meew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tJI/tkiRJTFSgzEbEM/Z0U62Qyz1GH4ehd7qNJ6MiNY=;
 b=lgPUCeFLJcZcMA0J8lZCBKRmlhK5IosJtFC7jcBn6Tq0UwpO9w3FgJsi1TCYFy4YEXoQVwSypQQYIUtcmo8gMdN8xGHt+ktKLEYz9jIW8qmqvGbNPNlhzEM9YCaJJeCXvDjkzqVxa3EblIRVNL2G9FaPTL8RaVn7jrN65yoGLYA=
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com (2603:1096:400:98::6)
 by TY2PR01MB3114.jpnprd01.prod.outlook.com (2603:1096:404:79::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Mon, 1 Nov
 2021 03:36:42 +0000
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9]) by TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9%7]) with mapi id 15.20.4649.019; Mon, 1 Nov 2021
 03:36:42 +0000
From:   "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
To:     "alx.manpages@gmail.com" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] quotactl.2: Use correct limits for vfsv1 format
Thread-Topic: [PATCH] quotactl.2: Use correct limits for vfsv1 format
Thread-Index: AQHXxY0t3kR2GR+9ZUGUKxRfS6HMP6vuGFSA
Date:   Mon, 1 Nov 2021 03:36:42 +0000
Message-ID: <617F60D7.2000605@fujitsu.com>
References: <1634718794-2120-1-git-send-email-xuyang2018.jy@fujitsu.com>
In-Reply-To: <1634718794-2120-1-git-send-email-xuyang2018.jy@fujitsu.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 815e05e2-c783-4e1b-1cbd-08d99ce8d23d
x-ms-traffictypediagnostic: TY2PR01MB3114:
x-microsoft-antispam-prvs: <TY2PR01MB3114931FDDBC0DB353FFB7FCFD8A9@TY2PR01MB3114.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:234;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FxHTo8LQpL1DXLSnqtLfu2JAxecJGPfv88FbLwlq+Y2Hw8E7mKosm0h+HSP40ZvL4YLj+DYR0b2OaxOJz58QsLtGqoJl7wFdM7cKGakNKadg9/ipsi+EQxZKpk53qof9RTeMECLgtqFKCkgJzsNw0IS9V3sVkx/UrTvMQebWVFdgXiBGzfi+SWgk0BYKyXM1q/21DseJIJ/UYChm83RCvGb51v7rEwOVYKR6Az+oiFc8/X+Jy8/uDie+e0i7xmW/ULJYxVosO58iBY7JyWe9GRJ0IH+xfYWTxfr4+6JJWj2A/ki6XUrxN74JZjsIX+XHxPsf6AS927zcuH/fgYaUUddnXbdvdSaIPxSpXsmv2EvCCRYC0AM4FU1iXAc52mMF+3VPL/CtIrSw9UyrlfZIMUubw08S8gpopY1zmIxeiLQGEGOMqkX7otluMoHdbXK3Azx/Kz6r7o0GV+UtIsS4V+7e15Vhd9mqPLiDxYvEVVcND/A9xW0rbGAw6aKZqKCK7zfjbU2QgpYSdf/ykEDZ9JJzzf2OL+SSt8GcyLoPdZuswhEB/La3GnYlg1kabU2gXwAqQREAOgNvvsikJafNyKHCZaZfyfrBwwh9VmENv9dvYb3pOJEIK7gslyHfyH0QWoD7UJ4MtcVzIX/j4wn1AMiooNF+p5DeZdrz/xiJXdg5Id2MgyHcEf6vJF7hEgtLCepnljnZ//8vlsMc5b2644at18KpDfSxvxpuRV9Oi3mZdGMEse+r1JLfldtd42M/e/mZWNTCp1YblVify5Raktujq/MMKLY2l+I24oebM2I=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB6544.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(36756003)(71200400001)(6512007)(2906002)(85182001)(38100700002)(33656002)(86362001)(4744005)(38070700005)(8676002)(2616005)(34290500002)(122000001)(110136005)(4326008)(6486002)(82960400001)(6506007)(186003)(26005)(76116006)(66446008)(83380400001)(64756008)(66946007)(66556008)(91956017)(66476007)(508600001)(8936002)(5660300002)(316002)(87266011)(15650500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?Z2hoR0ZUS05kajc4TzJvYUs5VmJJazJ4KzMxOW50Z08xVzVLR3lmVDVTNFUy?=
 =?gb2312?B?Rm92bU9pRFdsT0JwaFFOZEpMSy90SjdYWVdqTmY0OU9ha0Y5WmpqUEJManVm?=
 =?gb2312?B?cnNONnpKZ0NhVXFhWThBb0VMNEU0L280d2txOEtqRzI2dmVZLzFUa2kwbTBZ?=
 =?gb2312?B?WkRoQWI3MUxsL0JLRXBkQ3B6dCsyRG92OHBUbGlQNFNFbjJLK0xjYzRYeUh0?=
 =?gb2312?B?bk11TTRScEFzUk5hR1dLNzVSNWZXRTByWU9xaUp5NGZmOExjeklSNXNlMkVW?=
 =?gb2312?B?ZHdRY0U1RlllV0w3K0hidzdYZlRzd2prRnljK2sxMXRyWStYM3RleGwyZm9r?=
 =?gb2312?B?K20zMFhvQm90K3hiSG5rSnorMzIvbVRsU2lLTWliQVFwNEZjZDF1ek81OUpC?=
 =?gb2312?B?bHUxc3duZk4wNTZ0V0p2ZmRpUHQ3cFRVTFU4QlFFbGJkNUVHS2NIdUFEZk5x?=
 =?gb2312?B?MS9obWxqdnc5YnRrS2I1bWVja3hqWFVicURBay82VmpQOVNETUhxQ3QrRkFR?=
 =?gb2312?B?VkYrcmEyN2w1WnZ4c2R2WWU3QlVkdWJhcVY0VWVDMmtQMVdPVCtheDU5RGxU?=
 =?gb2312?B?ckZyWmtVWGNyOE1WOVRsczY4K2U2Mm9EVTl4YzhudGFmNnhrY3pwWW50VlU1?=
 =?gb2312?B?cWh3SzVmajNmV3A2c1hiQzBPSnQxZk16ZVQvNXZLcWd4QjFYOHg1V0ExV1Ay?=
 =?gb2312?B?dnVWbWJSMUpCRFlsZVNGS3Fmc0lDc25Fazh2V081akxPd1FnTDZjRjc3ZDdG?=
 =?gb2312?B?ajdpaVJyeGIwbk1XVTFsSXNuS3JWNDFnOFB1Wm54RlNVdzdkSWlWR1A4UTBE?=
 =?gb2312?B?dHhURFM2QlVYTkdtYm50V0lUdjhtSERIVUJVYzRDdzBoSXZMSm1DUDMzbTNo?=
 =?gb2312?B?Yzh6QXp1SGQ5NHJzOVJVS2wyY2lOS01FL3FqRG1YNlBjRlhzMWxiNDB4N1o3?=
 =?gb2312?B?OWttL0NlMWRZT0VkdU1rK05rWk4zK0lDMnh0bEJwNjhKc0lZenJuUGhWNWNU?=
 =?gb2312?B?aXVlUzE3SFN1VDFHOWxBcGNiQ0l0Z2ZzTkJMUnpWeUMrMU56UTFGTnBQTWF4?=
 =?gb2312?B?TWxJSmxDR3dNc1Z5NC9oaFd5RHVNRzhZT252azNqeVVYSlkwOXVONkNEUXpi?=
 =?gb2312?B?eU1RdEtxYWREeXJmYmM0Yk9EOVZVT3N4M1VmS0dLZEhYQ3pIYXJnSXZDLzZ6?=
 =?gb2312?B?dURnSWYzSEh1bm1WTWVnc1BFNzZQME9IRTNXUVMwblFvbHc4aTZ1N2tqRFVS?=
 =?gb2312?B?TWE5TVBOaENpYXBuWGMzT3dIZ2lKbitTRXFtS1NUejVhcDBnNk9wUTFzamcw?=
 =?gb2312?B?MFJ6M2NZNXl2cDA3cHREbDlPalA5MGc5RzUzNS9QVTkwWXpwOHM2dTNjOE5r?=
 =?gb2312?B?c0xLZWNSTWtTTW5vdUcxcllhNkFvazhvVDdxblVvTzhnOTMvRnVPa3NMUWR4?=
 =?gb2312?B?OEZkdUUyVGxmcGEyRjJQVDJKamRWdWdIY25IZzFVdGJXVXVadTV1UXdlOTBs?=
 =?gb2312?B?enM2a1h4bUNMamlQeUkrM3dlakQ0N0FvMTNCMFlhUDBTMjV6WmpYazIxeGxW?=
 =?gb2312?B?NG0vUGFaeFBVSzR6RHNUbU5SWGhRb2UwQjZTVDZ6R2dWUXpoZ1J1Q2liMG9P?=
 =?gb2312?B?ODVKWW9EUm5PZTJnQ3hGd05lT3RKTk1id3pvbTdmdnVoWVI4bWVnNGE4R0dZ?=
 =?gb2312?B?cE1hK1pKM09JaEpWdlA4NjNjb1BTUXlNS2xLTFlSSnhGQ1RSSHVaVEUzSGdH?=
 =?gb2312?B?UjlHTXhtYWg3L0RYY09kT2k5WmcrYWxOWVpXUTBwY0M3VFFVdERIb29oRDhr?=
 =?gb2312?B?ckQ1UitlRWx2MWF0ODRKM0hnTGtXbnJhZFVIVmdvOHhJRjMyd2wyWmJFc2hh?=
 =?gb2312?B?V1BJcUswYXlKNFJIQlFuenNwa2hneGhuT3ptUnZvUnQyNTFIREpGZnVYb21D?=
 =?gb2312?B?OXVRMmd1NHZtRzdxQStiTmg5N1N5OGdpUU1NRFVHQ3plQ2thM0VYNHkydXFu?=
 =?gb2312?B?Q3VZSTJaUTNDdFp2M0F5Y3RmM0YycEVRWjd3OThuV2dIUXdMUDBkcUExcDVi?=
 =?gb2312?B?WTNoNS9uWTZoaFlkRnJIRURjUUFxM1hHNE1JZ3Q3amRkbWRnWStBNzdrYnBU?=
 =?gb2312?B?THEvWHgyUmYrQjJ4L1dSWGFmNmxVdGYya3VJSVBhUGF4OXlQbWpNaW5JbUNz?=
 =?gb2312?B?MVVIQXVISTdzaTRybHREQks2OEhjd2VGeEtyUVMrcXJxbUVQQ3hsSTdGRG9S?=
 =?gb2312?Q?xemDUwnA7NdOjW3LyzogsNupxjw1+dceO6KpbAUfk8=3D?=
Content-Type: text/plain; charset="gb2312"
Content-ID: <7A6924AD2F53C54589D40C3480A0943F@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB6544.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 815e05e2-c783-4e1b-1cbd-08d99ce8d23d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 03:36:42.2684
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /TYSMfMpqUNWlAhsLMCtziSSKcyYkLfu4Ez/yg6qWNEu/Yeg0IfTtJJEF09cq+0mKY9xXFTrJBI++GaCTbgplYdmW9P22o1YFM9CnbtUemQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB3114
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SGkgTWljaGFlbCwgQWxlamFuZHJvDQoNClBpbmchDQoNCkJlc3QgUmVnYXJkcw0KWWFuZyBYdQ0K
PiBBY2NvcmRpbmcgdG8ga2VybmVsIGNvZGUgYW5kIHRoZSBmb2xsb3dpbmcgcGF0Y2gsIHRoZSBt
YXhpbXVtIHF1b3RhIGxpbWl0IHNldHRpbmcNCj4gc2hvdWxkIGJlIDJeNjMgLTEgaW5zdGVhZCBv
ZiAyXjY0Lg0KPiANCj4gWzFdaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdD9pZD03ZTA4ZGE1DQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBZYW5nIFh1PHh1eWFuZzIwMTguanlAZnVqaXRzdS5jb20+DQo+IC0tLQ0KPiAg
IG1hbjIvcXVvdGFjdGwuMiB8IDIgKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL3F1b3RhY3RsLjIgYi9t
YW4yL3F1b3RhY3RsLjINCj4gaW5kZXggNDZmNzdhOGIxLi41ZDJhNjczYmQgMTAwNjQ0DQo+IC0t
LSBhL21hbjIvcXVvdGFjdGwuMg0KPiArKysgYi9tYW4yL3F1b3RhY3RsLjINCj4gQEAgLTEwOSw3
ICsxMDksNyBAQCBhbmQgcXVvdGEgbGltaXRzIHVwIHRvIDJeNDIgYnl0ZXMgYW5kIDJeMzIgaW5v
ZGVzLg0KPiAgIC5UUA0KPiAgIC5CUiBRRk1UX1ZGU19WMQ0KPiAgIEEgcXVvdGEgZm9ybWF0IHRo
YXQgY2FuIGhhbmRsZSAzMi1iaXQgVUlEcyBhbmQgR0lEcw0KPiAtYW5kIHF1b3RhIGxpbWl0cyBv
ZiAyXjY0IGJ5dGVzIGFuZCAyXjY0IGlub2Rlcy4NCj4gK2FuZCBxdW90YSBsaW1pdHMgb2YgMl42
MyAtIDEgYnl0ZXMgYW5kIDJeNjMgLSAxIGlub2Rlcy4NCj4gICAuUkUNCj4gICAuSVANCj4gICBU
aGUNCg==
