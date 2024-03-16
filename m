Return-Path: <linux-man+bounces-622-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8DB87DB4D
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 20:21:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23682281EAD
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 19:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FD741B59A;
	Sat, 16 Mar 2024 19:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="ZSvQ7+6E"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2101.outbound.protection.outlook.com [40.107.94.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFBD1BF2B
	for <linux-man@vger.kernel.org>; Sat, 16 Mar 2024 19:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.94.101
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710616886; cv=fail; b=pncm+Kl9v13w8NdRaUfEtLU3tAJ7pH2bJR5wYiv7jWlhaNBeqw7xlyxydPyLgyZElqw73prxtxPsHoHIQg7rsbV0YMOXR5Os1NKCYGSphVcnOuqKHEpU+CCynYVuGBPR3T4J7BSaKXj3Cnp57JsZM7kUHbdCU8VsmFg7QV8E0VQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710616886; c=relaxed/simple;
	bh=dtk2li2sGsh/kC2llnoCgogLFIggvxZQkJAgMda9KhA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=OJmHiBNLSuom0gdYWfkn7oYkV5cm1jIH2nCuwx158V1gPaEWcrb1LyqtJoposc8SjaLQsqhJJa1bYmCyFL9/D4e2QN2TMr+fCnsfHOU+y0N6/dW2WBPZ8X+UIAxc21wqPS/ttH4Za840lCLkYfoT+66llM8fkfQBxiQUqG21zQY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=ZSvQ7+6E; arc=fail smtp.client-ip=40.107.94.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DoIU/ihBnDdoWI5V4XoBrjyn3vSzOzW5Ze0+ZEvqUQKtZ42g8XfGf1IhhuwYcpu0LcMNCg57cWadoL/g2YB2oZfqzq5gh0s4c7pHZEygctmV2wlLDE/IWsxxFeqhPWRE72SLR+joHRAtNlAkkKrLDN6YWRVHQWF9sUB9Z+EdoB4k8lOikA0aSobEtNoppWM48Q4zzBDo5XEW9jC+DgKoXTVBILXJhchSBeXE/5kvUAtJ0qKHrumcAYbGckWf3Rrjvm0Qq7fVAq/2Usg1XBYjul4dvE0gBIqVHmyGJZykLwOXeVXlFGBClLTgAiuFljtwsQ46jAS2hycTDW02Y8LEUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dtk2li2sGsh/kC2llnoCgogLFIggvxZQkJAgMda9KhA=;
 b=oJJw+q7NCeGH+pJxXifLZAoZgoBydB4eevG1RGg1WncGi+qKlH3dH+gGLpb48r/VeMSQlA+oV1NVykY6jAdGANE3T+254u+epC4fl6vSw/1+Be26UgzNB9v6xSefd8RpHaN6XwPQaftUy94LB2YyId4kS63JcJmdNdOK3oUyqmeUjmmP5wQCdR5XvjA+c+M14bRkQQ0GresyPDpALcJHBct2TPgboT74iyd+YBP2EHcCep81p7BdJ4HrjYkSCIhJZOHSCZWNpK8smy4q7Gxa5GxAIkWW3AWF5e1bYh7whXMjvKapCFRRxQ7EuS+eFApQpa2G7n8PVvlHs791xoS7Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dtk2li2sGsh/kC2llnoCgogLFIggvxZQkJAgMda9KhA=;
 b=ZSvQ7+6Eo9w0bNUuPkYcQTZ2XA685/vj/h/Dz07iKUiLz5dMIg/JuXrr9WunuWmO01NttfX7r2/2WfqtPc6nzEY9IpHJOm2EyiCgMv04NNuNmBUA2OSy+jTv41H11KWl9Kn8mjpRnYALMfjWvqmrnSa4XOb9GCY+lpQvLhCqfQM=
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by BLAPR17MB4180.namprd17.prod.outlook.com (2603:10b6:208:255::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.22; Sat, 16 Mar
 2024 19:21:21 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.022; Sat, 16 Mar 2024
 19:21:21 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
To: Alejandro Colomar <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Gregory Price
	<gregory.price@memverge.com>, "Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v3] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Thread-Topic: [PATCH v3] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Thread-Index: AQHadzKe8yG/9G1fnUCGaTu5Z5RWKrE5eV2AgAFGc4A=
Date: Sat, 16 Mar 2024 19:21:21 +0000
Message-ID: <A5BD70C6-4AC8-4BE1-88D5-A5E4BE5E656E@memverge.com>
References: <20240315-weighted_interleave-v3-1-416a1ab01524@memverge.com>
 <ZfTfUMG-LGPnhqHe@debian>
In-Reply-To: <ZfTfUMG-LGPnhqHe@debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR17MB6347:EE_|BLAPR17MB4180:EE_
x-ms-office365-filtering-correlation-id: 706e0a67-fef9-444d-6b04-08dc45ee4386
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 nRljRpmUVLcTEpZEJo3bDaTEB9xjyo3UBEicvYnXhYnH2S0d3UVVytnWe117kSr+WyIkXQtx/ETfDdJjNHC07bJCuRVksKOTBjnUpLr9kW3pSip6Sy/aABFSOyePV0Vvz4Lkzgk/p1UX4djpJ339I3RhGyMLA9fATmCtzWwzy46QdnVX71zXmHDY8ptQWkaYF89XWPCAK0DheX0DEQADsmHnrPbgP2GKHP3ZrKOjp3KHOZyJTFBIOb5Ae7Dw9JgXHkO2pzSBYwwA8Yqlm86Ce9V+kAqC/D815xzoSRnYLaaT33f54dHaaeLYJk4N3V0cXiOQ+klq3Er0sq9pQBYZarGBdGu3D/AUjsGc1Pe9u583Bd+Xp/U8cvF2VgoUZoBYLBiec63NbLrtZBzFNpoaUg4XgxM2s8wPx88lJHhxxL9y77My515MorLDnywFRf0hLth6nUGwbEYqb5zjRLnBu0HWG50pDAdKwLN1oTB0UdgvMZPzeS6zU9+4Ze2ifq+Jp5emsagZK1y/YR0FVrWb8o/3ydDq8H9XYbrlnkcFlCFCvWSkkw2T9408FvI1eP9Pyghemr1amzOJ21gti8htBG0RKtITtCwin7EZvLtO5wtU/16rdTutqsrL8o8UIQGDdWqpO9/QhIxyp1TzDNT1492Q1DoeLfikaIL6eBEmiOv3kMpEeQUmgvMtjA0DW5SePeKLIi19cJAq7cS8aOOpo/ncAAeIowjWLsQWnkmztSE=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?VnllSFhNamIyZG02Ti9rcnRjMFV4b3BtOHM0ZGVHaGdzZVBzeVZwSWpad0dF?=
 =?utf-8?B?Z3RSdjBKOFE1Rlo3SlE4Z1NYSU9jUHZubjFkandnOHp0YmFUOGFDUUgwN3g1?=
 =?utf-8?B?NjVwVXgvRERCWXJENnJCaWx6bEhKb29SVHVzRG1zNjVKRFlCVis5L1VNUFps?=
 =?utf-8?B?VWMrWEYwdy9hSGdXdWJXMmFtV2JYYms0dERmZTg1a0EvcjE2TVB3anBsS2d6?=
 =?utf-8?B?K3ZGTG9qdEFHNFFwbDNPM0RvT1hYTXFhbDJTd25QRDFqMlcvSGpyL3E2Zkhx?=
 =?utf-8?B?cGRqTmxxRklTTGd0QzNDWnNSWlZFelU4THhHK0VhSUVGTDdUM2ZiZHo3RDBF?=
 =?utf-8?B?Umw1YzhtOE8wNDJ0emc5NlcrUDZKem14UWt0TFY4ZWZFQ0JwQXpzNkpUWHhj?=
 =?utf-8?B?eDY4QjNrZnRHRUd6ei9oYndpRUJqLzgvWThrL3BhUzRiTXRPSnp6R0dGNlVD?=
 =?utf-8?B?ZXJ0YnY5S1RqRHNhcTAvNTllWlV5VDhsMUJzRlhtd01uUkQweXFRNWdjRlgw?=
 =?utf-8?B?SGNiYllydmJmNEZ1Tk9SWHdzb1VVVzFEZVZPUGdyV2tMelQ0cGFMOUU3MXJ4?=
 =?utf-8?B?eGlXNTgxWUNMUWQ5ajBhZ1I4QnFseE5xUnRrNVZ3ZkdEUkt0aGJGZzNOQjJW?=
 =?utf-8?B?dUJlY0ZPRUxjN2dIeG5ZY0oyMVRTRHFyNU10aTdIbmFnUVY5MERwZ2N6U1Qw?=
 =?utf-8?B?TkhyMUJ2ckNCZkF0TW1rcUgvazdtZE9vME5SSUw1NUZTZHMwa0J6TUoxakNS?=
 =?utf-8?B?cm1CU0FPVHdkRVFIVGpoYVJSMnhRSjE4K1BpcnVGUmhWMTZPbUdtSEw5M3FP?=
 =?utf-8?B?WkY2ZEVXQm56eFAvcWZVRVdrY1Rlek5uVUFFVUNNZlU0elIxRUZoNDAzVmdy?=
 =?utf-8?B?TVNjVGNBa3JodWQ5dU92ZVdvZEpzUlltcUxXVGFzL0IzcEkzUCtsR2k5VllI?=
 =?utf-8?B?WnVodHRrQW5va0RkYXpXMm9uLzh0dEFWaGRsM1ArRzllbUZUOC8yOGJVanBq?=
 =?utf-8?B?ME9sblFDcWFKWjFxUER4a04wYXh0eFZmeVlsRk9rcXAxcnZwZXRiUTlZRmxN?=
 =?utf-8?B?cnJNSFJWZndlYkErenVPbDhtem5iMkRaOHkyQ1FBVXhZTW1GajNGVXo4SVdl?=
 =?utf-8?B?VDR6dUZlcnFBZHZLRTJFT3UzeVQrK2VQcFhhRXlaaXhHSjFmaVlTY0JCdTRa?=
 =?utf-8?B?V09ySnphQitvVWFrNEY1N2RzdWJtQlZOUWRZQXVHcytRTUM0M3ZuN2hxQXBO?=
 =?utf-8?B?SDZvM2MrYTBFdldhaWM4dnd0R0lWaGd6Mm9RTno4RWx4a3lZVWowYlBLME5S?=
 =?utf-8?B?KzhTaktTNDFOdDFTVnkycU5IOVFMQkRwNWMrUFREL25XTVQ3R3YxUjcrU1NG?=
 =?utf-8?B?WTVsOUh6bW4vcXFJcUc0b3hxb1BwZ1d3TTFWS0V5bW1ZYm9VMUZJYjAwUktr?=
 =?utf-8?B?WVJPTUFoWEdGalZ2dVN6aFprQkRXLzh0NTdRZmIvZytyOTEvU0hVbEt6aGZh?=
 =?utf-8?B?eFJyMklqOXozTGlRbWExQ05MZG4vNWQ4NkRGejhXdjNHWFpDVnFVdUYyc25H?=
 =?utf-8?B?ditlN05aazJHUjNLVmtUd1YrYkw1Q2JLZTA5QVRmeHRHNEZEQUI0dUg0N2xL?=
 =?utf-8?B?dzZyemJqNUtwVXNJbWFpWHkwWFAvd0tGSjBFQXNsNk1OZWJZajlLenlwSC9G?=
 =?utf-8?B?UFRrYXZQWE14eURqZDV2UU9KV3Z5aDRKS3k3RklselVWMnluNXVYTENPTVR2?=
 =?utf-8?B?MW9RbXZZTjRvNExtZVNFUVFIVlFXVWNmUlVNdDlQSG8vdmdQb2orMExhay9C?=
 =?utf-8?B?QXpqajNCQzJBMzVyRkxLNjh0bWV4b2JqNDlOa2JkZTJ3eFEvKzdqSEJlZXBE?=
 =?utf-8?B?a04zaGlGdUhyVzZaT3FVMUo1OXlFNHhnUGg3Y3hwOEZWMit2M25RUW5Bc3Q5?=
 =?utf-8?B?ZEhNVUdwQ28xNThVOUY0c1dlMW9uSy9HKzg1enN6QWVRTFV0Nks1SGpvS2VJ?=
 =?utf-8?B?dkVvYldsRTE0Yk1mdzgzTzZMeFZrNUtuS2hBVHlmb2ZaRks4bmM0V0taajlu?=
 =?utf-8?B?YzlaTUJwZXkzZlRRUEEvQnNIc2F1ZEgxZks3M2swT3AyOG5BcmFRWGVBYjZP?=
 =?utf-8?B?eVZCS28zMDBteVZBOXZSOE1oS2c2UGt4VGpDVFFIUWJDcW5oMWtHQnNBbEZn?=
 =?utf-8?B?UVpJU0JEM21wQWdYL2JlT2VKQktRODYvenZHc1MwblAwSm43MnUwcHNPd3Rh?=
 =?utf-8?B?VG1UcC9JMWVWM29SWlFJRWZpdHJRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BB85D5B2B79B9647BD362767062F54B1@namprd17.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 706e0a67-fef9-444d-6b04-08dc45ee4386
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2024 19:21:21.6548
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jjcfMAMtR4ekkAKc/g5Ppr2mpt4IYEbQrFoLuLzNXATuEm1l4yuo5X4vuqw3kO/lB45Xm7eeUeQTiGhhO67eV1bCZWerCtCdFXchwn8OUkk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR17MB4180

SGkgQWxleCwNCg0KSGFwcHkgU2F0dXJkYXkuDQoNCj4+IGRpZmYgLS1naXQgYS9tYW4yL2dldF9t
ZW1wb2xpY3kuMiBiL21hbjIvZ2V0X21lbXBvbGljeS4yDQo+PiBpbmRleCA1MjQ4ZjA0YmEuLjAz
NTUwMzMxZCAxMDA2NDQNCj4+IC0tLSBhL21hbjIvZ2V0X21lbXBvbGljeS4yDQo+PiArKysgYi9t
YW4yL2dldF9tZW1wb2xpY3kuMg0KPj4gQEAgLTEzNyw3ICsxMzcsOSBAQCBzcGVjaWZpZXMNCj4+
IGJ1dCBub3QNCj4+IC5CUiBNUE9MX0ZfQUREUiAsDQo+PiBhbmQgdGhlIHRocmVhZCdzIGN1cnJl
bnQgcG9saWN5IGlzDQo+PiAtLkJSIE1QT0xfSU5URVJMRUFWRSAsDQo+PiArLkJSIE1QT0xfSU5U
RVJMRUFWRQ0KPiANCj4gVGhpcyBzaG91bGQgYmUgQiwgbm90IEJSIChCUiBpcyBmb3IgYWx0ZXJu
YXRpbmcgQm9sZCBhbmQgUm9tYW4pLg0KDQpDYW7igJl0IGJlbGlldmUgSSBtaXNzZWQgdGhhdCEN
Cg0KPiBPciwNCj4+IA0KPj4gLkkgZmxhZ3MNCj4+IHNwZWNpZmllZA0KPj4gZGlmZiAtLWdpdCBh
L21hbjIvbWJpbmQuMiBiL21hbjIvbWJpbmQuMg0KPj4gaW5kZXggYjBlOTYxZjljLi42Zjg1ZGVj
MGUgMTAwNjQ0DQo+PiAtLS0gYS9tYW4yL21iaW5kLjINCj4+ICsrKyBiL21hbjIvbWJpbmQuMg0K
Pj4gQEAgLTEwNSw2ICsxMDUsNyBAQCBhcmd1bWVudCBtdXN0IHNwZWNpZnkgb25lIG9mDQo+PiAu
QlIgTVBPTF9ERUZBVUxUICwNCj4+IC5CUiBNUE9MX0JJTkQgLA0KPj4gLkJSIE1QT0xfSU5URVJM
RUFWRSAsDQo+PiArLkJSIE1QT0xfV0VJR0hURURfSU5URVJMRUFWRSAsDQo+PiAuQlIgTVBPTF9Q
UkVGRVJSRUQgLA0KPj4gb3INCj4+IC5CIE1QT0xfTE9DQUwNCj4+IEBAIC0yNDMsNiArMjQ0LDIy
IEBAIGF0IGxlYXN0IDFcIE1CIG9yIGJpZ2dlciB3aXRoIGEgZmFpcmx5IHVuaWZvcm0gYWNjZXNz
IHBhdHRlcm4uDQo+PiBBY2Nlc3NlcyB0byBhIHNpbmdsZSBwYWdlIG9mIHRoZSBhcmVhIHdpbGwg
c3RpbGwgYmUgbGltaXRlZCB0bw0KPj4gdGhlIG1lbW9yeSBiYW5kd2lkdGggb2YgYSBzaW5nbGUg
bm9kZS4NCj4+IC5UUA0KPj4gKy5CIE1QT0xfV0VJR0hURURfSU5URVJMRUFWRQ0KPj4gK1RoaXMg
bW9kZSBpbnRlcmxlYXZlcyBwYWdlIGFsbG9jYXRpb25zIGFjcm9zcyB0aGUgbm9kZXMgc3BlY2lm
aWVkIGluDQo+PiArLkkgbm9kZW1hc2sNCj4+ICthY2NvcmRpbmcgdG8gdGhlIHdlaWdodHMgaW4N
Cj4+ICsuSVIgL3N5cy9rZXJuZWwvbW0vbWVtcG9saWN5L3dlaWdodGVkX2ludGVybGVhdmUgLg0K
Pj4gK0ZvciBleGFtcGxlLCBpZiBiaXRzIDAsIDIsIGFuZCA1IGFyZSByYWlzZWQgaW4NCj4+ICsu
SVIgbm9kZW1hc2sgLA0KPj4gK2FuZCB0aGUgY29udGVudHMgb2YNCj4+ICsuSVIgL3N5cy9rZXJu
ZWwvbW0vbWVtcG9saWN5L3dlaWdodGVkX2ludGVybGVhdmUvbm9kZTAgLA0KPj4gKy5JUiAvc3lz
Ly4uLi9ub2RlMiAsDQo+IA0KPiBTaW5jZSAuLi4gaXMgdmFyaWFibGUgc3R1ZmYgaW5zaWRlIGFu
IGl0YWxpY2lzZWQgd29yZCwgYWNjb3JkaW5nIHRvIHRoZQ0KPiBncm9mZl9tYW5fc3R5bGUoNykg
cGFyYWdyYXBoIEkgcXVvdGVkLCBpdCBzaG91bGQgYmUgaW4gUm9tYW4uICBTbywNCj4gDQo+IC5J
UiAvc3lzLyAuLi4gL25vZGUyICwNCj4gDQo+IEFsc28sIGZvciBiZXR0ZXIgZm9ybWF0dGluZyBv
ZiB0aGUgJy4uLicsIHdlIHVzZSBcfCBiZXR3ZWVuIHRoZSBkb3RzLA0KPiB3aGljaCBvbiBwcm9w
b3J0aW9uYWwgZm9udHMgKGluIFBERiwgb3IgSFRNTCwgZm9yIGV4YW1wbGUpIHdpbGwgcHJvZHVj
ZQ0KPiBuaWNlciBlbGlwc2VzLiAgU28sDQo+IA0KPiAuSVIgL3N5cy8gLlx8Llx8LiAvbm9kZTIg
LA0KDQpUaGlzIEkgd2FzIG1vcmUgdW5zdXJlIGFib3V0Lg0KSSBzYXcgdGhlIHF1b3RlZCBwb3J0
aW9uIG9mIGdyb2ZmICg3KSBidXQgc2luY2UNCnRoZSBlbGxpcHNlcyBhcmUgYSBzdGFuZC1pbiAn
a2VybmVsL21tL21lbXBvbGljeeKAmSwgSSBmaWd1cmVkDQp0aGV5IHRlY2huaWNhbGx5ICp3ZXJl
buKAmXQqIGEgdmFyaWFibGUgcmVnaW9uLCBzbyBJIGxlZnQgdGhlbSBpdGFsaWNpemVkLi4uDQoN
CkkgZHVubm8uIEkgd2FzIHByZXR0eSBmcmllZCB5ZXN0ZXJkYXkuIEnigJlsbCBmb2xsb3cgeW91
ciBsZWFkIG9uIHRoaXMsDQphbmQgdGhhbmsgeW91IGZvciB0aGUgXHwgdGlwLg0KDQpTdmV0bHkN
Cg0K

