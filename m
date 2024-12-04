Return-Path: <linux-man+bounces-2099-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AC09E3924
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 12:45:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C164F168ADE
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 11:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D91A31B4138;
	Wed,  4 Dec 2024 11:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="UvcHHXkL";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="kKJxHJ5o"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B971B3935
	for <linux-man@vger.kernel.org>; Wed,  4 Dec 2024 11:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733312680; cv=fail; b=BO1HJYUkbpAkRIGx3GQQmt/SYX84GKAcG6+VKDhIDfNsXLpv2RwuVBiOwOHzpplgKTFnm+UOYJzxpgqWaZNSozZ5FAdE7tGKRudC06t0ITcDtJs97kb/1FlQqwcuwbm4MMgYqsyhAjQ3VclzlSgMThuCv/ndQ3Xf+RNAhIKvMCs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733312680; c=relaxed/simple;
	bh=UylgdOXMgAfieoGtBNmC1HH3+ehnIAokJdjyjoj/7Uw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=txVIXQjtqAVMzsinz/BHS6qqmewh49eSvfEzHkZK9I5X5sEu2y5d8Lx/GMeFZPOBvxidOAPE0ttARxizNrHcwvIOAZzNUzOE6hvkU9cCO044TRo3hLg4tOdF/yu71tYoJcPFwB3LYOBlaF5owG4pf+cg8nuHt8HpnyguRux1YJk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=UvcHHXkL; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=kKJxHJ5o; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4AfndY032494;
	Wed, 4 Dec 2024 11:44:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=DXLW3s89kVwQ5YRLay
	urnyScwk1E6r3jU519UkGjxQI=; b=UvcHHXkLeoLRP24aOZNyGN1DDmgPoxVhnt
	FZzmHR/uZGfGw+Y4k38zdHd3Nly8xdoUbClsScIzFqNOIX4LM89wyifTmLits/hZ
	y+6hdXRkkD9h3o/tS7kmoq0q1ow4X11r1OxTMk3rU/b/PZN/D1OOrKqoHFDkTq9T
	1kKR/E0KCGJW19DV3ltPdyRbqzTx7nQzPRHJ7J4tWTjUD0JeikJRGyhZtOiBMkmE
	hBHfUgIu4XFLHPhQ9TQ2RqeHH/tEwz4SmZQHdNin0o5OjIvr8r8VQW8JjwwQ7DHi
	RM1iiSR6plJScSWDgat2R2znbyM3jgsJ0HrFPqTN0CgcMvOqkWjw==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437trbrckn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 04 Dec 2024 11:44:22 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4B0Etq001019;
	Wed, 4 Dec 2024 11:44:21 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 437s59ca0h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 04 Dec 2024 11:44:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mHcvvwMqiNQU/WkwRWOTVzcd14fiCKm3LOzSPzURgUrQq5ds08O+yf6WQBj2nr9mzBxNR8vZJcNGEZKuf8eTiacJaHS4cYxVv9eg5lCspdqwVfWLLuQvzqJ6JF8TTSqRZajP0521aUbLnwpJ6GfAYGhXndHcdQ6pTyHijS8Dg+FqxGdubz36gunmHBmp6xOhIQzAdBmmNoKIRzlKLbOOTXMW1dHgyKFRR0ROVWtP9OZZ2UmM6vHJ+4Ib+FWGWsJsSjCgPqOziLZlTkIYDAf/Nqt1HVFnbKiEhR59hQxrj5gHQK149xi3KOWbyXUx8jmcqQFRmLXePjw2xrY3ncuLuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DXLW3s89kVwQ5YRLayurnyScwk1E6r3jU519UkGjxQI=;
 b=TdSHPKX6os9fjuNrpvAajmOdgtlu5MWOMdf4H4tfvYsU4D5s3Kw+6goBVeka+9X4tZvJbKgnKANCSCEpCl/jABfZG9KaP0vxqzPfCUuN5XrTbzwQARwvHbl3O+ebKsQOaP1XMDxue80TPKu9vWMj6xdgYkR59tIIx3h26DMRZui8Flt4ljvzuoP4S+EpbwF33EKDMcQ7KOfMrkbhYvNoW6VTYAKKmFybO2PT+7cRI/pSplduQIushvsBJgjrAxfhe2E3461gqcnWux54l2znVoK5iGpDMubbenDw/BQ1sPdN/jS+k3wNGElAZRgIdt97jmCu5EfUY44kogLyb7GL2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DXLW3s89kVwQ5YRLayurnyScwk1E6r3jU519UkGjxQI=;
 b=kKJxHJ5ogDXp7SmZfWNnILoJWjA2AJHfnQD6BxeYr9/JLHU4GpsD377gm3ilzrjjAaifmznbINBkh3Xvk/jH2kygnv+7UcxWdVIbds/iEv/EIGMumGEDahtJ3KtUs87uKSi2hW0pvPqH71jJqqXzUQWlXDfSf9SGjdu+lY+qLtw=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by PH7PR10MB6057.namprd10.prod.outlook.com (2603:10b6:510:1ff::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Wed, 4 Dec
 2024 11:43:52 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8207.017; Wed, 4 Dec 2024
 11:43:52 +0000
Date: Wed, 4 Dec 2024 11:43:45 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH man-pages v2] process_madvise.2: describe 6.13 behaviour
 permitting all madvise flags
