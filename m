Return-Path: <linux-man+bounces-5418-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCMrBMys72lIDwEAu9opvQ
	(envelope-from <linux-man+bounces-5418-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 20:37:00 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 960F1478AF3
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 20:36:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEC32304C962
	for <lists+linux-man@lfdr.de>; Mon, 27 Apr 2026 18:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 253D63EC2D7;
	Mon, 27 Apr 2026 18:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b="l592UTsh"
X-Original-To: linux-man@vger.kernel.org
Received: from YT6PR01CU002.outbound.protection.outlook.com (mail-canadacentralazon11022076.outbound.protection.outlook.com [40.107.193.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4529E255E43;
	Mon, 27 Apr 2026 18:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.193.76
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777314931; cv=fail; b=POsTfvC3k7CO49WMZlCyUwaeA2qsLvitp8LKHEZOPPay8963TDlRZDrJaE15OH3TAwEhiS0rLa64MdvkaYM3Uy0tjbriLZZKxaq8lFypjmKof0+/X5lBHHkLokLx/pdLkcsvpj3zFealfX+DwpKT28VxhrI9w38xWjjfGIzSAn8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777314931; c=relaxed/simple;
	bh=oNqjQcN1LS43hug1BMB2LowGv71Rq/YUhNSAvR3rkgQ=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=JCtKk4EfF9/FbenrwMVOsGIWv/4GhAic4leWQoR0uF9LsOoVbk9howqWDrSqkzcODbWoKvFnbsmK/ZgWVca5l95qOEiltuHQnqZlNnMU2uLpbNFvwdqHb+giK5YRzoIhYrud8lyvf3dGXBZkGoaaes4eWFjCgQ/D/WOFhuH3hMU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com; spf=pass smtp.mailfrom=efficios.com; dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b=l592UTsh; arc=fail smtp.client-ip=40.107.193.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=efficios.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JzEy7iJ3khKeHhuy9XJokuZqq0RoyEEhOrHXI6TiH0kRjmr3Pwf/RgDrk49mTaGugPuUfJa254jJ3xtf0a9tBF7qXxPbxSABZRi1G2kQgUT0OidDmlZvVWAQxHFg1VaZxGK2j7xlJOsiMSusYeaowJBXl+kAvP3QsuN3I4KW2lE5ibdb6ctdm7iRUNtkDKQXdnmHxuemjKXEEss1WkGdfcYRP+VpFNWtyNBiWQN/sYXIcBlPmeP1uDHokm8Z7X8qwflnwAoSHfIbuTOD6y/Pqd7ayDFF++WIrUiPUJRmVhSDdPq2e10Xfn5EQrnZklVGJi3CiALK7rOfv+NEElklZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ly5gsQzW24HcWcrd9A5H/YLEt6HUPzxFH8mX07JWyAU=;
 b=CsegxrC/fsdgXvDqeEg+po69tRMRRdLIcj6jF/p/s+/oTcE15EvLOyVBlKz9OM3Jth+2npHlGGdZPhdu2NyQ3G+6GsQJj8apUutLugR919bEvaHu5XGsU2wOeWLNcx5+h32uVS+OA9VRk0FlyYjVjg9up7S84k3ERO7ocnc2sJ0wiJDn7Mr8+3ouxErwZ3E/Baqv/BkwZvRd2RAY8GCOmsQmm9r+F7RsYAOXwpEe7DLvG5Uq5y1i0pcpO00ksIo6nIBzokzunue3caXb2D28anR8lCMn4xcuJXnMVi9RM8JOKLL97+SJEWAPHhcdV7t8pIbfVTz2TYNBzMhCDQRv8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=efficios.com; dmarc=pass action=none header.from=efficios.com;
 dkim=pass header.d=efficios.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ly5gsQzW24HcWcrd9A5H/YLEt6HUPzxFH8mX07JWyAU=;
 b=l592UTsh1AhrDbPdFRjUWBasWmUlV6UZVxeDUDc85LtWv1kes3Va1V6c4GJdmhMdWEMoJnyazzXzZ/IcSmuKvQLc907rAb8xTg2TTwBpTxsbyEejpRHoGqLHEPX5dzgJArWCQkQL+UEUzHEYIfj5s2VLU7ohH9Hw9CCk32vyf9JvW4Gf+iNUim5vXuVgEK4ByxnneyNI1b/re/HLvJLXZNyqmRE/4s/op836cFIwfjyk3tJjTlzboX9DRuPpwLp+SRUjbuG+9/xr1SM+Wf/vmLNRRDupzXDEtfSVhsNDRZhq6FhTZ+gUME0eC+gBt5Q9OfhK8SQfNk1cEo55qHAbVw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=efficios.com;
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:be::5)
 by YT2PR01MB10418.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:dc::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Mon, 27 Apr
 2026 18:35:26 +0000
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6004:a862:d45d:90c1]) by YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6004:a862:d45d:90c1%3]) with mapi id 15.20.9846.025; Mon, 27 Apr 2026
 18:35:25 +0000
