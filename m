Return-Path: <linux-man+bounces-1430-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1551892C561
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 23:37:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9732F1F22B0B
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 21:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78E10180040;
	Tue,  9 Jul 2024 21:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=sei.cmu.edu header.i=@sei.cmu.edu header.b="MoWi/L8C"
X-Original-To: linux-man@vger.kernel.org
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0086.outbound.protection.office365.us [23.103.209.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F32182A5B
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 21:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=23.103.209.86
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720561070; cv=fail; b=fSf8ltr9MaotXHL8Z7I8sRq7tOqXHXnQ0q4oqtnSvPfucQNcZZEyHVGkUJHoWwvpiTrtUNVc0ntTGq0jb6ETUiJgxdUFX9hhJhPtkPBGFMIoo/wdH9ihD9U72vNY3FirW13xb16nn/n6k/1WdJCUWyzhsHgfEMc1Hu0xvcyXkj0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720561070; c=relaxed/simple;
	bh=NWaSt6pago9LW+8m8MQYSzVK1kiksEeGjFcqAnODuu8=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=deDZRvIjsJ3kYetZglpc3A4oL8CJyzos3NENHpwDwLBLUAUY9FwXxZvS17llkY8WjhfvfCCTcizwgZlQo1ZVYuU4sbfREZXSy8EbLpmow16FLq8GY2LivIQJJFddnUGzxOO+mEbKsTOmjSlmA19E8NNEDfPi3Y/194DBI5sAiWs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sei.cmu.edu; spf=pass smtp.mailfrom=sei.cmu.edu; dkim=pass (1024-bit key) header.d=sei.cmu.edu header.i=@sei.cmu.edu header.b=MoWi/L8C; arc=fail smtp.client-ip=23.103.209.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sei.cmu.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sei.cmu.edu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=p2tHdAcrFbefkSbqtIMfaK07yzbR/9t1urYzJmp3d47d063v2YC1Akfb7cyCmVh926dJcnuNRRotZ+Zp6DEm4aPkMMvXHq5itcd1zPW8yg4RGzjPhMdt9TMI1KmjbuwrSC3cgixJ/pFMiqyXLWBFc+Jg26hUPrieKQNRMDFsn97FBgCkytqOh7hpRuQcvOemazA1yqU3f6pSeaQsXKU9kkwlhIVOmHt5TUbKblKajL08y6lxqfijyneYs6/USPi/4eT8Ja9e9R4fOGNLvGQ62D6bDywJghYdMqxoQyAoLMmo+Ef4Cn7rJBZuxTAIn8WdFEdW8EcrMpWJDe3fzOMKig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NWaSt6pago9LW+8m8MQYSzVK1kiksEeGjFcqAnODuu8=;
 b=cQDxovFSaYXyG0sFIhuO/rn6nwdT3iThgYur6TP+sX9gVrK2hXU3GZ7o7tZA0VfZp0g7RWkmnts/AOf35+ZGNt8/kI6p/Ni7VZN/bVX7ZGJ7mhoje3n8tjCS3o1U0DnQsZd3KVevQMPAmaP2TKo0xvdlLbmvegBSnJN57hdOEKd7C6C57p9957kI4WHcXC59DmII6RfLJzR0vHQItXg3HbPWJSh9/Yut0QZgKfxa6YBirXIh+nz2Nbg8P/Fc3Ow78PP+A73mhXEBhHAcNNPLzXgO0rTj1X0s6MmzKzv1dStBIKSE8M6tZrGbHP+aM34+qfs2XjiufcgSlZUGCKJQ7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sei.cmu.edu; dmarc=pass action=none header.from=sei.cmu.edu;
 dkim=pass header.d=sei.cmu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sei.cmu.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NWaSt6pago9LW+8m8MQYSzVK1kiksEeGjFcqAnODuu8=;
 b=MoWi/L8Cpoxp7I3Of0Sv/VZ61GCtfSQtBg+4iQieXgsOdv32JbJiVKQHJnl9GpKjJhANeSV8w+TmLSS5qssb4CxilFTXDBju8LupnrMMGoPmjE9RRJyg3Fjm0mRpnLbAZXqELy+pvuR+aJOvcLn8bDQzLK/3dgMzuk/+5IkkJ2A=
Received: from BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:182::14)
 by BN0P110MB2172.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.36; Tue, 9 Jul
 2024 20:04:06 +0000
