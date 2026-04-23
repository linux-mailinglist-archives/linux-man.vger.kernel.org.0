Return-Path: <linux-man+bounces-5389-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMbfNpMW6mlHtwIAu9opvQ
	(envelope-from <linux-man+bounces-5389-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:54:43 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0274525C2
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:54:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ABC04301116C
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 449A33EBF04;
	Thu, 23 Apr 2026 12:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b="NT85ltPW"
X-Original-To: linux-man@vger.kernel.org
Received: from YT6PR01CU002.outbound.protection.outlook.com (mail-canadacentralazon11022090.outbound.protection.outlook.com [40.107.193.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68F43E6DC3;
	Thu, 23 Apr 2026 12:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.193.90
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776948877; cv=fail; b=s1rgvwTwt4lv1bcTj2BgVd0RnxnGIU9aWk084+KSXiVbbQl+3BkdbbU6YQMVykhqhgFu+50lK/d1MCYrVkiyWy0U8xidt6hZxb13nhgRilM9Xi2NSNZx90eAlTg4DK0kmm3KWCcvxlaqE2N6APMLmQZwuc1WhK1NarJoUYKNrJE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776948877; c=relaxed/simple;
	bh=hH3oRhC8FkeG+NvDvv8RH+UAP4ez8+fG3h4arvVAZlY=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=gn/6zokXc5nHFsLZ7yY4uvBCp49tkTF59W2/p1LMzPfksVKEggbH3j3vkvBsi0xXxz6byIZtl51aq5mwGtSniIa70Gr1ycyJUJTkxpPaWkXkjFvM7+fX6PQpSjWKgCeRY+nUjsSKe+UOH2MnrB7m90OYDokNYX3h+2vlRthkI2I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com; spf=pass smtp.mailfrom=efficios.com; dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b=NT85ltPW; arc=fail smtp.client-ip=40.107.193.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=efficios.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PN65yyacWuwpYAv2Q41s+rUEiWcz7b4F+mRfpGFDgKAAdY1BHImqUYcyOetB0yi7cwdimqRpJlYUtjSxD/RTYzRJM9I+6LWHmi9KgNNeUPLC+w0i0Ofu1bPcpIGyqBiTfCs340ix8ScN6PRMlccd2rLotqmErzvpdyXMwWT97XivKEhWM0jTPbkvLR4TxJSjgApu/0i2FUSDK2RfoV1md4ycR8ZlaUwNdZSolAVjBM83CYUreiBI27jpuauvXQuMgU3X3zmDCxzUc3qSyVoFdO6j7jKclV32gy7SJKmWeDj5sb6MVoN7OuIM8UFKwqk/DgUE+ENUOX6hh6bczUv0aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dS0kL32TYfjaadqJwiR4tU7C0zcO74nzbLhP/+ybDwc=;
 b=SL7O/qL6/DjE7WZyOfp82lUa9yNqkhUoLWj0bwzEatfd8tv+/Oj7/B68UYtl811s2m78tokd4JZP45PJXFHs9sIllXqZuMngVI1MfNgDEfVo1PYulfCcnKQiLJ5ddTDX5ytcVeRKTrbGcEx+pROWD3avsqLrrfl3RpR7iNJBQJhNGQRdvaNZZV9MX3t2ZUyildaoDQKlY5aFd/jNCwkQIJqmv0tRDww/LtjinjpQaOhwOBw7a/jok8LEEqw+RC0GEd2KrcvKdVCEFA0tYQkUeH+oATlGGFvTVPFRu9wGM0X+IkAKntnxj89uEv4pR8/NLEEYh7qTa916WylYGnMP1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=efficios.com; dmarc=pass action=none header.from=efficios.com;
 dkim=pass header.d=efficios.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dS0kL32TYfjaadqJwiR4tU7C0zcO74nzbLhP/+ybDwc=;
 b=NT85ltPWbIcSxDkQCNSCgULgH0q4DE6U4jTUG7PJfC/MTc3X6KW7DkuLJCChJvd074uDaumGW7wUQguHqJGPmNYYughOX6J6UbO/isanw21jipqzLnYJrGOFJJCOcEE96F4FbCj0yJVDoxpMKIxPI8dUIGH2FMj0zzH2adj8g7+BmsZb164zLd7vIlsTr/AO1TMZXh0e9xQ+QQE4ppiP69XjT67UiDelkfyRFp+pwhBIbFpJR7LjnsiWSV9PwEmiJkxEqoPV8Mh8VCgO61+k8+zTV6FdnDVdJ8t94atgoBZa3N/NyRh9mdbx96ih/m5sV91I0NhSr5C8TNA6+SQhsA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=efficios.com;
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:be::5)
 by YT1PPF07516E2ED.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b08::506) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Thu, 23 Apr
 2026 12:54:33 +0000
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6004:a862:d45d:90c1]) by YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6004:a862:d45d:90c1%3]) with mapi id 15.20.9846.021; Thu, 23 Apr 2026
 12:54:33 +0000
