Return-Path: <linux-man+bounces-2435-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF57A341D5
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 15:24:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B2EA7A1F6A
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 14:24:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0247A281362;
	Thu, 13 Feb 2025 14:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b="U7rXZwQl"
X-Original-To: linux-man@vger.kernel.org
Received: from LO2P265CU024.outbound.protection.outlook.com (mail-uksouthazon11021076.outbound.protection.outlook.com [52.101.95.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4BB281359;
	Thu, 13 Feb 2025 14:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.95.76
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739456689; cv=fail; b=jo93/0ofvi+ukXlsg3D2tXh3tgQLaG6ZpPTlJjqa8zaxL5c3K3KDYOr4VLwisx1bsMQZUCvz+5sVOqouWi9NrHA5V2WaMGMaivCuNs+r/4oEWxag508xhgW8YQI5X0og+3NYdvB6dre+tNtG3QhKJELQRuvPdNNOcCfTw7BdmeU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739456689; c=relaxed/simple;
	bh=z0wqokwKys+CR7TXasMtMt9NZe3e8S6Of+boM1sbAM0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=OBbNfjEy2p+3nUEXa6/h1CsttAk1SGonsog3nUqog3olN3el5tUVVUX9uGvqCQsDdueCK6Xhhp7WD6qa2MBbrkM3nsV9VO6RUOh7JOZprrxI+xuDBOQJhXFK+98yPZwHEsGOnzlXVyJKfdqmIl7nSdS9oD/S1oRQB6Ti1hZoiXw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net; spf=pass smtp.mailfrom=garyguo.net; dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b=U7rXZwQl; arc=fail smtp.client-ip=52.101.95.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=garyguo.net
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N2+AS1VSjsBXfwjopc/4DGgUjJ4Kr175Apvx9fxfCSnNeg7Wq85rASMCQjTaBPM68WxjhVaGT+1Kk1cv7jS7WZhjs79/EyLqV4iIsS5T3UIENeZHIhZKTlHEp0ZSf5h+RvCbd8Vb+5t/KW5+yQuMoqBGIEO0s/MHGyEazpvCdfnf+u/FcnecTRTvbHmStKeUS8/lVpDJmn4truXJ9iVkAxYMvwBfrsl6YEJCiWdqZf9sfQG5TvJVgyUH5c3dfLy9J9YCuYwPmm7boo1JyCPG+7lLdu9F7e535cqsAd44jvx+nKsEJ/TbewRDSO2qXskkGBVHCuu4q0yJo1I1WfBVAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gdha0C5Rz3aTKaQYZY24rIFSx62SBYoPIZ+qYsbhL5w=;
 b=u7cMsG2hLJ6w21KlP7Wb/EsdDYgDa/9dWukaXma7AXdiZt4FaJRmf9N+GJAqWuGBt6fUFkTsm0TLkeREDiuer/9nf8fcFs9f4XcbGUdUSGfGn6WhOe/CgfdLf8EXzqNezk7c7gbRsjmwwLwH9gQ6vL9C6FVpWO5/Su5vai0e/bxogc9OL+ffhitMtHionAMK3ZCZVfq6cLaym2v+Dn8xCP1peMfKL19gmhUdB5DXE0IRxTnpCsPb7apMq5p0m41UHPqujQe8+jnlDg3zxNIqBNszyhCK16cKkI3XwriVVkZA/KBYSFZT/TpHLnxAzH/bIKOxn79vtFSOt755QYNW0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gdha0C5Rz3aTKaQYZY24rIFSx62SBYoPIZ+qYsbhL5w=;
 b=U7rXZwQlbgC9ZFpYv9uMVulJjm5PzSQr42Rn3akubPJYOyhfxJw3tCkivs7JaDgL7UAIXWkV7G6GJht7rX0kfmxQuwKSyhUWfmolEBIta/85E/oNu8G7D+m0TOCY4LeWIrLLWQ+mW1al0zv9cxpdaGA1CIu+Ak9PNxX1x4bHLMo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:253::10)
 by LO0P265MB7299.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:330::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.17; Thu, 13 Feb
 2025 14:24:44 +0000
Received: from LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1818:a2bf:38a7:a1e7]) by LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1818:a2bf:38a7:a1e7%4]) with mapi id 15.20.8445.015; Thu, 13 Feb 2025
 14:24:44 +0000
