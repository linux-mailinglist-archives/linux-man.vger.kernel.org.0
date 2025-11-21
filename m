Return-Path: <linux-man+bounces-4304-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7F3C77D86
	for <lists+linux-man@lfdr.de>; Fri, 21 Nov 2025 09:19:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 29BE14E8564
	for <lists+linux-man@lfdr.de>; Fri, 21 Nov 2025 08:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD99C2FC019;
	Fri, 21 Nov 2025 08:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="FN4nLZX6";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="BRwUUAb7"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED42D221FBF;
	Fri, 21 Nov 2025 08:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763713032; cv=fail; b=hvuyPARLjindp/OzwnKqebKSYXm5mUN4oSWgMi2j+9ef9Hy69Gascoo7dVk20GShN5k7XVF3izpBZmrf1onAPxnRGEdzMPfSDVPYC4USLWAloRSQQO+G1Volvy3sGH+D/ycvhfNt3d6dOyZyByRm+o1T13MP9MUl6W0fd0+KrPo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763713032; c=relaxed/simple;
	bh=WUd+g5cEijWtUgasDjhQcIpRNtWfBnvAPB67xvG6E1Y=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=tulmAM8u3w3DzmhHhtMz3JmaY0uxFSJYJTwwICn7ZDYUZYIcTS5G9BhP9PLwTJLVrmjLlCvhKx4E8aVZtBD5F9Nvi1pX5RQlhj8V/e629tcd41nE29InfpND9cE6vc83Wj8Nbjep9dsiHRMQLzpyegsZjwaWii7zYojrqst+4YY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=FN4nLZX6; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=BRwUUAb7; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AL1vcBw000305;
	Fri, 21 Nov 2025 08:16:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=soAyh4sA9n8bH6aL
	8sIarll/PWO4ZAdaRpKqEvFAQcg=; b=FN4nLZX6E1e+VTCzFSAgknvFONkDvHua
	bwkJy7gvIOiqpOs1Qh9ewgifr8aUv9wz1EtenQm1FJWSCSgseTlUHeQZLFchR67C
	3sxzVruTwalwbENxFZxlJ7p5biWak++phtZ1mNX9iRPzm4xOchfNeFy3i125rwLo
	FWReee4ys9EtVvslOaBMAhPMphL48RoDjeo7BjJfslZs28Fsbq869R497KlewtLa
	gIDs3PEc2SMcg/QdHFFiMuuLjktN8u6hrt09l/P7i1Prfqz69aAXGWtna6tNVEj9
	oXUkMbd92KwP9ZXiPe2DnKi/M0r81Q67TluL4ZDHugySDdG5qoaFoA==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4aejbutg70-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 21 Nov 2025 08:16:49 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 5AL6XrRJ004250;
	Fri, 21 Nov 2025 08:16:49 GMT
