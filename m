Return-Path: <linux-man+bounces-2611-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B14C7A66028
	for <lists+linux-man@lfdr.de>; Mon, 17 Mar 2025 22:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFE3A3A52D1
	for <lists+linux-man@lfdr.de>; Mon, 17 Mar 2025 21:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08761FA85A;
	Mon, 17 Mar 2025 21:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="jtOj2E+M";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="JpL6PZU3"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDAF1FAC5E
	for <linux-man@vger.kernel.org>; Mon, 17 Mar 2025 21:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742245644; cv=fail; b=hW0lyKRRqqbS4cZSyBniZEGcsApT2+R+unlqlDVvGKpiGFTAHtSK9QYCYpCaGmbDWfZG/mimeQ2SYi7FzjtUJuT82nPSJ9iY8EB0MmcWHsW3kpp5nObqk9OyxccJIA/8bcrabtCaeJzTxCw7OcG9yLbD30Owg5kPeuxNF+0Pu9s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742245644; c=relaxed/simple;
	bh=+LjwBJ+sj7978vKMSqwhrhntdPHuV5Z546Ve2gIYDUM=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=WCu+5Fy3HK5DfDpyZ9I47xAKIeiDrxTt5K0HcBFCHOdineQe3zL9pbL91FXHAd1qLC5QwQ6WfyhteSEQ3FLx27mU6szFCs9m6kzQ9GulYFgCIO2jLMLA+ljyQNYEalCJcFwFId7/Q8oToZoiH7aTdtDxvULwInuWCYILPHbYYmo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=jtOj2E+M; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=JpL6PZU3; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52HKxVnt008738;
	Mon, 17 Mar 2025 21:07:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=mfdmMMMukffftSPU
	cqS1TJ3lMMf1Z2xcxXQKxk4CYXw=; b=jtOj2E+MFqXT28hqvXfGNgM4WDoT36oN
	Zmht2Y7BjmjoRaWfaMPwvzKH2GJieZ3nGUFON8wpGdaL4EhCG8gN8Q3npynO3H79
	ztJo3bCNXYCvaLwNGFx3mtyKF44aSi21zvFFP52dibwdou/8bZtsRQlt+cRKE/ON
	XDiQjycR6aCXL/sHYXF68yv41ClYHgeQ1E7+CmRD3OB90K7bmtq5iRAKdCwQJqfP
	nMVSzrx4CFhUkLTF7PA61xmamynx7HHJr0yHZY//rpYCYViFDhtmWGU2rxd5vYwd
	NA8bAV0PMQi2Ytyt4J4wHywP5i99p4Zbm8gJWq7QHJ5TRFxnprrvBw==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 45d1kb3ysq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Mar 2025 21:07:05 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 52HJ74o1022358;
	Mon, 17 Mar 2025 21:07:04 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2172.outbound.protection.outlook.com [104.47.55.172])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 45dxc4qbjd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Mar 2025 21:07:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lB+MGf8OG/j5dO7okVIy1ZscFKdPmYZ4dV6j4NEPkDg67rxIi8ZtFG8JeCHnM8d9UQJfx5QDqzNPhfat1W5HB0FiIMtewR0eYXRCxWOVw+73I2e2tiSca1iqclcxQD7BY9QjASnWh3NJjysCBPitWwJOLWi5shcVK+SwwxHWUbF75NEEogPo1EktVBDfB3AohbkS04q+ffvXlXIG9f8m4rBuQAOaXgFG8r1TnRIw0o5ZSeJ8jGkrYyNXCs38+GuFw5SjscgZ0uAJe47Xi3YeBZhuhYro3ze5z3ypLI3cquxnls4GfHF09zHFgEKfqmTjTNQq+5moADx9odxlaLSCXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mfdmMMMukffftSPUcqS1TJ3lMMf1Z2xcxXQKxk4CYXw=;
 b=IC7qqIPLazzOr9Ykv5bSWaxKolCwP4CTsblG+boPdTmgeFqi8+fLMssOl/p/m1rJhpuJ5u5yCDVHAkPdgWhsOtfj1oWpmwP5BcswPMwcL4+i87/tBjBG2nhY763/Wu51TPxfyIPxlrZCvT8WGS+XXD8BbTMga3QMoljZ87l93OIbMUGByak1nJPQ+xvUElnKYR1MCRJ1uNXMd0ElqQwsCHMjL4Ls76M+Ykt51jJiV9ZSm8exMej8m2sw4N6map1U15LNdXq2YtUpL+FnQRBGXdraN3oyi/DtLyggGCjhb0RGkGaP2UwSEbMTBXORj2hA/KXafZ6vmg6c5y0rVFcR4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mfdmMMMukffftSPUcqS1TJ3lMMf1Z2xcxXQKxk4CYXw=;
 b=JpL6PZU3gdEcBzJZmt75fD753bH5mtPay8EtGS5IiPzj+fr3KFBoYZ+QHkipqc35iS7g6oTRG1+rlhz42PFIPrxNWRTL1P3UqdJulG58ME9GDDa16dch1Q8zjhqKjA7Zm/AvrnqcC7kI9tiQIRaoqbI39zslLl7OvAJ4076LVMg=
