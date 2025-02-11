Return-Path: <linux-man+bounces-2391-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A930BA3121C
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 17:52:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4ACDE165A78
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 16:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B01A260A20;
	Tue, 11 Feb 2025 16:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b="qroVaUnz"
X-Original-To: linux-man@vger.kernel.org
Received: from CWXP265CU009.outbound.protection.outlook.com (mail-ukwestazon11021089.outbound.protection.outlook.com [52.101.100.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C72B625EFB3;
	Tue, 11 Feb 2025 16:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.100.89
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739292767; cv=fail; b=NDM8hwRXy5CjTANSUogNsCR4m8aEvEF7tryHe5tpsEBgojKvce0UCvsLKgXncVMgbpHe7e09PLHYQgViljXinm7A91uzgH7f7QSEKmgWE5EzTm+fatzKEj7qz23rlLN3+Fz/s6MLqRcAfpEI8m2Q2nkXV/BrCiIyYLPWC8cg8gQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739292767; c=relaxed/simple;
	bh=0xbbjk2aoUWv2yZFtr2DuBd4qipCuhgJIVfYKMeCP/8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=vEODI7xgGCoA0AXOd+kJTOwb98wBBjfkmMkFNUZtcZeiFp0AZSN1bw6WCdF9dRUco6dXvwee6vYCOhHVdGlufaC255iBpbF/SucAvvBABOQOltp6Pk/M7A5werMVLlv3E3kUIZZUeIV61DEpUsRT9acmkxZX2RcLWZLAJBFmYD0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net; spf=pass smtp.mailfrom=garyguo.net; dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b=qroVaUnz; arc=fail smtp.client-ip=52.101.100.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=garyguo.net
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GJGctFYvEb2VTbotLCUTxPL3wAJYvwipMP9ChCUr4s5XQ3PYUoIns0DqcMf4bskk/OqJ/yB0Odo6BX8vZtRO6eOccotwy7ZjxGxKC5yt9kvjH50EYyMlUm7huItF5TD0h1iaOgcbL3oVYWSIRMCt9x7txe1zuBlSnP10CWw4LVlc0xGWtFcjr8sYvdCg7WPZZKuKSdj2bs3jKR17sfDFjj44qZST+sSmCqbk0LGQ0emXxb2KPEi2/iGu+l/JbTJ0F4icnX/55TFI/s5FpXh9G+nxjoSDJwArgSQf37lPjdTdOghEWswVS3DQLblZinAQICCvgeFhCcoO9QJukdBrYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20SoRC89pRLBRkHYM4I+3UYB0Umi45FBWx1aHgKrsQc=;
 b=UxO96/SOadQLxnh/eLskuHaH3w3Sulkvo0pQJKuXT9uJ5gRL830uqCe5SBFapuQCFLdOijv9Yf66VHvEJp0xGbwXCFgVgCCiJqNYOSDTC4/YlhQOhNxhTFCtdxdDpnGMYB/f7dCIT/Z0V6cjX046Yft7qXtVAraQ60haHoCXnMq1ZoPwLKANOAGtzT3O9c7hemMJaTyRFN0SOCIGkmwxapn4Arxoh1UwyFtZx5QiL2LxFppVXh7U49ptG/cvhmxDeFHXaID+PcCQBo+cT4w/RISZxmpPRmzu8En3YgLJv8QpV8ekqMekIV2n9+1j3KD5YW0ouQTBdp/6R8+TO+yWyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=20SoRC89pRLBRkHYM4I+3UYB0Umi45FBWx1aHgKrsQc=;
 b=qroVaUnz0QKZw4Cmwlf9NEb9dcLL3yl+lJYQh8t/KgCNL3Ae0U+FTYUoM7qziGTkzQdNmgkUyqypRiq2+umiAjfgsSFH/75qwVRmg+9RDnqAfFwkpbvybesApsLjLziQ8eEnd6anHYHQDmbuh0ZRRLqDr/ZbeGIu0xh4ozWS1jQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:253::10)
 by CWXP265MB2391.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:7c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Tue, 11 Feb
 2025 16:52:43 +0000
Received: from LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1818:a2bf:38a7:a1e7]) by LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1818:a2bf:38a7:a1e7%4]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 16:52:42 +0000
Date: Tue, 11 Feb 2025 16:52:40 +0000
From: Gary Guo <gary@garyguo.net>
To: Tamir Duberstein <tamird@gmail.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, DJ
 Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, Will Newton
 <will.newton@linaro.org>, Paul Eggert <eggert@cs.ucla.edu>, Alex Gaynor
 <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>,
 =?UTF-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin
 <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, Alice
 Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 rust-for-linux@vger.kernel.org, linux-man@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] rust: alloc: satisfy POSIX alignment requirement