Received: from BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7202:3532:2043:b08]) by BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7202:3532:2043:b08%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 20:04:06 +0000
From: Daniel Plakosh <dplakosh@sei.cmu.edu>
To: Alejandro Colomar <alx@kernel.org>
CC: "dplakosh@cert.org" <dplakosh@cert.org>, Martin Uecker <muecker@gwdg.de>,
	Jonathan Wakely <jwakely.gcc@gmail.com>, Xi Ruoyao <xry111@xry111.site>,
	Jakub Jelinek <jakub@redhat.com>, "libc-alpha@sourceware.org"
	<libc-alpha@sourceware.org>, "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>, Paul Eggert
	<eggert@cs.ucla.edu>, "linux-man@vger.kernel.org"
	<linux-man@vger.kernel.org>, LIU Hao <lh_mouse@126.com>, Richard Earnshaw
	<Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: RE: [WG14] Request for document number; strtol restrictness
Thread-Topic: [WG14] Request for document number; strtol restrictness
Thread-Index: AQHazxWq8g76YsTB/EuCMvxCZwWWmrHraqkggANbowCAABGx8A==
Date: Tue, 9 Jul 2024 20:04:06 +0000
Message-ID:
 <BN0P110MB133999167F610D5BDE5FAE028CDBA@BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM>
References: <20240705130249.14116-2-alx@kernel.org>
 <as2a3sc6di56zlbroi35lmpodwyyshyueqao2qa2c7cxoz5pes@brotew6b3534>
 <BN0P110MB13395AA2A20DF96A611111B88CD9A@BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM>
 <7x6vekxoocdtogh2pwpji5wrsoxkmz3f5mp65otcldp43zvozv@pb56k6tlywbj>