Received: from MN2PR10MB4112.namprd10.prod.outlook.com (2603:10b6:208:11e::33)
 by DS4PPFB033C1B5C.namprd10.prod.outlook.com (2603:10b6:f:fc00::d42) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Mon, 17 Mar
 2025 21:07:01 +0000
Received: from MN2PR10MB4112.namprd10.prod.outlook.com
 ([fe80::3256:3c8c:73a9:5b9c]) by MN2PR10MB4112.namprd10.prod.outlook.com
 ([fe80::3256:3c8c:73a9:5b9c%4]) with mapi id 15.20.8534.031; Mon, 17 Mar 2025
 21:07:01 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org,
        Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH] madvise.2: update MADV_GUARD_INSTALL, MADV_GUARD_REMOVE description
Date: Mon, 17 Mar 2025 21:06:53 +0000
Message-ID: <20250317210653.273728-1-lorenzo.stoakes@oracle.com>
X-Mailer: git-send-email 2.48.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0225.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::21) To MN2PR10MB4112.namprd10.prod.outlook.com
 (2603:10b6:208:11e::33)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR10MB4112:EE_|DS4PPFB033C1B5C:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f0bbf83-774f-486e-cff1-08dd6597a954
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?995xER+8jUq5P+KwrMsAHA53co5cf/uy0MluiAZsPYEw2gIpI2SKKO441usw?=
 =?us-ascii?Q?+c5IIPt7y/9jXIAD2Zd6Mt9vB0szpzGHJH85sovKryV3GrSciRd0xrE/SBa+?=
 =?us-ascii?Q?vVUFgHvJHow6tGlhp9HewRQgLCJCGR/I0aULIyjtkGgyPTSu0jVzuF0XPeBm?=
 =?us-ascii?Q?HedOBf8mpOU/uLsipHWAjyD0267XoDEFtXv6ABicBMqMqs9FlKdY8K+1vxTR?=
 =?us-ascii?Q?0dZXnR07fM5Icersk1yksJA0pZ/XIryWTBQqZekJ6KkkQNbhGHz9wSiI9hLE?=
 =?us-ascii?Q?Jb4+QFSUrFSqQLzCSl+redQF2PYmob1ghaV412c1JpGp7ThuwXU+4+t3r2aJ?=
 =?us-ascii?Q?X5sYO34lUuvDa9GOXSLxT8f1W80K8gFELFawWcQwWSTflhKFf87QF4YY7G4u?=
 =?us-ascii?Q?z1Ec6qS/+N5zFi9AMebkxcF1SnXCQaI26qKsc0Vh+qNYtvnzQeAY4unRtiuF?=
 =?us-ascii?Q?TmR9/JqLhit9lj1KQPJ+skE3fbUs8BpKOC/K7iMJrjjbkSIckJWdHRB8FsXP?=
 =?us-ascii?Q?IY4og++3c4mNYp33z5+fq/aDxkkKAyg8M/LWMb+JUArA50jU21JJgjLdl2Su?=
 =?us-ascii?Q?ZAjQyYqrEyTltgB2snQGLIXm4ceBgMhkFKD6FFrFEGzkGtNwgDN026xjEab1?=
 =?us-ascii?Q?0bRdovGPoKesGg2Hcls/2tZyqJpJp8QgXjDtsJMWIL3EyrMa8hfUQuG5eq71?=
 =?us-ascii?Q?fRZtNucJRmgK7vR5O9az1U4TToWc1+ifJV493oPGNit8HgrEDN0eoVZO94QJ?=
 =?us-ascii?Q?dsrGGagk212YUTgA5qAZs4c20Gk5DqDLINcTbi4Hnp14142XktETrX0gcR9P?=
 =?us-ascii?Q?A3FHg9q0EsJswok3qxaInJ1JslnIj1Qh24crpqvI1kHpeBIvkEYKULGJ788Z?=
 =?us-ascii?Q?BHQwe4Kvcv5haPlZvaKC6DOxQGRtx9A6i9oa8K2FFHo23y1NgyLRG9NZ5SSs?=
 =?us-ascii?Q?YQbtq2kJFllB6GtdGkT9tkI9WuFjolGiqFhmOywhhELLygDroziicHA/CMND?=
 =?us-ascii?Q?4B670OKUcGMMPH+OCn5Nk0vbG+7ShZ9ReC4TfTu3nNVHpVUuBuyk9ZzdoiHS?=
 =?us-ascii?Q?Cp35ygD6XJ167ajYJTmG+wMi/RiIHPr03PoMcaCEWGGBrv5Cc7WtS1WLGEPm?=
 =?us-ascii?Q?T+hMVBZMoVR0fnyg7InN2Rjy9p0cyw9lnA9o6MvTTjjOyIxYUQ+786GdxLM6?=
 =?us-ascii?Q?oPFDQ+LIuiLSILRAPmfQStXApF6ZGHZEpk6nDqUgC0xac3lafleTsMnAn+AO?=
 =?us-ascii?Q?Exkg4O9DZfnui2pSm5INpyeLqF60Oe93aMd6Xy3kcXYEhxA7CjRjUQ6J/1kr?=
 =?us-ascii?Q?E46Pfv8PrzT3PoWSrN5qM88ZbNHEDFQjU2K/eVZkSoc2/LOzK2Y0Cj1Lrwrh?=
 =?us-ascii?Q?egjFw0yGd2CNhcJCtrAX6/Ht6rGX?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR10MB4112.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?FisR0IjMSAuDIAeMk1l8gUF1/WdEqJop83Wau8mZL5IEK0ORMCbuDT/K4WhY?=
 =?us-ascii?Q?+ono/lfvF003WKCXt5gvLPdH5IbT01NsTqyNH//PO0LZrLuTi1BU/wI4+8yp?=
 =?us-ascii?Q?FvLKA+gbUgJTPwCjlYSg+cuafAuGlaU2HbGHy8gGj0+nxElQm0XlnnfcxU5S?=
 =?us-ascii?Q?7pLZ8Mrf7MDOkpaav6dE2/dgnap4zAWJZdP11wUeCRT1Y5HbpWD6vMQGZV/S?=
 =?us-ascii?Q?xPFLFCt0hctx0kbG2yZc0UsQONqS3jNZn29rVkQwG1vGe6Licu1Ndq8x4gSo?=
 =?us-ascii?Q?cFYBjPpFIAwwg92yxsXnGju+fh0+RPX+0EWOUi8mMI5yvJOZi76rP1nhL2H3?=
 =?us-ascii?Q?Kl2ggJxEleMMzTPrbIYUPMqAuFiCG6e6NmdrwmzrqkoJVcp3+ih4R/OHCVsy?=
 =?us-ascii?Q?fETW0qSHq3tmxTfIUbWWB7B7X9MOJgzOu7nPVM8vvHgKsonfYYfwoNwsvmT/?=
 =?us-ascii?Q?IKcyBYzJWjvi2rVfvEz3MeaveeZiXKUdnXnIRKhmLPZb5P9s1fUYOKuCl9Qf?=
 =?us-ascii?Q?MQhSzuRGtCxPtmRCEwXDa4i6SpiDyzLSNm0NbX8KeHQmE2Enh5cdWJpNSdF9?=
 =?us-ascii?Q?DLCAC34psV+bzxJmQJc0lKd8rolmx6MsdpsTmayY7K3xVkqUozvAmbjhk6wJ?=
 =?us-ascii?Q?hfXD6i7f7gEDXrG2aITc+axkA+9vmaZZ2DqlJ1BqMNFqVPRl3L87PoF+26ts?=
 =?us-ascii?Q?hq9PajCLIUtmEnp/O8YDQTXk/t4Dd0KrTJIhur1DQry8IV4yZ2PfZKcV0Jdp?=
 =?us-ascii?Q?KQVJufTO0ePSA3AEC9rQhz2+Otf6RuhkaJKkFveeYhtM7w+swKU15Cao+IQf?=
 =?us-ascii?Q?GEx6nBnsgXnbM7ccrnDaMKqLpeJb6MnSmSNmfY89Z9PeW/gURQXXOABm/lzQ?=
 =?us-ascii?Q?tCQ7arMBWPo2OEs9GvIctdBNEHeTRQybOxMWFmO0Wzh5sweXUR0QMb0rrw3y?=
 =?us-ascii?Q?HS4W5+DM3CyXpORMgbK77d8QodOKlaDdJzvhaMukiTTONd/det8+ib/DQR10?=
 =?us-ascii?Q?l+widSIjilVbXTPs17rAKU9BkpwzGcL1kxfe+OCSXafMKwrTc2MheCSpXTpX?=
 =?us-ascii?Q?z6+dfnUHKWieY7wOUjyFfzNMu4Qe/cApLGh5ax9btF1W72wod3UPiE5hKsqJ?=
 =?us-ascii?Q?lJ9xdjiRPOvpLTOAX94b4776otBKgrFECE6zsaRIOnBY4TTQ9t+MbvHraigc?=
 =?us-ascii?Q?xAdeZfLrPed5LK+wUl5TvD7BBacp2qAa3nyV/mQibX9GRwIwPI/lhuaMCxO0?=
 =?us-ascii?Q?SwUA3WcFSad13ykOD4fdQ0Jlrutm50CwYDhxHB5KPRrQpiZVXCtF8qi+2OfE?=
 =?us-ascii?Q?5wW0u/uS2gIfuMHuRUBrpE2ms8Z3a7X4opFzAzPMmLmReYVjhdmf1taynBAs?=
 =?us-ascii?Q?xgKaDXuxrqs8OYSsWWGSHKi1I9ktXt8yuZm+9LW+a/XGi+9ugsd854jwpyWk?=
 =?us-ascii?Q?UF4/5uX7KfbO7pZbR1VGjvh5Jb0z7lYU1FRxw/+zDBU5XmnzgP6nKWpaHwZQ?=
 =?us-ascii?Q?SJrtycF3tn2YmDXCJRj6xNPCVi9OZsH7LqD0LH152iD1KjRf2Fh1e6u0ULLH?=
 =?us-ascii?Q?/FaWcnzkWuTj+RECOZIHsprIDsMf7DHx1DQBXX6IBJ7rc+ERc2uDlA67RGrj?=
 =?us-ascii?Q?Vg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	gCmCFC3NeX95rdsHfB0jsMLbPkGDuMldYpkgQPmzreDIsV+apvMcpFVKuoujAseRP3Lipa2418089LgNROZ94LXIGMTXvw/2ESpElHRs7JGQndwJ8YdatOmxfzD1XOywfF1eu9t7+1gD4v761me+oyTdLH1IYGOucm2iynxIZMktG+kLty5AOUM8MHiA3fum0zp1gMdgyy2GR5uyWY4AmsClqv+L+mzvMjmDLI9CGoK/mpZlYFfZNoHAyZlWvi6VGVwRbBCne016MuglmvbMSZwnRShuF05PbflO4IsZlFwoLy8+Ot2RjTsI9M4dVE0NUIkVOzt1SjCQWgFV9LRH6uGqEZwc88rYC0i6lik4BXS8A36aT3RflXoFJH0eEkYDjhY09cvh/mRktdNQmw41Xexyb5OIUnSckoH+r4hdRbNS+4SW7zmlX2bUQ+jdwaBz3zA5ov92axRWO9jxJySR+y+k6htzrD91R288pVJB23YNT8cI502ajgN9eGlHxnBiTjCsv2ur6w0B7V9Dng1G2idYF07daVYPi9wzOGJoL6dhmwDzcbf+vEPVMLaZJF3Pxrp+E67EoMh2E4A8n2iZPxDUv8F1n9AXBBYHXqJwStc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f0bbf83-774f-486e-cff1-08dd6597a954
