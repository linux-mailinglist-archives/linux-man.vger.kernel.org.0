Return-Path: <linux-man+bounces-2080-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F9C9DC359
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 13:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B852DB22900
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 12:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AACE719CC06;
	Fri, 29 Nov 2024 12:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="m2hqS9/+";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="WyrKk5jf"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C759314D6ED
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 12:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732882636; cv=fail; b=XKtDEvipS2GKQNVWrAVUOZi+6e3RZ49L5/EwEfcvwVAqA3JF1KnQjQTXXGPMfcvxvwAtLel0vTMl2+ellqWlyalBH1g5bPEGlrfpDSY7ukaNrS072kF72RoF4FCL/NgdntfV2P0i5ZSvVUe9dXB0PYrCqlJ1SEv+TZrrdmmvWnQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732882636; c=relaxed/simple;
	bh=2d0YV0jH20rJJcb7WSoXK9jtvVUSvJQuTU1ftuB4ib0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=JO24rpwcZm7xIjGkvalCu+n3ej7A1AFY5xI0qJ1stcnTUAiJuSDREXbs65SPabOtrS9+gurkcuR79xnIqg9VghLCktVYsI5joDSSZxWP1/0UmtHvCsGnvISdzcet2iviF1mzxTTmR+4GaYXH03q9kyqNrJTZq9QU8JmrEJ3viok=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=m2hqS9/+; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=WyrKk5jf; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AT1fZd6020906;
	Fri, 29 Nov 2024 12:16:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=WBW1ZFUnixEOXWZOkE
	f4EmxOajCAzt7l8pMrkq7g36M=; b=m2hqS9/+zmtzSjupgJXnjautkJI4lPaSIO
	AToDXXa12TWU+R2enf1Q8HP6VJQr65pwKQGnpjHqcDpEkGLxjrQtVGV/4KjiepZM
	mmOGj1Pxm59cyycMxv9JWdec4BMEW4v8uMqo8VrZjZ4MbiHkhcWKZTEqgVq9eJQA
	bQHPEWdQCAOqMI8eor4+HB2WDczEPYzZaCDbHJy7tJLser7Kq1qoO+ZSS8bDeg1Z
	KMMy/v6Gmicqh+0emqAsnMlmt7VjTFdwVKM1C2GgNLtwnxBkutgkY44ZEqL3d0jk
	s0gqr/j6TGBx0st75dHCwGbb8yHrOnJ8ess0i0rFeQvIst62MkpQ==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4366xwb97m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 12:16:54 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4ATAMaJs009072;
	Fri, 29 Nov 2024 12:16:54 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2048.outbound.protection.outlook.com [104.47.55.48])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 4373ss8r5h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 12:16:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jgnr2obTCMdV51XWEY/NGEf8TbtxccK22f4sM5+3s2WKP/zL21MmdejZjK0pJzKP78CY1vQaXhiQhRqSsto/HPPBqrCE94FAvLiUSvHBzrFBehpOC+v7EcvDMI3xlwfuTEhGxLqXx9qOHbpU9Y/GcPXN9Q/Iqd3gTMy6dzLM0okWvn3a643fqd7lqicsKUVxgzT13clokpJ9BTKcVZmxRJQTS7wnd5NWfD7s/3muEIP43NtIz2669Y6o9+o1QGNwaQlKBiyLUibXGpEiZ93Dul670ynxSrclKDmJxZTGkYSUV88AYadUuO8qjpFjgKDuXHW197kKVYmEZFMJtzSIYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WBW1ZFUnixEOXWZOkEf4EmxOajCAzt7l8pMrkq7g36M=;
 b=rHdGxuGe9kLUqQt2728pKOhzPvi0RVvDT0u/4lTdIo+E1Bz+Riqh8aytptwxYieen5t0s6WUvNxCkqZ3Gy9ScooKunxHOG/IGChdF3aSCKNBz8P0Qu8CBZl5c0Ii82k+GJGjtvsPIQlDhEQDhE1Psr2o6TNxvmBGlfMNV0ortoSxN6jwWQpFmR1Jwe1/iV+Y2m6qvx6OyE1MOiX74c77FBhaET5t+WCWorrxo2ykTgj1q0kzWxJBlni6Qb7hgyFhtM45LWmWQrQ8lxl8uyCtACbH1JBruGw3qWcwhWX6+0W709ALVK3QPnPY09O6+szAMzY/19v54GrvGs+3oqe1rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WBW1ZFUnixEOXWZOkEf4EmxOajCAzt7l8pMrkq7g36M=;
 b=WyrKk5jfKjowq3b4pmQ74uUgyieJlTgHXvWYvlhgZ5j9nNa+flMuJU1bLv1Sxm7RNEZcrovXtWHx42C8u/vRGFTFLDHxV+BG4uymOXlM0n0nbixaN5Yqq2rcJg8v8gEoSXJM8jygT1yVLtziqiS1P3I5u2wEaYfFiNg9/28r7FQ=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by SJ2PR10MB7811.namprd10.prod.outlook.com (2603:10b6:a03:56e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Fri, 29 Nov
 2024 12:16:50 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 12:16:50 +0000
Date: Fri, 29 Nov 2024 12:16:48 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: David Hildenbrand <david@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH man-pages] process_madvise.2: describe 6.13 behaviour
 permitting all madvise flags
