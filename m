Return-Path: <linux-man+bounces-662-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD9987ED92
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 17:32:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41F452834F6
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 16:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3148B1E4BA;
	Mon, 18 Mar 2024 16:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="hBC9V7S7"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2132.outbound.protection.outlook.com [40.107.244.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A03054913
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 16:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.244.132
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710779542; cv=fail; b=fayd5zPUW8L7jVCE/9evG9HFBDKKciQFE9SCgW8XpgBuiNVBNWbF7NR7u6bL9sVZdkd7eKlzYhr9rAg6GiqEYZ76hmr86DNwtSXF2i9dHpP5hMxaEXgtqVL+fL3BZgZfbqLf8OtRRmREYXMfTpQfmG2Jd03u3d0DxQwvKBLuQss=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710779542; c=relaxed/simple;
	bh=T7jOov7hEn0IgWE1JBXQ88ikU8ZA05fIzuegqafC9Jg=;
	h=From:Date:Subject:Content-Type:Message-Id:To:Cc:MIME-Version; b=mnffinY5I9WaBEdempV6+0k3zCxiW/mihWLOIwYepOeCeq3Ah3Eso+msnwHSrqGktDPOyh9vTx8QQRHDeweWsWfFXyxE0VztNcUoB9AT9o9WYYrORyXcsC5EvWv+QyqVLOx2ykCrxtwPlBRFPVhc6caq7c3I5thXTUmJU2pG/kY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=hBC9V7S7; arc=fail smtp.client-ip=40.107.244.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CX9s15b4ysBWv8piEu/ofp3/uqbVWxgVIFMgTEBtMphbmGinhEUJl+u1zaAsukSpUrq9XbXoo57KruteV4JpV2oP4EURhIwbOSX3sKWI6GNEK+lZ/CYeQ8AxlBrOrAihOXpISyFSBlnl7D2WRUY8qrw3wjvfYMzYrFstMsgiP4K8QoyPLZFpdRu2ndiFUVdk/rW/9zx0HegR3kYNB5qzdg9rsBMM9ttIOTjzwvlb8JPDiQXHKhhJ7NxoTye0XCkiCYDkXFgqF6SQ84sKDetLF2Mz3uADbFMIdo5pDJp9lTBlAVFsIDtgGnKRBwQFu0ln4dmsxrzBKRab/nyYjQ+sPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z8DBqh/cQ19D1PPAFQT7KzOWmnlZcKCLV0KNkLBlAMA=;
 b=gqSi3uXrZOe+ULl/7ePmD2hAuwr3y4irUpNVofhEip/VftWrJNQMFU5yt8MsJWcb4vQNZlCGtIEg0JJhYUOoJhD7uywCM2JGmd9+JbH6xYx1qVA1fk7+UKQP/AU5JOJCiuOcoDmiq7DfDpCo2oNvl6jd8W/0E67wbCEhcBhIpRqd2el98NaV0fgdV39Xbr1+2QFURpenqq3Dq3bWedc7+Hn71vb7XIEESpvYYwCmSKvvH9+HnwDyzfJDYhTrmISbxSeNkda4odlPqfrUogOrzLg15ATOH5oAz85t+FM4OlqW2oMCAU5sc2+EOfBhoqPHQ2yUPxK3wwhE8RL0UHdt+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z8DBqh/cQ19D1PPAFQT7KzOWmnlZcKCLV0KNkLBlAMA=;
 b=hBC9V7S7988MbmVcs2+Te9czDahSyUPaogejIcR1PyMUnlZIjegodsXiNXYvRx4htT7lTg6CyiUwibht+ruKMObs2kVAQRa0voTVm8rGrXP7gFpWN/59Cp735LTjHYlq6fHEOMYbYWUlP1e0o2AZnMxGN90HVOVR7UfTj/hZ0Zg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by SA3PR17MB7130.namprd17.prod.outlook.com (2603:10b6:806:397::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26; Mon, 18 Mar
 2024 16:32:17 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.025; Mon, 18 Mar 2024
 16:32:17 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
Date: Mon, 18 Mar 2024 09:32:08 -0700
Subject: [PATCH v5] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240318-weighted_interleave-v5-1-c821a46d5beb@memverge.com>
X-B4-Tracking: v=1; b=H4sIAIds+GUC/43OwUrEMBDG8VdZcjaSSSdp3ZPvISJJ87UN2FbSE
 pWl7252QVgkB4//gfnNXMSGFLGJ8+kiEnLc4rqUMA8n0U9uGSFjKC200qwaauQn4jjtCG9x2ZH
 e4TIkOmJCaA0PT6JsfiQM8eumvryWnuK2r+n7diTTdfrrcdXLJEn26EywHLwK/DxjzkgjHvt1F
 lcy63vG1BldGN+ydty1RnlVYZp/ME1hmKwj5xUZXfuG7xlbZ7gw1nlDdiDdI/xhjuP4Afo7FYu
 OAQAA
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com, 
 ying.huang@intel.com, Svetly Todorov <svetly.todorov@memverge.com>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1710779536; l=5000;
 i=svetly.todorov@memverge.com; s=20240312; h=from:subject:message-id;
 bh=rXiJdVqa9eQ5co/Sa/emHzKS9D2/C1DqkBlwp+WQXvw=;
 b=CrqaKdkbV8BUTTSz0F/WU35CLJhqh7aIHUctft8fABMfH+OVCNuY2YnmPGOHJnPsvJ+hnUfPB
 3LFgSbrQpYPCBrL7rATg9/daF3J/GIG8NH61aTxeG+8CyO9Q9HKKRZH
X-Developer-Key: i=svetly.todorov@memverge.com; a=ed25519;
 pk=bo0spdkY5tAEf+QP9ZH+jA9biE/razmOR7VcBXnymUE=
X-ClientProxiedBy: BY3PR04CA0025.namprd04.prod.outlook.com
 (2603:10b6:a03:217::30) To IA0PR17MB6347.namprd17.prod.outlook.com
 (2603:10b6:208:435::22)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR17MB6347:EE_|SA3PR17MB7130:EE_
X-MS-Office365-Filtering-Correlation-Id: b328d189-bdad-4e00-d740-08dc4768f9b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	+U55732p+E2Qe0hEIcBzA0DyEq1h57o9U/5W732nUevyyFXowFDIh4MonYUppGYrb1B1McPCLz1bnENShBPiuwXUBoANucV1JVqFmwFAV9gu6WKlfxA1lYBUYKZuEhSZkT+iBC0ycq8gJyE9oxeL++SyBMxtwqIazZO92DdIlhqUJ0ZEdR7j6tOQ1HC/EQqHRlb3ATIpU2ngXODmp8FjwT+iUi139Yb8ztPZgR5L7lvidaRiFsvm0HVucZQ/4dwkxhjSdLa1sDP0lqVE8ttUUxVo0CuweH6+ID3x9aUHUGesjFX7em45sNR3IrL397+y1gV4cDa+zBMWgw34DdJe5stzxF7ud7koIRSBssC1eVLkByeA/aBiJ8fCNMLpSAgpgV1jsif1Jz6Hjt4h6vgDaH30IsnMREkpgzhhdaDTBw3/ft4YIDexRTWbyYAgwpDQlEH7h19/NAhAd5KT0U8sPVMGi9nMoub0HBF1PRRmIJ05TBFIH9Xq5ZmpeSkvg8xUZfMOUJsAofhf9kq+wjsLQgfvjQIIvv4qtFmDT1f9MARGId1+ZSOumhrnWDfJ4klKzgkXuyAKSfWYMAIUJOIaV+stjL9nOq45+qAM+hphj1fM0+fnAGih6wPkH4Fz9DHeP7DQ0Zh71dhQ+bICck8IhWWyLqU6mwjphL/2T5A8YZk=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(52116005)(366007)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?OE8vd0xKRlo1YmVyKzY2dGR4RlpmSTZZc0FKMjhLYVNuYWFqMDBCWDdKcVNt?=
 =?utf-8?B?UmFtVFY0WE85R1B5WWxOTDVNczhvenRxSVprYkVuOGZRSlNhelM2QUZqTnYz?=
 =?utf-8?B?ZlNCbHo1RTBIQ2c1NGN1NHBmdlJGZ3BKaURxbmY1TVFOVThFWHhxUVoydXhk?=
 =?utf-8?B?Z2tsZngvc3h4cDc4ZVJwbExPejNvcGJuRlhXM0RReWVsREVhWktML1JYTHU2?=
 =?utf-8?B?dndpYW1ZU1c4SC9ncEk5Ukx1UGptZUtkaFppd25wVlRFMnI4ZkhtaEZmaDNQ?=
 =?utf-8?B?L2dCQzV2b0szaXl4VW5nazZ4WjUvQmNhSjltVWVCWHg0dWMzcEw0WGE5VXRS?=
 =?utf-8?B?c2ZpT1NJbnhud0lyMk5WVXphWnpOa2hMM2tXejdhQytsTVRORGNUMU9HaC9J?=
 =?utf-8?B?VGFSbEg0YVlYOVBvTDFwL2FwTG5Rcytaa2hUZ0pyRGlMV2FTMEZCSUZURVBG?=
 =?utf-8?B?YllSNFZpVi9sdnZhWGoyU25BdU5FcFVRUE83VWhVcnF0Q3paVlFjeUpBaito?=
 =?utf-8?B?MVRRemVsMldCY09kQUllaE9PNnpCWGF1SEs0T0RsZ1dFdlJhVG9aNmVQVm1I?=
 =?utf-8?B?amJteW9DKzNoRmRqTlVyTWZnTjdhOG45a3lBamdSUnNvNDd4bm5ORStSY01k?=
 =?utf-8?B?TEJEaUJlSWN6dVVzZFFvTFMyN2hlQndQRTNtY0Y4NDVqNmgvUTRMWURCWDVl?=
 =?utf-8?B?dGpzZ3pVNG15Sk56cHE1Mys3aTB0ampRYjlHdkJqT2t3emhoRFMrSngxUTI4?=
 =?utf-8?B?MFNWTk5tSXVjOFhVQ25HNXRHV3NucGhIbVZiME54NjViOHFSQ2ZGZDlMVSsy?=
 =?utf-8?B?NlFrb2RWV21GczdyMTVKOTJ4c1Q0dmtlRmc1Z3JLaHN5YVVEbGQrWFkxaXUz?=
 =?utf-8?B?aG4zTUVUdEp5WDFjTVF6Mjcvakl5S1dZZmZ0ZWhQODRxWUpGNnhPUGFyc2Zj?=
 =?utf-8?B?MHpVOXNVMmhEM1lBdTBxMm5BM3RNV2JVaHREbFJKTUkyYVROWk9QQlprY0I4?=
 =?utf-8?B?NnQvK1Vpbm16VGgzWUpZZjVpSDJWQ01VaEYvY0hGVXNPNTZjUmpkb3BSWUh0?=
 =?utf-8?B?NkpjL3MxeGcxY2J4TkZVRVNpN0cyeENpMXNTZTBxNmI3cmw3dDVZRGxOVU9u?=
 =?utf-8?B?VzFiS1FOclhtMy8zTnMydjFCMHkvdXV0MTRCbzNNNkh1VWZvemRCZGpBcmZk?=
 =?utf-8?B?V2g1M2pKd1lYdG5SNkdHdWRGSE43NGlOdkxOcGpBdXNsc0NRWDhyWmZCRVB1?=
 =?utf-8?B?VmlnL3hRMkViMDMvdXozcmdxWkUybk84ZFVoMllSZ1BYcEJnMTJycW5GQkpJ?=
 =?utf-8?B?c2JpV3JsRGY3SnozN3RRMTFYT1I4M1dEbnBGN3FaRFdCWWkrVkRsR0x5bG91?=
 =?utf-8?B?cnZWdWlPWUNXMnlWb1hxZEZCN1NtN3NjaTIyeEV4Y25GY2dXZW4wYkpzR2NX?=
 =?utf-8?B?cTZOMmxLQXRCMzRXaEtjazZNSjVmdHRpYjFlaVVjeWwxR3EzVVRPOFQ3QzZT?=
 =?utf-8?B?a2hyWlRLK0xQa0RKQlNncmUyTGZXTW1lTGFQL0Nxd0ZDRFo1a0gyTXFFeCt4?=
 =?utf-8?B?dm9qdFJLVXZiNEdVVGdES0pvUSt5V1dWVEhEQlFDajhwZ3Q2Ymh5MFZSYjIx?=
 =?utf-8?B?YkFSaDB3YjZuMTZZRHpVb2pYeGR4U2xjSy9xd0EzTTlIR2JtUzNYRnNwRDZ4?=
 =?utf-8?B?Ry94dXRtUDZXdFJjaDZXblRPVmNDU3JQenduK1FMMEg0ZDVLRG1rRE5HSk51?=
 =?utf-8?B?VnNnNlR0d1NabnZoTEh2U2tLUkV2UzhWSlMvSDRZRkQ0Y2lPeFlBNDdwb3Nt?=
 =?utf-8?B?blp2Z3FQTmJqN0RJWHZzVk9hQjJuSGFKUWV0Qmx4dVVpajZGMmFHWGN1c2RU?=
 =?utf-8?B?ci9vRjduL1Rxb3pvZEo0QVliV2grc0FmSXVpMXoramRLbUlGdWdON0ZuWVF1?=
 =?utf-8?B?VW9admgvOHFFcElpS2U3c2R4ZkZoUmIyTWhkQk5sdWFGd2JrcW1jaUFyeE5t?=
 =?utf-8?B?TEt1cWE4VkZBczRQODAvSlgyNGs1dVp3aG1YaEJOTWpKcGdwUUF3L1dWK1RM?=
 =?utf-8?B?SzRXRCtxTmJveThJYllsUFJkRitEenNoV0s4SEtkakVYeU5jb1FUUG1SSDh5?=
 =?utf-8?B?bWFqVFI5R0MrcngzRGpVbVpTc1BpN3d4dHNMRkhuY3YxMWQ0MzJBQk9RaFNn?=
 =?utf-8?B?RFE9PQ==?=
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b328d189-bdad-4e00-d740-08dc4768f9b3
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2024 16:32:17.2420
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1uXJlp9ZJSqNHrObc9T39JvYzpVDhzDzt8H0l5yo8W4bkp1jUUzoifNPtXyU3/4JmikHCf9Q/EkeXTasN9vw8qUaZSxeXf1gLPYLqNNYX3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR17MB7130



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
Reviewed-by: "Huang, Ying" <ying.huang@intel.com>
Signed-off-by: Svetly Todorov <svetly.todorov@memverge.com>

Changes in v5:
- document kernel version where WEIGHTED_INTERLEAVE was added
- Link to v4: https://lore.kernel.org/r/20240316-weighted_interleave-v4-1-6ab516f12ced@memverge.com

Changes in v4:
- BR -> B in get_mempolicy
- use roman for ellipses; format using \|
- Link to v3: https://lore.kernel.org/r/20240315-weighted_interleave-v3-1-416a1ab01524@memverge.com

Changes in v3:
- italicize paths
- Link to v2: https://lore.kernel.org/r/20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com

Changes in v2:
- make flag documentation implementation-agnostic
- Link to v1: https://lore.kernel.org/r/20240314-weighted_interleave-v1-1-ce85d64db0d4@memverge.com
---
 man2/get_mempolicy.2 | 12 ++++++++++--
 man2/mbind.2         | 18 ++++++++++++++++++
 man2/set_mempolicy.2 | 18 ++++++++++++++++++
 3 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
index 5248f04ba..00ce287c9 100644
--- a/man2/get_mempolicy.2
+++ b/man2/get_mempolicy.2
@@ -137,7 +137,11 @@ specifies
 but not
 .BR MPOL_F_ADDR ,
 and the thread's current policy is
-.BR MPOL_INTERLEAVE ,
+.B MPOL_INTERLEAVE
+or
+.B MPOL_WEIGHTED_INTERLEAVE
+(available since Linux 6.9),
+.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
 then
 .BR get_mempolicy ()
 will return in the location pointed to by a non-NULL
@@ -206,7 +210,11 @@ specified
 but not
 .B MPOL_F_ADDR
 and the current thread policy is not
-.BR MPOL_INTERLEAVE .
+.B MPOL_INTERLEAVE
+or
+.B MPOL_WEIGHTED_INTERLEAVE
+(added in Linux 6.9).
+.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
 Or,
 .I flags
 specified
diff --git a/man2/mbind.2 b/man2/mbind.2
index b0e961f9c..6f2449946 100644
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
@@ -243,6 +244,23 @@ at least 1\ MB or bigger with a fairly uniform access pattern.
 Accesses to a single page of the area will still be limited to
 the memory bandwidth of a single node.
 .TP
+.BR MPOL_WEIGHTED_INTERLEAVE " (since Linux 6.9)"
+.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
+This mode interleaves page allocations across the nodes specified in
+.I nodemask
+according to the weights in
+.IR /sys/kernel/mm/mempolicy/weighted_interleave .
+For example, if bits 0, 2, and 5 are raised in
+.IR nodemask ,
+and the contents of
+.IR /sys/kernel/mm/mempolicy/weighted_interleave/node0 ,
+.IR /sys/ .\|.\|. /node2 ,
+and
+.IR /sys/ .\|.\|. /node5
+are 4, 7, and 9, respectively,
+then pages in this region will be allocated on nodes 0, 2, and 5
+in a 4:7:9 ratio.
+.TP
 .B MPOL_PREFERRED
 This mode sets the preferred node for allocation.
 The kernel will try to allocate pages from this
diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
index fc3ad9df8..3c08b6bf0 100644
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
@@ -199,6 +200,23 @@ the memory bandwidth of a single node.
 .\" To be effective the memory area should be fairly large,
 .\" at least 1 MB or bigger.
 .TP
+.BR MPOL_WEIGHTED_INTERLEAVE " (since Linux 6.9)"
+.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
+This mode interleaves page allocations across the nodes specified in
+.I nodemask
+according to the weights in
+.IR /sys/kernel/mm/mempolicy/weighted_interleave .
+For example, if bits 0, 2, and 5 are raised in
+.IR nodemask ,
+and the contents of
+.IR /sys/kernel/mm/mempolicy/weighted_interleave/node0 ,
+.IR /sys/ .\|.\|. /node2 ,
+and
+.IR /sys/ .\|.\|. /node5
+are 4, 7, and 9, respectively,
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


