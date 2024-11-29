Return-Path: <linux-man+bounces-2085-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AAB9DEA15
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 17:00:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6CE7EB23426
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 16:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ACD41E511;
	Fri, 29 Nov 2024 16:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="V66cqa3q";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="wdRMZubt"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E996F305
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 16:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732896020; cv=fail; b=FyOOYZxKMYwt0GnvG9gj17/oZTYj4B0+emydAhcfyCUjCoZXCO+NdXx/93h3U7YtMbVXNhE/4dayHaT9gF/q3CzPFu+Hl/IAmy8QxPF16gcTUprwPYpub13c85p3EYchZ6wu/ml9JsX7bPeBQSXdm+U0uuMRAeSwOEp12awyx/I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732896020; c=relaxed/simple;
	bh=GqlnCWSxKHsx/u02Z0MPTPKKtLk4b38Rjn+pXeE+5ic=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=CUnh2FL54mUmpQkE3tLQ+0S1JZkmYA5gcAzK6nCEPUxDTiQPD1vm5PPCxUdaSAD8SIqEKUQBvMF68vIWrFiwNNqNOrcChUO5gZusEY8mK2A8cE11+AxJrpqLPwuGMHUOzIfbaO/MdPdLVC19H5YhITywaUXiPcydiOoXTKiIacU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=V66cqa3q; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=wdRMZubt; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ATEMcZ4001014;
	Fri, 29 Nov 2024 15:59:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=GqlnCWSxKHsx/u02
	Z0MPTPKKtLk4b38Rjn+pXeE+5ic=; b=V66cqa3q9hwNDj2LbPvA4SQWzLcgEJ/I
	oC9KQvN60mCEvnfnhC3J8DQFVWccBSHvaR0e1doMPeOrX8uICURMRR3wPs+KvEnH
	7thFqBfkvGIm5zVyiabEaDyWtlS303A+Yhka8MgBvdCDV2EKXDSz39DMKWNX19fb
	yvwAZz8PryjRhAPAMFbncbZTpwxHeNtXCRvia6Tw/FAdH3m4D9R62wsnpvIzaQRj
	3PEFGmeWhqIm2MecCvchC2AOMccnXzcKnMXoj0NtyZzkMAVoakoY0gSqQlAOEf4r
	++tgEo0aCzEqNV/hFcL6Q4l2lxtWLrKzn6QnqqtuSGaPLhNHCjjs8w==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4366xybhrh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 15:59:52 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4ATFIjMZ001479;
	Fri, 29 Nov 2024 15:59:52 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 436701j48c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 15:59:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FOAwVK+swBGHuwQ3Hvm/M6TcCTo84PryBdpoEhCzvaiBAsX05+lj/EUDbAIlL+TV/sCpfnDXflAQxnqgo3mNZFtUsgF+gv5RHIbwnpVjX8zTrPM3cyOcYHCq0MvtukZkHOtvKOLfha2fzIaiUehETfofVB3AoebeKV6xoFR/cA3koFN3JCcvFjhT7xl+sCASNVpFg02qvd20yxvtBCrUSEs6PKc3KWb5pBmQJVhb0S22vfciEaMKmDOusevVNtN/ZHTEsZzfdtKfNhcus32rg5hihUBQACsjHs2zR70HldN7GpuoO/MUDXbplqeBlx9AfOKhiS6eF/XAeh32dkJwyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GqlnCWSxKHsx/u02Z0MPTPKKtLk4b38Rjn+pXeE+5ic=;
 b=OkgtJCy4fPib8j7nVxdFfLlMlT9/NHNurhVga2zUc6MzWHHwPATkat5sfyXawItharyjFt1h+q/eu8mECKGjhlWEiSFGDzqro/Mv6a8UA3jRA44I7s7evWQhiueZ/culzyDcNw+4oBqzuH+FZ6y3gqrSS76sekt73WnLQPM/s1uFMH23jCuv966otvJ5V7i4ls8HvhRFSpV5NEgdiPKRGoNdYOyOsw8B7kXO5JzYqQuodoqYCNiD7Gefxwvj4AFGOFyTt6jrFh8rUtQoAjm8g8vrg7WivTb8E6hUPQxVt03Bsz4F/ycI63jkk5QRNnblI4svx0ydagNgOO9adSsN2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GqlnCWSxKHsx/u02Z0MPTPKKtLk4b38Rjn+pXeE+5ic=;
 b=wdRMZubtmTTYy+WZmgfEeiBg3xgvGn9e9ax05V226d4udf3kPIqc2owIuALYnsFtbqsjCDHoEqn4ULORZh0NtzqZ/fL4Ft8T0ZAd4FCOwTDSPZSuOes7tmE04tQNgncD72oRN1m93HV3MKyHZOsXDw0lwU9e7asi5sXZyBiB1ZM=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by DS7PR10MB7299.namprd10.prod.outlook.com (2603:10b6:8:ea::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8207.14; Fri, 29 Nov 2024 15:59:49 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 15:59:49 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: [PATCH man-pages v2] madvise.2: add MADV_GUARD_INSTALL, MADV_GUARD_REMOVE description
Date: Fri, 29 Nov 2024 15:59:43 +0000
Message-ID: <20241129155943.85215-1-lorenzo.stoakes@oracle.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0423.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::27) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|DS7PR10MB7299:EE_
X-MS-Office365-Filtering-Correlation-Id: 22cc197a-2774-4f87-81a5-08dd108eda72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?z3EHSKTfx4HW2jTxpAftGa4ySugG9HontlxKYSo1zUmrGVSzq7viPuxMHs+L?=
 =?us-ascii?Q?98bncpHq04CNc4T+CnECv8szgdl/NJVnvlMIHlMyhkLq0UCLv7WEAQvmLrrE?=
 =?us-ascii?Q?bSK0taUNs7vinzeLLBV55depCD9tLm8lbzCcO5X0yKo538yM0SWfog4/Nl8H?=
 =?us-ascii?Q?Bni0kESiZ8DM0Nm5cNkv180+LZqVl52EVlBmzGXfS+86DvNRCIq/C94r36Br?=
 =?us-ascii?Q?/tv0tmAMPtK8bfkUcvF0gm9hbxTopHaglFbdteG1pw+fXTGzuQlG93mRvOZg?=
 =?us-ascii?Q?7FeakNkKZAcYxB8Vo9aX3SAAUxePXfnqeFNKCLeab68iFLEpOPGdx4yGHlxb?=
 =?us-ascii?Q?FKnBpvcLaSuYNDDfOaVqf8m0+9wPYRtVVCFA32x8uZrlcwWfcn2iF831UFxf?=
 =?us-ascii?Q?kZaFBhdGLM35i5b/O6kU+npbX99wPPt7WIT5qXzLKJDHaj3DIfDgx1rK4jC1?=
 =?us-ascii?Q?LSmh2dmQqjn7yijF5RnAlJA1UJu1yx20HApjXmzoGkPnvIas/G3IDtAAkf86?=
 =?us-ascii?Q?jWnZd5ZuwCf/MH4kNUg68AUIvF7IdLBjGYn4n0gHKK7Xw8NLdyhZppkWJaC0?=
 =?us-ascii?Q?2/MMSFXRjThMl922ojv65uJ7Ipn2GZ3F/vNhTHVlFrHuEmdXwBkVneJSkgxs?=
 =?us-ascii?Q?yrEN10A6uvVrkWHf462T0bugdwyfPOlBltIt1L1nUTtoxoFli7684Mk/mRHv?=
 =?us-ascii?Q?Oj6Pp7oaGPBTAkgwxxdngVhqWPXsgu+uCdPVOLOOw2Cf5XejacY2cBcONzmZ?=
 =?us-ascii?Q?vQ+Vg5G3wpFH8vJKt56CmQKTSGwGzI44BCFwMOKc1a75xkLktMf1j75QZqgv?=
 =?us-ascii?Q?IJ7l542hgFn2uk9QfkiDKZOljZ7cCMxjvBUYVpV8VPkyJ709YClcDaiarwka?=
 =?us-ascii?Q?pkdbwi/6lFkZ06lYq8P+YECvvNMoXrxYiLYTemGGta+06UMiv4ZF43JJt6A8?=
 =?us-ascii?Q?iU+NhbYrzd5EWRgDlrJNToD0ghDoaXywp3mYuBfpgu1pVH3vHo+3xeVnFi1D?=
 =?us-ascii?Q?AFKYHKOiGl2iUl4WAmV5ULMrK15ZsaXAn+2g/+fcJzmwx4BHGi9as/SmRE52?=
 =?us-ascii?Q?diFjFGrvPT7ImgP+gGGmN3UKk/K7b8/e+/+hxORhpqqPFkKKWQJpYmvcJsaC?=
 =?us-ascii?Q?GkIuO63f3nfPBxkwj74Nnd334kDvkYXNL+Bmvu/ZGEBakEuzlRoaSGgex5O5?=
 =?us-ascii?Q?ZsuJTS8y9/Mqe816B4ioJFn5j1FOayEdL7Q6jO4eFgJOpfAkMDIkIEqc1vdw?=
 =?us-ascii?Q?huynUVbLjRlF99X3umMAbS8eVLTBftIe1dpM0YSxMMlcePUwYTAv2Ku6qQ/S?=
 =?us-ascii?Q?1pKwn8Rk7hz33khfoVzEXzWgns94qaL/jSL+7GBgPUF/EtLuV7s7YBTSIzvC?=
 =?us-ascii?Q?tpp2+eo=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?4DSdsvUfMTGah70yqWTvqaQmg9Wiy3RkhqunjF9MG4LsWTifvHgLLvmOMDLF?=
 =?us-ascii?Q?5hvqrbwDbDbwqUu8ueFi1TRYXXDJFAfJjPmBMLKYy1TiVr+FrosOJjOMRgyy?=
 =?us-ascii?Q?GQQ4ayqXj0ExKW5NTGHIZy8Gb/hNXWsgdUG4zDPIl9cMnHh7Pa55b5NnvzM1?=
 =?us-ascii?Q?yftMgaq1irwO3q9pmAEo5a3l4j4HIxl9qOKBvfQYMv3a6CUI0AG8z/Tp5Pid?=
 =?us-ascii?Q?To0KluLbfqqXjwU+7fe0jGeFh3smAV930GaxSQV+SGNKFmVoPWld9rij2y/r?=
 =?us-ascii?Q?K756Ggr8PaxJ9sI9r7l2MdclpG6/Hw7myQbmjLKijoPLL1stLsxPkcpoUKrx?=
 =?us-ascii?Q?oJFR4oYO1QyytlikElj1tjvT3BxFIztpNVjx+3dsqh5G2h9Q4I5w4SAev5tw?=
 =?us-ascii?Q?t3kFwesyyB2OqdVYd5+PXT5opzlipHfXK1D/u6K0g8rbRJeAUmo0k4gZkdA8?=
 =?us-ascii?Q?gePZh9Z2JffFoNwXz7uP7GAJK11/t/l1G6AMJqB+/eZVjzEaKa7dqI77yoN4?=
 =?us-ascii?Q?e0N/TuPmMR6N85svsxrdFSedpo4W7zc+3pMje/9Ro9THpodUetCXkncIBdUm?=
 =?us-ascii?Q?XrSuxDGjfBERM9FLuvoFMQSdvd+aPcV1wHKLVifeLV+p98JXX5rQ3tcAsw4E?=
 =?us-ascii?Q?jd8cX+gT1pxlZd6dr6yicrh1/HPVv+0X0gYR3ElSLUsyQzwdfjHOyQz2FzGN?=
 =?us-ascii?Q?meiax7F+f419H7mVTuLDaE8pz6eF5rBdY3a5jv5kbzJJbG+3HCptt+TkyJkw?=
 =?us-ascii?Q?oxqtpkEq1SBHB6qdfA8Q45txadjhD1TfXUj144iv5bNhuSM9bNmpVPq9tARI?=
 =?us-ascii?Q?9DlQUcY7X8zCnUDxPNLu5YtArmTFTCvGRBerZcjATMyLs7+sub0hg/9NOdyW?=
 =?us-ascii?Q?rC6+9ldT9RjUDdxTbk4llDlUdP75ldaXxS/d5WsZUws9sFdsyFW3DTmFeFGR?=
 =?us-ascii?Q?b8W+y63gmyfqmGcm3PU3qPO8Wn7iWVJbf7NwJjOzWtDIU0HDgm4vvlKxgc8D?=
 =?us-ascii?Q?1yOlzuEYvxqXVYKYaPiALj+U7T8h3eNIaLoNhl5L5KMCakiRFh9a0dkMDDdE?=
 =?us-ascii?Q?aqujiVlAB6ddXx8OUSlk/X46CfGPJ9NE1M38eEkv1xZrqL6qs2XGzkJ62GrD?=
 =?us-ascii?Q?8GMp6kosOVBUjDaxqqj1DywofhKyckqzz9CVEUH7c1CEC0o54X68dwIOzOuV?=
 =?us-ascii?Q?eJFSGwoAZlr52LaunVI871V/XTnwohicAcROdiwTHMrbH/SzZByIPkYDx/OA?=
 =?us-ascii?Q?SFxvym1Vd0JABP8KnMndmHBqurGnCGryiPDAlDiVgDCTbzk+3O6M1J512ank?=
 =?us-ascii?Q?EXci+c8lqbEuWuPvGEsFq2rW2t7S3njZGpkXceKHIermXD8a2M215sL0WTLY?=
 =?us-ascii?Q?7KNxzga/5/zXni7rf4U9yXHv4z8T9fuhgEYnb+HaRMinKIr4zRshWvu/UoBu?=
 =?us-ascii?Q?Y2QHww8rQCPyv/qcJz2OPldWnbxsitWHwucZoli033ukwJEcOdGSor7dkYOK?=
 =?us-ascii?Q?2Md7hogT8DgfSZuJWhvRv9EYJ613ZIhilasmGgLjxSadNKPNgRxJuojRRUQE?=
 =?us-ascii?Q?gR18HRKM20MPSorkr5G0M+yWgBPNVfMfYEXzbNv3A1Cn11TCOVnkw5TWMqOA?=
 =?us-ascii?Q?Wg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	eukvyOl8RbcfIENFADbfPuiabSeRFtUFZhnzSplrGG+g1Qdmt76pTd1vVcK1cwvwDpT4rlXNzgYIU9Z02MLx2xxal8pMfSvXDtx2DXXU3GN4W15wae6F9BaNa2WXtJwdKNokifVsFajQsrJ5Gs82rcuQ/mqu48TPpWK2zKeFv5/xDnOTFppFh4wgp7XbIVhERFCJh2PKasKi13DTyHB/BiQXFV8Mo9SwQFG7YbO/HAvYx6xlNq8fRJyEL2JeisAarT71KUnelx8wUn5dn0AK2cBxVeShaP2LU6zjpQJEuPinkOsAnRV8rqsGrs/R9b6wIcoyB9grIQ2Tmw51kcHRm0kd2y0dPsuc5NxqNOL+Oio0sDgaH/loVPkjYgg2H3V1XND/bpl4Wpn2+Q84MEpJ4hwbyuxEYcPpPCwcOgfLowhZhWRh94oSJ0M7Gzvmc3kRu/BD1qP0zEpS4Cs/UVJSlFrSrIX9UdsDE2ukzmhoDLzrAqDLwheiZ+NE8Sqqo12X8vhGNZfWMEml9pBNLh/e6sUFvAyF0IDKPQMyQtfccYIZ2j9b24DN4IZTh4TNpA2QUVQLNwM4vz3KK7JzLgl0KLIOvKWVDSnJAiNFsS8B08w=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22cc197a-2774-4f87-81a5-08dd108eda72
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 15:59:49.5364
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RONrJhpx0DybKiIBBbwuqkkHAbCG/0kLcX7Tord7kmYdf9rd+/AAO/NJ/eU9b/VxudTRZoDG+BiM87+bKoxsCdk2yeDYeQAtmpAdh0TgNBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB7299
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-11-29_14,2024-11-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 phishscore=0
 bulkscore=0 adultscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2411290130
