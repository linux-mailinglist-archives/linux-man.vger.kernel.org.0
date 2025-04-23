Return-Path: <linux-man+bounces-2811-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D4AA997F2
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 20:31:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 439721887FCE
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 18:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01CBE1F4CB6;
	Wed, 23 Apr 2025 18:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="Ivkfx9vf";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="FVwCDJvS"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D5414900B
	for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 18:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745433094; cv=fail; b=Z1nauYevX4nTjDuc6NhaQq+lOz0NJMW8Uar/+CpmTgQ2+7ShQwCb81QwGJAAwkhR+jmS2SStF+bITF4d5F5JmYG2Z72BzjGcihsp2ZnfODN2aD6L9UXZHC0JMQOwSivBMuT/HD+hWTvA563hSYNsc+OcObzkSFFghFLDQDzxaS0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745433094; c=relaxed/simple;
	bh=oU4No8PuMyzh14O4Kcbv3JUg+a8DWUJirxyEHceNnNE=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=UZTRHXAnEj04GLfb4elpGoJnMusXwhjwFhwFkpdglx/DuZ28uqIbiHhxM1tzl63756qIxwXzsG4Xwyd5Suws85G9yHaOE14LgKthEoFaf0kmuLvwMTU5QpLWLq31mdT7BE+L0DEMYScgvyVTQGklxZbxzXs0/DZYrXHRlEumqcU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=Ivkfx9vf; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=FVwCDJvS; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NGtoSg018663;
	Wed, 23 Apr 2025 18:31:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=oU4No8PuMyzh14O4
	Kcbv3JUg+a8DWUJirxyEHceNnNE=; b=Ivkfx9vfHsOTgsJg5zDbBOThdVZ012QN
	Q82D8ffME28INYPoLzqXNps5KKuHz9IutnRBLaTVRHLeNH9bdSgytYZ7Qp6M2lHB
	6iFgV7qL1tOYu5X2i7GgydDBhnq4GmNU5E6xvXt78oPoLc/0m/J1NzJEjoHe1BeH
	/4xdp938+ovJQKvzF2ZEcJR3jH47j8SZpG+v8FMNK/YhRvhIhPr9PSrZal5V1LAd
	yD5Sx5pDG5lHtmyIrSXuvadHN9WcRdBSQACu7BNpqQgtRKUOVgexw+QeAq2CYtrK
	bf3CsNGzGkDPgDGfcz9nqvxTar4zkRSLsGxd1LxLB9MsLnf4Xa+NBg==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 466jha1xhp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 23 Apr 2025 18:31:20 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 53NHwmTD027875;
	Wed, 23 Apr 2025 18:31:19 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2049.outbound.protection.outlook.com [104.47.58.49])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 466jx6g9xk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 23 Apr 2025 18:31:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zc3gDNPf3OKQIznVlOS1dfRYgrfEHeHK+gDQZBte0PMaJaKZ4Y4pks8BXJcVV333rgwdVUPf0lDytke2fihTkXjW0fOr6/crmeClYAn0jMz1SytLO6x0iXd9f3prHpJcgbimrGAMwwWXTaZZkmuvqAO/n7JZ0j3VwYI5ZelS8YkSvIYEt7fDolOkXgoe1IUrOKK6Vu3jCLfzjcLE1hiOXHZOZ0Kjjb+0sPHL4La0uvSBKPSmVrOJ0wURuzG/YsmQC+vefzk8N2d8IjzqbfyvDP9QpXmy1T3/hVAULuCNICeXW+f685XPog/gkQBW7/bhABQaBVFPblHOa1ZDq5mYXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oU4No8PuMyzh14O4Kcbv3JUg+a8DWUJirxyEHceNnNE=;
 b=wZPdZZ+A2+xQDkWLqmU7w52ADniDyWOf+7AiJjsTpBBCSw2OvrLPcL2NrpcuJ8PHvSLy830H6Ozp+WG/3luB/5j7SW0sdhyuYhYEF9jTKDIfQwd2Vhx93hYYcCTCfQj1r7iYZZ/VkbzKeAiAYip9qBdcDnLRWg3zbFz71nUH8aBvJttcCjFaGtawnGM6aj6HCj63e4QJruIaBJLw+/Q8cxoPmYfuqLfZFIb8dCLo056upGe9pwahuK9RptsRbOL8F0cl5wXhFpYD8Wkh7f9Ax9AMwDCYbZS0W3LWhL4ny//M7vhUrCOByANtswCNN1g0v0laA+Fv0l9d//t8jKUhpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oU4No8PuMyzh14O4Kcbv3JUg+a8DWUJirxyEHceNnNE=;
 b=FVwCDJvSJ+eU1IbQWvWpKho1nGW7zaqRUOxLke/I89BJfn/XRt8aiQCijE831o9JzI0iqs4V6RHC2KASNptvmBiwjozEulRGz+C9UxAYxq2Yno4/3/lYXizyeBKeOSff3RK8rq7noLjAkOWTXDezufzpOzwKTnu+v5BWmFvp6BI=
