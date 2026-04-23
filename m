Return-Path: <linux-man+bounces-5388-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMMwBnAX6mlHtwIAu9opvQ
	(envelope-from <linux-man+bounces-5388-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:58:24 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E604452649
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 14:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A06A130D25B4
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2026 12:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3F7D1FBEBC;
	Thu, 23 Apr 2026 12:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b="Vg76VuuC"
X-Original-To: linux-man@vger.kernel.org
Received: from YQZPR01CU011.outbound.protection.outlook.com (mail-canadaeastazon11020122.outbound.protection.outlook.com [52.101.191.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0C43D47AF;
	Thu, 23 Apr 2026 12:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.191.122
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776948801; cv=fail; b=CyFT83fH1PmRvdcRsOaJGaNuiNsbsvJ5z//TzenMQezV21yl2fEz9ZJGzLvUiVChQxzdt0QQohnD+KIYMhV20hkB7P/dtZ50NS0w1+GxvewzViHd0JBxIlRba/XWYgmLe3fc6MCx6tH3lIdrS1eyZ8yUABeq5OIvdmSPiO53aQ0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776948801; c=relaxed/simple;
	bh=oCoKh64uHdVttgTMW1duv0DNPRyR4H5tPCGfiEzCU/g=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=OpWmRMYEwJZ5kHJ20NICjKUPhhQoAmpA2N2VmdiEp74Drcr2xM28sbl8NKO3ByAYHIgD9CxLg7Cuc1WiPOj9vmr0pvDUHT8JxF6N9h4CbEPNqv/irIsIYwFbWYK7f2J6pkyoXqCwWzxVUDResk9rDV+Hs5IEDDWIXw+Co5oaZhY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com; spf=pass smtp.mailfrom=efficios.com; dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b=Vg76VuuC; arc=fail smtp.client-ip=52.101.191.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=efficios.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XEGBg5AKoWS/AdOBUiF7vQitz1KzLGOwz1bFJZgVuf8RY8oUuRNDvFmThep/V6qmNh9ElabZHgE8xA039/g11rSOSrXojyEPydlCdpzdIWxTTNZrp1pJsiyGeKzgkeSytAa1eiFjMunVBuOzn1mBxOLkSazuCY7S73hUBk2HoLRwvhSJSxe1l/kIjE9WOlpR5Boai+D9kYy2p/39xW1AVqj+Uiho6XaO+Z956J8pCx4vNsutaIsBz4CES0qCMBxvrx+2XRDpBOgw6jUfSg1JVWlZ4hAyWfspkcKKeRJ5XYpRpI8ceXb6putFkb67a1H9lcs0bIbzd23TWp/f6d9cKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l/1CHSTh1YmMDh+l0XsZlMu0hpJ+Y0ykDkxT5aQu6/0=;
 b=YSVVZOBsKK1XRiK1FapVV5qSj13CUpH6zKGD5F5edgPJ4fSsffY36mW6X5GPKuhMSYUn/UcYk4FXYUxb0SGF+pKHoGJKjT5BcFNRm4RLtUDE9o0s8JIpkQHJOs3VKxoqDoSbOXXei3VXSlok6blXKL6YhNk98svR+9StzKPgflQiyMd5Q3T+Ft+Rq48nt6j8eB88P2FrzGMT6sgIuHF6WmFaKUASymC7K0RSDE8Jn9Fq4tr0il4y8/vMs+jXCdX9wikLWLvFi433xw3Q1Y9T9RO9pLXAAM5AKPAGlRXzLzXT4UlqWyrhJlShfvD1Yl8EMwxA/SqkWpJbzp/9Y9Ks8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=efficios.com; dmarc=pass action=none header.from=efficios.com;
 dkim=pass header.d=efficios.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l/1CHSTh1YmMDh+l0XsZlMu0hpJ+Y0ykDkxT5aQu6/0=;
 b=Vg76VuuCsFt/LB8xOaLGI7pEBm4fAanJfTvsAdZBKBe6CTzCBtsayu13av4SL7CjOwcCuhKzReFBJ0W6yzMZnuWiIIFCtgwB26ZO0601ssBs+ac8ZRSPkOgZ9VRNpoU6kV/BPVEzXObtK38uqQ+ubu/rjo7IYBYOBACBTgtQ0OMl2gAgbsw0KACYWXuMo9eXMDJ0zWEUOg/LT67k/KihUcXgzsbzWgHIv5Ux9hSrxnRL20BmzWuK1GQi+vXxIsyJl9xirmOxTgppFLzILOj1ULYaDnJNAidgLVObOCZGZ1xhAH+/zO8TZoyEPAud4cpLPM0mdiq155X34Xe/iDv+ew==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=efficios.com;
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:be::5)
 by YT1PPF07516E2ED.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b08::506) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Thu, 23 Apr
 2026 12:53:16 +0000
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6004:a862:d45d:90c1]) by YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6004:a862:d45d:90c1%3]) with mapi id 15.20.9846.021; Thu, 23 Apr 2026
 12:53:16 +0000
