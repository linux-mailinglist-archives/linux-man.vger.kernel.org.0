Return-Path: <linux-man+bounces-1363-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B365929A3A
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 01:20:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5C501C2039E
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 23:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA41014A82;
	Sun,  7 Jul 2024 23:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sei.cmu.edu header.i=@sei.cmu.edu header.b="BN6Rrk3K"
X-Original-To: linux-man@vger.kernel.org
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0042.outbound.protection.office365.us [23.103.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F79101D4
	for <linux-man@vger.kernel.org>; Sun,  7 Jul 2024 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=23.103.208.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720394395; cv=fail; b=FwZB4ciItc79EgDMBOuPLPreafIpFPPPrdUxLVkoCD0xpWvFlQ9JRE/2rfS7ZYOqwwXuuexw88zTra8CWpEh35d+DkEcoaoNNn1MuOj0suTcF6TZ1rs/v8aIJDq0AEz7cFyFudBquAnkTK+7IEQO+AvSbArMGq5PV2XuNMNoyRE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720394395; c=relaxed/simple;
	bh=7G6sOhm5JkMENMqcABzSTT0TeJtP9kTwS2tbVs+VeyA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=QHdcT7kDn3MEPJoGQz8Vjmn1n+HszC5GQRBsKeyx+7Sz5ce4QHTyBu9t5KXPS3+g7o6gZuPreKGlWKNUIvTWw3W+MtseQaLPGon4sI8pGEvRzXg+E0kQVpRGM7v6BTeAYJ3yW1G5Sc5D1gJ82ytuqa7cjEUKxzXN1pl4lGydIC0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sei.cmu.edu; spf=pass smtp.mailfrom=sei.cmu.edu; dkim=pass (1024-bit key) header.d=sei.cmu.edu header.i=@sei.cmu.edu header.b=BN6Rrk3K; arc=fail smtp.client-ip=23.103.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sei.cmu.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sei.cmu.edu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=whZNbJreULz0R09ylGHcADtuSAZxInToQHE0gwCWVUjZml9FFgq3Anfx9fz86mul50LJ/daeaamUOZWXuqx6o/ihoonu1Ixo/tkLzMmTIqstSdoIpZ8LMgreylzToncOZq218ZFksjyNXY71eimGtzf/VCaMnP6upH27y7BsPncNkkoOYwe7HdHVENIqMV0QEIpE+dvfac69B2fA/UzM05VLZ6HzXMesV3H1QHbKd1SD8riimze06JCriVUMHqs+ut023QBPxp9PjWWNF0KzrjmwsgTfJmlDbFAbiguGxemy95Gl7CpOV7kMGwxom2cg4sy3LdVLvIg/njBA05Tz8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7G6sOhm5JkMENMqcABzSTT0TeJtP9kTwS2tbVs+VeyA=;
 b=p0jmEpY3/XMru3cRnsQE+WqDAJ6giUQDH6WDdCVwsNrYjUSpkd++I2csmjdbbNwm73/vSL3OCDyOouSriTu61YeyreqVhdbnaqSMxJ3F5uNB9ONQ8apTBWRAXkLQd0QWsDgtdMdg2SoJTl1T/ctVhQeQnGClgdNu26f609U/rxQ855r2QQ2d8M+o6atXBwirwY1zmUYYxehDxfQE/dJS/lubtygmVVn6lFRJRgAjuehaUZKpaIZBJT0rG+u4VMm7WFTG7wKrjy3yDWPEDsElBYYLH9k80JbfTwXy/SvXk1abCG02z74B2w0zdYXpdKK5riGxBFU5lNS64q1iUzGnUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sei.cmu.edu; dmarc=pass action=none header.from=sei.cmu.edu;
 dkim=pass header.d=sei.cmu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sei.cmu.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7G6sOhm5JkMENMqcABzSTT0TeJtP9kTwS2tbVs+VeyA=;
 b=BN6Rrk3K3KqLZJPIo73tR4ZARDTgx5sjPWzDzCm0nPsDCnRrs4WC2x37ekxPC0WEJZg8BJ2ZvfmQkb6FgNI8kWQ80cXtb1qVYWVo3mjj0k13Xy+Lfw7j1rmYFZckoX8qpQP6LdyrZ8eaeimORYUhLl00qd3gQGcwgoowjQRN29E=
Received: from BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:182::14)
 by BN0P110MB1657.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:184::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.33; Sun, 7 Jul
 2024 15:46:48 +0000
