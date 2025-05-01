Return-Path: <linux-man+bounces-2827-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C433AA5CCD
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 11:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9C5127A4CE3
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 09:53:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973D921B9DB;
	Thu,  1 May 2025 09:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="O69LTxJk";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="u9YylhTb"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C870A126C05
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 09:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746093253; cv=fail; b=hQUX7zkrD5Zc3yifF7CZDh3W9wQwlAOc/iUCSG3NrdXwvaMaVtN0u672wqK6AvqUjkkUW0EyC2+VfuhPuEfEf9tocWpPIZzJNjFdXnZWgz9QPwE0Y3FwwaV7CkK8nqeEK4boujMDLYfiV7jP6hItgrPK9x0zeGqJPTyrUXbS0bw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746093253; c=relaxed/simple;
	bh=n6AhC4UACESeQMw3E7B1HMPFlGU4Toxf59EE9R6p/uc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=OvgLqbcKwjs1JQc5kwIu8vRQvDVGQwUVSQmxXyjqYJqDP6FKsLKB9ajYLzd4PlSUQVW40zsBVkJGkyyc9l0YJJUBE8LSPA29zLxT2q3I64/xBsAct6Jw6xPZMJa0EICfGlwF8zVVBgPSMUSCR3IurCcoax1Rgxzf/jIBxqvH0xc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=O69LTxJk; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=u9YylhTb; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5418fxKZ016755;
	Thu, 1 May 2025 09:53:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2025-04-25; bh=xq6SsirQWOUak47Uic
	fNDjohsZYmx4xTwKWGWKR6BD4=; b=O69LTxJkDEfDHe3bFlewd0IkcSxjd0vL7G
	XqYHAcxu7KY1FRrd/U0K3ZgGvCj4cW0Be+70FPdHA2eZ3QxyPIxvgqy1qFKXCb+M
	g8pkRmTLgwZ+eX61bFIix1TmXW9CxarszuzjAQyhuHzNQ/zilQQp/d8Ns0lWHkJ9
	nry4UEXW9Rx+OfoFU3q477apyVthG54pxmqUMaX73SuzgEr75+mjss60sxH1+GFZ
	oLmfC0sjeV+eFpXWG9Ho9D/xNtfzRbVCnbNO4Vj7e3Yh0MR9e/WHaYnLRwhvDiem
	xvSIgz9btdUMfwv4zXP+sn6JA31eezxM3kFy5uz1sgIodnkEQM/g==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 46b6usjth7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 May 2025 09:53:57 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 5418j2Kl023740;
	Thu, 1 May 2025 09:53:55 GMT
Received: from cy3pr05cu001.outbound.protection.outlook.com (mail-westcentralusazlp17013074.outbound.protection.outlook.com [40.93.6.74])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 468nxjmht4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 May 2025 09:53:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QmiwzWT+dZAcvjbRr65wkoP45nYaZ+rht8vgEtTVPjDBJQ3cy9RplyJ+bI6ciEGPuxywc6EtqMYZEiyfLYDYW472Wo/G4StdFqylPYVVyTLflScF7WlgGP3VmsOcNBLmH8yvJHj4lXzz0DVOK2AgfU8N1iLRP38IZhc70EbnFlga3WNKg7+VN4SAohiqNf2VbfC1Et/OUBvHbpk6xQm8wY34C2ttz3QtWTh5fbHyY3PBdvLbDqDGwtP10Q5se5U6OzrHEqsV+i7jc/HgI1xhW1pl3SSCnhCc13LdiysetxG0tOl6PHPCh9OuFnyg3Q3Xe7FAPEsLgy71ZaDTpn3AKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xq6SsirQWOUak47UicfNDjohsZYmx4xTwKWGWKR6BD4=;
 b=WNKFlJ8r46nJR9JEwbddPKWgVC9nXB5RwS3+DANJnZp/2p97Ho5sNhGQSonUskyO7YE050y3MVHjLMjqgEonkddpZE6fK7K/ZyHk9x1kX9R2RzXwoqQLixHOZuXLn2tv+LrNH7T9m40OjxkLiloI61s+pPOMp6jJoJA3IYw/v60j7MAcz9v/YBE75zDyqB9+8T0YumLdDLbMTLn3zmspUtotv38mPFYCPSEq3iETsOgPqYDnd+8dkIlg2fLdeduZjJqfpEZa0gdMM+NqZwCqeGhvECXeVbl1YZ2kp7RWBa6BmZ2TfrpbP2M0zeXel3qNaN8g1oqYHov/rZCiw7Q4Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xq6SsirQWOUak47UicfNDjohsZYmx4xTwKWGWKR6BD4=;
 b=u9YylhTbaFc9StHpirSLvacvSYOQPRf7hirx65j5I7QetaiarxNZTz5Mjk1zJ1s4JcEqzW3pd86AEWDJ6E7Nr+2DtwAGFEGtwimYMYjg+Y0/MBzbVyXpwydYes1QyjcCm9GEBFC7yNaO1Ngm0SzxPfod0j5SaZNfEBSqYG+6zRY=
