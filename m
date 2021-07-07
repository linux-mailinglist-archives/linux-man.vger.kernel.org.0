Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8583C3BE13B
	for <lists+linux-man@lfdr.de>; Wed,  7 Jul 2021 04:50:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229910AbhGGCx2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Jul 2021 22:53:28 -0400
Received: from esa14.fujitsucc.c3s2.iphmx.com ([68.232.156.101]:59378 "EHLO
        esa14.fujitsucc.c3s2.iphmx.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229894AbhGGCx1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Jul 2021 22:53:27 -0400
X-Greylist: delayed 428 seconds by postgrey-1.27 at vger.kernel.org; Tue, 06 Jul 2021 22:53:26 EDT
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1625626248; x=1657162248;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=/XrPXMWWk9zBhh+qwbWQrKR+0kjKqif8rMxIvHBS4L0=;
  b=g03UeWJmvzeyAcoGgQZURs1g1ZFCJU7xy+DaaKzYFIApJyiBOVdfNZw0
   4c3pY/hm9BH4zy1VbWHFfYeTI459Y/w5jYKd/UBji+DDxxs92zulyB0dC
   tX4u3/KHMhqdp8sdYMtSIeMu+WCQuebUdXYSvUowYmpY1hmmv7vOvQF+o
   dQy+le1Cp+ywOyrXVs+kfsg68apdA8BcZz/6yvhtsNJdYyk8VJh6xl0Pt
   ODxao7Iu82HRdjGGbnCWjommSVGrqL+DgNuHvt93QncQuDp8sCPuJ9fGP
   oES7fQI5ZkBzDsaJmS0LUdiFwwyGCwh1CznGfKB6yB9tMXQjFRAmqqPB7
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="34372471"
X-IronPort-AV: E=Sophos;i="5.83,330,1616425200"; 
   d="scan'208";a="34372471"
Received: from mail-os2jpn01lp2059.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.59])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2021 11:43:37 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jXDWCZ5LXbm0lIHW9qlrYWu5zYgQvNFbpT1yw5+N4I1G453BabTZD60ncRhzJhBv4j6AACVwkNuVeS7tzpDDIbTYymvyczYyMXd5H2gn4vVXtGfUqtd/flVXkQOseFpb18yOISREGFYJy7Xjx7CnI6w66xfcsNYvR3UGf6IrkbE4H8qLU9VOoKVWQaf69DMYQYDJFXak0DcYiWT7Y8/+VWRZ4n2yYutrT3MBQm4bVufOWc2+BtflDJoqRfPhDq6kInGYr46y+xbvsenDl0xKJrKxpDDfUlGUdtWIgrO5zR78hYxhwfm9CVgGfiFvGfcpbIJEJVOYse1Eqg2h5TXchQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/XrPXMWWk9zBhh+qwbWQrKR+0kjKqif8rMxIvHBS4L0=;
 b=b/vZgoWHMVjMlQGD9F/vcEkqIwxwxbZ4eTustOt67Bj1XhRo9Vb68CiI/HdoLt9Etv/jOp5eu3iKEgaO+z8yW5/LG2DOtKl0a1RHIqxp+DbscoTTYFZ4BhpQtpetpuS0jYfiFwhrUGeaIf6aVP46pDT1HWEd/yUr3pJ3vrE0SNxCAw7FFX5YzUZc5j+1R3bmyBXSH1ST76ylw40kWhM8FBwVhsWCv3OOsRH1/FtHD0Iq9YxOveYpXWgbo7kpu7YJ4vwj1yAGyKIcmigjinlfx2+ZSKnMuYNYD6gW3YTN0KAfq7/LXPmoJUOgw1rvJSZMCeLbP0kuO7iVe6qi9Q/Zvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/XrPXMWWk9zBhh+qwbWQrKR+0kjKqif8rMxIvHBS4L0=;
 b=aCFeHm8IvgSGe/PFv/uxZQQQd7DlHYqhsc0SCtspalP5Nsycgg/th3+D96WPxyuPsLY9Dxymh/8VkNQZdgt7tgWNaFnrp/d3HVSeRgRwmxrLO+KGZULqvN7wV+8v/Jra61nQMbM0Whc0xG1P425C30+iyDdq8mc9BzimRhyhYxg=
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com (2603:1096:400:98::6)
 by TYYPR01MB6745.jpnprd01.prod.outlook.com (2603:1096:400:cc::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.31; Wed, 7 Jul
 2021 02:43:34 +0000
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::2da1:e1d8:ba88:a4e0]) by TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::2da1:e1d8:ba88:a4e0%3]) with mapi id 15.20.4308.020; Wed, 7 Jul 2021
 02:43:34 +0000
