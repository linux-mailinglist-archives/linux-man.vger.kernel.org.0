Return-Path: <linux-man+bounces-5386-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BV4OFQR6mn4sgIAu9opvQ
	(envelope-from <linux-man+bounces-5386-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:32:20 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDE1451FF8
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:32:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46BE23024C98
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C3E3BD646;
	Thu, 23 Apr 2026 12:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b="oWxmwlXV"
X-Original-To: linux-man@vger.kernel.org
Received: from YT3PR01CU008.outbound.protection.outlook.com (mail-canadacentralazon11020138.outbound.protection.outlook.com [52.101.189.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D143876D2;
	Thu, 23 Apr 2026 12:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.189.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776947389; cv=fail; b=c1V53OuZDls7FdNAq5znJ2Vb71EW7rG5IX9Dqjw/TtnxdzCNqK3N1Iwi36fgv2BgnMu/nsnOD0/a+wbDjUffU6QP971JQWviYA4yaxuY8JaT32ezhPumA1snd00vlpK+uvo8k/18mBVVvNM80WpgfJz9Itri++9Cd3P7QVGNrxg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776947389; c=relaxed/simple;
	bh=yDETlaQQDkBHNIsgoFLzfVQcAgpMxDHjF5yQ8/+HUIc=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=dzlxw/VDPtu1KL5/cqvwIqnQPEn+14wCjGUo0saPgpEM+hvW0/rjibfyidTmF/DClSkZqq8Y/k0kzHIx1mahN7ZALOktr7niGc0AD63QENngwmMX3VyjMZxRg1EOap4aifquHSDlHUYPqKz0vhMzRm37nPK3MiG5/zABZ/abJhc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com; spf=pass smtp.mailfrom=efficios.com; dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b=oWxmwlXV; arc=fail smtp.client-ip=52.101.189.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=efficios.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cmZ6lUUqAATVV8Zo8Mm6HiB0b+PWYEdp+z+MnePIPoxdBftCsogJZExrL12KzHENcqE4be0CGtCWP1Tt0SkCnNmIRfl+QYlbfrSFOiFEDZlEPVuybkw2RWS8/HhMYJzBZH2Qhly+mm6aYPQTOCM0PKM1m7Htjusn+nAMZqQhbFxtHCl4MA/oBeUlwsg7ed84z9Ri/A6XLJcWHxn3LgUPDtGuOPC0qrprtKvTbXJ42Es03kGmox5yM5Ikygw/ai1YpyNk7oto2OLAIj0USvakWT8LLXMj6jblSgIUPlZjBpkVGAFS6MSrcoFE1HMJdENZ7yAtIAzUUbCLzjjqhcIWqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lPQ0wGwknf87KCyxpZgTOzK1e605K9MM9iwmk1ThPFA=;
 b=qOr4GxtI3eiS+0VAB8XE7e3i0PCZpFALW8E7C+vR6M3gz42G+aMDTuo7tdzaqVZmE72MCfudGB63MtTUcBGBa9AUED7VHrvxPVqIjTfRBFH+5e/KzrXIXb9TfGh7OBu+vzRPgx4gFiQ6ef10ubXhzrVa2Qofxfu2TuRwBqXaLXPsYQZvUbjySQUggYoGEwFiKYiM6KajmC47cTrm/cKQ1iTtIqXYjzLQY6hE/ouCz7N+Tq3O48e2pFQsYKhenMx0/WRLxHlSggypZsKcPxfQhzeF3N/BshQGXtxI1Q2rX9dibi1q4G2zRcaUqhqGKG/tpMcD603D45MSytRFT63Khg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=efficios.com; dmarc=pass action=none header.from=efficios.com;
 dkim=pass header.d=efficios.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lPQ0wGwknf87KCyxpZgTOzK1e605K9MM9iwmk1ThPFA=;
 b=oWxmwlXVDHbsNhIdGMOQ+xX6cJDC/OKp1lOndv5FINOkEi9uFC9AKt7pF7gmJSPjcwZBYHJbJ3vyacXAEDzU/Ul9hnSLNQso8cUbxmo2DWmipjiZX9vNjKxVzXezQNr6V/awdTPsA/X6b45d2XhbQZBb4h0bXEwCyzbD82vLSaxeTaBdvTu4kO9aBLmCaDOwosbinJdY6QRKh3mGHzI3VpYvp9NFZ18rT+fBMAuQgIG0tBTZNXsgNGAs2LaI8ME/ZBhji9RnJgq38mP9GOPSGoZ4xQLd0QCCOZOACCWSgrY7WqLda41A6V5qCPndCCwcYgHKlg4+x3R8Bct1SeHQlA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=efficios.com;
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:be::5)
 by YT2PR01MB8952.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:bc::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Thu, 23 Apr
 2026 12:29:42 +0000
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6004:a862:d45d:90c1]) by YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6004:a862:d45d:90c1%3]) with mapi id 15.20.9846.021; Thu, 23 Apr 2026
 12:29:41 +0000