Message-ID: <84e0a8f6-c24c-469a-82a4-e82e33b764b4@efficios.com>
Date: Thu, 23 Apr 2026 08:53:13 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION] rseq: refactoring in v6.19 broke everyone on arm64
 and tcmalloc everywhere
To: Dmitry Vyukov <dvyukov@google.com>
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
 <1e839a25-d15f-40d3-ad6a-20469fb6137c@efficios.com>
 <CACT4Y+bMH+q2C7Xg9oHRP5ZbmvLpMpYzrdAd7B6XoXYc8=22sQ@mail.gmail.com>
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Language: en-US
In-Reply-To: <CACT4Y+bMH+q2C7Xg9oHRP5ZbmvLpMpYzrdAd7B6XoXYc8=22sQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: YT4PR01CA0190.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:110::15) To YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:be::5)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: YT2PR01MB9175:EE_|YT1PPF07516E2ED:EE_
X-MS-Office365-Filtering-Correlation-Id: 817e3a42-bb26-468e-676a-08dea1374953
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	6QPyfmXifWWlVqolkZJiFuXjGY4YYRFbBngVfHr4xb0UK5U3QoMHEnJdPueVe79x0iiDetbXEEnco0mwlIzYOuTI+uJHpunGvUw83AsiHvjszL4hmx3tiV9z1OowJMGXu0R+PKuk925TOHMHlyD107t4wdGawMX41JMwXJVGDrRddInaTKM7uwxAi9TNZ7oMTPLKJIFVJ2uiThjwt/5NSNyp8a83UzQ+bPcRvS0lfijB0abcqcZXyO42K5qKlyyuGIvT2IH42Vgi3l5WwSjnDvywx0yTRf7yu/gXj/Rx3SGktnUtUc2A5wvt15Nh6Co2ChGRieJReQTlAv7UbVtiMn5/Jgh8R5IH9bST/eF56xYe2A6eTT4x5dLbeb1BAtCvFT1UZ0DZFDnYIZXF47DFqs9qpRxjtbcD7fus/jmlWAqnnKDm/bAm1vT0HZyEmNlUsUY3zAjZhBzZJQmdBFNEOCvci/Y3XbiNSIJiK+BuRanDeFKQxFaEvctSKhnPSj2iRfTeC1pMWCFpBMWbOgQBfzlXvpTZ6dMtKiSjDtSDANqUxwz1amr9gDuO+snoaItJJdUb3VEULjhhA6p5Kv3wGGptMWuHG5Q8+PStE4kK6EUKtSzS9SpSwD8gRsxCWyjQXwSRD+mvXPoWLBj9XYNJwuApD79/nhp9Bk6ke99Eo0g=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QnMrNXdLaU9JMEdLbHVmdXNLY2NYZmk1elBlNWRkWkx1WXZVWG9zVmdGZFlD?=
 =?utf-8?B?ZTJVYjNNMEVsZjVVVGVLeXVHZEt2dWlNNHNDM0F4eFUweDdrN1FudVFoZzY0?=
 =?utf-8?B?VG80Nk1mRkJXUGlMNEYvVEJQa1p4QkxURDFXZGFlSTNXTnRFck1rQlRsNENm?=
 =?utf-8?B?N0RYL0t2b2RMQ3piNWRsV1ljQy9rWUFES1BxZ1IzcTA0ZUE2WlBOc0FnS3Nw?=
 =?utf-8?B?NnZFa0RjUkJlbHU3WCtnOXh1MWQrS0RYQ0RPNU1kUVJTNTA0NW52d1B1MURF?=
 =?utf-8?B?QkkzbDZJbE9KRC9ZNGROS3R5aWo3Y2RYTzZGY1dlRUJ3U3ZhUkhCSWQvL203?=
 =?utf-8?B?OGx4bE1nZlNNT3cxc2VqWGgybDIzM0x2Yk50TEp0UjFna0RCRDF5MFdhcU9T?=
 =?utf-8?B?N0RpSVIvdkwvdmpYVmVYeTJwTHc1b0pCR2VXa3FNWW5YanROUzJFZkd6V1Bw?=
 =?utf-8?B?ZGQ5T2E5VG9KaVJRc0Y4RmtZVWpQNHhwVlpzRjJwU2dtSHBONi9JTHpDV1Bn?=
 =?utf-8?B?TVVWdEtKcTlPeGlxWkxEZFBydE96dDdmNmh3TVBJNlhLNDFUVjZjY0VYbHFJ?=
 =?utf-8?B?a0QwSzUyK1dPMkV6U2QvYW03dEVSM1BmZElYTXM0d0FSUlQ3UWg0SlB1M1cz?=
 =?utf-8?B?VElCWlA1TXkybjZRTUZnaVNCOWtqbW5YbzhVYTNjakNwOHlaSEZKNFQ5TTdY?=
 =?utf-8?B?anlIcGtnVlB6S0ZZUFBENWZBbHdSbUptZFVrMGZxcm9aVlZBYmJwYXM2MUtl?=
 =?utf-8?B?bUtnQytORW9UUWRtVk81b0JLOFNyQmp4THl0VkpFRlpNamFyZ0NJOTVod05W?=
 =?utf-8?B?TGtCRlNyUWJhTWh3QWJGWTB1aVYxZGt0MUlmN0YxOVlFNmdpekU0NzdKbStH?=
 =?utf-8?B?c2VHK1RxNjZnWnBkL3lyNFJWRGgwS3hIa1NqY2JVVjdmZ3k4dUxCRzFKOU1Q?=
 =?utf-8?B?ZFpFVVppVzdzUWt4RUZ6ckN2ekNMQ0JCUUt0TGlzNEh1Ulh4TFVBcnRxZ1hQ?=
 =?utf-8?B?c3NReUxRRzVjbGlQN2JGQ2dmK2d4aWV0YWQ4a25TSG9tcHUwWEt4bGRCMmpG?=
 =?utf-8?B?NUxKYktIMDFFWkgxQ0xBZkJpMWtJbHhGMDhib3Q5WFUrZXEwdkRiNXg0TzB6?=
 =?utf-8?B?SE5pWDA5cHBFU01waGVHUllZTVhaNjM5YjJ2MVR5akdVUmRxRys5Z29iaHlr?=
 =?utf-8?B?bWFQL2FJK01VZnZHZllzOU5IOUNsajA1emZIYUhJTm55ckJjeXRLaGsvbDI4?=
 =?utf-8?B?RnkwU1gxUTA5M3RJTS9MdEY3MTliL1E0U3dmT0NsNWZTbHB1REh0RzRYQzFG?=
 =?utf-8?B?RzdHQTBkYitxVXNzaFBMaDh1cDdCb3Y2NFFlRTd6VWg1R2gwSEJxWmFELzVS?=
 =?utf-8?B?SFJyS2JpVkE5VFYxb05wdnkrWm9iZWJHbmNNNmRGb2hMS1gxMEdUR09jVm1z?=
 =?utf-8?B?SjFmMTVEWW1xWFRrK2FITkdjZ0RGOGRWdExvdEwrdFNmQWYrbkFkV01OVXJm?=
 =?utf-8?B?UFcrcVRBbnN1T1N3UVJZRmdGaEpmai9rOU1VQkVmOVhIL1pZajg0RlVnNmN0?=
 =?utf-8?B?WWZRb0l3VTFMSm5kMitTeFcvZ0V4L2w1TWh5VU5EMlRxbnJwNVFIeldUS0d6?=
 =?utf-8?B?ZmRHTW1NZFFOVEdRU1F0VEN6bFB5TUNTeFNSQkFVa0RhUmtmMHlBYmsvSWE2?=
 =?utf-8?B?czF1M1JlcFU3MW13QVNHaE5CNnhTdWVMcDJ1RDc5T09oS0hSS3E4aWRRWXlB?=
 =?utf-8?B?cEpiLzBDZ1ZUVU1lWHZkTTVUbFpJWDNmdzd6c0FnSzhpbFEzUlZoc3dLVXNW?=
 =?utf-8?B?VzNYWkxSNFI1WlUvdlJyMXp5QzYyRXh5K3BQdHVqeHZ5ZEF5bHBJWHlHT3c1?=
 =?utf-8?B?emxaby9Ia2FFQXptbDJPdzBaSHcvb3pwQzA5Q04yNFpFcmpYNXVZN2NjcE1Y?=
 =?utf-8?B?bmFTSXFoRWg3WlV1NEE2dXA2RGJnbGlXODFYVE90Mk02QXE4SngzY0U5cGdT?=
 =?utf-8?B?aVY1OG9EN2hxeFRPa1V0THUwclhWcmozckNPWWJIRUtJSDAvTjhvODFPVktY?=
 =?utf-8?B?NWV2ODZVYkFwSE5aM1g0cWZtU1R5aWhiVWl3amlyRS9iMTNxU0wrMkVuRTJH?=
 =?utf-8?B?RVZzN1ZzbGNhSnh1N3ltZndEV3gyczhFMXY2M1h5d2JSOWs4b3NPMDlFK2xm?=
 =?utf-8?B?M2NvSzFrMVh0T05ObFg1WkYxMDEyY1JvcGtMLzIrNHFSSlZwWEJ5d2xKTlE0?=
 =?utf-8?B?YzhDVU9xc3ZaUXhVRFgwOUM2MjNlUnF1S2FzbU5iTzVsVDF5dlViVlVYSkpU?=
 =?utf-8?B?dXdwTHNUV0YveGFpbHMrWDQrbEpJaXFkTWRzKzB4a1JQQXNDUVFSbmtBdUdU?=
 =?utf-8?Q?PNTE5/S8aoyycpwc=3D?=
