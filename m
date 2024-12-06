Return-Path: <linux-man+bounces-2132-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BD28B9E6D3A
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 12:22:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93B1F167C25
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 11:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0F391DA61E;
	Fri,  6 Dec 2024 11:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="f0pijAMt";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="QIObZxv2"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A73BF1D2F74
	for <linux-man@vger.kernel.org>; Fri,  6 Dec 2024 11:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733484167; cv=fail; b=TGBtNQc/LyDQTyYFwq7iKgioEcDk9KQcb0cXonkM3hsbk51XjnTd8od3G3Tojq5WQtP5j6nAgeIlZX9PJbp2NX3l24U47PHfhoj+CYOFvUZw41VQhck26HFkcoR9VsGKsK84Dic7JX6b/bOx7O7fvkSV1n+XeCyvdADjLagOWLg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733484167; c=relaxed/simple;
	bh=C9Ke7z0TsA3eoYuZyX2EmAS+lxqld5/Inc61HN7DUdw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=c5hojK0c1HOBsY3bHl+33hOlMElzpg4TxvYPFc3mEuS1DX9mOUGoB5oMfIQd6OfSrxbOq2XUjEz4oBhb1j2WUaUVHIT5eNo5QIwwitJBcKjZjDmqRtugi3KXgs5gnFFyq2hGriT9ow88CP6G3FpSJ8iwZxW9TWFlMhHRkM1W32I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=f0pijAMt; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=QIObZxv2; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B66sUEG025392;
	Fri, 6 Dec 2024 11:22:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=yzi2qOK7eEYnev8pkf
	mPtByvq0nRK85OxVkuBpYQfgw=; b=f0pijAMtFft1CejiiZA1BcnC1mSd1PFk9s
	4CPS7xWqxfW4oBmTPvE+oznbfZb7PC0rmXw3CbGMy8Gx7aDd7ZeKpHrOl0KF9MhK
	sLBHGxZROxmRmFGiOS8JnrmfbCsMEgGWNQg72UafVweRTe7ir66FaqsnKJD6AqAT
	3qCZJnsxEjhf266KSXvE8JVl/MuSdqfeR+IILBjNdumkUDoHbd3LoIQTzEM2DTeV
	XWbtfFNSxJMCof1XtNqDsr3KKUDugyIxsfg6H+xicth5ylBCsTo+r/OqfvpbZ7jQ
	0FRkvDfv6ehYUP7k+weplQ7odbkUUxerIEMtWNF/Q5yzymjYAogg==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437s4cd4rd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 06 Dec 2024 11:22:32 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B68wK0w011632;
	Fri, 6 Dec 2024 11:22:31 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2175.outbound.protection.outlook.com [104.47.56.175])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 437s5c65fb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 06 Dec 2024 11:22:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C/hCFXAeQmC071qdQeMxBT26OMfxDRpXzekA0QO7tZkxN0vdHhKgm+92adS+wOdLWchaqDTNANdvrRsIoGTuvogRYT1G2b/1KhW54UyOhEb4I5EU5lUlGS+85TB0FwphoFGWiEF1MnEFCkVxfL9luKEOEhBEndmk/Q+BNO00AzN9DrkzgleQIvKGHeGgmDpuQfjD7g2BT0/NOrOOtQTy+uSsZ6jzvJL0cUK/AE3hZ9Sl4DMCp7JR4458LZGRaPZts5KqTzF5YjE6w80wIZUaxQi3AdY2eBTtrUGprr+zySm/O28OIsvEPk+nss8ZemndeLg9Ajm+SD3cAwxGJPa74g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yzi2qOK7eEYnev8pkfmPtByvq0nRK85OxVkuBpYQfgw=;
 b=orH5Tjv1XneTY3QTbTXuw8oLT+z711rLR11iENKt7Xhf1u+XhuqQ5v3TtPTV3C7VLap+NHfsUpWEdKC/PMVtltTxzal20J6HluqQ9cEum68PjWxUtgV9t9sAjmHr0VW3k96h7qvODrSaUBEbUvJf+CX3OOvFiFSOIdJhoJvMy5vbAUnK45HA6xHgGYs4/xO0Mc89LNZzBvIvSDqHgMPcby68GUDSSKdh3N5asw94O9nHbIb8At9vKQuwY/4ynR8q+8yaPYNmvIiwimDqQ/otf9EJA7NwbI/y9aKqpqTbSXwEPDGDELGvc42i1PfprFQWzMVk0fapCutzg9NMIIafQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yzi2qOK7eEYnev8pkfmPtByvq0nRK85OxVkuBpYQfgw=;
 b=QIObZxv2/UA0+nI0657nKNl70LBBbUstMkKIx3RTtw624wthySGWvMWXjrjzg276Vhbdx0a8FA0kg2y11NQ6mpXkg9gn3Hb4aUvU4fmn9729flw9fK3QwBtQq0K90fO75kQIX12YY7RuD8r3FlI0XG8av4bLayjzaomt0q/8QJI=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by CO1PR10MB4434.namprd10.prod.outlook.com (2603:10b6:303:9a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Fri, 6 Dec
 2024 11:22:28 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8230.010; Fri, 6 Dec 2024
 11:22:28 +0000
Date: Fri, 6 Dec 2024 11:22:25 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Jann Horn <jannh@google.com>,
        linux-mm@kvack.org
Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <5d1fc62c-bc85-438e-8231-4ed41727dc53@lucifer.local>
References: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>
 <b9f4f985-771e-4f09-a87f-d56f898e8d39@suse.cz>
 <e71ad8a2-3dc7-44bd-97e5-fed6eaa30d55@lucifer.local>
 <01514d6a-5b8f-4a38-8c08-7cacede47f67@suse.cz>
 <4146fb6a-9866-4884-9d8e-da8c7c61256d@lucifer.local>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4146fb6a-9866-4884-9d8e-da8c7c61256d@lucifer.local>
X-ClientProxiedBy: LO2P265CA0383.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::35) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|CO1PR10MB4434:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d60000a-d708-4242-32a8-08dd15e84460
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?nIzLfqnmXUHd83dXoAE4ZU9ZtYoSyJzBdqWokXKz37G0HJAM7J/JcgXguVAR?=
 =?us-ascii?Q?U4DHUHmDmtclgX0NJGxyRFLNIT4AhIx4GkTtW2gcLFGg6vHo8Ho62DpgaOig?=
 =?us-ascii?Q?EZQ/6jT8iaeZdH4Dgn6hCyYuvPIFSyltq8SemziAMe0QgDqxbCYrfj1Hpzx2?=
 =?us-ascii?Q?Opj9ERyqZDYt3lAvmin3vEJHEaVLVKnOPeCQcJK7kuIk+wPqZe383ozp+mZe?=
 =?us-ascii?Q?iof8YCdk7cpeFfIL76dZJZu5B4CnZGrhyONh1tVZ5AnfOOM0m9ycWB+nn6Ry?=
 =?us-ascii?Q?47DrUxiwnbBrjXWi3o5HnFO/CzEU83+ETKhmR4kzDmRn4yfPwXgnI6iOXd7r?=
 =?us-ascii?Q?BzbaO8kMQVf1irpeIQkEsfJnrjwjvertrrnjow39OnS6xrN/ofkM2b3A966U?=
 =?us-ascii?Q?7Ypvon9eWvySzbkWMuWqqvURSElHsRyMvoU5rz0cHrif3FyAEOTtAMkn+RVG?=
 =?us-ascii?Q?roqdMPbP4cLW7RV6Xds0c0MvgsH3AzUJV0rPMH3IcKGPhhop4RJCvEVNOodj?=
 =?us-ascii?Q?o3QHjAT/yP516U4HBoldbWuIlBbhGX1Euv94/SPfuVf8skyxcWGTCvWc51Mw?=
 =?us-ascii?Q?O5QkaXvQ6zPHnzrb/vyozDPXIuE8Gj7XbwDdZB4xaNrezIDO4tSv68CQftgD?=
 =?us-ascii?Q?4IfL/NszD2034bM/tHvvHolE5C8OEy1udboERsIU0yvDjCRCvuJpRFZ73Cnt?=
 =?us-ascii?Q?IDBSvIHm1Pxnh4y5Lb0lFqAiYglJxwtR+25e/eLM7kuxO9fWHM7yVEoUUNwn?=
 =?us-ascii?Q?5AZxpup1FRA+zSRMYffk+wFOHYEXp5Y9NNPCU4d2gdNqNgBVjv6eJNB6f6MW?=
 =?us-ascii?Q?T2OE4Gon0PEmeUzh4r46vGbRrjWegEuQjbqBJDEH47VMTCnFwhEJH0OufcLz?=
 =?us-ascii?Q?LqymKf9guZBL42yrsqALp/SgEAPN9gCH5mp18Js4vqbeIgvR4BXbSbfzF/Kt?=
 =?us-ascii?Q?Gl9BARTxviuyeaU4C6q4kuodcr0SWNww3H0GjC/QT+gO09NOp6j6np+ivRSL?=
 =?us-ascii?Q?bEkWskApIslFRv6wPkU3tBTfCVPhq7RxVCg9DOdidPK3eqtIYcemuV6rsjI6?=
 =?us-ascii?Q?gy1peoF/8gq1BiKVpoN45jS7v1NeGbUoe6xLv+a1Bj3EZ/wZPL5ZKBK5giOo?=
 =?us-ascii?Q?usRi/Sz1hpaLZoOtmrNXGcYgwUAwEouqrPZn4Hc5Bl7nF8HdS7HfSDCJkLKg?=
 =?us-ascii?Q?ULA7aJYaptAF9sWeHnRMS2aa3Ym0BZ3ukPknWHj21RAfd71fZXONyKarFv4H?=
 =?us-ascii?Q?kwgjDrJUlrbJDjfFRNaiH3r4WuVCG9zCti4UpgE9gXuK9qHidRZG+WHV01uR?=
 =?us-ascii?Q?OfU8bEnN8onsWyjlQXy0R1oKhYSUcjDXEdpyOLcXJdirjgAHS61Tf/3DrZNj?=
 =?us-ascii?Q?l8UyCQM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?epGP+Rurg9Ih+mU67Ov6WgzzBeAcHaD8UZm/FkHwb5R4aspKVPwcGx2/4y1q?=
 =?us-ascii?Q?riQaXszM7scITEPAGFZirlC9jpTFb10oClAaGyejUu6yu8zEjn8xaua6w1xM?=
 =?us-ascii?Q?TuN45QwJrpLgAGRWraPg5dN48FDNYcHxXQxjYMq/MJz/HDAZ7fZxxe3GMyGE?=
 =?us-ascii?Q?qbuxSqjS/WCjxmw3KUBQ7ezJ0Sa+t04vJgxWQCgCEbbvQTeB7p2H16zw9h5P?=
 =?us-ascii?Q?FJCoo20hkvT8hzvJdcaA/h+QiuXvdS5A0GySpPm6D4yiLUujeQiCGv/SCQFc?=
 =?us-ascii?Q?aj8IWrwqdu1KfM3bM6FBr2ZChJgwmW1DSNaUZME+XfSUX7CMpbDAN7Yd9ZDA?=
 =?us-ascii?Q?W5ZWb6rAzgyA0D9d9YXNeZBJlCGPFA6V6awAV5r94hRWPyK5CXuxBibP7EnQ?=
 =?us-ascii?Q?8GiIk3nNmgLC8xhtXBTvI8uOrtXvIIlugfh+ZtVx3XkT3fEGfF70NyzZxp+x?=
 =?us-ascii?Q?ZR70LBh0bZdnG3r1RKHSHf72OPwI8TKOsb+S27/loHffChPZV3h8YIkZF+Nk?=
 =?us-ascii?Q?rvjp/loeibuBe7HY6rEuCbKB4/OqtHmvvCi2TnhitUplMyDH3Uz6ct60JxCi?=
 =?us-ascii?Q?nqt51XFeS9PcUfIQpLNDhd72gBn+qf6tsgm0NtKfrmlpWvHP9OLNWoNwXHn2?=
 =?us-ascii?Q?3xGIJVJNfzi6t0U2ruqGiZ03+aKV97asykjN2ZnJh5mrxlBUpeNOKmOSNFOC?=
 =?us-ascii?Q?1xGrZs1kfo2yJ6fia8+kjx+7FOsXxdO3L/rIpWG0YWINBiCbsH93z3kdPSJA?=
 =?us-ascii?Q?LvR+gEx3yECoqs2j2x87rPeOSCajiidXemugTs+yBwSykt4OBDoqaWNuyO9+?=
 =?us-ascii?Q?SOV/wC7nBofHjoLsK34RA+zIx8WInIFpQmVF8uVwQJfxd4iqf3LYZKoKrdjG?=
 =?us-ascii?Q?P70P3ZrDcWNsRv4ABfqPEVmAug3Mg1Pw1KacrD0GNm5E8Ienknp3ded7yUwN?=
 =?us-ascii?Q?Ky6ZzmVGC5jD0xbPxPviTnBkSVw9313WIBp+9O980mtAKVCbF+0aal2i/1GY?=
 =?us-ascii?Q?FlAYk+92nOX8LuV5lXKxLIUJANFcAN7nMKzukvaIVo48GATxvuqdFxM0EI51?=
 =?us-ascii?Q?ysZUEXf4S5n7eubxIBjUsmLuZOsV/2IvAk2szqOkKQLLJ0htnruIVpjrrZSC?=
 =?us-ascii?Q?Edm9ZaQSjgFL1QIuk+QjrSA5PBjW4/7/M6qB2g+4NaCzSio3ehBQ733SoObM?=
 =?us-ascii?Q?CFhFI4O+XNdbQv5nn1xruLzcBJX12t0jXpBxB1roE2Yw4d7TwxUp9+l4xWbA?=
 =?us-ascii?Q?fw2Hso2wx05CYQlGhuMQXyUnIITuj/CAoXinX3ccCvAjWm8GF0qyI5KdolzP?=
 =?us-ascii?Q?FodTKq8zMDlrvn39PK1pbkP4nUIeJOnH/lkRnU9orFP2O0aoRYoX0yuJqeG6?=
 =?us-ascii?Q?Tk/jGEPrvqPAnqzpOtuTFcsURq5z2InHOSXn6KJq9pMuDTc2CsUN0Ts13SjU?=
 =?us-ascii?Q?yz9pHVVjmH1Aa+5JeHbEzE3fc41Hk/UIGPU8nI1dM4z1J1GIDH1uda1VD02f?=
 =?us-ascii?Q?73aQ6Mes7jCWFYe1QkE47eVSnMBf8XFrGy5/9vpWfBIWDIuFHRWNxRFbSEOi?=
 =?us-ascii?Q?L138yd8K6Zjowb4dl8fKtDbjlkmJphaOjG5a3hu92Pk8eHbQ8viUuWaNOmgi?=
 =?us-ascii?Q?/w=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	QOZVcgxw3ljAnzPpIM3YwtGVN2tD+AhjHq5vAR9yLhD9Sovaj67Bh9dP5DF/dffZjhzPYfgQ3SlWHve5oyOnzRVl1n7Uc4fP3w7va3/7XEds9dyg4qyui/zANTCviFsTatXRnppwZQKnKm5j+KlicFrZuv75KYfeCsZdz2jVjHx9vP0I+u4x+eZTtK+8vIt7SyVJ6xFeAkL4YRIqzyDvmMNMAnOaMxgEH6OTQSXoYS8ZSBN1JsabubrCJON5IiQC0nC+KV32q1Bd8ZnHdFWp7WRWMH0Ia8nuItOQd584gKo/YPJ7xhQMfBX4YQnauUqV+zejF9ZpVcCsN11pYsCTYtWg9FlqGshE6oQFco6C9LxiKjs6ZQvLtlFtJekeOz9v7Ds+3QieoMkBYxKMPssJN2FPlZcUX1hHrMf2PtmaF6EcIhmzQOfv/M7ahG8JuR45oGadTqUq3N21c0CmizANt4uSryGJvgalghU6pD7xs/Li0W8BI5dyni8XXEV3WEjcAxhzp2MSa9cgdDXIzPjLiTVEbOF7wUt1p/RpOhUiShjKSp3NYHuX5PPHUpWg1CqYk4+dcUBW/X4l4+m9ak/hzj00PC+DT42PeqA51VmKJ+A=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d60000a-d708-4242-32a8-08dd15e84460
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2024 11:22:28.3682
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dGy3E6WLMl2X6JTwl+nISLQf3jVSsKMGKn7+odhoJDaEk/luqYYYFg9MdQjBvD7PN/Bsrtdn/lNDRk3gBJqHSJ36+KLfGuq1AGyECusapyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4434
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-06_07,2024-12-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxlogscore=999
 adultscore=0 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2412060083