Received: from DM4PR10MB8218.namprd10.prod.outlook.com (2603:10b6:8:1cc::16)
 by SN7PR10MB6363.namprd10.prod.outlook.com (2603:10b6:806:26d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Thu, 1 May
 2025 09:53:53 +0000
Received: from DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2]) by DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2%5]) with mapi id 15.20.8699.022; Thu, 1 May 2025
 09:53:53 +0000
Date: Thu, 1 May 2025 10:53:51 +0100
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH v2] madvise.2: update MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <3472d46d-3a93-4de3-8ec4-14f972d06da3@lucifer.local>
References: <20250423183105.116978-1-lorenzo.stoakes@oracle.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423183105.116978-1-lorenzo.stoakes@oracle.com>
X-ClientProxiedBy: LNXP265CA0029.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5c::17) To DM4PR10MB8218.namprd10.prod.outlook.com
 (2603:10b6:8:1cc::16)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB8218:EE_|SN7PR10MB6363:EE_
X-MS-Office365-Filtering-Correlation-Id: 14414a92-df8d-44c6-761a-08dd889614d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?T80PUMXG7TSbyDVWANq5HcfpfZyyx24QrlPO2EOaihH9zedmST+MAtMHZvJh?=
 =?us-ascii?Q?bkslpvthHnEv3eKqXzz67gZeElxlGdLvBD/SCeQq8DqC68wKvnBVL+cRdBOz?=
 =?us-ascii?Q?f9o+xyy4pR+A86O5udQ7EdeI5W9ggdsOf4Z0zFoVTIn7KA7xk18s0Qv68Y7b?=
 =?us-ascii?Q?RVFVZGWpvGifJGCPelBFoVy8L7IMNj9Rt5Xcgcs1kCOtYFQYgNxDuHShXdGs?=
 =?us-ascii?Q?GB2ScnVvXx3rCYZkSxutL67emewFrzQzTJ++Hx53K0tmFXxyrl6F+CwVQ97N?=
 =?us-ascii?Q?0p6WlmEkImOZf5Rp7Yx0ZZT/Op2wKYOwGSAJKqyjGrMYpJLDf9E04dDykRdU?=
 =?us-ascii?Q?zFNxHxEMgkputsv6h3DOLupSfbEn4ZSi4yj6yIdiJX5/1wZKUM6vA9IHL4Qe?=
 =?us-ascii?Q?3dATZeaF1cWU6x9ywYA/1PxJcHBZnKL6UyO/SFXefraizeZ3sKXuVALAgCYR?=
 =?us-ascii?Q?9PKN++HPEz/AgmA8kNJ6pE433Mr3fMvc0aH+hvpsFh68yA8tOvnqCWdGUztp?=
 =?us-ascii?Q?2Xfgdvp3R1pACnY3BUnS1npOnl9qHVVZD4Nd9gVA+XZvbgqWFweo3YOoljGa?=
 =?us-ascii?Q?0XczwN7l9bjhDJes8ayQVv28SN9NIkvHn87QkLHpzML7w2fwt/QV7M/gf8JP?=
 =?us-ascii?Q?fnigzTVaIxiPoCUW+r0emJKXuSV3LsqTAZGDvVNQ4MnMvdRYncNTHeoy+TQq?=
 =?us-ascii?Q?S5setU0CNmuqYAJntyTIg5Fd+Tk6esIPQp1kjdGH59FPT7xMvpSdF8M7Ofd5?=
 =?us-ascii?Q?nJ6dKuqMkOJMW5p9qNXcvIthLNHJmVPUKcSQmIwRn2sx+6B1l1ZAq5dQl72F?=
 =?us-ascii?Q?N4s4XarGkzuiI57pV4bXq9a9bc7I2tjQG64PSFab4O/zgd8a3wm+Obrf7D3Q?=
 =?us-ascii?Q?c51/gOqo/QjLlw35Xy1kdr1r0jBxFUFhTk7VP8ho4vDjO2AFeXbwQv77cSoD?=
 =?us-ascii?Q?IAjK5vVqlG6LRrqqpQLsUd+sX2bmOTkh/OJ7qfSPbmdTCatOM1E5MFiEm+EI?=
 =?us-ascii?Q?0CAvIRoPoYiEOAiJRwy7r2zIyN9tnAKOQ5vw9uGeBRimWD0VzlCFK3ZZ5P7q?=
 =?us-ascii?Q?txylcNNtqOQB8PXJPfaIY5RpeL9zxNV/Igt6aTVmXj0bX0aoSDPklrLX1tEM?=
 =?us-ascii?Q?Nx2IohvHfjcRgFHxGR0quWz1DzMVwU97g8VFRPyi1UmTDEO9cB8KrnTtjh7q?=
 =?us-ascii?Q?ocaB+dHajJW85GSDjDtMY2lVcZ5PxZLv7yV81PFsAX2X4894JUwEbdK/pGQs?=
 =?us-ascii?Q?97gEygecWbvIjdfg+3UGDJkVB7L+CszyL6irsN6AXpeYmcKKifuuVs4hu/A0?=
 =?us-ascii?Q?5pRMkJtqFzv0ah9WESoPkh8mL5M/lyWm5ja0849BfPdvO+MgLWxmIJ3BUflb?=
 =?us-ascii?Q?BERWHxMZ9EMAu2JrrwuB4A2l2DVaHOlAVMk8kG6Z1yTt6lQuAMG9fRmBOW0c?=
 =?us-ascii?Q?dUe9Ox5S5ZM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB8218.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?X+6Aap452iyyM+tBhZHYT+wJ5sFaWX7gDtYEpKB5/FKwl24RiORDM0u+NtwC?=
 =?us-ascii?Q?0BWrU28GFKNhRSPv4lP5hsSd3ZYWo0Vxb/xu5sPFz0MYgxYxZlzGTvIDY11F?=
 =?us-ascii?Q?qksl7xRQKma5AsejsYgjGwq7pce3ppiZwTykWTUq9uJLcgMG5yo5qz82QNgw?=
 =?us-ascii?Q?FpeOVn/uBQtYJrHZsxLwGXekgwjfuS99QQ14D5Ai4k89m/oVTwL/Z+5+Amli?=
 =?us-ascii?Q?qgGFaf2Umei7aDSMqKw+FY7oO1WtcbLZuY+bMf0mTzm0tcwYPknf1zgv9zvh?=
 =?us-ascii?Q?AV/Q5HqyzBYQ2VdLRQIPLh1SHMunHlx7B2WcChVdZAZg3CwINnp8a/PeVaox?=
 =?us-ascii?Q?Nvdvt+qG3lBGAQoC/CLdBzStThR2h38I9Q80rdsXDYnKdmooKyKcLFNTHjFA?=
 =?us-ascii?Q?Lc2YMtlBxKv/PGcI8HZqy/emyKnhaX20d/4qmvOiPo+crSIPjKQMB5yOHXww?=
 =?us-ascii?Q?D4s4TXJ3C3iIjkHDmfNVJUIJeYKy/waNZ4Wu7D4yYYU+J52PSjIMSFUf2r73?=
 =?us-ascii?Q?5KfqFxVFa4prdFD6ySXZptCktB02DXFNSeXguOwXh1RaqCM5u974oEPbmv3b?=
 =?us-ascii?Q?m66Szn/RpnSQd4URyPchP3tJ3rIeQ+JFTi3BmLV8s6Jp4AiRE0GQD5i5ucOG?=
 =?us-ascii?Q?Q2dUzkPKkDtTmAl9LiII6USOuC7+TtaYXIVv2BdLiH2Xp0VLKkDRho9C/dGA?=
 =?us-ascii?Q?R1GmF85M6GxEHiJ4Q0yLxxi1+ekYg0JqeESOX5w+DPDcnUVK99IPqcKgVohO?=
 =?us-ascii?Q?JdgGviRdqof2hA6iZjJ1wQrr8P1kf2rfXpIVWXoW3+SKwovygM2JPh97GxgR?=
 =?us-ascii?Q?cGfrm9v5vIUUgLMbvTYrPg4jRjJNe8Ok+ketHpBhZhCvY44ANHZCx9DGHrn+?=
 =?us-ascii?Q?3cV/c6g1FEt1+FXxHMqwnzOPU5qBhHgL5ohNW/yPa7M1bjMvFUFVk6Ey9+NY?=
 =?us-ascii?Q?4qquIvLTnZTmltn5L19ujW/l4ERU0wovJlUtf/GHJvlAp0LoqAw1+ECPpo+c?=
 =?us-ascii?Q?o+bKBBe6blY7KmvsJHN//3qLuS0JtrElNC51D4qyKQbeg3tvCaxgNSM1LBED?=
 =?us-ascii?Q?XHoEsRFeU0kSFUB1GxfGjO3d627FRrLxSGH0Fz7AlnyScewZDphEFK/7o59k?=
 =?us-ascii?Q?3mdoFY6v3cC55958bROVr8zqhNipj/f8hm8bJHqn3sbhAtVrwvCQYRPtq/8W?=
 =?us-ascii?Q?gnWQupJpPQTMEuDoR1cMYSu6rpiOVvXu24D4B1y1CSDYKb+qb9x3qBd+mVKP?=
 =?us-ascii?Q?4VXLs7C8x0cUWamaCsfDyXYeApcICUi8fyTOpfN3fV+a3s6OP1r43YoEApHj?=
 =?us-ascii?Q?NyOziNMKNg2q0KfTZi3KCTKGYiqfsCz9nafh2gTGifTJ2UysPzp1bW39YK7T?=
 =?us-ascii?Q?GxWsw6VBNV0KiRUYo2ds6qqgxAJ+Wn6CDYoaZIlFzteHWz6iqw2kuL51XoLh?=
 =?us-ascii?Q?HDZqG3oJ5Q3kmGxXQnHGlHu45gFnDGyzIzYA6YeUfKRGHB5agv7tlcNRfAlS?=
 =?us-ascii?Q?7XUJZf3MgY+ZvC9f6UqExeIrhcfqrgH2yu5eP4HAkMec/W9lunwBwVXPjxXa?=
 =?us-ascii?Q?Zs0Cb/TR5zLwl9KXQpofEEtcgXx6KKIeBgvP8h+94hjXlShK+Jn6YbvkzKo0?=
 =?us-ascii?Q?zw=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	NBJ773hsVAToKsZUShSjIFOutVUvgVnIulsLWMyhQ4g/bqwZgDe2fmJls7agCE05Nr9/Qb+IaKz+xfh6UBWcRI6IvQWcaPzxZ7udfzIg4BJMkwPbGU1Jjrg8w9SxEnRPkED4hkk6Kua6lgYmvOENfRH2146PlZd9bAcfM6GBSODgHhrpYCD03yB6mcAIkWtiYZt4CVNZvkiEVR0U1GosRUk4avqOyKNdXKqjvkUxbHqQJyXBhuO8J7gvy3/fYhEmn1krYUlgffx4nUnV+qT42BRGhWKSgJARUiQVJu4JOJq5P5JS6Kh4VKSDl+/exvz4IcQustrmR0VBu3ZVUG+K3pf4mqNyljwiezlOqT4axnISKpJqCA3I7jZ64fIXOZPr7oTFkzJpqoV9qzBhXGtZ/hbQXqks2kb/HtW2fs2tNa+Bu/dF9Ol+BdJ4RCJngOSlrLBuzU3Dg7VbB8VndwXrjaWVDCHwGo5d/maCr6kmndBBevV4Fs5Wqz8W563Up4QHTyMfBPzn9adlJt0K3YeMOd83MJOBKiQfgz+sRYp91dY+2J0rhEkLkP7nNKqdJZw9CGqq7VLfpC5gJl5Ua7fPikZMnrypy98CaAbAiNEwBfA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14414a92-df8d-44c6-761a-08dd889614d3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB8218.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2025 09:53:53.3195
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2/F9rz9ymVSLOKJhPSknCwTsa3xwwtErfcxAEM4ZwuqmONdqd6xL15z5rTKICGNHTaNnQ4hb7KYTyUIeBhEsSTH3eANJuyp+14EWFkqa+Hg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6363
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 suspectscore=0 spamscore=0 adultscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2504070000 definitions=main-2505010075
X-Proofpoint-ORIG-GUID: ihszZ9Zcd247hm1QjCjwYB1uTrqq8BOx
X-Proofpoint-GUID: ihszZ9Zcd247hm1QjCjwYB1uTrqq8BOx
X-Authority-Analysis: v=2.4 cv=Hd0UTjE8 c=1 sm=1 tr=0 ts=681344b5 b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=VwQbUJbxAAAA:8 a=yPCof4ZbAAAA:8 a=uKhne_E-FCFUDY2eoccA:9 a=CjuIK1q_8ugA:10 cc=ntf awl=host:13130
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAxMDA3NSBTYWx0ZWRfX3ssmLqeb0sXb jqVufOi/goWSTsCvwwEgdVyOW+UePFWTiDnXLMpNknbjqSO2msPwN2jdWq3tHq/UlVBwtCu+Pur GIj26X2aMYiLlVW9BVXnSfCYiqjg2ZAxZA5PRdmLTyBoIxCxTsT/ZjnVZdPQToBrJUCnFIHmBpy
 oEz07FN/4HZrMdJAdHvlkzygEdLdsXMarMlReWs3SG7Jbuj1rPbSfHas+U9khQzFU55eqEOIEgf Vkulhueb23oSKcHMoC2B30LfZ/Wv0zNZ4K/kJUPn+UGerhrY7gIffAOk/LcgZBk5UehCUOedQCb LcsU53lAIUKokry4xu54XKtmg1iIr5lWj+Vgd6HoqRZTdHdJ/ZkcTdOcXFPZrDQJMKA7NdX2wX/
 mn7yaKZw5KGUa4hraCOBpajEjhKLRF6oZ0BcCkUPFIlM70192KwdUPXxYYkbOj3CTE/a13mg

