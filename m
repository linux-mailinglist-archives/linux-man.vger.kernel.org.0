Return-Path: <linux-man+bounces-2122-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A399E5E0E
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 19:10:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F475281B23
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 18:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08CA1226EF6;
	Thu,  5 Dec 2024 18:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="Yxme44U+";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="JYk9BaZd"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E930122579F
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 18:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733422214; cv=fail; b=GSuQNwQ3LSOwNuxB3yE9f/O+l9hYucAkZWulLVooQ59cpzemGKWQmCSKO69gRdiG0RwOg1RvoTBmTmmuTGyZ9VyZ6LmZb/sSKhSd5hl17chHesIOQHX5MR77rJHUZJ+ZkUztDdjcx86HgvMvW2nxKRDHlW1ZTpCGyC9pX1SgKcM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733422214; c=relaxed/simple;
	bh=r4pPSeYHOIz8HkaT4FB98t3v89PSbCZHb8J13EFEKwM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=BKqdx4dmTRCOjSWPAE2bxt9Ymr7GOB3ufUD3V5wuC+nsfyEd+FQTbehW9L+8RDkUt3Tsw+s72tLhTtsEEjPMAkADSZVum+3m412I9SDMjutbuJZ0iNxOGVkl5L9xt+J4KvRHIcUBOp1z3v8crhhfXXbcfJEJ2WW1TFG52HlIX8c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=Yxme44U+; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=JYk9BaZd; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5DfkH1007188;
	Thu, 5 Dec 2024 18:09:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=Q6HytPLzAjMN6fyNcW
	Xx50Yiz5ZtIH31GsAHVEPYCwo=; b=Yxme44U+6ArEbD1vAYT94+H5qtdG1R6Qyq
	uLIN/RGfobmxU1jiG+M+qghIE5M/RcohqOjqdZR/EawmBz4mQY1dcVHi/XmiPQyD
	6AoOvCyXtbiB5EpzACvXH2g24xRvX7Ac2zBGM/E5CsnpzOJDSWsmOdooPxCFCTLf
	i4m8LHJTJi026CNwUwlwauHew3YxTBwRv7O6HDn2iP+z0s1D9v+WUEermt6Tltcr
	XGQIZIqTM7LcflfSWhl/u6eLowarWz148oelAq6b5ZIvagxKjRN+FxGqgOJO/4Q+
	y+5hfkITN7P5fvgsc/xPS5G9izUTZILo03ktdLnZG8eWg4q++qKw==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437u8tbvtq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 18:09:58 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5I0H2u001419;
	Thu, 5 Dec 2024 18:09:57 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 437s5b8vwb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 18:09:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=llsA5brXS+M7RTCH4iKHB6K1EY6CUdZp3LlwcA0vd/pd6oNXleNA0CXxpStzLVSOpTVV2iGV5xfjuoUUK8XBtzpxLWpukbOtPiuclkNSAqjPtkUZoUa02TeLmYCdg0j+oGj3n6TzI7JOPHEXESRL9KM4B8EXjtBgcb2u1QgpFXjKd/KmUylCDbwrQcG1DyNLb9OfvPvG2h16Kb5HPh0/t8Wj6Wfr6Ws2ChVAqf7y5y4Xzfyj0xUWAwpocK1A24wfKP8L1kpxBkIBjYAL1ChB+zqW0SaPxvh4pwFNTtKHSnQ7Ye6xsVpSoDGdLH5qa3haDvKXpoLEKXHPo04x+NR6kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q6HytPLzAjMN6fyNcWXx50Yiz5ZtIH31GsAHVEPYCwo=;
 b=K7hK0WAH+TduX6VPNosxZotle3Dg8YQepaH1ibAMovbK+a3pRQhoFc9JB0irQN7urwUnVSa/RhULkRZq7N3IaP85+UApo0/Tl9i1n0SqjH6ZlkHNtDX+KVsLULu+zE18W/R40CZQdQRYozTVEYt6OSW++CcV/NotpIPd9+oAvAEW9EugTDlGQ12dGyYlesTqMztnaqTLsFtmqCu23YjRfjMH7jEDgryhfP7OWdIoV2j950BjGzuS7YXX556XTTsE9NIe/9lrN/cGQCOvJw5OewT50v1/PzukBoyqdBHi0byMn5DvpAD7PfAeP8nZ6gNKD1g0DyIUesx52RLxOhb1vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q6HytPLzAjMN6fyNcWXx50Yiz5ZtIH31GsAHVEPYCwo=;
 b=JYk9BaZdBC0EMirGgBt6La7LxTnEqIlfn7XC5V7LFJzQBixIRU1iFQawo0G4xd6LqhfvFK85QP0DUU6VApqCFace/HP2KOxMDChJgLYNtSnlwWDNT6G7Vinokxv103P7khjXHGMAsYtetRBfkZSvBpGUEzpk0yL7shUx6skC4l4=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by CY8PR10MB7339.namprd10.prod.outlook.com (2603:10b6:930:7a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Thu, 5 Dec
 2024 18:09:54 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 18:09:54 +0000
Date: Thu, 5 Dec 2024 18:09:50 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Jann Horn <jannh@google.com>,
        linux-mm@kvack.org
Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <e71ad8a2-3dc7-44bd-97e5-fed6eaa30d55@lucifer.local>
References: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>
 <b9f4f985-771e-4f09-a87f-d56f898e8d39@suse.cz>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b9f4f985-771e-4f09-a87f-d56f898e8d39@suse.cz>
X-ClientProxiedBy: LO2P265CA0195.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::15) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|CY8PR10MB7339:EE_
X-MS-Office365-Filtering-Correlation-Id: aa86c09b-f71f-4864-b340-08dd155804e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?cCTs6bZkcjz7WVVnGsP/cuFfGAQqnn6I3DmbNgaMIAoeq3nq8Wd8cJWLzOVj?=
 =?us-ascii?Q?1SZGkLKGmAdW0c6//bMfev3JQ76DjNPmAr4llDRIcEEvKlI09KxQuR6Dd2D3?=
 =?us-ascii?Q?HUNaODI3hw3/STHG4Ab/3ZuK4NEIoQp3seb0NKMSynA/wVDOWt2tZxxsmH8X?=
 =?us-ascii?Q?9+ve2NCy62HAQoC9jHDBFmopZDqhjxJhsBYOxG2ElccROCzUCt6qLjPWWbNQ?=
 =?us-ascii?Q?W7bU9QqB4wpThDDPJopBIOPkO9a3YIR10OFlXWPDLCogi97q6h96MlFG6D2O?=
 =?us-ascii?Q?4DORBgZKN1OrEcYEGh7ChcTVjmJFncSrVrNAjaxLSC70Y2CAWihR7DlkM43C?=
 =?us-ascii?Q?LSQFmd1kYKEvNiJoFgKI3usFW2yNkOgbZToaW/kmjlrdbNDq0V6utBPWYzTg?=
 =?us-ascii?Q?TzN0cGC8xVOZAzJsW8o/xJZFHhuSbBbvyHEvFgHziDvOUoIkTqQL+tyrmuTB?=
 =?us-ascii?Q?IIIv1GdFTU4KUaepMsTuLktuj9qeulF9/NUbZaTYZPYP1QuKXplcP+T4cfXk?=
 =?us-ascii?Q?oFpMrA1APNWA3e2AIfoRkcEGrBXGdwM6xU1HK9e7qrESk2e+U6ygWITlqEvm?=
 =?us-ascii?Q?giQ+njXlA5nm4t4LctL79w5OpzQ3iaMTlyqujUqv4c6D/nPeOt7cdS5OxNjX?=
 =?us-ascii?Q?BUK2pXw060NbP0llX0P8j/sqJb9TGRzmFieLs6xIixGdwFmj2R5yITAVgXHc?=
 =?us-ascii?Q?FjlaokEABiV9vpTjLwxrVFnaC79JdC2L4rjUjWew07WXulTj8zxOtJCVWzJS?=
 =?us-ascii?Q?M27rj30oYbyFOgD+fS5AQDZIbqEPjSpZP8T5dyiTlbxv+9ewE1NLeVAGohQj?=
 =?us-ascii?Q?bRCXEPJur4Up5lQCvD+PNoVRiYeE9UHw7/iIlMZFUFtun9mUxIdBnpDCFts6?=
 =?us-ascii?Q?Q1ktt38egitaIT59hYOM3l41gBaCjxG6uw05LxHKshOkgv2gbUx0OD5hpwFM?=
 =?us-ascii?Q?n06LJhKTq+FLYPkqSMiiP3gF7p6Lqzl0O+NNIUkCWo+R5aELmQXqwpp1pT0g?=
 =?us-ascii?Q?QMSwA0oAq76psl95Ku6WZcTOUZJlsrJ9PqVINLgyJUC1FblQgLccN2P/J8rX?=
 =?us-ascii?Q?ma/TLF0ugiuE07IEuaTBOEcwKhA/DCOQM8igNCLwvYr620wwiNZE1eDmksCW?=
 =?us-ascii?Q?XGEXuWa4h9/O5jdt6C94LTDsY/NWO1nSYlOM9c2JQlx7if5dFwUz1o+nOPQ9?=
 =?us-ascii?Q?guoMpFcNMsSLd0FcfUGMryFIVHFYtvwtWHqOPI36D5UnE8SFnF1nIWy8870k?=
 =?us-ascii?Q?aFxy5HqNQbNpCDTfa4sFX4yXfHmKN8YIMBbcmhiF8Z+xxtPQqq3pWX79hxl1?=
 =?us-ascii?Q?QVrhAuuLKSikQIhDpaFvksbrVzfhpeSmgaMnf24C4mgI9Z0GY2SxRKSv5s36?=
 =?us-ascii?Q?ynTK4z8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?M+fYzZBLyNS0hI1lpL0Wf8EaMfqJCAWlEvOaDp52vjBRZBTgNi2QbbCo9diV?=
 =?us-ascii?Q?CgBgnAcJrT0hAhYvRRKcbeXAb1/LoEftFqL4kb/NZguNvUBnF5E97wNTnayL?=
 =?us-ascii?Q?rAGg3HosTwwIZiEZVgfMZG++tgLRaU59LAhy/ARn3olIylMRDOBFe5Pd3CgJ?=
 =?us-ascii?Q?BT3Sx120lL1t4MEUER7xxhS9DsaDm8kdOZG2BVExroNAgv+oyR6n5RptcxjF?=
 =?us-ascii?Q?Pj+miv9jIdt6+2Hk+PNdxi6Q+BUlgOl9QHdobEuKY+CcEqSFvlIAXba5TyVz?=
 =?us-ascii?Q?IoxW3+zbZh5xGex8+1zlQy4P/12Rgl5GxWmYaaZFH1HgoZNyAkRiWDpczk8M?=
 =?us-ascii?Q?XrxTN/v5eKsH6xRogAsmlZrEyM0v7jWKnQ5dV0vrrPNBUqWwl0hz/M0YjgIZ?=
 =?us-ascii?Q?9uGl3CtV/oFgL2VK+Iyar3EYIy7JUD2/iFM3HCc6/YEM5uYmxXKvrMZ68hA0?=
 =?us-ascii?Q?8AtsnfAdccemqFLUTdztffdyc3pD6TUoDSdcVFLSq2834t3CT/5nzOjr7RaC?=
 =?us-ascii?Q?pDPXO3hI9p0sHDuF20pS5TZDx/DJhvykPKNfiwx8Xd9+i1vds2XCrtUe0V3T?=
 =?us-ascii?Q?33aoN6qqsX62xICCt8wcQUKXDGJA74cfGngEXq7yl6tl4rgGPld2DCCnp5rn?=
 =?us-ascii?Q?JICDlS39LKMEQavtKtc4x18jamLv8Ggm69WNGMXWshH/Qvmcic3RrqXg7WBU?=
 =?us-ascii?Q?5Z+2te3jx7g97ZIGhx3yF+QskJZ9H/sTnX1zJYiTuGaoHJoYcnTQg0c2h6ID?=
 =?us-ascii?Q?4eGr7t4yCjytP7ejz26sDWd9vKyOPNFmB0umDyLBxbzcMLZhILvdm0k58fbR?=
 =?us-ascii?Q?wjQs9fsgj+YSN5srXhUwE9IM2h2TVJSgQVoYDzPHbRdjT+wq/eBJDRfrP4D7?=
 =?us-ascii?Q?vQOogannO5T4LFAYSoNc2y7nweABqDBeFqSdJvUAljyTpHsHYXQa2XRFwQVo?=
 =?us-ascii?Q?RKnHisRKdeF7tx6zAWBD3Fj8scBnkuw+Le9lDxsgNFzCVc/9oYb/ypMqHEN1?=
 =?us-ascii?Q?Zh/knpjUPzoU8pGDRpIMlcF3ENPxz0m9XW3QjqyJXG7Ev+oDtJvHr2y+KbIl?=
 =?us-ascii?Q?1GImF9YPAE9AeJIjpgkAREAYaTvGj7hEkM7SKWe6aIFUZ+1rp7t7udMnndDp?=
 =?us-ascii?Q?jg0X2oPzibwTblltkTnsVmJFl4MgrWsGJVh1r4QftkZieADoPDucCkpS3x/X?=
 =?us-ascii?Q?OfiBdLWhrhDKgiIagofWFgypY6Jx7PLelsJh4Nk3ZChlHBIZsZ1jb5QnnTTw?=
 =?us-ascii?Q?JRNQ63V10OUnCwWMpaOuZFXaODoK1/mbZrDQrKjgZYrMyMuARwfEVo+zIlLI?=
 =?us-ascii?Q?biwXdkt7dyaFddabhVtsVOe3/RZyOthEUho0crJZ77YvfqybZmsPCijwsa/v?=
 =?us-ascii?Q?4VpgABNWnA5F/LGNtqXcE9YtyXhjpQympeseJqbDPdVUrswNPcnPUr7UVd1H?=
 =?us-ascii?Q?pgut6sn6vVf6HAR9NooApVRh+UwXiH80kGGBEyloWauFcVzOhnfiFzvb125T?=
 =?us-ascii?Q?ZRaLXDouv7ADxCsasgaR6KCuKbpeoB78yO+8XtSSunEJ8OL77OwPU6DUt6qM?=
 =?us-ascii?Q?HQwr2iYYyxMAv9WrTVGeS/uz9QhwGFs0J109elvVSdRWFKdY9MUMVM2milNX?=
 =?us-ascii?Q?Cg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	2KwTJ490ZLOytJQawy4qEgavaynQL4q9/4N1Um805n1iWa5jwr5d664ofwe8VMDOpqC6dYQi5FEjglR8mcnpZ3ZlGly8PlrFojMsiaXPdWT+RoamWM2+hdyOqCkUdfn1rxCTW5haPyaLGdv4ByHX8UhEyOe9L+/Qst+7VKajDr7q/nFzZYlZzLo1BE8kUgjhMGv4tRbntmu7BEEk7wNQGIaHPwqrexwo0JRWEM8+bM1Afx6r80D602dWobgk+wGdbGsLrOH8d7hiQFY7GrX/TXGWiMLbYvUs8/QP3/35yt5CCBC4iklBx7NADWRUB0ZqNreRzlYFRwj9q3AlnZYuYvpD03TxdUiAMQIdfWHHnBGwnU5kO9eZGj7YFGV8Dgi866yQkgpLVlx4NqoiPQcnfWspIh3/RQ+X5F5NtLPmtcbss7CjoRXTOZmcz/PzgpNJkxksU5abDM7FijZfs/nCyZiudyF81M1Zt9VQ5K93QJ+ZOSZf6omkNFtU0EwjBJspmlYeaF32QXBShT0Awe1CTBV2LDDVJl5eZFGs0H1m4ZI540ffc292Z7J2//mjGaJlaFE8j0eSNr93nAx8SXBiH9hmpBFL+9NQAKhZQX/jVz0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa86c09b-f71f-4864-b340-08dd155804e6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 18:09:54.2783
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gqIYqRS0Mh/3MwA7wusnONYm1CmlTr952BWM1j6atL+9KTa4GKdGRYFJtEjhJ3atQU2AaUYqxHezzVoXM1dPpThnRdJbaI34jLHnkW2jg4g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB7339
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-05_14,2024-12-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2412050133
X-Proofpoint-ORIG-GUID: X9h8I4i-kvmRWTloyC0bPFqXknuC-Our
X-Proofpoint-GUID: X9h8I4i-kvmRWTloyC0bPFqXknuC-Our

