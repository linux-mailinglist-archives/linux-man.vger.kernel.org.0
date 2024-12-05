Return-Path: <linux-man+bounces-2111-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBC19E51A1
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 10:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E104F167048
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 09:46:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADD2E1D63CB;
	Thu,  5 Dec 2024 09:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="Y/3H55bs";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="YN60RRbg"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC86D1D5ACD
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 09:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733391984; cv=fail; b=grta/SrqHzesw0Z18AAGOLmch+AiowRYvFGBeFv4VbH/TaOraP8/I105STErGTU6Ckei64THj47jCs8mGkTH04DYR+83bF1lQT7uVWGAJGLoX/UvZYHD2Hivk+VZ76lYTbeSIgSwbxIRaAHdRn2cSObsIfu2eN8aFz/w3jRsxac=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733391984; c=relaxed/simple;
	bh=KBnUEuqSsWNXedww3q2oT0TCOuc7fWhWTeIQw98ucRc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=aJC9akOElFiLJFVJULXJ29e9ZgIL95a3dLjRVl2BfTlDa3eBCoNK3Aai6wZvykzjk5+LA7bsb3TAroZOsyPKKGxkznIbqQzSOpLRKPNrWoahOnwk10qMpkoP26u4B4Pl8Htyhao5PTIA+G2rYEOFSdu/Y6PTktLa+XBfuL5ga2Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=Y/3H55bs; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=YN60RRbg; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B57Mmlr027327;
	Thu, 5 Dec 2024 09:46:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=KBnUEuqSsWNXedww3q2oT0TCOuc7fWhWTeIQw98ucRc=; b=
	Y/3H55bs0f16Px8tpNh3eVXlsXBH1fxablmlVUIPda1irulslKBrpYZuLppdLWoC
	vpPpV14oIkdhOLTCeve6PvnPoLAyY1VVOsG0JdZzVd+po7HuAZT2Wb0pMiM1EvpI
	mOG+keKzXE8VAShcfzlLbFoHY5Wp9zM3YjMiDKjcNLV7BGwuzHF6QOyRxZf3M8qy
	wyCbMV8eagIzpZArva64f3OVQ9BzCzpWCLP8+iohnS5q2cicLXhDBJei2yBwj2mn
	gl0JQ9HCkvpIqM8fzkCyEbjNuYbWJM7uywt4vMw0KamGDwNOs+79YBBDnqJL5mGh
	nukwtw9BNgEMfDHB8hkQEQ==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437sg2ah2v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 09:46:08 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B581E35020257;
	Thu, 5 Dec 2024 09:46:08 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 437wjf8ejm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 09:46:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pFJScrKTfoC1IuqXfO183srtaVAriSSffUfyBcxozEvz8TvHaG6AGxjGzB6zDFxncfMBoo2Shs0K2Ab6fTuskwRbmWj99cX1qKEXmxsqRd5Noc2X4854vtH3CDToSlld32OkKDd0XWsJcBa0xoXmWiTIzRiOmrXIPEid6MC+ZLtgYGPRg4V/MUUt7Qbmu32gCQlLowxQxI2nyUTcd28qCBDQpi6AA4TZdyw1dBnRg4TKTbjibnICf31gVUct85hZ833ex6FhkEs9c3GChMBIMpl6rw1iEhYhKG23eYoK0L3IQ7ynh/0F9ISJllXAZlilZ4PRxH1qBl/t2vo88I4ndA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KBnUEuqSsWNXedww3q2oT0TCOuc7fWhWTeIQw98ucRc=;
 b=nYQqXi/1X0r7oeIp2AF2r3FuQEtVcEsLdTBxBMbJlvaPmyDoxgj9Dl7xhs+LCOZu8c+Po/KLDtgU/y49PhaOqIQnCdXRQvBYpL09hPX1GA+P6mSLmH5GF2zU31j+8fB4phjMBPni1vwY2c/3ciCxnC3FWeP7lE8mOvteRhM4y3+VBacb4zqJyBWzQguTlkFDsxwm8i176Mm6fR48m1LWRCv/+uhVU2GmpLeDww7qEnXY1KwiwbTSkU8jcufVsQjfbDWeCjmg9CqAGJ3nbSle4evqiHLmpFmRqBSpryg5KsSdqrA7BMUloYZcJ+pdINW5bFGJxvF5BdVY0d3nPxcaFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KBnUEuqSsWNXedww3q2oT0TCOuc7fWhWTeIQw98ucRc=;
 b=YN60RRbg3DxJlTai4LvxQt9nYVIK7auwY3VK8VCXyKVBfWv2/Yhx1BJ90m+6bVauiEQl0VLyAGtqEZLpkORTzfe3JDbWmdDJphhkj1BRBUFHL+UDqDOju/W1ymBx2RXLf73GnH0xfBz1Ydotqs/FXzGE83I0bxm9bknGLSpJjxk=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by PH0PR10MB5777.namprd10.prod.outlook.com (2603:10b6:510:128::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.20; Thu, 5 Dec
 2024 09:46:06 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 09:46:05 +0000
Date: Thu, 5 Dec 2024 09:46:02 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Jann Horn <jannh@google.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        linux-mm@kvack.org
Subject: Re: [PATCH man-pages v3] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <2b03b9a6-666b-496c-bcb2-efb153d13df3@lucifer.local>
References: <20241202165829.72121-1-lorenzo.stoakes@oracle.com>
 <CAG48ez2Djqj2_5fqn5nfXewyBHSBFUvEgHZ2Nin-FmYArkkXOQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAG48ez2Djqj2_5fqn5nfXewyBHSBFUvEgHZ2Nin-FmYArkkXOQ@mail.gmail.com>
X-ClientProxiedBy: LO2P265CA0481.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13a::6) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|PH0PR10MB5777:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e4f41cf-5046-4467-9f9e-08dd1511a37f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZXpXNnpid2JoRis3bEFhcVBUNWhNK0NpRjdFRnpyR3l0UHVlMVBBdnhpYUNV?=
 =?utf-8?B?TEl1eENuNEkyaS9NRDBnbzhVenFySkUvUVI4Umk1NEdtWWRTaTMxbXRxTWJQ?=
 =?utf-8?B?VW1MdkROanVmUWJZZUU1cmE4YlZFamxzakM1ak1XTXFFdVI5aVdzOWZxZXpr?=
 =?utf-8?B?V3JxT1FzVStoQjBMZHhUUW1WTVJOQ1psSisxWnVsdWMyQjhHRzhDZThmQmVt?=
 =?utf-8?B?ZTRQaEFoT0pGYmVqL2JUYldsTVhhdWcwYnpsL28reDM2RzZFYmVqaXlVZnlQ?=
 =?utf-8?B?MUhFRS9NYzRLWUdDbXk1OE05QWlwVjgyUjVkSW1oMWErelR2S0tFTXdMamJq?=
 =?utf-8?B?eVVaRUZ0anpKQ1R3MmowdjFWZWF0V1BPYkM5ZWJQNUZHNEM0YUg4YVAwaGVh?=
 =?utf-8?B?ekxSa21lZmNBdFZINERISW12bzRSNWczYThodkZNWncxYjZxMDE3ekJHTktk?=
 =?utf-8?B?QTYrZm0wTWtrUEg3VnlTQzBUVWplN3RFNGsvT3ZuTVlJYW04WTh4ZTlGYUVG?=
 =?utf-8?B?bWw5emlRY1VsZHR2WWhpcHRuZUFwWWNxdmVJd0NmUUc3d1gzeXNDM3Y0ZDlY?=
 =?utf-8?B?Tzdtd3ZCL2dEVlE4Q0VLSEMzczJMWUw5bVNjbjdTNkprVm1nOEsvZnd4UmFa?=
 =?utf-8?B?YUNYZTZldW1SOG1MU1hhdWZUWkhnNDVXV1ZpT2NPQWpWaVZKK0kzOW1rVnV3?=
 =?utf-8?B?K29IdXAveXZ6b1I0TGErQVkxcEdtR2dCWEExWjA3L1lJK05aWmlnNFpnVGdH?=
 =?utf-8?B?cm8yZWZ6YjFjeWM5UEZETkxZbnFOclV0V1N5WGtYanFHN0ZrL1pPYUlub1NP?=
 =?utf-8?B?UkxSYXFIOXZMT1NwbFVHWENUR1VNQnJwbWs1ZGI0aWJ4bmZocDduR2Vhc2RL?=
 =?utf-8?B?TDZ2K3R2NzU0am9YeUNuTUFBQ0dqRmpXQ1pjaXBUWEVCTEFlK2FiQ0Yvdm1P?=
 =?utf-8?B?bTA1R0h2WHRHRzUrTnZQSUV2WWxwZFN1TDdNdlFvMUlqOFZiT0pmUkx2eG05?=
 =?utf-8?B?T2xtTk1UcmhoaUxTV1FSaHhJKzBQUk9lay8zcjFVbkI3Vi95aTB3MDZpRWpy?=
 =?utf-8?B?TVEyOVNTNVY0SGxTTnBlVTVxMDlmWkx2akVRNHZnQ0Fkd1dkb3BZbDhIc2Jx?=
 =?utf-8?B?ckcyUm1tWmpaLzdwbmlRR2FRMUdYSGhpMHZRSlhFVHJ5cTFadHJZRk45RGw4?=
 =?utf-8?B?K1lYYjdMZDcxempNc2ZHenJtNXduWEtnV2JLcGlDSzJPWW1KVzltTVMrbnpx?=
 =?utf-8?B?WHp3Mi9jTG92MVJMRVA0a1BrZWdjTmQyVGlpSENOUGZkZ1NzMGJ6RnJ3d2xq?=
 =?utf-8?B?ck9Yd1ZIMHhvTExFTzlnWHkySWxPK3U2ZGhLWDB6RDRCaUdOSXhiN290TTA1?=
 =?utf-8?B?eEhmMTdOWmh0Sk8wWTZUdnJneEhZNnloQVZxa3RNbEZ0RWRZbzVrbmRlQ2RY?=
 =?utf-8?B?QUdHQUJpWFVhWkJSc2pzRThobzVSdlpyOEVCeHIxbk1jWDBRV2QraFNDaEgv?=
 =?utf-8?B?djZxcXQ3Y2wzakdaZHJlcUVBRnUzSnRraTZiQnFXTis5WGdtTXkzRWdWTjJo?=
 =?utf-8?B?UzlpMGtUTUluejhtK2FiZ2Q3MmpMcTkydFBmVVFQbmIxWnlCNFdYdWVSa0NS?=
 =?utf-8?B?Yy9DRjRBQ3hjWHNjcjUvWm1zVkhpeG9ZcGJRK0E2UHBmeFJhRk8xSUN6c25k?=
 =?utf-8?B?ZmdtdURGMnZyaERpeVpGWlFrZkk5K2JXZS9IVlBnbUp5aDRnNUE2ZHVJci9v?=
 =?utf-8?B?WEdNakJkUWJUMURSY1ZweVpxODNyOUUwVmk3bjZERlc0WUZJZUZhOVlsRDg1?=
 =?utf-8?B?VjFzcG9McU4zSmROc25hUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eWtCTzFkKy9xdmdnL00zbVBiV3NPUjJlcStzS3FFamhDT3FJd0ZVSEVJUTFZ?=
 =?utf-8?B?R0ZiYXRpN1RnVStna3BDaFNveC9yYU5FMlQ4UTNvQTNtVVVvRDdMTUwvUmht?=
 =?utf-8?B?cnNYcitNL3lyV054dWRzcDhUdlRwVS94Yy9QVnpTQ0VjcDhuRUpzUmo2aXEr?=
 =?utf-8?B?ODBXcTRGY0hwK3NrTXR0enA5L3NrcTFGRGhreURUYVJSNGV0SytJYXZFVGpt?=
 =?utf-8?B?NTYwdVk3aVNxQXo0aEhtbm9sbU0rM2E3VUlFZ3NxQVVUWXlwRmdTbDY5aVpO?=
 =?utf-8?B?V25ockxwemNSais2Q2doYkpvdUQwRUZoUGZHNzhsdk9MNFhRanhjM3Q1UHRI?=
 =?utf-8?B?R3h6VkNKU2pkajc2ZjA4aVZBdGJ6dVdPOVlxaTRXNmV6YktON292U0t6RXUv?=
 =?utf-8?B?T2pON1JpSEh3N0JHNklVcG85amdEYUtEYVVtK3A4T3phTE93NUdiTDdkV0dp?=
 =?utf-8?B?VHVqNEZGZ0FrRW9mMHBWSWNzZThmZ3c1N1pIa2pBMVN3RzRzUHF3cDJKbTIw?=
 =?utf-8?B?aGZPTy95SGFPQlRJVUNETVNsQnJ2QW1zem1penVQNW42RjFqb3NwUnVJRm1B?=
 =?utf-8?B?QnpYNmlzcnVwb2ZGcE9xY1c1RnNnK1pjRlhNQWozeGYrWFpvZ0l2SFI3MDRv?=
 =?utf-8?B?YWZjQkZqMlhNRkgyVjhodHNRZW4wYVcxN0Ywd25pRmNzSlJ5cS9QRTlQMkth?=
 =?utf-8?B?R3lqMmFsRytYUlRGa0JUUXdmbWdzaVByT2E0Q2hOSlBuWnpNTmtuS1VnRjJ3?=
 =?utf-8?B?cEVZSHQrRnRHeTRBUDF4M3hCcmduZy9CdVhMREh1UHR6YkxQYzloUFlxdStZ?=
 =?utf-8?B?RG1lU2c4M3VMSU9LK2I1NGlvWjM1eVk5dGRsMzlCU2syM1NsaDR3SW9rOW1l?=
 =?utf-8?B?NHByTTg5TjFCL0pJbW1GYktmOWEvU0lPMnU0MlUvWks4bFJFUXM0M2JwME5M?=
 =?utf-8?B?QytOWko5eGVCMkJtckduYW5LNXhFdUE2c0VxU0JCVlZzY3pUV0hFL0lNQ095?=
 =?utf-8?B?VE5lcTVrT2V2QnZOQXpRdXNoUUxubHJpRmZvejB4RXVYVURKbTY5RW9SclhB?=
 =?utf-8?B?SnRmZmlCbXZjZDBBUnRQVHdCRXIrKzV0MDdnSWdXK0Q2R1hUUEQza0ZxV3Er?=
 =?utf-8?B?c213SzVQb2FBdENsa1M1czBIQk1uSFkzc01VU0h0QUtHVjZWNWlzSXBLc3Br?=
 =?utf-8?B?TXR4WjUwUUcvTTU0eW5pUjdSNTBUcm1ocHhBK0daOW9wNVRYUWI1aC9FUVp1?=
 =?utf-8?B?UUJjOFpqSDMrOG5NaDdoUUdBeDZ6emhTbURFL2paREVJME9VZ1NaaGlraDVv?=
 =?utf-8?B?bGtHNzFzenB5aHN6NDIyZCtFTWRvYTNlNGVnSC9MUFg2ZGVTK05TdVcvQWZZ?=
 =?utf-8?B?cHp2aG1HTHMzSTR0U2pNNzFHc1F0dVdhTzF6OGthK1ErTGlTNnM2S3l6dzBS?=
 =?utf-8?B?NnVqelZ2WURxNWJtb2hCTnJtUnVBMlhud1dhbHBGR1dneDdaYWx2ZlFBOGhz?=
 =?utf-8?B?VTFNZ1J3c0RsbTJkb0pKU3NZVGNSYVdKMDN2OXlzYU92dFN0eFZwRDFUcWlH?=
 =?utf-8?B?TDBuYnRHZEU2c1RpWWtKQi9GMUhhWmpSaG5EVmRWYmxhQldoc3pjamJuanpF?=
 =?utf-8?B?d0xHeDEreFhhWUVDVHhxQ3ZOazZicU5ZOWhFbWl3aFZ0eHVYQkZDdGdybXpW?=
 =?utf-8?B?cW9LeTFpSWtrbFdBYVd4MmF1YkxRYjM0NWw5Y1U1QmJiRmx1RldLbVBadCti?=
 =?utf-8?B?YXhnNEJLcUlYZGJRV0JwRkNBSUhKc09qTXlETFB4ODVMUi9xVkxXZzBDblda?=
 =?utf-8?B?TW1sYnZqdlZSSU1sajVETVIxcUwrMmU5NHorYnU2ZUxvYmlYM1Q3cnVZdCtI?=
 =?utf-8?B?Q2pvMHNIbFlHQlIzRW5yUFlUVUlFTi9QQmRmdEZXQU1WY2hVNWJLK0lDTHdH?=
 =?utf-8?B?MEZ5WDFmVE0vSHdJQjg2TFl0NVc2ZU5USWdLVVlzamJyTFF4REFkazdnYTFZ?=
 =?utf-8?B?UCthbEhmazBvV2cvREU3Yzh5NjlZa1QvMDI4eTZITmtkS3AvN0JiS3c2bm9K?=
 =?utf-8?B?Nm4zaWNFZkJnMGUrdjI0WU02d3lqbzV1REE0dk5iSEMzVmh2QUhaSHJINFZV?=
 =?utf-8?B?Vks3YUFWckZkbUovSndpOCtzNld5blZ0a0JSaWNNR2tIM2VGdWJaL0lGVGVM?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	BtJvHW+wnvB22uZbek909X/QufMaC/Ov8SLHfXF/xoO6qNhwCUMH6hy4naWR9bChF207k+LkGucr1oU5gozVuBhynGJEPtLZO+7ocZOlg5XPubf68lNj17i5ELq3D7lQLw2trEVZ5AIwVx2CqodPlTnEb5bQNaetS7fbl8ZQW5L4Iog8Pub1gkgfnNy9l12avBQ6I0cIOIRiHh/qd3yx/YccJqBzwjHBwpUjk2/DI8Bjl/UPGjYfH6siBjdvheuE9P+pJPl+TzE+B8I6RuYNJtBOjo6/FDHvX8ApvHlGPqZRWxxM0o48bIQ52xQiH074rEXwJscKiryJcoemfBs9jOuWPl10AOMFKANyQkT1LWevtDrMKqfUbevk4XhYqA5YPVyKXfi/hxunksGIjIyFT4bzGpsLCohk8P0m4QwSwZN+E56YtKOGbmrqI2giD5cgaE1TXBuoE7Cxfxfb1zQtbZ3xyxtYp2B33vusrN3qW4QDRGsGKaEeoY4sn2fyjwkt+zrnu0Q3M7dtub8/dN/PEEfcE6poCzKSk0Tkcxl+HyH7EbCSgt5dbssPuP7rz+rpxH4DmWBaVPHKbqZtsEc4OB2bL6vhnwnrygVZjPN2pwI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e4f41cf-5046-4467-9f9e-08dd1511a37f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 09:46:05.9070
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IhjkeKX2sKImIoB2I5Xf/omIyJqf6XMAcMoHgAz5ZNk3cMWrEXw6M+jq/cUACpKqMfja6Pa9OTCRpC/n2ABPoSu6vGNt0jlZbzUOtBp015s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5777
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-05_08,2024-12-04_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 adultscore=0
 malwarescore=0 bulkscore=0 suspectscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2412050068
X-Proofpoint-ORIG-GUID: OzSop4j67UnqfA6rgGrB6SQmY-NmzECu
X-Proofpoint-GUID: OzSop4j67UnqfA6rgGrB6SQmY-NmzECu

On Wed, Dec 04, 2024 at 10:55:09PM +0100, Jann Horn wrote:
> On Mon, Dec 2, 2024 at 5:58 PM Lorenzo Stoakes
> <lorenzo.stoakes@oracle.com> wrote:
> > Lightweight guard region support has been added to Linux 6.13, which adds
> > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> > call. Therefore, update the manpage for madvise() and describe these
> > operations.
> >
> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
>
> Looks good to me. Thanks for adding nice manpage documentation for this feature!
>
> Reviewed-by: Jann Horn <jannh@google.com>

:) Thanks!