Message-ID: <7bac815f-8320-4bea-8ad8-48550232fbe1@lucifer.local>
References: <20241129095507.11001-1-lorenzo.stoakes@oracle.com>
 <b6b1a9a4-0189-40d8-9aef-a4393c795451@redhat.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b6b1a9a4-0189-40d8-9aef-a4393c795451@redhat.com>
X-ClientProxiedBy: LO6P123CA0049.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:310::9) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|SJ2PR10MB7811:EE_
X-MS-Office365-Filtering-Correlation-Id: 83fa679a-330f-4684-8508-08dd106fb41a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?fR9HRtndZRlAb0BSC6lntNgCrS1BZWSDBnSFleNi9lskkqP1VcPYjHo6t/iF?=
 =?us-ascii?Q?Ok3aIZYwyuQsokhnmW0AcehCAuI7QqQGD6aH9v2WjgMPAxvjo7Wz/2g3nO7W?=
 =?us-ascii?Q?EEzwZKJXDa6B6fFmBxhqmm7cy37UEH3JyXcJ04s22OIbz7mBTvYQfgeH+rwe?=
 =?us-ascii?Q?U1cO4mu8HrwPnyhw+NG+DDVsd/jg6i/0SvbKu7uRI0nsa0zLHLCBcku9yO1z?=
 =?us-ascii?Q?xNBojpnXjfVSBYCRm1zuXub87M/8cb1Mr6KsfNN4jTXmLIDJmzX8jLv2wP/r?=
 =?us-ascii?Q?l9Ipmx91Mvqo+ujH74aIhvBsOAFKL3kQXgneaBREcJwvm+/HIQUNv3v9bW00?=
 =?us-ascii?Q?32/lFku7sq/ef3Q09Z9L7I8vQj5oIRYGRMUAUX7jpn1WgdL4UK/5Az/6g8hm?=
 =?us-ascii?Q?mKUywCMAzpho4GwZo5Zdic9CnRGWJeXz3Mntoi0rOr2BAxJpYjwwIXlpIfpF?=
 =?us-ascii?Q?X+P4gc+eMjk+GjFNTLoBjtpfAO0lyTfeNkfvSnjGcRSmND8HN+G63uXgvESb?=
 =?us-ascii?Q?REV4p7/L4IQpulV276kEveiTJbHl/yyopqc/SuiGF+MOuVgEF7tcQCVrXPmG?=
 =?us-ascii?Q?I5XGCc3uGImZ6C1GpToJb8dbJgSReh09fOeZnFXRE2Y/swyI7Pf+4xGE2mia?=
 =?us-ascii?Q?fX8yMtd75q6KXdh7xKOe3s+MHmHHXWjT7rpbtSoS4RCU5P0m2yQPX3a9v+SI?=
 =?us-ascii?Q?LBczZYleUW5dbHEU6eZ9iN+/aRkV+jWJjlMYA2fZKoLsjRqsotDQwFNfX8Nh?=
 =?us-ascii?Q?L2ITBXOwhTFRQPgXEpBmzL3BOMkaF7IrL+QW3g75YrSltF9SRYoyXOTYs+a+?=
 =?us-ascii?Q?rqq7FskUaCtipeiHuBv3D+e/gqIhBvdEi5h9VIw4tdRIkGNlq7VmV1q/d81n?=
 =?us-ascii?Q?HJP4LAEZQS/3rg7CI5Au1nS8iv4hc5oIxfJMp5YkKS39Gj9VDG/VgczwuVqn?=
 =?us-ascii?Q?lszBIMUDpMU7TtNgWEu+39d1RAdMZ1RNhWx/9TTwTUYiIkv5PmlJsZbYfXLF?=
 =?us-ascii?Q?u9cmUlv4IoiCBIrplLwbeGITLXh+BOBBgwihZy8FP9sg+s7O1/8LG34gHo7r?=
 =?us-ascii?Q?CLpdkM3uHBneFFfkRpV+Uu2K/SI8Li/f3d4qvL/nMSMWZj7CG3leo2CQBJEm?=
 =?us-ascii?Q?pDFqRCM2N+/aDHPClDadXzE+O33d4oHcvt1ycqRMN5EG7CaTt485yIGs68aS?=
 =?us-ascii?Q?/mtbhjtiraXVbcykMXv49s1TRUv4lFtGQ47Yyd6K5gbYLEVKYzSMfQiKa7Je?=
 =?us-ascii?Q?JbRsCHOMU/QDw1SLMkTbCHd4Y8q7DGN7FrqMj/DiYY9DmPLyrifcImV2nnCZ?=
 =?us-ascii?Q?7/8Wq/EkAkU8n3/C65uxLOZTXgU+hhx2FLyPmnVdcQY1rA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?s2FkB3Nl3rJJzoSlfwa84r3PLnoveYscB3RvFVJL1ghjSE73OSCRM2YsNfox?=
 =?us-ascii?Q?rcQPkNiE4GduCflAMDkmaVPF1KlDgzi/sVfbaBBnTW3katMhW6zIExRadkA/?=
 =?us-ascii?Q?f0qNZwD8NDWvKEZckaISCD2RaA/fMG2Gn7v7zlVlS1thVjQyPttyffiRx4h0?=
 =?us-ascii?Q?VAhLW1l19PadlJIh43YoIRNapgKX/JmQxM78JdIMkHsT0KtNEMycTr54eQYd?=
 =?us-ascii?Q?U0XgnI0Zv+CQzdHFYyQ6IvYvovE87u7zIKqKQgVjXnWOiZx6c71j5KrMTLAh?=
 =?us-ascii?Q?gDb5arz7gu+R9gdZR3ICrYlugFvdEju4PyA6hXRswnDStLjGb0jQcGAtgauL?=
 =?us-ascii?Q?lCN4yBiiuBac+IFFvoEKto6LN5Pek7bP9OlIBmGJyERx0TqaOCtZzS6d8kOv?=
 =?us-ascii?Q?0A16vHFMAxyXO8/yhvBN+7PttaPglkVrpyekMWW3GQq00UXrq0AqqmbY+3Ju?=
 =?us-ascii?Q?VAPtm82I6BVT57RgxH35NSLZ3OKBjZs6UPx5B4ZTHDZAtZta7P2Z/N8oiX61?=
 =?us-ascii?Q?MKpU5S6EQygYcxOLUsICKw91+kyP1DnMgG/9SbEvGZUuJEy6NgWiDVqDiHlq?=
 =?us-ascii?Q?8FhB+CJHRAud9DnG+xnPXjn8kJjlQ81jFBK3a7NlcThXNyAgF7Ntkfnfs9uq?=
 =?us-ascii?Q?Zy/WazjbpwItdANdMgRVIyct7DvthxEx2ZONKu1pXqgcxRdJu4gFXYMrc4la?=
 =?us-ascii?Q?/z63PQN5gXQ4zkKLxwHqa8BmPlmZmnd9TvF+7FigVoA9OV1288bSoWj5/MuL?=
 =?us-ascii?Q?YMtDTUAbukJLuMo5g5Awt9Kadgf3Z9yB2CzJC7wdo5OCxXKOfaTiVNF1w3X5?=
 =?us-ascii?Q?xa8r9PL6XhvyypjPCZ/r+NK0pxjfYwr2qdXVs/CSwOM6z6R8P0aXryNndQLx?=
 =?us-ascii?Q?G+xKSFGr9Y3UH/Yx4lPqBx1GwUKKUMwmY3hb9i2V4aLQ4E3TOuhU1UE+M7hf?=
 =?us-ascii?Q?dP+hgz13Q6K7buGEBj0swhQJFeTjhaEJhw9EmJ++WntKZE5DBsfpd7XpXujH?=
 =?us-ascii?Q?JRjVbQk0jX+sDkDfYjadCMJz6DDm56TDym0djBWWt9vfwlkxikvtiY5PnyLL?=
 =?us-ascii?Q?c3ChDkSAO+AJbEchd+0fMUlmrFEs3Vh4rrbSguFbCZZ8Uz+avCOXGGBZ+T99?=
 =?us-ascii?Q?jHrQ2U+N5Y8BtU4TSNw7jsuOIu4Aam7mePH0iAPUkX2iF/t+6lEuuZARqhZ0?=
 =?us-ascii?Q?4CwlHynCwX7PquBDjVWAwsztMLfn1IGj75/0uJthw6e3Zat5cyRdwjPiYPjx?=
 =?us-ascii?Q?1Nv4VK6RPMmRC9qON+2yA/vje7YNwWCOwYAfos6vgzxpj9i9MW7ti7ObujnY?=
 =?us-ascii?Q?CasxZ+wrT+5kIgO2qKKqe7TlnNjitnHT6QklN2dABup861tnnQo1opx3EgZr?=
 =?us-ascii?Q?FaGpHocx+TLKkSieXH2n7zqzOQ+AFqS+1mcan3tfXehWcKCHIe/AGWM95PKC?=
 =?us-ascii?Q?zAcqyc7S9/kdUK7ATJktKMXKUveC3uLjmRsSQA4a3bOMZrM2Udv0pX46d3bM?=
 =?us-ascii?Q?fsu5B+IdAEON4jzQzotElZ6FesbpUS52BnOGENZPJRQ1ah6TWzIoWcWNR/T5?=
 =?us-ascii?Q?7jMeT4/LRfGOniG4QzmPu+mecMKRF94VvcAveeorYpB94KS4Ww0rYE1JFtxW?=
 =?us-ascii?Q?pg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	PcFX+30179ODfQTvijDCWGCRDCdfAqpqhfhq0QIXXjCfDhlnMcqymB4qdumDj/HxxrTaYf9KsYbkKAqlHR0xqo2htTMmHSps0CepEqy5ILDr7LKPoFJ4oKTEu4ALanGpShiI+mfMLsHzWXzfYkZUnuZ2l2frLaBAJENgs/FfUpNMCv5bTwG6Uo+GMOwcvDIOsSedspJnqC2/1Y7QNhDMZP2CgfcAdA7VJH0cgPczk40LhlHaKPtP+16ryh5XQZAArJvGfqOPOIFCQzLk8uBa76XDyA3lQL59IB0ugUsvPd9RzFw4zK93O0J53Gl77iMzoOM1xmZFWO932HFALkbTNs6a+j9lWpZPFmF4ec2dTK1YMo9JElFcoGmJTko+oHpfSZRTGLoLOT5I5qKSbEahNQz1xlWqzMz03zY1qp5qqffzbKZzxhwbwx9b9a+hDAr6Ws366KOBjmtI8Y2z+rriGnuSSvHNkMkEPUMu5hjbpfVsvhzTwzmX8XFR9SdhuYUST2qoZVGBMN6m4Is+L1xj2Qy7GpPve/D/yKtSbVLiflfWnO9UcJo8LZIEvIkva7b1GA/Qs93lWailgt5gk+woZH9a8f3EJMadN3YljzH2cac=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83fa679a-330f-4684-8508-08dd106fb41a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 12:16:50.6697
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Q6nayoToVPiNuqnLbYCC81XeGzUSWWxbdhVZ26JzXSrJO+GFCf02Vn43U6yLPc3kh9/S3JVhnbptucp0L/QRr0HZ8aSzSpEp0d0R5qCB8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR10MB7811
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-11-29_11,2024-11-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2411290100
X-Proofpoint-GUID: l367KPAla64l-Xldousm-1GHH7vO3zIp
X-Proofpoint-ORIG-GUID: l367KPAla64l-Xldousm-1GHH7vO3zIp

