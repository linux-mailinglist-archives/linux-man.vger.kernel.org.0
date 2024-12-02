Return-Path: <linux-man+bounces-2092-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 723F29E047B
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2024 15:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C7AFB3F98E
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2024 14:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A5CB203717;
	Mon,  2 Dec 2024 14:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="h2mV0ox8";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="L8McWajq"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BAD202F9E
	for <linux-man@vger.kernel.org>; Mon,  2 Dec 2024 14:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733148384; cv=fail; b=ejZ6LdMfD6rPSzGUNDdx38xoSKrv69Ux6YCxeRMCpPbbrVBT18kGk5chRJjfW8lbma8+DLSV9pshbQkqAMvsg2e8bwOss91DQ5aGg2i6kU18/+KfCQ0IMY7++Ues6hsFZ2UaVWdu0kTXXrIDa4Md3vC6zjc8srFXVlXf+nQ081k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733148384; c=relaxed/simple;
	bh=d745GZZqFNuKb+pLOrJ2srYl/3WtsWKTCdU45yw19uc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=aHvPInU7OvnYUgS2IL/85tbD9oIsVoE+yV++jgNovsYuC3UZ5+HjAf3hKA8v13BQ799zS7rXEfNfQjcSU9DZv0IZOjXrAT4p/bSS/ueZeK4rSUP92BakiSAjPlsQFiGAyHQOQT2XCZ+/rK239BKSJthvEPmy0T5v1+ckogQpXYc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=h2mV0ox8; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=L8McWajq; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B2DPOaB012852;
	Mon, 2 Dec 2024 14:06:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=d745GZZqFNuKb+pLOrJ2srYl/3WtsWKTCdU45yw19uc=; b=
	h2mV0ox8vN0Bs/K0s7H9fVDdjY6sWhdMOkxd9tEW+yj6Sfh8w28VUwbVP/6TBxjB
	uUe2ihoqejnDbMilQuG7YvpXRFEvwPvFB0l+MEn6zSraqJ1R3/82toSBubdCcf+e
	Kpy+48FLKBSHySDihFtrSnJWTEov9xWgZhIK6UhtIg+B5hZ+pREJ9fwG/YBpC8T2
	6LzQxNWE+Vlg172B4wdeOgY6DauMCYKHGOU/lEVt7u6rzW8u9M2EikEt+3odJUox
	HXCKykb4TdZEzTJzVDnTg1zjAZ6ikyIM3priWrX9UcRNP00oGABhtaaD8fg35yi1
	2FS7fRY1GiTw8jxQhoLgCA==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437s4c3bqj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 02 Dec 2024 14:06:05 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B2CxcCZ037167;
	Mon, 2 Dec 2024 14:06:04 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2047.outbound.protection.outlook.com [104.47.56.47])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 437s56xe73-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 02 Dec 2024 14:06:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oPXBWLqOSnKk6SFOZwS+SBGCzkgs04w81ypR3nmsEAfRRh/lxozTg1KNqyTk25mJzaDZYojWGF8W1CWcX9aLt40FP7vf+AJ6tZ8pDWT6P94XLpMpILK0AG+qI4L+lUQ3Vsv7iDe2+v+o/GeXgAcFRzK5lLMK3gUfKV56sRkfW1aIzqDfHJ5JbyGQPGijdWk6tNLW/lbC0TfQ53kXsGcUMzOtZfVXWSioFUv9r/yRUDBvKM8Yvp4rz6aVtS84AFjAii8SbMBdF/4ZFrzST93MEZO22Gl0AJSMgU5usvKAZ7BqJc2PYvOvVXmXRGjnASbM2cArPCbJJ63ZjdknzMws9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d745GZZqFNuKb+pLOrJ2srYl/3WtsWKTCdU45yw19uc=;
 b=PmnCn+DDg66A4J31t4YccmK0qyg7YbSG1x7tm4eXwfq0TqKAf/bhuxxrhxTF6ahDQjzNmo2RTfs0+a7AkII3mEUvDWEPMJtPZV511DZaLkkdYwUWPjWJT3/7j2OW3FPJbXZ48JSfSbJje8gMY21ERvtg9oeHsvrkh4Ui8t0rU1FxhRQGi4VCNrVYle/CAGuOkF3bhXgTRZGgrvIFhcWMw0Q2LeVGiCLBlDM1V5Vc/c2oUZf/NCSWNJBkozwTlvVY45ZGT8OXFJinUeH1cSvi+uBp9tbTAEjy2v0R4/eyFA51k5UsUULdeBV9Yn5iMUjPZpBb3CCK2OLuEZDEFJuMmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d745GZZqFNuKb+pLOrJ2srYl/3WtsWKTCdU45yw19uc=;
 b=L8McWajqbiONJc4rRpBg1tetQjBjMxWg4HQpDtNsUnALDOH83hVmWLobaMPscuNUJraRQIejyodmHwiUXZORJOFaTmY3jfeBGVD21VOWQxV0Zx5gnkfETK0xkSaYKnK5fKa+62cM3jw21PrA4YADsFAdRBA/BAXZEch153skqAk=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by PH8PR10MB6552.namprd10.prod.outlook.com (2603:10b6:510:224::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Mon, 2 Dec
 2024 14:05:57 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8207.017; Mon, 2 Dec 2024
 14:05:57 +0000
Date: Mon, 2 Dec 2024 14:05:54 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Jann Horn <jannh@google.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        linux-mm@kvack.org
Subject: Re: [PATCH man-pages v2] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <7a4bf410-09b7-4d88-bd4e-aaae5282cb37@lucifer.local>
References: <20241129155943.85215-1-lorenzo.stoakes@oracle.com>
 <CAG48ez308HQ1XOKtZM7pDVq8tG5LSnD-7jSx9NF79CpALwPD5g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAG48ez308HQ1XOKtZM7pDVq8tG5LSnD-7jSx9NF79CpALwPD5g@mail.gmail.com>
X-ClientProxiedBy: LO2P123CA0059.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1::23) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|PH8PR10MB6552:EE_
X-MS-Office365-Filtering-Correlation-Id: 868068c4-b045-4f25-9069-08dd12da71a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Z2dtcmN3aC9JRmRZR2UyMkhYbHlGNS8wMExQSmV1NnVMWTFzUitTblg4eEJz?=
 =?utf-8?B?REk5bU5IejV4UHFBTmJpRXJPRCsvK3l2RHdCdGFqT1BrZzRkQ0greUczc3hz?=
 =?utf-8?B?OERMVTJkWVFnQzVVd1pySDVIanZXZHdtd0g0SWh5VWIxcEltb2dsL0lPdlRB?=
 =?utf-8?B?OEJHWjM2RU5FcmtlVFdPeDZCNVlIanJtY2hLVkdGQ21EelVrU3djTkV4SzI2?=
 =?utf-8?B?c3lVUnh6UlU1U2dWZFAralNXYWtRU1VoRUdkZUo5K0RRenpUUnNyZXVyUGdI?=
 =?utf-8?B?TzlPL2U0NEpnaFJNT1RlcXNlTGhHOGNYcVJuN3VFKzlIWDVNbG9KWkJlbEdp?=
 =?utf-8?B?UWluMEVKWkJLM05iZTlUeDhvVzhPY1o1ZTY0ZnJRN2tvZHQ2SWR4WGJrQVB2?=
 =?utf-8?B?bCtJUzMzWHFOdmtsaVAzRWdwUXYwUUhXNXZFZWRTSHY5THFmbmtDYTBHVnY1?=
 =?utf-8?B?cEpKWjRhSlRDRXhRUWNMMW91cjQyWW1lRS9rVWFPUTJKNDJ3Rkh5bmhmYStT?=
 =?utf-8?B?ZGw4OUxocCttNlhTdUR0T3BXbXVkU3NtME9ldjhpckpSbUZ1Zm1lM0tIT3Jr?=
 =?utf-8?B?RWI0Zmp3dnRUNktRZkxGekFSczlJSm50cU9BSDRYN3Q5S1JBNnA1azh0MW5H?=
 =?utf-8?B?S0c0S2dCUkJWNWl5TGRvaE1NcGhSNmZQNldJdmZhZldFajB1Tk1UNHR6T0Ix?=
 =?utf-8?B?eUtZY1AyRXJ1RWc1dnN0YloraFhsdXNyZTRYaUF4a0xnNWdLNnQ1NEYxck5y?=
 =?utf-8?B?L2VmNHJOd2Z2WUxaVlhVZ1Npcnd3bnBzUFB0VW1SNW1DcHJhZm1xb25MSnB4?=
 =?utf-8?B?dVhkWGdaWHcvS3NzL2VlTktTUUlXc1lEbnB1ZHB3RmtmRDkzU2FFUC9ROFA0?=
 =?utf-8?B?Vkpvc2pZcHgwMDhPNjR2dnVXMjNuMVNFUWVLSjVhRFVUa2lyK2RhQkpXR2Nw?=
 =?utf-8?B?VFY5SFhEaU8vdHBUNjNHZUE4Mnd3aEtoTis3amhDMmNvejVtWnFqTUNQbFB6?=
 =?utf-8?B?OEtIZCtXZUNWRWQzT3pYUWhXNnBTd0t3T1FGQVNGSmxzN09HSlI4WFQwNUdx?=
 =?utf-8?B?RU4xRVN5ZFdXaFZSeTNJREdLYUZ2MVdRRkh3Vys5ZE1ReFFEbHQ1U011Q2Er?=
 =?utf-8?B?V2dHRndWU0lBMFFyNWhYNm9XSUJFaDEyY3BRQkxPMUdESDdvOFJuRVQrU3Bj?=
 =?utf-8?B?dHErOW9wVEc3Z3VvWHQ3aWIzSFdhZTNEcDN6T0tKT0J6V1FUeEFRRUNlL2lv?=
 =?utf-8?B?NWJlRWtBT3lhNVZ2UVJFcDdYaTQ2NW9YTDJWdnZFNWdLZzA3MWp5STdQbXQ4?=
 =?utf-8?B?OGFTR2dDcDZJYjV0M2ZnS0FFT2dvR1IyamRPT2ZoM2djQmQ0Rmk5WktXcHhB?=
 =?utf-8?B?T2JKSXRyWWh3UnpRMlJSbEpRRWk0Z0tPQTRodTZYRk9XcklIbFV4czhwNGJK?=
 =?utf-8?B?MHlXNUtWNnZtcnFDMmR6S1hheXdRcTg0NGhka2NYdzVST0w5ZDA1QUtOMHZy?=
 =?utf-8?B?K0g1VTM2R2tNY0RVT3NzcURtbjBUM0NUeWtIY2wzR0l1Zm5JL2o0N2N1NURT?=
 =?utf-8?B?ZXdhSzVQSlpCekp1REVrYjdNcUs0N25rRWlzS1RVSlpkR1hnTVdhODdKaE9Z?=
 =?utf-8?B?MnZoNUJRWVRQZUhMWFpjZEt1NzA3VGluOHU3V3lXWFlFaitXSkFuZ1VhK253?=
 =?utf-8?B?U2xkWGcwVm93WlBZMWRRWGNmUFo5TU44VFU1Y09HVG54cGxYQTl1MUVTMGFx?=
 =?utf-8?B?b2xiSGVNbUx4bVV5N29EejlJNUZEdnE3YktrSFAwdzRacWY5L0dndHFJZkRJ?=
 =?utf-8?B?VWFHbHIzV1hSV3dZaW50UT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZzI1ZzRBL0JLVWN0SUJlNkhqbzV0UlIveDBxUGFGS3FUY0FsSWpGWG9odG9E?=
 =?utf-8?B?eGxkVE9ScDhZTXg0SUtZZVdSS0xISjAvODJLK2UxZ1JUcjArdVVoV1U0MGFJ?=
 =?utf-8?B?cnE4K2kxbmEya1hid0tXRmRnUlhYMXcxM05maW01TG0vc0kzQ2w0cFFtQi9V?=
 =?utf-8?B?RTkxTzhFcXZ1Q3dsQ1A1a1IvRFFRL1JCM25JUnNlZHBSSk9EUjltYy9rajRi?=
 =?utf-8?B?MGd5K2N3TTZES0ZUR1VBS2tvdUd3N3h0bkdPY09YRXNEckhCR0hpTU5CUDRp?=
 =?utf-8?B?SVV0eHVPZmFVMFRBWm5yT0ZUeTg5SlhrNU9HUWp1bHErWVI3dFhwRTdIVGFW?=
 =?utf-8?B?M1Rjclp1MDJOTzZpOVJFaVhweGRvR29ibnBySjcxWGxDODRVb2xqa0tlRkt6?=
 =?utf-8?B?aXp5UHZPWEdTQlhjYnlhQjdHK2RsUTJJWjR4bzlYaEdVcTEwbGJSd01IcWw3?=
 =?utf-8?B?MHdCZ044T0FFV013eCtpS1FSUUNtVTNEVVoydUpXT09IVFRnMjgxZ0hyNHNk?=
 =?utf-8?B?NlhVbXBReFptdytOdEw2SWFSYTNlcStrR3VoanRZck4vVXo5R2sxT2pQYTRZ?=
 =?utf-8?B?VVBJUzBxZzhkcUVTU0gwZHNlUkxBN1BvRTR3REkvV3h0enV1a0gvaUF1QXRL?=
 =?utf-8?B?TnMrODhMWEJmUTFaY2RpUGhDMmpqNlNNSVRjeUxkcitncGhKZUUrcVQyWGgw?=
 =?utf-8?B?M3pXUHhIckdIUzNrZEp3YlJLOE9XVWV6Skl6SW00VzJKNzduWXhuUFlBU0py?=
 =?utf-8?B?Y3E1cUc1NUt4LzVsMkZGT3NmSkNxN05xekcrZXJ3YitHVGgzc2xUOVZIejVG?=
 =?utf-8?B?bWkyK0hqSm9mSW92NjJhQm9OeFpwOWthOWZhdXNaRFQrYUtYaVNRbG1IQzZE?=
 =?utf-8?B?cDFyVEsweUpzUFVvYnkyeC9HQW5wZjlnVmZWcDE1RG5LbXdxUG5Qb2pNUFZI?=
 =?utf-8?B?UllocE1NNmJ5aTMvN0k2WHpjdTVJdmw5MHRNOVRoRTB3UXFaVFBnQ21TUW4x?=
 =?utf-8?B?Y0pxbDZGOEFGSTNiSlhKYzZaQmhtcG1QR1crZFZjeUVtK09iNTEwakxOTHg2?=
 =?utf-8?B?R05qbGZ0L05oaENYRnR3T2NWOTU4TW1DdDJ1U2wxWXkrOGNZTHJQU0pVd29Y?=
 =?utf-8?B?S0N0ckUxTHA0bzJoOFMrZXhuUTBwVm1ReGlPYkVzRVBQVEtDN3RIazNCblc1?=
 =?utf-8?B?Y1oxTFdKdnQ1ZVQybTNoRUdwZ2drT0licXBKRFZnd0dOWndGK1RiVUZwUWFi?=
 =?utf-8?B?V0JqdzBrWWd2VXAxcFVVYjlBMGkySVVQZEtqdk80UjJlNjBBamEyQTQzWUoz?=
 =?utf-8?B?RGdxTG1SeisyVEM4bVJVMjJOdkZvZUtlN2tvRWtTSityQW9aNXlNbXdCMnkv?=
 =?utf-8?B?R1ZRYm9KZ1U2OTJuV0IvZDZZU1M5TGZITm5xMW1SVVo1VWw5c1ZqRG9DRFVo?=
 =?utf-8?B?WkJCL01RQnAvK29RQXg1MWlZTmRiNjkzVHZEY01XY0p5R2cyMFhkUGZkcGF4?=
 =?utf-8?B?RlNNREhVNG9QK3dqbXdQN2ZpV0x3MmdhNXlDTjFCQ2F6K3V4Y285a1k3MHFV?=
 =?utf-8?B?aGxYOUVBOGlpQU85ZGJCTXJiSlRFb1FaQ2FMT1lXcGFhaldCQWVhUHBYNWh5?=
 =?utf-8?B?ZXJVNWQzcnJ3S0lINUdhWHpNZitOcXdRTjNMK2xVZHg1ZXNUZm5FTWphMVpI?=
 =?utf-8?B?MnYycXBaNjg5ODlUb24wMFNDSVljcnozNFI1RWxIT2hiTjlWUmQ5MkZlUmow?=
 =?utf-8?B?U0dyU2FsTHNWR0hrOStrUklGOWxMWVlUZGR3SDVrTGwyVmhMZjA4a1JWcE5K?=
 =?utf-8?B?TXlJc2VreEhiU2lLdEdTTFhjM2dML09qejRMWFI4cFFFd3VXMzgxZjBqeFp3?=
 =?utf-8?B?aW1oRGxwWXFQSVpxTXZRSXk4Z2tQcnRlQkgrQm56Rml6K2YrU1FjQXg3Z1l1?=
 =?utf-8?B?NGxjL3VJZTg4Q3lHT0ZZZC9MQlNwdklOb1RlaDJpN2F5NnpZWldLTWtQS2Zz?=
 =?utf-8?B?RWxxaWVlRnJ1NzNGOVlaMktiOVZLYzlNRFZ2WnpoNEM3SkZ3R2tBUVJkclQ1?=
 =?utf-8?B?MDUzNEtRTkVqY0gzOW9aZlBnZHppWG1zeUNUYTY5bkV3L3ZiZmpzdWJOdU1K?=
 =?utf-8?B?bDdSeVJoVFU5aHRsU1NaTnlSdnY4WW5jemVqMGYwWEFYTEFxaitIeDBHMjNI?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	u67Zf8ZkAZ2J5yvM+jKknFTPfzuUus70aroF7gFx2xDk6r4N0GEv3LA9dJUZqOILCRRdWkjlndvOjwsslpfi1tYhFauZkmBQdzaDBqCPkOvnpiX9pYP3kW+w5ph3hjwlFAByV88u1J/GwKpZXo79EFXjXYF0BxNPJGxqdyhNLoblOWQl4b3V+pgRvxReVSaCIw5Jhaj9dAs1775r6y3mdWi71S/QD+KnVqDH2DGQLgWsypXflsx+2QvTlHS1Li1QETPsEcp3nXm/a0kTJsKa/+1U7XFgPbD1hUHSD3silY7afiey71IxTJxXQLKlCQfnT2a/XrYJ6aQuFxNGDl30Jfv31rrR2wTOCQAbBcfYRTnSxRpyWbiYioYxpqpmMqYztA7sWw19/kThE3OP3sM55JeSO4DPEOsMaKEIWoCQCjgFu3of83hZYMNmAgdfQgoYRHIpcWn/GOyemPgdPtKzxypazWxbCdGUHhK1613zDuAwtY5eybETjl+lFH3kvR5j46HPG3zzRnDls98tQLkUgPW6jprD6abYDcaCXSv21RCKRmEYu5UYPBa+S0yhFALUdNFP40vH0kc4sbLeGSUZJ2sVUYURvpg4Lx5/2c7tZXE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 868068c4-b045-4f25-9069-08dd12da71a1
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2024 14:05:57.7184
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jub7B/HGv1hDZIde0hTOLB/rksc6K8qmHsXD177jk/Hozgrv1q2BxDvZWAp5GJDEtQ3Ov/EqMt0LnORCIAzGVp7ksbJ/gcBAf4uHWpqsKsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6552
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-02_09,2024-12-02_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 spamscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2412020122
X-Proofpoint-ORIG-GUID: CsCR55z-KCyu3xbfGJxhRNG_Aqy6dcVQ
X-Proofpoint-GUID: CsCR55z-KCyu3xbfGJxhRNG_Aqy6dcVQ

