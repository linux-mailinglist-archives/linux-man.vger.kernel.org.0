Return-Path: <linux-man+bounces-266-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 36694817F97
	for <lists+linux-man@lfdr.de>; Tue, 19 Dec 2023 03:16:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFDEC1F225E1
	for <lists+linux-man@lfdr.de>; Tue, 19 Dec 2023 02:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D98187F;
	Tue, 19 Dec 2023 02:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fujitsu.com header.i=@fujitsu.com header.b="DLv/2ovv"
X-Original-To: linux-man@vger.kernel.org
Received: from esa2.fujitsucc.c3s2.iphmx.com (esa2.fujitsucc.c3s2.iphmx.com [68.232.152.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92791842
	for <linux-man@vger.kernel.org>; Tue, 19 Dec 2023 02:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fujitsu.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fujitsu.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1702952151; x=1734488151;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=JXFU0g8KRI6QvDHK6U24WgLyyOX3yWtJL8YR2CsC27I=;
  b=DLv/2ovv2jbRZyROYlKICun7K3xntY4o/x5zSnM8xTiXrU/mHpUX6cL4
   W9cOcgUs/59SyF4ieoJ/Wkh3Og+Hb/WUaZ5KetB2OB6qq7Bqhz+VDBDxv
   p10twZhJUvwp6I4Q6/TyEUtwsHIMJtINE2zT9f3CyWRhctXDNRN/pNYDv
   pOFbzF6TAdy3a+ZNpaVzbh2MhGlUZaZ/AigoR8sMDG2pi4YYPjYAkBjKg
   yCu9rrp2MPcyuDYi3Sq7aMBI5KlGH17s/LDrUhoXk49pFeNlg1b6xn+4Y
   AsIZSzv/oc/S4zpmVKFTGKbcCAC4ct8ZVQ/SnfLWjPEC8uRJEtFVEoRXB
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17075773"
X-IronPort-AV: E=Sophos;i="6.04,287,1695654000"; 
   d="scan'208";a="17075773"
Received: from mail-tycjpn01lp2168.outbound.protection.outlook.com (HELO JPN01-TYC-obe.outbound.protection.outlook.com) ([104.47.23.168])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2023 11:14:39 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ib7JLZnLYWPVktvi+1pYlFoYEoZe2E2ZVltYWsV+ImoAST05ZryghC8NKHLEEMIJOHy89XRQU/e7fu/bbdHUanCXmY9QsaaTMn5vQR1YMRI/PppEtwEgEIE/iD8oOLHYOMCMIRPny0qKkHDr3liJqQBBIY/C6l2wbfMITnK65JKtAQ7A7U5LqJm+inBcJoQAO0erDNmBsEPZ3HoALHcanHhIbRFI2yyrpIOdCoFQdhoK1ztLLcfnrpcWGD1gE3iLGtZ9wbMzkG4aReA3M+4bOl9OS4oEczNOvtblNuzjJ/1E8NN9mLV5TKEohI1AqOjyfPa7jtVsvc4BKEXzw5Ow3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JXFU0g8KRI6QvDHK6U24WgLyyOX3yWtJL8YR2CsC27I=;
 b=UrCU+uPy73uPZbruXyE1t46jHghq+v1IeMee+/4LfqozTshyWVr0/fg1JEOfWd0kUWib+I36ZPhhA0W+Oav3I7uBu0xoToqafww4ROq8SD1c1zuikquYSdsTFSwYjDtm8GK8dAVZLihdjyOi5eAP/s1Eh86ZLPjf9xs3DEU61vWxZGa2wdOPw2MhtDmAS6DzRVSR8+xex405eM7yK2zh7fpR9Ll/GOSoPNiTLcXRpRlR6PsQTFvLlqemlemMym6WdYOAnzijdLimkuYWJdZtna+R0dYzKTT7zbddmqDjhZjL3cRMbpMNk8dBi+AyLCWBZCNIXJoyvb8KYG1Bg6llQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from OS7PR01MB11839.jpnprd01.prod.outlook.com (2603:1096:604:23b::8)
 by OS0PR01MB5393.jpnprd01.prod.outlook.com (2603:1096:604:a0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.11; Tue, 19 Dec
 2023 02:14:36 +0000
Received: from OS7PR01MB11839.jpnprd01.prod.outlook.com
 ([fe80::6f9:cd05:b0e5:6601]) by OS7PR01MB11839.jpnprd01.prod.outlook.com
 ([fe80::6f9:cd05:b0e5:6601%7]) with mapi id 15.20.7113.010; Tue, 19 Dec 2023
 02:14:36 +0000
From: "Yang Xu (Fujitsu)" <xuyang2018.jy@fujitsu.com>
To: Alejandro Colomar <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] swapon.2: Adjust decreased value under
 CONFIG_MIGRATION
Thread-Topic: [PATCH v2 1/2] swapon.2: Adjust decreased value under
 CONFIG_MIGRATION
Thread-Index: AQHaJ0SI9z6kOrCo00G5/4wPUt2mKrCqQO4AgAAD6QCABa7YgA==
Date: Tue, 19 Dec 2023 02:14:36 +0000
Message-ID: <9b680e99-91a9-4255-888c-3b28fa172209@fujitsu.com>
References: <20231205063017.68690-1-xuyang2018.jy@fujitsu.com>
 <ZXw02jr6CaN3gBfa@debian> <ZXw4IuWiejiDqknd@debian>
In-Reply-To: <ZXw4IuWiejiDqknd@debian>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS7PR01MB11839:EE_|OS0PR01MB5393:EE_
x-ms-office365-filtering-correlation-id: cf077dcc-a814-44dd-0973-08dc00383f6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 ZoysoKSbs1REW6Zw8noJatFfRVfJklh3V20AbeoH584os/sTrYB3KjIdcoqz7ohdYHRNkaW3ava3HKPt0njwmZzmeZ+7lE5yblBA13CM9eJTvC6QxQSKtR9wwmKn2nITMv2IYaH55ea4X0U8b673iu+gKx6GpfcXGgZpUm8bMVADroVt/sIuaTdiPphAZVUJOMQ52uT8+3yECcblVlExTxvW39tU+7aS7DIf08C+4pAbW0Ll3yBezrN8a31BE+7xmO4OqzZT6T058Rmo8SNrYM54PLV3rzRIUXCGeG+kStuMa2U8UP1sFGPumrQOnHiYqV/gkUadASityxIuXY4OtuA8/kc7G3fMFQwm3VgAFS7rYm0PKFgwn09KyOqam/5vCD2r5OciAzSQWn0J8L55ONJYF8O3bLrM1400mX6SC6lEjcysFDd4cvW6x47aTvlPA2XYeifgR03rLgyueZ+Ghx2xFklA7au19LcBXTrwHY2lqfqeUJvuapfvujQMkREjB5icSG+7KqaByw8LVYq/oYqACtOKJMJk3Jejy5bu7NSwzDdBcmeNI/VBHHLrhyrqJWjnv5AMf29QoAod1K7k7c58nUhyIgxNNwYRXaW5pt55GcisKELXWqqrR6sRSo7EygcY5/hd++JCLrB5TbbX2fOYKeud/LxhM8D29A8x5BU=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS7PR01MB11839.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(346002)(136003)(376002)(39860400002)(230922051799003)(1590799021)(1800799012)(64100799003)(451199024)(186009)(31686004)(38070700009)(1580799018)(76116006)(82960400001)(86362001)(31696002)(85182001)(36756003)(122000001)(38100700002)(8676002)(5660300002)(83380400001)(2616005)(26005)(4326008)(71200400001)(8936002)(6486002)(2906002)(66946007)(6506007)(66476007)(66446008)(64756008)(6512007)(478600001)(91956017)(6916009)(316002)(41300700001)(66556008)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?bStJMTRMYnJwd3A2dkd0SmkwRUVMUnA3bU9kaFZFZGpQck1KMGhJNDI2NXI0?=
 =?utf-8?B?UFdreFZpNTZsVEN5L0NiR21JOGpHMkhvQVpUTHcvcmtrU01FT2k1K1p1SFJ4?=
 =?utf-8?B?NHhRZGFyUFRkOGsxaUlxbGphNlpka0lEb3MvcURSK1FwU1pFMmdjZTlObFVF?=
 =?utf-8?B?L1hRenJHa1JmSHZyaHRSWi8zb2c1SWJtUGx2TWpCdm0ya0h0aCtjSld6SUVw?=
 =?utf-8?B?R3BNYzFkVjVjNHVDV2grTU83WVNxN1FCZy8xNEFXdzlCVnR0MENQQlBxZGsr?=
 =?utf-8?B?MTNuR0RodTB4S09VZWQxVXZxR3NxT0VQOHJ6ODFVTTRRUTR4V2ZJQm9JUXVP?=
 =?utf-8?B?MWZKeVpFQXEzVzBQQjRiVWlWZE1VcStOZi9GakIraWd6aHB0VUl2WFJ0dGJt?=
 =?utf-8?B?RzlJaWhTbkhFd0YvRXBsTDN5em5CaEtYRWpBWmNESllmR3U5cmJVQis2N3pQ?=
 =?utf-8?B?OVZ3Q1RjMG5yd1NSZzMrUllvaHhaVGlvcVFKSGJjQ1F4SHhObEY5YzNQaEdX?=
 =?utf-8?B?bjhTbklHMnRMc1ZOeVkzRjNuU0M3L3owS0swdlJycWFlV09FT0kxZzBjK2d6?=
 =?utf-8?B?N05kQnVpREdKd3hPb01hUVppZXlnUFBjSXdkNnlNejFEUzlpOUdOM1hQWEI2?=
 =?utf-8?B?NEVDVDJkbFcvWGJoZE1sSWJ0cnRNY2NnRE40Y2p4bFlqd2NHQzMzNjBuWllq?=
 =?utf-8?B?VnFtZ2FsTkphWFVBQ1NXSVc0bDJSa0F3L3grQmpYYXlLVzkxOTMwUzhuY0JW?=
 =?utf-8?B?b0l0dVpNTkozNGN5UldqM0FaanRBUXBmSjRjVkcwWWkrT1hTanJkME9mbURY?=
 =?utf-8?B?VDMrTEkvR285a1paclZBOUZKbUdKU2xpWlY1czZKc2xNNWFROVVLMFV6YUdH?=
 =?utf-8?B?Qnd5ODJpcDhtdUNzV1hNWmc4UEl2Qk5QRzBtSldIWHJvNEJQN3VKK1dvQ3JF?=
 =?utf-8?B?K3pxdGNraG5TZlVscFlBTlMvUE5qc0w2RTZqY3J2M1VjTkk2NTBVMWQ2aE5h?=
 =?utf-8?B?RWJxZk9aMFFENWEwVUN6TzRFRU9EOEdjYUdXazhSV04yM3lxU1krSWQwZmIr?=
 =?utf-8?B?TkpWc1Z4ZFhoVTlpR1NyZndTZ1pqYlFUY3VWbkhYTWJWVGxrVUNHYTg3M0Jr?=
 =?utf-8?B?UmtpRDJqOHI0VmpaSk9EbmQ3cithbEZrZUZoaHFiT2c4MTExK0RsWEllb1Z0?=
 =?utf-8?B?bUpSc1JYQU5QVVdKYUdJM2h6RGRXcVBobU1EUjMrK21BSnhDcU9vOGEzcmlm?=
 =?utf-8?B?d3RTS3JvSndyMEc3TW84N1dsZFEybHFiNDk4N044RlJBYUlta0lubCsvNWVE?=
 =?utf-8?B?RVdrNnhGK3NyWlpvL1c4bGlxVStMQ20yTUpvRUNOaGs4Q1Evc1BXZy9VMUhL?=
 =?utf-8?B?Q2l1dkpjTjFReEdERTBwYk5tS2FCNC9nelV4cjEwWmY5U1RlS3h2aWN3SHpX?=
 =?utf-8?B?RGNVaWczdnB3dExIMmlzaEdEb2V3bzRPQXJKRmlic2tFc0p0VDVQS2hHeWVk?=
 =?utf-8?B?UWQ5NnFVdWxBT016MTUwbjVEdyt0OG0rVGdjZWVPdHZ4eVMzNjhpMUVkYWly?=
 =?utf-8?B?anNNTDVXbElWWi80ejk5aGRsREsxdjErRmIvTlRGUG04NU4rUWRkY0o1OUxw?=
 =?utf-8?B?enF3T05VTGhzK1VDWjJ6azJjVytZRk9GV0FEQ2Nza2JidENPQmRsMHhaUGY4?=
 =?utf-8?B?S1kzWGx4NENNeTI1aXNEaGZKQ2xVMzlVZjlLa2lYblZhcmUxMFJra2I4akZ4?=
 =?utf-8?B?TWlab2Iyb1M0dGNNWHY3NWFvTVh3K3hJZzZUcStQNGJwMkcxZWtNUnpWZEtX?=
 =?utf-8?B?SmhyRVBXcmttc2xJVDhzSkM5UE9SZHNYbWlBc2c4bmxQSU4xbHBLWUR0TFp0?=
 =?utf-8?B?cXJKQnB4S0pSZHROeVc0RnJKckRTWXAxaVhWSnpGZy9jd053TjFYaUNlU21F?=
 =?utf-8?B?VWQyWFpTUmxNaVJnemNVYy9VNFArYlUyd0FEbGZ1dTJ0RERqQStEWnVvS3lw?=
 =?utf-8?B?MkJjU1h3VGs2TWU3aFRGazd6dlY3TXB1Y3BnTzNlOThWa3ZRV29scFBNWi9q?=
 =?utf-8?B?NnVPQkxQZjduZC9GUlhtVGlQeEhoL2tkRlVpNEFrbzNxY3F4MWxEeFI1REh4?=
 =?utf-8?B?SnNEb1Zpb21LaUt6SU1ubmEvOTdmQnJ4QlFYejFSamRqcXNITnhIcVkzZSt2?=
 =?utf-8?B?dmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D6C8F3A1B3773D42BBC6C9B9C9A0C133@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	yxbshsL/J4wfVhj9+2RkkAzGqJRGpwaRnJh40H720e8QbpBgXSAvKdFDG4CajO8wtIraZF5/w12aDhiY6ShklaW0lQk2T/rS3NJqo1qCmsZpPyFfvrb3kdBEWt99WhK+PEqWKS2ji5g5GArntpdSYHrtr1e/8ynMQrXtvcG6YVAUQ79dXVljWdngYVtWS5BAUlquJVxm15K+UQ+nZKNxYjCZ8ZRxzLeBZHHZ3DPxeyGH8QWTMAp/W2Kyt6oufewLGxNdZ6pmpZHI2PE/QrNloqeviROSWeIcyBp7axvwPMNa5dbpOXNnr9B1kfHRUZts56HXll71pLb+pnDt5oJivd3ctSbg0K7V8sJZaJ2CF5zpv9TX7J5Me2QTLkivIrH8rWW0paR4Y1D5hiNSLHcwqSADP2wBrpCmj3OK75EZWsSINv4PHWE6RuCHemlyxtJFN/0AYlu8DyCA0D1ZjnIdZCuwbpetL6+RnZaIiJUBV70/ZKMXbxUMY4bGWLSWXJMK2XBJckcnPsg+75nVvv14sVBoWxlO/FtpFBBcjtu8fNqJVpg9psmIurzyHQUl6JKpF6hBMd9wia+oKgeKPED0lqm8xvGwjMR/YBzuAPGP8qfiDzegtK2eOBDVOFH1CIYM
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS7PR01MB11839.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf077dcc-a814-44dd-0973-08dc00383f6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2023 02:14:36.1662
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I1I6H/amBNNmR9skh7P9TGga4bbzSEODN9zJj+oCkRMDZhXnqqRyrIZETt2oRqcqEZugOtEpqchG3NuHI8uTC/3G767H7PDulOlWFf+wgnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS0PR01MB5393

SGkgQWxleCwNCg0KPiBPbiBGcmksIERlYyAxNSwgMjAyMyBhdCAxMjoxMzozMFBNICswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IEhpIFlhbmcsDQo+Pg0KPj4gT24gVHVlLCBEZWMg
MDUsIDIwMjMgYXQgMDE6MzA6MTZBTSAtMDUwMCwgWWFuZyBYdSB3cm90ZToNCj4+PiBBZnRlciBr
ZXJuZWwgNS4xOVsxXSwgdGhlIGxpbWl0IGlzIGRlY3JlYXNlZCBieSAzLg0KPj4+DQo+Pj4gWzFd
aHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMv
bGludXguZ2l0L2NvbW1pdC9pbmNsdWRlL2xpbnV4L3N3YXAuaD9pZD02YzI4NzYwNWYNCj4+Pg0K
Pj4+IFNpZ25lZC1vZmYtYnk6IFlhbmcgWHUgPHh1eWFuZzIwMTguanlAZnVqaXRzdS5jb20+DQo+
Pg0KPj4gSSd2ZSBhcHBsaWVkIHRoZSBwYXRjaCwgd2l0aCBzb21lIG1vZGlmaWNhdGlvbnM6DQo+
PiA8aHR0cHM6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvc3JjL2FseC9saW51eC9tYW4tcGFn
ZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQvP2g9Y29udHJpYiZpZD01ZGE4MjgwZWQ2ZWVmYjNkNzBm
ODYyODE1NzljNGFmYWU4OTIzMGIxPg0KPiANCj4gT29wcywgbXkgbW9kaWZpY2F0aW9uIHdhcyB3
cm9uZy4gIEkndmUgYW1lbmRlZCB0aGF0LiAgSGVyZSBhcmUgdGhlIHR3bw0KPiBwYXRjaGVzIG5v
dzoNCj4gDQo+IDxodHRwczovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy9zcmMvYWx4L2xpbnV4
L21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L2NvbW1pdC8/aD1jb250cmliJmlkPTkwYmE4Y2YzYWIy
NTM2YmRjMTM4OTg2YzQ1ODFjNjJhM2MwYjYwZDQ+DQo+IDxodHRwczovL3d3dy5hbGVqYW5kcm8t
Y29sb21hci5lcy9zcmMvYWx4L2xpbnV4L21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L2NvbW1pdC8/
aD1jb250cmliJmlkPTllMTYwY2YzZmQyNzE4MWE3MmVjMmZiNjI4ZjY0ZTk3MTUxMGY5ZjM+DQo+
IA0KDQpUaGFua3MgZm9yIHlvdXIgd29yay4NCg0KQmVzdCBSZWdhcmRzDQpZYW5nIFh1DQoNCj4+
DQo+PiBDaGVlcnMsDQo+PiBBbGV4DQo+Pg0KPj4+IC0tLQ0KPj4+ICAgbWFuMi9zd2Fwb24uMiB8
IDMgKystDQo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvbWFuMi9zd2Fwb24uMiBiL21hbjIvc3dhcG9uLjIN
Cj4+PiBpbmRleCBjMGU2MWNiYzYuLjJiYzQ3N2QxOCAxMDA2NDQNCj4+PiAtLS0gYS9tYW4yL3N3
YXBvbi4yDQo+Pj4gKysrIGIvbWFuMi9zd2Fwb24uMg0KPj4+IEBAIC0xNjQsNyArMTY0LDggQEAg
QmVmb3JlIExpbnV4IDIuNC4xMCwNCj4+PiAgIC5CIE1BWF9TV0FQRklMRVMNCj4+PiAgIGhhcyB0
aGUgdmFsdWUgODsNCj4+PiAgIHNpbmNlIExpbnV4IDIuNC4xMCwgaXQgaGFzIHRoZSB2YWx1ZSAz
Mi4NCj4+PiAtU2luY2UgTGludXggMi42LjE4LCB0aGUgbGltaXQgaXMgZGVjcmVhc2VkIGJ5IDIg
KHRodXM6IDMwKQ0KPj4+ICtTaW5jZSBMaW51eCAyLjYuMTgsIHRoZSBsaW1pdCBpcyBkZWNyZWFz
ZWQgYnkgMiAoU2luY2UgTGludXggNS4xOS4wLA0KPj4+ICt0aGUgbGltaXQgaXMgZGVjcmVhc2Vk
IGJ5IDMpDQo+Pj4gICBpZiB0aGUga2VybmVsIGlzIGJ1aWx0IHdpdGggdGhlDQo+Pj4gICAuQiBD
T05GSUdfTUlHUkFUSU9ODQo+Pj4gICBvcHRpb24NCj4+PiAtLSANCj4+PiAyLjI3LjANCj4+Pg0K
Pj4+DQo+Pg0KPj4gLS0gDQo+PiA8aHR0cHM6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K
Pj4gTG9va2luZyBmb3IgYSByZW1vdGUgQyBwcm9ncmFtbWluZyBqb2IgYXQgdGhlIG1vbWVudC4N
Cj4gDQo+IA0KPiA=

