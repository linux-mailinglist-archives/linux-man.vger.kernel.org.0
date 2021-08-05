Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC3643E0D63
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 06:50:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231463AbhHEEuT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 00:50:19 -0400
Received: from mail-eopbgr1300078.outbound.protection.outlook.com ([40.107.130.78]:21760
        "EHLO APC01-HK2-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230337AbhHEEuS (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 5 Aug 2021 00:50:18 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MvzZ7/Zfg9bcyaiYhxxMbqedPs9XZTmTexFF/z6nwmwebh7L6l9Yn70duxkvEpd4bQSjeVo2ObvSUyhYpXaY7ldN4nVIrLqRnUF6IB0cE6MLiO9DUkUdHgfmxbvnzNbkdzT29uRmCC81vv7O0rcDu+wn+PzbDaJoJcCzEL6hpzGvm+z5p2W/jiH2ctwMwbUgauJvQdnxwxKwIqnvUeuz8b6c6AkpxIB0LaVQ820M3n6Zu9lK+9IZ44sdwSAybHZixeu9pK3AOq1Om7kTIlIf3pN17U8FisO4oqbOm0D34ga835mU7/h/PWg1tGWMmCFcO4BrusggpUonbdpeM1L+7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTUP2sWyUaVKpjlW6stSffKv5Y1hK0djn6P8O/STMOI=;
 b=CxA0iFaTm8y2q2wx7yTpiGrShYNn+cgzv9V5Cl3i2MQPrGGKtC1BRjdum1Cm+IfjQ5t2HnwN81BFVs24/4ydhlpdtpRDoNv8NzkkNISeahRfHVe4qQj0kd/1jk8z8F+3QSmwueGN1I3ig0yNXKh4CTJE6vfBlSfMW72EdLCVYHgxjfuHIGi1ao95mRJH6psqoOlTU5uj8HiZnh53BeKevpbqokuf79+qRw8BLxkdpNGljGW1KnJ4pqFO8U4wpvNZzyrS+zsnpsBeWWzYK5gsgbpFwYLiOu0o2CTOAfZGsYXORYXdQqi7CMLekhSZNcSmB8sNSSNZmfraIkrtaunEwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oppo.com; dmarc=pass action=none header.from=oppo.com;
 dkim=pass header.d=oppo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oppo.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTUP2sWyUaVKpjlW6stSffKv5Y1hK0djn6P8O/STMOI=;
 b=gdmGDTKUaI3wk/9pkXCqYM1rO9x0U4GIiddMwfbxnDCs7KAc24xwMMlSqKMTu2RFkP7Sxl+DrnyK9DEkB1iINjdBDsAaV1t8Ysq0ut8+R9lPaxf2aBfQfeBBYUDyDgEUut2N33OAUa9Rld7gbHUViyRY5xmyrD8dOPKNDyOYffM=
Received: from HKAPR02MB4356.apcprd02.prod.outlook.com (2603:1096:203:d6::16)
 by HK0PR02MB3428.apcprd02.prod.outlook.com (2603:1096:203:3b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.22; Thu, 5 Aug
 2021 04:50:01 +0000
Received: from HKAPR02MB4356.apcprd02.prod.outlook.com
 ([fe80::d4ab:76fc:6326:a0eb]) by HKAPR02MB4356.apcprd02.prod.outlook.com
 ([fe80::d4ab:76fc:6326:a0eb%5]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 04:50:01 +0000
From:   =?utf-8?B?5byg6a2BKEt5bGVyKQ==?= <zhangkui@oppo.com>
To:     Andrew Morton <akpm@linux-foundation.org>
CC:     "linux-mm@kvack.org" <linux-mm@kvack.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] mm/madvise: add MADV_WILLNEED to process_madvise()
Thread-Topic: [PATCH] mm/madvise: add MADV_WILLNEED to process_madvise()
Thread-Index: AQHXiQmYnOv2MsH7ykqpGVqJzSg8G6tkKj8AgAAuXwA=
Date:   Thu, 5 Aug 2021 04:50:01 +0000
Message-ID: <804fa82c-74cc-e634-381a-8f8b0b1e3227@oppo.com>
References: <20210804082010.12482-1-zhangkui@oppo.com>
 <20210804190402.8b9dbac3c4f417945c6d1de2@linux-foundation.org>
In-Reply-To: <20210804190402.8b9dbac3c4f417945c6d1de2@linux-foundation.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux-foundation.org; dkim=none (message not signed)
 header.d=none;linux-foundation.org; dmarc=none action=none
 header.from=oppo.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f11dd96c-bbea-471f-a3fd-08d957cc7bda
x-ms-traffictypediagnostic: HK0PR02MB3428:
x-microsoft-antispam-prvs: <HK0PR02MB3428196B5D7AD3427F386035B8F29@HK0PR02MB3428.apcprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CsQMdb2FprIo35aoRUcpf8CLlC7fguwuwNKhxlvRB6HcizQdjzFh6DSaxzqX5cs5h78EbrmjXDo9rGdaGMrICIM6gMIJjfJKaG0xEAgmcCTA68q2cRYOkd0D03aJvYJhLv1ypXW+/Eq0F7rzzr5X7/r1b4keauSAYmlm3ZCpGymZE0npGHuS8MWdsRjSyrXiXBsi+P8TySOs6rfFWI09DjnDyOwc69ILEeXRRohIZVDImWgIhdUt09YSZEveO4fnDVrmjT6do1a+KIiBETts41ToY2p5V6bA9lQNEoQZB1wilymJoNaq/2S+uGfhKM7MXKTb2wsp7VLV9clXcA9LSr8uTBEraXpBwyVejFKXp5X4T7FwPF8lr7iFeqKgz1NOHARBxQmHP6ZOt2o0zTb7htxIEx3yeYhG3Ex76eUfZVp80tz5umw9iiOHFNQQtwr60Ugei30tz92lKhFLU19ynlYc5A3NnT2FkzJerD81+zvhQeLQzzhJ3ofy5PQFVnO8Eo7Knx26ibdM4QxfI7zirRw50G2nOBkqCUkLpWUO+gnc2ifNKda0MP8TWO9Zi4Hz51d3javuKlAzR5njUY1CgHnF8+ELUvQoOPIb8vamEAcITEoxx+mPS1dM+hIl1lMoKgk9SewgElqqnigGKR3q9VQ6VasnN0q+TizUHqIeNSn9E0k6e03RFf2q+qLwvR/AhZ1TqnRkRnIaLRIzESyXY7HShztUahNMlP/zb5i1RPy/2wX0hnfX3Pznw4DKruIl9sNA+Lsp/2swIODYkzuu8EFKqrVLeARKhUy/ZrCUjdyndQP9xNichQyHrsx1SMte/JHmYT4JQC+w5AiGrNb2Lw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HKAPR02MB4356.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(39850400004)(346002)(366004)(376002)(4326008)(31696002)(66946007)(316002)(66556008)(6506007)(2906002)(66476007)(53546011)(66446008)(186003)(64756008)(36756003)(6916009)(2616005)(38100700002)(85182001)(31686004)(54906003)(8936002)(86362001)(966005)(122000001)(38070700005)(71200400001)(26005)(83380400001)(6512007)(478600001)(76116006)(8676002)(6486002)(5660300002)(11606007)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eEltcXhWQXBRMllGQnVoalpqK0ZjMU9lRU9HRHVFY0d0TXJrc29Nb3N3L3Vv?=
 =?utf-8?B?aDliWDhOdkUyUG05MEdIQU53WmFsUUp5RDNuMzZ1R2l3c2JDNzJlV2ZjNVQy?=
 =?utf-8?B?d0FEWWxiOFh1QmJIZUFqWXd2dUoweDFpOVRvbllBL25ia2FnMmIwSzYwTUp6?=
 =?utf-8?B?b0lrbTlkT1grQTdoZHY0dXFiQVRhZjNhNXM4NUJiK3VPSXNrVlJoWm0yVndX?=
 =?utf-8?B?RVFFczU2TmNuWm1VeTB1S1dZeUEzRGNJRFM0aW1HRHJhVzF4VExBVjdCdkkz?=
 =?utf-8?B?MHhBZkljNnR2QUxOa0JmNWhWYVl3cTN5UlhzVFpQZ1FEQk8rL29XSWcxTjhr?=
 =?utf-8?B?OUVmQmsvWEYrMUFUd2N6ZVllVDcyTW9Fa2hwNHhhKzVPeDluL2YrbThlTVNC?=
 =?utf-8?B?QnpxV2c2Si9MVEtzS3c2QVVsYTRiV0xwekpna3JHWTlqTVZ6Ky90UmRwRG00?=
 =?utf-8?B?Nm9VSjMyWXFPM3FsYy9lWUZyT0hxNDNaeHlDYmNJSC9FdDlhOC8xdWFHMk5w?=
 =?utf-8?B?VENTSHEwSThLSTQ5ZHBieEpLMXlWL0lMSHo5eDdoUWJiUjFURkRwVlZBMURp?=
 =?utf-8?B?RTRJRHFpR092dDl3c29JVnRwbFFrTUNQdXJmOHZuZW1hT0UwbDg2Yno5SGZW?=
 =?utf-8?B?aWhvN081YU4zT0R0cTNXQ3N1UFpkS3lJS3Q3Q1pvUHZ3UVEreWt6cW5QNDdJ?=
 =?utf-8?B?aHUvMHZNb29VZU1wckwwcktxckNONmpjQm0zem5yVmJJY0VwMkwxa1NWMnk4?=
 =?utf-8?B?b2F6L0NNMTg0YjZabTVCek5WMUVaQXBKcVBlZmRONlZDdTdRSUdXbmxKTUNs?=
 =?utf-8?B?K2pWRDhqRFkxQUZWcUtZajAzUFJseVJvUks4ZXdNUm5sUVVpZzNUQ2xCeUZ4?=
 =?utf-8?B?NjBza0lUaHRKc1d1SDkvQXlFT0R0TmVDL2ZSQUZwYjlUb1plNUQzTkVyMWdl?=
 =?utf-8?B?cE11RnMycFZzdC9FRUFWUjlSK1FOYVJEMldWRTFaRlVkR05SbHo1VUVlcVNL?=
 =?utf-8?B?U2xSUllZNkNJSWtINFBFbHJWbXFGK1Mrdlp1TnVxbU1HZXhxRW1aS3lDcXFW?=
 =?utf-8?B?RklRNnd0N2ZRMS83Yk0yZDJPbWR6bWkxZCtOVzZWUCt5U0tBOTFvT2YzM0ZI?=
 =?utf-8?B?OEdRTXFTdjNONFloWXk1YVlndnlTR29ISmVQMzArNmpiSWpoMVVFQVYvVjFi?=
 =?utf-8?B?Qi9PKzcxS2FLNURCU1lSWDZ4SEZoSXh1Zm50UEtqaWxDY3RqYkNVVFNSRXNr?=
 =?utf-8?B?OEZTUWtjWGtOYjNzRC92eTJKL05hd3g3cVJvQ3dJaWV6SzlQOGF6aDMwQnFE?=
 =?utf-8?B?dXkwQ2JkbUZ3a2loWGIzY09qdGZBcGg2M3lOK0tFbEJvdHYrTm84RGdBNGlE?=
 =?utf-8?B?OEZPZnVQNVBKSVh6ajRSVFMxZ0lVQTB6ZVNBdS82YUVvTG5CZlNHTzV3eHRp?=
 =?utf-8?B?blNaaTRPNldadG1LZG9ZT0lpZlJpUmNhWjI4R2tncmpoZ21uMkhIN21yZVg5?=
 =?utf-8?B?ci85ckx1eEs0cnZGajE2dGUwWGhwRWtLcUpOdnJFYUFSbVRZTHN4MnR3dGNB?=
 =?utf-8?B?aGI3K0pNUzRjTGNkMWFvQUJVWENsWGpwZmdaRkR5VTJRU290a3RwYllIbWxC?=
 =?utf-8?B?Wkg1UjhjSFZiVUpucGZ2eEttNnlGek9WUDYvL0pBNlhkb0VsbENpY3J3ZlJR?=
 =?utf-8?B?MmV5RnhwSFArQk1WZG5OU0EyMVRrek9LUmo4SUxmb2ZzMWk2TEwrUzBWZ3ln?=
 =?utf-8?Q?EcJ5/JD/+XVgkJ3NY8=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <FE4F83DC8F91A5488A23F0F49D97F5BE@apcprd02.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: oppo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HKAPR02MB4356.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f11dd96c-bbea-471f-a3fd-08d957cc7bda
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 04:50:01.0904
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f1905eb1-c353-41c5-9516-62b4a54b5ee6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q8CJq2j0Wq6mm/GLRb5LZ/HwQlUZvq1ui2HxUd6C84+LDXG35y+9E6KBVsoTh2PBpxSFP1QUYABZUeadwWMn+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR02MB3428
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

T24gOC81LzIwMjEgMTA6MDQsIEFuZHJldyBNb3J0b24gd3JvdGU6DQo+IE9uIFdlZCwgIDQgQXVn
IDIwMjEgMTY6MjA6MTAgKzA4MDAgemhhbmdrdWkgPHpoYW5na3VpQG9wcG8uY29tPiB3cm90ZToN
Cj4NCj4+IFRoZXJlIGlzIGEgdXNlY2FzZSBpbiBBbmRyb2lkIHRoYXQgYW4gYXBwIHByb2Nlc3Mn
cyBtZW1vcnkgaXMgc3dhcHBlZCBvdXQNCj4+IGJ5IHByb2Nlc3NfbWFkdmlzZSgpIHdpdGggTUFE
Vl9QQUdFT1VULCBzdWNoIGFzIHRoZSBtZW1vcnkgaXMgc3dhcHBlZCB0bw0KPj4genJhbSBvciBh
IGJhY2tpbmcgZGV2aWNlLiBXaGVuIHRoZSBwcm9jZXNzIGlzIHNjaGVkdWxlZCB0byBydW5uaW5n
LCBsaWtlDQo+PiBzd2l0Y2ggdG8gZm9yZWdyb3VuZCwgbXVsdGlwbGUgcGFnZSBmYXVsdHMgbWF5
IGNhdXNlIHRoZSBhcHAgZHJvcHBlZA0KPj4gZnJhbWVzLg0KPj4gVG8gcmVkdWNlIHRoZSBwcm9i
bGVtLCBTTVMgY2FuIHJlYWQtYWhlYWQgbWVtb3J5IG9mIHRoZSBwcm9jZXNzIGltbWVkaWF0ZWx5
DQo+PiB3aGVuIHRoZSBhcHAgc3dpdGNoZXMgdG8gZm9yZ3JvdW5kLg0KPj4gQ2FsbGluZyBwcm9j
ZXNzX21hZHZpc2UoKSB3aXRoIE1BRFZfV0lMTE5FRUQgY2FuIG1lZXQgdGhpcyBuZWVkLg0KPg0K
PiBUaGlzIHdpbGwgcmVxdWlyZSBhIHNtYWxsIHVwZGF0ZSB0byB0aGUgcHJvY2Vzc19tYWR2aXNl
KDIpIG1hbnBhZ2UuDQo+IENhbiB5b3UgcGxlYXNlIHNlbmQgYSBwYXRjaD8NCj4NCg0KSSBwdXNo
ZWQgYSBwYXRjaCwgcGxlYXNlIGhlbHAgdG8gcmV2aWV3IGl0Lg0KaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzE0NzIzODAvDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KT1BQTw0KDQrmnKznlLXlrZDpgq7ku7blj4rlhbbpmYTku7blkKvmnIlPUFBP5YWs
5Y+455qE5L+d5a+G5L+h5oGv77yM5LuF6ZmQ5LqO6YKu5Lu25oyH5piO55qE5pS25Lu25Lq65L2/
55So77yI5YyF5ZCr5Liq5Lq65Y+K576k57uE77yJ44CC56aB5q2i5Lu75L2V5Lq65Zyo5pyq57uP
5o6I5p2D55qE5oOF5Ya15LiL5Lul5Lu75L2V5b2i5byP5L2/55So44CC5aaC5p6c5oKo6ZSZ5pS2
5LqG5pys6YKu5Lu277yM6K+356uL5Y2z5Lul55S15a2Q6YKu5Lu26YCa55+l5Y+R5Lu25Lq65bm2
5Yig6Zmk5pys6YKu5Lu25Y+K5YW26ZmE5Lu244CCDQoNClRoaXMgZS1tYWlsIGFuZCBpdHMgYXR0
YWNobWVudHMgY29udGFpbiBjb25maWRlbnRpYWwgaW5mb3JtYXRpb24gZnJvbSBPUFBPLCB3aGlj
aCBpcyBpbnRlbmRlZCBvbmx5IGZvciB0aGUgcGVyc29uIG9yIGVudGl0eSB3aG9zZSBhZGRyZXNz
IGlzIGxpc3RlZCBhYm92ZS4gQW55IHVzZSBvZiB0aGUgaW5mb3JtYXRpb24gY29udGFpbmVkIGhl
cmVpbiBpbiBhbnkgd2F5IChpbmNsdWRpbmcsIGJ1dCBub3QgbGltaXRlZCB0bywgdG90YWwgb3Ig
cGFydGlhbCBkaXNjbG9zdXJlLCByZXByb2R1Y3Rpb24sIG9yIGRpc3NlbWluYXRpb24pIGJ5IHBl
cnNvbnMgb3RoZXIgdGhhbiB0aGUgaW50ZW5kZWQgcmVjaXBpZW50KHMpIGlzIHByb2hpYml0ZWQu
IElmIHlvdSByZWNlaXZlIHRoaXMgZS1tYWlsIGluIGVycm9yLCBwbGVhc2Ugbm90aWZ5IHRoZSBz
ZW5kZXIgYnkgcGhvbmUgb3IgZW1haWwgaW1tZWRpYXRlbHkgYW5kIGRlbGV0ZSBpdCENCg==
