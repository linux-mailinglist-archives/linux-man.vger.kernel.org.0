Return-Path: <linux-man+bounces-2808-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB75A985C5
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 11:38:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D2EAA7A315F
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 09:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1748B190472;
	Wed, 23 Apr 2025 09:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="MCp7HP+V";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="OaryTAJs"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42DC1FBEA6
	for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 09:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745401104; cv=fail; b=bqlcIE7fLqgRh4YXEabAGhAMeGeBiNyrdaRUA6YjOui+ny/0gz/+wQD/dYytJwTxmHhO+UOETLFlvMccFNQoXqwpBhEnjIou7tvicdvOgfQjrdil4q4gXDcMs7cAl713KtUpsn+ev0uU587Vo3FxPzY/dYwrQjiELUzAzKMMUaU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745401104; c=relaxed/simple;
	bh=5J1oH1N/YK+uGgzYNHbZqLJrvmm80Zt4VCyatiKbYTg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=iSyaIbTKGwUfSFr4nb30m1GAwjueBrr8IxGPrax0AlUb13dIbt1aUDhcGYKTXInMLLyK+6v+v1mTAvbhgh/9oKJFIOsb/tinBaTWWKbBpxj8ySRTgMVEsMy4T+usk4dDELkm/r6h9QuEdqlEhP4boEBsniCsQGStXD1sgYvaLsk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=MCp7HP+V; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=OaryTAJs; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53N8g3GX021823;
	Wed, 23 Apr 2025 09:38:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=UIVp8XFgRJQOcjsTIr
	o4hB51dbv/IKDlY2B82FLnsGI=; b=MCp7HP+VzW5xtpIDRQ4W6phjoZlxyQdDqp
	KZK62M747Gf42PoerdtwaH9qKN8S/Fra0d+RtmXunFfGCV8sexFp1Ae9K6k7jUUl
	tVxK41PpCC2KqfF+737Tdi4bzrlg0WaOWskQCVENTp+237iL/rpGDy1PJs0nmH5y
	P+E5y0aSAi6S09i+DoLWvwsu4BbYlf3J2Wcv+Q8kqkA4xP6N03FTDOvV/K/v8Bci
	FBbwpVQcR/VbHyc+Y1VmhO2O3Ny/KKIObclnMDIVSNuGEnr0yUQ8urjpnFw1x1ob
	SrQhjY4C0XL8xZRonMimz9wH3i3vq2KFEuxaY/p7zacQrmTr1f2Q==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 466jhdgv01-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 23 Apr 2025 09:38:05 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 53N8suq2025183;
	Wed, 23 Apr 2025 09:38:04 GMT
Received: from ch4pr04cu002.outbound.protection.outlook.com (mail-northcentralusazlp17013060.outbound.protection.outlook.com [40.93.20.60])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 466jbqcxh5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 23 Apr 2025 09:38:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=guFb7uvwwsC1U8Bxemha/iB+YoWcnxDckfSec5QbYG2K79EeT8/DKvIwZimR9l0/sXos5WtoEP1oSrPIeMkeDKlhjWP4XsfCFCQKy8jlS+EsI6cVu+TCAVf7mVCDM7dSfGPIfp63dVzFLTngOeC3cJYrSP0rOK4X9BNwkvrAhBOt90sK4v3UyOEAlSSuF5cAvX7HYBGTl9lcRDyQHEyYXB4PcUTK471WL/MDyOZtBn1K05mHrzcBJnchtmH6dB6ySBNnt25wH+pUHthwpXW0ImaKig3bOsYq7M4EiCIFT4wzfqhyEura1ETvGJUdSldd/dLKQ0VPZ88sG9gxviz4ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UIVp8XFgRJQOcjsTIro4hB51dbv/IKDlY2B82FLnsGI=;
 b=jyyNwena6SqrYcA4i3gOg718DURGXoPKHwisOW9cyZ8EZhoJYuwybVDA+K5B1udYVF/HUpVNXBM05z/LzA8cDcILBGzIkArkFXng+qku1/280LpF3pNrTAp2EBq1M0V3YeYZbsuFPzLLssj7qc5SXoJe3hKjA1Q0p1PJAyUyQPiDK0EMR5lMdK0qCF2+Q0+w3p2W19dv77+KC9TZ+fO7G2BqK1804Sto5zy8z79tBzJ+X9z7AWnYmK9vgB5zk8FQoIvYUb1Tci7KjAE4AC4jIUznkCD1nkVwWKTTmOq88TJFakDEEDxbzJzC1KXu4wMPXGxD8RvJ2NMD2NkXceru/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UIVp8XFgRJQOcjsTIro4hB51dbv/IKDlY2B82FLnsGI=;
 b=OaryTAJsyVTz9bGJs+o9FiW1TxiVb2ejQtljv9jqnT/ygNypaWaSpYbeEk647XkRIWsdTMz/NNzd4n7ciOk9nsEB6wM7TXhSASYjScZ1jkEU2DjJin/BTxoLCjdc3S9ZaKW9hOTeB/wcBrrzIhr8RJ66THpoXOpKSE1rVb0H4jk=