Received: from sj2pr03cu001.outbound.protection.outlook.com (mail-westusazon11012000.outbound.protection.outlook.com [52.101.43.0])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 4aefyd21p4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 21 Nov 2025 08:16:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hdT38npyDaXcVHSL58wQjqY9pXTxv9W02u1+fs9/kB/2Ci9qzO2oZr8btD2ZIgGPBbDATsBxoO+PqMdF5PKtNZXxBLrIzhQQ/K4FXzmAtsqG46LDPpqL+8SWjVjJiytr1XsvTdRwk3Shb7JQ28/JU+4R3d/ansYSkwtNCNLf6KHiOzMR9bP1fj4iIvcGemByR6x8iTcK9Bl3wUTdvk7vdRJC4ohOpSmYg+U3m387co15CPjfwGOegC6bSeS9MlheMDlaTni3tO9Lp0LNziit0tul83cY0MSOqb0WN94gAggosgQ1A6TMJC4Y0SwHJNSJeW3ETi18pXV0leGCUvit8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=soAyh4sA9n8bH6aL8sIarll/PWO4ZAdaRpKqEvFAQcg=;
 b=GQ3i7vBBgXxUxTof1P4/inQQXl4dsg2uXg4Qsvl26jyEfXl1dW1/wTABGqLC8zYM/WPWQRt9+Q4CSbt4Fh7A9roiQIk2Szz+E5+bhCIjF4heiWreqJL2yIBf1w3qtxDlmct4AiavSkm2tDiuKScGzqr4hd06s4Sq5Be7+AzzKZqJ8VFOFOyd7h3X1A+V7iSezL12gacVc7uOK1LjhEd4L18fW2zFwIitPz9/lD/TNmuwH44YHqhuIXro43CO0QdD8kFuQhPq9aV5eLRUP5aeL5d1jm9Q3Re2FYqtux1YsKEnfkJRw4909jAfPI5Rp8SmPouneHDDX3MTf3xX4KhIUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=soAyh4sA9n8bH6aL8sIarll/PWO4ZAdaRpKqEvFAQcg=;
 b=BRwUUAb7dikskw2Hs8jTU1j9W3BGShpHNet4adrcWQUCOIi+bxTlng9FtFuO8csf4HDyKkQ1AVcyBBcKOoJLrgL9FctHpT1/J68pw3fYUvMaqE5fNog5rqLpXEorSTlecgyrX/f0Q2l1YaTNoLtCUj58B149FSnYkWmEyBdN/Fk=
Received: from DM4PR10MB8218.namprd10.prod.outlook.com (2603:10b6:8:1cc::16)
 by PH7PR10MB5674.namprd10.prod.outlook.com (2603:10b6:510:126::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 08:16:46 +0000
Received: from DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2]) by DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2%7]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 08:16:46 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
        Pedro Falcato <pfalcato@suse.de>, Rik van Riel <riel@surriel.com>,
        linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [PATCH] man/man2/mremap.2: fix incorrect reference to VM_MIXEDMAP
Date: Fri, 21 Nov 2025 08:16:09 +0000
Message-ID: <20251121081609.52462-1-lorenzo.stoakes@oracle.com>
X-Mailer: git-send-email 2.51.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0098.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::15) To DM4PR10MB8218.namprd10.prod.outlook.com
 (2603:10b6:8:1cc::16)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB8218:EE_|PH7PR10MB5674:EE_