Received: from BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7202:3532:2043:b08]) by BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7202:3532:2043:b08%3]) with mapi id 15.20.7741.030; Sun, 7 Jul 2024
 15:46:48 +0000
From: Daniel Plakosh <dplakosh@sei.cmu.edu>
To: Alejandro Colomar <alx@kernel.org>, "dplakosh@cert.org"
	<dplakosh@cert.org>
CC: Martin Uecker <muecker@gwdg.de>, Jonathan Wakely <jwakely.gcc@gmail.com>,
	Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>,
	"libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, "gcc@gcc.gnu.org"
	<gcc@gcc.gnu.org>, Paul Eggert <eggert@cs.ucla.edu>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, LIU Hao
	<lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James
	<sam@gentoo.org>
Subject: RE: [WG14] Request for document number; strtol restrictness
Thread-Topic: [WG14] Request for document number; strtol restrictness
Thread-Index: AQHazxWq8g76YsTB/EuCMvxCZwWWmrHraqkg
Date: Sun, 7 Jul 2024 15:46:48 +0000
Message-ID:
 <BN0P110MB13395AA2A20DF96A611111B88CD9A@BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM>
References: <20240705130249.14116-2-alx@kernel.org>
 <as2a3sc6di56zlbroi35lmpodwyyshyueqao2qa2c7cxoz5pes@brotew6b3534>
