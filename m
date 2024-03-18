Return-Path: <linux-man+bounces-660-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D349987EB29
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 15:39:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 986AFB217A0
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 14:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 659954D9E5;
	Mon, 18 Mar 2024 14:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="wgUDCbh/"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2095.outbound.protection.outlook.com [40.107.244.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E521E48A
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 14:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.244.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710772734; cv=fail; b=sCZvg6llrGeT4Ro/JvsxkY5/eAmLKOv28pPCIA88aZKx5WVCQnwMufwf15reSQo1W61UJIYJvG5KOtg43u7B+ppY4ZqN/NMawhnmwXCUu58rqLpIF72b2SkdVQdkQk6dzYkb6kGuOuk6F08cbTuorhcnslaSMVNhq8gVeHnw5AY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710772734; c=relaxed/simple;
	bh=jCZSM52DTJwmbozJWh++fcrWwtFjSNjQ04tWaVpvoJY=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=s0nVKcj7i0ZitdnwpYPYfDFBcZRx2B5vkJazzHz7ij4rLFG4y6Loymnz2xmouWCFICa2dEJUXCRDAqeIhIXV1F0uUnQTATS9T2bUeGb4Z3+CHajOLkVcWVShu1+JmwNoPRDnpQpeU/11PTdkTbwA9QzVQ9mPP3mQs5rLd/i3nNE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=wgUDCbh/; arc=fail smtp.client-ip=40.107.244.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bmH9lz/N6sAsQc4cZocseJEe1aNX9M9CQ5s8QKqcbcfGH5NJCY3vu+6ZLwnRgDqs/gm+ByQU6Dx5K+X/DlRUi1lEk9XUgQZRgoPejiZ27V1rWnDu7mK33uak7yRutPhpVAcDr/bKgnrRzOsv8p/LzqRJLnltpcZ8WTEkOn/vDidite5n9vPHGaH8ziUtF2qYggRLZ7cjd3lwORR3F71Za8qKBM2gfT0+gHjtT475JVesnZOv8O6iHyqX8aBxbPANFxwQGRktK+nSY0I/mW0aChZA0BITYoPvmM8qMSlqMIp//VFie4IyapwWmGr1PzO97t3g37BXsVnOnaTJnGcswA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jCZSM52DTJwmbozJWh++fcrWwtFjSNjQ04tWaVpvoJY=;
 b=HP2qw9ivzPS5vxl/yu7AVpfEGtwy2T3uHOMsa7FByY1qPDnNhbbEepYv2mWLxtCxUiSJX5N3awXw2MPqq/16m7+Db7hJSEp/LvNUusGVEN/I3Bm4jtER//jTHUTTblPgmOxermVm3Eb1Ft/lCFjZLlrC8TpxPxp0bAYoBdCoZV3Dxknkgc2Wxq2t3AoS1+Am294o+YsmxF7dp1dVK5th91cHUzUOslQJpPqxKtZ/LjMWm5Yntql6TEFjoZF9njXhIVT8V6OIhqsvbtC3/y2Fg4ceQ4AoGvs3DmwgBpMuR0VyiruN5vOqr8WbfNHq7guSAX4xZil+sM4xoyHUVS4b9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jCZSM52DTJwmbozJWh++fcrWwtFjSNjQ04tWaVpvoJY=;
 b=wgUDCbh/xh9Jt92c6HSa3sY1Am2Bfb+t8af3QtMd5fUnNnf5ScubgBQl9m3el+Tco3lc931THiYg1pQAwvdCwk1Hn1czc9nJR+0kAONJBd3NnRrGw7T1qyrZA/IB4CIOi8EeVp3wM5CprefM2U9FWH3TSnOmhZvM0NMLDTX9dxs=
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by BY5PR17MB3730.namprd17.prod.outlook.com (2603:10b6:a03:232::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26; Mon, 18 Mar
 2024 14:38:48 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.025; Mon, 18 Mar 2024
 14:38:48 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
To: Alejandro Colomar <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Gregory Price
	<gregory.price@memverge.com>, "Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v4] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Thread-Topic: [PATCH v4] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Thread-Index: AQHad9tD3wbGkZ1foU6YLBfH9CwbA7E63AUAgAK4MIA=
Date: Mon, 18 Mar 2024 14:38:48 +0000
Message-ID: <CE2DBC36-6297-4B9E-BA65-F14129A927EB@memverge.com>
References: <20240316-weighted_interleave-v4-1-6ab516f12ced@memverge.com>
 <ZfYJ7MQdjRC3-mzN@debian>
In-Reply-To: <ZfYJ7MQdjRC3-mzN@debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR17MB6347:EE_|BY5PR17MB3730:EE_
x-ms-office365-filtering-correlation-id: 31b8e8a4-3f4f-43d1-f6e7-08dc47591f3d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 bl9YbXU4pG3xuLPCKZih8Br4c3H3fRPjjRkwsxTHm3iKHU1SB5JWGPpQp69Hfyxk2Y4Pp3AbdJKCBQvPcvZIVEAN+lJwiAD8NG5CCTydNjfffkXmDzVNXNsxbfPQyzMOklXs1H994+bESpfB7VjPz+GXQ+KqRiWiqPy60sFkpoEiEf84BAkRCoEQ0L+4wJe3eK5EVaw3PhCWu3OVQ5NMQ1mYz4og964oZx0GVQG0JtycMu79hIoiKGssTLiBUOkyBoAiyH/eb+bE7Hnhqhd8RqpXfEpdkDQP/IfWIatyVQXhF8+hAWUj9+dsxZ3AqRVGQ1OnmaRkGohBUW54YJrGtkx/QtAd4H+A9xb5v7T+U2h+rt6Kbx1dHXtkcqf3o50gkxjbD9hKvbT1CEAA824DNe3YlEjr0czdSFe/QtMj113Eof6656mibjYI9X7y3CJlj9zanGDtLOQBGAZr8klI8KGn1PlmC3S6JNokZJkuGOjziQVSJV6lAnINAjcugSgHh8u71XyphjLMXknfyGNCJPEvyKMywzMQY2oZzEV6C9yo5FgZ8Kxty7cC8lM1zKPv/Z3bx3lFqwp7L+SuNPGt3Gk+LbEka+EX5HRGxDbO5wVumBSbZtiKgIwO9Wk0FA3ZTa0oUeenzJyuMYkTJWoRiS3kPW26WfxJTyV5SrLnjPQ=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?UXNYZHRPc1ZRbnU0TDlRNDBaQVpRb3FCVnowR3ZIbzNQTnNyU1FMSEQxSnFE?=
 =?utf-8?B?MHNDQjgyZGFKVkcvZ09SNmhUdDlieVN0YnBnL2UvTEEvbVZaY1hwTEdTakZL?=
 =?utf-8?B?UFRyamgwRVI3SmVaMVpnUVV5bFFScDdTWGRkd0lqK2d6NVNMWkQ4eUtOaTdK?=
 =?utf-8?B?ZzZhcFF0R2UyR09VanV6L29iZHc2a2FYeUlkWjdUYlN5a2hNWUZ3SFpGMXlT?=
 =?utf-8?B?RWxXNmQrRXlkVGlybjhUWUVpZ3dYOXZ4dUVyekpxRUNSaXJVaWhpTzQvNU14?=
 =?utf-8?B?QVVwTThTVWZKOHJYQm8raXFRN0lnaXdxRVdML2JCMUN1MDZEbG5nVEQ3U0Uv?=
 =?utf-8?B?RXF3NC95U0N3QzRSK3VISjlTaDRnM0xlRTlPWWhDWWFvbEdHcGNRUXFmUi9G?=
 =?utf-8?B?OFhYWWdqSUloSm9oRDdNMC9WRXRSU2hELzdpTkRPaEFxT0JvcTN4NGdHNTQ1?=
 =?utf-8?B?NVd2VmlUSDA1dEFWT001VzFhZUhwaDR2Z0thVlQyYng2akZXYWRHVzFZN1ZR?=
 =?utf-8?B?b3R0TU1rQXNTY1VFS0M1cEtWV3cyczVmR2lUZVVaVTlQdi94L0lod2x5TGtF?=
 =?utf-8?B?MXJjNW5yTVdUb0t6SFY0eWlZZ3dmUnRHTzFLWE9rZmI4bld5QkpUZm5yQnBW?=
 =?utf-8?B?QnY1L2dWeU9oNGd2NDMxc3JTUHgyRkxNbzB3eWRrWDhKM1BWOUdGTzJ1TE9l?=
 =?utf-8?B?aXNNVlNsem9XZEUzT0d0RCtSazJtdTFvZzAwSURjT1lyU2h4b3JQV2ZjNW9p?=
 =?utf-8?B?RFJxQVB3czlqYUJlNVVyaDdEM2c2dDZoVXA2cnJwUzZXZ1FNRjVmcVFVS09i?=
 =?utf-8?B?WnkvRjFFeUpMNHdOcXl3NEthYktJR01waGZDZFNqTkJFY3pibHZXSDBwQ01F?=
 =?utf-8?B?QnZLdTN5WDRwbXIzTDVCaTJJOTIwMEhqbFo4YWNZbTJWOXlxdTFQSXdNK2dR?=
 =?utf-8?B?bEc2U0x2cnZQdGkyQjd6c3pQRFhmdFQ1N2ZoWFNUUEd3Rno5My94SFRDVzRi?=
 =?utf-8?B?TVNoTFZHUHY2ZFhCanlXRWRqcGp1NXJMMVhwZGJJM1A2eXB2aEVsY3F2cG0w?=
 =?utf-8?B?WlNIaWdoMTIvQTgyR3lOb2swMXcyYlp5d0pRMm8xWlNUb2hXSUFJMGUyb3cv?=
 =?utf-8?B?SUt0dStxYm1wMmNRcDVRbWNXNmpyQzE4RStPWjNuL1ZGUjNuVjJKUHhYVnBu?=
 =?utf-8?B?S29USHRXVVJFekZtVHVrMVE1dzdzVVZKOVlwa1dEYXkrSFQ5TTB5VG51aDlM?=
 =?utf-8?B?QmhEVW1PVTNoRzJSSU1LaWtnc0Jsci9TYnBJeUxacm1nRjlTTlJJNHhCUGNl?=
 =?utf-8?B?TXdxQkdGcTBlUlVZTGUra2JSSGp5dFlsYTFuL1NWSmY5bnh3RHlYaURiSFI2?=
 =?utf-8?B?WEJUelRnaGtUMEQ0cUpDNkRodSs4cHgwcmZCMW1Ob3BHSWlZL0s1VVNxbGkr?=
 =?utf-8?B?SG1QTDdDaGw0TW9vRXM2ZjloYTdZOEhRQzFoa0RqSVY0R0JWSTRJakN0c2ZS?=
 =?utf-8?B?K1JYdjV3WnBNOW9KV3EycmxMdTZiM1dSYjdGYWxKMHZWUzM3dmlsOFhmOTI5?=
 =?utf-8?B?NjYrbGRYS2pTN0hmdEIzSktiOWp0NWlBWFM5cENubG1oYVp4ZmxURWl1UnJG?=
 =?utf-8?B?QVdDeXZzVDE1VXZCcm11dmRTZWFhbzc5d1dwcWg3Z3I3OTRFYU1Yb21IUDd3?=
 =?utf-8?B?L2VTbjhpQ3RNRWJSTnhzQ2lqTU1sOGZ5NlNsaVozRG1RSWhqK1NLQ2psSWpE?=
 =?utf-8?B?ZmhZUCs1L2craHh4cmVqOXcxcXdCNitReGJHSVdSNGtXeDk3U3ZOQjhPbGFJ?=
 =?utf-8?B?SVdlU3JDam9aWko5UVVUVGVDOUxhdlpxOFBpSytpUGNmb3VGUVlaTXpBaFhB?=
 =?utf-8?B?UkVUZExPSDMrZ0MrZ0IvUTRuMDNZQnZrcDUxV0hVTmFhcFB4RWZVekV6bENk?=
 =?utf-8?B?SEVvRnRwM21GbGh0QWVQbVhDanF6UTR6V3ZSRnprSElwZ3JjRTkzVkN0Q2Zp?=
 =?utf-8?B?WmlQeUlObXpWRTZiU1hDamo3WHB0YkE3ZUtOekdPTXNVWFYyL2ZIVUVNQkdl?=
 =?utf-8?B?NG4rTFd4Z29hc3o3SVhYWDVTeUJWeEhoVm1qRGRQRW1OVnlSc1VjZ0RITWFF?=
 =?utf-8?B?ZS9hWUJvQitISUQzZXFRdVVzazdXZGtselhVQTNwbTFhYXJZN2FUS2pWc1pG?=
 =?utf-8?B?S2RWL2xDV2JyazJqc3VCLzgyZkw5V2NLVmFMYXphZ0ZFRWE0TUJBbkR1am9C?=
 =?utf-8?B?eFZJbmtkMjJyUkhLMFZWMExSV0RRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7F36D978EF00F04F9516B433E1FB37D7@namprd17.prod.outlook.com>
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 31b8e8a4-3f4f-43d1-f6e7-08dc47591f3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2024 14:38:48.1128
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fXuXa7MIJI899XybqU27n/La5bfqX7DbLdGivrKQ8sIArXJPrxle1qJqtWbH3yOHnwkwpLvbRLrXffCl90oMR/K0DSUJcpe2OK/+Jf8nP7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR17MB3730

SGFwcHkgTW9uZGF5IEFsZXgsDQoNClRoYW5rcyBmb3IgbG9va2luZyBhdCB0aGlzIG92ZXIgdGhl
IHdlZWtlbmQhIEhvcGVmdWxseQ0Kbm90IHRvbyBtYW55IG1vcmUgY2hhbmdlcyB0byBnby4NCg0K
PiBXZSBzaG91bGQgZG9jdW1lbnQgdGhlIGtlcm5lbCB2ZXJzaW9uIHRoYXQgYWRkZWQgdGhpcy4N
Cj4gUGxlYXNlIGxvb2sgZm9yIG90aGVyIChzaW5jZSAuLi4pIGluIHRoZSBzYW1lIHBhZ2UNCj4g
DQo+IEhhdmUgYSBsb3ZlbHkgbmlnaHQhDQo+IEFsZXgNCg0KSSB3YXMgcmVmZXJlbmNpbmcgTVBP
TF9MT0NBTCBpbiB0aGUgc2FtZSBwYWdlIGFuZCB0aGVyZSBhcmUNCnR3byBjb21taXRzIGxpc3Rl
ZCB1bmRlciBpdDoNCg0KPiAuQlIgTVBPTF9MT0NBTCAiIChzaW5jZSBMaW51eCAzLjgp4oCdDQo+
IC5cIiBjb21taXQgNDc5ZTI4MDJkMDlmMWUxOGE5NzI2MmM0YzZmOGYxN2FlNTg4NGJkOA0KPiAu
XCIgY29tbWl0IGYyYTA3ZjQwZGJjNjAzYzE1ZjhiMDZlNmVjN2Y3NjhhZjY3YjQyNGYNCg0KSSB3
YW50IHRvIGFkZCBhIHNpbWlsYXIgY29tbWVudCBmb3IgTVBPTF9XRUlHSFRFRF9JTlRFUkxFQVZF
DQpidXQgSeKAmW0gbm90IHN1cmUgd2hhdCB0aGUgZXF1aXZhbGVudCB3b3VsZCBiZS4NCknigJlt
IHRoaW5raW5nIHRvIGhhdmUgc29tZXRoaW5nIGxpa2UNCg0KPiAuQlIgTVBPTF9XRUlHSFRFRF9J
TlRFUkxFQVZFICIgc2luY2UgKExpbnV4IDYuOSkiDQo+IC5cIiBjb21taXQgZmEzYmVhNGUxZjgy
MDJkNzg3NzA5YjdlMzY1NGViMGE5OWFlZDc1OA0KDQpXaGVyZSBmYTNiZWEuLi4gaXMgdGhlIGNv
bW1pdCBpbiB0aGUga2VybmVsIGdpdA0KZm9yIHRoZSB3ZWlnaHRlZCBpbnRlcmxlYXZlIHBhdGNo
Og0KDQpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9ha3Bt
L21tLmdpdC9jb21taXQvP2g9bW0tc3RhYmxlLTIwMjQtMDMtMTMtMjAtMDQmaWQ9ZmEzYmVhNGUx
ZjgyMDJkNzg3NzA5YjdlMzY1NGViMGE5OWFlZDc1OA0KDQooRm9yZ2l2ZSBtZSwgbm90IHN1cmUg
aWYgdGhlcmXigJlzIGEgd2F5IHRvIHNob3J0ZW4gbG9uZyBsaW5rcyBsaWtlIHRoYXQpLg0KDQpJ
IGNhbuKAmXQgdGVsbCB3aHkgdGhlcmUgYXJlIHR3byBjb21taXRzIGxpc3RlZCB1bmRlciBNUE9M
X0xPQ0FMLCB0aG91Z2guIA0KRG8geW91IHRoaW5rIGp1c3QgZmEzZWEuLi4gd291bGQgYmUgc3Vm
ZmljaWVudD8NCg0KU3ZldGx5DQoNCg==