Message-ID: <7f8783a6-1a48-4c92-850c-d285a788b491@efficios.com>
Date: Mon, 27 Apr 2026 14:35:22 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
To: Florian Weimer <fweimer@redhat.com>, Thomas Gleixner <tglx@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Mathias Stearn <mathias@mongodb.com>, Dmitry Vyukov <dvyukov@google.com>,
 Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Boqun Feng <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>,
 Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, Blake Oler <blake.oler@mongodb.com>,
 Rich Felker <dalias@libc.org>, Matthew Wilcox <willy@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Torvalds <torvalds@linuxfoundation.org>, criu@lists.linux.dev,
 Michael Jeanson <mjeanson@efficios.com>
References: <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com>
 <87wlxy22x7.ffs@tglx> <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
 <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <87ik9i0xlj.ffs@tglx>
 <CAHnCjA0UBNXfjHw=Y34OrAyGRNUtVF+zWd3ugyX6pd_mCk8K9w@mail.gmail.com>
 <87a4ut1njh.ffs@tglx>
 <CACT4Y+bBD7uCHXKqGo=epBXeEmsZ67Og2YO9kjNMT3ryjUY_sA@mail.gmail.com>
 <CAHnCjA1LqbaUGkPe79EeP6Mpaki8QWeR-JBSbrG0z6pTm9CmUg@mail.gmail.com>
 <87v7dgzbo7.ffs@tglx>
 <20260424150318.GE641209@noisy.programming.kicks-ass.net>
 <87se8kywhb.ffs@tglx> <87jyttz8cf.ffs@tglx>
 <lhujyts4zr8.fsf@oldenburg.str.redhat.com>
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Language: en-US
In-Reply-To: <lhujyts4zr8.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YT4PR01CA0273.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:109::21) To YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:be::5)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: YT2PR01MB9175:EE_|YT2PR01MB10418:EE_
X-MS-Office365-Filtering-Correlation-Id: 40da9610-9bdd-449a-55c6-08dea48bbf52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|7416014|376014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	Z0hlTubLKMngRV5vUyLpo9gedW+NLJ9bHlVPzb+PuyJAQOY8zeAxIgQaFKE7ON2uIvhubszO4SoUY5iJbwCIP7Pv2Pyrc+8ZnkA/0XE3EyOfDz2gluWX5OZOSZEkYXDU2Gv2pdw4AeqnIlv9FfAynzYT46OyVXGDptBEuDa3VYGiBDpTR/3Bfh+XuxIyAWQpfl9ax3WFwgwSherzKsc+GOioSCnUZ1o/bB32lq6rJhkgtWnR0FWvUgiq0jmMiTtvubaNVDOMBZnU6ZkKd4KIBGFLcuaTEvdNr2kg8U8i12Z71ZDzqNVDo38ImR1WmSEztD1F9lqXr+9zGeibEdvT2MareFOqjLK9yOvbxdrvoEEkWOZcxlw0ZQjfmhOfpfCGW8Gkaqr7ZtnAhd6Xolik9WeuHE5gaNG+W7yFFqUOoAbhqwp+NK28vmZkg0gMaCiqfmUAbEigofmRS3abr+Aeno3Du2w3gHd5eLxvt+SSQqOL/2b2/zuUmrcKR0QWnoJfmwnLN5W81AqWGTNrq44GAsbNzCafhGgIbrEQO9RP/xfyg3NOLwxsnfplyJyN7ampDjP6mc/84GFNgKHiHoV4+8ItJ44BCj72VmOloyQOoEhebxkMPYivt6rIXM6RhCPKq01zG36rGC0VE6wXb5/COCrEO40Wlf2FFCObmddWM5EsWfqTPnb0nagycw35AjYr
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?aGF4MUx5cEg2WWN5MXhEWHBhcGJaNHprb0U1NmVacnovdCtUWHhKT0thb2NC?=
 =?utf-8?B?aHlUUkExQWdFZVhEQ2hpMURyWHliSTlKTlVFeVVwSG92MFJQYlJIRk5UTU9m?=
 =?utf-8?B?WS9nelZBek15TDl6TkthVmpWaU5oVTAva1pxR1crbEFIbVhFUmxXUHZMNUI3?=
 =?utf-8?B?c1pzck5vb2NPZWJadGN1VWRvQ0I1QzhhQ0tReDMyZHBlWnBkTllpUWIyenEz?=
 =?utf-8?B?NzVIeHNRcjRIVm1vZXU1S2pYSEJBZVhNdWg5OU01ZGhkV1F1L3ZzckpGWWpK?=
 =?utf-8?B?Ti9hczhIbXo4eml4czhZSGg0TWZ1Vm1ENDlhdlhkdWEvdXlPSDJCcGVMVjVQ?=
 =?utf-8?B?SkZ6U0ZzK0o5am0zbnFqTkpiS0ZjSzVvcW1rbDBYckdrcDB2dThibmxpbVRC?=
 =?utf-8?B?RnJyZGN5dUEvMWJ1dUlKMEZYbEtMbEtPMGE2aksxa0hSRUFqZkJ0dHoycFFo?=
 =?utf-8?B?QyswdW1pVU43U1hUcENpWi9tbzN6TnJDMjk0Y3NUOXQzTjJObkhHU2piWjRy?=
 =?utf-8?B?Z0hqR09kdWFXV3hlb01DMXJrNmNVdEY3YVZVeGlZTHFLUlRQY2dkN3lxcmp5?=
 =?utf-8?B?Q2ZVMWlHRnhuK0lHR3ZzU2FIRnhsWVZKVkdWZVFiV3JqVWNIYzArSnZKRjhx?=
 =?utf-8?B?MEdDaHowRTNYZjV3VXBza080T2lENno0ZGp5Tk1nditlTllmalNRdGhXcHJU?=
 =?utf-8?B?b0wwNTJxWGJVU0NPS3ZWQUpicllyRTRwdVlNZ2ZmUHFuVCsrYnYxcHVqNk9U?=
 =?utf-8?B?QWpuU1gyaERBOWFLVnJnRjAxdDRpeTNBOHQza285Z3lZeFR4cFNQYnZRcnRI?=
 =?utf-8?B?YXFjMnRLMHlqUUtJVG1IY2VDbUFVUUozNS9IbEgwaWVTUlpSbitHd0orOXBn?=
 =?utf-8?B?RTE5aXVTODFtdG05cmlTRWE5bERVWkVUMEtGSXl0YWRCZTN5RkJKdkFqSHBy?=
 =?utf-8?B?aTdRSFlHSi9XRUY5eFZWV1BBWXU0QjB4Y0VJM1ZoNk8xc2ZNUFZBeGx5eUd3?=
 =?utf-8?B?dlJmR3BwRlFNR1JtUGNxYTJST2NDOTFyVy9zaXNrL2NDNFpyemZzbE91MzAr?=
 =?utf-8?B?WjZ1RUxJZG9nYmtvQ0hUNFlIV0M2K2hnbUtiRVNQOHVVdWRiYmlHa1JuUUNC?=
 =?utf-8?B?bVpWMlFRL0F1RGdNSHh6akFVL2dOODRIalk1emdpQjVnRkoxaHRHb1lTZ1R0?=
 =?utf-8?B?YmJsWEJvSGlSejd1Y25vNHNWUHFHZm0xZVJaWkRTTnRIZ0x4TE1xT1p5bVlY?=
 =?utf-8?B?VW5OTHdWR2NXTTFBZmIvajRINjhSWDNOb1NkUEMyUitXRWxnMm8ycytGTk95?=
 =?utf-8?B?M1oyS1JyZVQ4R3J2eVZpUXkvOHBUa3RBd00vRlNPYUQySkovaFgxRitsNlhS?=
 =?utf-8?B?S3FWaGhjQU9RYVdIZUpkNEZKNWtMVjVXejZ3elh0dE1ubHJFMVJBcWl3d2Q2?=
 =?utf-8?B?WUd5SkIwRFBMZHQzRHVjMkVqbFZKWmdvM2h4Ym1ZNm9Gak8yMXRCaTZJQ29h?=
 =?utf-8?B?Y0QwdE43aXdqSDZ5L3kxWmR1SytBenl2UkFub1hicUNrOWFuVklGWTdyS1Np?=
 =?utf-8?B?ZFRFMlNkNVdhTE04NVZtNFRKR0xMQzZ6N0dwS0haYTRaeE9tNFk0VVRkUEo0?=
 =?utf-8?B?ZDA0UDVtUXpCdWx6a1M5Smt4L2Jtc2w2Y0Q1MVZrRHRMZU5VYkowUHQ5NGV0?=
 =?utf-8?B?bmdhdmpaQXU3dE5ybGhTS1lZeEkwTHdmV2ZrZDNXUzJRMS9Ea3JUTDVZQXhv?=
 =?utf-8?B?RzNkVlAycDVESE1mZkR0M1lHeCtHYjJveVNUL2ZjOGxwS3Z1RDMybktabjdV?=
 =?utf-8?B?V2FPMmlicXdRMVBFbVZGZ0thVm5Xbkh4djU2czAxQzYzR29ad28rbllGNHNs?=
 =?utf-8?B?dkR1TjRLNGRySUpYY3NDbDY0d3RGcXhiQnhDMmFkZGN4VnoxOFR4M01BR2Fq?=
 =?utf-8?B?LytOM1RhOUl1eWRUbldJSTEvL3NYYVFOcUJxWUdsbytVT2ZtNkN2TWJiMTYr?=
 =?utf-8?B?amYxUmN5aWY1OURuNGZPZDB0Z2JJYWtZczAyeTVsN3BRbEcrZTY0K3ZyYlhl?=
 =?utf-8?B?bHAwU1MrWkJ2VzUvZ3llWjZPcllpb0taUG02R0trckZnbTEyN2RtMm5DY1lW?=
 =?utf-8?B?REhPb3dibDliSG5acmdscEdJLzdOQXpaSVhLRW9zc0ZNN25veWN4enNrZXkw?=
 =?utf-8?B?aDZTUHFhellCMlFFOGYvVk5ic3owUFo4Y3NKUzJEZHUzVGZRcUNUenZsZUI4?=
 =?utf-8?B?WHpCcm0vbUsweCtkQzBicDNOelNRYnhBazZMMEJiZXVBTUJWeW1XVko4dm93?=
 =?utf-8?B?WThyeDI2ZWk4b3duZk5uYVdYcldwekgrTCt5N2tkWGs2TFhKbEtMQk9UeWZT?=
 =?utf-8?Q?LsrMq1/YvbWAnSq3Lo4ks5YNYeslNxErxC8E/?=