On Fri, Nov 29, 2024 at 01:14:08PM +0100, David Hildenbrand wrote:
> On 29.11.24 10:55, Lorenzo Stoakes wrote:
> > Since Linux 6.13 it has become possible to use all madvise flags when targeting
> > the calling process. Update the man page to reflect this change.
> >
> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
> > ---
> >   man/man2/process_madvise.2 | 5 ++++-
> >   1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/man/man2/process_madvise.2 b/man/man2/process_madvise.2
> > index b78a61553..d12407bdb 100644
> > --- a/man/man2/process_madvise.2
> > +++ b/man/man2/process_madvise.2
> > @@ -54,7 +54,7 @@ This value must be less than or equal to
> >   or accessible via the call
> >   .IR sysconf(_SC_IOV_MAX) ).
> >   .P
> > -The
> > +If manipulating another process, or prior to Linux 6.13, the
> >   .I advice
> >   argument is one of the following values:
> >   .TP
> > @@ -74,6 +74,9 @@ See
> >   See
> >   .BR madvise (2).
> >   .P
> > +Starting in Linux 6.13, when manipulating the calling process, any advice flag
> > +is permitted.
> > +.P
> >   The
> >   .I flags
> >   argument is reserved for future use; currently, this argument must be
>
> I was briefly concerned when reading the subject, then I realized here
> "calling process" :)

Haha yes, I did wonder how that would sound when I wrote it, but sort of
ran out of space in the subject and hoped the commit message would reduce
panic :P

>
> Reviewed-by: David Hildenbrand <david@redhat.com>

Thanks!

>
> --
> Cheers,
>
> David / dhildenb
>

