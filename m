Return-Path: <linux-man+bounces-2431-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1A8A33E22
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 12:32:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE9073AB6AC
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 11:30:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A3EE21D3E8;
	Thu, 13 Feb 2025 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b="fqxS5hT+"
X-Original-To: linux-man@vger.kernel.org
Received: from LO0P265CU003.outbound.protection.outlook.com (mail-uksouthazon11022091.outbound.protection.outlook.com [52.101.96.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB3E214A69;
	Thu, 13 Feb 2025 11:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.96.91
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739446234; cv=fail; b=rSmzLPi5X5oCsQ0nCjGkRRZ2pFLLuuFCg4Iyn+DqY9T1oGtMCCOQbDJ3iDMHuiPRQacPySqEoqbeb7zkau0af+Gd83gKkW2H141oMyN4y0B03sqEG07Y68UgI95oNsvdkW9BW1atZAB7J606Ypa10pEHugknQ6ZM6yUy6jpoU2M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739446234; c=relaxed/simple;
	bh=4T6o9rouHvTXUVCO9KU/KmmgLLQ98WY62Ju98aB1nf0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CFybzOzqmoSFvDpvBahioSKVhTATF4DmGzBuyeBO9nrNGi2GQSRB75qer4Ing+FvY68edQOPXix9zW1h9AMBMKXnRWIZAXpJz011gDobYbNVAdL2p4ZPei9kQ9WGPujf1rVzwpEUWjgUxCDyrOaALZAdtbP2Hz+SP8KWm+xhldc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net; spf=pass smtp.mailfrom=garyguo.net; dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b=fqxS5hT+; arc=fail smtp.client-ip=52.101.96.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=garyguo.net
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DLNGiAEsfSHJrClbfZR7GxXjmv+6gEPls00Zbwo1pf3RShojQPvb93kCM7fbThBcL6Le9767CqFIK+CKO0TPvjlJiGju8cnlZ77MpINVyTD+qyeRuwNA1X+8Ykpm7U6xprK5cMdzpzS+Ka3L6ZrQrSbRl/fDPncZsxAiXw7BnMcok0NMP5lHwWY4Ky6Sm4tbJX0AB5kt1vmAclFHMhCTaNbv009qShlojcwIERq0PlKmh9RZY4sFaM9toYy1QnZjx6jdpBktYKq5li0PLZKtO5t90/2n34EzB7oicFvRdVEo+FylgvAa/BC/0GqEIPneVpdJ1J6yO7cP1Ar9JSgkfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eynfYDILqTIOAMdMqbMilQ66DbPcKz27j9V3bam8mZg=;
 b=dIMRMxPSKWdtj/B16wuiIQdkL5Nxf/YgSR+I5M8R4WIeu9dxxueLI5uTv2ILabw8cFd8gdZXIjfubYRfb7uVTlAgAld2JYWYBh9lEI2SKOyr9LRsX/FWCPTIABaiPnCfC3bM+tx893YQKP94qq2i7QlSlXkanZf5/cM55XpE3WvhnbjXuT2X6s3SUx0+GJfleSE4WypMk3ZILeGDD0OjwqJ4jxFbIqUdVybfBtEa/vC91a++biKkzRsfJ7m5QeYmHZjBOn6WlhugwEydFXjYz+isZUIAoGnCy0oI6km2XZjoLiru+JnKa+laZ0LAyhNeVmpHWFr+Abdjm/7uYRxKyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eynfYDILqTIOAMdMqbMilQ66DbPcKz27j9V3bam8mZg=;
 b=fqxS5hT+uyiAFgMuOdG/8lumA1KIc+vprF4Yz5WhpqsHPZPvCe1fS5CtUkMaeh4rj7y8ym4DNqheZ3Fxr+xnviyIdALFEnDRFPMQnE/fN4nP9niJBXI8bTHK/Sb84I1ivowO5N1RCFzzPi7LyIlkcje4P5hk12nJXT5d0o6EDRI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:253::10)
 by LO0P265MB6517.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:2ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Thu, 13 Feb
 2025 11:30:27 +0000
Received: from LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1818:a2bf:38a7:a1e7]) by LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1818:a2bf:38a7:a1e7%4]) with mapi id 15.20.8445.015; Thu, 13 Feb 2025
 11:30:27 +0000