Received: from DM4PR10MB8218.namprd10.prod.outlook.com (2603:10b6:8:1cc::16)
 by CH3PR10MB6716.namprd10.prod.outlook.com (2603:10b6:610:146::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.23; Wed, 23 Apr
 2025 18:31:17 +0000
Received: from DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2]) by DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2%5]) with mapi id 15.20.8655.031; Wed, 23 Apr 2025
 18:31:17 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: [PATCH v2] madvise.2: update MADV_GUARD_INSTALL, MADV_GUARD_REMOVE description
Date: Wed, 23 Apr 2025 19:31:05 +0100
Message-ID: <20250423183105.116978-1-lorenzo.stoakes@oracle.com>
X-Mailer: git-send-email 2.49.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0682.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:351::7) To DM4PR10MB8218.namprd10.prod.outlook.com
 (2603:10b6:8:1cc::16)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB8218:EE_|CH3PR10MB6716:EE_
X-MS-Office365-Filtering-Correlation-Id: b720f217-bc2c-4af5-ef40-08dd829508f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?mG4QS/zceIIMeZGVxPIEMXZEg7K+892+/vlwZzh2bLNRQJDa3XNgewuGRi2U?=
 =?us-ascii?Q?jMCkPLIzzw9lZOzA1PutdaCTDudSj1bFO+t0sPFR3wpw91KWVuNxe9jSS52Y?=
 =?us-ascii?Q?dXjw5uZNE5xEFlkM61ivVg6ckvHUkdVfGIbFWzdNSy5ux0/gEwmeERxlS3r0?=
 =?us-ascii?Q?P4FW6Vqp7cG9eL+a0xeD2tclDShHJtiIzXVPKij8CSy7kjJTqX8TxzK5zrXb?=
 =?us-ascii?Q?vz9WDpOpJgnCQsjHXa8GJGJfli/aUQWV+0bJIHx98yZyMbk79Dh8stPQgrK1?=
 =?us-ascii?Q?uDGiDY70lVMITw6EKAzWOh4HbCa9cJa9fqycyoO/i6Vy0z/y7slV2J5ghlwK?=
 =?us-ascii?Q?AZ0P3dJAbUvIqNUtEOTaGrZmlxaeHXDBH7bWDod9BgDaT8AyCb11W/Mq39rD?=
 =?us-ascii?Q?g6M1wyzVhiu/1bvUBwffsgjnNsCrXRNyS/eKHwY7Dk2OptJvPmaj5eaj9Wkx?=
 =?us-ascii?Q?ztzVtk5PC9jjsjsD85j83+rBT+dbZ/pmnj94Um9CIfsCcjixeY74zBs3cPPe?=
 =?us-ascii?Q?/P50A1K1AXK43iBDXCXZWjP4GUmylrUYvFLwfhpf2hxBv/AxPxtiTe6uq8lc?=
 =?us-ascii?Q?Li0C9xrF/vIQKC7jU8E/ArWMvZ+VAglERGjEtmj6gVEufL5EEq2hsOBu35Fb?=
 =?us-ascii?Q?yabclLsfKwiGzaiiDhpUY4iKTCJaCJ07XdrKU1i1/F7JxGQVo+EvkbUjm0uW?=
 =?us-ascii?Q?7kw0nIKLmE6/OvoEcwcFDT8DKIILsVQvk4obstZkxQ2PXvrJ3WGthR/BPT+0?=
 =?us-ascii?Q?FKSKzlQlyOL7nEWJjyG9+bbqQ17hwHjrOlvIXkK3Y2uDAYK3h7+OKu81HCfn?=
 =?us-ascii?Q?JwN5gkhJ8OrNiVu1pwWoDg9GHBkF7rzATAzkWa2uAM0v670wpJYXPQzbLjPz?=
 =?us-ascii?Q?OdBWbYXde/1lcxlf6VlWNvYOoZKAkqOcBPIrR031qpo4MFv5oSQ3rvrKEYej?=
 =?us-ascii?Q?hJbUj8QdW5J/tL6PIuEXP7Gs6VjoLPdaPBLwUVMyR/7YRcsqs1nEUGxDhfon?=
 =?us-ascii?Q?oKyRBzuow+nLlkX40eBba01wvz+BEGoAJj8olmNZVBU/Vk+peqHQzwFfQsXI?=
 =?us-ascii?Q?uqCDn8uqDFWFvwPKA8VvvLEm9Ikg6KHbyvlv2NIgGPyWKje/xpX1eFbuCcsy?=
 =?us-ascii?Q?L1g+LSR7gFxIyMiLBjDsVc94QCPwixLPmnZutTyEiauoYcvkbEnaxXccN14w?=
 =?us-ascii?Q?PgKoWD00LOTl4dkPN76DhFK4p9mb8CicAYVdqZ2ruzIKqT10XYw3b6nLhmoa?=
 =?us-ascii?Q?VojZTlV6xqF5tF0nJPBYmQbZzv0/CwoeJFzwgSvVVw29HRaP0ciqT2vvBFz6?=
 =?us-ascii?Q?8Pu8DXFJcpxqf6vdYiX9EtNUFtmtnoyJqqe+qPiLu1SiWR3R2MRp7Virn5Tf?=
 =?us-ascii?Q?CM2NWdOozxl+NMMfUZQ5V9EzYkg1ADdn9KOEI1s2W+szkI8ReNXvMHYlRYcJ?=
 =?us-ascii?Q?wmeTWB0BxF4=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB8218.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?kJQa3U2bWjH0jnY2rszMjfcwg+jtx3zWBUThF2Yo/LDlpDqbc/srzs0K/BFh?=
 =?us-ascii?Q?nW9OTpw0SV0PEKqtHjNIXFugZW8FCH3p1KN/fLPC+68w2qLEQxAmsunIxnZL?=
 =?us-ascii?Q?BzmAcm5DhPKYO8+ZrNSrvCp1waaOZvlnB9SNLI+Nnh0MV9Ypr8wbfj07suea?=
 =?us-ascii?Q?m98t4fnIJWj1I+dWTj2UFhGB9SpS6Zb2yP+DBmxl/nfR2Y2lsIIM8qPfnpfd?=
 =?us-ascii?Q?J5MPSyTOHGcJQUTKB4NMLpE0lT+j6WI82Ag1UJvmCYNk44Ui4x++BLRlmcI/?=
 =?us-ascii?Q?+5C2E6zHwe8smnrHpG3nBzRVXQst+j1T5iBjMNAvlpzJJMqvrKJGOsEkScI9?=
 =?us-ascii?Q?PuIfWo8XGZe6R0WQAItwDkyVAlAWvoRTIIaxyLHv9/Pj9LVIE7GWdUxZqf4X?=
 =?us-ascii?Q?MutDUezZyrocfEYqljqRcKJW/Vj2b3+GIceOwr/XdBwpCt3tgkXA3eaptSdD?=
 =?us-ascii?Q?ImQL4Usvbb1mbSZe/zxVNpCXbYOo7WZDOizN9LFieD1EDExWabSwZ9GD1PUk?=
 =?us-ascii?Q?vMPCNAeE9WJWGeAHw8WaCjTetTmh4KO/wKrsA5OGE1QBB3sCMhgE88KvkFZ9?=
 =?us-ascii?Q?BiYZIncVGRLiC7lyPo0buuxJ/N/hcRdpg4o76ZM86YZOTBjunTrlVq30DTNS?=
 =?us-ascii?Q?c6vXNj1pGIpZxtnNdMymmSHeEe8M4/Ln+kel8uHnZqOHozyjAL/TSzPR68TR?=
 =?us-ascii?Q?UJam6khulAEE/2yVSiLTHaK9KR5zq7bOPoSm77kf+Yg+1aMKTB44Uzqt8mJi?=
 =?us-ascii?Q?XJPqnHdOXHgPX9Sp7pDF+CGdCA/2p3jVMZemzXU1W/pNxlpCK8jekhCIo36K?=
 =?us-ascii?Q?ykFtXpmlSVMV+2hSxb8B1UlSU4peQ2ZozlWX8QtL7pGSOJHb3zHc1awzki04?=
 =?us-ascii?Q?+Racnpf+oLzSf8x9WnBtRrvQwOKKP5mPRw3vDOCZSgH2hRKubAaOrZCWAGy9?=
 =?us-ascii?Q?Q7BKiVqNx6NNP1Vu3XFK0soo3U8qqGLtcfBv4T5b18yHTpbpns/2LII9Zfzp?=
 =?us-ascii?Q?x/4LBedhXYEKST6odjtEyRlAEXpl5eBYSl01u5om+lHoj96n5c+s0FcGrj03?=
 =?us-ascii?Q?iBPSK+LOdIrf2XmjRKdYtzGljalUtbLHCY6o9Sb78A27TU9G7YQemLRtwfPq?=
 =?us-ascii?Q?THGEk79qfvzqZ2W+plnVuLmslkne7G7BLB0yfImNBhu6dnyHFCVOtBuX4TYN?=
 =?us-ascii?Q?kTjwyNUqKh8mrB9MXqszEOzWRtQ9NwXcCn9PF8/GuFoTSBWQNtC/eNAcZCEu?=
 =?us-ascii?Q?KoSKOiEM2013rNIjRPMJZIji5v4bKTfAPJE6z79aIefCjUSbmzQJFW+dYSJo?=
 =?us-ascii?Q?XDN+2ZpFoubOsmEaZ0zVxdducKqQOddzgerfHNApmBTFR1lC2LeifqFk7Okr?=
 =?us-ascii?Q?Lo1bOoCKmypGyx4qD2YqFCDq7U2SBdNhqdANmzp98aBjBTzffaCe1DreEa/c?=
 =?us-ascii?Q?Th7k0gG7ItshPzDUs8TR7OFiDMTi4zkf/IRAn4DTx6WkA0esma2hPnKpMD7s?=
 =?us-ascii?Q?BZsL1ek4g/lpEkjDdkXa0f8deQhsdjbw0btHd0GHgaifpGU0R0gSCE5p2V/U?=
 =?us-ascii?Q?Q02UYrbS74mz4p2GG9cg3M0OqbAcJAp2rhTxgBScgToZSHr65okyDXW/vfyj?=
 =?us-ascii?Q?TA=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	SevnHMxWYi/YgUyFyUUXnXO1OTeZiGmB9/6Kq1I9yNWLXBpubfxlqB3/qWVIO/3obnNRr+nRYebM9cwVrHetPJXopeVDGRbjtuFxMlpRBbm1ROJyto01AFy/Ne8WRN4gAsVnyjC+ILQd+P6b6LRQaHG9ftvtItiw3jspnI47vYX4ToJvHgvXzDNRjzt46fLww6NvEtEoy6aj26AvvdFZGEIRgNtVPg9i2124bcgKYsV9F1QyDsxn4ZUnYCXdbEUOFqNUgRXk5MZ2JrtOpTDdaAdCVyi42WoP8fZKcQ7ZH2vgAlfu+fmyZ7R+xZo7RZmd1iUl7vHwlRb3ddldtLmCWgD7s9+1fF/L7tNfDyEAGHwRwIa6YrCFx71ry2wWrD5u/HIgPV4OCGZ7/ybV7kTkLbkKoGWBn7x6abdPjm+qQq8D7s1HObG3Fcsi4YpAPWa1XQNS2cUlCLm8nf9QIlrT3y63IG2X1zdZe/T9j+f91UUBb25Sc56cMQQ2P0+huCPDgmarZHzuoeLthPj9epU6KPp9NA9QI6sxOf91u7myBJJa2qU3W8B7cCJZ+IMbmb9o86s65KTtnE/Xb+b2Vd01/EyBuZG54mxIxY4BkqzXyFQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b720f217-bc2c-4af5-ef40-08dd829508f0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB8218.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 18:31:16.9435
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YvXJXmLoMo/f2BuAyJwJi7L3Cfvf1OQgWx2PiLTQ/x5iRBEqrSDUZpABSwNjtdqk7aB2iSZpfThrmM1Pe49+VYnTqJdJLPm/NHtAkkPs1kc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB6716
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_10,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 malwarescore=0 phishscore=0
 suspectscore=0 mlxlogscore=999 adultscore=0 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2504070000
 definitions=main-2504230129
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDEyOSBTYWx0ZWRfX2A15M8APhnpv kfTS/Yxf+5FY68PzNJf2B6LOGMGr/nj3PmKjfNhgYKl9oAZu823OySuveBiwviR8IFto9TNHIff bfMLxK3WgTST7jxpzA3PY2PkWvlNLKUsBQPkwtNcCwa8HwsXs0lH1V2bsLznW3OEAsBfWn6f2Hh
 FdVANgIv28qFwGuDhmcwxOqF7HiHThIgtF8ERX5Eq8MyOAt2eA8BKj7t6PuJANL2V9OIxpFRCZu bYO4Jf8LxP9VwoxIprLLd/AtA21yqkrAYFywj6KaIFuAm9aE38TstByR5Yv5k2L8IEL62+M2hHS qAXOyVZW74c6lysDkMwMGnJnQGYw99c1iyIi45+emebgcQtqB0DGsGPkbNlwCQXVsov39X5BMyF dxRtov/X
