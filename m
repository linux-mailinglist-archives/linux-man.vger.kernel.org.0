Return-Path: <linux-man+bounces-610-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1DD87D331
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 19:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7138D1F248A8
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 18:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F13FD48CF2;
	Fri, 15 Mar 2024 18:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="TiIombY2"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2132.outbound.protection.outlook.com [40.107.212.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01484CB38
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 18:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.212.132
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710525770; cv=fail; b=cWuSXSQZ74eiOvvH0tG4nEPLgI9DsY5Z2ck/rTG/1zzCGYKtc9fLYy+UEtG0CIXMpneV2ikGCwlw0A+eq0Tz2Ya/AwD9o7JhzZEJkiGE2aQ48G6pzvvpQ0s0/63NysW5zS5t46AqjdkE5JvHNLCogbpruNb2t3l5rQlGIVF2LC0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710525770; c=relaxed/simple;
	bh=xVVdQNSdTzGjxTpT5JiOXAVBkXZkdr8NueDs5g36UAI=;
	h=From:Date:Subject:Content-Type:Message-Id:To:Cc:MIME-Version; b=Z8UEeiVkMA2UaAH0gM4dPACscjKLTwBJ3loe2q/OE99s98iWO0So5ZI2cO+nM6HxN0lyRz/hkT8zW0fQQjrwCtXPrBDWoblrZ5NCCmstpNboR4CqBt7utgTkxcp8mxyJdl2BnKGGuPiDU4vPqjaCVLYiAI6HMlCiAN2XUD6L+Js=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=TiIombY2; arc=fail smtp.client-ip=40.107.212.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XFNo3RV9PPZHi/57JzVy1ptrryUJ976WCt5cXvCcbZ92W20e0UJuTDwqe1S5aPQiDYXCs9iScNdWmS7pWC8Jg8t3XrgyQO9xNEE9C8QL2g5LPLlpoh6UjHFnfAzJfZzUmPwzRDDdLf8Hit5r/5Re1JS3lo/61TSOUCfc2FG6sVXQFCmrCj6uDdAsmaRK5kmQUz0tfWQCjqUCSccI9hV2SExnPaaVUFl+yLbF1yNTTyAAvIHvJOGYJYrzCqmO6RQmDh/bXHDwPQAFpd7Q/zHpMAIwTeFdUIPXNniydGSpVqF98kO94ZINK/GYJS+bPKKrU+FFSHbSnV9JxMD6Jhvfhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1jWNQG12PG+jyQH6HTHZq0vfsaPeRQR31WZKkOzIIqY=;
 b=XNsvIjTx0Czhu3IGr3nPK+5JOGVHPZrZ8L0QxQ9h/2u+yGx+5TWYN5vGRYXO3L4naxZZ8Wh3P9ubBvzEUnbCfE6jF3cltewYvbMMxSWue3WoXnpQFzLC1/vmWiGfvrLjXnYvbkG7OFtV/wKVpMphdKgsinpNbv8lgMkVsZNhEVGHP+/1CuUG/ZGcXbxspnN7gogDOnWcbBfy5iMzxIE1i2DpHVEkmMrVyrRyD5u5tlwyLhbs9FB8U1epwkIszTnu5u4yeUzn2ooiCD4C5PN0VHvhajN/D3Jwnq5enebbvdl7s7yCRdedYWhcrl/fomGlZdNV3VaWcjJ+IM7uC8mkRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1jWNQG12PG+jyQH6HTHZq0vfsaPeRQR31WZKkOzIIqY=;
 b=TiIombY2TJuiPKiEWhc2Kzszkxv+BLuOdiaCEZ7r/hFI5wHslUFmzDbDshNeolC8cfj9hzzPdBX08ScDW5A0VDCV46aZOUhyQSwuntkE89cRfDwbzfKif6CPwT9ymrLB2ptaGbcBGlnbWV1L9zTUiaPfwgxmhjQ5dUMZBZer3YI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by SA1PR17MB5649.namprd17.prod.outlook.com (2603:10b6:806:1cc::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.19; Fri, 15 Mar
 2024 18:02:43 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.017; Fri, 15 Mar 2024
 18:02:43 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
Date: Fri, 15 Mar 2024 11:02:06 -0700
Subject: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com>
X-B4-Tracking: v=1; b=H4sIAB2N9GUC/22NQQ6CMBQFr0L+2hoKRZGV9zDEIH3AT6Q1Laka0
 rtbSdy5nEnevJU8HMNTk63kENizNQmKXUb91JkRgnViKvJC5aUsxRM8Tgv0lc0Cd0cXIFBLJaG
 PlRpOlJYPh4FfW/XSJp7YL9a9t5Mgv/bXU397QQopetSVPih9y7U6z5gD3Ih9b2dqY4wfj1DO2
 LkAAAA=
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com, 
 ying.huang@intel.com, Svetly Todorov <svetly.todorov@memverge.com>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1710525762; l=4032;
 i=svetly.todorov@memverge.com; s=20240312; h=from:subject:message-id;
 bh=ePBptE5VsyZztDkKyv1qmhC2+9PkeOWwLl3x/lNHzz4=;
 b=R3A/h4TZIkMnqFMou1iEEy7fGWgE9+7GuwhjGi4uEu4T8LNDRNy7GWTmdassTdvqGHC/7GxH6
 mkXRvxsXCTrDSIhjyAWda9rJ4VZ4BP80QMW0fQnGM4FKIexTY7lqrrg
X-Developer-Key: i=svetly.todorov@memverge.com; a=ed25519;
 pk=bo0spdkY5tAEf+QP9ZH+jA9biE/razmOR7VcBXnymUE=
X-ClientProxiedBy: BY3PR03CA0012.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::17) To IA0PR17MB6347.namprd17.prod.outlook.com
 (2603:10b6:208:435::22)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR17MB6347:EE_|SA1PR17MB5649:EE_
X-MS-Office365-Filtering-Correlation-Id: 34aa6087-ebbb-4f75-de06-08dc451a1cbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	G20qU0/ux/OKFjF1Ite4PCKiWlSb+2+mLNGQWAhJyGrVPd6/dk2woJY7pB8wRjPnWTakxsWG2TrQpGVdRdSf6jIKucxj2ZdxoUN4kZsKQNRdJm0dULoqpEnnbsT8MQZY1GB9ulJWH8GU7zRqWLO9xQVpuUgy+ku+4Yl9kzFwW326TFO6T/jdaLoxxzATIsadiNl0wXVvVr2NW0OWyGkdHY98A2GsPPrlGtigrAAkG3LACfUC1Ns3JiflMfxZDz4MKSEwqU57xm6hp5RhKqgavyhWj3yyxPnvqutzV2kOPH8lYsFCI3Tk/JQ5F7THI2m8k/6mk/iBfqcjBxV3w9DMNCiXz/7eKVEQ0PDAV+mU/IskZrs78FeDkk6XOMt04akRRVRd3cuxicfgM8HdwuYl5Gb1A7ITsLBxN6fTujWxo25q6VGSdFpByh+htVay4vn0DRAuM00zzfxeQK7zgZwJsrAYlUcDtyETxyXzj4JRJrQWJO0sZ/9qXoWJQTW48ELiGVVBMPr+b5Klh2X3f7pmS20UpVCs4aJw1cKfPe6sFpAznCg8xDhQ1xE6goZ6ShiKafzG85Cst0ncyw01C8CoThrUafd9CTzoBTNvGhw6GepVActI//aI2a10m2k13JhBLHBboxeKGS8ll4QLqPtGiZQHTxK4RgUUEgDqpYPQCQs=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(52116005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bXNOOTNJRm4vdExZOHpqNkk1LzFCaGF6azJKM0Vsb0RtTnVEZ0RPU3ByR2JI?=
 =?utf-8?B?dU5MLzdDcFJzZGI1MWR1aVFIeXBOY2lMb3NkK3BOanNUVHVNZm1HaUVqVGVD?=
 =?utf-8?B?a3VXdDBLRzU1ZUFQa3RyTUc4TEw3QUp1Vk84eThmWExyVlN3MkdrTURrRDM4?=
 =?utf-8?B?U3Ivd3ZCY082djF3MFp0Qk1MbkNUSlUxTjVoS0RYNnJFOVZkdkY5YmtoZ3Ns?=
 =?utf-8?B?cjg0NHhNR2tlK1ZOTE9sZVN5a2l3emU1bUVHQWt1SEorOTVyb1BySXlCRlA1?=
 =?utf-8?B?K25BVlFxWUUwQ2o2azhpMUhFbHA4QmplVWxZVVpGSmdBM004aHMwZitLWTJS?=
 =?utf-8?B?UkVnam82OWc4eVA1RkZRUm1aTVJWOFVVNmpWeWdSek5CT0VwL29CL25BSjlZ?=
 =?utf-8?B?Q1BYMVRsV2JucmpWeG1RQlJzZEJ4RGZUaEpEUkwxMTQwN3ZURW1kY0I0ZldK?=
 =?utf-8?B?ZVczSUtPT09HVFRWSnpleDVBSS9DbEhsT2M4anQyUnpVM0NDUlBFS0R4ZGNi?=
 =?utf-8?B?NHFGb0d5Y0R0QzVmd2NjMExnMzJjY3N4KzVjUXBsb2Y1eS8rR1A3c2VOdFFy?=
 =?utf-8?B?ZFFZeXVRM3M0bThuZndXclRGeEx4Tk1uYTRTTzJrREwvMEl3bnd0TXd6MTFQ?=
 =?utf-8?B?ZUtwOFlkQS9tWFhHcVBiOHBtM1VkTlV2UlpwK0R5cGZFUjFPZm94MzkrL0lE?=
 =?utf-8?B?bTJtUDl5VXU1WWsra2UxT3pGYmZYZFozMnA5NlVwRlNpOTQ3bWo5ZUZQV0Ez?=
 =?utf-8?B?cHl6RjNjU1BJODByc1lFUHI2VVpyaTc0RmVweEs1VXdKdnRBZm04N2UzUzJo?=
 =?utf-8?B?aGZHSmtBOE5WdWFOck15bWtuUVFwRTRYSzFmeTU1eVZJaTAxeFloNXo2RS9G?=
 =?utf-8?B?R2k0Y2FmUEJQYU9rZVVUaDRUVDNuNDNyUGs4aFpRaGFOZkZMY2pRNXp4eThZ?=
 =?utf-8?B?OFFjUTAzSEJWQ1kzYktQTlNHRTg5dWZ2Wjc4OHQ5TkdnN0d6eU1EeVM5TVIw?=
 =?utf-8?B?ZlNpanNIKytZRjFsRHhGenEySVh0WGZxNEVlS0VKSURjZ1JUUjhrTmMzemtr?=
 =?utf-8?B?U0RtNyszY2dwQ0I4dll1UnFxRE5wWUZ1Q1Ntb0JQbWh3WWhSb0d3andFQ1li?=
 =?utf-8?B?Mm1lazdoN3JLeEhXamxvQ2lzdUJqVVk4a1hGWFM4SVBMVEZPUUx1MDRyMzI5?=
 =?utf-8?B?Y0VuMk9PYjZEWHN5V2FVcUJ1dVVhemQ0SUtCN1BtTkgvSzRPR3YwY1oxckps?=
 =?utf-8?B?R3B4aGFkM1VOcEtsaUFEWGRhYXFZRkpUVy8rSDBNRUxyN3dMQ0NmdSs3ODUz?=
 =?utf-8?B?OUFVdUFNWWtGcEIwOEVwcWJ5SlBmVEdiM0s4dnRWUUp2VUIxS2p0WWlXNjhE?=
 =?utf-8?B?djZlbWJyV0pSbmpIM1ZLelo5WHZ4ZFI4YnpIc2c2WmJ0TlkwOE1jUTVOa0gx?=
 =?utf-8?B?M25jbzlUQ0UwOFBCUTVJTk9vMjF0ZVRva21tUTJjWVFsYzFWTlVOeFVYdWpo?=
 =?utf-8?B?c2NCR2VDRGRkaWRQRWR0TWwyaHM2R0xPR014cEE2T1ROYVdlMVlFMG5ZMkZW?=
 =?utf-8?B?VlE1blZyVU45Qmg1bHpmaFhaSHRjTlVMbHg2TGw0bm9IU01XQm10MVl2UW9o?=
 =?utf-8?B?RkV4ZkRJQ0pLcE9KTnR2RTlnK0EvZ2dJNms5L20xYWtHSWI1N09KclNkb0lk?=
 =?utf-8?B?ZkJxR2xuaG5XNWxqL1hQNVE1NzlGMVRCZ0dRV3dhaEsxTDM5ZjhnRFJ6VHQ4?=
 =?utf-8?B?S0RXR3V3SmgySTJmSEtzME41alRrUmNVYTJXN3lCS1p1QlMrWWk1TldPL3BC?=
 =?utf-8?B?d2luWlFJa0Ixd3dBNzg3K2JTK0FJTkw0aFFzZ21ibU9kanVhRHVyYkMzVXFH?=
 =?utf-8?B?OENiTVVDbU5qSUZNSGxxTmFOaDhyTzZZZWhCTy94Y092WVJJM2UvZU8wSjYv?=
 =?utf-8?B?SFJMcEpFemJmNjJ0UWlvK2tWZ0xndm11T1dmVVF6b3haS3l5ZFIvMEFhT3JI?=
 =?utf-8?B?a25xcVV4V1kvNTAwNUFQU1JoVnZFek9OeHIwVmY2UnZTeE1BeUFWaVpCUC9Q?=
 =?utf-8?B?aUJSa01ZRW80L01FVWxGcElTUW1XZUtRRm45R200WjMvalRzUzlsTldZeisz?=
 =?utf-8?B?bTI3aGI5TkFPK1hsWC9uSGQ3T0Q0QXpWZXlJdlhpQUxCSWVzNEV1OTZqcFB5?=
 =?utf-8?B?TlE9PQ==?=
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34aa6087-ebbb-4f75-de06-08dc451a1cbc
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 18:02:43.4935
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HwDzGXVOOZL/oHHjPdRnstTdp2TGlwyACua8YrQlCXt6V2H/C5rBSLd3Vgwy/0SE0kLoKrqRdrnNiqy9WDP1Duv2B8HGkfC5oxKOAbu1r/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR17MB5649



---
Adding documentation for the new MPOL_WEIGHTED_INTERLEAVE mode in the same
manpages that mention MPOL_INTERLEAVE; namely, mbind(2), set_mempolicy(2),
and get_mempolicy(2).

Descriptions were based on the changes introduced in this patch: 
https://lore.kernel.org/all/20240202170238.90004-4-gregory.price@memverge.com/

Which was upstreamed to 6.9 here:
https://lore.kernel.org/linux-mm/20240313200532.34e4cff216acd3db8def4637@linux-foundation.org/

To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Cc: gregory.price@memverge.com
Cc: ying.huang@intel.com
Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>

Changes in v2:
- make flag documentation implementation-agnostic
- Link to v1: https://lore.kernel.org/r/20240314-weighted_interleave-v1-1-ce85d64db0d4@memverge.com
---
 man2/get_mempolicy.2 |  8 ++++++--
 man2/mbind.2         | 12 ++++++++++++
 man2/set_mempolicy.2 | 12 ++++++++++++
 3 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
index 5248f04ba..03550331d 100644
--- a/man2/get_mempolicy.2
+++ b/man2/get_mempolicy.2
@@ -137,7 +137,9 @@ specifies
 but not
 .BR MPOL_F_ADDR ,
 and the thread's current policy is
-.BR MPOL_INTERLEAVE ,
+.BR MPOL_INTERLEAVE
+or
+.BR MPOL_WEIGHTED_INTERLEAVE ,
 then
 .BR get_mempolicy ()
 will return in the location pointed to by a non-NULL
@@ -206,7 +208,9 @@ specified
 but not
 .B MPOL_F_ADDR
 and the current thread policy is not
-.BR MPOL_INTERLEAVE .
+.BR MPOL_INTERLEAVE
+or
+.BR MPOL_WEIGHTED_INTERLEAVE .
 Or,
 .I flags
 specified
diff --git a/man2/mbind.2 b/man2/mbind.2
index b0e961f9c..4673f077e 100644
--- a/man2/mbind.2
+++ b/man2/mbind.2
@@ -105,6 +105,7 @@ argument must specify one of
 .BR MPOL_DEFAULT ,
 .BR MPOL_BIND ,
 .BR MPOL_INTERLEAVE ,
+.BR MPOL_WEIGHTED_INTERLEAVE ,
 .BR MPOL_PREFERRED ,
 or
 .B MPOL_LOCAL
@@ -243,6 +244,17 @@ at least 1\ MB or bigger with a fairly uniform access pattern.
 Accesses to a single page of the area will still be limited to
 the memory bandwidth of a single node.
 .TP
+.B MPOL_WEIGHTED_INTERLEAVE
+This mode interleaves page allocations across the nodes specified in
+.I nodemask
+according to the weights in /sys/kernel/mm/mempolicy/weighted_interleave.
+For example, if bits 0, 2, and 5 are raised in
+.IR nodemask ,
+and the contents of /sys/kernel/mm/mempolicy/weighted_interleave/node0,
+/sys/.../node2, and /sys/.../node5 are 4, 7, and 9, respectively,
+then pages in this region will be allocated on nodes 0, 2, and 5
+in a 4:7:9 ratio.
+.TP
 .B MPOL_PREFERRED
 This mode sets the preferred node for allocation.
 The kernel will try to allocate pages from this
diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
index fc3ad9df8..e2f5e5bf8 100644
--- a/man2/set_mempolicy.2
+++ b/man2/set_mempolicy.2
@@ -63,6 +63,7 @@ argument must specify one of
 .BR MPOL_DEFAULT ,
 .BR MPOL_BIND ,
 .BR MPOL_INTERLEAVE ,
+.BR MPOL_WEIGHTED_INTERLEAVE ,
 .BR MPOL_PREFERRED ,
 or
 .B MPOL_LOCAL
@@ -199,6 +200,17 @@ the memory bandwidth of a single node.
 .\" To be effective the memory area should be fairly large,
 .\" at least 1 MB or bigger.
 .TP
+.B MPOL_WEIGHTED_INTERLEAVE
+This mode interleaves page allocations across the nodes specified in
+.I nodemask
+according to the weights in /sys/kernel/mm/mempolicy/weighted_interleave.
+For example, if bits 0, 2, and 5 are raised in
+.IR nodemask ,
+and the contents of /sys/kernel/mm/mempolicy/weighted_interleave/node0,
+/sys/.../node2, and /sys/.../node5 are 4, 7, and 9, respectively,
+then pages in this region will be allocated on nodes 0, 2, and 5
+in a 4:7:9 ratio.
+.TP
 .B MPOL_PREFERRED
 This mode sets the preferred node for allocation.
 The kernel will try to allocate pages from this node first

---
base-commit: a4ea5f76215dcf1d8d017eb65ab12919ccf09f3f
change-id: 20240313-weighted_interleave-e8141ed754f9

Best regards,
-- 
Svetly Todorov <svetly.todorov@memverge.com>


