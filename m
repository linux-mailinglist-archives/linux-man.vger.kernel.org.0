Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28168445E6B
	for <lists+linux-man@lfdr.de>; Fri,  5 Nov 2021 04:05:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232130AbhKEDId (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Nov 2021 23:08:33 -0400
Received: from esa9.fujitsucc.c3s2.iphmx.com ([68.232.159.90]:9757 "EHLO
        esa9.fujitsucc.c3s2.iphmx.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232146AbhKEDIa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Nov 2021 23:08:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1636081551; x=1667617551;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=LqadG82DMpvMqxQYWNHjQeq13ClWn9KPAHzjihghvOk=;
  b=OddUmVjtoic3hceuJ4c/E1cLEMK+L3P5fKgAAeAiGV1hOU5uSbdN3QDx
   5j6E+8TnkmkHiGfuWdXrmr3AtH95E0MWglV05S2Wq9oh85ChMXzw8zz7D
   FNmF56DDNlixc7gj475uGMhRVZCdpsaANRzLxUHxwNkJ9ZAFpdiTqvsfr
   5qkoOyZ84fXO22QusVRQxjc1EeoP0UfDRb61AS8iTwU5+Y6vCONs9hwv3
   EqRupeNNa61ROTIv6eH2ogk8JihNunXaTp6mj1xloie8tsGHm8ny3wlWz
   yvMVupPeo/C6BKAVH1fari6Xjhc3S3hBnbCUQ+aVnje8jdEyKtveOxrEL
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="42934866"
X-IronPort-AV: E=Sophos;i="5.87,210,1631545200"; 
   d="scan'208";a="42934866"
Received: from mail-os2jpn01lp2054.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.54])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Nov 2021 12:05:47 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MI4ok6bOIOnpo54xZhuSYt/kHJdoA0TdkCCqs01/Jd197wS3RVB0G3t3/sBZNlbpyfUmIfxT0s2K6KdleYhyBm/uApJt5vg3e9Q2PoOlWIS+eVggjPuFUpJJAcyVTt2/lzcUsZ2ysNT8B3offCItiCN09jDQK3PCiCa8QGyIE5tM9xsn/RI1l06Rt+Id0s9CDkBcWzSucGjU+vqSKG0CAqwxg7cBrMH6kAUzMzqdV2cSekGewBjpH2nqiCIzkLspOAw2rAbGsXZDOr0AogRIczlGep0dT5PS22pL5+9lFJwtEvZpSHWvT/S+FnJKY4no6l36wo+bagqigt9rys1wtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LqadG82DMpvMqxQYWNHjQeq13ClWn9KPAHzjihghvOk=;
 b=TOJ9La4rdi9JnhhWjy+rAVm3la0m2mLvf8TCom9DF4pM2fzv6Nmq3qWVT4WJ6JCdNjWf8Eweisr5675cc8KK6ry39KEZNsmskStsD5FScSclmuWFFDXZkS4lyid+YdwEz2K88VeIRpydg/eKUI+2Fq1LUzLbMp8Ck4Num52NRSPbrsc2vr6NbNj8sQSDV64etpCvvr2aOZ/TZaOn98C1w0bQA3sRqXyK2PYtYJrjZ8KJzQbS8zL6hlu3PBuGUTz+pFis4oP990pMKG9bSXHNNUM47Q7IvokyNSftMB3D4OxPZ7qxp7u1ynZHW0F4cecDAXltgDIHbB8Z0zdb7ILKGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LqadG82DMpvMqxQYWNHjQeq13ClWn9KPAHzjihghvOk=;
 b=K7/OCbyWTo7qaMEMko2D0kW435S0l7DgA6PSZnvQpxNWgC6Xc2SCmxViLRyvpr2kYTZE+z7Xha3X8tFRs9utEiKUkMBtF8aQpSs/+Y6CT7OZUFOBIwCNINTWFQk7NwiqMy8ccslaRrMTkfY+63b1BrO+iYyaislqwc4+ICXrQo4=
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com (2603:1096:400:98::6)
 by TY1PR01MB1724.jpnprd01.prod.outlook.com (2603:1096:403:7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Fri, 5 Nov
 2021 03:05:44 +0000
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9]) by TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9%8]) with mapi id 15.20.4669.013; Fri, 5 Nov 2021
 03:05:44 +0000