Date: Thu, 13 Feb 2025 11:30:24 +0000
From: Gary Guo <gary@garyguo.net>
To: Tamir Duberstein <tamird@gmail.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, DJ
 Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, Paul Eggert
 <eggert@cs.ucla.edu>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, =?UTF-8?B?QmrDtnJu?= Roy Baron
 <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, Andreas
 Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor
 Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org,
 linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] rust: alloc: satisfy POSIX alignment requirement
Message-ID: <20250213113024.3d9919e1@eugeo>
In-Reply-To: <20250213-aligned-alloc-v6-1-4fd7f248600b@gmail.com>
References: <20250213-aligned-alloc-v6-1-4fd7f248600b@gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO2P265CA0364.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::16) To LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:253::10)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LO2P265MB5183:EE_|LO0P265MB6517:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b599118-6522-4852-3fa1-08dd4c21d043
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?v0SOzg7/m8tkBGybNnbN/ghq+rey1oO1LP3yJYT9MEmMMkaV36bIYwfaWBG9?=
 =?us-ascii?Q?RdCeUt/Cm8O9MvoVoL2tcOY5wYRnWHkSd6Y75nXL9jf5CaHnsb/M2Yz/TEVt?=
 =?us-ascii?Q?5Lw9qQY9RavWuWYUybY7lAv40RD5u6rqs5h4nsZqLbzr0qPrXZEd/loatdQ8?=
 =?us-ascii?Q?w/x53j93d1qPGE/1a8281l4K/jlsQdC7ZFAWBt/1DfQQys9AfNbWJHjEB3PS?=
 =?us-ascii?Q?URrETd411hKKP3Px8rZveRC/iFAoU72ZjDCsT8uZYvr8vjTpIKEweKmly4A5?=
 =?us-ascii?Q?zaMcsfv1KC+0vbi0WIh/hrFskuPPW0T6tEiixpqYKUoRalJD6iCSMBVTDuC+?=
 =?us-ascii?Q?WBj+0KYA0y5t/sRudKKSISrm5YQGcjt46WDilf5mcE9hnd3UgiHQTf946KEZ?=
 =?us-ascii?Q?i+kHGgLJWBy1u7Jtocqqjp0d5VNld3vFQzZwZ5kHkRTrdcccVsuRw6+PIN0M?=
 =?us-ascii?Q?qvtUesBlv6bn6pGBdnJl1quqf53kDZSadaEa+kQMEZFr9d5E4C2o0+2zy67s?=
 =?us-ascii?Q?ueGlFqX0Rx3B3e3EDW06O28eUIh7KQDchdK3fH45RIn/nEc3n1KNFi2yY3Tl?=
 =?us-ascii?Q?K89frJwgXi2JQPO85kQ7MKp1XMvXB4IJT4vuOpZiBoDYt8TixpDgOHBpGNKH?=
 =?us-ascii?Q?y1KeZnuPSOMIFS+tyUndn2hEQV1n82iaqoqVqCqFbYDboRb17IB9RMwhbKkp?=
 =?us-ascii?Q?8emZXmiGFnHY80a6vYBbARRs6Ku8J09UhSwkYuL/Uj44Z32d4SeDS41ZleXS?=
 =?us-ascii?Q?TDR3usyYsOap9D7TeyMkhIKh55Q9f8LTW12UlcMqzkeNpA879irfuleL29Ko?=
 =?us-ascii?Q?JfGPC3CEBT4qORFMc0794l/tMtFdtauuPcN12Ud/2JMUWcbH1CN4wiSFkrbf?=
 =?us-ascii?Q?YTCEpMalk9hBBQSW+8vyTfwgk8i/X6aSM1MPsR0fAekEA2QBwYjtP9xkTS1w?=
 =?us-ascii?Q?enWHsnJrxHbwEiJGq7JNDehDqxeJ9PAlhrOVgUz2nU+6qie6qZtgKeAFAivK?=
 =?us-ascii?Q?ROBzuK9f0GdT9hUfKPiHPUlJsKQHrkQsP+LQxleCiFWT6ETQhi9etmFU1/sP?=
 =?us-ascii?Q?1o+xiM4qM+kqw24lKcjCnJIw7EEXLnuBWqPgW0XAZK4r9nnqBADmWKzfsxLL?=
 =?us-ascii?Q?k+MSjF5+TJcA2hAXfvNFD0NOmduivV1kVs2xEf0plGSFK4QJNZ+gjmtafmqj?=
 =?us-ascii?Q?Vx5FjuYWsdNCQ+5qThZdGS7EHrNwDI8K1oBq6th5VkNOUA4YimkY8YnMkU8k?=
 =?us-ascii?Q?syCmiib8zYByX+LNtVSFCLvPi3MSzbqgcBvc7T3PDIby9k1o5U/Y+DpvXYBt?=
 =?us-ascii?Q?LlbJ+SIdqmz1tBN2bnCQdSJGZd9ymvITAb6b63BJm3Xl6lfTLMgm6AzS35vd?=
 =?us-ascii?Q?zwBa/E1G7NYUXKzUXyvXnRfWkn/s?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?nN+y2Myf3hdUKJUtBsDzR0/h9MSpo0HUCK0jp39oGoHSSoNnWaiuvA6S1JbV?=
 =?us-ascii?Q?HlOjhqpIbKzC/+xc4tW4i96NE/4sZXHYlilnats6zMmkXNzccuUP5gGcnR5i?=
 =?us-ascii?Q?pDzi8+elVP/6YZXPrbPKaXC7W4WPcYQYC1c/5jbdRGxo+eVd7XfqDI9tGO3n?=
 =?us-ascii?Q?LSlwpjdEi/95Azafe/xWGtEL8FHzv5rxTo4pCoIrRj2fKm6pOIy/dTZK2rd5?=
 =?us-ascii?Q?OeplI1BCEbqWPqqDBNL9lJUtjziZiosNY+OFJ0Gvg3WfPrYYF1RmDlVThuGB?=
 =?us-ascii?Q?Tk6x6Ygm9piI4P7hC4udFxPJljp5TvAcBeWMlqMevcaH9tDn6ISI7ABY/K3N?=
 =?us-ascii?Q?XT9vBY0lDIyUxZrGYmOziO+PJtJV2+yUPGikWNdbFCi/h+fXPOLhiOoDajj+?=
 =?us-ascii?Q?ISRj3yuSR6jbvYtE+hlTgjChLusp/5320AS5LI3eeCdzfHrdFxHKXWid1x/4?=
 =?us-ascii?Q?B8aub5F169YnEOa1KwtjBhKJ94LviCJtYmg8uq16hzAHRMgwAVuktFBuNfLh?=
 =?us-ascii?Q?C20HvZrIB4RB+fFjk7jou2Urz2xJcUFAh3MFxBNEvCBOFv9+HU4Dz/EMRUna?=
 =?us-ascii?Q?7xzwQ2i5XVXk7Rksfuuawi9QWk7EAyet20xXbdTKJAwoSmnQT7fY6IpeGF1D?=
 =?us-ascii?Q?xz6enqB0AO6ZMuO18g/HWlBpmSSP5os3RH/FfcC62QHrNNU7QDo/VTDtQS6v?=
 =?us-ascii?Q?sT8c8SQPf8IQkvE9fCl/NxrOS7RR+FM/4rWsOwWRDcW10qMfzld+mTVWuHVj?=
 =?us-ascii?Q?gdVCKOtew5pEGZRAcAuf3ojyKh0oXj3eJ9mPIvZKkTj1oIIpNH1u30eM/GG7?=
 =?us-ascii?Q?PWb4Q8eL1QQokgnxpklsmHxnsqhQe1xHqRfdPrFJlVs/O10UGYcJLmv96Kzl?=
 =?us-ascii?Q?BAGaew+sHmMzyGoY+Nv4a9S7gyTERQeo/8KDNUdv4nQXbFJD475kH2or5rGT?=
 =?us-ascii?Q?VugNMAZKC6w0E+n6tl/hsj2FK5240M4VReVfrYyRKkS9P6suDliJfMqC8kHl?=
 =?us-ascii?Q?VU7Al3Bl56SH5HA49p6WIiyCOWSV0zfE37VURMrAsGx51hOb8RvA0Yp9VG5q?=
 =?us-ascii?Q?38PCLq0IblTTWrAOxWGajZWmHALExVd/pGBySFim1b2RaDU5WsIyUb1qa62j?=
 =?us-ascii?Q?5O/lnmvYNJdV6TnRgjfjdx/GjhvmRRFqlpDMaRPF9k2qlJxx5iKoZDKoQJG8?=
 =?us-ascii?Q?4Ps8x/49K4Um9U97JV/cNJTJ5vz16iosUl3+nHrsYkaA8hHRVYENFu/rTiKt?=
 =?us-ascii?Q?hWKxO5Uu76IH9Q7M73sM2aV+BGF0YTG946JJvTUKC46aVwTVntdtDFNgMQ97?=
 =?us-ascii?Q?HkBeeAcl+lkUNVhkyEO67oxEk/aLYZGtIr8yNqkD+G8gtg+mz3c79nP52mm+?=
 =?us-ascii?Q?U4Df81dQnEbeTziC+gKW61qot8imP10PxhCxBo8Hddj2ckIqMrdGBo+Ps6OS?=
 =?us-ascii?Q?FVeh0MlgQBtqBFV8UKht5B9w3eLCuJqZ/+4CjEZoglhoQ7MKxvIAfpRe0Sga?=
 =?us-ascii?Q?vQV+8/wPdUIMf7raVkH9sLVF718P0O0bCUW7UHg6YSPrYVHT2s/AsHdfhxqL?=
 =?us-ascii?Q?nsNnVug7eR9/TDlXgFGgQ6ghyAsz1sjqhiez9kIN?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b599118-6522-4852-3fa1-08dd4c21d043
