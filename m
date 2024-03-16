Return-Path: <linux-man+bounces-625-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCD087DB58
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 20:51:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71084281772
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 19:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C0321BDE2;
	Sat, 16 Mar 2024 19:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="iiabMiLr"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2133.outbound.protection.outlook.com [40.107.244.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE0061A38E5
	for <linux-man@vger.kernel.org>; Sat, 16 Mar 2024 19:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.244.133
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710618661; cv=fail; b=k8IgpFypJZndhcL7AuHOwv8MaYzSowHPeVCH+SOJQUrvEVW1LlpJ7TbIU61aqQfmt7CKE9xSGdr1IHBXThe44dgDPApzc7m1RrFTrI/GDF3iENnSH7fUAYgotcwZWkh/HclMm4/gkelGb9vCesZzRN3FQNFA0LbWUlL2Bu4NHGI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710618661; c=relaxed/simple;
	bh=aiHxllhWubjaejv0kNKP627TQjWaxRjnrzstI+uu3jU=;
	h=From:Date:Subject:Content-Type:Message-Id:To:Cc:MIME-Version; b=pus4n1j6g7KKZHQXHklVdsINIMQaxNOOgZ8UtK6LrEoKnL2bWKr+rCUAwykiHK832bOcrkHm52JfAWVyfP74Z0s2XkDltijp+LhWNcBK0z5Va746awhBLjjwOpeumqJtuA7P/hwh1xQmJq2p1ZeTApGqtyHs9uQtfOgm4mML6gc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=iiabMiLr; arc=fail smtp.client-ip=40.107.244.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ME2j0ply85dlP1873X/SCB4UbT3VFk1RfuvBZTqzNhDyUqEbz/xJcO5zrwj8F9lUF0MQUvmhWnJyjUbK38GMvTJffE8O2i697dw9L4/Z0JsN8mXGZatCU6bLFuiyXBkU/zeGUKUZOAJdsBm5M2VxnDj/MovgznyDhOIUD9X6Oa2Hwz9MXxJyQtCIOD2PCCgJSKhlI2Kgs0D1WGjN0cjK+ker1khFvF85urK7ADb0rJOzLNOnF8IGtV4TG5EV54Amxa7++mwuUjQd0fakwVN6Z5onxC24jKmsUtpFLDCjBXR3paBUKfoGfsehS/Ed+GNLMRJPfAPrZDwOZLoeOkV7BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5zyyeJD5XNViP54W/vAk8LnUYzIH/x7abnBApmRTno0=;
 b=oHvp0cWHPz4H8yyTfqs//E8P50eajrf2Izeh/eUEcVI56XO/wsP3NhzJQvLrKyMytuMdg1L5D3AK6RjDDWDYlH9/94eLnSN9y41px38bpENJnOt+7hSA3K7Ro2c7WzVNmPMbRd4GI+cfOSl64dXkRoR0qGXThmxRh2XM6aLpUuk7lELpo1t8Y38XU/ozfr1UmAloZQGFcojbm86+3KSegJtlloSM1St3N0FjM+9os8QoCoy0XyDlSi2pIz1wLYZPyfSSLAWi1YT0xQBwGSk4lczSgFe1n9eGcBmLCUqEO2cx2KFEVU5JpI6FunSzLlH6H2ZhHhH5UkNq/dTC6Rp9rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5zyyeJD5XNViP54W/vAk8LnUYzIH/x7abnBApmRTno0=;
 b=iiabMiLrTixzHPeOkkTpJMv1vvYm/3EhOsdeisHFsuMQaV8Crfx7ZZSRBnSGvEH9L3QG+WEI+raf21eLyrh6o/uEO2yveHdb0IA067ysv6ja4A+BaWJVms/P8xkgyRUf86yDlGYvlZwOGCL9fgmJH/Nvcaf8ZR9MA2Ed96/BmPM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by PH0PR17MB5989.namprd17.prod.outlook.com (2603:10b6:510:167::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.32; Sat, 16 Mar
 2024 19:50:57 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.022; Sat, 16 Mar 2024
 19:50:57 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
Date: Sat, 16 Mar 2024 12:50:47 -0700
Subject: [PATCH v4] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240316-weighted_interleave-v4-1-6ab516f12ced@memverge.com>
X-B4-Tracking: v=1; b=H4sIABb49WUC/43OUQuCMBDA8a8ie26xmze1nvoeETHdqYPU2GQV4
 ndvCkGEDz3+D+53NzFPzpJnx2RijoL1duhj4C5hVav7hrg1sZkUEkUKKX+QbdqRzNX2I7kb6UC
 cCkAgkyusDyxu3h3V9rmq50vs1vpxcK/1SIBl+vFw0wvAgVdUKJOhKYXBU0ddINfQvho6tpBBf
 jNqm5GRKXOUGotciVJsMOkfTBoZhEyDLgUo+fvNPM9vLttKN0cBAAA=
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com, 
 ying.huang@intel.com, Svetly Todorov <svetly.todorov@memverge.com>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1710618656; l=4450;
 i=svetly.todorov@memverge.com; s=20240312; h=from:subject:message-id;
 bh=vfZNcNHkcs7XhKoYJbUsuvc3ogmawQrbkJjCEdyzpvY=;
 b=iJ1mDQCTV8EuSxTQo5lsecPs1pbq1byd3SVPUrNEj+qy275tU7qgsLhmFrcbe57X1B7wWNgRv
 JVU9hMeM6zNC6h1J+1pLdGqZy3OTmhINnClPf3ShQJ/Y8ITu0IEuHPM
X-Developer-Key: i=svetly.todorov@memverge.com; a=ed25519;
 pk=bo0spdkY5tAEf+QP9ZH+jA9biE/razmOR7VcBXnymUE=
X-ClientProxiedBy: BY5PR17CA0002.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::15) To IA0PR17MB6347.namprd17.prod.outlook.com
 (2603:10b6:208:435::22)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR17MB6347:EE_|PH0PR17MB5989:EE_
X-MS-Office365-Filtering-Correlation-Id: 00f5d162-f3c1-4394-af5c-08dc45f265b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	K1PHy8xERkHFrFmEjH67XYQg71YcNMKSZpqmRJSibjv0wcAsNDEpLJ156NXnEPm+coT+8EqEatSo6OQQVoX6jqKeQZca/1PoA5aKgtJ0ZYp2RMKsPnc2y+plMeLaVHHtHut1/oIkP1BfYKuziqQz2vwInUkG2AbhYM6HiTPcqRsUKmwFU8LWJRA/m1VR3cBK72YPzfHBv1BZR0ZUEiWbOMMNCE06vLsR4x9vM2Fl3rDNp3WER4pz1zvHrLjTFrsPKa8OHIvl/+i28BPBSE0oW4FaChkJWAdGeVumoxn7V8qnBr5pXap4ycIKs+4pQPLtZS7mPp93S/HqWX/HZ58jcY0hHtY6CUVxGiADF2hlAekFsujM+32qvEyhk0kYY2bFRG+QoV6z4xgQFZmoPiIeKyMdZaIBkGPI6tUE8JJ3c4I+Q5jnjDEKwVC0tQn8iEUBrpzaRBwWG0IKui/hbrek5+P3rJyM1zO1JpZ8B3hUhGLbgWpoR7OqV4NK3GnbuOHLcKMFgE7x1UYTwrZzsiXRljsHKUtD2l4moTJpQwLlGGGPFRFc+ToLYbd4h53vOdtcndR2URZr7H9E044cJ1Nbtie51quSs4mcEq6VNfWTPKu6ecOUCXRiF3SB2TQglO4Lk4zDjlrvXy81yUB5p9lmS8I6O5iV1Awf1+IL78/SXPE=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(376005)(366007)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SXNxWDdYY3J3WWpuMjF1STUvRld4UTRoM3pLbFpsVlFPaEpaL3VGa1hBSEhE?=
 =?utf-8?B?QWpNWkZHbUttaFZmMVlua0NZTG9YQ1ZKazlTNUl2endtQTR3d2ZTekVxRjdq?=
 =?utf-8?B?bENkWS9hQmNFaTBKczgzd2FhM1M5cTc1L29kQTROTUpmUC9EVURpb0dkNGY4?=
 =?utf-8?B?Uy9BQ25jM0poMXN3YVVGOThWMGx6cXc4Z1FDakQ3K0g1V0g3NEVya0NibmJZ?=
 =?utf-8?B?Um0waFg2SExkN3cwengvVzBJVVJKY0ovdzZVeG03NUNKelcza1VJRDRtVklD?=
 =?utf-8?B?ajNRbUtnRGI3VDF1QUNSQVhjTDg2Nnk4RGlMMnVmbS9qcFRhVGNTaVkyQ0Rx?=
 =?utf-8?B?KzgyZzZNaEZRNU8xYkE1bXdZbEpXYUZzZUpwTjUxdkNDeFI5Qmtzc25VL2wr?=
 =?utf-8?B?NmRscWxEYXJ0QlllRFczRlVQSGQ3ZG93WllyN002THlTZXV2d1ZBMmZIM09k?=
 =?utf-8?B?Mk5neW9tVlp4dU5PdTNUNlNzbEdFQmg2NFprVitKaGV2RHN5Z3ZWQTQwNVF0?=
 =?utf-8?B?TGcxZm9DL3dMRWlIdjlKY1lKdXlzUnVISTFQc2dvNVd4dGpmRS9DbXRxMkpT?=
 =?utf-8?B?S1BKeEhvQWV1VU5WQzhRaGJTVlB0RytsRkNsOW0xc0RQemczdlZiTGhjQ0lI?=
 =?utf-8?B?a3hUNkhyZVZseEY5QmJNM0kzelQ1SE1MTXExNDF5N2s5RzFBNUdmMWU0SHZp?=
 =?utf-8?B?MXM4bWMvd2tXTytpMnhDNHJWa2RoaXFZMFhCaDVhZUVGSTRnblhNK0did2hC?=
 =?utf-8?B?M2d4ZmIrOVF3S0hkcGF6UTgxUXUzdjNUeHl2eXc1eGo2K1pFcjkyWlhjdzBs?=
 =?utf-8?B?aXp4TTVHS0t1Q0U3OVBLVTB0WENDdXdrS0JmSFNITjNETmVtVjRZZDdETjdD?=
 =?utf-8?B?YWVodjVaY3g2Nmw0TXB6MndMcUpUV0FnRDRvbzIxYWdzK1BpZnZUS3hIMU5F?=
 =?utf-8?B?NzQ4MHJIVUZibGN3eFJWRU45YXdqRXZqUlZxTHFBRjJEWlhPdnBTM2lnME1X?=
 =?utf-8?B?RzZ5OG1JTEdkTVJ6V2J4VWduZXM0Q3A4MjNhS1p0bFhFQ24yMkNBazQwcWJW?=
 =?utf-8?B?Qlk1WnFzTDZoUzhWamNzV3dmV0svLzJldTU2ejJNT0xFQmxxb0xUSHFELzd1?=
 =?utf-8?B?cGIrTm5KeEJkSVBRZU5WbVFFSkFxWVNsK25BZE9mVUhqYkVUSk9SekIya0JK?=
 =?utf-8?B?TXlvR2RzdFAwUnZDMUZiSFc3K0VXaTVnbHU3UmZ5d0ZXdERyMEU1TzN6R3BK?=
 =?utf-8?B?TDc2S2xodHE5Q2dtbWRTUXJ3QVVCNmt0YVIwRytwcWlncm9GOHZQdlpWYks2?=
 =?utf-8?B?RFYyRElhL3lmQmNYczYrS0N5Tm5VTjFQVEN6VS9JVytRekFsdm9GbnhkRGpE?=
 =?utf-8?B?WFIrb29qZEtTeXY4RUxJZ1VqNFliSmlEWnNoNGt2N2dGSW9zejQ2MTdGVkFC?=
 =?utf-8?B?blc1eEZ0aENISmxpeGVpa041UjNwY3lQSGFMUDJmazR3RGovMmFRazBnNWtl?=
 =?utf-8?B?ZTNNTGRicHJXaHB3T1ZRRmNLOHBoQmMzbXIxRmNXbmJ3SXppR0duamhZbkI4?=
 =?utf-8?B?dnprckpPQ0ZjaW05MlM4YlBuRSs3YmhOMFVGZGRLZ0NFRFhVUlJvc2duSTZp?=
 =?utf-8?B?bkpvdzNwWXRHSTR6ampjbGdOVDlNN2Q1TW1PcDFMV1VldE5IdUoyOVpaZzVW?=
 =?utf-8?B?WTN3eVByNUFMZmFGdmR4K1Q4RS9ZaHludStMOFdEUnI2Vkx5THI3ajFvbXpK?=
 =?utf-8?B?c1NqTmg4Z2ZRaXFPRHV3b3h1aVlHRk9WTVZiMXlmbEZzSzhpVW5WSWRPSVZv?=
 =?utf-8?B?UndybmxEVWt2S3ppejFnRnhGV2tDODR3TllsRkpURTBidWJtR3gzNnJmS0po?=
 =?utf-8?B?N1lqR0dRcUpDckoyTFo0NUpLS1dwZmdpMVBwZCsrdi95anYzV1E0R2c4UWwv?=
 =?utf-8?B?OW1EQlVDYkFDM3ltL0RnVEx1Wnh4ODRmcWVENTVjVEx6YVV4MUszWm1GUGZN?=
 =?utf-8?B?ODgyeENFTWdObThuWmJReVpkTTllby9ZKzlnN29NcXJpQ3NYcmpTZnl3WWdm?=
 =?utf-8?B?TmdURzIyazZIdm1SV1ovZ2NiYnFzS293VWlZd1lFQ0MvV2NrMFV3R0lDQXVq?=
 =?utf-8?B?TGpHdGV3R1o4MDFDOVFZNWduRVhRN0FuODR0SVZSaWY0L1BkUzFmbmhMbVlz?=
 =?utf-8?B?WHc9PQ==?=
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00f5d162-f3c1-4394-af5c-08dc45f265b5
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2024 19:50:57.1216
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M9KSEOGQWn+E7REB4Qq/e2uxbNBSBx+OdkejS806oRbJ9o2KlvRFIBBXNoruSv3Z/Rjl4DBFEPybO+NiBPNmugkM5M43ROGAjkONtYh7+eI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR17MB5989



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
 man2/get_mempolicy.2 |  8 ++++++--
 man2/mbind.2         | 17 +++++++++++++++++
 man2/set_mempolicy.2 | 17 +++++++++++++++++
 3 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
index 5248f04ba..a81b84a00 100644
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
@@ -206,7 +208,9 @@ specified
 but not
 .B MPOL_F_ADDR
 and the current thread policy is not
-.BR MPOL_INTERLEAVE .
+.B MPOL_INTERLEAVE
+or
+.BR MPOL_WEIGHTED_INTERLEAVE .
 Or,
 .I flags
 specified
diff --git a/man2/mbind.2 b/man2/mbind.2
index b0e961f9c..cd4e6f4a4 100644
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
@@ -243,6 +244,22 @@ at least 1\ MB or bigger with a fairly uniform access pattern.
 Accesses to a single page of the area will still be limited to
 the memory bandwidth of a single node.
 .TP
+.B MPOL_WEIGHTED_INTERLEAVE
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
index fc3ad9df8..f9837d918 100644
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
@@ -199,6 +200,22 @@ the memory bandwidth of a single node.
 .\" To be effective the memory area should be fairly large,
 .\" at least 1 MB or bigger.
 .TP
+.B MPOL_WEIGHTED_INTERLEAVE
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