X-OriginatorOrg: efficios.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40da9610-9bdd-449a-55c6-08dea48bbf52
X-MS-Exchange-CrossTenant-AuthSource: YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 18:35:25.5061
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4f278736-4ab6-415c-957e-1f55336bd31e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ks1tL8lX4jXKyjgTsnvPscobwKDM0cisgZf1DBPAAZUDtT0xILFxh6GU5VqnHk4ITfffQYm8e24Pz9mJ//9GwBoooL7sI5VgVulcmQLLyCY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT2PR01MB10418
X-Rspamd-Queue-Id: 960F1478AF3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[efficios.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[efficios.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5418-lists,linux-man=lfdr.de];
	FREEMAIL_CC(0.00)[infradead.org,mongodb.com,google.com,huawei.com,vger.kernel.org,arm.com,kernel.org,gmail.com,lists.linux.dev,lists.infradead.org,libc.org,linuxfoundation.org,efficios.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.desnoyers@efficios.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[efficios.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,efficios.com:url,efficios.com:dkim,efficios.com:mid]

On 2026-04-27 03:40, Florian Weimer wrote:
> * Thomas Gleixner:
> 
>> The real question is how to differentiate between the legacy and the
>> optimized mode. I have two working variants to achieve that:
[...]
> 
> Switching to the new extensible RSEQ allocation code in older glibc
> builds is not entirely trivial, and I would prefer not doing that.
> Registering with a new flag is comparatively simple, and we could
> backport it, except that it might not be compatible with CRIU.
A third option would allow the entire range of older libc versions to
benefit from rseq optimizations, gating the "v2" behavior on:

   rseq_len > 32 || (flags & RSEQ_FLAG_V2)

As a result:

- restore compatibility with existing tcmalloc binaries.

- glibc 2.41+ would benefit from optimization without changes.

- glibc 2.35-2.40 would be able to easily backport minimal changes [*]
   to benefit from kernel optimizations (flags & RSEQ_FLAG_V2).
   Likewise for RHEL glibc 2.34 with backported rseq support.

[*] Minimal changes to allow older libc to use the optimized mode
     involve implementing a new query for getauxval(AT_RSEQ_V2),
     which would return nonzero when the kernel supports the v2
     flag, and when supported pass a new RSEQ_FLAG_V2 flag to rseq
     on registration.

That v2 behavior would:

A) Enforce the ABI contract:

    - RO fields corruption -> kill process,

    - System call within rseq critical section -> kill process,

B) Allow optimization of the rseq field updates (only update relevant
    fields on migration),

This entirely decouples the feature enablement concern (rseq_len) from
the strictness/optimization mode (v2).

This keeps compatibility with current tcmalloc binaries because
tcmalloc always registers a 32 bytes rseq_len without the v2
flag set. tcmalloc already has its own internal fields at fixed
offsets from the rseq structure which conflict with extended rseq
fields, so limiting the tcmalloc work-around behavior to
rseq_len == 32 seem to align well with the tcmalloc project
approach towards extensibility and ecosystem inter-compatibility.

Thoughts ?

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
https://www.efficios.com