X-OriginatorOrg: efficios.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 817e3a42-bb26-468e-676a-08dea1374953
X-MS-Exchange-CrossTenant-AuthSource: YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 12:53:16.0288
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4f278736-4ab6-415c-957e-1f55336bd31e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hotEsbO/9q+X4VIQiWE8vp6RCfsAOjaMVbBjH/jc7TGFIz+c/YaxtT6q3hN/KqBbEetaG9Z8ZEzaXpdgI86RH9qcGCItgdS9KRSQtVn+rjo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT1PPF07516E2ED
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[efficios.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[efficios.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5388-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,efficios.com:mid,efficios.com:email,efficios.com:dkim,efficios.com:url]
X-Rspamd-Queue-Id: 6E604452649
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-04-23 08:36, Dmitry Vyukov wrote:
> On Thu, 23 Apr 2026 at 14:29, Mathieu Desnoyers
> <mathieu.desnoyers@efficios.com> wrote:
>>
>> On 2026-04-23 01:53, Dmitry Vyukov wrote:
>> [...]
>>> +linux-man
>>>
>>> This part of the rseq man page needs to be fixed as well I think. The
>>> kernel no longer reliably provides clearing of rseq_cs on preemption,
>>> right?
>>>
>>> https://git.kernel.org/pub/scm/libs/librseq/librseq.git/tree/doc/man/rseq.2#n241
>>
>> I'm maintaining this manual page in librseq.
>>
>>>
>>> "and set to NULL by the kernel when it restarts an assembly
>>> instruction sequence block,
>>> as well as when the kernel detects that it is preempting or delivering
>>> a signal outside of the range targeted by the rseq_cs."
>>
>> I think you got two things confused here.
>>
>> 1) There is currently a bug on arm64 where it fails to honor the
>>      rseq ABI contract wrt critical section abort. AFAIU there is a
>>      fix proposed for this.
>>
>> 2) Thomas relaxed the implementation of cpu_id_start field updates
>>      so it only stores to the rseq area when the current cpu actually
>>      changes (migration).
>>
>> So AFAIU the statement in the man page is still fine. It's just arm64
>> that needs fixing.
> 
> 
> My understanding was that due to the ev->user_irq check here:
> 
> +static __always_inline void rseq_sched_switch_event(struct task_struct *t)
> ...
> +               bool raise = (ev->user_irq | ev->ids_changed) & ev->has_rseq;
> +
> +               if (raise) {
> +                       ev->sched_switch = true;
> +                       rseq_raise_notify_resume(t);
> +               }
> 
> There won't be any rseq-related processing for threads preempted in
> syscalls, which means that rseq_cs won't be NULLed for threads
> preempted inside of syscalls.

