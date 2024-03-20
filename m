Return-Path: <linux-man+bounces-680-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D538881763
	for <lists+linux-man@lfdr.de>; Wed, 20 Mar 2024 19:40:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B117F1C20E0B
	for <lists+linux-man@lfdr.de>; Wed, 20 Mar 2024 18:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F5985288;
	Wed, 20 Mar 2024 18:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="gYv3pnA1"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264FC6A8A6
	for <linux-man@vger.kernel.org>; Wed, 20 Mar 2024 18:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.236.100
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710960041; cv=fail; b=UL6oVVwxaVmGO4K/9QLkLEyJbjf7bqZR+7RyUKuoHDnJgSrxPnThS3eMrTVtaSU7yT6lvOAqOYubf2UVXqijgUElPcPfIm73rV86yjbl9eU0mFlR+56gJWPLiLWAd1s4tP0woEsbs1l5DkjFNfU70y8Q4fJCo/E7wQjwRBU3+bE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710960041; c=relaxed/simple;
	bh=uJYbW7jq3Z7yGHtQJs8UgTzi7uTzM8FIT5HRGYazmuc=;
	h=Message-ID:Date:From:Subject:To:Cc:References:In-Reply-To:
	 Content-Type:MIME-Version; b=sDjG1k9CNDXjtVegnYN0Qa+fXvfrYluzGgeAHFrkklVvBqYyeRxEaLREK5LXM6aJp7P8b24zMPaj8LrxUqSXW9U+w82gbLVZMF7QKZ9+tiSOD8hAKO3kz5P6dsN6iD9SjDrV/oNJZ5dbijfEtjxtrYWCafmQE244jv+y9hEKRRc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=gYv3pnA1; arc=fail smtp.client-ip=40.107.236.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kelhQ4BjhD09zRtGRgkVQIQG2Mbx9SnPIIsv/hYjRiRNhi3zL93b2Wq5//WxgivFBqiI4Loj1y272RPhvMc3zK/L/JNaY0HL39gWDQcGjRNTflZn4m+TaO8hU1Ak+1JrX2sl82O+Asv4xPg55pjmG35E1whkhvK6knJE613YjMU3cXaU/WAq4l/EhUbWEKasa/t3lsrcDSqbXrYY/HUowlBE/ymPRLKV7YGsB0RDj8SK8YyKnwtz3znt3cLDWr4TV/LTbBmd05o9XSCU2N+7+H4EYhz7TT6ZPzcTeC9L/1pjLxtZQQFSkQt/r8pSK3hHA/kw4BR/7AcNrGWXWl4lWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t1BJAab7IErgMYTtXl8EBBwk/5KzIl7vYBa0CAwroVU=;
 b=DSzIbMPB/KI4L5O8Ta8z9qZk1BSuAMuKGmrGnUzThJ+mMiRwdrLEtFAzMb864e4oDxp3KMpB26bTIFcY35L2ejD81gSjmz6ZGXAj22rT63/y9ER83g/xC5lf4zwq24YLbexyXUkhgJqVMrVKRAygkSbMMNukSpWfd8XoQ3IzD5oKubE/3lxgzQpYYcjs7IHesQ1ZZnh2qwtSPv7UNRoW0xqNFQ+HpFP5/g0mmV23gDE0PY6Q3LDOPxxutGsJJImW5KUulCUyaGEYf06o9HfVpWiYjXGI2JqAo3Ryim74WN49d+i8J+2lrqYueoBB0o30f6USsm7NDIdVGyfxsNifPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t1BJAab7IErgMYTtXl8EBBwk/5KzIl7vYBa0CAwroVU=;
 b=gYv3pnA1JERV1Ex7uER6cz2IDQ3aMmwjtbA0fk5LYFbKbep7Zh9gOuv72vb3lfLcpi8tDjQtwaFIjT2HGFzjrVb+WSjnKglGkCzin6W8mWGpGpUj3/YGNNisfuUMPhLAs64L3JLpEr4j1sgZ8vmdwta2XQCe7z2QPV0lbD/EkRQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by DM6PR17MB4229.namprd17.prod.outlook.com (2603:10b6:5:295::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.31; Wed, 20 Mar
 2024 18:40:35 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.031; Wed, 20 Mar 2024
 18:40:35 +0000
Message-ID: <4803b837-73d3-4ac0-b00c-ad272eb092d6@memverge.com>
Date: Wed, 20 Mar 2024 11:40:31 -0700
User-Agent: Mozilla Thunderbird
From: Svetly Todorov <svetly.todorov@memverge.com>
Subject: Re: [PATCH v5] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
 ying.huang@intel.com
References: <20240318-weighted_interleave-v5-1-c821a46d5beb@memverge.com>
 <ZfomvYUh18tiZF3d@debian>
Content-Language: en-US
In-Reply-To: <ZfomvYUh18tiZF3d@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8PR07CA0026.namprd07.prod.outlook.com
 (2603:10b6:510:2cf::21) To IA0PR17MB6347.namprd17.prod.outlook.com
 (2603:10b6:208:435::22)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR17MB6347:EE_|DM6PR17MB4229:EE_
X-MS-Office365-Filtering-Correlation-Id: 9836d6c4-2af3-4c9a-2a07-08dc490d3ad3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	uR/VANWSCDFg7YuQ6wWLgzI32scW7qHkR0TAPB+0QqsA+5+rqI2y/5pFCPCeiEmelLxzm2R6z6J5V4ar2KfrPSQ8fORUYwsrU1uJUamqAz5X7mX03DSRtP+5/htmFxkZlIVAw10pynS3UrJqjWPs38awXjJMae3t282lrSjW/cOaQ295gPyF19E8qcsfHcgIdF3aefEY/eUnjuDjFj3OFDYWECKYru+iync/u8+B7yCrtlrEypzMl4dUP2DSfTb3l1f0KB/fsi8yqdiPIBLYgaLiWcazuqBKD/01/4CyYjJOJWmD8JJped0U8hivr/CAKZUy7RLGsxUqI7xHDXOUSzmWD+gT1cP8Ddtqn9WzhSPtjPSR3VZO16sJT/9i//+xVqa+LaPsrY22eNXZr9PyJPpNivjugg3aelL6xLJelsQefxjUJoPjpZwgpt9Lx04v7D84gKifSfMk1iGNiDVsBWf8cNOzmfW8AGYrwiv+8YkGYKkij7OJicWBzJkVq/8uIGt2P3KR5OlYPkrdScU8vdrhhE00bAov8tQBCdZP807aabbsISz7y9AJa05K633RC94nGCLxxloc6Fpd9+99esWvkXGnN0Ts6wTQG0uXmptia45I8NNyKDofyie544BOPUzITa7usU7LcHEdwn4LIou0VMBoSBiGVnKyB8T7tho=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cXNoQkZEa0RCOE5TbHloM3VyM3ByZkRuVjVnNUNydjNrR3plQXY0VkVVQkI3?=
 =?utf-8?B?T0UxMnJhdGRvYXFPSGhHSVptck1Kb2RVZnlmOEpsamlMbGdsRHlWWEJVZFo0?=
 =?utf-8?B?bWFYQVM5R1NQbVBWMGRidC9YYStwajB4Z013QmxRNXJjM0Z3NmdNM3d3NzZh?=
 =?utf-8?B?K2RwQUEzeFhEU1NVdkNQVjRDcHZmZlNESUt1RXZ4U0J4aWtacWFqQ2RsbDl0?=
 =?utf-8?B?ZDdkelJlTHI0QTVnVWRBQmtZU3JNZkZpMDRRMFpNR3BSeFVsNmVzUWxCdjRm?=
 =?utf-8?B?SmlBRWxEOVdaV1JIZGNHWDBDanVYanpIdW1TUHFCSVJKMXpNOXNHSExOWXps?=
 =?utf-8?B?VlA1c2p2ZVcvQ2VMdnU3SGlxVVlxQWNNVEdZOHprK1NSVWwwRGx4SFN1c2J4?=
 =?utf-8?B?ZU4xZE5Ld0ZqSm04aTZwbWdUVWxUS1NnTGRuZGdSTzMxS0xEYjYwN09ickVx?=
 =?utf-8?B?SjhiMDBZNjdWK0V0SlMzN0czNWRjQlhFb0tvVWQvR05vQWsvS3Q2R2hRUG5R?=
 =?utf-8?B?RUVabTY0Z09MU2hocXA3TjdrckpmczJ5bzR6T3pkS2h2bHBNd1AzdTdKTGFn?=
 =?utf-8?B?cHpjLzN0YTV4dXh4blgyck8rRDlsN1krM0UvWDBneTJoazBlVzdEUTgvMGFM?=
 =?utf-8?B?aGcrSWVJTlZvMWQxM3RsdnR6M2ljTlBNc01QTUovUlhMRHByVzEwcmtOQnk4?=
 =?utf-8?B?RGV4ZmoyVU1UUDNDODh5Wmw1bU5kUlFXcHNObWlnTFpISUhaVnlkalRoak5W?=
 =?utf-8?B?eWJPdHhZanMzUElhVGE0NllCK0c4c0hDV1FXeWVjb3FqVEJEOFJtKy9Sa0xO?=
 =?utf-8?B?YnVQeGNuVGFIeXNyZndxTzZSNDB3cXNPQ3p3ekp6VDNyWGx1TFJwbWhTU21L?=
 =?utf-8?B?dDRzcDk4eFR4RHpybGtLdldsY2RkeWFlWHRuTkVNamtndlE2anI0YUlDR3hD?=
 =?utf-8?B?Q1RDU1hSdVBYWVY4KzNBWW4rTTJyTFl3Uy8zTjRuc2p2bGpQMEdmanY2VWFy?=
 =?utf-8?B?eEJJS1MzZ3lFWG1WS3JDQmxreFlrNklMZG95RFY3UG1CS3ZaMmtDT05zZ1lY?=
 =?utf-8?B?bnV6RW1aNng0RmtBaFo0bmx4NGZZK3RYek9OYzdncnpCaUpTNko2b0VEc3Zx?=
 =?utf-8?B?WGlESkJXcVFUSkxBbVlOT1ZRaEhjR1crUFA2UUJQQ1RITzBUOU9ORWNMbjdF?=
 =?utf-8?B?WExRa29DMVFRbWZ0eHd3V2hYTTRScWNFWlZHUmlFTktocEk1OTFzNVRMcXhX?=
 =?utf-8?B?NmNvNTYyVVpXZ2h6NlhvQldGck5hQW55SHdRQXJjNHpPNjJzcTBUU0xXZUZL?=
 =?utf-8?B?VS9pWlA1dENSMnlSaUEveGc3L3g4QmxYdU5EYzd6anViNUIrYkM1eGZaVVZ6?=
 =?utf-8?B?SjhTcDZWa1p4Q1Y1NWFLazFoVTRIZDQrcFpVT1BvR3RyN0plZlowRU5nR2Rr?=
 =?utf-8?B?QzkvWG9DSFVBdEUrWDhCdTF3Z25nNFVDaVlNSDJBUHFBVkFOUGRMVXF6a1lr?=
 =?utf-8?B?N1JySzdKcDUxTlhIYktYNVhVTHRiOEV0NGF2bm9hTjlKQmkraEQydDg5MnE0?=
 =?utf-8?B?c055TEh3Yys3R0diUDFxZ1ZsbGlUWXhnVmg1MDdRSkl2Qng4bUI0OUJrekVR?=
 =?utf-8?B?M3FoNStDSFB5Ni9qY2lVSVFhZEYxakRTNUwwY0ZYVjA2bnNIbGhmY0k1SWpz?=
 =?utf-8?B?d2RkZ0JrSVNla1RTdjBuMDQveExNdWt6L2lvMmdHT3JuWHZWNzVVcFJRZkY5?=
 =?utf-8?B?OXZJV2hFUUtHWTNsWmY2U2FmRVVBK2JmUk1CbFlTVTc4VU1jbEVPWmlUT2kv?=
 =?utf-8?B?OGFOWmhlZUhlRWVyc0dOMHFIM2ZtU3VnTFk4RzZqOVFFWDM1VE5BRDNSdmlD?=
 =?utf-8?B?M0VqU0RQYTV3anQvclJOV2Q4UHdieUJXYlYrL1MvemVQQjE1bjVVc0kwVEdX?=
 =?utf-8?B?Wk1la3hKRGt0K0hFaFlURDV6RGEwZEtFQS9pZHZCUW1pUmRzSC9QTUFWcWMy?=
 =?utf-8?B?SzlIcndFb3hrUmt0VHJGeGNMcHBzMzJaTTFWRVNaSTBqQlZ4TDRPYmxLUjl5?=
 =?utf-8?B?am5qc2swRW5xYWVqNWVDTS96WDZSRXQzNklVQnNWSmU0Y2l1b3JUTWczVVYw?=
 =?utf-8?B?bTh3NStwbHpHcFRJekQ3Z0puMG5IcUhtVVhueHVjUDBDczEwRG45a095MEZx?=
 =?utf-8?B?V0tiekhKVkNhREJVUFlPdE8vaHV6WHRQZWpaK09lZXA2QnVnZE1YbG5nT1BB?=
 =?utf-8?B?bHliZ0VQZUoxbFV4cGJDaXdLam93PT0=?=
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9836d6c4-2af3-4c9a-2a07-08dc490d3ad3
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2024 18:40:35.1382
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: khxnvrRzBXXjV78dOLoejOkh97p9q/U/HLnajoe5NfL4G/OKNG+HX5N7gt6YC8tASkCxqj6TBiC/qdT+LZr8i+A6TIrf9mhsuDLmswoOIvY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR17MB4229


Hi Alex,
>> index 5248f04ba..00ce287c9 100644
>> --- a/man2/get_mempolicy.2
>> +++ b/man2/get_mempolicy.2
>> @@ -137,7 +137,11 @@ specifies
>>   but not
>>   .BR MPOL_F_ADDR ,
>>   and the thread's current policy is
>> -.BR MPOL_INTERLEAVE ,
>> +.B MPOL_INTERLEAVE
>> +or
>> +.B MPOL_WEIGHTED_INTERLEAVE
>> +(available since Linux 6.9),
> For consistency, I try to use the same phrase everywhere:
>
> 	(since Linux x.y)
>
> But, in simple mentions, we usually don't specify when a flag was added.
> That's already documented in the proper documentation of the flag.  So
> here, I'd just remove that (and the comment below).
Got it. This was one of those things I was unsure of.
I think I was referencing
 > If
 > .I flags
 > specifies
 > .B MPOL_F_MEMS_ALLOWED
 > (available since Linux 2.6.24)
from earlier in the file.
>> +.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
>>   then
>>   .BR get_mempolicy ()
>>   will return in the location pointed to by a non-NULL
>> @@ -206,7 +210,11 @@ specified
>>   but not
>>   .B MPOL_F_ADDR
>>   and the current thread policy is not
>> -.BR MPOL_INTERLEAVE .
>> +.B MPOL_INTERLEAVE
>> +or
> I prefer "nor".
Sure, will change to neither/nor.
>> +.B MPOL_WEIGHTED_INTERLEAVE
>> +(added in Linux 6.9).
> Same here.
I'll drop this one, too.
>> +.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
>>   Or,
>>   .I flags
>>   specified
>> diff --git a/man2/mbind.2 b/man2/mbind.2
>> index b0e961f9c..6f2449946 100644
>> --- a/man2/mbind.2
>> +++ b/man2/mbind.2
>> @@ -105,6 +105,7 @@ argument must specify one of
>>   .BR MPOL_DEFAULT ,
>>   .BR MPOL_BIND ,
>>   .BR MPOL_INTERLEAVE ,
>> +.BR MPOL_WEIGHTED_INTERLEAVE ,
>>   .BR MPOL_PREFERRED ,
>>   or
>>   .B MPOL_LOCAL
>> @@ -243,6 +244,23 @@ at least 1\ MB or bigger with a fairly uniform access pattern.
>>   Accesses to a single page of the area will still be limited to
>>   the memory bandwidth of a single node.
>>   .TP
>> +.BR MPOL_WEIGHTED_INTERLEAVE " (since Linux 6.9)"
>> +.\" commit fa3bea4e1f8202d787709b7e3654eb0a99aed758
> Here is where we usually document the kernel versions.  So here (and
> in set_mempolicy.2) is good, and enough, I think.
>
> Have a lovely night!
> Alex
Sounds good. Yeah, get_mempolicy was getting pretty crowded with the
extra parentheticals, and the hash comments felt out of place.
I'm glad we're OK to drop them outright.


Svetly

