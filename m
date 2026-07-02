Return-Path: <linux-man+bounces-5689-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YZDhA4OwRmq2bgsAu9opvQ
	(envelope-from <linux-man+bounces-5689-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 02 Jul 2026 20:40:03 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3626FC2F9
	for <lists+linux-man@lfdr.de>; Thu, 02 Jul 2026 20:40:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lanl.gov header.s=lanl header.b=NQiXezJ5;
	dkim=pass header.d=lanl.onmicrosoft.com header.s=selector1-lanl-onmicrosoft-com header.b=cMZigra2;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5689-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5689-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=lanl.gov;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C0B230B1CBB
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2026 18:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D73346FB3;
	Thu,  2 Jul 2026 18:04:41 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from proofpoint8.lanl.gov (proofpoint8.lanl.gov [204.121.3.47])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9DB32937A
	for <linux-man@vger.kernel.org>; Thu,  2 Jul 2026 18:04:39 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783015481; cv=fail; b=S0gpKt6enFxi3fzE1rBoTotueJpQRe2aVAIPT5WRk1ZdoSzZL9OLWesbAsPfHYkjH5RSRcrYrcSgJYdoX2E+G5T+J/lJpiWKPg/3YeSkkJCGJ7xD2Qbxgzo9KjwT2pyy3SQLsa7Zwjwu3W2EQB8lYJoNU2gW6K//p1wVsuQr4ck=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783015481; c=relaxed/simple;
	bh=xhMG1T+5G+fKCS9J/eIetZqHOB0SaR05RjHbyw0T5RM=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=YReBaZMvvwfqqncgi/5a+DwUHCF4Q5mHMmFgJOjJFyZDMjca6JH0fIzz/TH/APuBg2kqRf/fd/Toz0uGNrddI6VN6FO9TMCxVzXJfEVxmO2VaCFe8oKDDQd0iunspn2NIpYEKpahIW8JcmBmxJHPDfnOZJgs33UNlJDcErjpG2s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=lanl.gov; spf=pass smtp.mailfrom=lanl.gov; dkim=pass (2048-bit key) header.d=lanl.gov header.i=@lanl.gov header.b=NQiXezJ5; dkim=pass (1024-bit key) header.d=lanl.onmicrosoft.com header.i=@lanl.onmicrosoft.com header.b=cMZigra2; arc=fail smtp.client-ip=204.121.3.47
Received: from pps.filterd (proofpoint8.lanl.gov [127.0.0.1])
	by proofpoint8.lanl.gov (8.18.1.7/8.18.1.7) with ESMTP id 662HRq7B020899;
	Thu, 2 Jul 2026 11:37:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=cc
	:content-id:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to; s=lanl; bh=xhMG1T+5G+fKCS9J
	/eIetZqHOB0SaR05RjHbyw0T5RM=; b=NQiXezJ5KWPEqeEgprY3CQGS4t9AI8ko
	ebcSyywhTDSPg0mD/uSyWAAKy3Dz19yKYPhtjBNw3lEqBlbNFossWDMzPfyDF9Tj
	rs7iHl2AZCnymk+A8Q7TvGg6ecP7CFJZHOvJuNS9rXZL/otpTc/vTjCPxQd1Zqez
	eKXdGBfARmfb03AM6hK22h2BD1IQqP20UANEvCWoMVtnYf7TeMH3kuddsS8EuuAg
	aQkq/BtJvAV/LibYpxHxqBGpmcphmPjiSPYbqyRwS4/yLlZiDOXeFLpZE880Em92
	2IvFYePIQpMdKbZ8DvAWBU9XEXEAZGEWJ+8V+7okgZp4mHz7BCZDnA==
Received: from mailrelay1.lanl.gov (mailrelay1.lanl.gov [128.165.4.101])
	by proofpoint8.lanl.gov (PPS) with ESMTP id 4f4c8vw3ed-1;
	Thu, 02 Jul 2026 11:37:07 -0600 (MDT)
Received: from localhost (localhost [127.0.0.1])
	by mailrelay1.lanl.gov (Postfix) with ESMTP id 2624D3092;
	Thu,  2 Jul 2026 11:37:07 -0600 (MDT)
X-NIE-2-Virus-Scanner: amavis at mailrelay1.lanl.gov
Received: from EXG16-P-MBX08.win.lanl.gov (exg16-p-mbx08.win.lanl.gov [128.165.106.188])
	by mailrelay1.lanl.gov (Postfix) with ESMTP id 1304FA1;
	Thu,  2 Jul 2026 11:37:07 -0600 (MDT)
Received: from EXG16-P-MBX08.win.lanl.gov (128.165.106.188) by
 EXG16-P-MBX08.win.lanl.gov (128.165.106.188) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.66; Thu, 2 Jul 2026 11:37:06 -0600
Received: from SA9PR09CU002.outbound.protection.outlook.com (128.165.106.254)
 by EXG16-P-MBX08.win.lanl.gov (128.165.106.188) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.66 via Frontend Transport; Thu, 2 Jul 2026 11:37:06 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aoNVwFF1Rj4ua7h31ZOdOAXkcJw1lw8Grt/Tla9poksJbnuWmy4o+s3aXH0zts5RxOu9F3iT/Iogqws22//eL8Gc4hzDe5taQlSa6hXTzLWWY5ViCbTNPBXQFXUQ1VlYrTBu9k1jdh3teWeAwY8byFh5xPL0TdkQ9k6usYYEVHYVnEwNUdYCasnvs6yWUCnBDgm/LQ2EkpqmsyL0GT+2QYge3Hu6/IXuG+z07Z/vMGI9oMp3LPzafaHfPOOVRrjaAxBV4M/UdwCVVChXUS/EEtVe1cGaxsJdL8psc+N24XbhcZuAsrwXgwQCSB/cw/etUF8veP7eVKCUKq5iYnYxtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xhMG1T+5G+fKCS9J/eIetZqHOB0SaR05RjHbyw0T5RM=;
 b=gfU4bgMJUGV2Ne93nB+EjueqDJeEvoQrXZJJQlOBdF7u2u9CgJLI+ESJtuB/GRLpI/LutYXoQqOYKvzNLQzBHAKW3LiD+CC5jb/ludPbfDLcNTEXKPe9+fhvkrOfoBcwTekE31VeaW/vwGFoMwtgVwoxeGqgBsvO/FrwVH4ctrZsRYQWlLlANRelNKfkriBCAWe6hzg8kn+5VRLJee8z2ueA+XKDlxtKs84AYwXK1tQKKeXWM0/4RfBlEpAs56NbselWZfxeDx9xCfibYvTtLUD9++b842Rnw3Z5F8eWeyXo72S1Ya9CTOJqENWzFEuD9XlUzvwFtJvjyf5oBxhOeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lanl.gov; dmarc=pass action=none header.from=lanl.gov;
 dkim=pass header.d=lanl.gov; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.onmicrosoft.com;
 s=selector1-lanl-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xhMG1T+5G+fKCS9J/eIetZqHOB0SaR05RjHbyw0T5RM=;
 b=cMZigra2a9IsuWk/NEWZSQtNdAIp9zOLjtr0MeUTdldA2RJmTWFR5+Nb4Uu2nCmvm6hXPiCaeSLDg5H3YlvDzRbmmCZVVMc7klTx3lGI9rdZlmZ2ufGvUAU9Aoq7BGawtkfX4Ax+uzKXPl3+Y8tCtCTyjYVeml2g2WqowTYhTP4=
Received: from PH8PR09MB9451.namprd09.prod.outlook.com (2603:10b6:510:189::14)
 by BY5PR09MB4723.namprd09.prod.outlook.com (2603:10b6:a03:244::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Thu, 2 Jul
 2026 17:37:04 +0000
Received: from PH8PR09MB9451.namprd09.prod.outlook.com
 ([fe80::4673:66bf:335a:ee26]) by PH8PR09MB9451.namprd09.prod.outlook.com
 ([fe80::4673:66bf:335a:ee26%3]) with mapi id 15.21.0181.009; Thu, 2 Jul 2026
 17:37:04 +0000
From: "Priedhorsky, Reid" <reidpr@lanl.gov>
To: "alx@kernel.org" <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: claim: forward declarations are confusing
Thread-Topic: claim: forward declarations are confusing
Thread-Index: AQHdCkllReU/1Dir6UuKijV0h8gwCg==
Date: Thu, 2 Jul 2026 17:37:04 +0000
Message-ID: <22CA00EA-0D8B-4479-87A8-DE6F322FDB3E@lanl.gov>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-mailer: Apple Mail (2.3864.600.51.1.1)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR09MB9451:EE_|BY5PR09MB4723:EE_
x-ms-office365-filtering-correlation-id: 4642ea09-f3dc-480c-6116-08ded86087ed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|1800799024|366016|38070700021|56012099006|18002099003|3023799007;
x-microsoft-antispam-message-info: mrQi40GIVSzeG4Bbek5D2yvuv0Le7dbkgGati6udm4nkAHg8mK3jXBNteZ9rQ0syv6ApPya/xjCBunPWg0qxPuxvQjf9ZduRpm3626C/yNbg26d1Omkm8FR544yojOw2O8gIJClojrgBWHnpfPQPgZsJ9Tf4oijU823F3Jjg3jSNsPGB3aIWvwl0k835V4sTHao2MVwF+5+FyYNGg4Bkddxe1T1dBSJYKV8nPY+0J4sbPRgol7Zh+B3zwW5lgEKvvXT+Lfobu9iIMDaP1yjJlb1Nkm0L3lFgVnTQozL0EuIMueoEXtR/bDoP6RS971wISl/Je49v+UfH71OnxwvsznMvbtRmjWlChBrHIJzHKmf8K3Yfi1PWlWdEz9qGx/kmNuwvrL4oThDeuUge1FEiJ2Y32D1GcrvFm0Rk8KUl+icYJHPGHs6l9QRcO4U0Hs/kXnxiOeTHXovJg6eSWTRQfbBarbSKQqtsr1lm1jPLvAAIyG0HACSs26YXgnVQNgarCAfZH5CmA9tqrPAHDsGa44I9/lszDQOkcrhHGeWSa2+zzHR/8ACuyo7dDnT4lmoTcTzVabhzk+AlxSLeny0Q54j/kU7rCsS6M8Lzsw4BzjLkpMRNPVsIoOSSzK8tdFdz45CbV59eFUatXiCjkKp3htco/fBNh4284utRJ6LiCeBrIzAB5IrC4MBHv2LaBAWxa4P+ujiuExPTu7oBuLbnzchaMrHbBEjiDsDQ7ZRDYFM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH8PR09MB9451.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(366016)(38070700021)(56012099006)(18002099003)(3023799007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHgwT01mRCtPR0NyNWVnaUMvVEpyZFJDSEIvT2FyUGZzeVlvM2JVN2FqYSts?=
 =?utf-8?B?bXRKODFjbUU3Wjk1YTV0TkNVT1pQWTFmanIwbCtKTE1XQmcyOVpPeXZBQWU3?=
 =?utf-8?B?TTQ3dktneWo2eXlTR0NmU3BEVTQvL2k3eTE0ZjdobEEwR2lxV3RnUWlHMWEz?=
 =?utf-8?B?bmdsMFJHNVZnUmM1RGNZOGxIaEFJTWJDVzJjOFVrU2NZYjY2dVN0ZVUxaktU?=
 =?utf-8?B?cS9wQTdPNXI1c0d0WGxxd0tsQTI0dUdPR0VmL2hFVFlkV2ZzRE5PVjJUVlBN?=
 =?utf-8?B?Y0NkUHdWeXdPV1d3TlVZRlg4Vk11RnFLYVdpeENhRG5rR1h0a2ZIblBma29k?=
 =?utf-8?B?Wlc5SFJ1NzhQRUlBdUpnZ1RVSnREbFd1SnpDWWVNNkpsaUVxVVY5MWJRcXN6?=
 =?utf-8?B?dk0yMUlhQVd0eU5zSkJiS1BLN1Z0VDk0ZXBlQStCSXJQaXczOTEyWmFoZEpp?=
 =?utf-8?B?eVM2UEJSWXBLL0hWWWpINUhSR200RnpuZU9ocjN3T25mSCtRN3BGRkc2b2cr?=
 =?utf-8?B?WkxGSGN4QTJPT2hkZW1YS2F1NUxRL0tKSVhSVFg2N2hXWWhsUThEQVpoeFJP?=
 =?utf-8?B?dzFJVjdHYmpCVDF4cS9QbVplYjVtOHRENG1LY2Z5WVhHWjlZN0I0czVGOGVF?=
 =?utf-8?B?ZlRydU9PSjZQcS9jUS9nVlBDUUJQZ3hJaC8yUXNhd0RyalB5SDBZV2lNdUMy?=
 =?utf-8?B?dGdtSUNCR01PeE5UaHZlZHRHL1h2eWswTHUvb1BPYzdNNU93R3dlY2hoUkU0?=
 =?utf-8?B?dGJKbW9NYzNPbk9SL0hSa3AvRUw2WG9rNXVKNmdpdmpFVTJIYUlrR1AraUxu?=
 =?utf-8?B?KzllRkhYRkNPeEFqTEZnUTAxMVJLNGQ2NFdteFNGY2VDdWdHaURwZStuN1d6?=
 =?utf-8?B?TlZqbS9ONE04M1hNcHVUYnBRMFJ0Z1ZoRlc5TVhaTUxIRWN2WXJhaVJEUVZk?=
 =?utf-8?B?RzFvSWt2bkorb1NMaHVIWlRzTnFSSjFsYXl4ejZ0R0tXaUlqc1o0OGU0UmJa?=
 =?utf-8?B?MVpYdFlqb2d4eTZWNWVHNEpISy9JTTkzcFQ2REpPdFFYM1MwR1lqL1ZHTEhJ?=
 =?utf-8?B?aVpBUEtuQjhtUDJ2WlphMXhHOUZkei95N1ZxNDIyNHV0RHZlMGlYYWZIbDVK?=
 =?utf-8?B?NXBCV3h1bGZMTm5zbXhJTWl4bE5WYUJUbEJEQllnWWJ4U0p1OEtkN09EY09F?=
 =?utf-8?B?VjVrbEtXMW4rQ2k0U1gzTURqQURaN3p0Vld1L2k5Zk8xUU1wa01WN1NQSVJX?=
 =?utf-8?B?amQyalZzZEE5bDYxcHRFeGUzUXhPWnpCbGNwZVRVVkhPRGMvZGVYOE9pL0VG?=
 =?utf-8?B?dDBFb2p2Z3pjWU1hRStnWWhCbVVHeFlhb2JSTVB5MkxFWVo5ZnV6OVdxZFJl?=
 =?utf-8?B?L01qcmNXMWVzUHJrUDBQZUZiQ0ZqeHFJL3NnWTYzYTJlQk5wUk1uL0kzWmww?=
 =?utf-8?B?QWlacXlRUFRJaXN4NVpXdVhuWTJvZlRZRWpoUG9OMFUvNUU4WmNGUVRmdnpB?=
 =?utf-8?B?enphY0Ywc3A2dXdPR2dZWkJJYnQ3RUJ4a2JCODBTSkc1YzdTcCtVZVJpcWp5?=
 =?utf-8?B?ZGdvZ0NBb2FrNDZZWng3NFRMaWo3bXdteWxMY1pMQ0U1L2NWUWVOSXQrWDVW?=
 =?utf-8?B?c1NBTG1BbGM5cHhkOXNwejBhZ2c1Q2Y5a3lyTVRtN25ZN1dLQTNpZlV3Rkcr?=
 =?utf-8?B?RGU3amt2UVVFckthNjgrSHlEOW9nL1c3bUtMNmtwdEJ3c0Y4YTRCRXVyaHpN?=
 =?utf-8?B?WTF6OVF5M0g3WGhkWnRIb3BXS0tUR0FyZEtLTWxobGk5V3JSVFpkVW1IMlcr?=
 =?utf-8?B?RkFoN3lIQng3VlBNTGhJMk9UMnVQdTB5R1FFUVBZcE11NnVoRWtuWVdTcW96?=
 =?utf-8?B?Q0w1UzNVaTdxVE5NNzZ4Q00vTCtzalhlc3kxUW9iL3UyclFWajFBd3k0cStT?=
 =?utf-8?B?d3MwM0N5Y0xwMEY5V0Y1RVhkSTFJZGh3bjRYM1hUcHpaYTI5ZVhQbE1nVkpt?=
 =?utf-8?B?b3dMSWNBbGhhU0FiRjY1V0h0UFJKMUdheDM0ZU15ZFVJN0tHRzRSZkp6U3Bu?=
 =?utf-8?B?MlJUamUvN05WS1NKMEs5Ti83amp0NU1iM05xT2xuR0pJTzFQR1o2Yzh0WUlU?=
 =?utf-8?B?TFJvWDJKcVIwOFFmT01aSzNZNUVHMkMwTldaM28xaGhkTzQ4VWZOMW9KTzZk?=
 =?utf-8?B?WEdPM1BYdFAzdUNCMUYwZndMaGs3enpSVC9PVTlGV0RnbnM4RUZ3aXFuNDl4?=
 =?utf-8?B?eUt3ajVMUGFtNXh5MXdLb3J4NHRneXB3bEwwUmJrUW5YTVVXYXJEaDVyYUc0?=
 =?utf-8?B?enlxaW5nQlVVT3hPQlNjMDdlNm5JMUdjdGRMcUpYRVcvZE5vazdVdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <14CD4BD1211E2546BD3109C63162A133@namprd09.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: AR4WMjNP3Y/E7WGcPVVO6Vpmqv02J/CAIwI0DhTwcx/7/cPhv4vl4+vPpoSZO5+4m7A5KDMoSEG8P66ngI4PW42h7Z/g4gS5lhsEh0LvlsW60PNpjuxPYxdxywCKAvE5XG5JK92C69zwcyAWjuv7Tcnpge/aO1FcmXLXZiBEGNWSMJzQ/hH7MB6bAkCPlVhozgqer9PWbsya/XCrXuiLxDlS3o+zCrGyQCJtYohPF6pjLS8jqjW/yTCNMYdtZ3nvbZAVHvqcbUirohI9smB1pCNO2tKrx8hWHXp2oglLVJvZ1ps5poPoa7S3NXf6TdqE+4UVbCwb3qzn9qZC/bczeQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR09MB9451.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4642ea09-f3dc-480c-6116-08ded86087ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2026 17:37:04.1957
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5216f00a-5b2e-4784-b2d3-ed19b748fd60
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR09MB4723
X-OriginatorOrg: lanl.gov
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDE4NCBTYWx0ZWRfX0EvmH6TNYs3b
 CMA9iMZBs7yrEUGln5HALvAT6dXep/ehbb+QMg/scQr0Nj1z3XO8mDHjvlXPscL0J0JiMZVODCK
 +kOb+faxQU1UGlYRiNISdaIwy66Emmnl42Ft6ioESQKUeyM3HTa3
X-Proofpoint-ORIG-GUID: EiFy4Bv0U6fFkR0btyKl3RQ558Jq3HFs
X-Authority-Analysis: v=2.4 cv=eovvCIpX c=1 sm=1 tr=0 ts=6a46a1c3 cx=c_pps
 a=3vMpp13y7eP4U3k9cfRBOQ==:117 a=PpMX9hEbl3l6D+jDcXlCOQ==:17
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=08LPd3ljsaEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pumCbarnThY0GWqlQlfL:22 a=5WYvbaySJJKklB5iYq7u:22
 a=_CYy6ooOOzZLOSqcjpIA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDE4NCBTYWx0ZWRfX8GUTPpJYcupR
 m0XYcuwa/QUaz1Kc09KHSPgmkRqj/zahqCliGeisn+7OuPpa3Tidh8XcT5UpSbUE5t0XZd2kdUc
 Ix84IdFuZT3F9YtS5Ol8BO/WId+HTkWpLDwu6WeMRFQv6AXIGPXJdg6B0T6WU8XQE/GDv1Mw2P3
 hHdNhATAEr6FK4aXlOYbNjggK9rXFsG3Eyv+aoJycQzX5V62Db7eBVCED1B9YDLL6mgQMgDTb/b
 8ONeesK1BIR2VV4AOkAlqRJx4wm8nY/6DX1cWDyHCSfJYMa+5lbNRrKtcoZOZ/zKCsdoY++PMSv
 YCRTa3n+suGpHhWBzYGnTtLiedCbiEOonxbkJ4YGN2m5LZS8HRDVB8GS61SqhsY1SzSP1L8rptc
 DF1XJlaJJQTY6CIWhiGjq7+HRL2zdRUu9kmL4a0ak7MgcpbJBjfmbdVu1Q1As0OUdHQcBAtWuDv
 V8NiybuOmBUwVhwziHQ==
X-Proofpoint-GUID: EiFy4Bv0U6fFkR0btyKl3RQ558Jq3HFs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Reason: safe
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.06 / 15.00];
	WHITELIST_DMARC(-7.00)[lanl.gov:D:+];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[lanl.gov,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[lanl.gov:s=lanl,lanl.onmicrosoft.com:s=selector1-lanl-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5689-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[reidpr@lanl.gov,linux-man@vger.kernel.org];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[reidpr@lanl.gov,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lanl.gov:+,lanl.onmicrosoft.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD3626FC2F9

SGkgZm9sa3MsDQoNCkl0IHNlZW1zIHRoYXQgc2luY2UgZWFybHkgMjAyNSwgdGhlIG1hbiBwYWdl
cyBoYXZlIHN0YXJ0aW5nIHVzaW5nIEdDQy1zdHlsZSBmb3J3YXJkIGRlY2xhcmF0aW9uIG9mIHBh
cmFtZXRlcnMsIHdoaWNoIGJhc2VkIG9uIHNraW1taW5nIHRoZSBtYWlsaW5nIGxpc3QgaGFzIGdl
bmVyYXRlZCBtYW55IHNwdXJpb3VzIGJ1ZyByZXBvcnRzLg0KDQpJIGFncmVlIHdpdGggbWFueSBv
dGhlcnMgdGhhdCB0aGlzIG5vdGF0aW9uIGlzIGNvbmZ1c2luZy4gSeKAmXZlIGJlZW4gcHJvZ3Jh
bW1pbmcgQyBmb3Igb3ZlciAzMCB5ZWFycyBhbmQgaGFkIG5ldmVyIGhlYXJkIG9mIHRoaXMgc3lu
dGF4LiBJIGFjdHVhbGx5IHNwZW50IGEgd2hpbGUgdGhpcyBtb3JuaW5nIHByZXBhcmluZyBhIGJ1
ZyByZXBvcnQgb24gYSBmZXcgd2ViIHBhZ2VzLCBzaW5jZSBJIHRob3VnaHQgaXQgd2FzIGEgdHlw
by4gT25seSB3aGVuIEkgd2VudCB0byBmaWd1cmUgb3V0IHdoZW4gdGhlIOKAnGJ1Z+KAnSBoYWQg
YmVlbiBpbnRyb2R1Y2VkIGRpZCBJIHJlYWxpemUgaXQgd2FzIGEgZGVsaWJlcmF0ZSBjaGFuZ2Ug
dG8gaW50cm9kdWNlIGEgc3ludGF4IEkgd2FzIG5vdCBmYW1pbGlhciB3aXRoLiBBZnRlciByZWFk
aW5nIHVwIG9uIGZvcndhcmQgZGVjbGFyYXRpb25zIGEgYml0LCBJ4oCZbSBjb252aW5jZWQgdGhl
eSBhcmUgYSB1c2VmdWwgc3ludGF4IGZvciBhY3R1YWwgcHJvZ3JhbW1pbmcsIGJ1dCBJIGFsc28g
YWdyZWUgd2l0aCBzZXZlcmFsIG90aGVycyB0aGF0IHRoZSBzeW50YXggaXMgY29uZnVzaW5nIGlu
IHJlZmVyZW5jZSBkb2N1bWVudGF0aW9uLg0KDQpNeSB1c2UgY2FzZSwgYXMgYSBodW1hbiByYXRo
ZXIgdGhhbiBhIGNvbXBpbGVyLCBpcyB0byBmaWd1cmUgb3V0IGhvdyB0byBjYWxsIHRoZSBmdW5j
dGlvbiBhbmQgd2hhdCBpdCBkb2VzLCBhbmQgdGhlIGluZm9ybWF0aW9uIHRvIGRvIHNvIGlzIGFs
cmVhZHkgcHJlc2VudCwgZm9yIGV4YW1wbGUgaW4gdGhlIGNhc2Ugb2YgZ2V0cHduYW1fcigzKSwg
dGhlIHR5cGUgb2YgYHNpemVgIGlzIGFscmVhZHkgZ2l2ZW4gaW4gdGhlIG5vcm1hbCBwYXJhbWV0
ZXIgbGlzdC4NCg0KSWYgb25lIGFzc3VtZXMgdGhlIHN5bnRheCAqaXMqIGNvcnJlY3QsIGl04oCZ
cyBzdGlsbCBkaWZmaWN1bHQgdG8gZmlndXJlIG91dCB3aGF0IGl0IG1lYW5zLiBJdCBpcyAoQUZB
SUNUKSBzdGlsbCBhIEdOVSBleHRlbnNpb24sIHNvIGxvb2tpbmcgYXQg4oCcd2hhdOKAmXMgbmV3
4oCdIGZvciBlLmcuIEMxNyBvciBDMjMsIG9yIGV2ZW4gdGhlIGN1cnJlbnQgd29ya2luZyBkcmFm
dCBvZiBDMjksIGRvZXNu4oCZdCB0dXJuIHVwIGFueXRoaW5nLg0KDQpUaGUgcG9pbnQgYmVpbmcs
IEkgYXJndWUgdGhhdCB0aGUgZm9yd2FyZCBkZWNsYXJhdGlvbnMgYXJlIGEgdXNhYmlsaXR5IGJ1
ZyBhbmQgc2hvdWxkIGJlIHJldmVydGVkLCBiZWNhdXNlICgxKSB0aGUgc3ludGF4IGlzIHVuZmFt
aWxpYXIvY29uZnVzaW5nIGFuZCAoMikgZ2VuZXJhdGVzIG1hbnkgc3B1cmlvdXMgYnVnIHJlcG9y
dHMgdGhhdCB3YXN0ZSB0aGUgdGltZSBvZiBtYWludGFpbmVycy4gT3IsIGF0IGEgbWluaW11bSwg
dGhlcmUgc2hvdWxkIGJlIGEgbGluayBhdCBlYWNoIHBvaW50IG9mIHVzZSB0byBhbiBleHBsYW5h
dGlvbiwgc2ltaWxhciB0byB0aGUgdWJpcXVpdG91cyDigJxzZWUgZmVhdHVyZV90ZXN0X21hY3Jv
cyg3KeKAnS4NCg0KQXBwcmVjaWF0ZSB5b3VyIHRpbWUuIFBsZWFzZSBDQyBtZSBvbiBhbnkgcmVw
bGllcyBhcyBJ4oCZbSBub3Qgb24gdGhlIG1haWxpbmcgbGlzdC4NCg0KSFRILA0KUmVpZA0KDQri
gJQNCmhlL2hpbQ0KDQo=