Message-ID: <72d028cb-2184-4f7b-b846-1183b94ad0b0@lucifer.local>
References: <20241129164422.89837-1-lorenzo.stoakes@oracle.com>
 <20241204101344.ont4gjc3ewltiec6@devuan>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204101344.ont4gjc3ewltiec6@devuan>
X-ClientProxiedBy: LO4P123CA0344.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18d::7) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|PH7PR10MB6057:EE_
X-MS-Office365-Filtering-Correlation-Id: 46315485-aa66-44ef-8e45-08dd1458ed25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?6oBZi01ME/aZlJHSSm32TVpqwxRagb6KqJxoabVxPfcxvbPEYu/5CgOO4egR?=
 =?us-ascii?Q?eNTbOl0MVqJttIyvTtqQWH68hM0xD99vE5MYrhUmOpOXIDRGvyRy6tYLg2/k?=
 =?us-ascii?Q?+rIDOWIKOz8HczjDyUk2KAoKQJTjdy5YlIrtApijTgtqJ/VwFjeo5DcpoVgG?=
 =?us-ascii?Q?ZHy8LBuQsvbF2anwLIJjA7XZ/pr0TluaIxcrPVgIzdxCUEyEWf3qOLBMvWA7?=
 =?us-ascii?Q?fEDBVps+yyyen5VthH3k6/Z5Rs5vNR96O/S9gVzdN7OMjweHT0uTP4F4XUCC?=
 =?us-ascii?Q?/cQ8ipAtp+bmXI/WekXLoDByar4Vnq/H9tBTFnhPVqhvdb4W3HUqJuZk6Fs2?=
 =?us-ascii?Q?T+skJNeXplSFndhMOZl1VsAiMajI2WtQjdLYY4N2Fb1zfpdQjtoEgE+jJNgI?=
 =?us-ascii?Q?BW1Xg+qfjNiCP1YEQm6UV2gwXjQpwpuC6IUP1GL4reLVa5Psr+MvWBM0boKU?=
 =?us-ascii?Q?AZcxXBj3k9S29FNeTH0jNPCEvu66phlx5KiA2zSP12CNjqDQXXs4FHFuvv8f?=
 =?us-ascii?Q?JBLH/09TiLDrsoUuP84/dlTKhI+1k1hSIJzZXHNHGwUfDnQFWsmoKeBVvWAK?=
 =?us-ascii?Q?BZP8sDFpqOyZWDfbgbFvPNfTi1lwuLhaIhwhX+/4bmopWDj0CongF9yh9y9F?=
 =?us-ascii?Q?MRsadjuYvZknWx4aivrUo4NKe6PSaik93LuQvE6SVbfKmLtktraxrrRjNcP6?=
 =?us-ascii?Q?Hs9cdWG4mYlychNUtm2WJVmdwbcfRLZiWo4YwwGsC5XQ7wwYU6b+MfhV2LzN?=
 =?us-ascii?Q?6rucRIgaD9J71AacUhFHR6a/64DLzinXhF7DbCR8t8VUfd0FyW4ikMjKC7bb?=
 =?us-ascii?Q?R6GrVJ6Z7TAG/UX8gYp8HpwI2PLJXEN0p5R7bbVAvFzvbfuVAx249YxiU52U?=
 =?us-ascii?Q?E+xLyx5ixTbZauep2bFls29WbTGgkKEynBF8Ico6HghS5KblaPXazUeA/shU?=
 =?us-ascii?Q?pbtWFMzzML4haus4NT2Htf+SWyTu1sUsZ3rYX8iZgiNnU6D+xpsHUQQ4XEWE?=
 =?us-ascii?Q?u7YqOfhq8gGZkjBqJRyMRfEUfROwC+iravYK5Ici/bX+iQsjvgHbApsoB0KR?=
 =?us-ascii?Q?B9F//YeIyJPK0D7zfhmQbgQ3JDiyOdvyx540ga+HCsc6Z8B0tOB3Zd6AZcIw?=
 =?us-ascii?Q?tFZS8bksq3zMssIz7ma7xEIgHwfSrTVXKXxgTcZJ855MWBBj2jGPhKhr7q31?=
 =?us-ascii?Q?7NtPRrnKAVTJVLEBESlaT+5QEvSG2us7rfHlEvs6MuNHK61M77LdPiEE5byR?=
 =?us-ascii?Q?gZ5+oEF+xZzr90BTMN1LTvTn35OxkZIDEbdr77sZVxqcgMPP01Yh47Zt9VvA?=
 =?us-ascii?Q?Qis=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?rECNaKXjcgoUHtOVMgbXT49w7nv5QwPrFu3Jkx2O8Il2ADxOwxtWwkKNrZv5?=
 =?us-ascii?Q?xv+gcRQbl2qxmPp0+sZO+VP1wolu1KZZVlvpBsdmHgdkU2oEPiDMiHxIwLcV?=
 =?us-ascii?Q?+K3bnjcdIOWbm/MxSQJwh3KK/jhQpjB8SrLpDblr/UWZSouiTeR2tYkXbRt3?=
 =?us-ascii?Q?EqHhsgDHE/4NFt7XnZyd1TcVGmkn7/w86drJT9kbU4kig9h/2Ytf0Ko/m2R1?=
 =?us-ascii?Q?pMstBBx+kVRsOcCw3pBeBvHLIllSJ7wN/IJonVsjMC967GlfaHAp4eXiqDby?=
 =?us-ascii?Q?IJts8J3axuJbtm6iJNt6DFbAj1om3HJfwzn8ffoKZTDbJ3KpjPhsDmQsAy8C?=
 =?us-ascii?Q?qxxrFvv8dlUMe8xQZpLCuVhnWrN+VV0bIdf3qfb7aQctOOBDQRGIpS7cUx4Y?=
 =?us-ascii?Q?l2pCDFl0EaUN//iPyDrXENylAXbLkXsrR+i6ZDxglsDzDs3a9K/IWAiVwO0F?=
 =?us-ascii?Q?QUpwVjo8c5QLOBooPbCvwTkyaiWN2grFqIn9Ys4v5NPpkhHudTk6cJgXDi+X?=
 =?us-ascii?Q?42XKVNS2p6meGZHNgikRmaPwqEaa9j7i+p5sHzcGaiVwvQ+6kNfn2WJforbh?=
 =?us-ascii?Q?5Rxhupa4+6hKf0uiNiNOa1Hm8csK+gp8Om67c0Ajk0AR2SYb/YE0sXjnXhGQ?=
 =?us-ascii?Q?Dp2nD9vtn8U1/BIGRJdxQ1MzDxswKbcXwIXZaMuZhDqhS6GEpqSl73AJpuVT?=
 =?us-ascii?Q?lv+ECRHMNaHPNWDkgiEZqCh4AW0dYhWJy6lXvpDBINZ6Q7M2Rs1wOR4ey/36?=
 =?us-ascii?Q?r8t3crJZJoIVk3cqJOstIRQBpb0/YJChiTRRzinkFKv3OpStiBjpJdaEHHU0?=
 =?us-ascii?Q?ZEDabz/mMmZrNa6+D+myCoTrV0C8ELcuKacBCjHOdbnaPGGkjEJK7M6tx4c8?=
 =?us-ascii?Q?AJ6zAnit9/A9s3AUhMPr0IVcEgfqf4c+dFS4vNqgFYIkN+uZVOkXnue3uA8E?=
 =?us-ascii?Q?EGYAfg56wKK4xBXumGrqCjXHVfH91w9SvIgyn5LPa3bFUHD9TyL/sJalWGTG?=
 =?us-ascii?Q?jl1aqMfrZ3pxkHW7VVICVky40x5XheQ8Liel67r6ApKAlJfq8q1RbJUI4flm?=
 =?us-ascii?Q?73zfH5TZyiaA5HlFsbiyFSrVHMlgHl9x6g2Pzx25M3bFnSNLDvZKjG3nzl5v?=
 =?us-ascii?Q?XsLZXZKfYbLLHikyvRx5Dv4/kbsRMABXhYdiBysG/s4QQa+IBDGSJjPMONXt?=
 =?us-ascii?Q?x7zVUIazw67YghSHs7ZGQbyLMkMLqV/1hrGiB4Tfarl314gzxr6NClnGiqMu?=
 =?us-ascii?Q?lvBXykvZLS45U+U3u7mmrW6fsV/XvkrWtoKMqZ5OWBf4qXG7aNJBQHbLHZKF?=
 =?us-ascii?Q?fy00Yuz59U5bjczF8Q6DzBmQey2LXQJ+fzjKa4PMUGgTrCOJUT1ySXpfV/Qw?=
 =?us-ascii?Q?hCiuHsklqttgi9tRdRmG2a1HZdZAtyo+gOKv8BzgPKfSkLY+yfRlKGQ06njB?=
 =?us-ascii?Q?uU+6U92DF2wufHsHaeKHy8Ju6195UV8qr0wZk08+ao8RaZHGd5q8iLVu/1By?=
 =?us-ascii?Q?pU2IioPsKl0xhwxqslneca7gCj76/sfT1PqlSzKEJxpqIMQjEeLRXu0q6xmI?=
 =?us-ascii?Q?tX1ha9oJEdHr+2Id3aI3es6p58J9R/fsjUd5wiS2HbH/zvoHsXn0VQI8r+Kh?=
 =?us-ascii?Q?+A=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	kovRK7Gs+kT17N0iPVrYNv3j6ZWmlnP1jDd42IXbMWngM0Fp1N/6b63IrcGkfDnHAjOZfsOWqE0fhDbqe3Ujiqg9mKp1xSSXhxuqSRIHRcq8BMZQ1z297vYOJ3OhZmyi2EZEvMAzZNyJP9y8hIW+GVjBrzPDb7v73kypjFx6MhKE8jMsM0Bv2NDe9rBpRQ9xofRPJ4gC9NE6HpxkLYqiHaDh6AoriAByWpdgnvJh0m64CmVaWWmxpmJefGL3trI1YftkQjWgarjgpAWIhicGpkho4vrv/oUQhKOPXato7dzuURaXXmay7siIZgWvvZGs9CNWrmcb4M+RDNrp4gBPdWGjKJ78cNyZZnVp+X/r6zeq6t2A6Ar62mIz9dd2r1n00FCqDtP33HADt4f3dkPwtL+McEVeW4IvbojWMcyGXEvpDNYQmY3ua9UojLm9Xr2KQMW60wsQMhQsxqV9xsf7DH70XVCwkb7ZZ6UTjABLhfZAdyXDgTxf0ePvA7re54rLLw9erlPD5tTy09aFW+vIrbcOaFUW6c3aqXpPrVlpT+d1GDUPXyEj8SALKKJf4bisfJa/Aa/2NbWly6AVIEpqw7j7/IxpWky0w2nyQdp0Ojo=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46315485-aa66-44ef-8e45-08dd1458ed25
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2024 11:43:52.6404
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZW+OBex8MnPrUIot02Fnc+JYU9HWw+s6xjQnaZh3RYRAVwlpQJXN3vxLru71olcHX9ARau7qNDuKUh8QnzjAuI9KkguJ8u7h7DCsHYSZ6/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6057
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-04_09,2024-12-04_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2412040092
X-Proofpoint-GUID: mmqxbtAi8dEereFEzfeBGXF6TTLLWsM_
X-Proofpoint-ORIG-GUID: mmqxbtAi8dEereFEzfeBGXF6TTLLWsM_