Message-ID: <20250211165240.5f600eac@eugeo>
In-Reply-To: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com>
References: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P302CA0028.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::19) To LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:253::10)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LO2P265MB5183:EE_|CWXP265MB2391:EE_
X-MS-Office365-Filtering-Correlation-Id: 162f53c2-6fde-4845-10a8-08dd4abc8086
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?IdMPMaUAY/8LmVN2BRTrVbNpwYuiJBvEs6/Qiuah9BwDM7aOiXUPQn71IjH2?=
 =?us-ascii?Q?MoQ2kdHhxATQaCGRQxnF9kAM7/wQ/B4KhNHWgAedfgpIGQh/TyR2QKP1irSJ?=
 =?us-ascii?Q?eRZ9rZ0qiqn3reaKR+QN6bG2aV/eCVwkyId80o6P18BREq0rlVKud5Z6RBy/?=
 =?us-ascii?Q?2jsO+AVZs2BgIHqRPFz5K+ksxegxNuIkW90O07MX+kw9btXTMANLpnaTyMlV?=
 =?us-ascii?Q?o5Ehqy4/33Pt2yZ+kjlcKzU/kEDaJre/vtAFammf+nCnfRKFpFw+c5lGf3te?=
 =?us-ascii?Q?bv1kHM2lRKeLL936FYbs1M+FjcKPZqyqjra7j+uWcuVLr516jTf4aZWY/HFv?=
 =?us-ascii?Q?pDYRmDkrjzubChzkA+cBwfR4ANfspGlIQotXV1pkrS6NJAfx2vaszcuOklCd?=
 =?us-ascii?Q?H9e3OKx59gC7o/frGH3aMYMNgoun8f1auitqKOY+fzFmEnckw5ARxuV2dwlx?=
 =?us-ascii?Q?+Wak+d4FJcwMxeaxt6qbmSnjj201eyNz7hS7OpeKk7KNLMrIm+kkmqxAvFcK?=
 =?us-ascii?Q?oPJEjbMrFkOO5KKawkBjjAmMzd8Ma8m1WbfIQsA50/cvWtrZpr8QwVvuXmUY?=
 =?us-ascii?Q?OsRlFGye99I4j2b1Wz0noJVFYGWYTqrbjvGT3FpYDjVK2pmb5fE2wdZ469BN?=
 =?us-ascii?Q?O03Ekhq9xTGgBPjmi5dWkRmuYKj+xQiB5sZOavK0c2i8mklzVl9SgP6uUNWH?=
 =?us-ascii?Q?wYp1pGtMaimqOeGgr8oC7MslCHrlnUPSWnRWbunAq8+UJks+U4Byx4DU8wmv?=
 =?us-ascii?Q?a0+ChouIvMu15lEwPYOyqF8JZmuU36YSSgC6tRBkJv20/US/n8e36GWHkhY8?=
 =?us-ascii?Q?wJLCuIA/BQGYj5Kl7OR6IMIbANlOlIErwTrPSgQszKvPvd8sJdJaa0dGAYHo?=
 =?us-ascii?Q?Za2s57n0R+V9Giap731pkvzJ16HVqrL7ZH3SKMH1zUI9QquCfieVSlfg+4Mh?=
 =?us-ascii?Q?ae6ume+t4rV6C9Sr9xlLtk7hULdNeWu7/TBa0vCSFzg1Tws660abkeROGzxO?=
 =?us-ascii?Q?1yVjDCMU9kfHPxNvBijx3/7D7ymycdvVm6RronLWNP0W0rVqj2ig4jb20ujh?=
 =?us-ascii?Q?PYvIK3wVIIMxEc8YWAVEHJYWLXNNaoqPFZvc1yEf9P+BAjxp9/0NmqdlYYum?=
 =?us-ascii?Q?8ksUjaLScSfbW089Oz9Q4wXGlLIiCxlQ4XyvXsUiFHK09H4A5Ai4EXLe0WNq?=
 =?us-ascii?Q?YfaJ0tPdzkn+exoQxAUox72GL0lOo/kmk9Tv3gjHzYAmviIgoPj4dgBekpyF?=
 =?us-ascii?Q?oXDHU732+13MG58TRD4mvn78QLhrl9uydbGLp41YXtCMvJCQsYK+7d+oyNWk?=
 =?us-ascii?Q?iTEW7MAKFTGiex3Ngtd3RnwT0VhAQiG4Ej28S3Rp6p/pST55nJ55K9GbwzLZ?=
 =?us-ascii?Q?lBjPzyfZkP3uWB+JEsbm5R4Txgi/?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Amfmk6RdSwX1rg0306lBYyZ8yZBrh7ahxKwL4UgaBfmr9LRjjmgoO0/9GmMq?=
 =?us-ascii?Q?931XPehOz/GvrbfAO3ptjgEV2FoluQG7W8W1Mvl6VNLG95JUOHYZ3mF0X/8M?=
 =?us-ascii?Q?OL86zTwVuvIA5WpRnls+wSIae4IiGZ9zFdROC5rwU+0vkYse5HTQf0D6Erwh?=
 =?us-ascii?Q?sI4zf9V7T9knkJDFrEg8CjeCHt0vCgvKTajsdN3anEHMBpIRr6o3WeKZ+KCs?=
 =?us-ascii?Q?kM6sdF+zHn3QP10gysA/7KvaRQRTeJSKBjK6wueVGltAEyaOFJ7t5G8eG5N7?=
 =?us-ascii?Q?ax5wr/DgKDsnsDMIyuHVqWmCPO4FcRz7U/fvA7ky03T5G8GYl2B1oMp6fe1K?=
 =?us-ascii?Q?zbeZGtbLf0cqHGuoecVaJeJ7bDbv2PSLsgxs7atNvvrVsUelklYnCLSSbw9D?=
 =?us-ascii?Q?Lk3/QHJPBjDMeABvIosoL2EMxwIwgsi3lEcdFE/FD9gO7EAvFGCoHyyVPyMH?=
 =?us-ascii?Q?VVlx4ZPlreFVvrS+LZySycYdFJZy8tPWiXDPQJ+hZZP0sKBkFnkgtRvmD9FB?=
 =?us-ascii?Q?t3pINX/t40GxIKggcyOeYOJ64Yv7RBKOA3RxJO4mkwRvJJZInqaxT3Ls2Gw0?=
 =?us-ascii?Q?gJtpfvUbLe9lsnNskOI7zppGWAaaxjj3UNgB04wxVN7bair7rUBgYl2q+H6B?=
 =?us-ascii?Q?wzTFzlQ98AOif+gR6gcSVydTJCnTHzTVrNczwEDoyvh6y04X9x0rUi6QYtG/?=
 =?us-ascii?Q?Ct97xs0UhhI76dPeYc73mdZfKGW37isnmaDevyq2IvyFegp1fymH2014L/1K?=
 =?us-ascii?Q?p32hq2JMfwGGwyMH/tN3oaF2dfWmH+aSVl1XYe5rlRTTd3fLOA5kUoCxAyFQ?=
 =?us-ascii?Q?kusrWUtu0OqbsBMBCXwH1fh4HWopW4emjEA/aQ3w1XoLuc+Z+ujlZFAWWXRq?=
 =?us-ascii?Q?zXkTxAM35kD5d6lvesTtwL5J2P7WqSScYWMTjP2RRcDqAI1uRLeK7BFt136G?=
 =?us-ascii?Q?ZrtltNg0HJOr9EQwoZI4MNWtjNH9N20BKDUZy0wWicQAm6GVu4Ud7Anajww/?=
 =?us-ascii?Q?sP23P6ECq+WrP3fy2IfsYqZHVVhyx8eKKglrdcK6qhUCFCMJ/0OtIMy/lWOa?=
 =?us-ascii?Q?Rwa2ii1eMxQoz5HRdIvPQh1ABRg5/niBH1BRP+DYlfDngdXS/e47c8CP9Jx9?=
 =?us-ascii?Q?fOuiR74eGutkt1iHGhHlowA5+Z4HECCz8GfOTyk4F3eTvXk4j39Y3YymZwf8?=
 =?us-ascii?Q?47/uqR6eAySwxM8wx4VDVFpRRynX6CSIxtz4JkdYf7xUceRZpH5U5nhYCB2K?=
 =?us-ascii?Q?oOA4F5idenLGEN8Q//PYFfCW03947TMA2/K15SLIKRZojQ8uf40Rj8xmh4IS?=
 =?us-ascii?Q?roZRH/BWyE+vRWwFRU9LltDUpZ1cnp46w7krvnv5VAIvecwVoOivV6xzJK0B?=
 =?us-ascii?Q?gOvCP/jMGAF+kUk4lTU6DLI7xavD2BkHoJ8/ciOqBZ+Q72rMPXWafuooN6AF?=
 =?us-ascii?Q?J2Ahf7V0QKzlF9wazJssfPRt3B8f6TbTenX0flGJXcdWbyCzLjirWSKLRyOO?=
 =?us-ascii?Q?rD/Gk2xuyIHVrgpTtS0VhxOg/ESydbq0x1yJULsTq20W86dJrcsT1IkU4gp8?=
 =?us-ascii?Q?Ok3T6Rq93pzatGASWIvxTKfFi/jp9k/BYc5QTtz3?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 162f53c2-6fde-4845-10a8-08dd4abc8086