From:   "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2] man2/shmget2: Add details about EPERM error
Thread-Topic: [PATCH v2] man2/shmget2: Add details about EPERM error
Thread-Index: AQHXRx0Au69NOUjZYkqP+buEzQjXu6rnEPKAgAAOxgCAUAX4AA==
Date:   Wed, 7 Jul 2021 02:43:34 +0000
Message-ID: <60E514F8.1030007@fujitsu.com>
References: <1620816794-8503-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <a1f57e98-581f-cfa8-fabe-9d0a6ee2f0a0@gmail.com>
 <60A1F418.9020300@fujitsu.com>
In-Reply-To: <60A1F418.9020300@fujitsu.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 288594fa-2bdf-4b19-800d-08d940f103ee
x-ms-traffictypediagnostic: TYYPR01MB6745:
x-microsoft-antispam-prvs: <TYYPR01MB67451FDAF7AD86E6B19E4290FD1A9@TYYPR01MB6745.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RffgpJqqjW/8LlqkJRQZqFPxHxdQf43aSP5+KPGpDgfN+Qyckc0iKVjn4lHTVhJU+Z4V+LQ3uVW3eAQXbcoUx6zPgl2prSTpQs+Nzp+G+kMNUhlT1FYuGh9uqelvN7qfBDI0Nmqjd/n7hxGixVhr2Qe7jD9dgIjydKIqHF4U/ilsYVACXFmvoHT164A3D4vcj0Iccgz2MgFL8pbHanmPOuCI/YxS0t1D8osIlIA+JD8nydhVDyBNt467k6QF3dYR3UivsZTkBNwIdowCo4mT6JGA53oEhdxyWSHVKxnLqsMYEF9Jstoj4/Tu16W3fzfhfYiYpiCvo5GUpFdOMANxz8S+64t9iprgYfF0J079JgvLP9+Pys8oImnMs3ViMmUoC535Qgmj6vb9y+GGTf7pFEjYZahLo7EnQ9d13T2GoimTtSU5NOps6MhCjGABQpTmJORfLMYpKODhwJbzLItfyxknEgZfaesl9DtIrXHSpq9mfA0kq0zYtjFdNotMyoLkad+03Swe17Kn1fqU8/c/3XI6rc3Y5+INnJtMQsrP2BurTtWZY7zFaMkFe18lUkewuWdx5zpIB3FbJ3/bmqioJuayLdSNJQDQ+f837Z6Vpcxx+YiGUYYrb7EfVGUQa4mYIfPwuKez1jztFgzYkepcu5ETK66Joud2tA++AhdL56cN4+momPA9fjy9zwZJSUqxxBj5EFvTfbovEfmCI1qARVGfCmDXP9izpir7rJUseLM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB6544.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39860400002)(376002)(136003)(366004)(8936002)(122000001)(186003)(8676002)(38100700002)(2906002)(4326008)(87266011)(66946007)(85182001)(86362001)(66556008)(83380400001)(66446008)(36756003)(64756008)(53546011)(6486002)(91956017)(6506007)(33656002)(966005)(316002)(6916009)(71200400001)(76116006)(6512007)(66476007)(26005)(2616005)(478600001)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S3FWMndCMVY5bGExaEt4MmxIcWVxRGsyTkFhSllFalR6bkdVbHZ6SzV1ZUxC?=
 =?utf-8?B?eUR5RVNLRSsxSkZpREFlSG9yb2NucEVWU1hCYm1lRGJHcjZCdUcxdzlHaEMw?=
 =?utf-8?B?QUEzWFhISDNHYTIxczBCZGRSWHdJMEVkRUdZRkpxazlzRU8vbVllWTBKUEt1?=
 =?utf-8?B?ZkhxUEtvd2dZdkgxd080QzRpYzhnNzgwTkQvYXIxU1JPUVZteUZHUTJnM2gy?=
 =?utf-8?B?RnhmOW5NV0tPbURUYVNnNE5VUWc1SXdERkljU01FTXBuOUdzcU5JNEdFd0dE?=
 =?utf-8?B?UUl3aG1SQ0Yvd1BTNTllSkw2ajhqTmYxbko3eVBDNjlqSXpaMHhOZ2toVGh5?=
 =?utf-8?B?WmpFeFBKVE5kanpoZXVlcEEvYjNacW0xQTdaa1BVb0dNVVE3cUVuZitpYnlW?=
 =?utf-8?B?N3RjNWN0YnFaUkVhYXpvN0lEOTE1L2ptcVJaZFdYWmxYY1MxNGNRTUpsQ1Rx?=
 =?utf-8?B?R1R4RkVqNWVLYVRlcitjalZYMUF1c1V5c200UTY0TmJvd3hyRVQwdG56dS9u?=
 =?utf-8?B?WDVFM1ZwTW80dUNKNm5TSUlTY2QyTVJUZDNSOUZZWFRvSHF2WGRPKytEQWRp?=
 =?utf-8?B?aTFEQU5aVFkxMk9EL1pSOVd0cHRXM0FHWnRQa1JaM0NwaFhDTndTcUwvZTJL?=
 =?utf-8?B?ajB2VldIdGhzRHNhS3B0Q1FHRFZTY0UzZTJiMkl1K1pzTFF1QmtYL3dzZGQx?=
 =?utf-8?B?M3lqNEh2ZGsxTGl5Qm50ME9OSFl1VUFJYTFXYlNXSUhNSVBRaHM4TWdNcExS?=
 =?utf-8?B?SzQzUVd0THFvV01QODlQL0FXNmhUbW1GSW80RHQ3TmRIZmRDeFgvTHNkUHVD?=
 =?utf-8?B?eGwwMzVMSjYzVXd1UlRRdU1Tdnk3OXc0Q1dDRFNIdmV3SlRjYXhKSVQvd2JN?=
 =?utf-8?B?cGIzRzVhcTYrc2dqRnZ1bG5jQ3lEeHNIazhSR3JKb2lzMmtaM21ldjJsNGIr?=
 =?utf-8?B?YmdGQ2ZQTHZtZVRLNGRKUzRjQ25halI4UGtiLytkNURxdE14dTJCYzgyVjRY?=
 =?utf-8?B?bjR0VVdaNGV4UkY4WWFmRmVCQzBlTVVwQXgyNEpLdFBmalhzV1kybTVZQ2o0?=
 =?utf-8?B?NFZabTBxUE51b1paU2ljQ0JGZ2JjUVR2MWJMQVNsQjlYSmtHRjUvMDBJSGhI?=
 =?utf-8?B?N0lFWnVmbHB1RFEwaTBBaVZsbU5WV3JKZVdSdHRQVVFFejZjdDhmNnYvVmRR?=
 =?utf-8?B?UVhiN0lQSndFamZSUlRuTUJnY05KbEUzZmsyNXFZck9UbTlJbTJHa2xybTI4?=
 =?utf-8?B?OHZnV2VaMWNLL1VncVpySm1CZGJVNENJcmlCZGMyRk4zUXN1anlrMEZvdGIx?=
 =?utf-8?B?Wk5keDBaZWExS2Q1Uk5ySTE0bFJEWkk5KzRWcllYYzVNMk1qVnZLdENSVkNL?=
 =?utf-8?B?ODE1elVTTnlUMmFLVUF5ckVDZlJrZDFWUVk3OVJGWENmQzErTms5Z3FWK3dO?=
 =?utf-8?B?d0FtZ2dWL0t1OERydWsxUE1MZmZRbUY0bjVSVjNuQS9GOTBuZlNrMm81TWJy?=
 =?utf-8?B?WW9MaDZPNlBPcWdpcnB1eEdLYTZDMjh5SWRZTnMydGo4bytqNzEzdzh6alV0?=
 =?utf-8?B?QWVOaWtFSTRYTlc1KytydGZHYk1wMk1La3doYkJSU21VSTE2YmhiMFlTc1BQ?=
 =?utf-8?B?U0l3ckZvQVFuVUkwOUZicDhEWXp3OXVyMzByZmlrcTU1dHJ5Ry9hNm5Ncksv?=
 =?utf-8?B?U0tUSzJIeUdMbWtSdzczQWZTNGtMRkdTZTl2OWZaeWhIMUZHYmpTSUVyOVcw?=
 =?utf-8?Q?crBoWkMav6Ey9ZcSRjwwAr8VuQHOkcl9qndmub3?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-ID: <7BF16EA2062920458669E058152598D8@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB6544.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 288594fa-2bdf-4b19-800d-08d940f103ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2021 02:43:34.5629
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kwgIIV3ZOV5XchNIhFxYSyqgubsPfC+1Dlr973PpQlAXuBCzPZW3hyuMiPgoLiy/JGPD9/0rh/TQpDQtmuYZh8eyh6gj8zcFBCgwXr2jFzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB6745
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SGkgTWljaGFlbA0KDQpJdCBzZWVtcyB3ZSBhbGwgbWlzcyBSTElNSVRfTUVNTE9DSy4NCiJ0aGlz
IGxpbWl0IGluc3RlYWQgZ292ZXJucyB0aGUgYW1vdW50IG9mIG1lbW9yeSB0aGF0IGFuIHVucHJp
dmlsZWdlZCANCnByb2Nlc3MgbWF5IGxvY2suIg0KDQpJIGZvdW5kIHRoaXMgYmVjYXVzZSBzb21l
b25lIGhhcyBzZW50IGEgcGF0Y2ggdG8gbHRwIGZpeCB0aGlzIHVuZXhwZWN0ZWQgDQogIGVycm9y
IHByb2JsZW0uDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9sdHAvcGF0
Y2gvMjAyMTA3MDYxMzIxMTQuMjA0NDQzLTEtY2FzY2FyZG9AY2Fub25pY2FsLmNvbS8NCg0KQmVz
dCBSZWdhcmRzDQpZYW5nIFh1DQo+IEhpIE1pY2hhZWwNCj4gWW91ciBwYXRjaCBpcyBtb3JlIGNs
ZWFyLCBpdCBsb29rcyBnb29kIHRvIG1lLg0KPg0KPiBCZXN0IFJlZ2FyZHMNCj4gWWFuZyBYdQ0K
Pj4gSGVsbG8gWWFuZyBYdSwNCj4+DQo+PiBPbiA1LzEyLzIxIDEwOjUzIFBNLCBZYW5nIFh1IHdy
b3RlOg0KPj4+IGh1Z2V0bGJfc2htX2dyb3VwIGNvbnRhaW5zIGdyb3VwIGlkIHRoYXQgaXMgYWxs
b3dlZCB0byBjcmVhdGUgU3lzVg0KPj4+IHNoYXJlZA0KPj4+IG1lbW9yeSBzZWdtZW50IHVzaW5n
IGh1Z2V0bGIgcGFnZS4gVG8gbWVldCBFUEVSTSBlcnJvciwgd2UgYWxzbw0KPj4+IG5lZWQgdG8g
bWFrZSBncm91cCBpZCBiZSBub3QgaW4gdGhpcyBwcm9jIGZpbGUuDQo+Pj4NCj4+PiBTaWduZWQt
b2ZmLWJ5OiBZYW5nIFh1PHh1eWFuZzIwMTguanlAZnVqaXRzdS5jb20+DQo+Pj4gLS0tDQo+Pj4g
bWFuMi9zaG1nZXQuMiB8IDIgKy0NCj4+PiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9tYW4yL3NobWdldC4yIGIvbWFu
Mi9zaG1nZXQuMg0KPj4+IGluZGV4IDc1N2I3YjdmMS4uMjk3OTliOWI4IDEwMDY0NA0KPj4+IC0t
LSBhL21hbjIvc2htZ2V0LjINCj4+PiArKysgYi9tYW4yL3NobWdldC4yDQo+Pj4gQEAgLTI3Myw3
ICsyNzMsNyBAQCBUaGUNCj4+PiAuQiBTSE1fSFVHRVRMQg0KPj4+IGZsYWcgd2FzIHNwZWNpZmll
ZCwgYnV0IHRoZSBjYWxsZXIgd2FzIG5vdCBwcml2aWxlZ2VkIChkaWQgbm90IGhhdmUgdGhlDQo+
Pj4gLkIgQ0FQX0lQQ19MT0NLDQo+Pj4gLWNhcGFiaWxpdHkpLg0KPj4+ICtjYXBhYmlsaXR5IGFu
ZCBncm91cCBpZCBkb2Vzbid0IGJlIGNvbnRhaW5lZCBpbiBodWdldGxiX3NobV9ncm91cA0KPj4+
IHByb2MgZmlsZSkuDQo+Pj4gLlNIIENPTkZPUk1JTkcgVE8NCj4+PiBQT1NJWC4xLTIwMDEsIFBP
U0lYLjEtMjAwOCwgU1ZyNC4NCj4+PiAuXCIgU1ZyNCBkb2N1bWVudHMgYW4gYWRkaXRpb25hbCBl
cnJvciBjb25kaXRpb24gRUVYSVNULg0KPj4NCj4+IFRoYW5rcyBmb3Igc3BvdHRpbmcgdGhpcy4g
VGhlIHN0b3J5IGlzIG1vcmUgY29tcGxleCwgYXMgZmFyIGFzIEkgY2FuDQo+PiB0ZWxsLiBGb3Ig
ZXhhbXBsZSwgdGhlIHNhbWUgZXJyb3IgYWxzbyBvY2N1cnMgZm9yIG1tYXAoMikgYW5kDQo+PiBt
ZW1mZF9jcmVhdGUoMikNCj4+DQo+PiBJbnN0ZWFkIG9mIHlvdXIgcGF0Y2gsIEkgYXBwbGllZCB0
aGUgZGlmZiBiZWxvdyAobm90IHlldCBwdXNoZWQpLA0KPj4gYmFzZWQgb24gbXkgcmVhZGluZyBv
ZiBmcy9odWdldGxiZnMvaW5vZGUuYywgaW4gcGFydGljdWxhcjoNCj4+DQo+PiBzdGF0aWMgaW50
IGNhbl9kb19odWdldGxiX3NobSh2b2lkKQ0KPj4gew0KPj4ga2dpZF90IHNobV9ncm91cDsNCj4+
IHNobV9ncm91cCA9IG1ha2Vfa2dpZCgmaW5pdF91c2VyX25zLCBzeXNjdGxfaHVnZXRsYl9zaG1f
Z3JvdXApOw0KPj4gcmV0dXJuIGNhcGFibGUoQ0FQX0lQQ19MT0NLKSB8fCBpbl9ncm91cF9wKHNo
bV9ncm91cCk7DQo+PiB9DQo+Pg0KPj4gLi4uDQo+Pg0KPj4gc3RydWN0IGZpbGUgKmh1Z2V0bGJf
ZmlsZV9zZXR1cChjb25zdCBjaGFyICpuYW1lLCBzaXplX3Qgc2l6ZSwNCj4+IHZtX2ZsYWdzX3Qg
YWNjdGZsYWcsIHN0cnVjdCB1c2VyX3N0cnVjdCAqKnVzZXIsDQo+PiBpbnQgY3JlYXRfZmxhZ3Ms
IGludCBwYWdlX3NpemVfbG9nKQ0KPj4gew0KPj4gLi4uDQo+PiBpZiAoY3JlYXRfZmxhZ3MgPT0g
SFVHRVRMQl9TSE1GU19JTk9ERSYmICFjYW5fZG9faHVnZXRsYl9zaG0oKSkgew0KPj4gKnVzZXIg
PSBjdXJyZW50X3VzZXIoKTsNCj4+IGlmICh1c2VyX3NobV9sb2NrKHNpemUsICp1c2VyKSkgew0K
Pj4gdGFza19sb2NrKGN1cnJlbnQpOw0KPj4gcHJfd2Fybl9vbmNlKCIlcyAoJWQpOiBVc2luZyBt
bG9jayB1bGltaXRzIGZvciBTSE1fSFVHRVRMQiBpcw0KPj4gZGVwcmVjYXRlZFxuIiwNCj4+IGN1
cnJlbnQtPmNvbW0sIGN1cnJlbnQtPnBpZCk7DQo+PiB0YXNrX3VubG9jayhjdXJyZW50KTsNCj4+
IH0gZWxzZSB7DQo+PiAqdXNlciA9IE5VTEw7DQo+PiByZXR1cm4gRVJSX1BUUigtRVBFUk0pOw0K
Pj4gfQ0KPj4gfQ0KPj4gLi4uDQo+PiB9DQo+Pg0KPj4gQXMgYSBkZXByZWNhdGVkIGZlYXR1cmUs
IGl0IGFwcGVhcnMgdGhhdCB0aGUgUkxJTUlUX01FTUxPQ0sNCj4+IGNhbiBhbHNvIGJlIHVzZWQg
dG8gcGVybWl0IGh1Z2UgcGFnZSBhbGxvY2F0aW9uLCBidXQgSSBoYXZlDQo+PiBjaG9zZSBub3Qg
dG8gZG9jdW1lbnQgdGhhdCBmb3Igbm93Lg0KPj4NCj4+IFBsZWFzZSBsZXQgbWUga25vdyBpZiB0
aGUgcGF0Y2ggbWFrZXMgc2Vuc2UgdG8geW91Lg0KPj4NCj4+IFdpdGggYmVzdCByZWdhcmRzLA0K
Pj4NCj4+IE1pY2hhZWwNCj4+DQo+PiAtLS0gYS9tYW4yL21lbWZkX2NyZWF0ZS4yDQo+PiArKysg
Yi9tYW4yL21lbWZkX2NyZWF0ZS4yDQo+PiBAQCAtMjAxLDYgKzIwMSwxOSBAQCBUaGUNCj4+IC5C
UiBtZW1mZF9jcmVhdGUgKCkNCj4+IHN5c3RlbSBjYWxsIGZpcnN0IGFwcGVhcmVkIGluIExpbnV4
IDMuMTc7DQo+PiBnbGliYyBzdXBwb3J0IHdhcyBhZGRlZCBpbiB2ZXJzaW9uIDIuMjcuDQo+PiAr
LlRQDQo+PiArLkIgRVBFUk0NCj4+ICtUaGUNCj4+ICsuQiBNRkRfSFVHRVRMQg0KPj4gK2ZsYWcg
d2FzIHNwZWNpZmllZCwgYnV0IHRoZSBjYWxsZXIgd2FzIG5vdCBwcml2aWxlZ2VkIChkaWQgbm90
IGhhdmUgdGhlDQo+PiArLkIgQ0FQX0lQQ19MT0NLDQo+PiArY2FwYWJpbGl0eSkNCj4+ICthbmQg
aXMgbm90IGEgbWVtYmVyIG9mIHRoZQ0KPj4gKy5JIHN5c2N0bF9odWdldGxiX3NobV9ncm91cA0K
Pj4gK2dyb3VwOyBzZWUgdGhlIGRlc2NyaXB0aW9uIG9mDQo+PiArLkkgL3Byb2Mvc3lzL3ZtL3N5
c2N0bF9odWdldGxiX3NobV9ncm91cA0KPj4gK2luDQo+PiArLkJSIHByb2MgKDUpLg0KPj4gLlNI
IENPTkZPUk1JTkcgVE8NCj4+IFRoZQ0KPj4gLkJSIG1lbWZkX2NyZWF0ZSAoKQ0KPj4gZGlmZiAt
LWdpdCBhL21hbjIvbW1hcC4yIGIvbWFuMi9tbWFwLjINCj4+IGluZGV4IDAzZjJlZWIyYy4uNGVl
MmY0Zjk2IDEwMDY0NA0KPj4gLS0tIGEvbWFuMi9tbWFwLjINCj4+ICsrKyBiL21hbjIvbW1hcC4y
DQo+PiBAQCAtNjI4LDYgKzYyOCwxOCBAQCB3YXMgbW91bnRlZCBuby1leGVjLg0KPj4gVGhlIG9w
ZXJhdGlvbiB3YXMgcHJldmVudGVkIGJ5IGEgZmlsZSBzZWFsOyBzZWUNCj4+IC5CUiBmY250bCAo
MikuDQo+PiAuVFANCj4+ICsuQiBFUEVSTQ0KPj4gK1RoZQ0KPj4gKy5CIE1BUF9IVUdFVExCDQo+
PiArZmxhZyB3YXMgc3BlY2lmaWVkLCBidXQgdGhlIGNhbGxlciB3YXMgbm90IHByaXZpbGVnZWQg
KGRpZCBub3QgaGF2ZSB0aGUNCj4+ICsuQiBDQVBfSVBDX0xPQ0sNCj4+ICtjYXBhYmlsaXR5KQ0K
Pj4gK2FuZCBpcyBub3QgYSBtZW1iZXIgb2YgdGhlDQo+PiArLkkgc3lzY3RsX2h1Z2V0bGJfc2ht
X2dyb3VwDQo+PiArZ3JvdXA7IHNlZSB0aGUgZGVzY3JpcHRpb24gb2YNCj4+ICsuSSAvcHJvYy9z
eXMvdm0vc3lzY3RsX2h1Z2V0bGJfc2htX2dyb3VwDQo+PiAraW4NCj4+ICsuVFANCj4+IC5CIEVU
WFRCU1kNCj4+IC5CIE1BUF9ERU5ZV1JJVEUNCj4+IHdhcyBzZXQgYnV0IHRoZSBvYmplY3Qgc3Bl
Y2lmaWVkIGJ5DQo+PiBkaWZmIC0tZ2l0IGEvbWFuMi9zaG1nZXQuMiBiL21hbjIvc2htZ2V0LjIN
Cj4+IGluZGV4IDc1N2I3YjdmMS4uNmU5OTk1ZTgxIDEwMDY0NA0KPj4gLS0tIGEvbWFuMi9zaG1n
ZXQuMg0KPj4gKysrIGIvbWFuMi9zaG1nZXQuMg0KPj4gQEAgLTI3Myw3ICsyNzMsMTMgQEAgVGhl
DQo+PiAuQiBTSE1fSFVHRVRMQg0KPj4gZmxhZyB3YXMgc3BlY2lmaWVkLCBidXQgdGhlIGNhbGxl
ciB3YXMgbm90IHByaXZpbGVnZWQgKGRpZCBub3QgaGF2ZSB0aGUNCj4+IC5CIENBUF9JUENfTE9D
Sw0KPj4gLWNhcGFiaWxpdHkpLg0KPj4gK2NhcGFiaWxpdHkpDQo+PiArYW5kIGlzIG5vdCBhIG1l
bWJlciBvZiB0aGUNCj4+ICsuSSBzeXNjdGxfaHVnZXRsYl9zaG1fZ3JvdXANCj4+ICtncm91cDsg
c2VlIHRoZSBkZXNjcmlwdGlvbiBvZg0KPj4gKy5JIC9wcm9jL3N5cy92bS9zeXNjdGxfaHVnZXRs
Yl9zaG1fZ3JvdXANCj4+ICtpbg0KPj4gKy5CUiBwcm9jICg1KS4NCj4+IC5TSCBDT05GT1JNSU5H
IFRPDQo+PiBQT1NJWC4xLTIwMDEsIFBPU0lYLjEtMjAwOCwgU1ZyNC4NCj4+IC5cIiBTVnI0IGRv
Y3VtZW50cyBhbiBhZGRpdGlvbmFsIGVycm9yIGNvbmRpdGlvbiBFRVhJU1QuDQo+PiBkaWZmIC0t
Z2l0IGEvbWFuNS9wcm9jLjUgYi9tYW41L3Byb2MuNQ0KPj4gaW5kZXggYTI4ZGJkY2M3Li44ODg1
MzU0NDkgMTAwNjQ0DQo+PiAtLS0gYS9tYW41L3Byb2MuNQ0KPj4gKysrIGIvbWFuNS9wcm9jLjUN
Cj4+IEBAIC01NjAzLDYgKzU2MDMsMTkgQEAgdXNlciBzaG91bGQgcnVuDQo+PiAuQlIgc3luYyAo
MSkNCj4+IGZpcnN0Lg0KPj4gLlRQDQo+PiArLklSIC9wcm9jL3N5cy92bS9zeXNjdGxfaHVnZXRs
Yl9zaG1fZ3JvdXAgIiAoc2luY2UgTGludXggMi42LjcpIg0KPj4gK1RoaXMgd3JpdGFibGUgZmls
ZSBjb250YWlucyBhIGdyb3VwIElEIHRoYXQgaXMgYWxsb3dlZA0KPj4gK3RvIGFsbG9jYXRlIG1l
bW9yeSB1c2luZyBodWdlIHBhZ2VzLg0KPj4gK0lmIGEgcHJvY2VzcyBoYXMgYSBmaWxlc3lzdGVt
IGdyb3VwIElEIG9yIGFueSBzdXBwbGVtZW10YXJ5IGdyb3VwIElEDQo+PiB0aGF0DQo+PiArbWF0
Y2hlcyB0aGlzIGdyb3VwIElELA0KPj4gK3RoZW4gaXQgY2FuIG1ha2UgaHVnZS1wYWdlIGFsbG9j
YXRpb25zIHdpdGhvdXQgaG9sZGluZyB0aGUNCj4+ICsuQlIgQ0FQX0lQQ19MT0NLDQo+PiArY2Fw
YWJpbGl0eTsgc2VlDQo+PiArLkJSIG1lbWZkX2NyZWF0ZSAoMiksDQo+PiArLkJSIG1tYXAgKDIp
LA0KPj4gK2FuZA0KPj4gKy5CUiBzaG1nZXQgKDIpLg0KPj4gKy5UUA0KPj4gLklSIC9wcm9jL3N5
cy92bS9sZWdhY3lfdmFfbGF5b3V0ICIgKHNpbmNlIExpbnV4IDIuNi45KSINCj4+IC5cIiBUaGUg
Zm9sbG93aW5nIGlzIGZyb20gRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy9wcm9jLnR4dA0KPj4g
SWYgbm9uemVybywgdGhpcyBkaXNhYmxlcyB0aGUgbmV3IDMyLWJpdCBtZW1vcnktbWFwcGluZyBs
YXlvdXQ7DQo+PiBkaWZmIC0tZ2l0IGEvbWFuNy9jYXBhYmlsaXRpZXMuNyBiL21hbjcvY2FwYWJp
bGl0aWVzLjcNCj4+IGluZGV4IDdlNzliMmZiNi4uY2Y5ZGMxOTBmIDEwMDY0NA0KPj4gLS0tIGEv
bWFuNy9jYXBhYmlsaXRpZXMuNw0KPj4gKysrIGIvbWFuNy9jYXBhYmlsaXRpZXMuNw0KPj4gQEAg
LTIwNSwxMSArMjA1LDIxIEBAIHRoZSBmaWxlc3lzdGVtIG9yIGFueSBvZiB0aGUgc3VwcGxlbWVu
dGFyeSBHSURzDQo+PiBvZiB0aGUgY2FsbGluZyBwcm9jZXNzLg0KPj4gLkIgQ0FQX0lQQ19MT0NL
DQo+PiAuXCIgRklYTUUgLiBBcyBhdCBMaW51eCAzLjIsIHRoZXJlIGFyZSBzb21lIHN0cmFuZ2Ug
dXNlcyBvZiB0aGlzDQo+PiBjYXBhYmlsaXR5DQo+PiAuXCIgaW4gb3RoZXIgcGxhY2VzOyB0aGV5
IHByb2JhYmx5IHNob3VsZCBiZSByZXBsYWNlZCB3aXRoIHNvbWV0aGluZw0KPj4gZWxzZS4NCj4+
ICsuUEQgMA0KPj4gKy5SUw0KPj4gKy5JUCAqIDINCj4+IExvY2sgbWVtb3J5DQo+PiAuUkIgKCBt
bG9jayAoMiksDQo+PiAuQlIgbWxvY2thbGwgKDIpLA0KPj4gLkJSIG1tYXAgKDIpLA0KPj4gKy5C
UiBzaG1jdGwgKDIpKTsNCj4+ICsuSVAgKg0KPj4gK0FsbG9jYXRlIG1lbW9yeSB1c2luZyBodWdl
IHBhZ2VzDQo+PiArLlJCICggbWVtZmRfY3JlYXRlICgyKQ0KPj4gKy5CUiBtbWFwICgyKSwNCj4+
IC5CUiBzaG1jdGwgKDIpKS4NCj4+ICsuUEQgMA0KPj4gKy5SRQ0KPj4gLlRQDQo+PiAuQiBDQVBf
SVBDX09XTkVSDQo+PiBCeXBhc3MgcGVybWlzc2lvbiBjaGVja3MgZm9yIG9wZXJhdGlvbnMgb24g
U3lzdGVtIFYgSVBDIG9iamVjdHMuDQo+PiAkDQo+Pg0KPj4NCj4+DQo+DQo=