On Wed, Dec 04, 2024 at 11:13:44AM +0100, Alejandro Colomar wrote:
> Hi Lorenzo, David,
>
> On Fri, Nov 29, 2024 at 04:44:22PM +0000, Lorenzo Stoakes wrote:
> > Since Linux 6.13 it has become possible to use all madvise flags when targeting
> > the calling process. Update the man page to reflect this change.
> >
> > Reviewed-by: David Hildenbrand <david@redhat.com>
> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
>
> Thanks for the patch and the review!  I've applied it, with minor
> tweaks.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=7148a8cca8d693731d98c09bb7bf9d585a36e695>

Thanks!

>
> > ---
> >
> > v2:
> > * Use semantic newlines as suggested by Alejandro.
> > v1:
> > https://lore.kernel.org/all/20241129095507.11001-1-lorenzo.stoakes@oracle.com/
> >
> >  man/man2/process_madvise.2 | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/man/man2/process_madvise.2 b/man/man2/process_madvise.2
> > index b78a61553..2ebbfea44 100644
> > --- a/man/man2/process_madvise.2
> > +++ b/man/man2/process_madvise.2
> > @@ -54,7 +54,9 @@ This value must be less than or equal to
> >  or accessible via the call
> >  .IR sysconf(_SC_IOV_MAX) ).
> >  .P
> > -The
> > +If manipulating another process,
> > +or before Linux 6.13,
> > +the
> >  .I advice
> >  argument is one of the following values:
> >  .TP
> > @@ -74,6 +76,10 @@ See
> >  See
> >  .BR madvise (2).
> >  .P
> > +Starting in Linux 6.13,
>
> We use consistently "Since Linux ..." for saying this.  That allows
> grepping for a consistent phrase.  I've applied a fix for all pages that
> still had this old wording:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=b159e0d6770a860f0d0ae1693dddb3b6116e7d9b>
>

Sounds sensible, thanks for cleaning that up.

> Have a lovely day!
> Alex
>
> > +when manipulating the calling process,
> > +any advice flag is permitted.
> > +.P
> >  The
> >  .I flags
> >  argument is reserved for future use; currently, this argument must be
> > --
> > 2.47.1
>
> --
> <https://www.alejandro-colomar.es/>