X-MS-Office365-Filtering-Correlation-Id: d3bf1e85-0d67-4a52-3279-08de28d64fd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?2UEzRGtPYMGa1XcsWOUUztB0aN5JRkfItue5cZIOo+DUU2I3eEp032KsfM5q?=
 =?us-ascii?Q?GMBwY1R+PolDEGZnAr7P2k6mr0FBaGsq0foUiYn1UyFRrUTwTy37dyiXcnJI?=
 =?us-ascii?Q?PfgKjujBiekAWXU/JQbtDXynfQFMpZZ3iJMtYRvcCo35OmBwweTeiilZtMBd?=
 =?us-ascii?Q?oMY2GK8biEEkvGfiwgEgE4+3v3TEqLTvWutCO6uzDdXE3wDmZRoe9UvazIVg?=
 =?us-ascii?Q?xhTqMFod8iCQXeNBT6BCS8n3/E+ihjz+yltRlHkAcSipF31L4EiV+DYacKGg?=
 =?us-ascii?Q?mjSLYfuLW7DXavTK7ncmjg5r+NAKlEEMlTErRj39hCbS+FfhtrB5KC+cbHCe?=
 =?us-ascii?Q?y3KM2QV7OcBxxEozyjqq5kuQACXWA41gsYSlZTOmNMNULUNbWGB4NA7UdmwB?=
 =?us-ascii?Q?pyejiPuWdQIM3p/grS4FVFxWYbLEjLcYyWC35bjUqL0k8Y1SEWaq3Lk0NOUH?=
 =?us-ascii?Q?2h6N/PESFVg/tJcSFpg80pX+FhzhX57WkQ4ml4cFcqK4rcdhOmB1SqjSq6w+?=
 =?us-ascii?Q?LiS6AheTCMlYuOM9wqSMAPSKttP4ewFv5w4MATPiX9H2U9v0s8WCJgTlkK/h?=
 =?us-ascii?Q?O6DUwgfc/1UiaVIN2Q0JIzm3BbKBOpv1E5rIZ/jbeplYqILoogJuvjZNZJzm?=
 =?us-ascii?Q?mk+3uUhlEdrB5zYnhlrs5XwloCJdPsylsRQWJj/yLUGfHLGrpmbvTG08fTmQ?=
 =?us-ascii?Q?bYjTtPERGQhWf0hJypVqaVNz96IuH3ag9PO+X0a7KaZ7PJCr9p2VlaWuRx3p?=
 =?us-ascii?Q?WwlAIf0Ny5prO8/C5Gr6GF+bHZAsivLqE77L14zpXf2eqNiv5gzubhipK43l?=
 =?us-ascii?Q?L383BT7DgBEPyZelLfsXHdIRMYBPvD6UGnQ7sXqJdf2aBsDF/S24K9Hj2NXL?=
 =?us-ascii?Q?OJNgHe+PAlfEWXwR0qocK9ST/+joVtXPBojdVL73jJ/Wt0vvYeY/GXo91J/J?=
 =?us-ascii?Q?HLQhccQZQl3vNgYVkC+yWr8gPGItNiDajdUhInVivYMREUj/l0WYglmfDFOb?=
 =?us-ascii?Q?BTirsCemt1k0BDBufa0+IaPjyki+/Zx3riKOi7Nk975vHRJf9J8TYD6wGjWN?=
 =?us-ascii?Q?noW9EoD0DGK0Cu9MX9Yx75Xc+TvvFAJjHi3mXE5LVjBVTkPW4h+Z0hkg3P4L?=
 =?us-ascii?Q?ra1BGNHYnmqGI9/2bhdtd2/IMMsXW5uIAgyI+g1srIAUjva1k3bKY8ZMOYqw?=
 =?us-ascii?Q?nDQu161jCVMVmJD1StQNbRwB6sl75gjm8ikSwLfGgl15Fk/1woXGLQ1o4oZz?=
 =?us-ascii?Q?hHgtLIQL4i/BvRG4VcUJeLZgWkrA1YUW5Y2PVf15Zio/WGVROU3YKzBFt0uu?=
 =?us-ascii?Q?lqT9+F3oRswEE+oZzmOEUtl8fGbNVOdN6e8X1HCIB9C6tRM08Z6CMCb/Trgm?=
 =?us-ascii?Q?ddx0pR4TsBUvnCesljAAeKJfXqRIbZuCF+7AEiWu+rpkOa8Run7eAt0XVkMS?=
 =?us-ascii?Q?K9zjcCCwyc86wPjhRydJsIANX1Pbok9x?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB8218.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?tgxZ/KQMw2jNkRsIV+f6rpEpsR7H0x+hNgIsL4TlEBAe+G9mZznAeZm9My6M?=
 =?us-ascii?Q?pJpIqn0XFmvOEHQVF92SCleiPzUsvqKyabw5XWquNVF8ALFeJM4tns59PxLq?=
 =?us-ascii?Q?G4EclIulZnIG1MYwbXuWgoRSpyt30txMyHaXqoRZz8ZnOlfBL4TjOUaO9vee?=
 =?us-ascii?Q?d4ET/nH8D8qJ7B0ko9g+MrPj31PIjuqoHq54Mlx+huMF905diwTuhbUfp7KK?=
 =?us-ascii?Q?OCQf4WOZiEtGwMtde74MiesrDE4xynhKM3h7MBwlEnxe0SR8pOrAIKljkEqc?=
 =?us-ascii?Q?ZdRTHNPcsacn7s1iut0LJGWU2fYKRzZsW7KJWbtnKmbiVtx/FrWE5U1gBAVS?=
 =?us-ascii?Q?9CbZ6OaeZjTWyOZQvCNgwSfur40MgjixkCJmF0OkcdWy5oB1UHDgeulEr+pL?=
 =?us-ascii?Q?jLMxayIDFtIa3aJ2TtIJ9gQQDZ659DmP7GY+5ZRehkAGb3W7ZtoP9UfgEy3d?=
 =?us-ascii?Q?I93ywnPo3UA64qg+NASPl0Ir5xhVK95f7H7cjAYgOqHkLJIUBbBtpWexpatl?=
 =?us-ascii?Q?bAe7AKME4Lp/IokV083t4mE45POmDLT4Dq5d4Y/Op9qiMEvVLEkzcl2f8wLf?=
 =?us-ascii?Q?lYMOAwQsY1DpKRzDlxEW6hU2zmnnoqgTCmpCXcVTHzI/kbrF0x6zqpg+MT6k?=
 =?us-ascii?Q?pBFQybJJoM9HnKxP48Iq6KZCW+f0cJgzKDZOJ1+NwPwuvn/viZyiK6c5qoB5?=
 =?us-ascii?Q?rAw8lsPMXbW4g4TsUMyi4PSKtrRyUJdipiubyvFZx1/+5A4tztUxPduJoTex?=
 =?us-ascii?Q?UStq5v2G+UA2dH8ESxJn8LbWcQIt+EnCbH/Yv+iTVyannuW+XtQtg8uleW6Q?=
 =?us-ascii?Q?C0L7tYmukfQSIOw+1Oo8Wm78q3gqYT8+YZTZ2MslmwavA0SV+6g1InIUKYBi?=
 =?us-ascii?Q?qJSL5JJiMksitEdkVdZa5wPIi0G2vCz3n7EGWe1vmSGJL71gbTmRFAOeYLhU?=
 =?us-ascii?Q?BbAXzI0Zm37smTZLhZN8Ca+wCo2JNMjeOSX3klBBqWo9i7QHCHezx3/TJhi6?=
 =?us-ascii?Q?N7xlpvGVYrBEgR6GwD9XtX2vXH8khVeF5mMOI70G6iNJ8uojcQEMfNL5xcqL?=
 =?us-ascii?Q?8hUuld1qZaW0PRODdkkaO8Rfo4ZN3ivieFvsafPlXL1tmtG4dr+sc9gYKY/3?=
 =?us-ascii?Q?bz8t9F6CcPTeS6E6s3kVsbnCOyW7heY21S7MCk63psp9LD9Z7nXkGcnrY4Jj?=
 =?us-ascii?Q?zkcRVcjUyi+VKUR1kcJVHTZsZq2MY9i8+jXALB8C+qSz4/yiWWiI8L5Quw7G?=
 =?us-ascii?Q?X8y4WbIbdx7zDDNjIDPNbgy18kQAfGkCXVGLjrFTsncAW5/RleY9zaGgpIKX?=
 =?us-ascii?Q?UfMmi3DO710ljgRbcpTbya1VNH9gNK4VKX/6/IjNUKHfx1q/7oosvmvT42Fe?=
 =?us-ascii?Q?9JuVD1lomBCdetqgM7wcy3sMvPLUuJbpdfU8C8JqE+jw72sT2bku/HPQGhY5?=
 =?us-ascii?Q?tZRcW13Or44R0o0t86m0HHP/nOAaoJGrPYaJVCs56GA5b7ZbsTufrcoX/Zs2?=
 =?us-ascii?Q?DDsWpIe6D/EJiu0g6w6Ek8w81x4k/I+697I/2lrF89dg7dfUcI1rjTTM8PZe?=
 =?us-ascii?Q?CjgOaAZNeBReCm8vMO58rik440RHZAnTP1jV8f2KtahXqqTGOHCZx2tnYTv1?=
 =?us-ascii?Q?Hg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	P0fVSuMfHX2s0iv3ABZOG9YKSTZeolJDnQI/0fIjCSlFpllYRPsQOEj1nXOChkYv/nGlANIJpfFrC0iAxs5J4IGj6s2cFC/8n2VSEloIC4wEldX8bbLkL6RsX498gSdKauhUurOmufhyA4lyTF9ISJsUdO2xEsxytkHCqZL6frnZCGAa934AFmEM674fv03yLyXM2W5ktv5rfIfyJqytT5l3a0qVzjP+esh38VaXmBtCoWAw4dNAGjKXontoAxp7F7KFDJhgiMZGgI+/8ekSu9Lmw0TEb9T2FyKcXhV6AjajATZ4TcVP/lspYqp8j04ijAaciSh6g7op3NEyX29vXFe5/ZRMmIYoMPER21UX9SIB9SDObU3jYgzWkrrHeC9147rVtVME0fdZRXm5zc3kHIkqyrsS6bdn4Ng9d4WQQJFI6Rch4Mx0whB/IRz+rf50wu+nYKVfjAaK0tKy+IP2kbf/U2YvoLVfRt07HbrdVjAbJN0PbdVyIbGVaLWaGTVb0Hm1M9TT23bEExNWWl0kl5LQBTbJC0zwy1d4ZiGEl+n2uFMEGIzkKATt/p7xWzJk+dmwDSaeeRAHVtORiZJzsVYTDqRncJCSYB4k+MlUBhc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3bf1e85-0d67-4a52-3279-08de28d64fd9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB8218.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 08:16:46.1550
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h6Cw7BnvT1HGuIIPQ5zancyF3jMt+P7WFJuPijo5BdjRqCEZV8dU+1JwhfbzzP4Lr68Dyif/yMppOsRsMw+OvSpXuUd8qP7y4yabPF3RsEs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB5674
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_02,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=771
 suspectscore=0 malwarescore=0 mlxscore=0 bulkscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511210062
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMiBTYWx0ZWRfX3Vl1LBtw3nrW
 58vxZRE7wZemI2I2HA2DTZ0FDWfMNWD1CIkfpKzGBM4Pr9xImEntOmAx0h7qb6HzbqZ19YA9x9X
 O+S3Z6k3ac0WxBxG4EmINQRCjDapvvtXQ9nzMUn9uhjMYXQG9ZPP9NfCBjAe0Wkgz5CExESDscr
 P8WOwo39oBrreq2oxx/tWtMM3Th3ZbcCOjs91Jm1dJ0VgtTKK2FKKxPJy//7V092xdvjOkDz6CP
 26QbQYYYy1DvzkYu7Aex5r0MqcfRyo7vzDv6Azi+I22W8ABSQ8jEcsVdaFIcdmEc/lanTrS6aKF
 26uG9Z7vi36bO2gWB4OLUOx2Jk1THpB4eZ/uJi37CKoPGCsM175584l1bQj2rhj6riN2V6s9D71
 Mg0J3PVWeHkx2LZhQap7NmU7AH5syw==
X-Proofpoint-GUID: ow3c0JuGcL9mcCFDfyCkEdzLfi2YOdGQ
X-Proofpoint-ORIG-GUID: ow3c0JuGcL9mcCFDfyCkEdzLfi2YOdGQ
X-Authority-Analysis: v=2.4 cv=Rdydyltv c=1 sm=1 tr=0 ts=69201ff1 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=yPCof4ZbAAAA:8
 a=qCqsrm8lsryg6KvkBBEA:9

We actually disallow VM_DONTEXPAND and VM_PFNMAP for VM_DONTUNMAP, the
manpage incorrectly references VM_MIXEDMAP. Correct this.

Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
---
 man/man2/mremap.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/mremap.2 b/man/man2/mremap.2
index 6a6df8601..cbe960f77 100644
--- a/man/man2/mremap.2
+++ b/man/man2/mremap.2
@@ -206,7 +206,7 @@ The
 flag can be used only with mappings that are not
 .B VM_DONTEXPAND
 or
-.BR VM_MIXEDMAP .
+.BR VM_PFNMAP .
 Before Linux 5.13, the
 .B MREMAP_DONTUNMAP
 flag could be used only with private anonymous mappings
-- 
2.51.2


