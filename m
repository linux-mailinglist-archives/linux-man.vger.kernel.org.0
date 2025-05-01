Return-Path: <linux-man+bounces-2830-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F90AA5E9D
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 14:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 011543A7BC1
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 12:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28DCE3D6F;
	Thu,  1 May 2025 12:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="JvtUg6xD";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="gX5sfHsK"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6213D6A
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 12:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746103570; cv=fail; b=KEZTNQKOYPlU1fNvap0eaZYldk5cX4LMK9GbV3fa2Ylv6KybvUzd39CUSzq6t9QeR9rsYwtCfTzVJ2R+S5vwHt8cX7xecDCT3+liYwXX2D1iF+p+9yCT/4k8CUQXHAtQkdKhKwdMiap8ttvaTCjmMpnHSGLwwN4XZD0RKNVq8c0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746103570; c=relaxed/simple;
	bh=TYTsqtbvQo0ed8WE0StZDoRVLkArsaBppkX0FMJ4yjA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=SWEZepp/9Yd26IHGxouKQStIDM9VJrZ3MaImNgLXERAGNZ6MsKv5r9ZiujfLj3lpMP45GJ/NYArRu8FmwfcTxjOGKaGzoqi7MHBo0n2b2srTA4n8YSNvlQ4is2SoMTX7N7s1dcyeY3gUlUKbkWfzKlYleI5+8rKMK6mjMBboxe4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=JvtUg6xD; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=gX5sfHsK; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5418fvLl007447;
	Thu, 1 May 2025 12:45:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2025-04-25; bh=omO2OQCwiu+DTvPIpo
	V0v5B94+LQAmOgess8WFuzFtI=; b=JvtUg6xDtqx1CiRS9IjRul0Ijx/uX4Vla1
	ztt1o0bkoXvfMp9x9DwltM5alpBJhKhr2C+4OpyZVuvGxp0nZ5IIWODX6Yj6HEJI
	r5dpNjlfiULJmVKu36pRRlAY0xmUDVhct68LuFFjQuzfTiusPPizGV0UXPQXeQHG
	yXjOiJxQAUvgbYx9Ovumy9pd2DDhXkyBPiR3V2IbeD+slL7CweVivRSkyx8aBa+0
	B1Pn0xh7eFxSQU0zO7JAWZYWgjlqEOoAaU/0Yjj7xzEWKrO1JBrZWeHt+B1hRzXY
	bTnM0fXFCoJHe4u+yALMRR2Gs9I1Q/0R5V5c/lphPdX0t+7Ya/Ug==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 46b6umax94-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 May 2025 12:45:52 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 541AFIrR023734;
	Thu, 1 May 2025 12:45:51 GMT