Received: from DM4PR10MB8218.namprd10.prod.outlook.com (2603:10b6:8:1cc::16)
 by PH8PR10MB6647.namprd10.prod.outlook.com (2603:10b6:510:221::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Wed, 23 Apr
 2025 09:38:02 +0000
Received: from DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2]) by DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2%5]) with mapi id 15.20.8655.031; Wed, 23 Apr 2025
 09:38:02 +0000
Date: Wed, 23 Apr 2025 10:37:57 +0100
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] madvise.2: update MADV_GUARD_INSTALL, MADV_GUARD_REMOVE
 description
Message-ID: <4f3180f4-c18b-4494-a619-2c22a69411aa@lucifer.local>
References: <20250317210653.273728-1-lorenzo.stoakes@oracle.com>
 <jy7enfjux7etamfupfipzijrnlc2ltzuaq5limlpd6aus6ihfs@zpc5jqxtsbs4>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <jy7enfjux7etamfupfipzijrnlc2ltzuaq5limlpd6aus6ihfs@zpc5jqxtsbs4>
X-ClientProxiedBy: LO4P123CA0174.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18a::17) To DM4PR10MB8218.namprd10.prod.outlook.com
 (2603:10b6:8:1cc::16)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB8218:EE_|PH8PR10MB6647:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bed7f43-53cd-45df-ad4b-08dd824a8a99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?COC7M8UkioBMoz9kflhcv3jBOmOQ3J+m6V7pDmkkgaLa7wE0RH5RoNf2wfS+?=
 =?us-ascii?Q?cswHL3mua3fNKns7qVj4uBCggSba8S9fAn1dCMKZZEPxWMqwHdm4PzwMNK+7?=
 =?us-ascii?Q?9Q2EOI5t0p+/utGzh3ZLILujgg3vJa+Q8KTgNLXiBBTEV8us6Q7lhVCfIHZq?=
 =?us-ascii?Q?WIH9eV+j4sJOWLtXuuO0Bu+mhGKlvUaU7wHEkr6VNku3ICymLGJOpmd62CKi?=
 =?us-ascii?Q?eszBKs4dCaTe4B5Ux5jQ/C2Q7NLCNuUdudCwxCgS8tVNCGX7W1kfSU+c+boY?=
 =?us-ascii?Q?5fTocDQ3dIbNaM0LjR1AOka+OdHJKHhn5KjXbM7gQvZ6Jrp9gl8LAP2RksHX?=
 =?us-ascii?Q?SXOgmhxT2P8pKz3KHLrihjB+dfEHuixolxhj6XnDUSDY+XtAukBpmx0+eH1Z?=
 =?us-ascii?Q?qVJ+u5tcvRYlUK+2/VXmshSm4ZztNxUSWOaB0nnWKNjgKMhB43ohyyCrg9Nb?=
 =?us-ascii?Q?hD4h1mwzop0mBhQ1UzsJkXy5QVeFp3UaXrGlc6Hr2nhSWTLsES/3i6gtfUHf?=
 =?us-ascii?Q?Vp3lk5LhWksGZDQkbtltAZE3FNfrX3jzj7jNzfYqZDRabXkCZGnv0d5KBOeb?=
 =?us-ascii?Q?bixpnmquL8HQZwitnR48/LB7AP6vX6YyApoGG1bOzLm7aU0eezzkCpUrVLV4?=
 =?us-ascii?Q?VCSX4Yb2dKN2LG/51Yzhn5b82PFdEi2VUB/cYUioeqcmqEBGuiMbqvwnJZhU?=
 =?us-ascii?Q?NJ/00mwjLjKtWV/XpY2SowSE7naRfiK/gMvZRnntS86o2Ef+IGsH8s+jifG2?=
 =?us-ascii?Q?544eYDbF8YlpD+Xv4Dagr0RSv+6SVTWsL/VCv5qb5t6lfsxaTibvBK26uC5c?=
 =?us-ascii?Q?yuBxjkA1aKkkP1+hUvcwq3rIBjRXk1mkYJjevp7zyW2CIWxWsYKbC8pSOqr+?=
 =?us-ascii?Q?RCzu3xaaV9RamDxd9nIxqsFJ9L0933Me5KdRJETWHsggKMTtBgxBMkoEOZpj?=
 =?us-ascii?Q?aiCvav4zGy0fx1AZjGab6oJg44VPieRGH5ZSK+ArUgpF54su6xSwtudLvmVg?=
 =?us-ascii?Q?IRTm3KWoEA3GIORwiFTNbPPqHWTyQm6ckhc66ynJZwkf+s5KaXwffhqvbYyl?=
 =?us-ascii?Q?c8wweTj9CFXedkIsQA3VFqaWJ4cGuOM9ShzBTFpajk0N5fl5WIPyVKTvGw7S?=
 =?us-ascii?Q?upwe5/4i4JhRkCP0IvfizAHHjlFQfpH+g6YteVV0Sp7aK8TSOL/iof+98yo3?=
 =?us-ascii?Q?domG5kdxJkK0zlxGogx5YiKqCCFSit1/Oxyva/POOGxwxVjBMoXq+3RDbODr?=
 =?us-ascii?Q?kgR2FDqdtyUTs2w4tkEZX5dvT/bnWQicCE6xVIwfaZ0vsQ9qPfOniei4Ty/K?=
 =?us-ascii?Q?JXvIPCPVl6uk+ye/eaRdperKvsAmxCjAJjOQMPNvHOI8bIY6365nKZ5ecgHb?=
 =?us-ascii?Q?yLM3qQ8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB8218.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?WomLL4aIzGpV6x0+Y1jtZ1ZpPMYqhT+J05kGpKdrpFd0YM7s2eiCAmXcGOBe?=
 =?us-ascii?Q?Ry9MEoetnkxFIC6OIjFZbRIzVyXYVlKrW6VL9rdbqSXb/jZZsQTATF13K4Xk?=
 =?us-ascii?Q?JUiB2FpCrt4GGApSeAkckfILQXkUm6YFLGsJKf2kSVHaL9+oPXs64ciNOzhQ?=
 =?us-ascii?Q?k2yLINXRMPT8Y04Xxw/TvmEdVxjL32Zjksi7ADAjhhxJ16Cv/pYvjqKnIXTH?=
 =?us-ascii?Q?Ya16OLvQ3KLy9Kjziodj23G1615pqGBEg+VbHsnqqKg8+OX5Zi/bpJlA9vXt?=
 =?us-ascii?Q?5xOz6fr8STaOF8HPc08ykyugk1WqbPNd30I7f4FI96Eoh/Ae/bxq3YTBMQDp?=
 =?us-ascii?Q?4w7etK2qO15OXrkbZZu5xBOui9iSJHTlohg4BciXBF2hMHs1Gdtdo/8eWKcL?=
 =?us-ascii?Q?bKfQAsMW09Ft0yGtBOlTqYbS5SNU3JTBiQ/l7UFeHJkouZEgPlxhH/pyeaZ1?=
 =?us-ascii?Q?eI2ir/SgR10vdk9b1PxhrC3VeN3daCLJIngzLNFY6Ti0T7qEzXGQCHYayLB0?=
 =?us-ascii?Q?7xeA/lJIWpBIOktAS9RncDew4eWXXymAoXs4KvKbC+a4k7b7Eoe0/jVS0Rog?=
 =?us-ascii?Q?EBuyCxKaX7eO3cgLgfVAT2iR2CLnr3JNB79UKBXTJmzzT1pL4sKzlgUHAulX?=
 =?us-ascii?Q?hvsvwgCBT1d64DzutMhmAbdyvxA3sV793purKPxsPcsI220MyYRQqqITlh0h?=
 =?us-ascii?Q?XJaNpw46pR3S5GNUCpCxSkL5i9DjjXp9K3fznFSDqwB+VwoGbXf6EE7emU6Y?=
 =?us-ascii?Q?hb4zB+IfhJZHaJJYYyU0ZTSNtkPQ/a6+I4Pq7OsvohDIkcjWqI1AAV+ktkE+?=
 =?us-ascii?Q?zlPdIUN29MqX1YG96ZQATfT3kW4LElK4yIeJb2v37R07osS+3+2GU/Hb0O1d?=
 =?us-ascii?Q?ps6RDG2EMr4Q3CSCuuGNFCQSKxixvsxWe6tJ3bKVTHw3ODbX4id1q0hv+IaO?=
 =?us-ascii?Q?ymqGp8vLZXFlBdyH1lSC0nD4O8ZDrrInbUxthQmFoa9/lvp8nhez6Ov9k0Il?=
 =?us-ascii?Q?tH10sTIgYX6WqcmUkjGks33UJgCe7gdRY7wiOuulKhJqhm3UODhUEaDYGOF8?=
 =?us-ascii?Q?w0arbM2qh8bjlO9yzWEp3gr8k3KZa+d/ll8SbKB/xIach/KZqDCKNimDGZp9?=
 =?us-ascii?Q?JoqDWw71H2jP3ZM2TnMm5gSX6PrC+ulZxnmC2bG5GcP8NL1T032DlmLKrn9Y?=
 =?us-ascii?Q?R5qNxt2nyB9QNv9r6LmH1RLRDkagHQVytb7KyxmhU/XqCodU7VacoXW9oj8n?=
 =?us-ascii?Q?nJcY2oeDAgwSyKnbqXArvGaa99Qnby67mcKsR2bqbUfJtcBgcnXb6QhSLN0l?=
 =?us-ascii?Q?8/kFvDVcnBNjCr577I326D2afmYf55e1tg+YaQYib4hZsn+yEPdsUBnk1uzD?=
 =?us-ascii?Q?6LHOsWSrO59YzWXtdjDfk8PIng1520tb+YaHEvHl5D9dtAl0rtA+95c4AeHe?=
 =?us-ascii?Q?9jrlIVusRpcHgGg550OY1Z03i11saAkS2uiNdoEajLEfQtcR5RBgY9CK7Sv/?=
 =?us-ascii?Q?T5aIdC4yb4rlyqa98NRS+RNrAWUaP7SUzTFN0RwieJTQ0WP0REoRDxUG7YBG?=
 =?us-ascii?Q?E5xkQthJq7RS+zyJQrU8r8nSworohg6ylwfVSuX4schAoyXx4oxXKXvFkajZ?=
 =?us-ascii?Q?7Q=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	nBofRUoXYUGal9OS5cphOaKKvnycpW2IoUMgVn7XYHwdiG+krTctw5bAQmxsDTrnJY3l6J6TBo+pxYmPpEHjPo8OBEgGaMxBoEVatmIK/V45/Baea3ihXbGwRuAEPBnWsrpsbcyxGR/iLlqh7bgFJ8Qh4lwl8Eg5Rte3OEFH4yqR/RbdxuzzeiBwWJjj9rVgFqjRYPkD/vhGHlDhEP6PA0b7CkPnp1V5NHVDQc8Ox0iS8/Fxf10V5TdX3epueasxe65Nt4TNan2v+UnhMmjq8cR5C5lYRZvPuDc2P/wv5D5eTomgvIvW9wmHtU6GAYIHKeY9UqV2uiEn3GZSPR6qdrXgfwY63KIc3hinaKQwZRIipN5Ik95akSuRcXMbyHj23p7ZdetlIT6xMqOBgfsUqowVBh33SgxWQVTfZYqXto0Kzzkb7b8214WDaWA1JXD3xDBJ2HzsoqHb2EZCJ/TqR4HMEqhS+xdqCBp1zs1A/IVDuLRdTSuMlu5XTgBkgrdPrscG+cbg+GBNdEK2yDQeHTiI9OcCV9iFQxUe7oDx7UODzdiotzKUV7jlEyPZ6mwgXDFGGDUemadyRbXNigVY5dnG88ODMV3YxZVZYNcgk1A=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bed7f43-53cd-45df-ad4b-08dd824a8a99
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB8218.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 09:38:02.3069
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y544eDVSjDsgVLuG3r7OHu0/D57LM85VcUYaafmdOFNH99nY0/FqQIxaBOwg83JdkWp9P9dOXB7MVxlPfH9/g72qByXnr5gYhyFrNzx/bzw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6647
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-23_06,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2504070000 definitions=main-2504230065
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA2NSBTYWx0ZWRfX1lU8mdL+Uc2I cEe85sWwqmY5th5KRHU7nS0GwnoZaZBuE7Buxp5f33pz9xz6DAoQixp9TgC4XeBKKe1A6XT+Dyu qxaTRvcfmjoDTRNttflQ6ZOp8+hRKeg1I3mVD36KbvOVxmOvopEvgZkChL1iclwF5dJIksto8+k
 ztxNW7lZuDst5DHAC8OF1c8pxkBqwO4UE6gg8EExuVC2XEQfm5hyauVphuyEzYfXnp8PXtN/B4U v3AOHMPdV9V5chHGgXVNhIJKfXxXgcB2xpWEL8RMLlffAyHGX6F/5O08/WA9y9gyuMXaCL28cDt zZ80VWVd2HfQ3kKs5QQbHhI4tE1uVEM2JD1DMDUJKDc0+PwQXrTlOP7Er+rRF1tdWLNuYIHs0jp UG/4GC6V
