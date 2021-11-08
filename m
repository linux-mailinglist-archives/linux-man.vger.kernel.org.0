Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9F2144789F
	for <lists+linux-man@lfdr.de>; Mon,  8 Nov 2021 03:37:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236809AbhKHCkb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Nov 2021 21:40:31 -0500
Received: from esa6.fujitsucc.c3s2.iphmx.com ([68.232.159.83]:35317 "EHLO
        esa6.fujitsucc.c3s2.iphmx.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229878AbhKHCka (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Nov 2021 21:40:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1636339067; x=1667875067;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=VdXL6bYz0+UHliAfsgRgutsM0mr9cGxPowoHaJ+nYiw=;
  b=d8/YFNF3q5RpqH0UlJm3HgFpdNEsWfmOSmOS+gbM3dFTZX8XBhvZMrux
   LALQMyYEgkcfpfQibNMP9gGQEH00k0bFizgxhyWXKcQoDRGbflLt3MBhi
   M+oqeDgmWlsPiLbQ1O3rIDGYO7jrsCDfRCbWpw8KH8jUSozz3+b0rmRDn
   SKIEiTAS9mPb0/q6OJveLSpguMYLDINCuVQAYy4kJsxN9MRC9SpL7n0IP
   GdLvtElAXl26Lkz7IHBaNv0qGPSdIbfT4THzqgyaSV7oN1ToelTI060No
   GBaTrWNzbqtMLLhOllgvCWMsMGqkEGJ8J2UG2Smol+ur3B9IBwqVM40SR
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10161"; a="43071699"
X-IronPort-AV: E=Sophos;i="5.87,217,1631545200"; 
   d="scan'208";a="43071699"
Received: from mail-os2jpn01lp2056.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.56])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2021 11:37:44 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iKjHaaGHTIZIWRmePiwJx982uR9yEwz0CV/p7aBvPJ/I3Jrpc1mtQTXUCbPJFgUR2AAIZQ/ICLm5R/7JAJlWLwFQRHmqwB+gjXrMXP89lwpU7PjYNQ9nwylVTIL4+uudL7DynXlVbUZVhECCBUYNEEkgCpvMUtwHpqNyFSmWSSbljKlmjmi0R6Uc/k4vwH4AQzHzc/AAn5gbbnEZ3zBkLI3rGSsQTXLG0ltW//+9iQVFA9HCFlIhDhgZS69DRDUmauC3ZwjAv3oHnGi+DwGsblwElVB/HsEuzXl43KRTMEEtk+kmqtOseVRG9yPxDl6inheV7KSNvp0cRR0ibupnnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VdXL6bYz0+UHliAfsgRgutsM0mr9cGxPowoHaJ+nYiw=;
 b=ClS+qLEFsuPc2p4+r+jiTqAlkAUqs3LFDf9s4YRl6/chcZs95P+XCp5wYK9GNZkkSCIcX6d4otU0TstcOkWmlQyjlogV7vCy8OGfmDu+37r3OwSI+Y2pkUEB5T8JrK06/sKwE416EICd/nulshFOP0YI2lG1Vm25ZI8h2/Sv6yeieJ+Q8pS3iYh24NiBa6LSdrzfGoHuxorFyU2xScr31bbX96vYFspwur8D0rLfgLaoLZ8LKUjivwoD95AnD/sNS8w8ySwHXqVYw615ZKQp/EDwqKrtE+oFrgo53D83f7MfrHU9PfEV3ucxW31xrzW442TnxFanHlLO6tQFUD8k5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdXL6bYz0+UHliAfsgRgutsM0mr9cGxPowoHaJ+nYiw=;
 b=GQjGdut1t1S9ho8TEAMVPzTkg3Zq6duxkw4KQxkisUngy5EktwzEWVraezXVR+Q9N6C7AEkYsCcmD4HJM2Yj03PRvS/lw70FKuSwd55gSKfBR1+yzifxMiYyg+oioBDo51m613KFUFTo43vOxpiGS9KyzQTJfk8uUJz/JbR2sHM=
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com (2603:1096:400:98::6)
 by TY2PR01MB5195.jpnprd01.prod.outlook.com (2603:1096:404:10e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Mon, 8 Nov
 2021 02:37:41 +0000
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9]) by TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9%8]) with mapi id 15.20.4669.016; Mon, 8 Nov 2021
 02:37:41 +0000
