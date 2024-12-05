Return-Path: <linux-man+bounces-2114-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 252D89E52B7
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 11:44:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54EBE16A239
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 10:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A4F31F131E;
	Thu,  5 Dec 2024 10:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="UNMuvtBP";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="t6FscAjD"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C5C1DAC81
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 10:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733395314; cv=fail; b=Bukw8/9Op+Uf0vNCCFD82ky4a7vXCBMW1Br8RP9NQlktCw3pT9IUG3NuvQXzPHbK4e35G5bdRzxFc00mQ8MtmxrAyL4++gnOg7gRAQh3n67/zuNoi0lFQBEx8uu/U2Qso1QE2obVCDKBqU+EtizKd3uCuE+OTvo1VibuOfA/WHk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733395314; c=relaxed/simple;
	bh=wYGrL6GUMv6QFuU/PT+aTsBR2QumBhLQ4BS6aRuIpYI=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=XDBCsyj8n0CZz1D5oVdbrJbym3tXSfK1/EX2b7lysJZSbqIgeh6qDbvNwFRuDQDPFjd8djIqgSzXZS3xzkbqShWvlAvJK1vwrqO3BcdeiqTOIEqdvMUCICyM7XXAOZ0+FvsqAAn6pr1t376sXoyFVI471kSe1ePe0VQQpo5CUtk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=UNMuvtBP; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=t6FscAjD; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B57NGTn024264;
	Thu, 5 Dec 2024 10:41:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=wYGrL6GUMv6QFuU/
	PT+aTsBR2QumBhLQ4BS6aRuIpYI=; b=UNMuvtBPy3MBbOgmmqYnTfIUD9r7mlE2
	R40+iN3wo/BXpdn1Ox2F6xKr/PB9XRqsXGki8ZYwDUGM0mDlBQtQMW7rMzwMlme0
	J/8T99JtX5TDOSRyR5fU6gFRaH4UBPg3DoiDEUSjdHxb26Q1wZENyy6x3QsTX5h4
	7/frCW9aFekvoxjqRuo7pWnQ8xQoDebBIeiOqWPAD2PLBKeO8TmClJM+OSso70in
	gZAkOFFs7eFHfwVndF0xL0qSN9vAWyfzP/8BfJFc7mu/xnwae4Ge2c44Vt02Ygi6
	VFAj5otztlOmjbplOeZDRODRJybk1cw0KQtJGrMZqLzr6Mus16xWlg==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437tk92h50-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 10:41:35 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B59whZ1040070;
	Thu, 5 Dec 2024 10:41:34 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 43836wmuta-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 10:41:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J+vBggwhjFV7Oa9wSyPegGlZswfvIC6XPFQyJl4I1rk89W5/PK2FbaBchA97DmNfodk3LQpBv0SDHdt/vkjSZd/i6JSRqiIUhEJZwSL/aqiP4K/sFJo8Gr/0ooskSGH/Yt7FGQZ0tuM8InpCVGn62/fdZF6ftJPK5K+YmU1k6YUWek+X5M98UW8WeCvrSQ5380TDvebSepIzPjGdBd5bav/YR62mf8tJiG37uQcOKdtgNQtcwC2JKM1iajVcBxcJmaOElwb8FdyM1u2etxrid9yiQk9ePLjjOpfjqGrIzncQCFxY4L3AMDGmB1MsxL95Ah19tvRbXGl7mz0Cl60LSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wYGrL6GUMv6QFuU/PT+aTsBR2QumBhLQ4BS6aRuIpYI=;
 b=KtEV9NTieydG3vnO6laM3kpAHlgrG3OmfnprbYqJ7/foAZ2GIo12or9TpM8/MwGo0WUeIsWo/hv8A+GyprqfTUmIND0M+9yCxPUFkFzMy9+UnBeseNbnrPClmFV1zqsholsHaJQd8nL+h1BKSWHXM7h9fLxugJQzyLvP0TFpHXttVHgZcqXmNs9eAopmTpmwLFQ2eyKyaEVopsbPHakFGMDSkHenmBvZhgNT9u9bcOB1YG+JfSf3zUz2QE/LOP21cKl2NFOyydrB3Rm+tvJP3j7xOfC0APD5P4EioQtveNZXMIMbyLjkmzI+dK37T84GY1yXsqwq7ku7kJjKR+PX5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wYGrL6GUMv6QFuU/PT+aTsBR2QumBhLQ4BS6aRuIpYI=;
 b=t6FscAjDwcWYjYdCxi4taEMAPAu1mbnUEbsCtMTCUIYtIqTGOo+GtmTkxOWb7wl8FO6YpxZzULt7sKfmtuTbCMVGFaXEqzv8cBw4XmtyNqhY56v8brpOIGsTFDeyyjfW9Z5z+OtFQolrLSrVK9byStHDtDHcGChckoLFj8u7TiA=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by SJ0PR10MB7692.namprd10.prod.outlook.com (2603:10b6:a03:51a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Thu, 5 Dec
 2024 10:41:31 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 10:41:31 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL, MADV_GUARD_REMOVE description
Date: Thu,  5 Dec 2024 10:41:25 +0000
Message-ID: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0071.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::35) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|SJ0PR10MB7692:EE_
X-MS-Office365-Filtering-Correlation-Id: 704f22c4-0151-4870-50db-08dd15196170
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?5yYlxQ+5l9vVuG/ZZZUOgLYfcUjjUJ3ZuehqVD7bEgZ12MJ1Ql/yMS3/sQUS?=
 =?us-ascii?Q?TAdXQITJMBPu/FjLF5x1clj9TOUtfPswXSwrbrslEG8vv9pbj4PLscPcSHup?=
 =?us-ascii?Q?xkLQg195HTC7QkkqjRrVNSdYZ6WUOSSobwfb77rk4PCMUOqXjBq1zhV2MIqT?=
 =?us-ascii?Q?aQUi4tYV24E3FxP1rEiU0nJIj2kPk7jyR2/7t5omEQ5gZzSQSDu/5ITJnzjT?=
 =?us-ascii?Q?4OUy4BdWFTgoslw9UW9BCa52AzIA75JDMuYz2+GWjT5X3fJmUF7oDIjChjdw?=
 =?us-ascii?Q?g7OM7FyQVmoQbMUnQG4OU9zXZQI901+vlHas/ag4rf6Ja55U76eWZ3F/HMDD?=
 =?us-ascii?Q?TDSuHreMIb/HRzf9OU5GFp4HCdHbFODAqDaIu3zsWw8/tMbREEGtCclisG+C?=
 =?us-ascii?Q?pGn9HwTfFaRxrMYlRJbOal7ij/4qEYl38pOstN9/dTaxDwUhHKRGWk7Mcqsv?=
 =?us-ascii?Q?oFM7jIbZ3Se7FZv7BOpZQyUyugmqNyWeW43ZVv1X5imrXJGyYsietHiIRWDX?=
 =?us-ascii?Q?STpqwvuMeLWpKl0L8kdfHax0BAFgGtuDDXc0PDlUjidLI7YrZgsOgwqfhdR7?=
 =?us-ascii?Q?OP++PRFvx5gGWhimB9Nse/I0Pf1nmWWP2+9y+3WaTgTRkeUUqUdu/SjtY5K5?=
 =?us-ascii?Q?+TNQ7ggrVmfS//xLMIoh0D90OY+mNBZLO2i4hCVMxm8Gb9CV5ILL92rT/7bN?=
 =?us-ascii?Q?cxreA/7l2nEqDJs3v02r3uSG/qHJ7WrUPWZuUz2RSyNJImiB4cTOKMexA73h?=
 =?us-ascii?Q?Tbor3O0a4Irai+3iNTOJl7jTTIjV/Wf0uWvISIn21D2SQLh5yAnFRIk5rgLD?=
 =?us-ascii?Q?rTazkK08DfpeIy3Cy4AjdWaxZ/WcBrEKAXxaUYWhguS5UKSPCglfYPpkgMla?=
 =?us-ascii?Q?Wwbpxhc3fG5XfnRFxhT6JKUhz4RaoOnhFgN/j7vxD09cpmPLH69SOSyipfjG?=
 =?us-ascii?Q?CJozCiM9QgiPRiYb1zNhCEWKPPUfh0PN+XfcTPVEqkEitELmiljHiRpKQPqm?=
 =?us-ascii?Q?vHiM8g9SO7UlFPbbv0ORZQK58gVpDQBAyZ/gcMkwWeHgR7rg3qT13VbHOOrZ?=
 =?us-ascii?Q?cu00sDpzoU6HbQVdE2ryHbfjnIF746WzZO9+BibFXsVenW4KrbKlYFKKn0Gk?=
 =?us-ascii?Q?Cl8jAZgK3Nb/RhSrjdcQh/T71uVdBTBh5K6i33XLAM1HqevzlQpx4Bv+w+zI?=
 =?us-ascii?Q?KZJWQVJfWeq2xCUqfJcYwLvszsqPyLTDmywkCu70SrWk73od9hfNU5cQ3ejR?=
 =?us-ascii?Q?b76maqLFlflZhCSC+9u+w7ijMprM+yaLOGDx7yMM52j5sqUauXNqo/o1XzRh?=
 =?us-ascii?Q?0nYeesei+DMmCuFHswHxth5k8zgsrtFTKT6Chb/7RYBRzAbtq1X12G0dUEQ/?=
 =?us-ascii?Q?hM/GY6s=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?IP9rb4EQOqRxZzhRMDolU0FTK6tr2m8iGjLAd3md2R2HLt5/3CgiOYrC1//u?=
 =?us-ascii?Q?vggiVIfFNa+tLgdu50+heeaiH0QJBj8fKVG9nXhwwYsifTT5LZaXcKtIgf00?=
 =?us-ascii?Q?2cS1kESzcp4hpHAKZ3AhyUOFW3Ls+BCOseT2P9KmSrZDyvEnKzMmzOMV0MDA?=
 =?us-ascii?Q?68FAOQkhf+8T+9NZf7Or6lMcV8sPbDQ2o2AilYb6AuTiTf5QXnF/UDaiZ7Qm?=
 =?us-ascii?Q?P2jAIA46XXkxvEtToNCm9IUqyoEBSlihCsCYjryYPF/GD8TEsCpDz6Qrdk4f?=
 =?us-ascii?Q?rKTcBSvM1KbOj9Qqk3GwtH0Z9Jcf9a2VtfDWsRvraD2r96Avh1ZpBIDVwElM?=
 =?us-ascii?Q?rIao1H+sQFH0UTlwgWs87+cdxHIGp/VvFid0fbovvqpRZfgQMXHATPoWYyyG?=
 =?us-ascii?Q?7gnr9jdbdfFyWgFeQo4bdJXq5WnvMgz8NhFGLiGIpgxuKRGr86eQM2Ay9Kbg?=
 =?us-ascii?Q?5un0L/Z+HxLMrajAQsB9ANAt48v1aECqMF4cJGf4eHQwTYw8Ftw0/XtrzaH7?=
 =?us-ascii?Q?kSg/WWMwMSY0WMDI32Z4LAvPLTH+5UUStylt34wHOOJG7DjC7ushHoaHNSXX?=
 =?us-ascii?Q?Ohoo4onMDcHKnwN6T6tBuA13H346F86oBNtYStiDMzdAiuHIY3sZpoS4FH8R?=
 =?us-ascii?Q?O5ThJxO98LOe3QRUdZa4S1OtIjcAvby0MRPdfpbtFm03B9hBFrYaHJy2W3Lm?=
 =?us-ascii?Q?VlFVtNhN3JhNOtNNBYDsqkiAqwRZKdR9it8bCoE71i4bndG72nQ53//UCM5J?=
 =?us-ascii?Q?DuCmpYg4fJnQ2zbXnUVXUOXCgJ0d9Spu5/KinDPmsk7xfuTuIBguobLDEbI4?=
 =?us-ascii?Q?79DDYFYGsxqDU5ws/weRq4kZ6Kk+N8FXHIgWoyRKXsirAe/br0qLqLCpGPCQ?=
 =?us-ascii?Q?Qy10C+UoUnl167J7Ll5ruJP8m6Ia8L9emzWHq26XtgcpyHP04L6L7z5d/oOl?=
 =?us-ascii?Q?JYbeWcAh8czg35n3/ev/cd3+otZuXWvCY/rEwX52R9SIC+WDvo9VticxdWLR?=
 =?us-ascii?Q?FNctbolsc9IGSDSOADZCZl6oTJ40r1qmugyWXSHOwWFgRPCacf8FwGv9Z0JA?=
 =?us-ascii?Q?xMNEbMcbuesCEQs9TUMt002thrNOIQ7C285KcaStzn0mPgH/6f0GDN3Sycj9?=
 =?us-ascii?Q?tgioEWLQuwOSRZ7Eb1Z6fHcYdhKEjkUKCHIk+R3r0CMkCZ4u9U84yIwnDN5u?=
 =?us-ascii?Q?VhmmD1ElcZ1ImUdMqreu1SlmhDOwHhkbdu5OXtLislX0+GGuVqcqQppmVsMB?=
 =?us-ascii?Q?cE5Fz0EN9S0M91puQwl8acZqA36A/Zxm11uFQk4N7QwbuMVppQZbN41lE9Gi?=
 =?us-ascii?Q?tb23bn2yJrqISL9Kj6Ro5tb2FJoDWEnCgHkpUE/QvFZHw3BoshoUrfuWoNbM?=
 =?us-ascii?Q?ENEDc86JmOsBboC8ozcM+67N4D1APDDRLz+qDw2ilWqp2kW99Fz3wd2TocYI?=
 =?us-ascii?Q?39hob/LFsX2gRK3ELHIcClt+4YcQiHKyzIO0H+IGbSyxbK9qOsj0awBiyP5u?=
 =?us-ascii?Q?j27M7IeFksYOI+VYi+WxmaHQWeUjtp+OC9swR0u0b3/DhdH8mmQkdgbS6ohj?=
 =?us-ascii?Q?mnQggnZlQkELZSr++QQw/GhNX8Zcpskue69ew6dsxmVd/XDi4dcPoxuQ7j4V?=
 =?us-ascii?Q?rg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	6uH7B0FX1bFm9WMC+CrYZOJuM+gFUuIcaJt3aAbm0pJjNSgO6lrrSAnAqDsDXUyBAmHp+q70zhAXCb5bE3S7E5N2qVY//sBcFpyyv5TitXuF5VLiPUwH4ReEZrRVjjj4+4xL3pOOaNv6Sz3FEN9jqNuLuCl/ggY4JXw4a3pw61HTgLO0VBIlxn0JnOtuYyzMitc0GjVXls/s1jLACjoCLMe8GUobAtwYQwo8SOphcy+BFTuojrG+79Nqqo5GKnxeOD0Jft66Y3V83E38OxRSAk7JtV1zoAxlihBcbetgzRbHtprZtlis1cKuvsXKjbzFPVqZwd59hKMFpraYyS/utAX9azt+a2EiiNJ0t78RQTXVGwBQEpLQSKcLUZFlpwacuUqduhWCFfBKDQSwCfZgT5a0nHL0sVpWv+UTEwcUj6H/C1OLbHlIwyXzkBtB+UlJIuVqbbC6wM5xoc1KekrCooCIDHDuAgSrGDHLTsS648hhPriFLXEcs3Rro+toa12ZBUSQ0HLfYVwnt0/p67ZYYcZH0+ATRstCMEIWzPaclQifWm5agI1PIO6LU91171i16w6aLmkeDDCQ3KcEFLdwP8t/0GK8uGboYaJsuRlcEgw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 704f22c4-0151-4870-50db-08dd15196170
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 10:41:31.1986
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p3zAkdSr2jfHpPeTRpSPmKJpXGBP8VDDYPIOlStTqT41qjwnhLGXCcojmSdCUMxcULZGTrXHXg5BvsTiIU9/GcPhWN5lkLFkpvfvZUVYR6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB7692
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-05_08,2024-12-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 spamscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2412050076
X-Proofpoint-ORIG-GUID: Nw-5Go1tc30gwy8iJzkTSsj-4m7GgZQ6
X-Proofpoint-GUID: Nw-5Go1tc30gwy8iJzkTSsj-4m7GgZQ6

Lightweight guard region support has been added to Linux 6.13, which adds
MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
call. Therefore, update the manpage for madvise() and describe these
operations.

Reviewed-by: Jann Horn <jannh@google.com>
Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
---
v4:
* Reference function chapters as per Alejandro.
* Minor rewording as per Alejandro.

v3:
* Don't describe SIGSEGV as a fatal signal as per Jann.
https://lore.kernel.org/all/20241202165829.72121-1-lorenzo.stoakes@oracle.com

v2:
* Updated to use semantic newlines as suggested by Alejandro.
* Avoided emboldening parens as suggested by Alejandro.
* One very minor grammatical fix.
https://lore.kernel.org/all/20241129155943.85215-1-lorenzo.stoakes@oracle.com

v1:
https://lore.kernel.org/all/20241129093205.8664-1-lorenzo.stoakes@oracle.com

 man/man2/madvise.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
index 4f2210ee2..7d682fa40 100644
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
+causing any read or write in the range to result in a
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
+.BR mlock (2)
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
+.BR mremap (2),
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
+valid only for writable anonymous private mappings,
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