Message-ID: <39faf352-36bc-4b52-bc1c-06ec3067b752@efficios.com>
Date: Thu, 23 Apr 2026 08:54:31 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
To: Alejandro Colomar <alx@kernel.org>, Dmitry Vyukov <dvyukov@google.com>
Cc: Jinjie Ruan <ruanjinjie@huawei.com>, linux-man@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Mark Rutland <mark.rutland@arm.com>,
 Mathias Stearn <mathias@mongodb.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Boqun Feng <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>,
 Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Blake Oler <blake.oler@mongodb.com>, Michael Jeanson <mjeanson@efficios.com>
References: <CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com>
 <aejCaG6n9s7ak5TO@J2N7QTR9R3.cambridge.arm.com> <87zf2u28d1.ffs@tglx>
 <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com> <87wlxy22x7.ffs@tglx>
 <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
 <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
 <aeoLLMcxtqShSOxs@devuan>
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Language: en-US
In-Reply-To: <aeoLLMcxtqShSOxs@devuan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YT4PR01CA0184.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:110::21) To YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:be::5)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: YT2PR01MB9175:EE_|YT1PPF07516E2ED:EE_
X-MS-Office365-Filtering-Correlation-Id: ee8c4ba6-4add-4125-6889-08dea1377786
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|7416014|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	jO5uCMTYu0RiLgDsRbNLQbim/t1exNJMC6R8SbD33+CzCn2fXyiBC1A93aBDybdBxHfaW2mrP8r8eDN4LVUconimV1exllN6eJNuRUuhx7IEBKFFdGRks7UoF0YIn2zrPCZdpoN9+WZTzdELeu58dFMtfKLj/uIqlmhv6aYwBnAf0q0ZBB/a2N0MP+09BHLw5OUmHtfvvXwR5zKQTsKcPI4rIBySMMQFNEbliK2z58SDp+jMHLaQXGZhqUgH0ZOVxloMKa0C4rcWod6VdE/I1i0FdmaTCv87PzksmO3kfu9C64S7oc5SaCfcsdEYuICrQoG7hclNfl2G9Ef5M0zFCFeGj9mW3jV/zk6GCnW3+EFfiejLg9dMVSQrbb9G7EpnoY7gMCtuZj1ZhA/61UGUDRnQboZiaEY8NfoN8sGLIVK9ZPd7dFpzEpCoAtFP4Kb+Itx19qh2oWRcVT91hDuriC6djjecK56UfiBToZ+BUzQgiwYzfe15ZOXZBte33SRY7gG0x68dKEIQa2ZOxzRbNcQSJFTCkPsiR9r6e6PXYCfuRkVBMPhcixIjtXCKWmOUyxCA9yshvVlOoCB4+HyyUUbqq5ODaQLNHYoQ7l3ytCCI4QOPSnzaUX9U76dcdvPhTy1688PkkIWQk6MatyFYxay7lO8hQ2ISFSzgoHOVxEOs+HDjQf0yta72K8rE4R/1
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QzFQQmZBUm9BZGtRcFZvdTVITlRVZk9aVkFrRjRkN2lKRzViTlRZdzZPU0FI?=
 =?utf-8?B?SWNuR2FOck9wZ09HV0xBVHZscWp3YWVsQ3lxUjNzclYvVDJwL2FySjkzbG9E?=
 =?utf-8?B?NUVpNFhTRllLZ2d5OExFWWp6a1BYdExIVStnSmFDNFMrM0ZEeFpva3lnMU84?=
 =?utf-8?B?b3V0R0FJT3djMmRMZ1gxTFhnMHFmS05UZVdEWGg5VDRqSUFyU1BhN3FXR1Mx?=
 =?utf-8?B?SE5oS2krOFZDNHF5VnM1ODBXTnIwcDBDYlZydzJZYWNhK1UyRUlaYVE4cVhY?=
 =?utf-8?B?a0E2Wi9mem5uaHFuY0pxb2F0YzJocXhtQmUwVjZaQjltQmx6ck9WRGxpZ3hk?=
 =?utf-8?B?UjYzL0oxcXNzRmNTYXhFZG1UYVpjZzF5cEtQbVdEVDJvYm5PcUJwcjlTdlpr?=
 =?utf-8?B?R3VWSDJkU0hkRk43aG9pMGNrcnBNbFh0RTBhengyeDdCZXpXYnE4NUJXUDd6?=
 =?utf-8?B?NEV4a1U4YUh6ZkpuQnBWdmdpeEJiTDh4dkZqeUtlTW9pcENQODQ4R25iUXZz?=
 =?utf-8?B?eGxYeHBJbjFvb2RCRDdyaERpNjZzdEcyTTZ6UmFmUHFJMG1MZUJTbEUwZFR3?=
 =?utf-8?B?ekF3K1pSSDdOY2NtczhDa01PQUR0bzk4ejRrYXBYcnl0QjUxeHdFVFBtTHVu?=
 =?utf-8?B?dzhPd1V2Wk5KdWRYTG9mckZuMjB4V2tBZ2plQXNvdGNFbGhadng1aWIyWUR4?=
 =?utf-8?B?Z1NneWJ4dmQyRnNuaUl5cUlqWGdFSDRjd216QkZxcE9UeDRTVklzRVZGMEFk?=
 =?utf-8?B?TjIvR3R0NUU1dUNBam4vZ2tlSll1ZEQ4am9mYUYyZkZsUmRQS3d6UGlzMFA1?=
 =?utf-8?B?VmdqdlV2UTVrZnZWWXNXRDlJNS9uakUwOW5Nd2RVTWx2S1MxS1FEMzRZdlZx?=
 =?utf-8?B?VXphVnorU2NVMjNWdUhsSHhxMW1zYW9kYnVWV3NMTS94OGU4MTgwN1dkTmQ2?=
 =?utf-8?B?ZTg3RjFqNER3TUp0V0FPaEh0emRTY1RtUDhZemhxMjFxamR6UUQ5enRNbDJN?=
 =?utf-8?B?c2ozKzFzaVNwRlJCaGVHSlMzbGlGdGc0em5jN3kvbTN6ekJCVTBIWmQwVlEx?=
 =?utf-8?B?Qk5LYzNxRVI2SzRMMndoSmxQUVZzMEw5TmlVcDQyNk55S20xQnc1U3RqNmU2?=
 =?utf-8?B?Q0d0Rlk3UXhKNStEZmVkQ01iN2w4U0tPZm54R1hVWGhDUUM4QzRZT1o2Ujha?=
 =?utf-8?B?Y0RLSnZINjlqVGluZU5IQVN2RmZpQVlsdlNlbzB3SnhGTTA1czFtRnI4djV1?=
 =?utf-8?B?WVI1T1ZoN2Iwa3NtZjNWSEJMb2M5bUVmTzRNa25DVGFGcEp0VjhFdkJWVFJx?=
 =?utf-8?B?TER2bWJGd05iWUJnbG9yWDFuMmQ5Z0drTUc3bS9MbkV4MDFDTG5aOWsyNVFP?=
 =?utf-8?B?MThRN3dTOEx5cHZZVWdPSzdSUDJSYTBIN0oyWFNDWEdPSDJQSUN6RTZNYVZy?=
 =?utf-8?B?bUxSWndTQS93Y1BoYUFFK2JKNGZMeDdNc1Z0U2Q1UUVFeEl6NE1SWmZZRmN4?=
 =?utf-8?B?NzN5WFN4VW5ucmdkY2dFZjcyRzhkc0Q2M2ZwTitEbWFIdVl1SEdQVnhrNGtj?=
 =?utf-8?B?VHljcDFJRUprcHg2ckg1R2NEZFk3QzNUb3FMOEs1WHBpeHQrNVp6RDJpdHN3?=
 =?utf-8?B?ejE1RlhzdEo5WGtVUTBHR2ZrTGtHdjJOM0VPQjBUOWhJdFJNU1l5QllaNzNY?=
 =?utf-8?B?dmEvbC84UXNKejkvQkxZc0lGcUpZMTNJUEpMSFlOODNHUy9KVjNhOWM1c1Zq?=
 =?utf-8?B?cUttczkvMHhtVGdUUnUva1ljeHlsZnVGU2ZUWjhGNlNaQlNXSzNLNzh3QjM0?=
 =?utf-8?B?OGJUejM0bTMyZGhGUnh6UXlsVjZyNUtjYTRPdkdjcytkQmljSmVKU25BV2E0?=
 =?utf-8?B?ZTZuSERuRkJUVUlQa2xtTGtNN2RNWmQ3MWZFZTF2TUZXVnpLblM1bGFvd0M2?=
 =?utf-8?B?ZGFxNDNiVU4wWHhqN3hKcFdQR1J2YURseC95MFEybmgyZ3ovSGx2L2RWdDZx?=
 =?utf-8?B?M1FnWENuU2ZjZEhyK0ZHWWhCbXdUM2ZwWm8rUEcvR3NuNkFoVWx4dklYa0s1?=
 =?utf-8?B?RlZFT05IVVFia1haNjE4ZkpVT3pkWkxtUHhHMGFWNVpjWDNtTlhjbGZDUkhp?=
 =?utf-8?B?TEg1NWRaUS9pTjNiRGxIbUMraVhoWVdIMUw5dEQwTWcwU3lxME52MTdvbXBF?=
 =?utf-8?B?OFhBWXMvdGppcGlSUGtneWhTMzRraEoyWVdIdjRqODhrdXRqSGczTDZVMm1I?=
 =?utf-8?B?c2c1R1d2cktzM3VpMm5hOUdlNXpOZC9sanZvWnpraU5LMVdzaVV5UEdIeFlu?=
 =?utf-8?B?ZVMwU3lOQis2NEpPajNTOWlZRkRSSUNJSW14MzAyb2x2T2pCc0x2THN4cHJK?=
 =?utf-8?Q?xv9OdgQsdwuJBcvE=3D?=