In-Reply-To: <as2a3sc6di56zlbroi35lmpodwyyshyueqao2qa2c7cxoz5pes@brotew6b3534>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sei.cmu.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1339:EE_|BN0P110MB1657:EE_
x-ms-office365-filtering-correlation-id: 49528cb9-1590-4165-decc-08dc9e9c02f3
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|366016|41320700013|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?ZVYySlhWdUFlUXJWNUhMczNlek10M3doNnEva0tLSVoxcHd2V0F0eGx3bkkx?=
 =?utf-8?B?MFM4V1BPMlhUOUJVeSsxajhlVDBuMG9CRWs0T3NpQm8yK05pUGpXS2VtV29w?=
 =?utf-8?B?eVlXdVJOeDhCWGozWjFxWUpKVVJJNFd1UFpCMlR1bW1LZnY2bXpSeXMxclBy?=
 =?utf-8?B?Z0NWSVdqbDgrTm5oRHRXODRNNElUTEt5TnE0eldNL1BWOFhxRXFSd0MvQlNo?=
 =?utf-8?B?RndUU2FROS93cG1VeVFBaGdtZG52UFkzbi9KcmtYYWdIdXpCeVRLajlXOS9K?=
 =?utf-8?B?WEF5bWNjNGlRK2Z0Mkx6TTNlcm5kdWhEUjZ3cGZtZWpienFaZlMrenBhSCs4?=
 =?utf-8?B?WFVQYzAveklTOGVNYWI0azN5dHc5cHVjOXdOdXROYi9QUVhhWEFkVkIxTVVJ?=
 =?utf-8?B?Y2ZveXZPRWljajJLMGM4SHowY3Z4dWJMWVZQd0lBWXE4akZTazhtY1liWUNl?=
 =?utf-8?B?ZUppcEJKK3pMQXg4RUxCNjRMR0NyTFloVmhlRGVkRjB4OXFrY240S01QUTB0?=
 =?utf-8?B?UDRVQmc0RkdsTU1jYUZETnNYNk5wR21Nc0tMbVdnUDlqMEJQcDdNYnBwVHBT?=
 =?utf-8?B?dlNGdTNxT1A1VDJhZzFEV252ZDVQRVZsZDJKamxsVmV0ZXpDZUxNd0N4d3ZM?=
 =?utf-8?B?L3FHMUE4eHFic1BlRlBkLzR2UXBSQ0xialA3eElKSm9hLzFINmp0TjhKTm5x?=
 =?utf-8?B?MFVHc0ZFZEZzcnYvTllzTVNNNVpwbDBtdjIrZHY4Tzg2eVorWCtHb3NISmFE?=
 =?utf-8?B?RElSYTBmeHNYM0RpWUxjdXZsT09XMmhxR3BuSVlKSnFzOStTaWVzMGphSmRp?=
 =?utf-8?B?OTRzeGN5UlpwVkwwejRlVmV0cUsvSEJLaFFIZHhmZG1CNXp2UEpHYXppUkFI?=
 =?utf-8?B?UmhnWGphMnd4YnVLZUFEb3Z3RUtVOUpoaUFpaFE4VzNIZGFLUUtsd3I2Znl0?=
 =?utf-8?B?ejFqTEsvOFV2RHMxK05FZVZEN0RHb3VnNldsdjVubWdaOExZUWRYTzdISzVn?=
 =?utf-8?B?Sm0rMHp2T1k3RzFQYVBBZVptMHYyUWl5Um5lVTlvQ0tVUUU1ZFhjZHZFNlJs?=
 =?utf-8?B?K0RBTHZjWFJvNWI3ZkV4cERoRkp0MkFqb245WVVwOUkwUzhEbmt3RnpmTDFX?=
 =?utf-8?B?d25vUkNWVVdhMWFxRmU3RUt4Y2Rxc0tPOTdQVFhxVWpFTU52QjdXVUdHYi93?=
 =?utf-8?B?UWF1c2UreEErS05hV0JhdUNkaW50eDM4TURPNEdHYlBXODNpdHpsTXpMemlU?=
 =?utf-8?B?a1VNbjVHQ0FoSTVTalUyWmc4djY0aHc5dzBUbm9lVjlKS2RhRnFoSkVPNEYz?=
 =?utf-8?B?SU9KOEpCUXNPd29jQWt6YTEwQ2NWWjVwYjRZTmxSZjl2MjIxbTFDT3ZKN0E0?=
 =?utf-8?B?S2FZQWdRU0JXUWtyaEM5VHVobGdGNTNMemIwWDBCZXVSbG10N3kwandaa2lM?=
 =?utf-8?B?RWthcE52VXVKd1Eyeit4SmhPTHV3bGFUSmpEeUtpZld0aHlTdDZNc3VDNVVZ?=
 =?utf-8?B?TDhOQ1UwV29xTERualdoZnRHNHRHNzJpYTlHb2YvSlJFQ1RQNUVqbUhKZXN3?=
 =?utf-8?B?WllhenI5YUFXbDM3bDdWQ0NSamhTY0xHbzNEcDN5MjB1OG5WRHczdzk4U0ls?=
 =?utf-8?B?clZsMzhOUVlpeXA0RkFCZFd5ZnFlbUlJY0xKSjFsRTBtTnB0R3RIVVZCc0hk?=
 =?utf-8?B?YisyYnZvQ1N4MXVBVW9NcHovZ1oraldOMmpsY1FvcEJMeVI5V1Z0OC9lMUkw?=
 =?utf-8?B?ek9Yc1RxYXhndzhPWjFPL1dIUkEzVlhrWHZpcXlENmRtVzNOc2plamxzU3hm?=
 =?utf-8?B?SUFibGFrb2QrNHZDSDJTUT09?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(41320700013)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?ZWswTVV1WDdndHdvZmlaVTN4RStvbHUxWDRrM3paYXNFY0hkbDloR1ZpN3FW?=
 =?utf-8?B?ZWwxTXFyRzBUS2NKcnBXZHVmZUpaZjQ4WFNoeG4zVzdpNWRKb2pqZUxQTU1h?=
 =?utf-8?B?Z04wWGd0aUt1ZFdUWVQ1SXNMb2RkQWVBQjFUa3ZUTWNPYU03L0syVGxsRlp5?=
 =?utf-8?B?VEZOamptVHJKdUhNZkc1YS95cXFlUTA1UCtsMXp6eGRNU2U1TE85TXhXUERI?=
 =?utf-8?B?aHpWZ3Q3eTFmcktZS0ZmZGJpOUVvTVlRVUtqdWcrLzRHYXd0VGV6NkpuM3pj?=
 =?utf-8?B?SVlyUTRsWkQ2VHU3cjBCV2x2RTZyc2o0OXYxWGc2ZitFQWxvY3VDN2NtQWFk?=
 =?utf-8?B?WUNOWmpEYkszVm9vKzMyNEN1MmhjZTFLWDEvUE1mOHNQbVhRQm9MdlRXU2h2?=
 =?utf-8?B?T2Eva2ZzR1cyYWFUUHFKeFJ6WDJKY090dXlHZnhOY29NSHRIOGV6MHRMVHRH?=
 =?utf-8?B?UEZCbXZXNnFPV3ZVWmljOUNnbFJYa09NblJPQWlaK3VjUTRIeXp1dFZEMWMw?=
 =?utf-8?B?WkxpS29xUmdYaHRWQkdscEViYVEwZVBSQ2diQ2VRSkpoQlFma0pCOWtJc1JQ?=
 =?utf-8?B?a3NORlZPMkRTYXdVNHFMeGN1NkVvOEpsckdjaVlDeWlONmNjYURYMFljYWVY?=
 =?utf-8?B?K0g2ZkRYdWVlbXZsbnM3T25HWFJlTHYxVmZCSUI2dVhsNGxSR1JyUHc0dGZ6?=
 =?utf-8?B?RisrZVBnenZ6TTFIdThNYXJBLytVd2ZzbU9Kd1NiRHVkVGhsVlJ4dHYraTRt?=
 =?utf-8?B?QXFleGZPS0NwME44RC9vbnU2UHRxRGpmZWNuUzBOZ0k1cnduWFhPeE4ydnhM?=
 =?utf-8?B?UmY1MFlUWWQrai93TG52Tnl4L2VjcVluZTdoS3hZQVpMeXNUU05LRjlZc3lw?=
 =?utf-8?B?UUpLM1dmMnZnQlIzMnlZRGdXWkYyNHo0YkdLaXFaemRnOWJXTktqR1ZuejFS?=
 =?utf-8?B?UzBURHBEZDdlMnVMOTlMTy9JZVp2RTB4ZDR2YWdKYTNWZnhwMHBnSk1yYnc1?=
 =?utf-8?B?cmc0bmd5RWtpRFFFMVVjcDhMdWxJOVVxWmdtZFpYZHBnUit6M1gxUFpBYW1R?=
 =?utf-8?B?dWpvVlVJZWFFVk5wN2d3WWFoamk2OTNuU2dUbHRVY1U4Zzdhd2RoZmFTaC9q?=
 =?utf-8?B?K1BqSjI3QWp6ZW5GMGVjOTNzYzlKR1RaSHovTWZ4UDM5Y1JzQzU1QUFVdHNp?=
 =?utf-8?B?VnhBQjFRVU5Nayt6WmFqVEpRSVhEeHhKbXZIOFpsNXJKUEQvL3pNQ1NPY2s0?=
 =?utf-8?B?OVNKRlRmYUhzS29QWTZya0hpRGdkMlpwTjhVcmZaaDBxVHZKMUNNRHl0c3Zk?=
 =?utf-8?B?R2IwczBITVZMYVdvUTlqNG9xRExTcU1BQ2tmcEt6WkVCVUFucS96c3NSQWYx?=
 =?utf-8?B?SWJLMlFUSzY1Uy9XbFA2OVJkeklsRkk2U1RPelUyZjQ0ZHdMKzJZMlM0TDZF?=
 =?utf-8?B?a0lXd2syV01WanJPeE5nR25aS1VTVWs4cjBMVGx3eTBTNHk5N1RxSFlHTmRt?=
 =?utf-8?B?UzdZY29RY2VqSThveFU3QTdFSzFXNHZDbElWa1o5OTRIVEh3TldvL2QxMDly?=
 =?utf-8?B?NXFTRllOV0l3VUJXSzMvT3c4Ziszanp5V1RmN2dlVUE2ZEpxVUpyVEZRejdM?=
 =?utf-8?B?TXZxWDhSY28vTUdvaWRUK3RQRVB6MVpsUkF0Zm8za29Wak1vOEJSS0pyUk4z?=
 =?utf-8?B?MzZ5V1RuNEQ1dXhtd2RkYmdnWGRDemJuR0NmdFZRWWhONnkybCtIRWE4SmJx?=
 =?utf-8?B?Ym9KZStZcGtjS2ZpbXVjQ2d2RkY5bTBSWlFmUCs3aUl6MjQ5WUoyd3RDUzk0?=
 =?utf-8?B?RllMUU5MNFVtZHVFTGVIZnlyMzI2TW0rOW4rTDZBRWpnNkdndi9RdVM1MlRr?=
 =?utf-8?B?c1hENnZ4UEk1K1Qvbkg1Z3IrbUExUEpsa1hwUDZpQWx6M3M2NzlTYjRFNGFh?=
 =?utf-8?B?L0JwdHlaOXJKTVNVbDRXalllVHJJTlFNUWNyekY5UTQzYTdrTytIcERiRmpt?=
 =?utf-8?Q?Cbee+NOs2XIPlkEr+CtCA4KehB8C8E=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: sei.cmu.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 49528cb9-1590-4165-decc-08dc9e9c02f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2024 15:46:48.0844
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 95a9dce2-04f2-4043-995d-1ec3861911c6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1657

