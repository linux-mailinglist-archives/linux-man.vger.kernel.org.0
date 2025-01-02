Return-Path: <linux-man+bounces-2186-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D28629FFA4A
	for <lists+linux-man@lfdr.de>; Thu,  2 Jan 2025 15:14:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD3251883363
	for <lists+linux-man@lfdr.de>; Thu,  2 Jan 2025 14:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E94871A83F4;
	Thu,  2 Jan 2025 14:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="JknS+X7O";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="x77v5t6n"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1783F5C96
	for <linux-man@vger.kernel.org>; Thu,  2 Jan 2025 14:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735827259; cv=fail; b=g6wn2tMidsB7FSXnIJhJzESI0QnPIz4KVPoFP4xoxOGtH0pjxD/TEyG3YgGBrhtuRXoBFA8KLSe+5A/2H4LeiH32573ejLTSx7XYPPgSk569hAX5FUn/b9MuZsmltwz8Dqu7NIbla4g77JcBu2vfU+lkD/oELzzmJjJpnH/Rxn4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735827259; c=relaxed/simple;
	bh=Xx2jsB0XMIxjPoOLk7jbuokhLdcw5ahBhkKOxuWdSjs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=qF8A8J2xT/C78RV3u9Mxt7LmYMEe0lsQ90dSMMg7RE+nZicKO+5Udzp3V6uY75iYfkOpL6bRPa2CFN2iLTXSWEPuDOGh0HrqPv/vA2JJPH6mWAJJ2IQHeZQdWJu8msjizr4/oSmIQ1sIg1BjZaxlkR1NQFaJDIabHpLa9lhsyJg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=JknS+X7O; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=x77v5t6n; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 502Du6dg024810;
	Thu, 2 Jan 2025 14:14:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=D8dXmMHJZlTbskg/0u
	42j8+sJbKBwc6WTh/v6++5V7U=; b=JknS+X7OiPli1N1TXFk7tSFSTZS3Rkqc2a
	wBVDLvSdDXbkSqy+GTca7L0n7Y4nzByUWNKXYHV3iHRaTHeRAmSQXpwMTEEsqDTy
	S9B3XGEj/WLkaSe2HqmvHvw8Evi16NNAR1IKt6WNuJrZdwl47l9JjFcLYQR6ILA3
	vrCreewfX1VYogLcge26RLzQREAsmnNljnDUprThR6/3/xCM6z6yDeK9pBJt+j6W
	H5janJ/liPCcp7pZPmZC4f0Sfc7mp3/buyHkJmXo26qtIhnQR1iahuGxnAGv5+NK
	2zjaMdvBOcGz3loyPLtZmz+lE2v4cMRLRQ+p/OXBtlWIBIbpfVEA==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 43wrb88a3a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 02 Jan 2025 14:14:03 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 502CurYd009108;
	Thu, 2 Jan 2025 14:14:03 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 43t7s8u11f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 02 Jan 2025 14:14:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QcnrUB9z2ppD0hBF5Wh0H32Nwj2KG3WrnLGh0qz0wbwX9JOZLagIlPfwORRRaa5wgJ0p0vSNmKTWd5JdaKeuSzAuOEDTOd10zLrlJqh2S0fpk5bLjRSutB+VpIDQsSckVThqgZ8ii9QpihfvTgbYBmo04YRnUJsHO+9C5Q793PHZ49tLF486h8FyeWLkD/BcX71XmcUVHKRClpCrPIY7sguuM5kHtCI8spi5hoMnk1CFoWTPttFoGlmINvdx/1HUsVmPc5EsDojO0cMdHwx2ZIYS6J7gD/OaTz6hLbC5LwY+cl6Is9WbtwE393W+eydlM2730NUuAwtccfI9qbJYpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D8dXmMHJZlTbskg/0u42j8+sJbKBwc6WTh/v6++5V7U=;
 b=sFc1ceUmhTv4zOIQiH/YksqBTI+eF6i4ZQ5h7hPJJLLQynULj6ZQaAgv8e+ulwT8twm5ZzQ8o0VISOUK8yHXTAzd2SsdtX9DICDXl92NFEf9b3zMhhKny5mlL8vebRfvGVNLnZMpYQn9csO0MdoXsXoaJRZBbFY2RH6eifkhaiz6tiAGMF3I6lm5w7+d3Z9y0+U5G3BA4Hcp1HGOUBUuts1vF3bOD8NwNjafruu4t7AzPm+vk3DKsTQK8IHPujpNgDf9WYL4HK1As7ycfjOhYNEs3GjX5eTvS8CLsj7ZNmQ5s6oTwgAY9DzeHQqDwnJe3/ykYegv4PH7r/1RpTDHPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D8dXmMHJZlTbskg/0u42j8+sJbKBwc6WTh/v6++5V7U=;
 b=x77v5t6nLFfw7u7vRHAcEL4/4cW8uZ9Un8gqRfLlQKndURurlgxhpKvgQlhDVvZpYom/4exRW+iyl9KnRLZkzb4I7gPQ0PcX0ZL25q4mf9P+nNfE+IlMoHGcsEcbZ7FlyR4yvVgeB/U72w41D5IutwJmBBmUIpvkdbhy/YF4dMc=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by DM6PR10MB4330.namprd10.prod.outlook.com (2603:10b6:5:21f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Thu, 2 Jan
 2025 14:13:56 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%4]) with mapi id 15.20.8314.012; Thu, 2 Jan 2025
 14:13:56 +0000
