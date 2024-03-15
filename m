Return-Path: <linux-man+bounces-617-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0CA87D75F
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 00:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A90F1C20F2A
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 23:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 546C259B71;
	Fri, 15 Mar 2024 23:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="ccUIHVEp"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2118.outbound.protection.outlook.com [40.107.93.118])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDFD53365
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 23:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.93.118
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710546236; cv=fail; b=Px3S8Y+5G2hUq+Gs0tWBdIAL8cxitBBFiQKrj6bLwjwsvAQZls6splg2ZgH/qY18ufnFruYb7ezGNbMUyBGhzCc2Io2HMYUemOzVmLXfLnkVicWFj9ZU7m2p+DLz19D8nD5uXmmNCuaEth9odlkzCNhNDeoZ6vwJtAsZD3uG+wo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710546236; c=relaxed/simple;
	bh=dRMoUUm/esiyx5g3Xsrpf+EiSX3tU24DxYXo/aFLy2k=;
	h=From:Date:Subject:Content-Type:Message-Id:To:Cc:MIME-Version; b=JRTJTNjMcUJUryreGfsWVz6rzwOXJIK/0/nVbNUileSuGBit6e0RulFAQXJpCnRVJUKcrbqj2fq3607Mk3mmaJcEk9rgLnDc0/mDN7iCvFr5LiWLXarMQYjurgEPRohSzZkCr3sHqezvnuIlcwZoOrK6h+/Q9iSSoQwlY3XujMQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=ccUIHVEp; arc=fail smtp.client-ip=40.107.93.118
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fJrH+L97Wc4Y81+uzdcRwTNQq9gWQLyVlGTvGQR//rh6UJVrsPvP+Gzq6Y2ERDeIB5dqisO7e+u0V92l3Oeqjl8v9Vpv2SSorT4/xcrOPZ05SVC9XJl2ObSgcK/pYIW9rjEPpYOHnZFjkT+O1Hw7w61X9xO/AP1jyqIF4mZ2LLdIB0CY4ohtjSqna54V9RIoqCzMzj4bnqjm6ouhgo42cZLzSKjP+IO0e6sJYX4cmV8siJgwsOhsD1DNGWy6CgAf1f1QCQjGudwQdhVIcjF0Rho00fXQFS0gk3AmyHqrFJDHF0lVvh7ePxImvryMNz+mU+ErMDwIoCR7q2HRAV79YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kD74D0l2I1g2EYE+fkvsfwS2WDYbUKbhBx2Z7hrX69c=;
 b=RfKfe5WlDQyJu5Gjslczg4s4DuB8L9FyvIHFmu9/da1qzvwmWBY0i/fAfN+0JnMys4OyzZp94i8OETxUJ9eOfxQky9Ccj0a7r660+Kpr15GKMycoPe3OZ/oj3KDkMPM4IjrIafL2Zdet/b8ELnPicPicNvXPiVOlxjab7vg1Lp1BBk32ykyfRl2ujWUyf/0cqyOrzic+ctBs+63USz2439Zy/b4nLrAYSYsPd0iR0opUvH0upkP8m9NkxEZYHb6Y7xlaqcRW0IiCh2+odh6ahpj5hxoG46ze+WCE5KbgPUnGsKzhRGpFyoWaebqaRCB9INC2Fnd9TNuo1AeL7zC3tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kD74D0l2I1g2EYE+fkvsfwS2WDYbUKbhBx2Z7hrX69c=;
 b=ccUIHVEpEJlLArhzoCmtmlHN42GeRYvw2agFNniGNXv7cP/stftuctO6i6SyyE/wODGz3RVitEBskot7TJESw3wvLOeEg6XNAb3J6FWdzK+IfFPBs6FNxGQYKTYbmx9zk0GlhPyTqEy2PmDBb0+HMI9+X6ZYzT/7x9m0QUf1FOQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by DS7PR17MB6585.namprd17.prod.outlook.com (2603:10b6:8:ec::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.19; Fri, 15 Mar
 2024 23:43:48 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.017; Fri, 15 Mar 2024
 23:43:44 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
Date: Fri, 15 Mar 2024 16:43:36 -0700
Subject: [PATCH v3] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240315-weighted_interleave-v3-1-416a1ab01524@memverge.com>
X-B4-Tracking: v=1; b=H4sIACfd9GUC/23N0QqCMBTG8VeRXbfY5pbWVe8REeo+9UBqbLIK8
 d2bQhDh5f+D8zsT83AEz07JxBwCeRr6GOkuYVVb9A042dhMCaVFKlP+BDXtCHujfoS7owjgyKW
 WsJnR9ZHFy4dDTa9VvVxjt+THwb3XJ0Eu69fTm16QXPIKubEHbUth9blDF+Aa7KuhYwsZ1C9jt
 hkVmTLTqtB5ZkQp/ph5nj9sc8RAAAEAAA==
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com, 
 ying.huang@intel.com, Svetly Todorov <svetly.todorov@memverge.com>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1710546224; l=4236;
 i=svetly.todorov@memverge.com; s=20240312; h=from:subject:message-id;
 bh=jvvo435HiqXKK8R0fK+2UzP4yg5GypCNgcIkVgIPV8w=;
 b=CB6l74KoSo27AYTykWqksxF2iIQLLRTElEvJ0MajfGmFtSMbbdf2BtbhKGdD1mdoB5wRAQmVo
 NMvoJQObeRNDMHtLXGYs0sRuGj2ZWE0IU0MuE+14zrKk7DO8pJV5Jay
X-Developer-Key: i=svetly.todorov@memverge.com; a=ed25519;
 pk=bo0spdkY5tAEf+QP9ZH+jA9biE/razmOR7VcBXnymUE=
X-ClientProxiedBy: SJ0PR03CA0044.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::19) To IA0PR17MB6347.namprd17.prod.outlook.com
 (2603:10b6:208:435::22)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR17MB6347:EE_|DS7PR17MB6585:EE_