Date: Thu, 13 Feb 2025 14:24:41 +0000
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
Subject: Re: [PATCH v7] rust: alloc: satisfy POSIX alignment requirement
Message-ID: <20250213142441.56532c18@eugeo>
In-Reply-To: <20250213-aligned-alloc-v7-1-d2a2d0be164b@gmail.com>
References: <20250213-aligned-alloc-v7-1-d2a2d0be164b@gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0393.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::20) To LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:253::10)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LO2P265MB5183:EE_|LO0P265MB7299:EE_
X-MS-Office365-Filtering-Correlation-Id: 2dff8c20-6e32-48b2-aac6-08dd4c3a2917
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?J5HisN4k29J8VtwuzB0/bB5OVJ3xLEHfGcPZzSwfcrtbVoapXN2HQ71EyTKv?=
 =?us-ascii?Q?TUov5VKIU3TMGbY+7uR83DPX0lzxHq9gNLJcIYl4s6OOWfBXQtlWAfxETZYb?=
 =?us-ascii?Q?xBojzwMTroTU9nghGieJuggr2bVUzjuXfaSMwlNk/nsRR6ZJcPs1H3jcZ8Tl?=
 =?us-ascii?Q?SfMeklPBCB5XphBpXlJJed81F14/5B8stnJvMW7OWmxEfXmmg3rAmQM3qPUr?=
 =?us-ascii?Q?QC93zEmnOeNtDg5ZSyzh43H7bLsw344+vjVRZEoXMi2p5KwR3TwYSe3gv1Od?=
 =?us-ascii?Q?WtOM3ObdTGOBrwSOhxrEwfI8LYV87ar8DqL46TfENhPKP5VcWVO4JpEjLUu7?=
 =?us-ascii?Q?PaNIfljY1nb/R4ADCxqINq3l8R2v+0El/X2VL4Y5k5T4KqxnEk4SC9brDZf0?=
 =?us-ascii?Q?UsKMw7yxse5EwO5Zj6g5DU7J0QcyUIsWky99C5nggbCaDHj03ANI6hvHguUC?=
 =?us-ascii?Q?vy3xIhk3RQ/azQaF5V9JnnUNu2S9Hgp2yoDZVb5sLueZ7ylU6y0+MTy2vFJd?=
 =?us-ascii?Q?vzG2vsFuINHfYBZ/pMmtIBDukQJnOxj1tKfXtQ4arYqotUK9s6diVVdZMKCh?=
 =?us-ascii?Q?zqj2FCtJmL7i3ihhna96suazjKsdNGzE3r059z7hpGvuJ38n6hhGmF+MWyq0?=
 =?us-ascii?Q?rmk0lAk9NzCsOKsY390mwu47DoreZpfBPV2l+OrJ1Anifc8B2sVP/UYSV89G?=
 =?us-ascii?Q?lwM15qkL5laQBu2wfFx3V95Z+YusxhezFMdLU8G1jrVkok0pA04oAZNEQ2lV?=
 =?us-ascii?Q?28GPp4s4ezawEcJX5ftFLt7S0VODCe9c3jUb0nSRsSNgImA5M00uxz6CEOE4?=
 =?us-ascii?Q?dpQD/GIaRUFO6J5gKokrOLP13rOddZ2/XH+llhM6cxT+bNUjCRbGh8rG3gih?=
 =?us-ascii?Q?HK8LH+ZRb3il57mSmpF+R3Fh9C0eMfTrTfHptnFmOK2ZaPawxh1VZEyHVbqb?=
 =?us-ascii?Q?kWwuj7FcR151Mp3qCM+TdU0iUpiIO4buKtdUK4vEDUrKQOf568kNEulv0Jz8?=
 =?us-ascii?Q?opvIdWTZgZnKQlFAyyJTCRPzOIIRI5zabGosTaENCOglSpKqLtHV2nMCsFtL?=
 =?us-ascii?Q?kowGp1VSZdFRIesJUWAPY30FaqNKeNll1K83pxNARrzocFFZMSAjXtrCTDTA?=
 =?us-ascii?Q?nZIZYrkBdwpVek529j+6cnEW0xLfob63Kd/E1MS5d1Nw6gZuWO3lCkK9eUSM?=
 =?us-ascii?Q?qw9n0SdmOzYjzgvsQR8Rj/Il6AZjBzmjWTqdjUawcP+j8d185IpynbHJgANr?=
 =?us-ascii?Q?bHdsHTYWYkFjik8c6qYxiwpDmYHwVV+b1qFT11ZD+yN6ilI+3dnl2IVCf2fe?=
 =?us-ascii?Q?lFxuPgJweDOdUQw6a/PYRLWaywDarO186J8vzO4ki4pUEURpZKk8iyZiIOS1?=
 =?us-ascii?Q?LztvWOX5YQ1PK4sZGumU19G4XjOl?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?eYD6f6nshSeh3qud7lelXZ2fuKCRj7zp3PGIf0NdBr+VNBK2hw/osnCd3o/d?=
 =?us-ascii?Q?sKhOB7nJC1DB8V4JHCoP3xsQPtFOQ5++Z2MaN9koi13mCqzYhHd90a8YaiFK?=
 =?us-ascii?Q?TXSslsTt76A5K33rLgKj0ix2BdARDNOCgSYiIB3pozGAGIHjyOA4M0D+7ZMV?=
 =?us-ascii?Q?hDPx0qBJzeyTjIp8UAHRH7AjGrV+XfrjQ3VFlr2NqVKJzODi8uGTaJYIQh4m?=
 =?us-ascii?Q?NAV+9dHD+kkXpkdhoLOb7LglPWeSm6vKfJ8PWfwukquHWolKiQf6rrbNaVOb?=
 =?us-ascii?Q?aSVf9Q9MruVTIuZ1Eyy9L6QryGpIeLImqul6qQsJsT8/I0MVpxJcWryls0DO?=
 =?us-ascii?Q?fVJyvn90QSwSvETrSy9e/mjLAvstoLzOiJ/dAtV0QtADYkGkKg9Ky9y5rCeZ?=
 =?us-ascii?Q?OXEeQZoC2vL3gOgE3JNPsZeAvwYv2SAEPUc/xtj+iIj0BDaAT9/GK4as4OXo?=
 =?us-ascii?Q?2G/d9Ee0p9l/m11xzbZpH30U1U0Gy9XhDL8gN8NChKRVSIY8yhUjqVWVuOPm?=
 =?us-ascii?Q?wu7mavYQvBho+IXlMxkSZ0ccta5+xRzVqWP0Hsq+RViQEUp+R4SF1rYVY+B7?=
 =?us-ascii?Q?RZhg2jZgKjccTe3wr8I62AD+mrl+uutbuIRKlAzJcoW42soYqTunmG8OE3dr?=
 =?us-ascii?Q?BnF27EGYcJQYWiSk5/KBd7W0nT74vc+E7gKf55njjoRAHncx2UjaE+Px7Ql8?=
 =?us-ascii?Q?FAcl+8V5HO9nDdWLcH2/DAHIiEIAxv+iSQ1rtxy7r0ncSOmhdG/4N3LosB6Z?=
 =?us-ascii?Q?umSuzkkm7EVSG75Hp0n5Y83dI8RG0CuQrbXHGmdHf49watVXcmdr5GTy7iah?=
 =?us-ascii?Q?QbTdMXVJcsQLURtX4n3Ql1cdeQF76ezKC53EkZozvRjJBswaTFogWNKyIKGQ?=
 =?us-ascii?Q?hV8RH9iqEdYmQHOTjBcqftgb6qNMgeFuXE57ovWbTestjPefGlqZo18/KpLx?=
 =?us-ascii?Q?VokiIg1F/6aYbxG8+hrLSA4etaLWRyfNgUxOtembee33FOyQ7m2rz4UO88wZ?=
 =?us-ascii?Q?7vu1DL48WKB3xIyFTcFJ/pi0y6SFhgfpHZgHbh7/HKNnImd8IVYf5thsEHDq?=
 =?us-ascii?Q?ieUWY9LW0adFUNKshkPGydekMbkq7DyPxPh2fmiAofm0nGmebWWVWvo7AL58?=
 =?us-ascii?Q?2kDvl0hlKI6aHA5QhRYNZrMN7M9Zn3g9uof8GqUbQLAtsb9HCctgQLTMOqsM?=
 =?us-ascii?Q?VifvMciJEONVLMZj4BW5m6kJ8ZzddVlu9z9d9J4FiddctJGBbYIcSAMBWs/P?=
 =?us-ascii?Q?42Tj5shj1rNBhE3tyyk1cfw7D9w59J/tVBNbbwp892bt+NPZBtITtIIOtxAi?=
 =?us-ascii?Q?rIW3VfEHpBjk3CJlqYRMnmDthPrEaxTJv5vlEGtij6CIqHQ1X5cwMhfc0Da7?=
 =?us-ascii?Q?UXj2KHfOzF3QNm6LgKJr0MNbYID/Q7NEKEEtsmUTcPgLAOm7fVz5DOOc6bQJ?=
 =?us-ascii?Q?MfaN/6UuPomkAaiU3jVx7Vf5c0Ev05xZMJn5eIbid/q+7oOayh4t4I0AmLmB?=
 =?us-ascii?Q?jrulIQsjKUrTdYQ+xlzTHB963SPghbO/+ciOktag+lzbczbDm6He+6OnsaWZ?=
 =?us-ascii?Q?9XVtrEz3ms9euGmbAvpeuKnvx+ES8Z3jutsZmEpi?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dff8c20-6e32-48b2-aac6-08dd4c3a2917
X-MS-Exchange-CrossTenant-AuthSource: LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 14:24:43.9373
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9vpPelaCPz1G1VvnETiqKaaBNUY5S9S5VpOdRSJi2jjZvM5SQjZRf9BJVzHvLThAUgNDdxmewIjP6sn2RdpsyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P265MB7299

On Thu, 13 Feb 2025 06:34:18 -0500
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

Reviewed-by: Gary Guo <gary@garyguo.net>

> ---
> Changes in v7:
> - Remove errant second `pad_to_align` call. (Gary Guo)
> - Link to v6: https://lore.kernel.org/r/20250213-aligned-alloc-v6-1-4fd7f248600b@gmail.com
> 
> Changes in v6:
> - Replace incorrect use of `build_error` with `map_err`. `build_error`
>   seems not to work correctly on the host. (Danilo Krummrich)
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
> index e3240d16040b..c37d4c0c64e9 100644
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
> +        let layout = layout.align_to(min_align).map_err(|_| AllocError)?;
> +        let layout = layout.pad_to_align();
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