Received: from cy4pr05cu001.outbound.protection.outlook.com (mail-westcentralusazlp17010001.outbound.protection.outlook.com [40.93.6.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 468nxjrc2s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 May 2025 12:45:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T+Pzp9ScDL5AoUiOw7DAIBNS4/M9mRMHxG8fzSsb+QTzcSfhxtXJHbzdSCcNeaXv7lmwSQHqWcs6k5YQkGSWkGYlnWdmNcpG9YO7n4I7kHm2AJeh4XPzQI5Br+QQ3gfaslrK/MDN9H65loyy/CIuB5mNFuXUUjxwbih5WtDqWqMJIyC2xakymrGlkGyxyRyZuMTDYhcfiIDW1twF41TGvtkqa7piMzS1HRcHCXUe7hYVzMPQLZ2sBGxekx4Gp8l9IwGxlKOYdXmU+upBwpVqcUbwSs5vCAcX0TtUL/h8wV5OmN7wwRhs0dGuckjUZxcnfjHqlAITXTE7wJUK1Goh6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=omO2OQCwiu+DTvPIpoV0v5B94+LQAmOgess8WFuzFtI=;
 b=u0fK/mtIMBQdv70OoDd0dAXUFQ/0Z3Cp1Xo57i14CfKLXnfmhHjw7Hg3lk5bfh2xdKeGJXdn8/H5nIO2Po4KnfUMr4NGYS3UrJ1U9ghwFwrGevVRbW3/AAeV0kMW0+NhjS6pqIOEVbhHmpvohDRnGtjOKAPwlolmzRkMf7fA4rRdt8HVqaFsB/yp4rjwyBBs+9Hdalz6PP4DMu+IR9pGfFccSQ8nCFgIhOEYVrO5UIGhsOITBydtDghVYtEPSk4Td00BbIqDiD1l1N2dAi8n+frrxQrsfCexNyD3gDgTcqafqATB5a9jJtqlTKJHa1EOt8kcMgS+MO32YSk7je3F2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=omO2OQCwiu+DTvPIpoV0v5B94+LQAmOgess8WFuzFtI=;
 b=gX5sfHsKPczdgeZPvaXbUiUsje6vZ/VetWfrL5CiLYWGr4A2ojVxxO/V6+yGtD8GiP7oXPerF0tuy2OQ49Za4rRllkAXRYatRph5eSy215PkOFMgzPdAJRMUgP8QQRY94DTal56/bRm1p7fAqBOVmQdu0q3Z4YN5b1qw/kuNJ2A=
Received: from DM4PR10MB8218.namprd10.prod.outlook.com (2603:10b6:8:1cc::16)
 by SN7PR10MB6956.namprd10.prod.outlook.com (2603:10b6:806:34a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Thu, 1 May
 2025 12:45:47 +0000
Received: from DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2]) by DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2%5]) with mapi id 15.20.8699.022; Thu, 1 May 2025
 12:45:47 +0000
Date: Thu, 1 May 2025 13:45:45 +0100
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH v2] madvise.2: update MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <88575ee7-1c3f-488b-835d-d8e6a456587d@lucifer.local>
References: <20250423183105.116978-1-lorenzo.stoakes@oracle.com>
 <3472d46d-3a93-4de3-8ec4-14f972d06da3@lucifer.local>
 <xj5qzwiz6rknq46iyxit6plkpemt6ch5foiskept37xcjhuf3a@vdpgwbdiyugk>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xj5qzwiz6rknq46iyxit6plkpemt6ch5foiskept37xcjhuf3a@vdpgwbdiyugk>
X-ClientProxiedBy: LO4P123CA0367.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18e::12) To DM4PR10MB8218.namprd10.prod.outlook.com
 (2603:10b6:8:1cc::16)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB8218:EE_|SN7PR10MB6956:EE_