Hey Alejandro,

Just a gentle ping on this :) Let me know if you need me to do anything
else on this!

Cheers, Lorenzo

On Wed, Apr 23, 2025 at 07:31:05PM +0100, Lorenzo Stoakes wrote:
> Lightweight guard region support has been extended in Linux 6.15,
> permitting the use of these features for file-backed and read-only
> mappings.
>
> Update the description for these operations in the madvise manpage to
> describe the changed behaviour.
>
> Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
> ---
> v2:
> (all as per Alejandro :)
> * Removed v prefixes on linux version numbers.
> * Removed invalid blank line.
> * Various style and layout fixups.
>
> v1:
> https://lore.kernel.org/all/20250317210653.273728-1-lorenzo.stoakes@oracle.com/
>
>  man/man2/madvise.2 | 39 +++++++++++++++++++++++++++++----------
>  1 file changed, 29 insertions(+), 10 deletions(-)
>
> diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> index bd2b90b7a..be1ba17ae 100644
> --- a/man/man2/madvise.2
> +++ b/man/man2/madvise.2
> @@ -697,9 +697,24 @@ is applied to regions
>  containing pre-existing lightweight guard regions,
>  they are left in place.
>  .IP
> -This operation is supported
> -only for writable anonymous private mappings
> -which have not been mlock'd.
> +Prior to Linux 6.15,
> +this operation was supported
> +only for writable anonymous private mappings.
> +Since Linux 6.15,
> +both anonymous and file-backed mappings are supported,
> +including read-only mappings.
> +.IP
> +The mapping must not be mlock'd,
> +map hugetlb ranges,
> +nor contain special mappings.
> +For example,
> +mappings marked with kernel-internal flags such as
> +.B VM_PFNMAP
> +or
> +.BR VM_IO ,
> +or secret memory regions created using
> +.BR memfd_secret (2).
> +.IP
>  An
>  .B EINVAL
>  error is returned if it is attempted on any other kind of mapping.
> @@ -756,19 +771,23 @@ and
>  .IP
>  All mappings in the range
>  other than lightweight guard regions
> -are left in place
> -(including mlock'd mappings).
> -The operation is,
> -however,
> -valid only for writable anonymous private mappings,
> +are left in place.
> +The operation is supported on those mappings
> +permitted by
> +.B MADV_GUARD_INSTALL
> +in addition to mlock()'d mappings,
>  returning an
>  .B EINVAL
>  error otherwise.
>  .IP
>  When lightweight guard regions are removed,
>  they act as empty regions of the containing mapping.
> -Since only writable anonymous private mappings are supported,
> -they therefore become zero-fill-on-demand pages.
> +Therefore,
> +anonymous private mappings become
> +zero-fill-on-demand pages,
> +and file-backed mappings are repopulated with the
> +memory contents from the up-to-date contents of the
> +underlying mapped file.
>  .IP
>  If any transparent huge pages are encountered in the operation,
>  they are left in place.
> --
> 2.49.0

