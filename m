Return-Path: <linux-man+bounces-613-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DED6B87D71C
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 00:01:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83C37281F2E
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 23:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07A2354BEC;
	Fri, 15 Mar 2024 23:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="MeBrJHXl"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2100.outbound.protection.outlook.com [40.107.92.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F34B17BAE
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 23:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.92.100
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710543667; cv=fail; b=AUPKCQe8Nu8csveRF27oUlJkae3xmBPRmpq01OJnsa0mW9E1h5h7O1Cf/UeLY8A37kk2hN7jS5UeYvvCqy+pzbJPQieQAOa0KQrCEbnJgru2MiQp+OSWJEnEZs3Xht3aAAjZFoKewCraPU3PtfOO9x4u8vf17ED3QwDiiCtNy70=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710543667; c=relaxed/simple;
	bh=V18d1GRifDdTEPuBRSHwqOReIE9TATAU2qBJpTj65RU=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=Lfq/RtUK2+xCO/0Fr0ETuMWVlRCkKyS6rQxFsSsXOwt1xkO8tPIJeFUb6wZ7BUM7UQbwkALkap7wVEln+VSqX30jwGsCcx1dsFPyPPh3IjBQBRRcsg65s52PrxY9khY4yI53s7lxoudeFEYC/e5ComY9xiWZ/b0tTZLh2US0UpE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=MeBrJHXl; arc=fail smtp.client-ip=40.107.92.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BH/LqNA99GPs/2vBQVHcwCMvEcGbimPQcXwmGniL1PpQT1kmr/gruHrkd+z7bZl48F6Og8PKmBO52FccQxEqWoPt3lFWbQX89SP0pfJ9SSjjYSV3P3HSJWcfXJuFupJaCvyktqp5UGMBLU8Ff3FkMx5c0EOrQ6UuqJFqqsQTHBs1ad4QKJYx5u/GxQ8JZTxkg4uMBspGsj/fgKQbRgZBKDqkSZADVhcENDeaer4VbIBo9NbxPMl8WAaoPuCL380+Dt/psMzCL464tN5cSKigK/ucxTE2lV8ArTxapKjnGZHTis6zA5aw77jnjDExU8neZzktz0A/p7jpqhHN+Py2VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qvOZHblwns2WR+DczXEnYfp7oSLLPzrAakYZKasM9lw=;
 b=eiFrjhdamtgS40SQsgUmdw0ZfwewBezwXo9oiwujdJ9cE19rYCMwelUVAVIMO8Z5yM6g9c1mfMIJB7DtDNpvAKjjZEjbjlqQZiYk4MGZ2jZbCDc6lPlCnNZ104o+wAaISpOCDQyzD9IMvYRe3BIdlLBRM8xtML2yLg/0K3HwURd/3cjPCFsQEO8dTNcOo8feU/kFP27qxkOTy7VzAzQcpeztm6L3EMX5JaLt2zW4tuZ0vCgkpNfxnFR1XEd6lCud3aj+7Myw71/qO6/7iU19YSRV6XObKL/RPDcEGHY34yfRfvWH6HDddMeX1P1be2uVWft2jXG7qJH76Pe9EdATig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qvOZHblwns2WR+DczXEnYfp7oSLLPzrAakYZKasM9lw=;
 b=MeBrJHXlpMOUgXijSapf0Pc5oR9+idooGFfHvGyZlgBKkDLFjiMG3qYm+qtPIwzfvcFdoEgwH5lLxgF844kQhzOZ4Q7SRAH5EY6mPrdnVx+woAwAor57v2X/Fi9VMFx7+wYD5pmdW58On+xPb3/KzE7Kc7z+q2VavrqoRxD2PLg=
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by DS0PR17MB6325.namprd17.prod.outlook.com (2603:10b6:8:13e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.22; Fri, 15 Mar
 2024 23:00:59 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.017; Fri, 15 Mar 2024
 23:00:59 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
To: Alejandro Colomar <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Gregory Price
	<gregory.price@memverge.com>, "Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Thread-Topic: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Thread-Index: AQHadwL6fh6/dFMF8U6eJmdWjdNddLE5LhqAgAAAOACAADzkAA==
Date: Fri, 15 Mar 2024 23:00:58 +0000
Message-ID: <037EAE09-FE93-4A93-A988-BE1FEA5EBF1E@memverge.com>
References: <20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com>
 <ZfSf3f7baqC1N_ha@debian> <ZfSgDOLBqw1Kyz8X@debian>
In-Reply-To: <ZfSgDOLBqw1Kyz8X@debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR17MB6347:EE_|DS0PR17MB6325:EE_
x-ms-office365-filtering-correlation-id: 15d05c7c-bc0a-4007-9882-08dc4543c762
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 z0CkafFrO8XUbZoUecxWbbOsed1IwjoGZ+3dF5R0v8Gjt9xvME73u0KQX7yaeRG7OseZljH2XJVXvGALmu1UE6xbpylHqiMil7Togmt8A3cyao9BRTFztZZuhaXMbCY6CjHDWLZZ3Rg5qp1k/mOcz70+pSPgPYA49FMv/3z+DzuByK9A1cSBpFvobiJ70dkfJr0CeSmn0txetxE54EpqkOdNJ8+RmjKEFFNq2tQ6BQ+jf6XYoVXM8zs0qwnv4ULBgLLIpKO+9r1LfPKxHEX9GLONELbkCdlcRFvXN/2n8VtM2v9EodZ//fGlvFz3fhADC3zHpjzXWiV2EWaKByJdQrQBipYAl47nN3viW1KnyA4CFZ1uqY9k/MbgY7ktwYAGbwcy2wdjzYKRffVsp99uJz+f3c38H84iJ+XsxJf/8ONtFLPDhDnGAT+wHUv8EoBzgejgNUboejRMYRnmQwJqmwZ04MMcpdx5aYK9BAauNPH2E5lqE4oEchAGKZ/iXT4B7PQhFJ1WyA1QcoeQPHL60v5lO1Gcp9VPlvFbB4+Bd83syN7T7G8RIAMuztzqY7aYBS3efFkzX77cNHSX+A8HN8+4Cd4hmeoCrOrqbwTeDU/LSSVy5+cJheckibsAmkV/bV9Hl7XJzfzgdy1zw4+FQCdwUnh/DAU05PCyOs3g2E7p9lUjCIDFdnTEnMoZrzzsJlrJs8y+Zc2l5zlOxi61oUTeCej/USQOmPqon427wNk=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?PY6Y2Ji0oyVFP/0rgs3J131/owov9z4k2U4IyvtiBVB3JusZA6bPKdOf1VDI?=
 =?us-ascii?Q?GxVCixkj0PHjUtepwcLXsincJ6uuE7jkv16G0pfIc8VMoSNvFbdGlqGyjar/?=
 =?us-ascii?Q?Ako3BgHScccxwBDJTBguQS/Uo+3wZna5cAjDWJwMbwaFA0c0S+j2r3O0XqBj?=
 =?us-ascii?Q?2+cKfGykbCcpN/PCEf7J8zWB61mJS4p2ARJfXe545YChKQK6weEaTcV//FGr?=
 =?us-ascii?Q?bFCAx8VaFBIljIVcRfhRntnrNmmY0+36meXwRGV6alZiBetG6x+oKmBy1+N3?=
 =?us-ascii?Q?+OEMh2/bVD8EnIIu+uRgab6e1jBZzE1Szwq4cufqDVSi6pY62GnJV9Asq55P?=
 =?us-ascii?Q?sEA+ktDhm8GmUikstd7hm14mCIWhxDTvYeBDLlDBpcWIAVK9PomCOsdLMf4a?=
 =?us-ascii?Q?8Ojm6KQm4bmUDrPjIH+iDNNzGwz40RoOgtprAk9iZNpwNbuGQnJ0vBNx+NUv?=
 =?us-ascii?Q?aT2uunKuRZPsrNi6N334w9RjaRz8hUZ4hDtltm+WIE1j+F0uHftDByAVnSBh?=
 =?us-ascii?Q?BHZvq7I6XXfbOXjJ6KYCaCZwZ8IbE5rQp5OvjrZVUn7XGF8YyT23z5NhWCLb?=
 =?us-ascii?Q?p9KVczD6ucLSeYbrICoYH99nMIFX4Wu+cmNZzktesOp0HbLSAG6zEGJ3rqxr?=
 =?us-ascii?Q?k9X+sOFIyFcNs2Dns63NZ3SKm4lhSVfhECEzoy0pW9Oa/RbxpLJJYDei8LYj?=
 =?us-ascii?Q?NYbK85zTdlbAYsGdqB+17w9CVIVmfmtnmAJDNool3Fe9b32Ms3YpqWneXIVU?=
 =?us-ascii?Q?5tGAJfzXQ12rJmGRHUhKghdWg08xlja79GIZsUoQRwqHDTk2cSijF2CRKI2E?=
 =?us-ascii?Q?y6gQYSlQllqlcM9qQY8xTLqP/2ir0Q1FEPG/4QMi3h9+njODYOV4xY7hJR0j?=
 =?us-ascii?Q?w4b/DMJIR2IrgmXRqA4VdvpQ6rJyZfRCO/YayuZgA/jicTcxPy6cF9wGCJLu?=
 =?us-ascii?Q?AgCWnwN3i/0St1hBTncBlHyN0obdIVBc4qHYM3KXFEWJZDRt+FMMG1HGsFQy?=
 =?us-ascii?Q?8P31OForTXr3iz/zDMEN/IcMUxrjK7Y7pliA39/RLYTXiTG8PL+U9mdQvppL?=
 =?us-ascii?Q?g7ZEFB+LhLi2TOD0s/2E6Zq2GyqGrODZZWF2vVYMGxPJgs0QYJ+bGZd1+rel?=
 =?us-ascii?Q?hMlS0/VWqHw+Akeu+o/ziCOADHzGMgSqI6L1fjKOq7SEv5w4BDUNT0rgzj+K?=
 =?us-ascii?Q?uNCXd9x4vzy2b4/6h5OUmdcvExxi8Ebwu17nM064X1Z0yPlsLF0Kw/q4sW5/?=
 =?us-ascii?Q?b909qQQbC7Q3EyfBza+j604fYSP3IpWNJ1NExRefnipwzbH8+swzIQ0yp6mr?=
 =?us-ascii?Q?x0iuQj7aE/qhG7z4THLQZDRk/ZJ948/bmSj/kXWWldKnVmi7E8klm+mwjW/v?=
 =?us-ascii?Q?fAxs/Jcq4gsj+7UI8VuBEUaz9bI/ZfWoZKu3gmT/WzeM9w9/s4sWmq6nzJLy?=
 =?us-ascii?Q?qW2nNk6bcsPJxJnfYoJ/Bm3ADYOq3JhCawsIAwNUV/h3iLYiTzRU6WOR6EF0?=
 =?us-ascii?Q?vsnBKK0KY98zb+XU3vNG11d37QPFbkpOsSPqJOD79fOt3sZ7qWp3wZqDJ7qC?=
 =?us-ascii?Q?eVy4jnGPUkK/X6enNZjqsauK6GOR6PYJWmThMlahBrOrprHd0Apl12gbzFUY?=
 =?us-ascii?Q?IWi2BLvBbK/w7YiC9j1B2GFK+pZUIytxHUAMpJ3JHXsA1EgFip03yfdTk69x?=
 =?us-ascii?Q?mlY2Lw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E21AAFF15E090649AC875FD38F84E2F7@namprd17.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15d05c7c-bc0a-4007-9882-08dc4543c762
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2024 23:00:58.9446
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 33gZ48rxWCAiqLdx7OqlH9M21BlFr7gFPbozNHvGerkxvQN5e+xLqUhezqHalF+Sy15YDUwQx7ai0TmGLFJiUOWSbzQnmNF1zjbWGOta9mI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR17MB6325

Hey Alex,

> On Mar 15, 2024, at 12:22 PM, Alejandro Colomar <alx@kernel.org> wrote:
>=20
> On Fri, Mar 15, 2024 at 08:22:05PM +0100, Alejandro Colomar wrote:
>>=20
>> Path names should go in italics.  See groff_man(7):
>=20
> Oops, that's groff_man_style(7), actually.

My bad! I should have sought out the style guide. Will fix in v3.

Svetly