From:   "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
To:     Jan Kara <jack@suse.cz>
CC:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Topic: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Index: AQHXxVROpR5fexAzmEGKVloBqdrEKKvuGTkAgAOD44CAAALqgIAAU8cAgACvqYCAAKYvAIAAm6QAgAB0LoCAAI3+AIAEITYA
Date:   Mon, 8 Nov 2021 02:37:41 +0000
Message-ID: <61888D90.5080205@fujitsu.com>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com> <61825419.1080502@fujitsu.com>
 <6182568B.30705@fujitsu.com> <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com>
 <6183302D.8080102@fujitsu.com> <20211104105308.GB10060@quack2.suse.cz>
 <e3dbb664-6745-e7d2-e414-268cea320df3@gmail.com> <61849F99.80502@fujitsu.com>
 <20211105113414.GB26497@quack2.suse.cz>
In-Reply-To: <20211105113414.GB26497@quack2.suse.cz>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: suse.cz; dkim=none (message not signed)
 header.d=none;suse.cz; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f147205f-cdd9-4be3-851f-08d9a260bcb5
x-ms-traffictypediagnostic: TY2PR01MB5195:
x-microsoft-antispam-prvs: <TY2PR01MB51953309C154BB293FE9083DFD919@TY2PR01MB5195.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KVxdcNBgHk2OKewqXlyGylfdJ/Ln2hb3qVEzoySlxebFYb50BEjxAmjOkBWSZqTe+mxysmpC5LbnuKbR0X7EE4AAzvLq/1xuHWQB+drNem/CWlr4QBIqrELiSFW4plu2xdv3YNjjNIRGH2lCfnjzBG9TnJlEyHsG55QVC99hcjZYlhRYuFJHS6exWpAkWPaEqH/2E9txVWqpf5JgK5FlP59fTPO8KJsptjBvJq68o3TTjho8ZVMzkIdr97k2deKNnyr3cJPkLzk0sEAh59FiFgbXD2MmhtM1SbNI0T4iGnaituTBMRuM2B3uNNcLIDztHmhbBONQeq2fke7QHyylCEN5pAQ62F11Z3m/chB2CMLf3hbI6Y/6mAOAGuSAZPp79R5iXQeG0ez4VZ7QmXKU4U8x6/B026a0ENTURqOPbT/MKMYnhdA0aZZVKEO14SPJFG5qpYXdv/h2wvUeMdkF5U23o7Ia0lD8d3y2VgXAjB5wiO3CB+4WWGLW7GkGIbEOGB26+9jctivnr7qw2H7ePRpSmtUy9Yx7R2erZ658jsvZEoIHAJKQEltlO1mQ/IMYp311+hlAoMKtcIxkqHdF/a5MaocLWnK5XCZ81/1ADT1Yv37aVDZ1zLw+djQ04zKADBHufK3e5VXvtLWhoMDgIm2FRh1HXnyq2pDs0xUhbDOKKEjpY3E40VdJAHvP32e8xwtY+a/TR+Z1YYC3CBI88JfIDt8nF8sZdVUQUaA1NB+/ldDp3LXSFlppP0k8riVBIcjHMi1Z6CqbpZR1gz5Lyw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB6544.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(316002)(6916009)(6486002)(4326008)(82960400001)(66476007)(122000001)(966005)(91956017)(66946007)(66446008)(38070700005)(76116006)(4744005)(508600001)(8676002)(8936002)(33656002)(85182001)(38100700002)(87266011)(66556008)(64756008)(6506007)(71200400001)(83380400001)(2906002)(15650500001)(36756003)(86362001)(2616005)(186003)(5660300002)(26005)(54906003)(6512007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?dVpWL3dxaHpQeXVSM0lGUVQwRkE2d0JEcVd4RnNuTGhySzRva0lZVm9BdjRE?=
 =?gb2312?B?VFRrR1BFMnliQk9KYnkzUG5QcVNWamxUdlh6WnZmR0QzLzBaT05MS1QxQ25X?=
 =?gb2312?B?VWhXVzZjRGprdWlBSWpidFNIc3dqVVBTOTNKbW1rKzNNeUF2QzNCbEZmTU1H?=
 =?gb2312?B?aW1tUDFhQ0xtT1pvOUFXZ3RIYngvZnRRYUF6c0tHdDJTUHIyWHBlVkFKbzJp?=
 =?gb2312?B?emlBMGhVSmw1dFRJcWI3S09GZCtLTXE5bi9WSkNudlgvWHJtTjF3T1pPTy9G?=
 =?gb2312?B?V2V5WGF4cG4rUWZKT2FEMndTa0ZDMXRnMzJTazBId0hLL2FRL3l2K3k2RC93?=
 =?gb2312?B?MXVUUWxxOWZ1U01hRlprK0Y3YnRIaVZ1dVNMNlltSHNGRXE2VlRBU2hvMHJC?=
 =?gb2312?B?dWx5TFFONEJuTFppNzd4WWYva1pRS01kZ0hvckd3REF0TlcwRXlOSXNvN2xY?=
 =?gb2312?B?aUpXcXp1WjlLbXJiWkQvUjBEM0VMMTJIUXliM1d1dm11WDFjczVyeFp4VmRo?=
 =?gb2312?B?TzBlcjUzRThjTlVudWg1a3hwK3ZFVERMSmtYQi8ySWhGUDQ3UDUxR0FFdTNT?=
 =?gb2312?B?ZmxsY042dXI2LzZuajc0L2NYMHZqMk12dm4vQWFoZnd6Z1lpczRzV3pHWWJk?=
 =?gb2312?B?dGxBTW5McEMvb2pvcGRzejJnT21YYURNdmdnb3FvbHdaMU0rU3hjZnBUSXlu?=
 =?gb2312?B?WEpGSnl3emluM0YrMklyRXJRbStIS2krQWhhZ2FUNWgrQkxTNUVsaU44dXBC?=
 =?gb2312?B?T2xmYU1uVThiWkM4cHE5WkZFQmlNSjE3aXFJUWxUT0JGVmlKS0crSTRoaEQv?=
 =?gb2312?B?V09DTk04Ynd4eGpkSEo2bm5EWnhJaXBoSGx0dFpNSEh5RTdhd3Q5QzZOdWxq?=
 =?gb2312?B?MitNUnlxb05mdGJ3QmswY2JCazE2SVdZVW94MEhsdTh2ZWw1Rm5QUzNsWWk2?=
 =?gb2312?B?VDJGUUJjVk9ZZ05KQVVmZ0RFQlZxKzJsUDg4S1JiVHRJbXc1MFRwTnVaUFJF?=
 =?gb2312?B?by9HWFh1SVBPSjNNelZvSzlnL01hU0w1dmJ3dXhHQUZtQnRvKzJFK0lXSXZE?=
 =?gb2312?B?Njk0MHE5TTY0TnErT1dMOFdrVy9sQm5XT3N5a2xkMnRxeStpNW5YSlBGeXh6?=
 =?gb2312?B?VHhqcVJBc2xRci8rWHhpaEpRZjBEcko1aUpzNDJuSGFOb3E1bmkyMTV0RXMw?=
 =?gb2312?B?SDNpN1hiSE1ZZ0RXalFUZTVmNks1Um5pRjE5SVZITi9GMUMyTGVSQU9XQlVa?=
 =?gb2312?B?VE5tUVk5eFBoWE82azRZUDF1bHhDZVdidzdjTUhtR2pLS0YzVDdqK3FIV0ZV?=
 =?gb2312?B?eE9DajhBc3dwaG81WE9Ya3NVNHZvWUkxTFlWY1d1YVc1TU5RMmtlTTc4LzY3?=
 =?gb2312?B?bEdWNUdiRHlZZ2toYUVuUGRqTTVobXZoR3BOYmtWQTF2QnNxTUlTNEpZNTZW?=
 =?gb2312?B?NVZZYWZrcFQ5TlNGbHgyeGNGMjc4NFYzejRvcmMxQjdTNXNXNWY0TFpoYlpR?=
 =?gb2312?B?VDdIeHdpSk0vUXcvNFpOTkhYajlNWFFrVExoZUVtcXkxNHdRYm9XbWxaMklV?=
 =?gb2312?B?ajZCSVZCaStoKzk0K3E5ZWVLUFFIeU4yeTRXM1pPSzdpblA3Sk8rVlV5blNs?=
 =?gb2312?B?bGZiVEVEdTNDNmVmeHdVYmhSWnIvYlV4VlN6VUI2TGJGOGZJVm5XWkxKOCtM?=
 =?gb2312?B?cWhRWEdCd2UzNWIvUk94RnRyWERPVU95WTNveGdaZHNrZFROZFNhcU5tTUxF?=
 =?gb2312?B?cmVhemIxSy9ITXRFMTJnSm9SNGpRaS8zMUFCTlhEMm95VHdCUGF2NUMvSVpv?=
 =?gb2312?B?KzB1ckwyT1Ntd1ZEeXVmN0ZEeUlKK25saXlOMlFYVEhUZ2piQjQ4TWNXRTVw?=
 =?gb2312?B?Y2xjUEpTOVVqc01UZDIrRW5ISnM1MHV1ak51L29Zd01QckwyYTkvV0pXNk10?=
 =?gb2312?B?YWpPWEk2SUNTeHE3ajRpTjZqZFBRMThyYmc4VmF0S1AzcVM0M2ZEWStxbEUz?=
 =?gb2312?B?NkF5SDROemJMWkhwb1ZQQk9xRGdUSGg0SlI0c2pNNnYxZnYzcllpeFVlMlpt?=
 =?gb2312?B?M0pxOUdmSDBldlJYcGJYR1YwNVZKcW5ydS9IMG5PSEZVR1k3WGRKU3drS0ZT?=
 =?gb2312?B?bjlUT0tLaXFVWTU5Y0MwY2M2VXg4cG9QaEx1OU1sUVNpQytFTGgzUjZwVzVt?=
 =?gb2312?B?c3JrYlQ0a2pycENIaHVwOFBaTlJRcnZOSUh2Mm1QZ3dCc3BZcjNKRWxCSmVB?=
 =?gb2312?Q?y6r+9wMh49hmfYG1aXVDGIObE2wuQkn2cg1mRgdCBk=3D?=
Content-Type: text/plain; charset="gb2312"
Content-ID: <DC0DF3370FA22C469BF831D96E82AE77@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB6544.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f147205f-cdd9-4be3-851f-08d9a260bcb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2021 02:37:41.4894
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zQKvMvgSheQw29eU02FQeOxSkL5scqu4xVqLJrI/aXMTxJquB/OUsGH+fNGHAa4IWhfyjGriPXI8VHFWUKDjGoEn6B1cI/fzK1YFum+osAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB5195
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

b24gMjAyMS8xMS81IDE5OjM0LCBKYW4gS2FyYSB3cm90ZToNCj4gT24gRnJpIDA1LTExLTIxIDAz
OjA1OjQ0LCB4dXlhbmcyMDE4Lmp5QGZ1aml0c3UuY29tIHdyb3RlOg0KPj4gcHM6SSBhbHNvIGlu
Y3JlYXNlIGx0cCBxdW90YWN0bCBjb3ZlcmFnZSB0byBjb3ZlciBxdW90YWN0bF9mZCBzeXNjYWxs
LiBJDQo+PiB3b3VsZCBhcHByZWNpYXRlIGl0IGlmIHlvdSBjb3VsZCByZXZpZXcgbXkgbHRwIHF1
b3RhY3RsL3F1b3RhY3RsX2ZkIHBhdGNoc2V0DQo+PiBodHRwczovL3BhdGNod29yay5vemxhYnMu
b3JnL3Byb2plY3QvbHRwL2xpc3QvP3Nlcmllcz0yNjkxNjYNCj4NCj4gIEZyb20gYSBxdWljayBs
b29rIHRoZSBwYXRjaGVzIGxvb2sgZmluZS4gSnVzdCBvbmUgdGhpbmcgSSd2ZSBub3RpY2VkIC0g
eW91DQo+IHNlZW0gdG8gb3BlbiAibW50cG9pbnQvdGVzdGZpbGUiIHNvIHRoYXQgeW91IGhhdmUg
J2ZkJyB0byBwYXNzIHRvDQo+IHF1b3RhY3RsX2ZkKCkuIFdoeSBkb24ndCB5b3UganVzdCBvcGVu
ICJtbnRwb2ludCIgZGlyZWN0bHk/DQpPaCwgeWVzLg0KDQpBdCB0aGUgYmVnaW5uaW5nLCBJIHRy
eSBpdCBidXQgb3BlbiBmYWlscyB3aXRoIEVJU0RJUiBiZWNhdXNlIEkgdXNlIFJXIA0KbW9kZSBm
b3IgdGhlIGZpbGUuDQoNCm1udF93YW50X3dyaXRlKGYuZmlsZS0+Zl9wYXRoLm1udCkganVzdCBu
ZWVkIHdlIGNhbiB3cml0ZSBzb21ldGhpbmcgaW50byANCnN1cGVyYmxvY2sgaW5zdGVhZCBvZiBh
IHJ3IGZpbGUuIFNvIEkgY2FuIHVzZSByZWFkLW9ubHkgZmQgZGlyZWN0bHkuDQoNCldpbGwgdXNl
IG1udHBvaW50IGRpcmVjdGx5Lg0KDQpUaGFua3MuDQo+DQo+IAkJCQkJCQkJSG9uemENCg==