Message-ID: <1e839a25-d15f-40d3-ad6a-20469fb6137c@efficios.com>
Date: Thu, 23 Apr 2026 08:29:39 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
To: Dmitry Vyukov <dvyukov@google.com>, Jinjie Ruan <ruanjinjie@huawei.com>,
 linux-man@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>, Mark Rutland
 <mark.rutland@arm.com>, Mathias Stearn <mathias@mongodb.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Boqun Feng <boqun.feng@gmail.com>, "Paul E. McKenney" <paulmck@kernel.org>,
 Chris Kennelly <ckennelly@google.com>, regressions@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Blake Oler <blake.oler@mongodb.com>
References: <CAHnCjA25b+nO2n5CeifknSKHssJpPrjnf+dtr7UgzRw4Zgu=oA@mail.gmail.com>
 <aejCaG6n9s7ak5TO@J2N7QTR9R3.cambridge.arm.com> <87zf2u28d1.ffs@tglx>
 <aekPXvvuKHKlETjm@J2N7QTR9R3.cambridge.arm.com> <87wlxy22x7.ffs@tglx>
 <c5331cd6-76c8-430d-978e-fcad164e48f6@huawei.com>
 <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Language: en-US
In-Reply-To: <CACT4Y+bxnQyHGdVNE1BYTx+Z2-cscLb38HYS9jBM5gPAz8=4bw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YT4PR01CA0344.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:fc::29) To YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:be::5)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: YT2PR01MB9175:EE_|YT2PR01MB8952:EE_
X-MS-Office365-Filtering-Correlation-Id: 7da60632-af83-42b9-03ea-08dea133fe33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	i2NUQQDoVDevkj/T+MdX43Ry3wyV6rOuTuKtsB9RhT0ETZE07Jb5mYovqmaHnwhj9Simfs+1cmDS0rTXczSx53DKfGkNHhC+vylIaQZub5q2tCn9kDqTnYGiae6r2Dmceeu/Qqv7eY1xaoXUsoZQZKgNEjGZL581A09RGf9Aku6zby66ebEaX0+k2JOapjnJ8EJTF+wxpoNIqczDoDeYoGI8+W+2fQ5PzV6qJOHbAUM9La6KiGlfNHd1NlgbgRYkGiGr6AG/MSktOMjObDWjklLAl+jkHKNqWTPWyAY5aMgU0O28gY4TQgsb4R5f0mB29KbbdA8gJ9aySwtIxwEryzZ8QGk6HWa7Qqq/YGcCyHOlk33/9rQgRdHUK8sRbgJ09mcT6NAvvTx9rPJvwL5HeNB+1tZWbvMbvC2FQ3Jje7t5nqFR2/AWq9Fv2S0a4u6kSV0IAqBX0ESMrL1jmDTnY1brqmqFXjw2HvPFyZzjxgH0jGfHNuAO9xJaFKLmRihvmM51/HJXQ7ajiqaDkG6ivKOpKgU8SAAFTV9EjR3CNCQ9wIfRc37puE/d0u8Oh9S0MYYj5PzpZ8SVtk9rSZD8b3D9G9HjQJzUc9UhRQ7+ftkvC+sEJG37loASTWiEfAkpZEnyohtxx4gT3NHIbXLaOH+ohl9/hqImibacr3wI0yGuWJ4OEHR3LKHZJeK4pzTV
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MHlHMzRkbm9iZVlqWndqZmxyQlpYYmxscjhnTXExb3NMQy9vS0NhUkpXQXc5?=
 =?utf-8?B?M0ttMUpRR3E2REE1VGtIdlUxM3hwNXJmNVNZenZBOHJCUU1la2xFaXlkUkdy?=
 =?utf-8?B?c09iL2theWQ4a3R1cm9uZ2Z0MUJWYng1U3JjK3dWRW1OOWRYalJMaWhncEVS?=
 =?utf-8?B?U0dVTVJTbUNUVDF5UGE3ZStRZ0xYK2VGeWJlZWFQY3c4bVFyZmQwa1B3Ykdi?=
 =?utf-8?B?ck1OZDJOSk1BQmkyMzJhU2ZZQkhzSnJVTmcrYlNGUXFUbVZCUGVYbExiL3dE?=
 =?utf-8?B?UnlxTDNTTm5BSitEUldkTXpCM3BhOXphK1dDZVVqclR1bkZDZHlFTFRBVFpV?=
 =?utf-8?B?VlhLOCtLdEFFVXhuM281ZEZqZm9JbWh2bHRxb2ZDMDNiZ1Q2Q283NW91cnVr?=
 =?utf-8?B?dXRxQ2FPakRya0l4MTFVbzBhOWczQlg3VGF3YW9USXVaTXpUcHVvVHpCcGFm?=
 =?utf-8?B?bURUY0k4REJxOXJ5bFBITGp5QWR5MVI2U2tiSDI0MytDZjJtUnlTdDB1NjNU?=
 =?utf-8?B?RnROWmRVdU1EcVdwcy9kSHRka09CNFpQdmpDYVV6VlFuMWRkb2piaGNSdUtr?=
 =?utf-8?B?eUdETmgrRkIvQS9IeFhxODhqRXJhYjUwb04yNk1DdHp2a3BQdGg1SzhxK3M5?=
 =?utf-8?B?eHpBN0lXRmI1M0JSeG1IZytlK2M2NnFmTWpKbU9wSW1jeTZOcm9HanhmOXZj?=
 =?utf-8?B?dzBaM2ZjcnU4TGdnQm0wbFhscEtLSTlVclExNFZBVTJuOXBCbTh3dkFqT1lT?=
 =?utf-8?B?QmtOR3RuYXB6THZsMkR5YXdsSW9GNEFDeFJVYXh4clVtaTdsZE5JMENVL1RR?=
 =?utf-8?B?eG1icnNsM2czaUhPMmg0OE1PRFUrSFRnUmJtbXJHTlBqWlJGTlZmQko1Qitm?=
 =?utf-8?B?cXl4MXBBZXNEUXBNRUd1K2ppYkM5dW1udWtLLy9ubzdDTCtMNkFFSWY4YTgy?=
 =?utf-8?B?UkIwTHluOHNWT05pNUZ5ZENoMWJhL0JvVFFzeEEzaUt2ZXJqWkR2V3ZWamhs?=
 =?utf-8?B?WWpabEU0alFsUVdrUmFUMlRFek9VNzFoMU1UdzhDWXBEZXVWWmU2UzFYK2ZZ?=
 =?utf-8?B?VlJTemxzUEdiUFRyMEhXd3MwWDVwWmg3NG9UazZwUytiMG5uMVRZZmNYc0tY?=
 =?utf-8?B?akVMQkowbUJrY1hPdXpYYTVmRFRMdkc0U2UrVTNiV1d0dzVXZmdFUHYrR1Ba?=
 =?utf-8?B?eGs1eW1KV0tJM1lvbjdVMnE5dkgrWmFsUnVIUmZaTGZBcVFmN0NtVVFaL3V2?=
 =?utf-8?B?dzRid2FzTEFJeCtOTERjWFJUOHVFMmhmM0MwbEdmVHpyZlVXNmZqZ2RxUnVy?=
 =?utf-8?B?eURYYS92NDRQSEZRajZnZ3owK1dacDBxOHdBQUFkVGtGanVRblVLQklKL3Q4?=
 =?utf-8?B?NUMrRDNYeFhqMUxvcFZDb0NlMy9tMEJLNkRUZy82Wi8rS1pHN2c4SjM4Rk5z?=
 =?utf-8?B?Y3Z4ck90Y1AycFJTbElXUmNpYSt2UUVsVHE2QVRQNTNBWEc2UUlBQnpjcGcx?=
 =?utf-8?B?eWpTUWJWNlFYaGNnTVhvVE5yNXFnb0I4UU5jSDhaWGJZbkx3N1IvelRETEpN?=
 =?utf-8?B?WmVFdVF1TFpNWnppbmd5SDA3ays4bXZwcGlmYzUvVDVCUVR2Rzd6Vm5wL1cv?=
 =?utf-8?B?b3laY1Fzbi9pcjZydXh1NlQ3U25yaGVhNFpjN3pBdkQ3bHVMczMxcFVWV2Yv?=
 =?utf-8?B?SWhLajlqbmVRcFBNOVhZQTcwNWU2ZEpFOWxiM3dhOFhpc2ZEYlo3aTNFeUNl?=
 =?utf-8?B?UWhIcFRWT05xd2tyMFMwQ3c3QVhGWXd2NUNJUkx0ZUcxZXFsNm80dVFEQzNZ?=
 =?utf-8?B?QkdWRmI1R08rL21tZVl0NDQ2ci9DL3drb1hzM1dWMktDVUhxQUJuMS9VV0RI?=
 =?utf-8?B?NUZRZ216Q3Q5SnFxOUtEUnFSZ2ZsZ2x3Vlp0RVl4V003YlFwN0ZOajB2MTd3?=
 =?utf-8?B?V1E5ek5RK2NBMmE3SGNVc21ZWU5YZDZEZXNxNUdkRGJDWDhCTmt6aXA1aDJj?=
 =?utf-8?B?b2pCNWVMemVVaEpoTVdIRE9waVBzRWYzamErWkUvVWRTenRlL1FMZE10TnU3?=
 =?utf-8?B?Vm04eWRUWU9yamxzWkQ5MGhqL0prdFR3OVRVWlluOUdNdHhGc2Z2d0czQlMy?=
 =?utf-8?B?MmNSajl6ckhTVTRKR0NNZ1VXUXF5Ykx2UThpamxFdWNwU0hCWmlzdEFGOC9X?=
 =?utf-8?B?bkk1NGwrZ3ZqVkdRM2VXazhIQWlzVlNsUE1JZ0gvc2ZvcDJneElFb3UrZUt4?=
 =?utf-8?B?NUpVWk95anlGZUFHT0o2dlhUc3hoREQrN1JHYklZdHZQa1ZwL295eW5TZUFJ?=
 =?utf-8?B?WUQyMldNWmZCNXZJUkV5d0VxV056Z1FYaUFlZEk3M3IvckRtWGk5OHo2SE03?=
 =?utf-8?Q?GwKUbeMeMDQeItl0=3D?=