X-Proofpoint-GUID: 3X9LE0LrFYJYaSLfE7WbKMgnuPtj0ud6
X-Proofpoint-ORIG-GUID: 3X9LE0LrFYJYaSLfE7WbKMgnuPtj0ud6

Lightweight guard region support has been extended in Linux 6.15,
permitting the use of these features for file-backed and read-only
mappings.

Update the description for these operations in the madvise manpage to
describe the changed behaviour.

Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
---
v2:
(all as per Alejandro :)
* Removed v prefixes on linux version numbers.
* Removed invalid blank line.
* Various style and layout fixups.

v1:
https://lore.kernel.org/all/20250317210653.273728-1-lorenzo.stoakes@oracle.com/

 man/man2/madvise.2 | 39 +++++++++++++++++++++++++++++----------
 1 file changed, 29 insertions(+), 10 deletions(-)

diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
index bd2b90b7a..be1ba17ae 100644
--- a/man/man2/madvise.2
+++ b/man/man2/madvise.2
@@ -697,9 +697,24 @@ is applied to regions
 containing pre-existing lightweight guard regions,
 they are left in place.
 .IP
-This operation is supported
-only for writable anonymous private mappings
-which have not been mlock'd.
+Prior to Linux 6.15,
+this operation was supported
+only for writable anonymous private mappings.
+Since Linux 6.15,
+both anonymous and file-backed mappings are supported,
+including read-only mappings.
+.IP
+The mapping must not be mlock'd,
+map hugetlb ranges,
+nor contain special mappings.
+For example,
+mappings marked with kernel-internal flags such as
+.B VM_PFNMAP
+or
+.BR VM_IO ,
+or secret memory regions created using
+.BR memfd_secret (2).
+.IP
 An
 .B EINVAL
 error is returned if it is attempted on any other kind of mapping.
@@ -756,19 +771,23 @@ and
 .IP
 All mappings in the range
 other than lightweight guard regions
-are left in place
-(including mlock'd mappings).
-The operation is,
-however,
-valid only for writable anonymous private mappings,
+are left in place.
+The operation is supported on those mappings
+permitted by
+.B MADV_GUARD_INSTALL
+in addition to mlock()'d mappings,
 returning an
 .B EINVAL
 error otherwise.
 .IP
 When lightweight guard regions are removed,
 they act as empty regions of the containing mapping.
-Since only writable anonymous private mappings are supported,
-they therefore become zero-fill-on-demand pages.
+Therefore,
+anonymous private mappings become
+zero-fill-on-demand pages,
+and file-backed mappings are repopulated with the
+memory contents from the up-to-date contents of the
+underlying mapped file.
 .IP
 If any transparent huge pages are encountered in the operation,
 they are left in place.
--
2.49.0