X-MS-Exchange-CrossTenant-AuthSource: LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 11:30:26.9872
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /2Z3kAe3TVutEhOceHyA35y39/BKkvqdOqmvNx6UbZwiSI2WXGun7vjJ8FBcWBNdlax0lUPNQEfPsKSXlPXUcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P265MB6517

On Thu, 13 Feb 2025 06:26:41 -0500
Tamir Duberstein <tamird@gmail.com> wrote:

> ISO C's `aligned_alloc` is partially implementation-defined; on some
> systems it inherits stricter requirements from POSIX's `posix_memalign`.
> 
> This causes the call added in commit dd09538fb409 ("rust: alloc:
> implement `Cmalloc` in module allocator_test") to fail on macOS because
> it doesn't meet the requirements of `posix_memalign`.
> 
> Adjust the call to meet the POSIX requirement and add a comment. This
> fixes failures in `make rusttest` on macOS.
> 
> Acked-by: Danilo Krummrich <dakr@kernel.org>
> Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module allocator_test")
> Signed-off-by: Tamir Duberstein <tamird@gmail.com>
> ---
> Changes in v6:
> - Replace unsound use of build_error with map_err. (Danilo Krummrich)

It's sound, just not correct.

> - Link to v5: https://lore.kernel.org/r/20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com
> 
> Changes in v5:
> - Remove errant newline in commit message. (Miguel Ojeda)
> - Use more succinct expression. (Gary Guo)
> - Drop and then add Danilo's Acked-by again.
> - Link to v4: https://lore.kernel.org/r/20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com
> 
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
>  rust/kernel/alloc/allocator_test.rs | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/allocator_test.rs
> index e3240d16040b..e68775078e90 100644
> --- a/rust/kernel/alloc/allocator_test.rs
> +++ b/rust/kernel/alloc/allocator_test.rs
> @@ -62,6 +62,24 @@ unsafe fn realloc(
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
> +        let layout = layout.align_to(min_align).map_err(|_| AllocError)?.pad_to_align();
> +        let layout = layout.pad_to_align();

You're doing two `pad_to_align`s.

Best,
Gary

> +
>          // SAFETY: Returns either NULL or a pointer to a memory allocation that satisfies or
>          // exceeds the given size and alignment requirements.
>          let dst = unsafe { libc_aligned_alloc(layout.align(), layout.size()) } as *mut u8;
> 
> ---
> base-commit: 8a5aae7dbbfb612509c8a2f112f7e0f79029ed45
> change-id: 20250201-aligned-alloc-b52cb2353c82
> 
> Best regards,


