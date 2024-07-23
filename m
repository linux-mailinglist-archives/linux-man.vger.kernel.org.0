Return-Path: <linux-man+bounces-1518-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 566BC93A82F
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 22:41:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79C061C222FB
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 20:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8436143C42;
	Tue, 23 Jul 2024 20:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="uzuV9Pi1"
X-Original-To: linux-man@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazolkn19012026.outbound.protection.outlook.com [52.103.32.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85B3143879
	for <linux-man@vger.kernel.org>; Tue, 23 Jul 2024 20:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.32.26
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721767286; cv=fail; b=CpaERG6MXZ2L1KN+wK/x4a3avkk6tlGA7SUP0EkUVMbKsf1G3f67Qvb3nNn4kYh4i5zCqZ/SeB47vgbu+ftJI6u3Xh+wD5rEm1An2xAJFYAQZyZWl7H29cV+UQn4Gmp1b3KXkfBlst9pfTFY1cK0xo2GNR5N2YK/++cobjxxzw8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721767286; c=relaxed/simple;
	bh=TXBcpnpJb3mU8AGXQTFKtiscESmveGZ3U/c4gNUlJJc=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=hlBtSt+ImGlWe1VasXScjO59vlzFVmOURjrVuxB3i2YoqP1QAvqOgj9bbzueCH0k4GrinirfyL5GC9Ww+EDWaSbCzyG3cSk8SXjPDeqdqhWv1cQWPiMJJxJSqfXD62tCdTtrBf2ikjn0Xo/leOWy8zCJzSBciQ7a4Nzc0giqS9Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com; spf=pass smtp.mailfrom=outlook.com; dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b=uzuV9Pi1; arc=fail smtp.client-ip=52.103.32.26
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=outlook.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BcVsfTaQFXfEuB83EBPkq6RyUx0FirFdQWtAuJVF2U74jg1XUnxUtB1cvXVtEBwaOLsiD0bumVSXcsAKLRnfeP8f03dhbyMJQnsbTnpKZqrvGN9mPa1NIgekHDrt631ExUUH4myxPhbGIEGcjCPUQrD7Awmv2qmGl9fFApd7UCfSigbh9+PE5qWj8H7w14TdrK5PrOf+rpXNtaIjqEv/SlZM9FANI4Pg2Qj3n8RRCZzXgIxCFNTe+NjllA7FFMM0uJswItTytvvnYYC01QoDFd3KQ2H7VZQAw9yIO9xggm8i61HB4aPwHhMgp4lcNQP6X4NvltEA7SbmXuw4cvugDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TXBcpnpJb3mU8AGXQTFKtiscESmveGZ3U/c4gNUlJJc=;
 b=MArljLc7IUAzUOsDhhtnQ1802XF4C5oQSOFCJzEWliaRYe2g0BFUE30kCEZqw04ieKDdrv3kFvRxq2Wkk/LSATWXSvNmEuc7JT4a9Ee1AeLkYyMS/93Qhh2zor2zI/02F8qPhbXa9Ndve5ehs4U2hxMycsk//ZHGVg8Uf03gWbBW2YYUKHI5t2wrTfjPJ4b6CLq+/zGq9HS+u/0CbYHqCYvV/G112V+xmfR2Riaj7iant2Yv10lnQxul8UE4KcKL7W83NN0WGIYMRz6Qoiq9VJ+0QB6cnhuRIMpHPSEgSAytp2vJs/BAQKylYbozWgMN2MOdP4RB3+rTOjTG9TyCrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TXBcpnpJb3mU8AGXQTFKtiscESmveGZ3U/c4gNUlJJc=;
 b=uzuV9Pi1HkfPsAkB+/+PcmIV7rdsVAfrLVcXmiQCnuEG5E7WsjDvXaD932zTFhMmYzMpWtFpzXyehmNrtHw2Xz1/zUnVuXOkVsOK06jLsXKnYRkwmnZSOq78KsswBVu/pZYjPpJyl1uKY0D16pyDdH4Gy0C39i3HcreENsZ++6BheDYRMLKBQuW6+UrLsqReeI5p02NIKe4z3R5AxurQbBLcPFa9WhtSwOhbmaVV6Icf66VWz1yTJFV4MpX4tesniErV6LlxH/q+t27DEGrHoa1JASdA2X/3fgBVBGtRApi0SYwsxYxZiyMs9Eghb8yqtnBKsSXAHhe0Q4Ubp+fpwQ==
Received: from GV1PR02MB8489.eurprd02.prod.outlook.com (2603:10a6:150:9f::19)
 by PA4PR02MB6991.eurprd02.prod.outlook.com (2603:10a6:102:105::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 20:41:22 +0000
Received: from GV1PR02MB8489.eurprd02.prod.outlook.com
 ([fe80::27a3:7bb5:712d:1d29]) by GV1PR02MB8489.eurprd02.prod.outlook.com
 ([fe80::27a3:7bb5:712d:1d29%5]) with mapi id 15.20.7741.033; Tue, 23 Jul 2024
 20:41:22 +0000
From: Henrik Holst <henrik.holst@outlook.com>
To: Alejandro Colomar <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: man-pages: make install requires git?
Thread-Topic: man-pages: make install requires git?
Thread-Index: AQHa3UAMAxHp6dHFXUGaizVMJaHlGg==
Date: Tue, 23 Jul 2024 20:41:21 +0000
Message-ID:
 <GV1PR02MB84893BF182ECFED6B946F3B88DA92@GV1PR02MB8489.eurprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [kuHKujmcupMrjIdSrqwBcM3n5kf9q+in]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1PR02MB8489:EE_|PA4PR02MB6991:EE_
x-ms-office365-filtering-correlation-id: db6d30d1-6aff-444c-76bd-08dcab57d006
x-ms-exchange-slblob-mailprops:
 ScCmN3RHayGRYaI4Y5jHNKItMGAuH0khGolG8CATtggqy/IG6gCKrhWX6WHbXOs/RggeWTbPcKycDacoc+tIanTyiaWjEQLW+fOTqrxmhzzACe2sg8lvt6AbBkZA82q/ePFtc3XhcwchZD+eVImCAudvqOLdg2EHZ0Bew1TQZf1aQ80wHdOPGhdC6By9wrH0OxYSfB8dyiNZRCGtMn9T5xZ0P7mOXmUrp3H1Y+Yc2TxWiRpSrp73P1LRIcFPTn2PeROtUlPF0TGtPi+kQz/rXNBH3SOUHIPhvH1xhY7wut/wTC+DBjvv/4slbgm0JR/OB0Jq3SnK+sB3072sYZqW41MhVkdAgY0SQ6gtvVtVKJqKMIZW8cHTOvpDYLZvaC+jVuOAQkNj54gXHyPtFYhb7RxMF5dbSMRKJHHK+jBxz2P/eiVItVcirrSJmc+BBpiwDQ6uTDWJPIhS/pKC9ZIKu/u4X770m5084FbtuasYTfJ4gTaKlMfLh3zrPwDEI4iroRYxtXbORA38jCSlM3bciKQrXxF3aulNKrrB2IQ4hVcEQMhpk6flt1YfwHzwedqZJVd2tPfd5Mkt1eSXs6Jn9qCrNZZvxfJ0vle1gW2IYz1H66UYIgB9ZBZ1QRbUU0yyfXR9VnM/0Htcr6Ch5St6dOPl/7ZBC68z/L2Awo7ZUjugYTBLeP4mblY//CU2xVV+waXdBQB8+N3uTZmfOqWJXQ9MUrtAql0mlGwZFEKKu7Y=
x-microsoft-antispam:
 BCL:0;ARA:14566002|8060799006|461199028|19110799003|3412199025|440099028|102099032;
x-microsoft-antispam-message-info:
 qjsCfmxnxu9heltZ+K/urcQ21NSv0djptjFQVIaOOt5UufcFOuY0TOcYJV1opOYPuUPAFBEu0+vMGVcx4T7vJPej6shgOv27TFucRinCVr1dwQPRoDnJVbz8F1jVEPU4N3z9tQvQWlYVFw6I50wlrjIJR5xvCAOkL7nIacvQrZ0ba6bUdHcgWsBrIpdG5rLUAEmjRv+pHUQaKHhRpdY/sF3oleQXlkogE1CzYhWqHNQ08bt11rH12O43AqM6s35D86R1kSkzIcJYkbLGhPjC/3LBAoLkyPuaUJ6RvRivbSOGvE/bA0OAgqB6aMF8oPxZH1UsS+OYiQKj4mV16CgVYGc/xbL7K96Ocfm7teN6ViVVaccIRgJIhAAaouy0PutQkli2RdXosHC+/nnlxH17oLaDrLDrpw8VmMdSnQkuXhvSAKGnOwAPeX0PEQ8t4bYCBAlrrEWc/JzvZvVklagokPmVlkGtXwOFfI0ZWotA+OPt14G6TpGKu5WczuttuxrWI74kh1J5udHsZ9EMBk8AvC3kHkAYrdd3npgYC1giMr6i/Ny3B/j7vIavv6kjJ2YrayX0yZxEqYZazFBLTJEpDrz/qayfOk+iK1NRuXDIK0w8gA+rfDzheT9sclGKwl1PoUtXX/lijIhbeS5cd16Kpg==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?aExhMmY3VHMzNHZ4d1ZBMml2eXpNbjAxQ2xpSk1KcmE3bHFtLzVZVlNsK09U?=
 =?utf-8?B?VkNWa25nL2lmU2hFMXB2a0YrNVkvdW9JQlBqMTNLckxXWXh6a2IwWVZ1TVJN?=
 =?utf-8?B?dVV6V0RySnpWQ0xnZDkvSWIvREJoRnYvUE5BNWR0ZEk0N09JNklCSjFBWUNr?=
 =?utf-8?B?ZE1FRjFLSkZ0ZXFuWFNNVEpXb29BR2I4c3F4S0l3RVZjdW5KVkNkNiszdkNj?=
 =?utf-8?B?QmUxSExBS2NJeDNGUDJOYzRSUU1INFNqR2kvb2I3ZHhUbkpnaW5tV2xWV2hB?=
 =?utf-8?B?UklsMlpuelE2dlVieVFEanFucTJRN0NRRDlwNkJxSXB4N1NadEc2NGQyaE02?=
 =?utf-8?B?a0VURFU0d3laeThwRG5YQWJMMnNTM01sTVJiK0dIMjJaMHdBeXR3YmZaRCtl?=
 =?utf-8?B?MEJmSzFZdFl0aXBsb1A4blB2K09tWSs2QllrTVNMenVOdWxNK1RQb0hVVTBx?=
 =?utf-8?B?OCs0REtMU2d4bmpaVW1KVEI2Zm9PLzJqL2xYS3E1NXA1Q0ZDTGZCUnVXRURX?=
 =?utf-8?B?ang2SXlUWi9sY1lQS2I5MmdtQWNEWWo3SmlxUWhsOUdycVhUR0pIcThCQjFj?=
 =?utf-8?B?ZkdhMDROa1BZMXVwc1h5amNpc0U2RE4xUGpsZjZDc0V6emR3b0F5aWlHRHRr?=
 =?utf-8?B?aXlON1ZObGFYQ2VhM1lHdEk2N05Fd3M2MFJZMkNwQm9kdXlkRGIzTWEyY1Fm?=
 =?utf-8?B?R011Mk01eWlkWjZRb3NTUG5pNy9TWFVlc1BiVk13Qlc2K3Bab0QxNDRWUElF?=
 =?utf-8?B?dlZPaE4yUHJvaW9PRWZhdFpaVWFUcExrNDhVVFlWa0hKZTd3THNWQWFoNjJj?=
 =?utf-8?B?am56TTlnT2JtNGNTWXFocjl1c05VNEFjMlZUdGIvR29iTGtXSHlnNXByMzA1?=
 =?utf-8?B?USsyUG0wc2ZKV3ptWTN5VHA4NXp3aVU4S001ZGZGMGlWR2t6RmNNQVpDZUgr?=
 =?utf-8?B?ZEl1Wk0vajFYQlJTZmU2MTh1MitLeG1wYXZ4RTZtSk5IVXpsOHY1eE9mNEVk?=
 =?utf-8?B?QlkyNkFLNWFlbGdGRzM0bGltalFFN3pNM0ZhcFNlbkRLSkxIY2lwdXJJZjZG?=
 =?utf-8?B?RCtNcVNRK05FaFk3YXNDOVNRSDMrQVV1UjNMYU00aWU2a25ycldobjFxSzNs?=
 =?utf-8?B?cHNqUUdKa0dxN0hvK1NqQWM1d1pYeCtwQ1ZRU0FqT0JoaGZ6aFQ1dGhWZ3FF?=
 =?utf-8?B?WFh4UDM2M3Z4TTlXY2hqbWE1bFdyNHo2dzRKcTVWWnhjWmVqK2hmVzI5VEtt?=
 =?utf-8?B?VkVKSmRiVHNxczFyQ0NqZ0Yza3RnZG8rT0xpZnRzS25ndHdBck14Y3B0QW5H?=
 =?utf-8?B?MFhseW5ka0lGdmFYYjk4a0g3cGJwY3l5UXo1SVovME5mTi9WUEpJa0RwUlpk?=
 =?utf-8?B?ZjVKd1NqWjRWcDJxR0hOM1dwT0NrcmNKTkVUN09rOHVpcDNHRFMvV1hsU2xU?=
 =?utf-8?B?K1gvNzZYeXVkVCtyYkpDZldGQnVoZjZ2RTdWMjRwRkMxSm0xVW5BNUQ3UmFI?=
 =?utf-8?B?WHdxNXVVMTVjeFYxNWxxMm1ENks1QlRVaVF6SzN2VnpzQ004bWw0c1VEMmVN?=
 =?utf-8?B?QlQ1ZWdrQUtMNkgwZXNCc2hkRW5EY1N0V2hQcDg3VGpVQWszSkJxdzB4TGZ5?=
 =?utf-8?Q?UwpbFV+EiRQldruS7die4Dol90195w2xCqLZBxgseW2I=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1PR02MB8489.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: db6d30d1-6aff-444c-76bd-08dcab57d006
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 20:41:22.0052
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR02MB6991

SGkgQWxlamFuZHJvLApJdCBzZWVtcyAnbWFrZSBpbnN0YWxsJyByZXF1aXJlcyAnZ2l0JyB0byBv
cGVyYXRlPyBJcyB0aGVyZSBhIHdheSB0byBtYWtlIGluc3RhbGwgd2l0aG91dCBoYXZpbmcgZ2l0
IGluc3RhbGxlZD8KKE9yIHNob3VsZCBJIGp1c3Qgc2lsZW5jZSAvIGlnbm9yZSBlcnJvcnMgZnJv
bSBiYXNoPykKCltyb290QHppbmsgbWFuLXBhZ2VzLTYuMDZdIyBiYXNoIC1leHUgLWMgJ21ha2Ug
aW5zdGFsbCBERVNURElSPS90bXAvZm9vJyB8IGhlYWQKKyBtYWtlIGluc3RhbGwgREVTVERJUj0v
dG1wL2ZvbwpmYXRhbDogbm90IGEgZ2l0IHJlcG9zaXRvcnkgKG9yIGFueSBwYXJlbnQgdXAgdG8g
bW91bnQgcG9pbnQgLykKU3RvcHBpbmcgYXQgZmlsZXN5c3RlbSBib3VuZGFyeSAoR0lUX0RJU0NP
VkVSWV9BQ1JPU1NfRklMRVNZU1RFTSBub3Qgc2V0KS4KSU5TVEFMTOKAguKAguKAguKAguKAgi90
bXAvZm9vL3Vzci9sb2NhbC9zaGFyZS9tYW4vbWFuMi9pb2N0bF9maWNsb25lLjIKSU5TVEFMTOKA
guKAguKAguKAguKAgi90bXAvZm9vL3Vzci9sb2NhbC9zaGFyZS9tYW4vbWFuMi9pb2N0bF9maWNs
b25lcmFuZ2UuMgpJTlNUQUxM4oCC4oCC4oCC4oCC4oCCL3RtcC9mb28vdXNyL2xvY2FsL3NoYXJl
L21hbi9tYW4yL2lvY3RsX2ZpZGVkdXBlcmFuZ2UuMgpJTlNUQUxM4oCC4oCC4oCC4oCC4oCCL3Rt
cC9mb28vdXNyL2xvY2FsL3NoYXJlL21hbi9tYW4yL2lvY3RsX2ZzbGFiZWwuMgpJTlNUQUxM4oCC
4oCC4oCC4oCC4oCCL3RtcC9mb28vdXNyL2xvY2FsL3NoYXJlL21hbi9tYW4yL2lvY3RsX2dldGZz
bWFwLjIKSU5TVEFMTOKAguKAguKAguKAguKAgi90bXAvZm9vL3Vzci9sb2NhbC9zaGFyZS9tYW4v
bWFuMi9pb2N0bF9pZmxhZ3MuMgpJTlNUQUxM4oCC4oCC4oCC4oCC4oCCL3RtcC9mb28vdXNyL2xv
Y2FsL3NoYXJlL21hbi9tYW4yL2lvY3RsX25zLjIKSU5TVEFMTOKAguKAguKAguKAguKAgi90bXAv
Zm9vL3Vzci9sb2NhbC9zaGFyZS9tYW4vbWFuMi9pb2N0bF9wYWdlbWFwX3NjYW4uMgpJTlNUQUxM
4oCC4oCC4oCC4oCC4oCCL3RtcC9mb28vdXNyL2xvY2FsL3NoYXJlL21hbi9tYW4ydHlwZS8KSU5T
VEFMTOKAguKAguKAguKAguKAgi90bXAvZm9vL3Vzci9sb2NhbC9zaGFyZS9tYW4vbWFuMnR5cGUv
b3Blbl9ob3cuMnR5cGUKW3Jvb3RAemluayBtYW4tcGFnZXMtNi4wNl0jwqAKCkJlc3QsCkhlbnJp
ayBIb2xzdA==

