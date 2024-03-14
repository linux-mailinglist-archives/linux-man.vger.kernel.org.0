Return-Path: <linux-man+bounces-604-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D1A87C4F3
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 23:00:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44F1A1C21408
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 22:00:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F29D76416;
	Thu, 14 Mar 2024 22:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="Iv6ctaqP"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2090.outbound.protection.outlook.com [40.107.223.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33165D747
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 22:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.223.90
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710453615; cv=fail; b=C5tvbH1IfTyMa/HipnPtDsc1gt2VKOBgbwHOjv6icGZFCK4+R5F15pcVZ9DEK7igP6eOZ4QiGGljdON1ktG0G0u8IeA5U94xF30eOSMIwtJpYRO7nonToWDgASeAPULgtil0X79kdLDfYHwplLcweqzhphAWF7CBhbne2cxfkuk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710453615; c=relaxed/simple;
	bh=3XooYF+m3jSsioqK8TaRExDpUj+apJeNNgnCdFHFtGY=;
	h=From:Date:Subject:Content-Type:Message-Id:To:Cc:MIME-Version; b=dqETH0GnKJnJM8CSB2b+9mVjQLCF9MlpgL3EbzebwnthlPDbxzMOd+Besv/l/GvdKo5GlpFELdx/y7uTX+OF60BZDKzSldOsDEcA4yGbNSNJZaQe2n89+06h2o/vZP5DMRwb03Vu62sv4p1gIRu/UjQYrc0VE5GWe9WJpiJ70HI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=Iv6ctaqP; arc=fail smtp.client-ip=40.107.223.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D3xwp1smdqQfnw4476gmQe76SqbEYlZj5Ig66Q7wrUHkynzxJjIYjjcHKm+OO0PlOrghbYmsVTYtajAKtj7To4HssPEwyrrRj6C+pGsCISicErBUH6B1GIen8UgA61oDWB5V73EUeliAY9LyZItfeIFQ/AqRZoEHkCDHuRsUMDBVufmYQNuWn9dt1TYljHjG6BnTPruPd7Suw7UFckiBVi5y2JY26j94qRMV7GksTuar8rnTACnvMwne3TFX30EA+Ri4pUYjJ+uM1lHJZE/7JYvfxQZESgN4Q3vccIyb1DZH2ZYxR25AGTq1jjlpM9SFXn/29NCA4Z/aWRj2oS/bNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yTMcz04wUjUZlYAU8jKGWZrcH9dbK5jfvD7gWZZmMD8=;
 b=GeN5AqcabuKEae/araBQvxXLVbSXC4Xksahm83+rzvcuxXjQ8rzBSZNuoTzhnpCbw2lduZ/kE8744VivVMYHoRyNLH6jJDOLTDW4T9SOUKGb9dBKaG1LChTWlxvjgHUlf1DYOpZBB+PUZSDtsf2CR4JARzI0WjEH158yerSVK4YTa6jVj5fRlOAeD6Wgfa2svq1tPhUzX7SQmjZhbpVYFy7FEMfB8KFOnPadC6v6SpRtu87xiNlidFbGLl038C4pxVh5qOfW1q2Y2SKRthLvu6pKO4j7aFBcWi4sywBNcLn/vUn+3zmmjJj2KedjvikUIfyZWtQ3VIWrf9owaIdzYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yTMcz04wUjUZlYAU8jKGWZrcH9dbK5jfvD7gWZZmMD8=;
 b=Iv6ctaqPe+ZGPcwonNSz3ooOP88DgLWJ3cGqjA2OAbLN4v5sC7nC8s7HOItHIjRaY3jdsYh4ESptHpWXcDVzGjHFYh4gboulNKYSJEHgMZ5Hp1kllGIX1S5SW411k7Hqwc8v79eEa4YhFl1E9qSTeRfwN9iLoQo/hd2+QsuT6mc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by BY1PR17MB6877.namprd17.prod.outlook.com (2603:10b6:a03:528::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 22:00:09 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 22:00:05 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
Date: Thu, 14 Mar 2024 14:59:47 -0700
Subject: [PATCH] man2: add MPOL_WEIGHTED_INTERLEAVE descriptions
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240314-weighted_interleave-v1-1-ce85d64db0d4@memverge.com>
X-B4-Tracking: v=1; b=H4sIAFJz82UC/x3MSwqAIBRG4a3EHSdkGT22EhGRv3YhLDQsiPaeN
 PwG5zwU4BmB+uwhj8iBd5cg84yWdXYWgnUylUWpikpW4gLb9YSe2J3wG+YIgVYqCd3UynSUysP
 D8P1fh/F9P0k8ymdlAAAA
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com, 
 ying.huang@intel.com, Svetly Todorov <svetly.todorov@memverge.com>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1710453605; l=3939;
 i=svetly.todorov@memverge.com; s=20240312; h=from:subject:message-id;
 bh=YHPni8fApYgaFOdbX73xTV5fWssmKiE23xSpto93GEU=;
 b=dsc7ixPm9bs2tOaHRwo90UUkiaTNYd7cFqhUiegWcUdSKD6IwmmDbDebgLdlY3K9AbIClD0YW
 H5B/uXTRAgJAhKLQ1CV4VDy0cAWgvENANNrr7Fjgvw9NIev8KO0nH6V
X-Developer-Key: i=svetly.todorov@memverge.com; a=ed25519;
 pk=bo0spdkY5tAEf+QP9ZH+jA9biE/razmOR7VcBXnymUE=
X-ClientProxiedBy: BYAPR11CA0091.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::32) To IA0PR17MB6347.namprd17.prod.outlook.com
 (2603:10b6:208:435::22)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR17MB6347:EE_|BY1PR17MB6877:EE_
X-MS-Office365-Filtering-Correlation-Id: 9dfc04f2-4184-4a89-3192-08dc44721b68
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	egr4bPuHzUVBuoJwTl1iEwZW6V7vTZ9g0jJKo5FfrZwMVPyRUuoq7lQwoAjuUeeSH/96pvLAJ7Wetw38tWAbHRyVphrbyGP7KhZ2bxSK9a8TvqpHTEXtldz7Aez3cd8qWjeg7wP2ucxoFzBTjqKpVF1qOWWSfJanQ4pHICDB+0g5lsh9TJhFyl8qg0gtBsI9M1X7cJAaFnKqdBI6LPsjKLTdjlg28zZbYKojRvz7CMyXLPHFe/H22Bx7InwHZYRG2wa113asq6QaHf6HTguDLF5FHhzrlKXmT8WSGyHzOnJFteJt6MjZ1ZQMgfZlg55vdGENNgvcoohv2ohPdmFJ4Ju6lkT6BMHkn/xrr/A4Jr0xdtdjpNju/oM6frOlYHh1iZV0HtQ1q/x0Q9oduyfvD1pjaJ4t5P4A+JzAVTHKZeBzA7StrZqNNrK7SIhkXZyqbYQ413UwL9fgzpIcTqfndcxD2m8L1z2E9RmAt1x7fxHfAGo78CkdykUXZeViY8yxbaukwNu7i/vV2Y1MSEiyI1uX9ugEzbKtP3yr3bBjClFWBo+Z8kknI0nfA2Poo1/TxFS3N706EA2xNgb6F9CyofQVduKHFPslOW1/8Juvlvge8YIA3N4LeH7U28KZbQkIuMPUdgQM2D429phqMi1gRZzkpD+ia2mC87SduxZ4qEk=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZWhCK0NJM2l0TUxXL1JwRlBOLzN6U1ZFbC91U0s2dUcrdlMwNlFEMy9OOEt5?=
 =?utf-8?B?QWQ1V0hjYWxKNzl1bW1KQ0VueGZXVFhUZE9JV3hpOXBiK3ZaN0RJb2ZsekFa?=
 =?utf-8?B?V2ZMaGtwTEg4bGh4SlRlajF6V0l2dkMrM1BHTFdncFRXSEd6R0l1elRYRHZx?=
 =?utf-8?B?bDk4bkpxTVVrZVRLUUh0YUxYTTFMOW5WMHpFb0hhVEYvL1k4MXQva3hBVzhM?=
 =?utf-8?B?Ylgrd0hWYzUyVHdMaUl6R0dFejlQUWZJMUJldVVDajlGNEViajdiNE5uUGRw?=
 =?utf-8?B?MDNiYmV5UmtURVNhSS92d3Jqbnlia040TDZNRXRpR3V2Z0xKU05nM3NVM2JR?=
 =?utf-8?B?d3ZNRjA5eWg4NVpPZkJxeUxFV1JORTAySklNalpGczZsVTM4TXA0L2FTNmt1?=
 =?utf-8?B?Wis4TW1oNEQwdytJTnYrM0s3KzVmYW1EZzRBNFZ3MTQwY0xUSEhRN2pJbmYz?=
 =?utf-8?B?YVFYeVZoUUE1NG94UTNrdDBtVmF1bUx5Q05jU0kzOVBURHZxdzZwNktOODkx?=
 =?utf-8?B?dk5KTElrRnBnNXZ1VHFRcXhOWnFMRjJmTXo1RjZqQm15NERSN1BPKzJoTEJl?=
 =?utf-8?B?aHcrUmxJeHV3M2RCdXhYS21xK05DanpqV01tQng3R2ZvYm5CNFMyRHp0ZWZi?=
 =?utf-8?B?d1hEUVMwb1JlYUFScDllYUd6akhBWFVicTRqRGsrNDY1KzBSWTBua0tKSlV0?=
 =?utf-8?B?WXNZMCs2cDZOdnpZV01XZnVWYndjeXpocTMxSmVMT1EyMGNSUmlkUldleGJq?=
 =?utf-8?B?YjZPQUdhK1VGVVRjTU9VcVpoZHVwMHkzWDh0QUZNZmpuTDNGVWZVWnVONE1y?=
 =?utf-8?B?VldwYWtJVGhoOG9seGs1dGFFd1NSMlBseWt2V1VaVTN2aDRGcGljeVhJTFdj?=
 =?utf-8?B?Y016eEF4bWZkUlNWZFFHc0J0d3o0VGZHeVMxSytGWWhFUkVNWlR1ZStZSTVi?=
 =?utf-8?B?bnEvZDY1eHlFcHQ1WG9sMXU5NU03OU10Q3BTQml1eWpWZnJPS2ovVkRKbDI0?=
 =?utf-8?B?cW1Hd1VDdHBsaStPUnlaUCs2MWtaNEJlQ3pER1B2TjgvRkdqOG9pOFlOd1NV?=
 =?utf-8?B?dFdjVlRxM0xicytzTjRwQko1cnZMUFdRMjViM3RCY3RnVzIyYStmM3dUVDdy?=
 =?utf-8?B?QVJaSmpTRUN2eHZobGhlY2g0bG5xQXFrUGZaeURoZlBrVitTbEE2Q0NCNExw?=
 =?utf-8?B?L1M0YklrMFFIWVpEZENoUUQ0a003RzB6OXFPYnlxS3NkV0l5a2RYU0VCWUd2?=
 =?utf-8?B?ZGRKUzlPdU9XMUowTkZya2gxNWFNTW1aOXZJM29NNzVsVitoU3E1OGptclky?=
 =?utf-8?B?NGIzNTZYZUQxdy85NlRtbjkzRkpkUG9HWlg5MXM0N3dzNkZ5a0FtWGdZd3Z3?=
 =?utf-8?B?NFpKUEtMcUpKVWJSMDgvNDBnWUc0RzdRQ3ZnWjZPbWt6VGczSjRxZllWZDhm?=
 =?utf-8?B?eTFHbGg1TVlJSkVtNFJGcVhxTk5XSER4WlY5bFE0OG9naVdzMXMzVm9VWnhN?=
 =?utf-8?B?a2VGZkJpZkYxVjF5bzd0bVRYelFhUUthcnYrZTZhWC9FOVFzV0dXdDduMzA2?=
 =?utf-8?B?Wkd5eVBXTDE1OCtLR21lMnQwcHd3dHNSWFlSZ0oySktnNVRkV1dzUnMrTFBC?=
 =?utf-8?B?S0gvU2h1T3RhVHlrSW9JaXc2S3J0WWhWaEhmQjlKS2FFWi9nbWdPUytlZWV4?=
 =?utf-8?B?aE9mM0hEVFhsSGlZQUNzQnRBRis2OW9sMThmQXk5UmVlS3QrYVBqSjM4SjlE?=
 =?utf-8?B?ZUF2U0JNaHNBQ1lSclhHU1crbm5RK1FqNkwzRCtEdm5sd0NHWVd2WDY2TjFZ?=
 =?utf-8?B?bS9YRVRlOW5zK29UN2wyc0lpTTd1Rm9QWWNEZUN5NThKcjZhcEU3MzFleTN4?=
 =?utf-8?B?TWwrTGVVaUxRMUV4TjFWYk90T2VKaUkvKzlxdWMwanhmNG50d1haclhoSGZU?=
 =?utf-8?B?K1VOOVNNSlNuMGErRHJ5MFBoWUtFNHNIMHgzbU1CMnRXWGg2cjJYa1hEUGR4?=
 =?utf-8?B?OGZSeG8yUDN5Z0V3MXRxMlJtYnp1ZTVLVTJEaW1kQWNuWEkrUFh2am5XSnFK?=
 =?utf-8?B?eFJtTkJPZGliR1NTNHV3ZjlqQmdmcHNpRWVOL1h0bG5hRlpwRjFqbnFIUVZq?=
 =?utf-8?B?NERFbmk2LzhvN2g3WXFrMktGYTg3dTEzUVIyMm1WdldtS21MajJkTUNlUjl6?=
 =?utf-8?B?ZHc9PQ==?=
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dfc04f2-4184-4a89-3192-08dc44721b68
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 22:00:05.7382
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ED8Y1piwM6tUJBdTIK3MHmF/CHW0YC4Jrq0w/5pbBVtPxilP/2fxpVgs+6tjCv9VzjBwS4WYXJXalaF9374Bzeun7x8wwPMZE36i2COWv/A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR17MB6877



---
Adding documentation for the new MPOL_WEIGHTED_INTERLEAVE mode in the same
manpages that mention MPOL_INTERLEAVE; namely, mbind(2), set_mempolicy(2),
and get_mempolicy(2).

Descriptions were based on the changes introduced in this patch: 
https://lore.kernel.org/all/20240202170238.90004-4-gregory.price@memverge.com/

Which was upstreamed to 6.9 here:
https://lore.kernel.org/linux-mm/20240313200532.34e4cff216acd3db8def4637@linux-foundation.org/

Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>
---
 man2/get_mempolicy.2 |  8 ++++++--
 man2/mbind.2         | 13 +++++++++++++
 man2/set_mempolicy.2 | 13 +++++++++++++
 3 files changed, 32 insertions(+), 2 deletions(-)

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
index b0e961f9c..cc994a01e 100644
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
@@ -243,6 +244,18 @@ at least 1\ MB or bigger with a fairly uniform access pattern.
 Accesses to a single page of the area will still be limited to
 the memory bandwidth of a single node.
 .TP
+.B MPOL_WEIGHTED_INTERLEAVE
+This mode interleaves page allocations across the nodes specified in
+.I nodemask
+according to the weights in /sys/kernel/mm/mempolicy/weighted_interleave.
+That is, if bits 0, 2, and 5 are raised in
+.IR nodemask ,
+and the contents of /sys/kernel/mm/mempolicy/weighted_interleave/node0,
+/sys/.../node2, and /sys/.../node5 are 4, 7, and 9, respectively, then
+the first 4 pages in this region will be allocated on node 0;
+the next 7 will be on node 2; and the next 9 on node 5.
+Subsequent allocations will continue in this pattern.
+.TP
 .B MPOL_PREFERRED
 This mode sets the preferred node for allocation.
 The kernel will try to allocate pages from this
diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
index fc3ad9df8..a1b11b307 100644
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
@@ -199,6 +200,18 @@ the memory bandwidth of a single node.
 .\" To be effective the memory area should be fairly large,
 .\" at least 1 MB or bigger.
 .TP
+.B MPOL_WEIGHTED_INTERLEAVE
+This mode interleaves page allocations across the nodes specified in
+.I nodemask
+according to the weights in /sys/kernel/mm/mempolicy/weighted_interleave.
+That is, if bits 0, 2, and 5 are raised in
+.IR nodemask ,
+and the contents of /sys/kernel/mm/mempolicy/weighted_interleave/node0,
+/sys/.../node2, and /sys/.../node5 are 4, 7, and 9, respectively, then
+the first 4 pages in this region will be allocated on node 0;
+the next 7 will be on node 2; and the next 9 on node 5.
+Subsequent allocations will continue in this pattern.
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