X-Proofpoint-ORIG-GUID: 2jdZ0PtbCdMoWuz_uWibs3irmES8wxY-
X-Proofpoint-GUID: 2jdZ0PtbCdMoWuz_uWibs3irmES8wxY-

Hi Alejandro,

Sorry for being slow on this, LSF and workload has held me up a bit, will apply
your feedback and send a v2 soon.

Thanks, Lorenzo

On Sun, Mar 23, 2025 at 09:15:36PM +0100, Alejandro Colomar wrote:
> Hi Lorenzo,
>
> On Mon, Mar 17, 2025 at 09:06:53PM +0000, Lorenzo Stoakes wrote:
> > Lightweight guard region support has been extended in Linux 6.15,
> > permitting the use of these features for file-backed and read-only
> > mappings.
> >
> > Update the description for these operations in the madvise manpage to
> > describe the changed behaviour.
> > ---
> >  man/man2/madvise.2 | 37 +++++++++++++++++++++++++++----------
> >  1 file changed, 27 insertions(+), 10 deletions(-)
> >
> > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> > index bd2b90b7a..37492c8cf 100644
> > --- a/man/man2/madvise.2
> > +++ b/man/man2/madvise.2
> > @@ -697,9 +697,22 @@ is applied to regions
> >  containing pre-existing lightweight guard regions,
> >  they are left in place.
> >  .IP
> > -This operation is supported
> > -only for writable anonymous private mappings
> > -which have not been mlock'd.
> > +Prior to Linux v6.15 This operation was supported
>
> We don't use 'v' for version numbers.
>
> 	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ grep -rho 'Linux [1-6][^ ]*' | wc -l
> 	7679
> 	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ grep -rho 'Linux v[1-6][^ ]*' | wc -l
> 	13
>
> (Oh, well, I need to fix those 13 places.)
>
> Also, there should be a comma (and lowercase):
>
> 	Prior to Linux 6.15,
> 	this operation ...
>
> > +only for writable anonymous private mappings.
> > +Since Linux v6.15 both anonymous and file-backed
>
> A comma here too.
>
> > +mappings are supported, including read-only mappings.
>
> I'd break the line after the comma (and put 'mappings ...,' in the
> previous one).
>
> > +.IP
> > +The mapping must not be mlock'd,
> > +nor can they map hugetlb ranges
>
> mapping is singular, but they is plural.  Did I misunderstand, or is it
> a typo?
>
> > +or special mappings
>
> I think there should be some punctuation here, but let's revisit after
> the rest of the paragraph is revised.
>
> > +for example,
> > +mappings marked with kernel-internal flags such as
> > +.B VM_PFNMAP
> > +or
> > +.BR VM_IO ,
> > +or secret memory regions created using
> > +.BR memfd_secret(2) .
>
> The space should go before (2), not after.
>
> > +.IP
> >  An
> >  .B EINVAL
> >  error is returned if it is attempted on any other kind of mapping.
> > @@ -756,19 +769,23 @@ and
> >  .IP
> >  All mappings in the range
> >  other than lightweight guard regions
> > -are left in place
> > -(including mlock'd mappings).
> > -The operation is,
> > -however,
> > -valid only for writable anonymous private mappings,
> > +are left in place.
> > +The operation is supported on those mappings
> > +permitted by
> > +.B MADV_GUARD_INSTALL
> > +in addition to mlock()'d mappings,
> >  returning an
> >  .B EINVAL
> >  error otherwise.
> >  .IP
> >  When lightweight guard regions are removed,
> >  they act as empty regions of the containing mapping.
> > -Since only writable anonymous private mappings are supported,
> > -they therefore become zero-fill-on-demand pages.
> > +Anonymous private mappings therefore become
>
> I'd put 'therefore' as the first word in the sentence, followed by a
> comma.
>
> > +zero-fill-on-demand pages,
> > +and file-backed mappings are repopulating with the
>
> repopulat{ing => ed}?
>
> > +memory contents from the up-to-date contents of the
> > +underlying mapped file.
> > +
>
> We can't have blank source lines.  That results in a diagnostic.
>
> >  .IP
> >  If any transparent huge pages are encountered in the operation,
> >  they are left in place.
> > --
> > 2.48.1
> >
>
> Have a lovely night!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