From:   "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>
CC:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Topic: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Index: AQHXxVROpR5fexAzmEGKVloBqdrEKKvuGTkAgAOD44CAAALqgIAAU8cAgACvqYCAAKYvAIAAm6QAgAB0LoA=
Date:   Fri, 5 Nov 2021 03:05:44 +0000
Message-ID: <61849F99.80502@fujitsu.com>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com> <61825419.1080502@fujitsu.com>
 <6182568B.30705@fujitsu.com> <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com>
 <6183302D.8080102@fujitsu.com> <20211104105308.GB10060@quack2.suse.cz>
 <e3dbb664-6745-e7d2-e414-268cea320df3@gmail.com>
In-Reply-To: <e3dbb664-6745-e7d2-e414-268cea320df3@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: edd2362f-26dd-4c49-14b6-08d9a0092885
x-ms-traffictypediagnostic: TY1PR01MB1724:
x-microsoft-antispam-prvs: <TY1PR01MB1724D82E5646CD0D8DBA2C18FD8E9@TY1PR01MB1724.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 76LE/gIVmoQ0b/Lvhy2N7hYpQuKBxJtNSmdEPWvKMiXR59RcnUyX0sFWSUTtU4c/154qOA7Dc7V2asmewwp++IeJSustY+89WblQk7pJCsxiCOrg/ctriVjjarWYfSQfHcrcFRvfux7EWox1QrbqJ9jeZh4JTeq+ifcAW83VA+V0tyQcxrdmC04pQXiOCmas01oXNkoK8ql8mMiT/W1Io2saSvQZWbqQph76IQ2EErwLrkNkpKpPnA/WHjb+/z5Onf1Iiyo3ZyK+oCnkhCqxjMJrMYzO8nZdTgMz212xP1KOvoFE/GjM2HEU+vL6GuUh3O9VP7PTSn950VQVP/5CPiqEos6GVQduZurADdK3BAGa2AR+PFDcjHBMbDXEZuD/4rdb5hR79gMc0ClUuqe/WDZ+av9nJQFBDW/drzQRWF6rIozBkzur8/QtMjg94vLyek+l2/qQ/gqlkozXw6hxsrpzLa3I2IW8S9qrqNSf6m6KUsizsWutrrz6CbEf/mQGnYRek14yOtFLQPUuP3mFlX0Asm0ZaLs5xooWkg79ITpp/Or4jhaWr5DgqiT4v7r4NghDlPp7JVVUBINcx2qKJCiFXW/pxWZzA3PwNdMQEeOPlZ4ViyF6x8z1aYXjJl3Vs5x457FWaD0Y3Yt0SEHJ1lTTNkbVpEEuQtLM1CAGukUyGQKbB5pVDps5r4AWq2580TARhOye3hziu+AjgJC0uQLMybk13FuXHjxpQnK3jWR2uSsyeJjhpMyGmdqt9z1OOULRlVh83pT6jMBTS9AR9tSvAi5VupGz/aXz8jbWiug=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB6544.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(5660300002)(86362001)(2906002)(54906003)(66556008)(110136005)(76116006)(85182001)(6486002)(6506007)(91956017)(66476007)(64756008)(66946007)(82960400001)(66446008)(38070700005)(316002)(4326008)(33656002)(122000001)(83380400001)(966005)(15650500001)(2616005)(508600001)(6512007)(36756003)(53546011)(71200400001)(38100700002)(26005)(8676002)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VXcycEZjTzhmVzgycGJ6UkVYRmZiWlp1NElBVXB1LzJLTmVmVDllNi9WUWRl?=
 =?utf-8?B?akZ1ekFIZUJzYmxTOUVVRkdrSkN3NCtkZlFYV080L0R4M0xtVHFUUFZLeEd1?=
 =?utf-8?B?UU1ZZDZaeWJNMW1yYXV6T2RESGhVMkh5aDBPMGF6Q2RRZkZqSVlkcWpGQVI0?=
 =?utf-8?B?d3pkOEhUMUdQeWQyRGkzTjVINzVqazVRcmJjVW94MjQ1RFUzem9zZnZRTmZC?=
 =?utf-8?B?VkZTREZDeDhuVDBONm1QYkJ2YXF5Q20xYXdMSDdTdStPMnlHZ2JMQnlkYzA4?=
 =?utf-8?B?amMyVmthRWtCTDNyTVBYejlFQjNqU1ZXRVZwUHJTQ2V2TE5vT25NOEVnbThu?=
 =?utf-8?B?ZHg2LzJ0cXVqY2duUVo0OElWZ0tpR1lpWDVSWDVtOHpJdTFIMXh5OW1ZWCtj?=
 =?utf-8?B?UzNoU2JKZDFkajZMZHk0bDRiQVF6S0dHSU5QdlRoNUwrQUxXTW9pM0hYMDVZ?=
 =?utf-8?B?UmI3TWpmL21GczF3ZTZ3YjZXVS9uQktMeGhGeTBobDhQcnVUY043ZEppTlVh?=
 =?utf-8?B?R2lVUHJOWnp6UENHUm9BVjFQVWFjNnJhTjlNR09LVXRNWmU2YW5NUUgxUFc1?=
 =?utf-8?B?VXpqd09uUzJ6MXF6em8zSkdVaks3OUxISkp4Wm5GZXU3UVpzNk1xczUrZFJl?=
 =?utf-8?B?N1ZNaXNqRWFMSHhONTRDTDFScSszNzNIMS9PaUlacGhZR3FwSHhYUytPSmty?=
 =?utf-8?B?Tyt3dXZ4NFhwem9ZaExqWWszbTdrV29WNjR5YWpzdURpTXkxS2UyT1BCOGJZ?=
 =?utf-8?B?d0cwaXA3QU1JZDlKZ0JIUG93Q2E5T05kNDZTV0tCdTJWeWxEWHB5dHMvS1VK?=
 =?utf-8?B?SytGZ2Vaa085eTluY3k1WVRqOHY5ZXhRQUVaRm5TeEp2aXd5WWxuSitINmVq?=
 =?utf-8?B?cjlNek42eXA1T29DK3R3a0UvWU1lMXNCSm9UYXMvTzJWeWNhT3JXYmxoYjU3?=
 =?utf-8?B?M0VnamlDT1VFd25MM1NoWjZ4c1N5bHJUc1U2NGVZc2J1VXoxU1RHMVNyVmQ5?=
 =?utf-8?B?UmF2dnpMb1dBUXM0bTg1Qkc4WEJVRWZmYmxzU254U1VuVDdQMVp3dEdaaVIx?=
 =?utf-8?B?SjBwaGFIZ0hqUFE0aHUzWVNpVDNWRVlHSXZVK2Q0cUNtMDJIS3FJSHB5b0tB?=
 =?utf-8?B?dTVkbkRYQmFobVhWL09YQTJLRC9yaVNsRENtSVIyemF6Q09NODBGTDVkTXBa?=
 =?utf-8?B?bzhyQ3BKZHdCeklIRWpYRXZ1N2F0RXVOVFd3YWNkeUdyRjFCM3JZNTNRS1BZ?=
 =?utf-8?B?a240OER2LzQzSHBHU1pBRE51Q3NsTGhuek5ZbUQ2dVFHSWNDSU5aWjMwcmwy?=
 =?utf-8?B?RU95RHBZS0RaYTVXM0lVRGcvNUJzb3ljTW1scVFYS3NkL2UzTHg3cXVjZmdZ?=
 =?utf-8?B?VC9sVDlKQnl6RE1wdlpBd2kxUGtrSmtYNmdmb3J6Ym4rd3V5MUJPQjh1SUt2?=
 =?utf-8?B?eFkvMnU2TEQyZ2VNOEZpek9UQTh5RG4xQ3B6a2U4c2EvRVkxbTYvTUx0aFlG?=
 =?utf-8?B?OWdCU0JjK2JFQkMyZ3hiaklZc2hQYk5EK3ZoTEVqZGxVK2g1K2E5ekZXSTBw?=
 =?utf-8?B?aEErdGcrS2V0c3RyQjFNRnZhOFhLQ1hNcU5wVjJNVmRobGVubnpTbWs3eHdv?=
 =?utf-8?B?Qnc3TVRBMFhoSXNDTWFodmFzSFdxaGZNYUJrd0ZSRkswZjhBNFhQa0xjN0lV?=
 =?utf-8?B?S2FJYTdhTTRQK3FhMjhhOGZsV2NKbEVudFl1OFYzVkNnMXl3cm4rR2JoZmtp?=
 =?utf-8?B?R2lTNUpQS3dOOUI1TUVGV1BrV3pDNTJwdGhSenBwMm55VktXdGhuMERlaW1l?=
 =?utf-8?B?a3MrcTZtUlBGYUYxblF5bWRYbkkrRzkyZm0xR0U1RFpKU0FnOTlkeFdqeFpI?=
 =?utf-8?B?VlBlVGhCdTRJLys1Q3R4UThzRTIrQVNFcGxob09hQ0NMMGd5ekNpMmlORC9x?=
 =?utf-8?B?dWFqQWwwRXYrMTEvZjhiVzVWNW5XVnQ0VWJaRkJJbDRsM0tzQXRET0FkREJj?=
 =?utf-8?B?OVZDUUtWTHFXVk9xMzZDNGw1eGQzVjZOd2Rqb1JEeGkxY05RbC9EdGZtbFJq?=
 =?utf-8?B?UDlRZzdpS3ZETWJQY2R6MFRJQzNuWEpRTThnUnE1N09ad1JIME1IaVFQNTE4?=
 =?utf-8?B?bWtBWGRvUGpuUjNSZUJZUDd6RmJDem9oL2pKU3VCOUUyWW83TXBsOWw1aWR2?=
 =?utf-8?B?aXNPVWREMVVhOXZkRVZjbWtZZ1BXbjBOZWwvbmFIdHpWY04vQWhBWlZNdk9o?=
 =?utf-8?Q?ceispXkVzcJ3RZOsQ9ZtghWdiL+Zjgzk2mVUyBPN+o=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A2336BEDC9722E49A3CDF43A681CA96C@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB6544.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edd2362f-26dd-4c49-14b6-08d9a0092885
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2021 03:05:44.3719
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rqYS2XKgjqo7/Q2mTbvIMUTsbdVoKGMyjQ/S+CDiHe1ZTUuk5sOXsk5W4pW8Ht8KznaYgMy4ar1vnceE9xlwuP3vXVunGLElggY13KbPh58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1PR01MB1724
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

