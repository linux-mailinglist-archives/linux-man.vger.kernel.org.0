Return-Path: <linux-man+bounces-2131-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B329E6CB2
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 12:04:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0BAFC18841DA
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 11:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 799411DF732;
	Fri,  6 Dec 2024 11:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="G7CJsHqi";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="waH+XqxE"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6557B155C94
	for <linux-man@vger.kernel.org>; Fri,  6 Dec 2024 11:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733483059; cv=fail; b=p1R2ABWYC0Jpy80OnJZ2Tji9XYuWS8IlAeRuR+NLXr9pl0rqFZ1uUdYBRLbckKFqKq4jCM3v3e/1tKsaY6fzvGpV0QLjkhvJ4l7LaT/k3+0PpO4k71DNYdsjMUp9vAtN9KpJoRuULtoIZJ0CWGNe9oRlxUjKAYHOjzp0N2Cm3Xw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733483059; c=relaxed/simple;
	bh=XXDW5RAjwQWyY4Dt1P1LyepXEChO5CwumD1szaPCpxY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=UIg3AOhrTJU+Vp4P0yPg0Wo0q3K9T1EMCZiDl4pglAt4UnatS+tHBt5jikX9r99pOZSA8CKFlTJpiK2wuRTm/j3VaCDS2yrWcESOCWBSddNlI1rEfHAnrpNQlO0qFLAE+aZyYq9vJEBTtdZDPdADwPqxT/FSv/DQupK23gsl8SA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=G7CJsHqi; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=waH+XqxE; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B66sMQt023066;
	Fri, 6 Dec 2024 11:04:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=rkyCBz6Z861+MvT39a
	jDlFpBYOcikTR7KkpJ8MsGMVA=; b=G7CJsHqiSlEiCZTMQb/g19B2+BtiNa+usL
	x4c9e5l1l7ukQvBj6W3T0cnuvTpedNxy5caozDJgb7ZA8gyFeJZ3U9a2GyafBYoI
	75emGMa37l4ONXLJVNOnuHmO5s7Z0IdOcvfj45bpCEEOysT7Mnc92PW/fxwyaKbc
	nmxDImvsRVpFa4OjDmt6vQSib82uymE36E3LxkE0h70FKnby5vPwWIsAMeKerlBf
	cXvFiKr9m0PmxSiIZi6/GNBWlqniwXsi+g/JwPGe7shP6KQWPYyjftM33P+bdaoJ
	UMLHMHbk68dQZM0T03UOa1OsMZJBvj1weqiDZ/JpI1kMojoNqSlA==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437sa05bx3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 06 Dec 2024 11:04:04 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B6Aq88F020349;
	Fri, 6 Dec 2024 11:04:03 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2044.outbound.protection.outlook.com [104.47.70.44])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 437s5c5wvf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 06 Dec 2024 11:04:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vFU3Eokx1jvFSW45qf3jW8WK0TAHPGfK/lhJHHgNq6EylUeNpkmUyposy5e1ovagRw5S1ubvYNNc6rKuAHfMeB+/wuE4GwKlTgIinGk+finLqWffts45Op7SBfVdpHlJvdN+m6yv1oRn6Nmq7pWA34wT7qi8oQg0vHtPae5aCcyb6o57fJeVz/64X0WWESycUdZPuWgDyexZjLbhvLKM/lxqq4DBQCsDzq28g0f13DJFXxtOQF2cx3CvhLKMSmwyA8cgxwV1YanNNsopQVUNhDLwa6TWlv17IQ1rIZPkAO/T+x2w71nO+Wzn2vUM85lDUl1zc6J1odnKUmoLSF9Nww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rkyCBz6Z861+MvT39ajDlFpBYOcikTR7KkpJ8MsGMVA=;
 b=dOUq0d8cYLr40hncgoN4ip73NVD6PtHbCebuAC/bni0PEKj3f3dZcvPwT5Ugh4m/nQ5CT4RyYQX4zSLrzbJrVCiC11yCDGsoBfb+1gkM4C19ohzih7XX2Cd3ajWYxY5znsyG/3DEBDdGVahk6O5n7JlFMurOA8KcfHCh9aqUAgD5WkQNnZ7kvjgbo1oFOxMMpWCEZy6SziHtFTirRgdtD8kA2tlhbkVxv4rqoTes6KwMJzAHkJOx82RgL4GBZHPpKs1xxRdPMlb4kfUXVYMNV5k9b/9XhRzxmDvGkTIAPLIfBvO1Ii7maVMQUTwrgpPMeLj1NT5HHxOx/iRA/PtRyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rkyCBz6Z861+MvT39ajDlFpBYOcikTR7KkpJ8MsGMVA=;
 b=waH+XqxEIIa6o1ewVG917FxUqAH4a0GDinrg0KfPPVE7LQQwHSkkoPQBasbi4sro3V7jKsjn+jJQvw2DamnwuvKtzaaRdsiMHC4OWNygvywLvVnBhVwe7qf8MuQ8LdMSkwuOjUT3FutMkc34PTIUIfxEgozOROjzlgTRZp86bsE=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by SA1PR10MB6366.namprd10.prod.outlook.com (2603:10b6:806:256::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.17; Fri, 6 Dec
 2024 11:04:00 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8230.010; Fri, 6 Dec 2024
 11:04:00 +0000
Date: Fri, 6 Dec 2024 11:03:56 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Jann Horn <jannh@google.com>,
        linux-mm@kvack.org
Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <4146fb6a-9866-4884-9d8e-da8c7c61256d@lucifer.local>
References: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>
 <b9f4f985-771e-4f09-a87f-d56f898e8d39@suse.cz>
 <e71ad8a2-3dc7-44bd-97e5-fed6eaa30d55@lucifer.local>
 <01514d6a-5b8f-4a38-8c08-7cacede47f67@suse.cz>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01514d6a-5b8f-4a38-8c08-7cacede47f67@suse.cz>
X-ClientProxiedBy: LO2P265CA0500.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::7) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|SA1PR10MB6366:EE_
X-MS-Office365-Filtering-Correlation-Id: 3466a108-c854-48f7-728e-08dd15e5afe7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?WkCgIa8Ohjiry7dAuzQX/IiK4wnYsoPfLBWq2YgqzxYbU9CAtUP7AOIBgvnZ?=
 =?us-ascii?Q?gRpTZgm0wLzjocGoj38J49UFeIukCIwmYqSpK2b+SZNqyXmZaPPdq5csrPIK?=
 =?us-ascii?Q?tA0lM4yjqsha6kI8/PbK8BV+O5RQFngG20jWTUTknciV5NQjRuoCAvFyf6Sv?=
 =?us-ascii?Q?EIizmaYkABGJyjlOdFSo6C2bJoh1jMU2bijBvmlttggTlHdwXenkp8VJDpTH?=
 =?us-ascii?Q?vbGrgiLE9LtNXcGafCfI5jb7RvlzUJQkmNCKwtNjMfIKHRfjAqCvEL7S4xOZ?=
 =?us-ascii?Q?G+VcxfeFs7cpZZHmNoBmRS1XhsmU5jhAZ2l1LV6l/HjS2hR+SONQk/LN+0Kw?=
 =?us-ascii?Q?gBTSrVv9rO2j1gNQHnfA9TJepwOOWy/kQtVJdoevB/G9gVwqWwRBFt4LNnf6?=
 =?us-ascii?Q?Bps3pccs1TvmC9h8HCPdCSw4RD4fiPJyNHAOZ+IS/EL/9kesSX9toW9mmkmp?=
 =?us-ascii?Q?cZBLcLT9jAzFpvwj2TPbDpNMnySn5fB4Mw/5sXc+UC4lc4uE+nFO2z4/evVa?=
 =?us-ascii?Q?Af0zYjaD1+aoiwwbVFYIpyPnPysosQuqdhVz1j+ny53F937CUwzBvFRRCgUH?=
 =?us-ascii?Q?Q3WZ1DeXAy7QDxxtT/skEEjvPrh651CVdyU1IIysldCQ7Lwnz4jX5SYEXmSL?=
 =?us-ascii?Q?xs/bJz/NzGMCVFQ6oyid/MZYwdp2kwNC+t7i/o0bkitCvlo8nO5B70gD5DxR?=
 =?us-ascii?Q?FZxf2oo1FB4bhGiGxEA7wMr32fAB3OLhG2ZPud7RBBQBRGuOmzEh0v1MCMTW?=
 =?us-ascii?Q?tQqhzCYndkAPqLuQ0OIP/b7RodLWOu8wLiFXVKFOTqKlznKQVD17Sw/oTjh2?=
 =?us-ascii?Q?FUrU9X4b/nGiP27yHRwRMJDMrlv7K/23PDepOUvUI1lF9TWDdv/Z80aUd+hD?=
 =?us-ascii?Q?N29Hyyd5uqkUb13dyA3lkvgsqw9HWw8VEBO7ZmxsS9/HxhPE0W9wx2YkwErQ?=
 =?us-ascii?Q?3fnC7LpNcKNhHCEWumIAT/LdhbPDdGxfJc5IJto9PZ0RnyQPBH2BFIsUcFWK?=
 =?us-ascii?Q?QkJoHHJQ+mx0Mfsq1QS7XSCnCWT36rxTeLhs5+HE8ZaxSgCVRPagO9lHb8JR?=
 =?us-ascii?Q?w7tjKRnbYd85rv3thKxn2LAuE2rBwZfgHoeEo7tZfqK4q0Q3Yr6zC0fJPnGz?=
 =?us-ascii?Q?yNXuXrTuS2WPThNIi9vy+CVIagqd8mHu80d6qHomGPwkq+Rj0rSFkpqKxKvZ?=
 =?us-ascii?Q?NHdTWDGW2+WuQtrszpOmvjsrz5cIeuyygaKN64pEJeNNxOkBz1/btAhNPbSv?=
 =?us-ascii?Q?mQu5kTlF0q7ZVAbV9ymNss+zmpJgQtX1NnAicOcj5DBYHs+PfGMRrYvBv+zD?=
 =?us-ascii?Q?VLPfb+raopX4viRoQp+EzH9usojWeoFQT2CqR05wRHMTxWlqkIbBkJkTwtmy?=
 =?us-ascii?Q?MAbaMRo=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?sl6LAQ0FXL9Lb31xQY1ylYFBp5157IAMl0fKEMBRHSeWTPpQv+CoAIwFQL1O?=
 =?us-ascii?Q?YF/CXKRnPTw1RwKuTqNzKaczr/GzuS5wby3wotQr9lZJClaNspG0zGQpzpBF?=
 =?us-ascii?Q?/b4MAyHen/uiCMRDr3/RVtxZQVYLK1KileMv5pPw/8luKT3NKtYxp8KGT240?=
 =?us-ascii?Q?GAfAC0TzxOK/fzsPjtkv0g15hrsVAR5zRINDdXb85kS3wphfBaOi7B4U3Kr4?=
 =?us-ascii?Q?8yS39n97kBKrmd3N08SPWxUenqIckv3rxLKoA53a0W7EVzYQWIW4u5iM4CsY?=
 =?us-ascii?Q?aTrigCHWDf5mp9AtrBGbWYiXsQxK5hHEB9zOQ8H8I8r3BWY1Q+/KqA+LSj5P?=
 =?us-ascii?Q?htLkZUFsMzaF05nGhnFFW5oJop/7UvRJodSLttvZbgsVQ7XnYLI72kjpB8NY?=
 =?us-ascii?Q?JPTAoSxNLgvMc9kwxDjQoqpj+82m0w23LpfqZBo/0gE04qH2/Dkfky/JODrc?=
 =?us-ascii?Q?UZuM22v63J/HJTwEZUp3wBTWFw35qf/8OWV3zqHNdz/dci4dRwDhYS/in2/G?=
 =?us-ascii?Q?WUVqHV6zxkUcgJmLjYhoLeo9/3CYSXQp1io55rJflhbWzguG9jwGCKR7GXTL?=
 =?us-ascii?Q?Cle00s6LI/LGWEiPEToPAQV0EP8Dlj0+JXZEJPkXeTeIwy73CupnhyWEnChj?=
 =?us-ascii?Q?FvUu1n15NtoWdOn1RXURJZGsIGNRi34hGB5/N4NbRMXtNPP+4fXAgg9Wl3GE?=
 =?us-ascii?Q?ckt42cLj36P1bUkFMVE+7y4RmCbiC/FUWI30gtnc13vJT1zz18DOG+++0ucR?=
 =?us-ascii?Q?eb3/eTU/qNDjZ8Z7JfWVecxmPY1iMwR+/FQHhc2sScKtGXxJlECsuDKS5grY?=
 =?us-ascii?Q?k8ij6U7ucyUen1uCyPAZwsvPkWcNMAL8hwA3dO5+MbGAqKL00RGdV36VieqY?=
 =?us-ascii?Q?SECj8DbFc4cG2Zkmqpq7LKpgpklAwlrpALJHXRt82BS6k8C98W5zlaLiRZct?=
 =?us-ascii?Q?rq+WKQzzRnBr6JBFsm+Ypazn/emK+/kqrEJiUYEmSCUrvr085JvDXecxWV+g?=
 =?us-ascii?Q?otTCUw/L29SRjmE41rMYxAXX50IeG2TQwN3Q0oPTUR1rlmtIKln1xu9ySaDX?=
 =?us-ascii?Q?nRdlfXKXwETGRS9BBb8sH0Rvr1btYKduAlQS2w51CAVCJryWhcRt7Sy3gxGv?=
 =?us-ascii?Q?Ea8XslsOppEwjHhLlxqYTwydWWjGlqqks6J3XF/7ylZEastlOJ8bGNRCJMqX?=
 =?us-ascii?Q?AT8lws35klW7coEuU2jznCez+vlCyIi7Tvu6IYwbvQI7AyZamzWBxCE8dyRD?=
 =?us-ascii?Q?0XHnRGSaGx/dySZB3zXe2J6mxbMKcTbhKttl8ja6/I4tfrKuOQv1v7WIYzLs?=
 =?us-ascii?Q?7Nyxsh1oSYabnre556nstdzvDanqQtWnlDsSjLP0pdEvoBhLXHO4JAgeABkW?=
 =?us-ascii?Q?NVA7ILm0Gu9crx8y66uXTsnXhV/SIoF2M6s/d0d4g0tqHxrA+Q3L+tSsuvga?=
 =?us-ascii?Q?v2P26zoqiSz+ErouIeFqNni6s1LusORgFrLtLT05rKzW7sqtv9ZXKkp/jJh1?=
 =?us-ascii?Q?xVT1+nc0XQ65wbtKIEtg6LsmOLdsj0BMkrffMRntVLFalpKRGGbDreLmZWAi?=
 =?us-ascii?Q?5Waovb3ngZEXnHMIOwKQ9xiwrYgo0gVd3zHYp5BwVMxhf4+dMfuFJtlK+7xp?=
 =?us-ascii?Q?rg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	zdH9ygnTVckDg3c0glLD9/8Qa95F5QL5DQopRN2Ejt3A+PnMZYL0gedyxDPkwGoT7Tm4RAvnMDXmTvT2P8zXvbiZC+Ke/4hpDkKc6RlH4SigfYz6QxmFD9l5mODrezpEf/jb8qq+S2UWRFKKwgHCFV64j2zO8soxGVJnyw30cl04Gd1Dw/wtrrnwIfbvIecS3auPlZNVwDqD8XkGXTuIv9e3mdM7L7tw+y7QYDPApfyew/dYJahfr4ePnsYKEH5jJ2lcgTQd3QLq2kqEyReKR2RUF98NWjTydZm+3kBjrpBNB5gaoANGeetbCF05IsFLfln7TporzNDUspfnOHn8vAP86yrvoSW3ojx76/OnVwDKtltSiymFqoLRhQUtEGVs3paaKnBLse1VNj9Lsy7HakwriMH6BvTAkx+5i/yQWbCqCV/ycKkcl4z/zKi5Ha/CBnRhE0n6ockTDpWkQakIwWp7LBpx3/Sa9IHY4DvQAPFeppwKevJ8AZiR7QmGJ6LAExUxxk3NgyQa1DdmA1MQchYsfbBj8SyMxbcpkHYDxfC+odw4tQpZGaCCQBLE3rge66Xkqt769Zl8gOLtZFCYIzTGkvGmHq7Aa4KDeFp9UF4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3466a108-c854-48f7-728e-08dd15e5afe7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2024 11:04:00.2910
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sva3vFCd1s25BNPJiAvqdPgKzl1F35vU6osNEzm52B2UPQaaFdFPlIHPbUX8d4DzyphCFrPFWUqThNG/20CsmHxQ94ov2Ux4GafprQVs4oM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6366
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-06_06,2024-12-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 spamscore=0 suspectscore=0 malwarescore=0 mlxscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2412060081
X-Proofpoint-GUID: FsAL2dgWjhaiYDAtaYtbOOdtT5kn07c0
X-Proofpoint-ORIG-GUID: FsAL2dgWjhaiYDAtaYtbOOdtT5kn07c0