Date: Thu, 2 Jan 2025 14:13:53 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH man-pages v5] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <493c9a4c-bfc4-42c0-9232-18b273303481@lucifer.local>
References: <20241206113418.14327-1-lorenzo.stoakes@oracle.com>
 <nha5xqqku4ruuo4ufuduu2wqhouzs6fjwy2ligu3qef3l7dzik@3n3plrml7ijm>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nha5xqqku4ruuo4ufuduu2wqhouzs6fjwy2ligu3qef3l7dzik@3n3plrml7ijm>
X-ClientProxiedBy: LO4P123CA0663.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:316::10) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|DM6PR10MB4330:EE_
X-MS-Office365-Filtering-Correlation-Id: 95b87c74-0625-4a33-92ae-08dd2b37b199
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Ia5y3OH20R35Gz2km/sp07MwgikH7eS1mxgEZ5DVIKbR0FWrQnL+iB+4+jrg?=
 =?us-ascii?Q?GWLeHoW8lZCxcU+RFUvv/dX1vGjuHQXM8+NexGvjdIUfs2sm6ao0RE9FAI/T?=
 =?us-ascii?Q?SHdXZZolRtj0CqOmCB7b5r9ZFzahIGnxn0CLNS5xOb1GJb6tWyEHbDrNEkrU?=
 =?us-ascii?Q?YAkb4oxzwqD4tQYkP8fNDP0850k5GFcyi/sZ0ecVfdEPFAOvJ/wJ3u/BoOys?=
 =?us-ascii?Q?QyZtPafqq3WwxKiypxWBNd4BAUQ+PylWO0RLB6CCfskAQ+Ar2o2XaOqoV755?=
 =?us-ascii?Q?OwEGhCcMkhCliZkaGVYRQkZqDEBhpzCCkgVeTczt6ig8qFEVvVi9tEABCNUq?=
 =?us-ascii?Q?VGukYaB8IU3t5eiXxuCBRDbWuR9d7igEzWIGF79Tspk7fXTJsI/eRj/DfWOC?=
 =?us-ascii?Q?xb+6/K5Ad9Kl+s0ukXrPZcfZE1m/fHXuSQMXu3BvEq/CdTHU5zHT/n+tKK1y?=
 =?us-ascii?Q?y59ZXagku1M9MXT1ZeQQfJS0ln1pYk5+FawGaBmaRxoiW8Cph9P7DXwWjxCr?=
 =?us-ascii?Q?V2CUr9R2Fjy30XQPDNnxOWVzJt0vcbfSMpClA7qAQb8VRERKdq7PHK4eAirm?=
 =?us-ascii?Q?vxyMDE2Xio1QGxFcRzxiGeJD8MtiDloDBQ/0eDWN8ckIDNLj2oG8g0K4k+1F?=
 =?us-ascii?Q?ETIcN5mqysBlDuJrq4TnOl17m0h0No04iJuvdqS7/0tFqpgJTfSV6658t/nq?=
 =?us-ascii?Q?1rAc0E7j3NpY6VTZpFrlJ6ozHPpGVRIwY1XmzKV7XGlzoqfoikofRrz0OQLI?=
 =?us-ascii?Q?7B2PkYtOgDoKr9X3zPBt3f+/Ovcgyv0VIHW5W+6jQQr2Y4eU7znu3NfVaTUa?=
 =?us-ascii?Q?l8xQQaKgZsp+e8DPUR64C7e9OBy9TApSrKNnl8RvDn0Lqy2qx4L2FefDqCmv?=
 =?us-ascii?Q?kk/qno5+0zlSLTRuevwiBUh6wvjErtkxxVaN1+Rd10CTCp0DdfzgK0e99vXO?=
 =?us-ascii?Q?JoZXDWWvt6sv9xhMaTsIF4aYLLLoSxTYeLADONcI/wrYZMZ0Nc4LCL47r+FD?=
 =?us-ascii?Q?k4h5iyYxLRcx4eAVfctpIfxkDKUZ7ntdLLp/kL8bHByGqVmBPWlqN9I9Gt5I?=
 =?us-ascii?Q?Lpa29SQVgZzghl8jDQkd8XcQmnSyRWj0Z6XGq00RLkGDEtbjmL2clCs/L6Ii?=
 =?us-ascii?Q?S1GmxohUnsr+AIR/wseZfQMQaL9zrjoebghwK1XC/XASqyDHsicUBSU8wDI7?=
 =?us-ascii?Q?LYWK6k9ouNOSRKBU4ZGfa//ltB/W1s3XkcP8e3kEAibPge0iB07PjAx5/bAx?=
 =?us-ascii?Q?VNEL9nYaq/MrsfdLx743gAVPfaDyJAyckqc5HhhpziLKYUqEdJ2otC0/zjVE?=
 =?us-ascii?Q?85CnL2Sqrltigq7+Ku2Ui3/61frmqAe9IIybgYVJF0rbJQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?i/QbOrHYDQ68tx40auVIsAhOfXRDk6KqhtwSMsPpxB+utHh5kAWS1VJT3vPn?=
 =?us-ascii?Q?kTJJHmCFpDT0CLMT6/RvonuzREpVEf6svStD+mnn11sGXFmafn6q/PmViusc?=
 =?us-ascii?Q?dCeWMWa4qcGEZtOLtMtCD5amrcu9SetqvVU2c1Igbtm1ivbeTTMszDJ4m5AD?=
 =?us-ascii?Q?bdHA+ecYXsKfFbBhYiE6WbLsnh4Kv6FztoNSw8CFwTYSBZ9B6jbNPmF91cWb?=
 =?us-ascii?Q?hkWcHi6kyQWTHsyCBgsxmNLP8mg+NClV693bII0ZNSfdlXUXzCvWH39oteug?=
 =?us-ascii?Q?nSuKMW6HqIH+P/XAlBXyd7dRz48Wz5gSqfInsKV23v/eriVlGRkIbVhBl7yU?=
 =?us-ascii?Q?6WNXPLUFcWR4vdqEMUMOD+xfUpgqVH7Ko12Fo3bAihTsPVfxvRicnpyrjS8O?=
 =?us-ascii?Q?+RJo0MniDc+x9oWnseBiZRsXoSInUy9EN0hH3oSZf62747V9zts8IL1+kK6u?=
 =?us-ascii?Q?7TXtXijqss/Dw2qxmZfkDokHNpdHW0FOSyPJspJ1/0KZVxzv0ZtN3XErLFtJ?=
 =?us-ascii?Q?Cq+itS8jW/umflMpz7bFEsm1S80kzx87f9etfT8HPjJuaeVZkTOoUuJCDlSo?=
 =?us-ascii?Q?SWp4CLY3sUBrDJswS/FZ5DY24DOduonxUOYic5fmg56c9V6pmkHxXkRrirpZ?=
 =?us-ascii?Q?qQ98E2FTj83s7I82kYsW7bfGIPC8IUKnvvXZNFQsbQc853jnb6+ZO1rMFfQ1?=
 =?us-ascii?Q?JIPQQnqVhxTaV4R4jDIJdam8TO4cf3H1gUBMxFz0BRQf4DOMA5LylJVn1bSn?=
 =?us-ascii?Q?DVh/mLFMez+G9qonDjNWzULGCRwheL0l2pl7K+G46NChWL7bjUvTLNa30oS/?=
 =?us-ascii?Q?ajtRojuDRx+yGdnWp/dS+r33IAV+OVb4+nnogEefmSC/rFm9CVQ93GEzWd7r?=
 =?us-ascii?Q?lhC5VXojwgKQVC1WflMqxLCp84+8thZF9yQKtUOmEdr/BvWTkdmxkutyY8hq?=
 =?us-ascii?Q?wMyOANuE8AdHZrlw34fduCX+1kOGgqggPitISO6d754N71cWwyw+5MMsOk8j?=
 =?us-ascii?Q?lFaDDwDz9WacnEVhjV/4lM62bLj/gkBzyd56xFt9124J9irayvWL7HwhldrA?=
 =?us-ascii?Q?MXH4TGMIdOGcMcQQw8F4dxf+4eWzyM6iO0Hc3zccCnT8nYuPWmjEXzNGC+0o?=
 =?us-ascii?Q?/YJrveF2/Tmn7hqjnV1Vl2s9g0w6Ot4sSlhrPDeH60N5uJ8rglyM+UsSia+o?=
 =?us-ascii?Q?NeH0joTttxlky1MjowMCPjSgTyYPOCi8BDCDMI9Grwm6Qmjv0sdIpqLZAptg?=
 =?us-ascii?Q?fq2bHFT2iYD6U8fc5WjBslD1XH1T4iQ+JgVLtG5jGEWpvHleTNTAUwnAjnqr?=
 =?us-ascii?Q?ltec4OYNAK4Bxbg+tMBWbv7ZUTQxj+olMy16+8yJBfzE5kMelShihXaeZyVT?=
 =?us-ascii?Q?6PWm0aWeGfJ/i2teP0fFaUzKOwcwR70leiJx+2AoBg3eW7j8UENE3U1O71XY?=
 =?us-ascii?Q?iCou9N3WeEX+S1DB+2XJNm71apJN1p+aiti2mFe7/mtBNv1XCm6/i3lKpURh?=
 =?us-ascii?Q?+FRUI+fpb6BIB2XiJVtyDmeseLQ/e5yCxXnZyoJcd1HuICOC3j3NVlX2FwMn?=
 =?us-ascii?Q?KUtsWZ3LjjS+QOMhJJOxVOUGUaj8P5JjZGZp+7q61X+3315el9ugssM3Tq3K?=
 =?us-ascii?Q?vw=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	LcTmcMipJwISYV3h0XGT0HrBD0IKXydCjsF7tuDvnJGRhwzqry21mk8iWTnLhX6h97Da/eiEtdmQyFTV7uxd5Ew7RPlImOKRLOj8cdJAFgeUQdE+f5NjNAtlQMDVSLdbl6Ac7N685pJHQjq5HNgyuy2Jn/7PSXv//8s97/xl3cltBANMRz0Dl6sl3Wl4TPsqsipvWB3hWg2GPd3RfydbEyBQGJIdUUoTcyNYHW8vog9tMajjHI0cnwD1dK0Y0mo+NlFUWLpT5BcAGzcAZpjUPR/9y16crcd3LWyolmjXgl9hPNzyX6CBNhA1Kcw+3yPbBC4RHTYXbz1Umdck1dvHSv6xrUcwiM7B8SKiq2ej05WrKcB90r5NogwSu/GdPe71xExBE09ty23ct3dih/6o33JG2q0tAhQXXwKTEYKtr8ogMpDGcB0wNoDRZ1gR+EPCILm5xHhEBB05tMP4TmFmtqRumm6ynaOG3GmEdgAoaI+oxNRTht+KKTxvQKx1GCRxl7FxdoFX2cYwqnZHr2NaHOpc1Q7TkaqLqXEflf8846myKm6CKSeECmSlJRXVXbPaVYJaS2WVEtQwAj8lL5BT4/rggTHvYKcdWSbpmhoFJFM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95b87c74-0625-4a33-92ae-08dd2b37b199
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2025 14:13:56.1883
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SNRh+q17FmHlNa6bnEy+Jx+FnXth+iA57U0/YXNCzvzFtsKrGf5qci6WrnDjKadOwMf9S7p8SI0Vnb12hofmoW5MDGk4elXIhoie0mypxzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4330
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-02_03,2025-01-02_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 adultscore=0 suspectscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501020125
X-Proofpoint-GUID: hLTslDs_lqS1LpdaBfn0zK6j-jTsH7v0
X-Proofpoint-ORIG-GUID: hLTslDs_lqS1LpdaBfn0zK6j-jTsH7v0