X-Proofpoint-ORIG-GUID: 72M491ddZY4OzlVobVDShmhQ9fRtml_p
X-Proofpoint-GUID: 72M491ddZY4OzlVobVDShmhQ9fRtml_p

Lightweight guard region support has been added to Linux 6.13, which adds
MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
call. Therefore, update the manpage for madvise() and describe these
operations.

Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
---
v2:
* Updated to use semantic newlines as suggested by Alejandro.
* Avoided emboldening parens as suggested by Alejandro.
* One very minor grammatical fix.

v1:
https://lore.kernel.org/all/20241129093205.8664-1-lorenzo.stoakes@oracle.com

 man/man2/madvise.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
index 4f2210ee2..4cb5e7302 100644
--- a/man/man2/madvise.2
+++ b/man/man2/madvise.2
@@ -676,6 +676,91 @@ or secret memory regions created using
 Note that with
 .BR MADV_POPULATE_WRITE ,
 the process can be killed at any moment when the system runs out of memory.
+.TP
+.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
+Install a lightweight guard region into the range specified by
+.I addr
+and
+.IR size ,
+causing any read or write in the range to result in a fatal
+.B SIGSEGV
+signal being raised.
+.IP
+If the region maps memory pages they will be cleared as part of the operation,
+though if
+.B MADV_GUARD_INSTALL
+is applied to regions containing pre-existing lightweight guard regions,
+they are left in place.
+.IP
+This operation is only supported for writable anonymous private mappings which
+have not been mlock'd.
+An
+.B EINVAL
+error is returned if it is attempted on any other kind of mapping.
+.IP
+This operation is more efficient than mapping a new region of memory
+.BR PROT_NONE ,
+as it does not require the establishment of new mappings,
+instead regions of an existing mapping simply have their page tables
+manipulated to establish the desired behavior.
+No additional memory is used.
+.IP
+Lightweight guard regions remain on fork
+(except for any parts which have had
+.B MADV_WIPEONFORK
+applied to them),
+and are not removed by
+.BR MADV_DONTNEED ,
+.BR MADV_FREE ,
+.BR MADV_PAGEOUT ,
+or
+.BR MADV_COLD .
+.IP
+Attempting to
+.BR mlock ()
+lightweight guard regions will fail,
+as will
+.B MADV_POPULATE_READ
+or
+.BR MADV_POPULATE_WRITE .
+.IP
+If the mapping has its attributes changed,
+or is split or partially unmapped,
+any existing guard regions remain in place
+(except if they are unmapped).
+.IP
+If a mapping is moved using
+.BR mremap (),
+lightweight guard regions are moved with it.
+.IP
+Lightweight guard regions are removed when unmapped,
+on process teardown,
+or when the
+.B MADV_GUARD_REMOVE
+operation is applied to them.
+.TP
+.BR MADV_GUARD_REMOVE " (since Linux 6.13)"
+Remove any lightweight guard regions which exist in the range specified by
+.I addr
+and
+.IR size .
+.IP
+All mappings in the range other than lightweight guard regions are left in place
+(including mlock'd mappings).
+The operation is,
+however,
+only valid for writable anonymous private mappings,
+returning an
+.B EINVAL
+error otherwise.
+.IP
+When lightweight guard regions are removed,
+they act as empty regions of the containing mapping.
+Since only writable anonymous private mappings are supported,
+they therefore become zero-fill-on-demand pages.
+.IP
+If any transparent huge pages are encountered in the operation,
+they are left in place.
 .SH RETURN VALUE
 On success,
 .BR madvise ()
@@ -787,6 +872,14 @@ or
 or secret memory regions created using
 .BR memfd_secret(2) .
 .TP
+.B EINVAL
+.I advice
+is
+.B MADV_GUARD_INSTALL
+or
+.BR MADV_GUARD_REMOVE ,
+but the specified address range contains an unsupported mapping.
+.TP
 .B EIO
 (for
 .BR MADV_WILLNEED )
--
2.47.1

