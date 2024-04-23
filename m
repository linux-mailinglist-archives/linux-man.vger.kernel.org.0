Return-Path: <linux-man+bounces-804-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C113C8AFC97
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 01:29:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F1481F231D3
	for <lists+linux-man@lfdr.de>; Tue, 23 Apr 2024 23:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E2023D994;
	Tue, 23 Apr 2024 23:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="T6mGzPno"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2102.outbound.protection.outlook.com [40.107.237.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A97F3E462
	for <linux-man@vger.kernel.org>; Tue, 23 Apr 2024 23:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.237.102
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713914917; cv=fail; b=aCZ5OxOawFhPuhb5Uj1mPtvb0jzZMZFeyqe5c7TPrjN+yghq5ZNiyTwhdGIlSPhXz+a30k6GYmDPuMCPsd/7jemG2KqI8dsYvycV4sy6JF1zrn0bJbcuw2ZjpTJZI3SEC0haoaE7yodpsjPP23ORQBgF9JnPitdJ4QPM0520wsc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713914917; c=relaxed/simple;
	bh=C7JyCnhFv2qX9NyDYeuo3k1T6KpBWfDjZ2+1D7y1+yw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=a0J3fOkyesPPGpbweEJhW32MN/HsJtpvZ8RVcgN+I7fuACQvf0wAFtpTq5FkRWid3GgHlyXgxKLvEsASeWcxA2cr8TS4VOuhDqjdFV36CnGiARMtexB+5fCXM5h8k5KDPSfo1iJw87uY1HszPfUdb/tsd3TGwVPGOZM2usPW2N8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=T6mGzPno; arc=fail smtp.client-ip=40.107.237.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ciuUFsN7TLwXI0kG/H90Z++AC9c5envs+MUmoVWY0QBSY1dG5VJ63V08czAONlzbejHkqELKUVQv4Cxk2xEN3qbe++Y4N974cBWCEXQ3UoscqIeQgYWAYMxyZCeGyLizE3D+If1BQQuBk/fRh+o2evaJbQkDQbuGan/f40ckQkhx8Fu1/nyr311F4oV6eiU6TJ3ImHDU9hH+4zPu3LGKZaJcVMNOhdAi4g7/G3hBhU8q7HIwrsI7zgBpmMjvDHKy2Sy4iKD63Is7V1nihkVWrPEUe1aJOBn7VC8ShZEISX58fOAyLtmHvSVxESMle2k3rC2I1L66o34sLhB0OQYsKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8WkwV2BmKEDq9KyhNl6RIIEtaXmH+TooT7r0d/h7PCM=;
 b=VPUX0Q8j8lg8v57LBTsmC/FM7ak5OUKbmyTuGVbGkQ1LcovBWCvnaKuDQhd+5IRo2C08ONScJbJwNKeo/BF+vSsC/hbZuO9m6j3qGdCTCH9YYGrCvvHnKNozJzfh/45KNzCdywG9uBPZYvby+uA13ZKckaiaEV5PDm6nslpvRhGClEX/gBs10YKsgriMpDRh5KRuvogpG5/FHvP1YAxasYjGNmun+xezCiG/u9LiiKhA0JsGJBQEO9lQoLEAHZdmqIeCP+2VUo03DaOpO+JKUiUD3HpHFJm8JNNDi0Etf0S2K0xKH4AdfCoNYbME2GoRlROdwWS4l4COB395fzdLnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8WkwV2BmKEDq9KyhNl6RIIEtaXmH+TooT7r0d/h7PCM=;
 b=T6mGzPnos8itqgDr9GnqSc0MNcrCyw+KyTcp/MuBmkoun8NxQlFnJ+xmQXNHhzGbizByVPq8Kd5gAH8DygUJfrAdBMhuf1wtz33tkTBjiUpNbhAm/N6lXHdUIg5BPl3ihvW6A9nXChNGAOk8UPkjuJurg9SvjYDTsqOsF2VbeEQ=
Received: from CY8PR17MB6330.namprd17.prod.outlook.com (2603:10b6:930:9d::11)
 by BY5PR17MB3730.namprd17.prod.outlook.com (2603:10b6:a03:232::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Tue, 23 Apr
 2024 23:28:31 +0000
Received: from CY8PR17MB6330.namprd17.prod.outlook.com
 ([fe80::e98:5c1d:ce2b:8f43]) by CY8PR17MB6330.namprd17.prod.outlook.com
 ([fe80::e98:5c1d:ce2b:8f43%7]) with mapi id 15.20.7472.044; Tue, 23 Apr 2024
 23:28:31 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
To: Alejandro Colomar <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Gregory Price
	<gregory.price@memverge.com>, "ying.huang@intel.com" <ying.huang@intel.com>
Subject: Re: [PATCH v6] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Thread-Topic: [PATCH v6] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Thread-Index: AQHahTwQyspV1gtScUKxZvIM7uPNWLFX1XAAgB7L84A=
Date: Tue, 23 Apr 2024 23:28:31 +0000
Message-ID: <41DA524D-B92F-4F59-B816-014BFDC88BAB@memverge.com>
References: <20240402-weighted_interleave-v6-1-4c2891901352@memverge.com>
 <rbxc53tqqsfkmdwqlijpof225anw5pedfe7hwe7quvgzpgk7e6@w35b2pvut75o>
In-Reply-To: <rbxc53tqqsfkmdwqlijpof225anw5pedfe7hwe7quvgzpgk7e6@w35b2pvut75o>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR17MB6330:EE_|BY5PR17MB3730:EE_
x-ms-office365-filtering-correlation-id: 28d3c655-1d55-477a-8eb2-08dc63ed16ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?0lEFq/6zInIogKizJZhXKvap0iOaUzQBQei8JHiS3Ji3aN8jWdScnuPoSiXf?=
 =?us-ascii?Q?LLTrV/wh/zt7GlSe0dC/bNIStVegTHSXgG5Lb8/1FJu0ST2e1yWSaydzKlLk?=
 =?us-ascii?Q?hIvbaMfCcIw36fkzf0+vKRiX1XXp9jIrD8FQYYqt6FTpZrdnamem6GHaj6L0?=
 =?us-ascii?Q?Dgi3QSd6aN74bRyaAQKg1Fivd2vt5ri35wimr8w26n7imzP5Sdf1lHqGw+yq?=
 =?us-ascii?Q?/yfmFFt8yO2VaNGThxSI2ZYVHxeVlA56vIyI7OMLsn+UZHNtII9WT8yHKRtI?=
 =?us-ascii?Q?Uo4KU6SmHQk+87cjDZfbtGqpIIbL3tv/q9uMj9kNMoxO8q8DuX5DhRvr1aQH?=
 =?us-ascii?Q?iWmJq7u8PVpAIqKZSgcj84eCXWl77ML2FAsQTbXjPgSfvtCVHHETvn6p5BpD?=
 =?us-ascii?Q?rqhTXYdBTuqVa2muq45uTTi0P/hBqsWC0PFWQRg+5e/qxboE5jm6jWB9GTPn?=
 =?us-ascii?Q?PFPzSS9QqXw+hBPqh4ofaAg0t2WTMEEFXnvWVDFoYIA13MkKiMSCPEGia0iH?=
 =?us-ascii?Q?9+SdnTibwPW88GDptjyWIjqnGB3fm4RBpBsIuMQ5SfBPc1IRfZ+MHyRteGOZ?=
 =?us-ascii?Q?rXwUqTwc7Xzx8pI8nTHmpmUEmlFNh4e3zJLSnHZJOm0nEua6ohx4qOEJa9b1?=
 =?us-ascii?Q?uynSGYPMzUQih0/wNT75MSmotvywMLCS+J5anJ9GyOHJ4mZ2zWo5EnHYnmi2?=
 =?us-ascii?Q?Dv96tgTDPFogfqtQgDZIi0hqRzQGJVYQpq4mAifZ9gXEu1QgrprGUHyQPz2m?=
 =?us-ascii?Q?sPPKDqe0Ar/X1+10q4mJKBjF01pzpyk1BRFTMfkxhzqHyCNdAuTQ7PjALXBb?=
 =?us-ascii?Q?B/oFQ0uE7nuW2Hx7flR4uzQGNgIoAlqc390J+ezoxmT8YivEmtTALHRaIeKE?=
 =?us-ascii?Q?1/+/ymYuZVRl/s4vPf40W+xU0e1r0MgPn8OiygRiCpMoqV7UisKZuffmtC1v?=
 =?us-ascii?Q?RWOEpiqN+GyKHIhZWBivw6lLU61cWTcRCkUnhaqUKZtRH5nD3g4e1JGTxyAb?=
 =?us-ascii?Q?0HgoBcbD5W1F88cikUrZkYhBL9Yb0sZNFjZrnVI4XE9ZZG4Un5OtBUExgkq6?=
 =?us-ascii?Q?ukKT4pRPAOJiFAEwTjizZ0DwZBRkfy0WE6pgUIl2I12QdCtImqZAlqjhoojL?=
 =?us-ascii?Q?LL73RiwjrXCaxY3EO1CYax+S+GC8OQd2k3yFdQaRKupo+23I6JsisByULU4D?=
 =?us-ascii?Q?rl59If458BzQKUKvA2mBssUAh/jpmU/2W9Kcrw4gYXimsqW2DmSr2rmCIU7V?=
 =?us-ascii?Q?VEzXuwj30VYUwPu3Ay0i0nU2sjjc7SJg9S69h2t4aLgMbwCQwI+3L+2eTOmd?=
 =?us-ascii?Q?CcMbNxXBduB9HA412GG2cDvlVyYUrfWMI0HTmldZsSk7CQ=3D=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY8PR17MB6330.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?lpOQJC0oDeAFkx7kjmG7KJ567bSg5AGWVvYDWDoncrmIqc89XxG1nzdLFwoK?=
 =?us-ascii?Q?x68BBWGayKMbrJQ5+NnbBYDUIqFqRP9TqGzK3Nx0pOzoF2RXolx5A+jIcSla?=
 =?us-ascii?Q?han12Akuch/ikAOH/KwCR08i+62YR4YodTsjgEqInc4ookdxf+beH3Z8dQOT?=
 =?us-ascii?Q?4JIZG15ABmRiKfy43uzy+kr14WvkB0+03YLS66waj359IrIxrZksvUXScad9?=
 =?us-ascii?Q?kXeYK4NqWkx/OoalcYMw9tuzeCQN91zfTYOrFqpdLJerTzp7xg+wAzlK+Gq1?=
 =?us-ascii?Q?k3HeEi+xn1Bk/YuJwaKf97judJw1+P6AJehOc0aKkUNueN1uIkUTJsbDcp34?=
 =?us-ascii?Q?BT+0M5A56VeJ6SPctDeJO68keepClPi9J1HFHMEy8sFXhzgk25s/S9RCtnEd?=
 =?us-ascii?Q?3C5HPM+r7tHZZKouSNeZVFbOFE51C1SFZLXC3/+F1eA92G3jgIk3P4LVjg+N?=
 =?us-ascii?Q?bbgJoZzc/bv3gF8WYEXD4BFVpPpD6d+6oVmEjkfhx51r0E1hezaoPQRB48+V?=
 =?us-ascii?Q?yjl0iYD1Jt6MaFd2RhrBsogFvyBUaxX4uqblZ85LbaxFEOUrMgKbka+KPHTQ?=
 =?us-ascii?Q?SXWDcGhfejCUtSw84tVJsyIfo6Bc1/CtV95udSiAa4ISapaV6yAx+zRbZV6b?=
 =?us-ascii?Q?uJ7mRWDdxR/oYc7ZkhQHE8lKGPfsNLKEySe0kNU/Dp1bzLf1uv/VsqGPX4vi?=
 =?us-ascii?Q?wYlA4BODycmMHHhNL0gFwlIJVdXdRAxuNRTR+CN+pvya/BpNQUeG+7XvXkWV?=
 =?us-ascii?Q?Zropgizn3A7QU/xKvBQOYw6KWixQpTqlT5M1WwNrytYgSoNEPO5rEZem9fxy?=
 =?us-ascii?Q?Vo1EVj9/zriY0EiAglxlHPAQvoZ469s1JJUeozpt05KsesOu0E/O9yrQwx4B?=
 =?us-ascii?Q?UrE17Cc0RfVIOCZtrxbc5IKdNF963TX5MzfDcEU2kJk2yyLle8Tq+PQ6ATyC?=
 =?us-ascii?Q?dC5adIHQlE72tsD2oIrD2uwinIMTPG58XSWu8ddxXahU62hy1HJu8YACN0Po?=
 =?us-ascii?Q?tU5dGLtzKbIIeMy64ChtCLuT8rIFHBHR3Z3aexrkjz/HmzDPt/fVBqt9VB8s?=
 =?us-ascii?Q?fN8w0RP4mpEHm38RAPoesVJbvv3wq2BS2sO+0UXSBrLDdHO5KebuwciKktCr?=
 =?us-ascii?Q?cwxBO5x52bAWufeWItdYgwpCwhhyADWjYpXLcSx1K/Gy3Q8vs9mDTL3rqYUD?=
 =?us-ascii?Q?UjJIwGTsFBNr2ouUKqkUMcf5E225hEXwAT+Cec6+53pUKOo+R/MR/yp4T6av?=
 =?us-ascii?Q?J483h78kQsTzDrUcY2SSJJIR0sAkaaGQreAH+Tqoxwz7YBmGSc3knGIqULLR?=
 =?us-ascii?Q?AkDd2ayCAVJyVnlnpYPxOrgsqtX5w5vT8eyYtYF030LowMv7ZOUIfKmBVNwl?=
 =?us-ascii?Q?jk4UEj0BD+Of3xHOa4IgM4VvZD5CsiprANawdtRM7E8miTUMGcliqlHha2ab?=
 =?us-ascii?Q?hsZ19dZ2S6gS0ZR8RWOADQJjJ4Gc/rg5S6GUVNs0/0ur08czbNb6Z9GT5Gy2?=
 =?us-ascii?Q?3TyaIHd8f284x3kjCdBKHvxyCsS32S4L5zh4JPOTwOUhYwkdTPQUwhPz+WPY?=
 =?us-ascii?Q?gGuJo+x8UTjpmD2HE8BphMdF6UUr8rY+SIgxB2LMWXKIPGbsm18iz00BFeMR?=
 =?us-ascii?Q?t8dI65iwMAfmd8mbLUNoLDH0SlBiXjMevbXHIQnip+JQ9El1z26PilXyCRpT?=
 =?us-ascii?Q?1UTUOUez+nl2eQmVcg+OawyOImI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <93EDA39C41A58145AA0285CA91E1A3E0@namprd17.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR17MB6330.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28d3c655-1d55-477a-8eb2-08dc63ed16ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 23:28:31.8050
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dumuQDxhBEYNiaYjsyaa2PWZQ1j3z14006ihWGCgFzofOCdB1iUwC6ScOZtc97UqM40zBCnQwHeoRM/OlrPe/XhEAYCkkJKyjIcdQDkZHbQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR17MB3730

Hi Alex,

Surprised I missed this message. Better late than never, I hope...

>> .TP
>> +.BR MPOL_WEIGHTED_INTERLEAVE " (since Linux 6.9)"
>> +.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
>> +This mode interleaves page allocations across the nodes specified in
>> +.I nodemask
>> +according to the weights in
>> +.IR /sys/kernel/mm/mempolicy/weighted_interleave .
>> +For example, if bits 0, 2, and 5 are raised in
>=20
> I've checked that there's no other use of "raise" for saying that a bit
> is set, in the Linux man-pages project (or I couldn't find it).  Let's
> say "set", which is far more common, I think.
>=20

Sounds good; will go back and edit.

>> or
>> .B MPOL_LOCAL
>> @@ -199,6 +200,23 @@ the memory bandwidth of a single node.
>> .\" To be effective the memory area should be fairly large,
>> .\" at least 1 MB or bigger.
>> .TP
>> +.BR MPOL_WEIGHTED_INTERLEAVE " (since Linux 6.9)"
>> +.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
>> +This mode interleaves page allocations across the nodes specified in
>> +.I nodemask
>> +according to the weights in
>> +.IR /sys/kernel/mm/mempolicy/weighted_interleave .
>> +For example, if bits 0, 2, and 5 are raised in
>=20
> Same here.
>=20
> Other than that, the patch LGTM.  Thanks!
>=20
> Have a lovely day!
> Alex

Same to you! Glad to wrap this up.

Svetly