In-Reply-To: <7x6vekxoocdtogh2pwpji5wrsoxkmz3f5mp65otcldp43zvozv@pb56k6tlywbj>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sei.cmu.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1339:EE_|BN0P110MB2172:EE_
x-ms-office365-filtering-correlation-id: d5ef0bb4-ac7f-4396-7eb1-08dca05249bf
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|1800799024|41320700013|366016|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?WG04K3Bad1dUMm5GbkhNbnUybTdQVStlazd1WmtEL0ptYVY3ZEdrUXVKMm9N?=
 =?utf-8?B?UTZaY1hvZ1dsc2ZDSFpscEJQOS9KaVpjdklZT2J6czlKaGdWVW9sQVFaZnlZ?=
 =?utf-8?B?S0cwWnN3b3BwZnFlaDYvMW1WQXQwTnRjMllWTitZUDJzWEU0YzZXeVUzQ3RL?=
 =?utf-8?B?eHplTjRaZXkrTW96QzBOMWg5UzZ2VFpVZVgxdjVqVWlobDZUVk5teXBwaGNo?=
 =?utf-8?B?aUVSN0twY25ndTJMY0lxV3huWW8zMXVtZHNYOEx4Rlhvc3FoS2NOOW1TNHZl?=
 =?utf-8?B?Q0hrSVZTbHJHWFA5blBQdHNxMEk3SStoZy81NmVwQm5hcS9mUU00SUpwQm1n?=
 =?utf-8?B?cE9rVlUydmtMWUdwZ0hsZ29LMGRpekZWc2swOHhTY2JqdExaWlBuQkRuTTVr?=
 =?utf-8?B?N25OOU5nM3R4aUFPSWxqVDhBYjBMRGdkOGZmWHlDcitoRWxnYUxFc045dTlL?=
 =?utf-8?B?c0FBTUE4aVdmaWtUTUFPSHM1SFBNR2FvZzdyUW54bjJ5eWo5QisveWpqTlRV?=
 =?utf-8?B?dHpsTzE4OVZJVDU2OTZCVEhyMGt4dHQyZEs1TFQ3a1FCVGNudDB6MkF0b0RT?=
 =?utf-8?B?aHQrNVhPSXRVU1ZJb3ZrZHQxZXpuUEZsT0xaanl2QVJZcXk4Unc5clpROW1u?=
 =?utf-8?B?NHVnVjhIL3VlWTZnN2JJRVlqVFR5UTJ5c1JMYm9GTDJqcEw0MlpsWXRhcG9p?=
 =?utf-8?B?ZVhqbkpxYlFoWVM3MS9SWDJ1dHVtVGdTcjZsNkZCTWdhU2M5NjA5L01DeUNz?=
 =?utf-8?B?UzlsYndjOFBBMWdMU1JsMXpPcU9ZRUs3YXBoeHdFeEhGR2Q3QWk5OEpzN3ZP?=
 =?utf-8?B?YndHTThKRk5jbElTUExudFpUQkNhdUNRTHdKb1RIMjVER0cvTTg2WGEyeXRT?=
 =?utf-8?B?cHhQNDFlNzhzY2ZIMXc5VFRON3FSZ0VndEhjcEl3bmRJdEovcEN5M1hJRXhE?=
 =?utf-8?B?UTJTVThWVmhlc1J5MVloSitSQVRGNmZYbGFKK1plY1dHNXVwZ28rM0EwdXhp?=
 =?utf-8?B?UTBtaUtybGNTemZnc29MWE1ERGdQRis0L2Jqc3o4VjcreGIydmdEcFpiMXJW?=
 =?utf-8?B?alQzYkJSdklIWC9IL2JNVG1SMDdFWFlCWisrS2tvaUFXVWo1RzRDOVpKWnFw?=
 =?utf-8?B?WWpDYzJRc3dsbXlzMTZVWmdWU1RTeXY3ZGFXc3ExcjB1K1JhTzNhODNKL0hI?=
 =?utf-8?B?OS9RRGV3ZkJud01yQnh4b2FIazlTT3pZaUJQeWV2Qm4rODlDZUhNV005R0xD?=
 =?utf-8?B?WkQ2QzNvYmNDM1Vzb3NtaVMySmRib00yU29PTnRqVWNzVjVqeWZsYkhzNVV4?=
 =?utf-8?B?WVFlNUpzODhCZEJEc2o4M29iNDROY2N6bnBkS1RQS1QzcGRlZU5RV1c4c05R?=
 =?utf-8?B?U1VpT2NCUU5NeWJ1NDZNTGkwS2d6M3B4SW1JRnliU3Q1V0ppMEx1SmJlMms3?=
 =?utf-8?B?Vk14WEUzblM1cE5CK1ovMXRuS3VmMHpneXN4b1FBaFZ1cGxCeHRMT0plTmhT?=
 =?utf-8?B?U2JIYzFsNzRHS3JhMzQ4bWcwenFTUnlJZVY3cUw2eWJsZTVaQ242YkM1dVZq?=
 =?utf-8?B?ZWwvcG9vcDl2bEZTd2hQeS9aSjh5YWFFR1RUaXlDTzViWTVHSUVBY1ZJdG1I?=
 =?utf-8?B?ZnM4WUFydzdFaWFZWnRuNWowaU9oOHFTZnRpTUZtb3ZUaURWNkJnVUJvRmQ2?=
 =?utf-8?B?cHRYSW5hUGt1VitTQjhhYmdoQnkrTERxbjdZR1lYTDJzSVFuNm16Nll2TnNX?=
 =?utf-8?B?NlBSRjFROWZxMTNnYXNGRnVIbkZTUU4xcWpjbkJ3NlhaR1oxWGtFNEtERGRh?=
 =?utf-8?B?QXJXLzhnNmlHYURnQ2lZZz09?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1339.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(41320700013)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?NmhwRXNTUlRMaWZaaUY1a1FSTk5NZ3oxL3ZPOXJ6bktkUHpGSnZqdVEzM01I?=
 =?utf-8?B?Ni9kQnVMNVRNYm1jMWc4bGJYTnFrLzZoOVhrZldzMWg4b0pZcUVieWdvM1Av?=
 =?utf-8?B?QTFNV3RGS2R5dlBJN2tEdVU2ZUZsa29rVFdQaFc0d2c0ZFlEWGdwMURHOWlJ?=
 =?utf-8?B?N3hVbXpac3orUlMrS3owcGFTRzVRVUdEMG5nWkd1Q2R2S1Z2VnlpY2tFMGRr?=
 =?utf-8?B?N0RpQndyVGRKL2UwNlFZTVkrcTdmcTZ2bVN5VnRvK05WWkZoOGNZMXkvVVlw?=
 =?utf-8?B?aWlxNGJScVZjZnI0bWZvc2pqN1Jhd1I3MjYzbHpUYi9KSHIzVUl2NVQvdkR1?=
 =?utf-8?B?bG56S3hKK3dlMnd0U3AzOWFTek9JWVdtRmZaM09ZY3VCN2ZMQkV0N1lRaE5W?=
 =?utf-8?B?L3N3RVlJUXFSTVZQcjFFOXUvMTE1cU1EeFZXMWRsSURQbE8vYS8rZjQxVjlJ?=
 =?utf-8?B?Nzg5am1OK1FQUXUvQU1IVTYwQWRsdTZEMWYwYzJZRDlxMFFTRFgvQWJGdEg4?=
 =?utf-8?B?ZVo5VzVaeDFmQU9VUXVDUTBrOGsxOXdCVFBTOHdTMVREU1Y0SnJwWE1VR1p1?=
 =?utf-8?B?ZzIvTkRZbit0aWkzNFZ4bkZlaUg4SzU1RmVNenB2K1pybDZSb09QUnRLVTRO?=
 =?utf-8?B?TXpuMUd3V0hZU2V1ZndiTFpiNmpINlRZRGVlN0xGNWYrSU9wZ05sV1BqZDg3?=
 =?utf-8?B?Nm1ZNXBTMEs2Z29TV29oU2h6SHRZU2NIUXJjSmdPaXlGVHVwMnpZZndLaVcz?=
 =?utf-8?B?UDZ4bm9idksxR1hFbUEzdHB3RXprWnNGeFo3ZkRDQ1VLaWlTSFlYcWVYeStM?=
 =?utf-8?B?YWRsV3dRNUtFUHRFZXJKODhKcCtTVFBUOUkyN2V5U0YzUXJyVDJtTGJkNTJI?=
 =?utf-8?B?SnZYUUYxdUhQWncxcUx2dlhkTWJuZ05meEZpdUxGQzBVeTErSXl4ZWdIZFVJ?=
 =?utf-8?B?N3ZXZjVYZHl5QWpDUVRrWjMxdlFwWVBIS3BFVy9sK2d0QW9NdllsT1NacC84?=
 =?utf-8?B?MDR3QVZ1cmVrVWdoeFVpK3ZtMlMxT3BlSUFMell0YkNtcUVlM2t4S1AwdlF5?=
 =?utf-8?B?S0xLdW90ZjNLY0lMd0RUM2JRRHZyS00vY2h0ckxCd3JCbzFSY1M4bExteThZ?=
 =?utf-8?B?S3VnTU4xck9SemRML1RxRnBtamo1T25tVzBoRVVrZVZNQ1UxQnZmVXpaQTls?=
 =?utf-8?B?dTBKc04yUWRnUHpwVmdOMFBqWTRCaVZMNExrZEdseC8ycTJtdE44ZloreXFP?=
 =?utf-8?B?Z3VnT3NHOW5LSmV1WDdZdnJsL3RoWkdNd0xPdlhoTVFka0hXakRSNXcvaGhG?=
 =?utf-8?B?aGRuYnIzRG05dncra1BBaFJMUU5LSWZGZENqSUZmZU1LRjgySVBXVlQ2MFk2?=
 =?utf-8?B?b0RnbjYvZ0Y1NDhDSElEZnorVkRJSnBHeG0wZGtVUWQ1YVpKUGhteWJBaVV1?=
 =?utf-8?B?MmEzTGduZ0FMdUYyNlBmOEFYSXdjOHgzeGdQZktXeXF2TS9wb1VxUStzMG1M?=
 =?utf-8?B?a083QXY4Y0FBdVd6NEFSTmk5TzZaOW1KSUQ1eTVMd3Y4bXM2elB2WDZ1eXMv?=
 =?utf-8?B?dkdJbERJRnFlOUcycU0vRWFpSGN3c0NFbkIrNUNQSW5idGttYUxLdjNZNGRN?=
 =?utf-8?B?Rzd1RVJMRDRRQk1CbElHZW9ZZVNWWHdlZTBqM3ZnYmFuMVJGcUY3aFZWdkVC?=
 =?utf-8?B?bXlzNjVqNmhOUVVWMkNWcXUxUXJGakx0aTNFeTRQWWFOYzlUS09idDdlRzc3?=
 =?utf-8?B?NVFtOTBsRnBTSmI1T25Pc2pZWWNxbXlKVVNtNFdnNjJXVVlGa3BSWFFsdi9E?=
 =?utf-8?B?czhRKzMvYkhmUWdjNU1vUVFLVWdwN0FtODR3b2tBRjZQdlo5TmQ5a1dpbXBW?=
 =?utf-8?B?MjVoZ1d6ZFYyR2JlVUlEcVV0NUZyTFNSM2hEN2dsWjFiNFFXN1hKdFRZczcv?=
 =?utf-8?B?RzhZMGhLN3pKU3R4MU92K2UzR1FwNUZBenAraVBJR2duZHNXdDR2cVNuZG1F?=
 =?utf-8?Q?/bM2UpC1jnNF9rFWT33lhJTuShqoKA=3D?=
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
X-MS-Exchange-CrossTenant-Network-Message-Id: d5ef0bb4-ac7f-4396-7eb1-08dca05249bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2024 20:04:06.4401
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 95a9dce2-04f2-4043-995d-1ec3861911c6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB2172