QWxleCwNCg0KWW91ciBkb2N1bWVudCBudW1iZXIgaXMgYmVsb3c6DQoNCm4zMjk0IC0gc3RydG9s
KDMpIGV0IGFsLiBzaG91bGRuJ3QgaGF2ZSBhIHJlc3RyaWN0ZWQgZmlyc3QgcGFyYW1ldGVyDQoN
ClBsZWFzZSByZXR1cm4gdGhlIHVwZGF0ZWQgZG9jdW1lbnQgd2l0aCB0aGlzIG51bWJlcg0KDQpC
ZXN0IHJlZ2FyZHMsDQoNCkRhbg0KDQpUZWNobmljYWwgRGlyZWN0b3IgLSBFbmFibGluZyBNaXNz
aW9uIENhcGFiaWxpdHkgYXQgU2NhbGUNClByaW5jaXBhbCBNZW1iZXIgb2YgdGhlIFRlY2huaWNh
bCBTdGFmZg0KU29mdHdhcmUgRW5naW5lZXJpbmcgSW5zdGl0dXRlDQpDYXJuZWdpZSBNZWxsb24g
VW5pdmVyc2l0eQ0KNDUwMCBGaWZ0aCBBdmVudWUNClBpdHRzYnVyZ2gsIFBBIDE1MjEzDQpXT1JL
OiA0MTItMjY4LTcxOTcNCkNFTEw6IDQxMi00MjctNDYwNg0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogQWxlamFuZHJvIENvbG9tYXIgPGFseEBrZXJuZWwub3JnPiANClNlbnQ6
IEZyaWRheSwgSnVseSA1LCAyMDI0IDM6NDIgUE0NClRvOiBkcGxha29zaEBjZXJ0Lm9yZw0KQ2M6
IE1hcnRpbiBVZWNrZXIgPG11ZWNrZXJAZ3dkZy5kZT47IEpvbmF0aGFuIFdha2VseSA8andha2Vs
eS5nY2NAZ21haWwuY29tPjsgWGkgUnVveWFvIDx4cnkxMTFAeHJ5MTExLnNpdGU+OyBKYWt1YiBK
ZWxpbmVrIDxqYWt1YkByZWRoYXQuY29tPjsgbGliYy1hbHBoYUBzb3VyY2V3YXJlLm9yZzsgZ2Nj
QGdjYy5nbnUub3JnOyBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1PjsgbGludXgtbWFu
QHZnZXIua2VybmVsLm9yZzsgTElVIEhhbyA8bGhfbW91c2VAMTI2LmNvbT47IFJpY2hhcmQgRWFy
bnNoYXcgPFJpY2hhcmQuRWFybnNoYXdAYXJtLmNvbT47IFNhbSBKYW1lcyA8c2FtQGdlbnRvby5v
cmc+DQpTdWJqZWN0OiBbV0cxNF0gUmVxdWVzdCBmb3IgZG9jdW1lbnQgbnVtYmVyOyBzdHJ0b2wg
cmVzdHJpY3RuZXNzDQoNCkhpLA0KDQpJIGhhdmUgYSBwYXBlciBmb3IgcmVtb3ZpbmcgcmVzdHJp
Y3QgZnJvbSB0aGUgZmlyc3QgcGFyYW1ldGVyIG9mDQpzdHJ0b2woMykgZXQgYWwuICBUaGUgdGl0
bGUgaXMNCg0KCXN0cnRvbCgzKSBldCBhbC4gc2hvdWxk4oCZdCBoYXZlIGEgcmVzdHJpY3RlZCBm
aXJzdCBwYXJhbWV0ZXIuDQoNCklmIGl0IGhlbHBzLCBJIGFscmVhZHkgaGF2ZSBhIGRyYWZ0IG9m
IHRoZSBwYXBlciwgd2hpY2ggSSBhdHRhY2ggKGJvdGggdGhlIFBERiwgYW5kIHRoZSBtYW4oNykg
c291cmNlKS4NCg0KQ2hlZXJzLA0KQWxleA0KDQotLQ0KPGh0dHBzOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