X-MS-Exchange-CrossTenant-AuthSource: LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 16:52:42.9058
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8+eMFKpgo8v+30IbfQgDlrLoXaCnH5nThlRSpk+JY3UfnnWUMqy9chS4cr8wOFQeNmMErBHE+jS6RtZyjHVZjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWXP265MB2391

On Mon, 10 Feb 2025 09:55:19 -0500
Tamir Duberstein <tamird@gmail.com> wrote:

> ISO C's `aligned_alloc` is partially implementation-defined; on some
> systems it inherits stricter requirements from POSIX's `posix_memalign`.
> 
> This causes the call added in commit dd09538fb409 ("rust: alloc:
> implement `Cmalloc` in module allocator_test") to fail on macOS because
> it doesn't meet the requirements of `posix_memalign`.
> 
> Adjust the call to meet the POSIX requirement and add a comment. This fixes
> failures in `make rusttest` on macOS.
> 
> Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module allocator_test")
> 
> Acked-by: Danilo Krummrich <dakr@kernel.org>
> Signed-off-by: Tamir Duberstein <tamird@gmail.com>
> ---
> Changes in v4:
> - Revert to `aligned_alloc` and correct rationale. (Miguel Ojeda)
> - Apply Danilo's Acked-by from v2.
> - Rebase on v6.14-rc2.
> - Link to v3: https://lore.kernel.org/r/20250206-aligned-alloc-v3-1-0cbc0ab0306d@gmail.com
> 
> Changes in v3:
> - Replace `aligned_alloc` with `posix_memalign` for portability.
> - Link to v2: https://lore.kernel.org/r/20250202-aligned-alloc-v2-1-5af0b5fdd46f@gmail.com
> 
> Changes in v2:
> - Shorten some variable names. (Danilo Krummrich)
> - Replace shadowing alignment variable with a second call to
>   Layout::align. (Danilo Krummrich)
> - Link to v1: https://lore.kernel.org/r/20250201-aligned-alloc-v1-1-c99a73f3cbd4@gmail.com
> ---
>  rust/kernel/alloc/allocator_test.rs | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/allocator_test.rs
> index e3240d16040b..1c881ed73d79 100644
> --- a/rust/kernel/alloc/allocator_test.rs
> +++ b/rust/kernel/alloc/allocator_test.rs
> @@ -62,9 +62,30 @@ unsafe fn realloc(
>              ));
>          }
>  
> +        // ISO C (ISO/IEC 9899:2011) defines `aligned_alloc`:
> +        //
> +        // > The value of alignment shall be a valid alignment supported by the implementation
> +        // [...].
> +        //
> +        // As an example of the "supported by the implementation" requirement, POSIX.1-2001 (IEEE
> +        // 1003.1-2001) defines `posix_memalign`:
> +        //
> +        // > The value of alignment shall be a power of two multiple of sizeof (void *).
> +        //
> +        // and POSIX-based implementations of `aligned_alloc` inherit this requirement. At the time
> +        // of writing, this is known to be the case on macOS (but not in glibc).
> +        //
> +        // Satisfy the stricter requirement to avoid spurious test failures on some platforms.
> +        let min_align = core::mem::size_of::<*const crate::ffi::c_void>();
> +        let (align, size) = if layout.align() < min_align {
> +            (min_align, layout.size().div_ceil(min_align) * min_align)
> +        } else {
> +            (layout.align(), layout.size())
> +        };

I think this can be more concisely expressed as

	let layout = layout.align_to(min_align)?.pad_to_align();

Best,
Gary

> +
>          // SAFETY: Returns either NULL or a pointer to a memory allocation that satisfies or
>          // exceeds the given size and alignment requirements.
> -        let dst = unsafe { libc_aligned_alloc(layout.align(), layout.size()) } as *mut u8;
> +        let dst = unsafe { libc_aligned_alloc(align, size) } as *mut u8;
>          let dst = NonNull::new(dst).ok_or(AllocError)?;
>  
>          if flags.contains(__GFP_ZERO) {
> 
> ---
> base-commit: a64dcfb451e254085a7daee5fe51bf22959d52d3
> change-id: 20250201-aligned-alloc-b52cb2353c82
> 
> Best regards,