b24gMjAyMS8xMS81IDQ6MTAsIEFsZWphbmRybyBDb2xvbWFyIChtYW4tcGFnZXMpIHdyb3RlOg0K
PiBIaSBKYW4gYW5kIFlhbmcsDQo+DQo+IE9uIDExLzQvMjEgMTE6NTMsIEphbiBLYXJhIHdyb3Rl
Og0KPj4gT24gVGh1IDA0LTExLTIxIDAwOjU4OjAyLCB4dXlhbmcyMDE4Lmp5QGZ1aml0c3UuY29t
IHdyb3RlOg0KPj4+Pj4+Pj4gVGhpcyBwYXRjaFsxXSBpcyBkZXNpZ25lZCB0byBmaXggYnVnIGZv
ciBRX1hRVU9UQVJNIGlvY3RsIG5vdCBmb3INCj4+Pj4+Pj4+IGludHJvZHVjZWQuDQo+Pj4+Pj4+
PiBTbyByZW1vdmUgaXQuDQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gWzFdaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/
aWQ9OWRhOTNmOWI3Yw0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+DQo+Pj4+Pj4+Pg0KPj4+Pj4+Pj4gU2ln
bmVkLW9mZi1ieTogWWFuZyBYdTx4dXlhbmcyMDE4Lmp5QGZ1aml0c3UuY29tPg0KPj4+Pj4+Pj4g
LS0tDQo+Pj4+Pj4+PiBtYW4yL3F1b3RhY3RsLjIgfCAzICstLQ0KPj4+Pj4+Pj4gMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+
IGRpZmYgLS1naXQgYS9tYW4yL3F1b3RhY3RsLjIgYi9tYW4yL3F1b3RhY3RsLjINCj4+Pj4+Pj4+
IGluZGV4IGQyMmQ4YzU4NC4uNDZmNzdhOGIxIDEwMDY0NA0KPj4+Pj4+Pj4gLS0tIGEvbWFuMi9x
dW90YWN0bC4yDQo+Pj4+Pj4+PiArKysgYi9tYW4yL3F1b3RhY3RsLjINCj4+Pj4+Pj4+IEBAIC02
NTEsOCArNjUxLDcgQEAgVGhlDQo+Pj4+Pj4+PiAuSSBpZA0KPj4+Pj4+Pj4gYXJndW1lbnQgaXMg
aWdub3JlZC4NCj4+Pj4+Pj4+IC5UUA0KPj4+Pj4+Pj4gLS5CIFFfWFFVT1RBUk0gIiAoc2luY2Ug
TGludXggMy4xNikiDQo+Pj4+Pj4+PiAtLlwiIDlkYTkzZjliN2NkZjhhYjI4ZGE2YjM2NGNkYzFm
YWZjODY3MGI0ZGMNCj4NCj4gSSBhcHBsaWVkIHRoZSBwYXRjaC4NCg0KVGhhbmtzLg0KDQo+Pj4+
DQo+Pj4+IE9rYXkuIFNpbmNlIHlvdSBhZGRlZCB0aGF0IGxpbmUgKG1hbi1wYWdlcyBjb21taXQg
YWU4NDhiMWQ4MCksIEknbSBmaW5lDQo+Pj4+IHJlbW92aW5nIGl0LiBXYXMgaXQgYSBtaXN0YWtl
PyBUaGUgY29tbWl0IG1lc3NhZ2Ugb2YgdGhhdCBjb21taXQgaXMgYQ0KPj4+PiBiaXQgdW5yZWxh
dGVkIHRvIFFfWFFVT1RBUk0sIGlzbid0IGl0Pw0KPj4+IFllcy4NCj4+DQo+PiBXZWxsLCB0aGF0
IGNvbW1pdCBmaXhlZCBRX1hRVU9UQVJNIHF1b3RhY3RsLiBQcmV2aW91c2x5IGl0IHdhcyBzdXBw
b3J0ZWQNCj4+IGJ1dCBpdCB3YXMgYnVnZ3kgYW5kIG5vdCBhY3R1YWxseSBkb2luZyB0aGUgZGVz
aXJlZCBmdW5jdGlvbmFsaXR5IGluIHNvbWUNCj4+IGNhc2VzLiBTbyB0aGUgZGVzY3JpcHRpb24g
a2luZCBvZiBtYWtlIHNlbnNlIGJ1dCBpdCBpcyBub3QgcXVpdGUNCj4+IGFjY3VyYXRlIC0NCj4+
IG1heWJlIHdlIHNob3VsZCBqdXN0IG1vdmUgdGhlIG5vdGUgdG8gTk9URVMgc2VjdGlvbj8NCj4N
Cj4gSSB0aGluayB3ZSBiZXR0ZXIgYWRkIGEgQlVHUyBzZWN0aW9uLiBEb24ndCB5b3U/DQo+IFVu
bGVzcyB5b3UgdGhpbmsgaXQgaXNuJ3QgaW1wb3J0YW50IGVub3VnaC4gSG93IGxpa2VseSBpcyBp
dCB0aGF0DQo+IFFfWFFVT1RBUk0gd2FzIHVzZWQgaW4ga2VybmVscyBiZWZvcmUgMy4xNiBhbmQg
YSBCVUdTIHNlY3Rpb24gd2lsbCBoZWxwDQo+IGZpeCB0aGUgYnVnPyBBbmQgaG93IGxpa2VseSBp
cyBpdCB0aGF0IHNvbWVvbmUgd2lsbCB1c2UgaXQgaW4gdGhlIGZ1dHVyZQ0KPiBmb3Iga2VybmVs
cyBiZWZvcmUgMy4xNj8gSG93IGltcG9ydGFudC9kYW5nZXJvdXMgd2FzIHRoZSBidWc/DQpASmFu
DQpJIGRvdWJ0IHRoaXMgaW9jdGwgd2hldGhlciBiZSB1c2VkIGJ5IGFueSBhcHBsaWNhdGlvbi4N
Cg0KcHM6SSBhbHNvIGluY3JlYXNlIGx0cCBxdW90YWN0bCBjb3ZlcmFnZSB0byBjb3ZlciBxdW90
YWN0bF9mZCBzeXNjYWxsLiBJIA0Kd291bGQgYXBwcmVjaWF0ZSBpdCBpZiB5b3UgY291bGQgcmV2
aWV3IG15IGx0cCBxdW90YWN0bC9xdW90YWN0bF9mZCBwYXRjaHNldA0KaHR0cHM6Ly9wYXRjaHdv
cmsub3psYWJzLm9yZy9wcm9qZWN0L2x0cC9saXN0Lz9zZXJpZXM9MjY5MTY2DQoNCg0KPg0KPiBN
YXliZSBhZGQgc29tZXRoaW5nIHNpbXBsZXIgc3VjaCBhcyAiKGJ1Z2d5IHVudGlsIExpbnV4IDMu
MTYpIiBzbyB0aGF0DQo+IG5vIG9uZSB1c2VzIGl0IGluIG9sZGVyIGtlcm5lbHMgYnV0IGRvZXNu
J3QgdXNlIGFzIG11Y2ggc3BhY2UgYXMgYSBuZXcNCj4gQlVHUyBzZWN0aW9uPw0KQEFsZWphbmRy
bw0KSWYgdGhpcyBpb2N0bCBkb2Vzbid0IGJlIHVzZWQgYnkgbWFueSBhcHBsaWNhdGlvbihJTU8s
aXQgaXMgcmFyZSB0byBiZSANCnVzZWQgKSwgIHVzaW5nICIoYnVnZ3kgdW50aWwgTGludXggMy4x
NikiIGlzIGJldHRlci4NCg0KQmVzdCBSZWdhcmRzDQpZYW5nIFh1DQo+DQo+Pg0KPj4+PiBNYXli
ZSBhIGJldHRlciBmaXggd291bGQgYmUgdG8gcmVwbGFjZSB0aGUga2VybmVsIHZlcnNpb24gYW5k
IHRoZQ0KPj4+PiBjb21taXQNCj4+Pj4gaGFzaCB3aGVuIGl0IHdhcyByZWFsbHkgYWRkZWQ/DQo+
Pj4gWWVzLCBidXQgSSBjYW4ndCBmaW5kIHRoaXMgY29tbWl0IGhhc2ggYW5kIGl0IHNlZW1zIGJl
ZW4gc3VwcG9ydGVkIHNpbmNlDQo+Pj4gbG9uZyB0aW1lIGFnby4NCj4+DQo+PiBZZWFoLCBBRkFJ
SyBRX1hRVU9UQVJNIGlzIHRoZXJlIGluIHByaW5jaXBsZSBzaW5jZSBYRlMgd2FzIGludHJvZHVj
ZWQgaW4NCj4+IHRoZSBsaW51eCBrZXJuZWwgc28gYXJvdW5kIDIwMDEuIE5vIHBvaW50IG9mIG1l
bnRpb25pbmcgdGhhdCBpbiB0aGUNCj4+IG1hbnBhZ2UNCj4+IElNTy4NCj4+DQo+PiBIb256YQ0K
Pj4NCj4NCj4gVGhhbmtzLA0KPg0KPiBBbGV4DQo+DQo+DQo=