X-MS-Exchange-CrossTenant-AuthSource: MN2PR10MB4112.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2025 21:07:01.4429
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OixAa1z3cd18Bb4iZOQZUBVrXQ6lLS6cueI/mzUfTW9vtiDP+K84/Os/dxO+q8nTXg9OpbxSJkCQkKHouyA/PzjmW1LnXSMDLO8D3q8jDWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFB033C1B5C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_09,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0 bulkscore=0
 malwarescore=0 adultscore=0 mlxscore=0 spamscore=0 mlxlogscore=824
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2503170152
X-Proofpoint-GUID: RDw9sYONyWqggOLPtP9RU70PdkZ0He9_
X-Proofpoint-ORIG-GUID: RDw9sYONyWqggOLPtP9RU70PdkZ0He9_

Lightweight guard region support has been extended in Linux 6.15,
permitting the use of these features for file-backed and read-only
mappings.

Update the description for these operations in the madvise manpage to
describe the changed behaviour.
---
 man/man2/madvise.2 | 37 +++++++++++++++++++++++++++----------
 1 file changed, 27 insertions(+), 10 deletions(-)

diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
index bd2b90b7a..37492c8cf 100644
--- a/man/man2/madvise.2
+++ b/man/man2/madvise.2
@@ -697,9 +697,22 @@ is applied to regions
 containing pre-existing lightweight guard regions,
 they are left in place.
 .IP
-This operation is supported
-only for writable anonymous private mappings
-which have not been mlock'd.
+Prior to Linux v6.15 This operation was supported
+only for writable anonymous private mappings.
+Since Linux v6.15 both anonymous and file-backed
+mappings are supported, including read-only mappings.
+.IP
+The mapping must not be mlock'd,
+nor can they map hugetlb ranges
+or special mappings
+for example,
+mappings marked with kernel-internal flags such as
+.B VM_PFNMAP
+or
+.BR VM_IO ,
+or secret memory regions created using
+.BR memfd_secret(2) .
+.IP
 An
 .B EINVAL
 error is returned if it is attempted on any other kind of mapping.
@@ -756,19 +769,23 @@ and
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
+Anonymous private mappings therefore become
+zero-fill-on-demand pages,
+and file-backed mappings are repopulating with the
+memory contents from the up-to-date contents of the
+underlying mapped file.
+
 .IP
 If any transparent huge pages are encountered in the operation,
 they are left in place.
-- 
2.48.1