On Thu, Dec 05, 2024 at 09:43:09PM +0100, Vlastimil Babka wrote:
> On 12/5/24 19:09, Lorenzo Stoakes wrote:
> > On Thu, Dec 05, 2024 at 06:50:09PM +0100, Vlastimil Babka wrote:
> >> On 12/5/24 11:41, Lorenzo Stoakes wrote:
> >> > Lightweight guard region support has been added to Linux 6.13, which adds
> >> > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> >> > call. Therefore, update the manpage for madvise() and describe these
> >> > operations.
> >> >
> >> > Reviewed-by: Jann Horn <jannh@google.com>
> >> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
> >> > ---
> >> > v4:
> >> > * Reference function chapters as per Alejandro.
> >> > * Minor rewording as per Alejandro.
> >> >
> >> > v3:
> >> > * Don't describe SIGSEGV as a fatal signal as per Jann.
> >> > https://lore.kernel.org/all/20241202165829.72121-1-lorenzo.stoakes@oracle.com
> >> >
> >> > v2:
> >> > * Updated to use semantic newlines as suggested by Alejandro.
> >> > * Avoided emboldening parens as suggested by Alejandro.
> >> > * One very minor grammatical fix.
> >> > https://lore.kernel.org/all/20241129155943.85215-1-lorenzo.stoakes@oracle.com
> >> >
> >> > v1:
> >> > https://lore.kernel.org/all/20241129093205.8664-1-lorenzo.stoakes@oracle.com
> >> >
> >> >  man/man2/madvise.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++
> >> >  1 file changed, 93 insertions(+)
> >> >
> >> > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> >> > index 4f2210ee2..7d682fa40 100644
> >> > --- a/man/man2/madvise.2
> >> > +++ b/man/man2/madvise.2
> >> > @@ -676,6 +676,91 @@ or secret memory regions created using
> >> >  Note that with
> >> >  .BR MADV_POPULATE_WRITE ,
> >> >  the process can be killed at any moment when the system runs out of memory.
> >> > +.TP
> >> > +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> >> > +Install a lightweight guard region into the range specified by
> >> > +.I addr
> >> > +and
> >> > +.IR size ,
> >> > +causing any read or write in the range to result in a
> >> > +.B SIGSEGV
> >> > +signal being raised.
> >> > +.IP
> >> > +If the region maps memory pages they will be cleared as part of the operation,
> >> > +though if
> >>
> >> Hm this reads a bit ambiguous. One could read it as the memory pages are
> >> being cleared, but it's the page tables.
> >
> > This was really hard to word, because you don't want to say unmapped, and saying
> > 'clearing page tables' or 'zapping' is clear to us but not necessarily to a
> > reader. 'Clearing mapping' makes it ambiguous vs. munmap(), etc. etc.
>
> Maybe saying "removed" instead of "cleared" would be better?

I was about to put more philosophical points here then realised we already have
a better solution... we can say 'the regions will become zero-fill-on-demand'.

Let me respin a v5 with this corrected. We will need to revisit once we
support file-backed pages.

>
> Anyway, I don't want to cause bikeshedding, so in any case:

No it's appreciated! Review should be critical so we can make this as good
as we can make it.

>
> Reviewed-by: Vlastimil Babka <vbabka@suse.cz>

Thanks!

>
> > But you want to make it clear (no pun intended) that anon pages, if there's any
> > data, it's probably lost. So I think this is a distinction that doesn't matter.
> >
> > Will revisit once we support file-backed mappings.
> >