X-OriginatorOrg: efficios.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7da60632-af83-42b9-03ea-08dea133fe33
X-MS-Exchange-CrossTenant-AuthSource: YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 12:29:41.5331
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4f278736-4ab6-415c-957e-1f55336bd31e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZBNG/YXUUfslMOA+TJ7TWhF5soRtslx/2ib8g3Xt5ghsBIVsBglMbiOzC5BKyEK4zq7O29d7lORTAISlQDTHBVM3vdURMyBGCpnjtf4NyoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT2PR01MB8952
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5386-lists,linux-man=lfdr.de];
	FREEMAIL_CC(0.00)[linutronix.de,arm.com,mongodb.com,kernel.org,gmail.com,google.com,lists.linux.dev,vger.kernel.org,lists.infradead.org,infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MAILSPIKE_FAIL(0.00)[172.234.253.10:query timed out];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.desnoyers@efficios.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[efficios.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2FDE1451FF8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-04-23 01:53, Dmitry Vyukov wrote:
[...]
> +linux-man
> 
> This part of the rseq man page needs to be fixed as well I think. The
> kernel no longer reliably provides clearing of rseq_cs on preemption,
> right?
> 
> https://git.kernel.org/pub/scm/libs/librseq/librseq.git/tree/doc/man/rseq.2#n241

I'm maintaining this manual page in librseq.

> 
> "and set to NULL by the kernel when it restarts an assembly
> instruction sequence block,
> as well as when the kernel detects that it is preempting or delivering
> a signal outside of the range targeted by the rseq_cs."

I think you got two things confused here.

1) There is currently a bug on arm64 where it fails to honor the
    rseq ABI contract wrt critical section abort. AFAIU there is a
    fix proposed for this.

2) Thomas relaxed the implementation of cpu_id_start field updates
    so it only stores to the rseq area when the current cpu actually
    changes (migration).

So AFAIU the statement in the man page is still fine. It's just arm64
that needs fixing.

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
https://www.efficios.com