On Mon, Dec 23, 2024 at 09:38:00PM +0100, Alejandro Colomar wrote:
> Hi Lorenzo,
>
> On Fri, Dec 06, 2024 at 11:34:18AM GMT, Lorenzo Stoakes wrote:
> > Lightweight guard region support has been added to Linux 6.13, which adds
> > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> > call. Therefore, update the manpage for madvise() and describe these
> > operations.
> >
> > Reviewed-by: Jann Horn <jannh@google.com>
> > Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
>
> Thanks for the updated patch.  I had already applied v4:
> <https://lore.kernel.org/all/20241205104125.67518-1-lorenzo.stoakes@oracle.com/T/#m7a891296e1ade7025569e3c3595b4f288135a7a9>
>
> > ---
> > v5:
> > * Prefer 'replaced' to 'cleared' when discussing existing mappings that have
> >   MADV_GUARD_INSTALL applied to them, as suggested by Vlastimil.
> > * Included small changes Alejandro applied to patch.
>
> So I have now rebased v5 on top of the current tip of the branch, which
> results in a small patch containing just the wording fix:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=28c42e01fc175e50e38d>

Perfect, thanks!

>
> Have a lovely night!
> Alex
>
> >
> > v4:
> > * Reference function chapters as per Alejandro.
> > * Minor rewording as per Alejandro.
> > https://lore.kernel.org/all/20241205104125.67518-1-lorenzo.stoakes@oracle.com
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
> >  man/man2/madvise.2 | 103 +++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 103 insertions(+)
> >
> > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> > index 0dd481d21..c9b4722db 100644
> > --- a/man/man2/madvise.2
> > +++ b/man/man2/madvise.2
> > @@ -676,6 +676,101 @@ or secret memory regions created using
> >  Note that with
> >  .BR MADV_POPULATE_WRITE ,
> >  the process can be killed at any moment when the system runs out of memory.
> > +.TP
> > +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> > +Install a lightweight guard region
> > +into the range specified by
> > +.I addr
> > +and
> > +.IR size ,
> > +causing any read or write in the range to result in a
> > +.B SIGSEGV
> > +signal being raised.
> > +.IP
> > +If the region maps memory pages
> > +those mappings will be replaced
> > +as part of the operation,
> > +though if
> > +.B MADV_GUARD_INSTALL
> > +is applied to regions
> > +containing pre-existing lightweight guard regions,
> > +they are left in place.
> > +.IP
> > +This operation is supported
> > +only for writable anonymous private mappings
> > +which have not been mlock'd.
> > +An
> > +.B EINVAL
> > +error is returned if it is attempted on any other kind of mapping.
> > +.IP
> > +This operation is more efficient than mapping a new region of memory
> > +.BR PROT_NONE ,
> > +as it does not require the establishment of new mappings.
> > +Instead,
> > +regions of an existing mapping
> > +simply have their page tables
> > +manipulated to establish the desired behavior.
> > +No additional memory is used.
> > +.IP
> > +Lightweight guard regions remain on fork
> > +(except for any parts which have had
> > +.B MADV_WIPEONFORK
> > +applied to them),
> > +and are not removed by
> > +.BR MADV_DONTNEED ,
> > +.BR MADV_FREE ,
> > +.BR MADV_PAGEOUT ,
> > +or
> > +.BR MADV_COLD .
> > +.IP
> > +Attempting to
> > +.BR mlock (2)
> > +lightweight guard regions will fail,
> > +as will
> > +.B MADV_POPULATE_READ
> > +or
> > +.BR MADV_POPULATE_WRITE .
> > +.IP
> > +If the mapping has its attributes changed,
> > +or is split or partially unmapped,
> > +any existing guard regions remain in place
> > +(except if they are unmapped).
> > +.IP
> > +If a mapping is moved using
> > +.BR mremap (2),
> > +lightweight guard regions are moved with it.
> > +.IP
> > +Lightweight guard regions are removed when unmapped,
> > +on process teardown,
> > +or when the
> > +.B MADV_GUARD_REMOVE
> > +operation is applied to them.
> > +.TP
> > +.BR MADV_GUARD_REMOVE " (since Linux 6.13)"
> > +Remove any lightweight guard regions
> > +which exist in the range specified by
> > +.I addr
> > +and
> > +.IR size .
> > +.IP
> > +All mappings in the range
> > +other than lightweight guard regions
> > +are left in place
> > +(including mlock'd mappings).
> > +The operation is,
> > +however,
> > +valid only for writable anonymous private mappings,
> > +returning an
> > +.B EINVAL
> > +error otherwise.
> > +.IP
> > +When lightweight guard regions are removed,
> > +they act as empty regions of the containing mapping.
> > +Since only writable anonymous private mappings are supported,
> > +they therefore become zero-fill-on-demand pages.
> > +.IP
> > +If any transparent huge pages are encountered in the operation,
> > +they are left in place.
> >  .SH RETURN VALUE
> >  On success,
> >  .BR madvise ()
> > @@ -794,6 +889,14 @@ or
> >  or secret memory regions created using
> >  .BR memfd_secret(2) .
> >  .TP
> > +.B EINVAL
> > +.I advice
> > +is
> > +.B MADV_GUARD_INSTALL
> > +or
> > +.BR MADV_GUARD_REMOVE ,
> > +but the specified address range contains an unsupported mapping.
> > +.TP
> >  .B EIO
> >  (for
> >  .BR MADV_WILLNEED )
> > --
> > 2.47.1
>
> --
> <https://www.alejandro-colomar.es/>