On Thu, Dec 05, 2024 at 06:50:09PM +0100, Vlastimil Babka wrote:
> On 12/5/24 11:41, Lorenzo Stoakes wrote:
> > Lightweight guard region support has been added to Linux 6.13, which adds
> > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> > call. Therefore, update the manpage for madvise() and describe these
> > operations.
> >
> > Reviewed-by: Jann Horn <jannh@google.com>
> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
> > ---
> > v4:
> > * Reference function chapters as per Alejandro.
> > * Minor rewording as per Alejandro.
> >
> > v3:
> > * Don't describe SIGSEGV as a fatal signal as per Jann.
> > https://lore.kernel.org/all/20241202165829.72121-1-lorenzo.stoakes@oracle.com
> >
> > v2:
> > * Updated to use semantic newlines as suggested by Alejandro.
> > * Avoided emboldening parens as suggested by Alejandro.
> > * One very minor grammatical fix.
> > https://lore.kernel.org/all/20241129155943.85215-1-lorenzo.stoakes@oracle.com
> >
> > v1:
> > https://lore.kernel.org/all/20241129093205.8664-1-lorenzo.stoakes@oracle.com
> >
> >  man/man2/madvise.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 93 insertions(+)
> >
> > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> > index 4f2210ee2..7d682fa40 100644
> > --- a/man/man2/madvise.2
> > +++ b/man/man2/madvise.2
> > @@ -676,6 +676,91 @@ or secret memory regions created using
> >  Note that with
> >  .BR MADV_POPULATE_WRITE ,
> >  the process can be killed at any moment when the system runs out of memory.
> > +.TP
> > +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> > +Install a lightweight guard region into the range specified by
> > +.I addr
> > +and
> > +.IR size ,
> > +causing any read or write in the range to result in a
> > +.B SIGSEGV
> > +signal being raised.
> > +.IP
> > +If the region maps memory pages they will be cleared as part of the operation,
> > +though if
>
> Hm this reads a bit ambiguous. One could read it as the memory pages are
> being cleared, but it's the page tables.

This was really hard to word, because you don't want to say unmapped, and saying
'clearing page tables' or 'zapping' is clear to us but not necessarily to a
reader. 'Clearing mapping' makes it ambiguous vs. munmap(), etc. etc.

But you want to make it clear (no pun intended) that anon pages, if there's any
data, it's probably lost. So I think this is a distinction that doesn't matter.

Will revisit once we support file-backed mappings.

>
> > +.B MADV_GUARD_INSTALL
> > +is applied to regions containing pre-existing lightweight guard regions,
> > +they are left in place.
> > +.IP
> > +This operation is only supported for writable anonymous private mappings which
> > +have not been mlock'd.
>
> Not sure if "mlock'd" is the canonical term, I think I've seen "locked" used
> before, which I don't think it's great. Maybe Alejandro knows better.
>
> (there's also another "mlock'd" later in the patch)
>

There's many different ways of saying this it's not really hugely
consistent. I've seen mlock'ed mlock'd mlock()ed etc. etc.

So there is no 'canonical' term, and I think it's pretty clear what is meant
here. There's also a reference to "mlock'd" earlier in the file (though in a
comment...)

