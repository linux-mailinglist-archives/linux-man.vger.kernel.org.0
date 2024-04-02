Return-Path: <linux-man+bounces-714-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 989D6895D8E
	for <lists+linux-man@lfdr.de>; Tue,  2 Apr 2024 22:26:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EB79EB2407A
	for <lists+linux-man@lfdr.de>; Tue,  2 Apr 2024 20:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8F1C15D5AF;
	Tue,  2 Apr 2024 20:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="oj5XqIV4"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2114.outbound.protection.outlook.com [40.107.93.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87B35914D
	for <linux-man@vger.kernel.org>; Tue,  2 Apr 2024 20:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.93.114
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712089603; cv=fail; b=hXhqv7gjgtEZgc4mrqabzhjZr24Ti27H64MLVdz3RWNYCfh27bCve2jXxKW7ynQZxB7QiwvxLobm4Qp+r63cM218VsGvx2HfR7txv5H7YO/e+URBarHfUJg7o0Llj8rdKIIiYgVtLHL25qAsN49jXGK3ps0CNx464VF/3X399uU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712089603; c=relaxed/simple;
	bh=GYbNLo1Kt8DxTiYhVHsE+ZtWLjTvVr6z3lneMryv4pc=;
	h=From:Date:Subject:Content-Type:Message-Id:To:Cc:MIME-Version; b=iS+xOLqIk/10yRR0e8xQ+VjJ6O2B/hL1T/fTDqnY3DHvQiPElWduaB8kScH+uEAIub33sVdFjRpgd7tIFcxNMHlnXk3K2/v0Wcko5dUV/4rhQM7EsO2TtiRlj8ZkTbFoqq2x67DSgp7SuYHNFqOTlDnqdNLGPf9AV2jHBKwAyg8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=oj5XqIV4; arc=fail smtp.client-ip=40.107.93.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h2AT/9AMkb8gcQg6F7eZk1tcEsYbnXmSIEychh3xM3GqzVXEJ21BdF9arznlDl0fWOciqCbzO4VSJlU5Ugk61adsrhKxlFdTwjXZTmsI9Dfo4JXogzl8oPCz2V85aeaM011RGWuCM71FJ+W1UKyRbYn+JWuFa8clya08XMuGyzeXddf2jAoerJAHBc51uDjqgY05d/yLssA15Yng8FFmrb17hUW0sIzNjcjTOMR0TM9zdnKJ+L0XNREJwl17S/hG2n0Fos2/AICK4tyck0DxIQ0VFzSyTnra+HvdO8a5XmNaKunzQD4QMNyGvjZQnN/OQ5KmooK1j/27Q9f3efoAsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wiOIS6lVt/6l9n0tKza+USnrsDt0H1g8TFTV0DC+rBQ=;
 b=jORURDIAJZNuBtC/s7vSyIQjfPC/wc7bOPHrsHQTucwqAOf0sN3GGrNdvtP3SHYe9SIpYFctLpLXEwRPGaqKatIB2Oc0zVUGVx6dqpyWOmgW267NYBW06mnUmNwhMj/pX4dGLozDweZpOUeoYji/NmBXyFfSt5E7gKgF80Prag+9zlSygkgqUby/gSr1YrdMPOMVA0i1/bpq3+8s71UPPcp28i/dlpL2/k7fKvGECjo8YHzQC8Kt35nR6nHSmApK4kzz3qv41W2qJsO/n7v/f7aCkJgPKslZqji+wsGP3ZDtqqwyqayjOk8m5ti0hKrr2VL64htqfiBIkVus+cCrLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wiOIS6lVt/6l9n0tKza+USnrsDt0H1g8TFTV0DC+rBQ=;
 b=oj5XqIV4Ukpe803YWvTpnmpmFVYwcWfxmha2T9r0Qw3PoJMrp+R83z3amjE+3lrs/J1J/6Kt+1k89VPvXJHQVZ46RaMDYhpljlFZHrkWpxy2DMiUxagf3L/j8rEVgGV4150JhK4oaGnRTBNWD0nRPzS1iLnHJpNGw8oxSURwKVQ=
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by BLAPR17MB4193.namprd17.prod.outlook.com (2603:10b6:208:271::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 2 Apr
 2024 20:26:39 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7409.042; Tue, 2 Apr 2024
 20:26:39 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
Date: Tue, 02 Apr 2024 13:26:35 -0700
Subject: [PATCH v6] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240402-weighted_interleave-v6-1-4c2891901352@memverge.com>
X-B4-Tracking: v=1; b=H4sIAPppDGYC/43QwUrEMBAG4FdZcjaSSWfSuCffQ0SSZtoGbCtpi
 crSdzddEIrk4PEfmO8f5iZWTpFXcb3cROIc17jMJZiHi+hGNw8sYyhZaKVRNdDIT47DuHF4i/P
 G6Z1dZskWEDi0hP2TKJsfifv4dVdfXkse47ot6ftekuGY/npY9TJIkB1bCgaDVwGfJ54yp4Efu
 2USB5n1maE6owvjW9QObUvKqwrT/INpCoNgHDivgHTtGjwzps5gYYzzBKYH3XGoMHRmbJ2h4zd
 Wg0MTyLP/w+z7/gNk7jGp1QEAAA==
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com, 
 ying.huang@intel.com, Svetly Todorov <svetly.todorov@memverge.com>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712089598; l=5100;
 i=svetly.todorov@memverge.com; s=20240312; h=from:subject:message-id;
 bh=THNYI0PQCE74a1uom5f/pOOBHVZh1PBfVmEazJ91LZ4=;
 b=zlBGBb18TPmVn3J3gdbmjNfHktN28lt2vu6uGxQQf0EMS8bYqbwMp+myh8y2SJHuzLixVq+CC
 V8p6Hf2uKZdDZBj/znqqF44imkzAPkiAsXCg7616CJS7+bjsvclNesp
X-Developer-Key: i=svetly.todorov@memverge.com; a=ed25519;
 pk=bo0spdkY5tAEf+QP9ZH+jA9biE/razmOR7VcBXnymUE=
X-ClientProxiedBy: SJ0PR13CA0203.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::28) To IA0PR17MB6347.namprd17.prod.outlook.com
 (2603:10b6:208:435::22)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR17MB6347:EE_|BLAPR17MB4193:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	LTUWle9JL9UkDdeI2XBWgev3ClsyNrJGeXshrrxGSYDTBi5erzieXyI4exgeEpbQdBqEQRf87Qmu0gVz9uivByKmFSME96JxXi3ZXrmlEBIROvNWY96NI8LR1k2R234GPacr2+lxnDwofMI7xl5HwG2yPofKp1ImHKIPPvzVXyP/8RFhqYGzepEoO3u91BvXVwzI5K0obItkc+L7rv0W2qH7ET6utdH/gtAwJGZ3XMu7IjzLK5O6xOLXYApkg5xGpHXsszbAR6WfO+/bYCfsqKERAMXjRGoqaeecuLw3vgZmXM5y3T7JjasuZ9Y1liruKl9nDZK5j6FgShOav46LptYkqb6SMfGc2LPAyqPIzk20jBUfFpubM+b3pSExM3xHDRSpeUT5rrkgf5eeTqNj+tjV6YrXvxzHx/J6HNUs7i+7oS68bcilRieODB2icudnZiSgMO4qJT2HPin/3rsd3v3LMHCAVxCpjrkJVdK6vpiR6n9ezld9G25LFKyLuN6amLaj7p+o80YVC4bE2aEDYAIzfHSOWk1WG4uPT0rqhJdHguZtqatUzpozswtH5DSb2Jc69cDLkd9T8G5y4c1kEJgj1cHKcwajJP6HcO2+3NHDDujrKgqyRDUJKLkjqapZbgkjbjrvEKdan5YWIyD+TylzzI7yfLfzKUcxKHdt5cs=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(52116005)(376005)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?L0h2Q1l0ODR0QjNMVWR0QTdsK0o2c2s5dHR6M0ltWG1INmphQWg1U2E4S1NX?=
 =?utf-8?B?R0J4MzR0NU9zTnplMW42UGNqQjJld2pRcEE2TW5VNGkxeVVISkFWeW9qdHNQ?=
 =?utf-8?B?WERDY3hGNnFzeThERjZPanFtWXJBSC9YbzltQStmdE5xc1lEblNmUWdOeDdN?=
 =?utf-8?B?TkxZRUxaSkNINzJkTVJWRVZVc2NkTW1LOUd3NzBwQVVnY1dQYkdaZEZ0WDdM?=
 =?utf-8?B?V0dXazBYVVIwb2p5MjY1T0Z6Y1NqUWJuZEtQZ2N1WnVQLy8vR0VQSHlFSVVV?=
 =?utf-8?B?a0pYM05XRTBuRVdGNWZtM0hNazIvZXZySWlaRlcrZVJRZ0tzQms3OWI1YmY3?=
 =?utf-8?B?WFpNaWRZNmRjSXpobzhJNmxvZDNDUC9qNWNIU2lWVCtyMUJoaWprUldUT0N6?=
 =?utf-8?B?c2dGR1BMZ0ljTTQ5c01GZlVhSmxFVS9KeHkrNUF0SHRuUU1Ja0JnRVBGZWFr?=
 =?utf-8?B?cTNKcVhZT0dGQUhSTHFObkJRWTgremJWU3hmcFpoSGZwTVlrZmJIN3VCWFpF?=
 =?utf-8?B?SmpPZTRIUk5ucGxCaW8zSHcvbWVyTzdSWkhUTFFhMlV0U2hSdFBXK0hDdm96?=
 =?utf-8?B?Qkx6eUNMQUFDemx2K1V5b3BuRnZoOHQwS3Q5TGZkbDNIdmxvN1IyNTMwYmVW?=
 =?utf-8?B?QWxVbG83UzBlTWMreHVlS1Z5ZkswRFY5b3A2V1ZOS0h0L0pRcUdRM2ZrR2tj?=
 =?utf-8?B?bkFwL1h5VU52bWlyMGlzOFZ5QUpsRjFFbytvUFZsOElpSDgvdUtLY2tFdkFz?=
 =?utf-8?B?clZsclRvMkh6Y1NBQkJXUmcvaEZuOHU5dUY2Y0FJSUFQNG5Ld2xiZmJhaytQ?=
 =?utf-8?B?M1dJaXR3bW9kemlVdzVHYkVXUHQ2TC9FVnVkclRmVFh2bUlyT2hvaVI2TWx3?=
 =?utf-8?B?V29FWTJ2SUhGZVZaMkhyZXBKekdDcUlZMFRaUjVtR1R0dlpuYkE1RTNuQmd0?=
 =?utf-8?B?TlRrKzlrMUpPQmI5Nm5oNVF0OXRRd2UrZWY0SXVTTHNVQ2lBdzUvSm81R0hv?=
 =?utf-8?B?UHZZRndZS1RwYWRaZjU3WExuVjZjL25OeFMwRFAzVXdNZzhZdS9SZEltQWFE?=
 =?utf-8?B?S0V4WFg4VUJqYlQ1czhtRyt4cEZVWEZsOHIwQnBpUUM3ZWxPazRaRUhxZ3pL?=
 =?utf-8?B?TTRmd3FCTnRXRTZuKytoTzFhaFdwYTlmK0tKZ1FNdWYvbTV4ZjZvaXJPZDRQ?=
 =?utf-8?B?MVhBUi9GYjd4cURGa0twa1hneW81d2lNREVWbjN1VTNiWlR3MUdxaHVneTNI?=
 =?utf-8?B?akxCNEhvcVdNTjdJVGFYcm1sMll2VXhEa1VHbVkveGdyTXA1YWdzNGxsdkdr?=
 =?utf-8?B?QUxmQzZpakRIVDdmVlhBdVNiNWxtcmp5emo3b01tOFhEMVdXVGpib0RSVHVG?=
 =?utf-8?B?NUlFRWpsSlhJR3JNOHowVTBtVDcrdk1hZTlxYlZGQ1dtMXByTU5xaWhmbGZ5?=
 =?utf-8?B?UXF4K1BjWjRXNzFpSkR6c3gyS2NTR1YzbVlkWThodnVKV0syUVNELzR0Vi8w?=
 =?utf-8?B?SGZiWUorZkUzNy9aWUY5S0lTVEtBRTRSa2h3TDFrSG1lYnJueTRvVWoySGY0?=
 =?utf-8?B?Z3BDMUc1VnhHNE1zc3hiWDBlbDhMR2lPNHJ3NEF3MEhHakpTaDJ1T1JKNTdJ?=
 =?utf-8?B?cnVSdmwvZWQ0ZnEzYWZDRXgvaWtoRVp6ZUpyNFdVVzl1bS95OWo0RHVVdjJJ?=
 =?utf-8?B?SVpkNU8zRkVrUHpVc3JSei9nSS9lQ0REZFRlZUY0QzB0WlVoU0FLaW45bFdQ?=
 =?utf-8?B?VTNEZkVsekhjbXpycUkyeGpxM0grWHhhQi96RElNclpWZmc0NHlrVUVkbE9i?=
 =?utf-8?B?NS9zSkt6NkhsTVdydHowZi9IWUkzMk9peEtPRVVFNUNVV3VCMDdHTTU2bVB0?=
 =?utf-8?B?V3kvR2M1NWRqK2JYWDAwZHlGUTVaV0JqM24reHNic2NRQzVEMGl4LzJmMzlO?=
 =?utf-8?B?NkpCNTNiU0ZwRzhWMExKQ0R0UzdjcFNiYzZJYlBSTW9WVC9ZSlpiZC9HOGQ4?=
 =?utf-8?B?bWFva1hBQXF5K0t6ODc5QmhLQzhIYUtFVVV0Sm5WUFA3R1JVbmp3VnlNczB5?=
 =?utf-8?B?V3NYeWVCTEVzNjgwc0VIeXBKcWJCcmxTTVF3bWFUWGd4ZEJKNE9kSkxGemt6?=
 =?utf-8?B?ZXdnUEpWbTJ4M1FHNVUzektNbGhKRzd2Qld5cWV6OTJuZFFYMWdwRWk4cjM5?=
 =?utf-8?B?NWc9PQ==?=
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a37e14c7-2627-476c-60be-08dc53533358
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2024 20:26:38.9689
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vppvoh++39jmtsYNt30BxSdsHDGjpvd0DqbO+KQB0DBzcevtnKHEFlqQ06D5jLCCMC5scWD90Ol/WhFHLy8WRE1az3RqCgwiTv9r7yt5uKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR17MB4193



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

Changes in v6:
- either/or -> neither/nor
- remove version parentheticals in get_mempolicy.2
- Link to v5: https://lore.kernel.org/r/20240318-weighted_interleave-v5-1-c821a46d5beb@memverge.com

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
 man2/get_mempolicy.2 | 10 +++++++---
 man2/mbind.2         | 18 ++++++++++++++++++
 man2/set_mempolicy.2 | 18 ++++++++++++++++++
 3 files changed, 43 insertions(+), 3 deletions(-)

diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
index 5248f04ba..f6f80ab3e 100644
--- a/man2/get_mempolicy.2
+++ b/man2/get_mempolicy.2
@@ -137,7 +137,9 @@ specifies
 but not
 .BR MPOL_F_ADDR ,
 and the thread's current policy is
-.BR MPOL_INTERLEAVE ,
+.B MPOL_INTERLEAVE
+or
+.BR MPOL_WEIGHTED_INTERLEAVE ,
 then
 .BR get_mempolicy ()
 will return in the location pointed to by a non-NULL
@@ -205,8 +207,10 @@ specified
 .B MPOL_F_NODE
 but not
 .B MPOL_F_ADDR
-and the current thread policy is not
-.BR MPOL_INTERLEAVE .
+and the current thread policy is neither
+.B MPOL_INTERLEAVE
+nor
+.BR MPOL_WEIGHTED_INTERLEAVE .
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


