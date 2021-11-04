Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 891B3444CC9
	for <lists+linux-man@lfdr.de>; Thu,  4 Nov 2021 02:05:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229676AbhKDBH5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Nov 2021 21:07:57 -0400
Received: from esa11.fujitsucc.c3s2.iphmx.com ([216.71.156.121]:6298 "EHLO
        esa11.fujitsucc.c3s2.iphmx.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229561AbhKDBH4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Nov 2021 21:07:56 -0400
X-Greylist: delayed 431 seconds by postgrey-1.27 at vger.kernel.org; Wed, 03 Nov 2021 21:07:56 EDT
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1635987919; x=1667523919;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=vNHxHbDJXEfczouzbwIVtyOBDlyBUniXR2TjW2K4zyg=;
  b=j01isjjJH9FbQuGHoZbXSMo7kLs3VQ24T43Ltf7FQls6AQTE5xRRxY4C
   JQqtktKfF0vyel7LsHDYXBNeiTT/ySGqbg+fj/vIya02pCSWSnyylLJp4
   KhbKMlvAxNRPaqXAv0moJWXnB/JzBgF4nK49PB/tqfaKdlE0JnWE8t2pb
   tYznhAe2kPiCKjJu2s4cEO91sT8i5m/NNU2//TCW76hp56Pjjk2zKPNyM
   Cr6vq0hODWZD3jMmWae+lh6KOTiUrh6WiSJr5c01tlfGZc34qysX3qJ+q
   yPBrafbcFPzDOsq4dOwfMsNw9KbRDdWzI3OSy83htKDbrGb/x9KSMO/dF
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="43052984"
X-IronPort-AV: E=Sophos;i="5.87,207,1631545200"; 
   d="scan'208";a="43052984"
Received: from mail-os2jpn01lp2050.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.50])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Nov 2021 09:58:05 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fZdxlIUUPaE+OzgcmVzbJRg5fYqTVUrQ72SipznhA01YxE4rAgyOPsKAbHQOydv3MqO7POuOvHAqS3KqC2Q5mphSwoj0obiBm1OZgWySYOAQRNVvxFKa1XAhNT3ndT464cRdOS3EpHYqpTycb8z9tou4QUHQLkrY+uvB02HlYJ4aKAWcd5MLWIA44AiTAbw8JdBkUHA7lb8qvMPdMZ4sQaPQgbPyig7j3wYa1yL4qu6t/6qIsRt23PKmQ08EUbr+laTHj4XH9XF/qUellsf08n6Ospos9FzfwIYNw6HUZS4PsC8TYfFWVwEYll+qtmlqOOCXsk8NKODjLSRJji1D4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vNHxHbDJXEfczouzbwIVtyOBDlyBUniXR2TjW2K4zyg=;
 b=jyuhJHP2434Yi4BkHwWzhrH2IEo7aPNficKbRJZzFzr21tcD1r8oYlUxZDPVcTjExX0N/0cpEtvquKGbObF+6p2aEy4rXKj/7MpG5wXyJEF1lxxnKafVDKhFN2iYnC14mB3TTz8OOSw6kjGhKFM4EGg4cnab5l6f6JLRT/0JXAJ9cGesTe6nXJ58elZ8n+vbMZJ6wX855voZ3TDONNVYJwUyhP+p8TRJvSE6cBDcWPLJ8/XgK4druibeCM4K0thWtajPzKL5SIxvZR6b8DpzZdajDB+0W3cK+pPjfN/Z+wjtDnZ5pD5stXEhvD2vLTcIT5zOzuFKRVu52OOp7h1+CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vNHxHbDJXEfczouzbwIVtyOBDlyBUniXR2TjW2K4zyg=;
 b=S8n+8MLjDH3aFNMBSmY5RkeM8DOwa0uVKjiOj2c0WxSgYu0Zp7kblqU7kSuU51oN+Qy2/O9ZLPehv5z39pOdegMC/v3t8TtCb0CXTaqo2NA9ohqUmTFjQ2TbvNXd9er+KtRbBnAmYNgOJibbetjwnAgEFHyjK65dfWv95WX5WAE=
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com (2603:1096:400:98::6)
 by TYCPR01MB6318.jpnprd01.prod.outlook.com (2603:1096:400:7a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Thu, 4 Nov
 2021 00:58:02 +0000
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9]) by TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9%8]) with mapi id 15.20.4669.011; Thu, 4 Nov 2021
 00:58:02 +0000