Let's see if I understand your concern correctly. Scenario:

A thread is within a rseq critical section. It exits the critical
section without clearing the rseq_cs pointer, expecting the kernel
to lazily clear the rseq_cs pointer eventually when it detects that
it's not nested on top of the userspace critical section anymore.
It then calls a system call _outside_ of the rseq critical section,
but with rseq_cs pointer set. Based on the rseq man page wording,
it would then expect the preemption within the system call to guarantee
clearing that that pointer.

Here is the relevant comment block in the man page:

                      Updated by user-space, which sets the address of  the  cur‐
                      rently active rseq_cs at the beginning of assembly instruc‐
                      tion sequence block, and set to NULL by the kernel when  it
                      restarts an assembly instruction sequence block, as well as
>>>>>>>>>
                      when the kernel detects that it is preempting or delivering
                      a  signal  outside  of  the  range targeted by the rseq_cs.
>>>>>>>>>
                           ^^^ this

The whole point about lazy-clearing of rseq_cs is that it _may_ happen when
the kernel preempts or delivers a signal (or at any point really), but it's
just an optimization.

Updating the manual page with this wording would match the intent:

                      Updated by user-space, which sets the address of  the  cur‐
                      rently active rseq_cs at the beginning of assembly instruc‐
                      tion sequence block, and set to NULL by the kernel when  it
                      restarts an assembly instruction sequence block. May be set
                      to NULL by the kernel when it detects that the current
                      instruction pointer is outside of the range targeted by
                      the rseq_cs.
                      Also needs to be set to NULL by user-space before  reclaim‐
                      ing memory that contains the targeted struct rseq_cs.

Thoughts ?

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
https://www.efficios.com