X-MS-Office365-Filtering-Correlation-Id: 27f6349f-aca4-4340-a360-08dd88ae18a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?j1pGx9Oh3KO+DoeLccoJqLZnF3YSWyoaOdI3GuQ4yUpyBjVegyl5gAjyiOFh?=
 =?us-ascii?Q?GMzdcNorlZ+x302HWVjcD+jm76RMqI0mb0jE9RtxmS1fCphKSVRe0oUt54FZ?=
 =?us-ascii?Q?ffS6SscdV2caFgv71jif1uq1tsvHX/iE8qcVH/H9WehwNSA6iHOiCJ2gqk2t?=
 =?us-ascii?Q?oB9uIj52IHBISr65ol7uMMSjAdmcVRH5UADIUBmem56SLdWM0v0Rq1bVFw3w?=
 =?us-ascii?Q?GV1drpXnkYojN/d9Fwns5xCuOykIpJ3eBfh6pS02aubfRo0A6UDazj/qKHK0?=
 =?us-ascii?Q?3DRq2wDEcxyJKcc2PBrisrfgAE9YCK2yDjK88A8SNCtb8NGXX3FUgRQGwOGr?=
 =?us-ascii?Q?m2+Q/8i1Z7X7FGEuTxxEymsUT5bxovqAbi55K47KTGM53cm30AsFVLNTiVSH?=
 =?us-ascii?Q?qnn9vruUmoWs8HcTtEsMi6HpdjOFE1tjx53hByZjsENKrkPimH4VLGSKr0uu?=
 =?us-ascii?Q?1Ybbk9L/NxWtDLP9r7KG19MipAsv/DFOFYnE2W2InLkyi2Fxe7UXC2yDLrs2?=
 =?us-ascii?Q?zaqlG2yRE2lYcsBOfeOh99Ju2TPRAo6GzXaTpCRTilOlEuwFf6pL2rMzNHBg?=
 =?us-ascii?Q?F+9yOjlBjzKQtySWfk9527UF0yHSRoNeTV/JYpBzL1ISXGICkBczfVVMTrQg?=
 =?us-ascii?Q?2gQQNbxsVsiAGFN2cW2a68xarSvXa61e9df5lPWycPN79Y7qWYLRPRo7dqRx?=
 =?us-ascii?Q?p8JaV5gw8kHcbaGlFIUcXshVcXB3M8jfzUzWm93wBX6u1CY1H7QyfMtbE3Bu?=
 =?us-ascii?Q?Xr2d6gbdmF+Cd0ri8n7WzM2I73UaaE4ObSzDFt261WcxRg+e/eLfHIa2Nt1C?=
 =?us-ascii?Q?hcJq0ryXMcSR2GUI8tHkob+GGrF3FbgAbI7ipCTY6VYW2Ic8SG1VE5C0bg9i?=
 =?us-ascii?Q?fhZCG3tesPPu1+vtkhsEBOmfO6ALFDVtSVihRfOgS//ZEv/PrK0JFnRaLk5k?=
 =?us-ascii?Q?V5+gYbf+dWW6wteJKGCXALSIORP15EZTjMJOOnY9jbefeok9esS0+/QEbffV?=
 =?us-ascii?Q?PHCwKfA/OGUz6hwnMM3C5G/gfwTv+X5vhY7yLmxyBd7rtbka3PPHEhFDqrgQ?=
 =?us-ascii?Q?fVQDCGyj6EBLjRNkBNegh0LNj41R+96BxFf0pbrCmZ9r+0aCEheWw2yC75Sy?=
 =?us-ascii?Q?5Zbi01tiTkSeGdGOKgpGIRNxG2oMomCeyy6Zbvh9uOtN/fxrC8RiCFHekv/X?=
 =?us-ascii?Q?AAV4ELPXF+KeexfjC+iOWg7WcNABJju3g2d9zbqKg2O+xr2Jl0z0UZbcZ5fJ?=
 =?us-ascii?Q?yhYnDCqmChTOt+XGoJnD/0vsE2/Y8FEvUHm55s8KxYZqGd9D3kLY0qrS9eUy?=
 =?us-ascii?Q?piA55aQaIkAEgZHtbgcAHQxizmUKHAtasy4jFZ/MRkr7A6PTab7rG6ME7yEw?=
 =?us-ascii?Q?i67q8EE=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB8218.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?100Vy7HLNrDzB7274xWx8zZEswuc0pnzeMwQs2/xIGx7CMNfIL7fOA6CsqRT?=
 =?us-ascii?Q?Z3Q3EJ10XAnyjoIQOhbFeIx8CqF6samQ5ehZr6Xtmz1TjhEFPOCjVfuqfAq/?=
 =?us-ascii?Q?TSmRdsYNQlwSdxJjYR5oF/l6h79iyWVOH01YCdBKcU4W2PhU9JtHIxmragZx?=
 =?us-ascii?Q?s6oJSJJiZybAJxmuOsJrG3uIZDaxhd3niAM/SrRJbtaQwtBHtqhAUn8eF6yR?=
 =?us-ascii?Q?cMqWJXigPHVr+Y4Jwhh0x/3rKojAKp7s/y7lf0TnWZCfKZl2Zo15AP8HZCD7?=
 =?us-ascii?Q?CEwLYMaamKbnqqpwa7dbK0RodUTLNoRS986YWvpMnWGr4e9rAYRxSm4/GJe/?=
 =?us-ascii?Q?oU30mSAxmkVow/smPrQ4o48JHi9UiFRcbzo+ip1wcKQsGEaK4mbe4Dix5qv0?=
 =?us-ascii?Q?Ri5NDMH028jbR9FpJP9qdM/DDbp23opPEIqIW9XgVFoB9pJREoexEadMnkkS?=
 =?us-ascii?Q?yCuflJSPa/7lDtlyoWdge1cCQ60wkuA61qs8XcZNWDnRAXcgWCa6veJhBvNR?=
 =?us-ascii?Q?CDWSvQHHyOHwrnpd4h15aEyO3l/Y4LdpU9VPcxFEsXGmiaqAsTpjk8xb8Sw2?=
 =?us-ascii?Q?KrR7KNtXFeuBBv0mLY9L3cDPVBDsy7mgFU2r+Stk1aKIbmkB77kNjNChi1FO?=
 =?us-ascii?Q?J1UjbdHd27wjOUOlxF0Yes4zxG7Y6TjxHCHBk0N5uFVrqStm1zpSsVNqLG5V?=
 =?us-ascii?Q?xYU6rzG2jwLFdGksR7cBCXsdHzFHiV78FwZgTjItRIjkKzztzhYKmGCMEf3m?=
 =?us-ascii?Q?T1ZnCY6Q4b9s+aZi6GkQyfKGwhvVkAUVaTXLfO2SJF2EC7UZxLUbomOXVyXC?=
 =?us-ascii?Q?A1wWIQcon9CPhBSVZKOF587RCPHIn1Z2JozBUGSp093oyVKArFXV+fSJ6hh+?=
 =?us-ascii?Q?ESafBv01yOngD2gTJLkKGHVKib16VMUKvFmhPji69GtYK5m1UzpoSVvR/Kjh?=
 =?us-ascii?Q?SLBkWZGlBW2aP4LMS2XYoWJieM1bsp0nEu7wLKurUGOdUd+hjukppQFQ/34l?=
 =?us-ascii?Q?Lbpq17WtwLw0xU5cx4C3Iw97s2ccOM3epXPlXbq/1Z3XYssU2kZ7oxW+MNAk?=
 =?us-ascii?Q?MI4L0ZgjWFn6C8UBokx3sunUyhsI/J7Er2/SPWbpL9Xckn4FRS67pkih2PkT?=
 =?us-ascii?Q?pk8FTmleMyjp3zlsqwTIwTdb7jpeE9zF1ehPShNDf8rvAh6n7O9mUW3FhE2u?=
 =?us-ascii?Q?sJj9EzXwXAm2F+VHitKVVSz6x8K0ljBhGhYQjlC9hh5kR6rH/cIhBb6qbitm?=
 =?us-ascii?Q?nfgy89J5lEZsKIDz2ROEZ7/lc/m9ehVOiUYZXVjvec6dGH00i7agiljZCI0Z?=
 =?us-ascii?Q?7iuOY/tA8Ifi7rf1cqH8Rz6Oxls1BMiozkCFWMn4tbtxa1ntoQ0M7eouDoDp?=
 =?us-ascii?Q?w8PpcUuhURGN8yv18I3w1xxVIy1fF8v48MU8f4dOaOv8nngmPasz+wS/zhYh?=
 =?us-ascii?Q?MjdUlgirA8Ep+gyVAHz7hpeQAbrW0eE/ZH6oPEXCRzFa/MJgxkeLAcrD1B2E?=
 =?us-ascii?Q?NoEOR8r2K11k0HUsu+pAXt6sAubM3e1XLVMWOW+ve+287fyfoCMMIWeq5HoP?=
 =?us-ascii?Q?aX4Wk0GUzD/Z0LBmor0tw+7olqd4qd3wA0nSH9EJ/bYY4MKFIfDN8KIw6Jst?=
 =?us-ascii?Q?7w=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	yRU1o9huBlBZVEhlyrtuwG/XVfXsr+gPUz5LY19deRwpEVhdyTspr78rA/3P4h+11WtIE4tEainZncLu3uoVI3xAF7MiM2tUaxj4/2AuKNt3mPRAuZ3tnbMXiHGldZwVoWKoqNWZJMNA/1uLaZepTUFFZEaCXYpO3NuN0juH+HPYpun/UA/cquTKo8gnA/b+w7WPnHcb+8WpwWDPv/PqH0AVI8a3slaJc2WiBUPdT0nyKEFUR5r1WO+oQb0+9sgdlPqkJFIxr7YeAXXV63Z2OE/KljfIl/1WQozCq21VL741phcI80HeO+hy9s+Oea41MA59U5dj5tXjaMTpBes5jcCgcKv2ej0g8CadQJl5tusvulm/qkomDgfmYTXUJw8KrxyveitJSWYHvA3lWGBjCbhKeO+2BxMGmTCAl/T160THEIo/FHLGSzRhT2/uj+q/8QseFclYHsT3K1MCpmhFJIVyEjETSetDivXRAMk96W4riGWD50RlzEDcxCcDPvmqXnL3bQ+OnVdMtGb9Lfb0Nr8coGIbKZeMherlCDxyr2LM5/oGdUROES7db8fxtU/T4ncMoNfNw8U2AZkCJMaj3SbpK4NSAPIOx61FURZYyaM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f6349f-aca4-4340-a360-08dd88ae18a2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB8218.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2025 12:45:47.6880
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yK++o6lo3dOZ7EMSahoswRfC32SGzBqiyqN8mfn19Iu9EIdC3kHqTB2uDPdHnBrxJfVo+hHTATn8DKM5vkAZ21wtiHfO7hdu+r/gKp/MaPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6956
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 suspectscore=0 spamscore=0 adultscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2504070000 definitions=main-2505010095
X-Authority-Analysis: v=2.4 cv=dfSA3WXe c=1 sm=1 tr=0 ts=68136d00 b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=MEjK9-KKAAAA:8 a=ZFPZ0vW9wo4m8syMfsoA:9 a=CjuIK1q_8ugA:10 a=wDCLW6yMUrMVbYbmd6V3:22 cc=ntf awl=host:13130
X-Proofpoint-GUID: tXBVDpD-2I4xhP7JzrisyxuKi0484ajn
X-Proofpoint-ORIG-GUID: tXBVDpD-2I4xhP7JzrisyxuKi0484ajn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAxMDA5NSBTYWx0ZWRfXyYGT4Ggdwxti 1F55gdoq/kZZt6KywoG0V0KoVnEbS7dy5O8fh6v03/8iG6emJhjWbwQE1BLeMiVkcxpP2cTSwk+ 82wj67AMA+VlhhdAA/XwgsZezUcjE02zGqp/jSpKpM2TAgmT2DC+fqZhzyQWPlTxZ6agNC790IV
 GF3g8oNprJ4lUnrU+7LhKukHrOtvcGhR9jytORKiSsvoLI9CZ1NT4HasXYUoVLrPoZc/sEqlh0W Rx/gNwjGSoDDz/fqaleeDtogw/Sz2ydL4qMGrIY9AM+o7OBW8P2K7hFauZo+7Rd92rp6/UyFAiR EBZzLfFeIPWqowxMy/jTbyLFzEOjQLINB5EoCKJsMlpCvc5crKKjRePe+lmpgc7AOp6fqjP+M28
 xTNdKv9ESj74igBGmxthJeVaV5H48r+7+5MKJTzv0KzyhzaAnDSEfgCbeyGZ5c2eTo2s0Uab

On Thu, May 01, 2025 at 01:14:59PM +0200, Alejandro Colomar wrote:
> Hey Lorenzo!
>
> On Thu, May 01, 2025 at 10:53:51AM +0100, Lorenzo Stoakes wrote:
> > Hey Alejandro,
> >
> > Just a gentle ping on this :) Let me know if you need me to do anything
> > else on this!
>
> Sorry for being slow; I was on a family trip.  :-)

Ah no worries at all obviously, hope you had a great time! :)

>
>
> I've applied your patch.  It was all good.  I've only slightly tweaked
> the commit message subject line:
>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=9ee66d0b01dfc797c57b4735fd48c138f97a66d2>
>
> 	man/man2/madvise.2: Update MADV_GUARD_INSTALL, MADV_GUARD_REMOVE for Linux 6.15
>
> I added the info that it's about Linux 6.15, to see it without having to
> read the entire message, and also used the full path of the page (I
> changed that recently for all commits).  (Plus also start with uppercase
> after the ':'.)

Perfect thanks so much! And those changes sound fine!

>
> > Cheers, Lorenzo
>
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

Cheers, Lorenzo