X-OriginatorOrg: efficios.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee8c4ba6-4add-4125-6889-08dea1377786
X-MS-Exchange-CrossTenant-AuthSource: YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 12:54:33.5239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4f278736-4ab6-415c-957e-1f55336bd31e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WzNixv9B4RXoDO7Ag/eQ3BUgBWlJvk/wIkjO7gAOVitOKKOTsFUqE6BBpY/qun4Ru7rWoif7uyR4J+Iecn/a7klc0sQ08iOsWPPGT3L1zq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT1PPF07516E2ED
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[efficios.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[efficios.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5389-lists,linux-man=lfdr.de];
	FREEMAIL_CC(0.00)[huawei.com,vger.kernel.org,linutronix.de,arm.com,mongodb.com,kernel.org,gmail.com,google.com,lists.linux.dev,lists.infradead.org,infradead.org,efficios.com];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[efficios.com:mid,efficios.com:dkim,efficios.com:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9D0274525C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-04-23 08:11, Alejandro Colomar wrote:
[...]
>>
>> +linux-man
>>
>> This part of the rseq man page needs to be fixed as well I think. The
>> kernel no longer reliably provides clearing of rseq_cs on preemption,
>> right?
>>
>> https://git.kernel.org/pub/scm/libs/librseq/librseq.git/tree/doc/man/rseq.2#n241
> 
> +Michael Jeanson
> 
> That page seems to be maintained separately, as part of the librseq
> project.

Yes, I maintain the librseq project, thanks Alejandro!

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
https://www.efficios.com