On Fri, Nov 29, 2024 at 07:13:22PM +0100, Jann Horn wrote:
> On Fri, Nov 29, 2024 at 4:59 PM Lorenzo Stoakes
> <lorenzo.stoakes@oracle.com> wrote:
> > Lightweight guard region support has been added to Linux 6.13, which adds
> > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> > call. Therefore, update the manpage for madvise() and describe these
> > operations.
> [...]
> > +.TP
> > +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> > +Install a lightweight guard region into the range specified by
> > +.I addr
> > +and
> > +.IR size ,
> > +causing any read or write in the range to result in a fatal
> > +.B SIGSEGV
> > +signal being raised.
>
> Single-word nitpick: Maybe remove the word "fatal"?
>
> I think the term "fatal signal" normally refers to a signal that is
> guaranteed to terminate the task (that's how the signal handling code
> uses the term, more or less); but a SIGSEGV caused by VM_FAULT_SIGSEGV
> can AFAIK be handled by a userspace signal handler.
>
> SIGKILL is the one signal that is always fatal; the kernel can also
> send other signals in an always-fatal way, like with force_fatal_sig()
> or force_exit_sig(), but those are not used for VM_FAULT_SIGSEGV.
> (Those functions are mostly for cases where we can't continue because
> something is in an unsafe state, like if a signal return failed and
> the register state might now be messed up.)

I think there's a bit of a disconnect between the meaning of a fatal signal
in userland and the kernel, from the kerne's perspective as per
fatal_signal_pending(), it is, as you say, SIGKILL.

From a user's persepctive, and as per sig_fatal(), it is one that is, by
default, fatal if not handled.

So I think here it's fine to say 'fatal' in the latter sense, and the fact
we immediately mention SIGSEGV clarifies in what sense we mean 'fatal'.

The intent here also is that a user would treat this as a fatal event, a
thread that accesses a guard area is accessing memory that it shouldn't.

However I also see it from your perspective, I mean we say what signal
we're sending so it's not hugely necessary and eliminates a possible
confusion.

Not sure if Alejandro has any objection to this turn of phrase?

From my perspective I don't think it's too problematic to leave it in, but
if it's easy for Alejandro to pull out I have no objection.

If people feel strongly + Alejandro would find it easier, I could just send
a v3 with it removed.

Thanks, Lorenzo