X-MS-Office365-Filtering-Correlation-Id: 46c790c0-ca24-42b8-b5b2-08dc4549c09c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	8A+u54pHAGK9yQxyD/XeoVEdky7RqxBGbSSaOCodyM2p8Q+5g/jSK21eM27eeAQ1PCkk9FcYo76a/ZKKiS77pVWp+5dreivRKlM4HWNxZUlebijViYh72rf4u61Fk+j8vjpq0YZTtdEYxkzs3e0icbta2U0E66jQk/ViADXp6Ay0BGgD9eFhKUeVWqb0ehDImeao3tBx5w5UYhYhx4HU8BKDfiWxa+u3AQyTsl5BTZSgDW8aJFtETDl7UO71G+r+G+9LKLg3aE2ge3wyjB7izmgVRJOW1YSOLwUfnCFYto53sx9SIb6ZDzsMRsW7vT5sF8Yu8fygjaCOm+JBVGYemE++9jznIud02r/fCqXfwHD2nfIdMGDKX5LAaBXTFfthiXfQj6BimJmV8iW3V0ikQd2HUyEm40tOgqXR4JEZIW4An8fXRETbzBIwnZ+NjoYXXaXqkiss8umZTVswLeDpbc8mpqvoIm5s8sW5kaJnkUb3hueSOm2cfTPk2wgMKS5mJh6XBgHTYMUNGCRerV9dN9sTJxxfYJMZROZYxQKfnzcPMZ9/ZPeOS24UmeGpkLoB/HsmLS5aiSh6CR/ZmD09VeHUKu79nCG2nDQMU9Q8l6LYg2/j3TCYsQePEBqXdFEG9uvc/iu1FyW9CVGD57+XAOqZ6A2ct4WmlE/F9/U1RU0=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(376005)(1800799015)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NlJnSDdmZm8wRG1qKzlZVUZrdCtLN2FoeTEwR29Cd3hCUm5BYzFsNFExMjlh?=
 =?utf-8?B?SlUrRm5KODQ4SmFzM2FuNXZ3ejFuRE1OTjRqZXp5OU1NZkpkS1RKMGMwZEZi?=
 =?utf-8?B?dWtFalNpdWVNUmJwUVR3aFYyNjl2Vk1TMXBOQXdTbVltbWFYTkR1dHVjWjd2?=
 =?utf-8?B?VHZFMUlWWjUzOVpUdFFMU3J1TXZOd0NEaVZQS0JCaldwQTBhb1hCY2xScFUx?=
 =?utf-8?B?M0RmbkFOdkx2S3h3cHBSNUtscTN3UktLZnJlemVrNFIySFc4TWZjKzdPdzE5?=
 =?utf-8?B?Rzhxd3hmWjgvTm1iQ3FoQnlNc2FOa29ES2Erd1BxbUg0bTFYMGZ5bExBOTlX?=
 =?utf-8?B?SzlTdVpJNVNrT3kwRVhtNHl6ZzVhZHpjR1RuLy90MkxjMDJwWXY0b2pQRk5U?=
 =?utf-8?B?UitIVG9RVmtMakZnWktJRkVlYkppQlZ5TXVndldqdDNoK3gwK3VaMGtWMnlR?=
 =?utf-8?B?cUdDanFRTmNkZGxHckdoWDg4cjQ0dWdWUnFuTE8zYXZTMFBqNElyZGp0OXRv?=
 =?utf-8?B?K1Yva0JNVEdZUVpHdXBNVktlUjFEbnRHaEdidTEzR2RwZjYxcnc0UFY3d1I0?=
 =?utf-8?B?Z0ZnK0NuaERaT2gxREhZYURRSDkxTUlJVWdHMk55YXo0WGFSNE9qRzVQQmhL?=
 =?utf-8?B?OWdrVkVycHE4NUlCcHN1dVFqVWc4NmtqREo4ek9pYW9RSUlEdDlRQnUxaWxz?=
 =?utf-8?B?ZmlxWWRMc1JFYTU4NDlCY2RJQmo5Ujhmd3ZvaWdRMlIzT09TdjBmd0l1bWxK?=
 =?utf-8?B?MDNRRUpNY2ZMZm1BMldEbGFmaGJyZUhVTFhpaVZVSUxTM3NvMXI2NHFZMzJR?=
 =?utf-8?B?L1pyS0FyUHJFMVBWZlBEZ2JTaVFwMFYxck5ZaXhObXpmYlJtek9DMHRiVEt6?=
 =?utf-8?B?b253KzFpdXFQcGN4U1I1Q0tIM1crd0EyMWZxREtpV3p2bEpobStySlovbEZy?=
 =?utf-8?B?TGVjUG93RWE4bzkzd0ZuWVJqU0UvRWVvbTczRkQ0VUI3QmNUL1pXbVN6L3lL?=
 =?utf-8?B?bkEwVTF6dmVrNFR4dXY1SitrUzdnbmtCbFM5ck9oRkt6UzVyaW16WkxRRkpv?=
 =?utf-8?B?UW5FcGQwSis4M1krRm8yVUk3RnBZeGFkSm10cnpObFZqU2c4Zm82enF0U3Nl?=
 =?utf-8?B?TVUzSzZ2dmtrUitzc0xQR1hFMW1VemcvVys5UW9KN2FOZGoxWTJtZm91bkVI?=
 =?utf-8?B?Mnk3ZlIyZm81TnRXb091NXNTTEc4UTR2RTBnMTVKd3R2OWFsaUNKak52QVE4?=
 =?utf-8?B?ek9NcDFoVG94QURoQk1wa0RoSFBITm91Z1g4M1ozYk1RUE1GNTRpWnZKOFJR?=
 =?utf-8?B?U2pwRlZoSm5EbEZBcXVHTk1nSXRYOW84SzI3MlprYXVHeHJXZGFuaWI4bkcz?=
 =?utf-8?B?WnJSMzhiSk8wWFc1R21pOW9xSStHeENoblNvRmI0ZTg3MTdMRWRWVTlSZ0hL?=
 =?utf-8?B?dVZrUUkxcUZkSWdUZmhVSjFLTGgxUlk1Tmd2V2VLblVtMjkzeDZjMjBzdUE3?=
 =?utf-8?B?dVBpdUVUdFpiM1krVllPVTVra0hDazRHVGxZMGxwT2dLV3RUTkFzTC9LSXQ3?=
 =?utf-8?B?bmh2ZXZZb2hOK2FNVTRMZDhOQURTV0xiczZ1Y2pIdFB6MlJPWFV5dzNmRmU0?=
 =?utf-8?B?VHo3bFliNURQNmVCTEduL01rOFJQamMvV2ZqcGNmVjViaHh1S3h1ZlZCN1dy?=
 =?utf-8?B?NlBvWW5mNStTdjFPVGk0OUpKZmNQMGNDcVhXR2tOdFNUakZBMm42V2ZIbGRH?=
 =?utf-8?B?eHd6Mk9FV09vM2NiOGtHR1M0dnhKVlFiYzlUbGQ1ZGRSV21YdnovYVY5V25E?=
 =?utf-8?B?ZHQ2TVNleCs1blJCMzZSdGljRk5ab0IyU2VlNWtGRHJnWEFmRmY5VlhjVU5L?=
 =?utf-8?B?cHJ3bDRzVmorTFpsT0VBQXJGKzBna1hCekZzbDdPa1ZnQ3BaT0pMT2dOVGhO?=
 =?utf-8?B?cU8xUFZqa2NKZnkxTDlJcVlxb0xVSzM5YjBOUTMvc25idk80amtKQXFoRHNK?=
 =?utf-8?B?dnhiNGtxS1owVDZOY3laMUd0bDNOWGdGT3ZYVkNtMW94cjZ3ZFlndUV0Zmlj?=
 =?utf-8?B?REdJL3paUVMxbHE3bUpkVmFuMTd5YStzSy9ZTm5kRzZQNlg5K1hzM3Zvd2tr?=
 =?utf-8?B?RXlQK1NXaVBxc1lTSk1nVm1CSis5WDVOeFN2TFZZM09CMkdVSmNHSGhKdHpr?=
 =?utf-8?B?MFE9PQ==?=
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46c790c0-ca24-42b8-b5b2-08dc4549c09c
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 23:43:44.6941
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dv7BqXNBZ3XwQva97fESLYx2ZuQWxWbNM0KQtfJ36JQxxqp46cGiSzAIM1SINTLzP2HYJOr7A1juevYBYA4t2OjAG+yFeFvV6Ctgn50l67Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR17MB6585



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
index b0e961f9c..6f85dec0e 100644
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
+.IR /sys/.../node2 ,
+and
+.I /sys/.../node5
+are 4, 7, and 9, respectively,
+then pages in this region will be allocated on nodes 0, 2, and 5
+in a 4:7:9 ratio.
+.TP
 .B MPOL_PREFERRED
 This mode sets the preferred node for allocation.
 The kernel will try to allocate pages from this
diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
index fc3ad9df8..6b51cb376 100644
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
+.IR /sys/.../node2 ,
+and
+.I /sys/.../node5
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