QWxlamFuZHJvLA0KDQpTdXJlIHBsZWFzZSByZW1pbmQgbWUgd2hlbiB5b3Ugc3VibWl0DQoNCkJl
c3QgcmVnYXJkcywNCg0KRGFuDQoNClRlY2huaWNhbCBEaXJlY3RvciAtIEVuYWJsaW5nIE1pc3Np
b24gQ2FwYWJpbGl0eSBhdCBTY2FsZQ0KUHJpbmNpcGFsIE1lbWJlciBvZiB0aGUgVGVjaG5pY2Fs
IFN0YWZmDQpTb2Z0d2FyZSBFbmdpbmVlcmluZyBJbnN0aXR1dGUNCkNhcm5lZ2llIE1lbGxvbiBV
bml2ZXJzaXR5DQo0NTAwIEZpZnRoIEF2ZW51ZQ0KUGl0dHNidXJnaCwgUEEgMTUyMTMNCldPUks6
IDQxMi0yNjgtNzE5Nw0KQ0VMTDogNDEyLTQyNy00NjA2DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtlcm5lbC5vcmc+IA0KU2VudDog
VHVlc2RheSwgSnVseSAwOSwgMjAyNCAzOjAwIFBNDQpUbzogRGFuaWVsIFBsYWtvc2ggPGRwbGFr
b3NoQHNlaS5jbXUuZWR1Pg0KQ2M6IGRwbGFrb3NoQGNlcnQub3JnOyBNYXJ0aW4gVWVja2VyIDxt
dWVja2VyQGd3ZGcuZGU+OyBKb25hdGhhbiBXYWtlbHkgPGp3YWtlbHkuZ2NjQGdtYWlsLmNvbT47
IFhpIFJ1b3lhbyA8eHJ5MTExQHhyeTExMS5zaXRlPjsgSmFrdWIgSmVsaW5layA8amFrdWJAcmVk
aGF0LmNvbT47IGxpYmMtYWxwaGFAc291cmNld2FyZS5vcmc7IGdjY0BnY2MuZ251Lm9yZzsgUGF1
bCBFZ2dlcnQgPGVnZ2VydEBjcy51Y2xhLmVkdT47IGxpbnV4LW1hbkB2Z2VyLmtlcm5lbC5vcmc7
IExJVSBIYW8gPGxoX21vdXNlQDEyNi5jb20+OyBSaWNoYXJkIEVhcm5zaGF3IDxSaWNoYXJkLkVh
cm5zaGF3QGFybS5jb20+OyBTYW0gSmFtZXMgPHNhbUBnZW50b28ub3JnPg0KU3ViamVjdDogUmU6
IFtXRzE0XSBSZXF1ZXN0IGZvciBkb2N1bWVudCBudW1iZXI7IHN0cnRvbCByZXN0cmljdG5lc3MN
Cg0KSGkgRGFuaWVsLA0KDQpPbiBTdW4sIEp1bCAwNywgMjAyNCBhdCAwMzo0Njo0OFBNIEdNVCwg
RGFuaWVsIFBsYWtvc2ggd3JvdGU6DQo+IEFsZXgsDQo+IA0KPiBZb3VyIGRvY3VtZW50IG51bWJl
ciBpcyBiZWxvdzoNCj4gDQo+IG4zMjk0IC0gc3RydG9sKDMpIGV0IGFsLiBzaG91bGRuJ3QgaGF2
ZSBhIHJlc3RyaWN0ZWQgZmlyc3QgcGFyYW1ldGVyDQo+IA0KPiBQbGVhc2UgcmV0dXJuIHRoZSB1
cGRhdGVkIGRvY3VtZW50IHdpdGggdGhpcyBudW1iZXINCg0KQW0gSSBhbGxvd2VkIHRvIHJldGl0
bGUgdGhlIHBhcGVyPw0KDQogIG4zMjk0IC0gW1tub2FsaWFzKCldXSBmdW5jdGlvbiBhdHRyaWJ1
dGUgYXMgYSByZXBsYWNlbWVudCBvZiByZXN0cmljdA0KDQpTb3JyeSBmb3IgYW55IGluY29udmVu
aWVuY2VzLg0KDQpUaGFua3MsDQpBbGV4DQoNCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gDQo+IERh
bg0KPiANCj4gVGVjaG5pY2FsIERpcmVjdG9yIC0gRW5hYmxpbmcgTWlzc2lvbiBDYXBhYmlsaXR5
IGF0IFNjYWxlIFByaW5jaXBhbCANCj4gTWVtYmVyIG9mIHRoZSBUZWNobmljYWwgU3RhZmYgU29m
dHdhcmUgRW5naW5lZXJpbmcgSW5zdGl0dXRlIENhcm5lZ2llIA0KPiBNZWxsb24gVW5pdmVyc2l0
eQ0KPiA0NTAwIEZpZnRoIEF2ZW51ZQ0KPiBQaXR0c2J1cmdoLCBQQSAxNTIxMw0KPiBXT1JLOiA0
MTItMjY4LTcxOTcNCj4gQ0VMTDogNDEyLTQyNy00NjA2DQo+IA0KPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiBGcm9tOiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtlcm5lbC5vcmc+DQo+
IFNlbnQ6IEZyaWRheSwgSnVseSA1LCAyMDI0IDM6NDIgUE0NCj4gVG86IGRwbGFrb3NoQGNlcnQu
b3JnDQo+IENjOiBNYXJ0aW4gVWVja2VyIDxtdWVja2VyQGd3ZGcuZGU+OyBKb25hdGhhbiBXYWtl
bHkgDQo+IDxqd2FrZWx5LmdjY0BnbWFpbC5jb20+OyBYaSBSdW95YW8gPHhyeTExMUB4cnkxMTEu
c2l0ZT47IEpha3ViIEplbGluZWsgDQo+IDxqYWt1YkByZWRoYXQuY29tPjsgbGliYy1hbHBoYUBz
b3VyY2V3YXJlLm9yZzsgZ2NjQGdjYy5nbnUub3JnOyBQYXVsIA0KPiBFZ2dlcnQgPGVnZ2VydEBj
cy51Y2xhLmVkdT47IGxpbnV4LW1hbkB2Z2VyLmtlcm5lbC5vcmc7IExJVSBIYW8gDQo+IDxsaF9t
b3VzZUAxMjYuY29tPjsgUmljaGFyZCBFYXJuc2hhdyA8UmljaGFyZC5FYXJuc2hhd0Bhcm0uY29t
PjsgU2FtIA0KPiBKYW1lcyA8c2FtQGdlbnRvby5vcmc+DQo+IFN1YmplY3Q6IFtXRzE0XSBSZXF1
ZXN0IGZvciBkb2N1bWVudCBudW1iZXI7IHN0cnRvbCByZXN0cmljdG5lc3MNCj4gDQo+IEhpLA0K
PiANCj4gSSBoYXZlIGEgcGFwZXIgZm9yIHJlbW92aW5nIHJlc3RyaWN0IGZyb20gdGhlIGZpcnN0
IHBhcmFtZXRlciBvZg0KPiBzdHJ0b2woMykgZXQgYWwuICBUaGUgdGl0bGUgaXMNCj4gDQo+IAlz
dHJ0b2woMykgZXQgYWwuIHNob3VsZOKAmXQgaGF2ZSBhIHJlc3RyaWN0ZWQgZmlyc3QgcGFyYW1l
dGVyLg0KPiANCj4gSWYgaXQgaGVscHMsIEkgYWxyZWFkeSBoYXZlIGEgZHJhZnQgb2YgdGhlIHBh
cGVyLCB3aGljaCBJIGF0dGFjaCAoYm90aCB0aGUgUERGLCBhbmQgdGhlIG1hbig3KSBzb3VyY2Up
Lg0KPiANCj4gQ2hlZXJzLA0KPiBBbGV4DQo+IA0KPiAtLQ0KPiA8aHR0cHM6Ly93d3cuYWxlamFu
ZHJvLWNvbG9tYXIuZXMvPg0KDQotLQ0KPGh0dHBzOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVz
Lz4NCg==