From:   "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
CC:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Jan Kara <jack@suse.cz>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Topic: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Index: AQHXxVROpR5fexAzmEGKVloBqdrEKKvuGTkAgAOD44CAAALqgIAAU8cAgACvqYA=
Date:   Thu, 4 Nov 2021 00:58:02 +0000
Message-ID: <6183302D.8080102@fujitsu.com>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com> <61825419.1080502@fujitsu.com>
 <6182568B.30705@fujitsu.com> <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com>
In-Reply-To: <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e31b783-6c42-4ebb-423a-08d99f2e2766
x-ms-traffictypediagnostic: TYCPR01MB6318:
x-microsoft-antispam-prvs: <TYCPR01MB6318CCE58D85AC40645E5C8CFD8D9@TYCPR01MB6318.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7waZ1SQYc2KoYmC5nAsV3lUhEFRNLCkx9+AMiIubFMAznnjA0R/dkpjvj4cGRm6taroO+jELNR4X/TCWGr3Yrxx5XxwGDlQAbOej2Bw9CeNgsC1L8+o7MjkY35+/6aUVg1kMS7Po3Y3lFebvCGoZZYzZbkkFDSd3SHs+2edONB1sfjy9FMRltzBiDIAuUw9oKRH791TQ0LiS2Dp8+Zv3KTw+oJrOqT7KX1468zNCc5l9W8e77s4X2t3/+l/+0s5hLeLNsSvpkTa37FrTdK6DQfw/KPHRF/JZPlvGI5YuDqG/VA5JOmwGm7ndlrVtTzQPQUFM5u0sZ9Eqeovl/G4662Qoqku/a9US7ufVcXJzmHdDz4iiCC0JXkNijybREWH9HpqOuFPbxrmJQYe3s9zHW+4Te/Kh2FuZ03WAgvQ0M91H6i8xg/wmgVWeaHBIoXzM/y/ihxisDuE9bvUz2EjLW1A9z51NLKReRYJOBdUsrpW3zOK15h8/kroFFbAqguQ1jMP9kxitwBMqLUvsamJCVN+mhmrZ0FWVJkt24JtzjW540jbKytehvJ1/D+/DM6XIOVC3/+v3VeXcx8xZ59O356NmhJRDg0idf5vyc1/S2VoOAb0i1akvSRvfW5K/souUTpFT35TKprJA+nXvrytK9GGNtOICjyNZhkZ+bI6H+MmqTSbqRmtIQtKBBfWpwcH7O5fRBdMF3rIrL2xRTb/M/4mKooSY4h+jZDWNtn5KyPcs09LxVy2XBx5c7rW3ZuGfHP8xj/h3B1n3NE05XGVkCXsZaYuZ6eBk0woHXX+j3vA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB6544.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(83380400001)(86362001)(38070700005)(2906002)(66476007)(64756008)(66946007)(66556008)(6512007)(66446008)(5660300002)(71200400001)(82960400001)(2616005)(4326008)(53546011)(54906003)(508600001)(6486002)(87266011)(15650500001)(122000001)(36756003)(6506007)(8676002)(91956017)(38100700002)(76116006)(26005)(186003)(6916009)(85182001)(316002)(8936002)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUZBM3NweW01cnJJeFhhWmlEWThBbUtrdUJCZnhBVmZXVGRYUUlQSnRKTWJ3?=
 =?utf-8?B?U3JmcS9LdFdPNUFpRGpSM2hvSGppSm00NFRSTjRvaEFQRXd6Vm9KaWhjSG4v?=
 =?utf-8?B?WkFUTDE0Tm9aeVRtWXdQVnd2aDRRS2E2VjNHek9hWkZzR29zdkEyOHNZR2Ey?=
 =?utf-8?B?R0RiQ2ZIYThOVndISTYvcVlJWHJwUE91UDF6WHdQNG1kajNRd3ZaNVdpOThR?=
 =?utf-8?B?ZUlrUTZoOFBiTllmRUV6a2FoVWFCYjgyMzdIaHZSamRxdS9JZk52ejNybnFK?=
 =?utf-8?B?ajlSUU5iMDU4eGlNY1EwRmlhZDRKNy93U2V4WG1mS0IzNFBTcWs4OXRnb3Ey?=
 =?utf-8?B?K2tyM2NzTllaUnJRYzFRZ1lSeURKZU8xL2VsQXM3a1o2Rm1UWWJTaVloNmtV?=
 =?utf-8?B?NjZkVFBSV1NpZWQ4b1dFU3hiUWs0Zkt1OElrUGpJY3BHd2lFVm9lZmpFT3Jt?=
 =?utf-8?B?aGlITGsrNnhmeWQ1MjV6Q0xmeWVyazZrdnNaeCs2WnJoQkZMSmpoUlJBdm52?=
 =?utf-8?B?Q001WnJCMGhhMHJVdHZsUXJXYlM2Y2taalNvUmZRdkwxYmtsak9UMGFKbTRR?=
 =?utf-8?B?TVI0YWVSSUhpeGxTTTUwamJVbEFmbnNXQ1BXalVtSEMycXRTb0tTdHE0RkFG?=
 =?utf-8?B?cXlTa05RZTRtZmNDSmY4aklXT3B4UkllbzV1UUdaWi9nUkYrVXI4bTRSWWtv?=
 =?utf-8?B?MGZJYWFlajc4U2c0RjIvdFhYeUlzSTF4TDBlZGhXWEdaZlpmUmp3K2hwUEpF?=
 =?utf-8?B?WmpSLzFUK0dWaGc5MG5TUmRrS3RIeTJnTG9TRzVpU0Z6Ylh6b2RiVWRIQjZL?=
 =?utf-8?B?UUgxNEQ4aTBPdEMxS2xLRHUxdG05TDJMYTZSRFladUZDeUI2NmFzU1lyTzJL?=
 =?utf-8?B?a2lLUzR4T1o5YnFyVkErTCs4R2VPVUJSWXRubmxieGEySkNmVzlYR1BYVzdM?=
 =?utf-8?B?YTNCNnlwRVpJR0srOUZxS2JqeEpuQlJpcGNuSWUzaU9YMXJjTC84YVdCd2dQ?=
 =?utf-8?B?L1JNWjY3eFA1MSttc1Z3Uy9KWTN5QU1sMDI5ODlCSGRTemVKTkZPMXR1a2VE?=
 =?utf-8?B?QjAyNWxDSzR6TFE5TDRabW9xQ0dtdU5IWDdFTWJRWExickJJOWtzNllBTU5R?=
 =?utf-8?B?eUFpcDdLZE43NFZWaGdvbGJGQTVkUXJtcHpRS212WFVYZk81MkpiZENWWjRn?=
 =?utf-8?B?WjRFRXZKTGlVekRoZGFDVlVvMlE5VjBjY3BhakFyUlc3Q1lxYk92am1XNkxG?=
 =?utf-8?B?amorTHY4Qy8wMjhNdkp1b2luY0FRQStxVkpRY1VNZjEzbXFyeHBwMTl0M21V?=
 =?utf-8?B?bkp5cTBITGJhZTRnWk0xUlpoNzN5RkdPemU3VHBzeFpCZkJ5SUJHQU85MkJo?=
 =?utf-8?B?Smp3RDFQM1FLbUU2ZkptNHVqOVdGYktOUGF4YVFOSzBmTmQxSWFTWjdaYnE4?=
 =?utf-8?B?VzJ2bys0UlYrV1diclpvSU1VcjFNVVJyOGNwazg2ODNKcEl2bUZoMm9BbWt0?=
 =?utf-8?B?eS9GRGtUeWwydXF6YVZTOURXSXBjejhRWnRNaGJjT3NEelVKQjIvWEtNdnZw?=
 =?utf-8?B?c3Q0QTUvY0JoQVpVM1JDZTgzZC9vOU9YY0w4Y3hZMmFteXhnbWFHdFhjaHhj?=
 =?utf-8?B?MzJsRTNLMFRmVUFtQmE1dENZVUxETmxVY204eElaR204OHIwYlBPamJmbnJR?=
 =?utf-8?B?RC9neFY1SHhKTWJNSFlFUkFpQUFNL2cvRmEweUFBNzd1ZEtjeFE5UGpRYWFX?=
 =?utf-8?B?YWlUQjMvWVFMKzZNRU9NT0dkWDhLVGJtUE5xY096emtQMGZZTW1DNUJuL0Yy?=
 =?utf-8?B?Z2tQVUZSWFc4WWVEVld3bmlvc28zeEEvWGpqSnBqQk41M2hweTZvc0NEUHc0?=
 =?utf-8?B?cFJLdlVTQTYxblU3eUNTTm5oQTFqMndFcVZuYnpDUUNsSk8xcVBKL3NVQ2U0?=
 =?utf-8?B?dGpmR0hmWGx5RnNEK2NYOEZ3emgvV09uQS9pSkloaUw0aERsTEQ0RXhQV3F4?=
 =?utf-8?B?eDJkVjNQTjNQcVJac3FnWGcwOUtKQ2l0SENzMnliWlNzNk9leEs0elVoZnhn?=
 =?utf-8?B?cFpGdUxIVFZuU0R2bmpJcDVzV25HRW0yRVNtQ25tN2ZBRy9rRkVvUWlWV2NW?=
 =?utf-8?B?RGtwYXhkUnhuTkpndzdTMi9zTUh3VjdpejVzRG5scXhZajdHV2VEd1U1ditX?=
 =?utf-8?B?cWxkaFVzU2l0WldpWnJTQk5QT3JWNzBiUVBUUFA2ZHcvdE9RbXE5R29NWGhH?=
 =?utf-8?Q?H5TYBSpk++BhWBUIpJzMM9zGm2UJLi82p8eByDS5yU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DA3A0C5AE5DFB84C8B407201A53B1C61@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB6544.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e31b783-6c42-4ebb-423a-08d99f2e2766
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 00:58:02.7054
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w0qidUKibJJgpXpYcgPPIe43rf+u5BcBOcnIYZWESzzOnBZTnXJsy5qsKktKXFvoqp3+otfZ4aXtQddkL8A3L6ckz26+pZ5MIURlbm19l9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB6318
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SGkgIEFsZWphbmRybw0KPiBbQ0MgKz0gSmFuXQ0KPg0KPiBIaSBZYW5nLA0KPg0KPiBPbiAxMS8z
LzIxIDEwOjI5LCB4dXlhbmcyMDE4Lmp5QGZ1aml0c3UuY29tIHdyb3RlOg0KPj4gW0ZpeCBBbGVq
YW5kcm8gbWFpbCBhZGRyZXNzIF0NCj4+PiBIaSBBbGVqYW5kcm8NCj4+Pg0KPj4+IFlvdSBtZXJn
ZWQgYW5vdGhlciBxdW90YWN0bCBwYXRjaCwgYnV0IEkgZ3Vlc3MgeW91IG1pc3NlZCB0aGlzLg0K
Pg0KPiBUaGFua3MhDQo+DQo+Pj4NCj4+Pg0KPj4+IEJlc3QgUmVnYXJkcw0KPj4+IFlhbmcgWHUN
Cj4+Pj4gSGkgQWxlamFuZHJvLCBNaWNoYWVsDQo+Pj4+DQo+Pj4+IFBpbmchDQo+Pj4+DQo+Pj4+
IEJlc3QgUmVnYXJkcw0KPj4+PiBZYW5nIFh1DQo+Pj4+PiBUaGlzIHBhdGNoWzFdIGlzIGRlc2ln
bmVkIHRvIGZpeCBidWcgZm9yIFFfWFFVT1RBUk0gaW9jdGwgbm90IGZvcg0KPj4+Pj4gaW50cm9k
dWNlZC4NCj4+Pj4+IFNvIHJlbW92ZSBpdC4NCj4+Pj4+DQo+Pj4+PiBbMV1odHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29t
bWl0Lz9pZD05ZGE5M2Y5YjdjDQo+Pj4+Pg0KPj4+Pj4NCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFlh
bmcgWHU8eHV5YW5nMjAxOC5qeUBmdWppdHN1LmNvbT4NCj4+Pj4+IC0tLQ0KPj4+Pj4gbWFuMi9x
dW90YWN0bC4yIHwgMyArLS0NCj4+Pj4+IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MiBkZWxldGlvbnMoLSkNCj4+Pj4+DQo+Pj4+PiBkaWZmIC0tZ2l0IGEvbWFuMi9xdW90YWN0bC4y
IGIvbWFuMi9xdW90YWN0bC4yDQo+Pj4+PiBpbmRleCBkMjJkOGM1ODQuLjQ2Zjc3YThiMSAxMDA2
NDQNCj4+Pj4+IC0tLSBhL21hbjIvcXVvdGFjdGwuMg0KPj4+Pj4gKysrIGIvbWFuMi9xdW90YWN0
bC4yDQo+Pj4+PiBAQCAtNjUxLDggKzY1MSw3IEBAIFRoZQ0KPj4+Pj4gLkkgaWQNCj4+Pj4+IGFy
Z3VtZW50IGlzIGlnbm9yZWQuDQo+Pj4+PiAuVFANCj4+Pj4+IC0uQiBRX1hRVU9UQVJNICIgKHNp
bmNlIExpbnV4IDMuMTYpIg0KPj4+Pj4gLS5cIiA5ZGE5M2Y5YjdjZGY4YWIyOGRhNmIzNjRjZGMx
ZmFmYzg2NzBiNGRjDQo+DQo+IE9rYXkuIFNpbmNlIHlvdSBhZGRlZCB0aGF0IGxpbmUgKG1hbi1w
YWdlcyBjb21taXQgYWU4NDhiMWQ4MCksIEknbSBmaW5lDQo+IHJlbW92aW5nIGl0LiBXYXMgaXQg
YSBtaXN0YWtlPyBUaGUgY29tbWl0IG1lc3NhZ2Ugb2YgdGhhdCBjb21taXQgaXMgYQ0KPiBiaXQg
dW5yZWxhdGVkIHRvIFFfWFFVT1RBUk0sIGlzbid0IGl0Pw0KWWVzLg0KPg0KPiBNYXliZSBhIGJl
dHRlciBmaXggd291bGQgYmUgdG8gcmVwbGFjZSB0aGUga2VybmVsIHZlcnNpb24gYW5kIHRoZSBj
b21taXQNCj4gaGFzaCB3aGVuIGl0IHdhcyByZWFsbHkgYWRkZWQ/DQpZZXMsIGJ1dCBJIGNhbid0
IGZpbmQgdGhpcyBjb21taXQgaGFzaCBhbmQgaXQgc2VlbXMgYmVlbiBzdXBwb3J0ZWQgc2luY2Ug
DQpsb25nIHRpbWUgYWdvLg0KDQpCZXN0IFJlZ2FyZHMNCllhbmcgWHUNCj4NCj4gSSdsbCB3YWl0
IGZvciB5b3VyIGFuc3dlciBiZWZvcmUgYXBwbHlpbmcgdGhlIHBhdGNoLg0KPg0KPiBUaGFua3Ms
DQo+DQo+IEFsZXgNCj4NCj4+Pj4+ICsuQiBRX1hRVU9UQVJNDQo+Pj4+PiBGcmVlIHRoZSBkaXNr
IHNwYWNlIHRha2VuIGJ5IGRpc2sgcXVvdGFzLg0KPj4+Pj4gVGhlDQo+Pj4+PiAuSSBhZGRyDQo+
DQo+DQo=