X-Proofpoint-ORIG-GUID: CY5PHxFaYA9fC1auN_3fQjwVdRqyduop
X-Proofpoint-GUID: CY5PHxFaYA9fC1auN_3fQjwVdRqyduop

On Fri, Dec 06, 2024 at 11:03:56AM +0000, Lorenzo Stoakes wrote:
> On Thu, Dec 05, 2024 at 09:43:09PM +0100, Vlastimil Babka wrote:
> > On 12/5/24 19:09, Lorenzo Stoakes wrote:
> > > On Thu, Dec 05, 2024 at 06:50:09PM +0100, Vlastimil Babka wrote:
> > >> On 12/5/24 11:41, Lorenzo Stoakes wrote:
> > >> > Lightweight guard region support has been added to Linux 6.13, which adds
> > >> > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> > >> > call. Therefore, update the manpage for madvise() and describe these
> > >> > operations.
> > >> >
> > >> > Reviewed-by: Jann Horn <jannh@google.com>
> > >> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
> > >> > ---
> > >> > v4:
> > >> > * Reference function chapters as per Alejandro.
> > >> > * Minor rewording as per Alejandro.
> > >> >
> > >> > v3:
> > >> > * Don't describe SIGSEGV as a fatal signal as per Jann.
> > >> > https://lore.kernel.org/all/20241202165829.72121-1-lorenzo.stoakes@oracle.com
> > >> >
> > >> > v2:
> > >> > * Updated to use semantic newlines as suggested by Alejandro.
> > >> > * Avoided emboldening parens as suggested by Alejandro.
> > >> > * One very minor grammatical fix.
> > >> > https://lore.kernel.org/all/20241129155943.85215-1-lorenzo.stoakes@oracle.com
> > >> >
> > >> > v1:
> > >> > https://lore.kernel.org/all/20241129093205.8664-1-lorenzo.stoakes@oracle.com
> > >> >
> > >> >  man/man2/madvise.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++
> > >> >  1 file changed, 93 insertions(+)
> > >> >
> > >> > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> > >> > index 4f2210ee2..7d682fa40 100644
> > >> > --- a/man/man2/madvise.2
> > >> > +++ b/man/man2/madvise.2
> > >> > @@ -676,6 +676,91 @@ or secret memory regions created using
> > >> >  Note that with
> > >> >  .BR MADV_POPULATE_WRITE ,
> > >> >  the process can be killed at any moment when the system runs out of memory.
> > >> > +.TP
> > >> > +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> > >> > +Install a lightweight guard region into the range specified by
> > >> > +.I addr
> > >> > +and
> > >> > +.IR size ,
> > >> > +causing any read or write in the range to result in a
> > >> > +.B SIGSEGV
> > >> > +signal being raised.
> > >> > +.IP
> > >> > +If the region maps memory pages they will be cleared as part of the operation,
> > >> > +though if
> > >>
> > >> Hm this reads a bit ambiguous. One could read it as the memory pages are
> > >> being cleared, but it's the page tables.
> > >
> > > This was really hard to word, because you don't want to say unmapped, and saying
> > > 'clearing page tables' or 'zapping' is clear to us but not necessarily to a
> > > reader. 'Clearing mapping' makes it ambiguous vs. munmap(), etc. etc.
> >
> > Maybe saying "removed" instead of "cleared" would be better?
>
> I was about to put more philosophical points here then realised we already have
> a better solution... we can say 'the regions will become zero-fill-on-demand'.
>
> Let me respin a v5 with this corrected. We will need to revisit once we
> support file-backed pages.

Actually, as discussed on IRC, I think your suggested 'replaced' is better, so:

"If the region maps memory pages, those mappings will be replaced".

Will address in v5.

>
> >
> > Anyway, I don't want to cause bikeshedding, so in any case:
>
> No it's appreciated! Review should be critical so we can make this as good
> as we can make it.
>
> >
> > Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
>
> Thanks!
>
> >
> > > But you want to make it clear (no pun intended) that anon pages, if there's any
> > > data, it's probably lost. So I think this is a distinction that doesn't matter.
> > >
> > > Will revisit once we support file-backed mappings.
> > >

