Return-Path: <linux-man+bounces-2429-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 54043A33DD3
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 12:23:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0CAE163563
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 11:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 442AC227EBF;
	Thu, 13 Feb 2025 11:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b="nIm9kdC2"
X-Original-To: linux-man@vger.kernel.org
Received: from LO3P265CU004.outbound.protection.outlook.com (mail-uksouthazon11020137.outbound.protection.outlook.com [52.101.196.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04601227EB6;
	Thu, 13 Feb 2025 11:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.196.137
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739445702; cv=fail; b=iTgETIc8y0R37FbdKgXyoAWcmaM4VJZay3Tdr27slNEUZkuZm7rdFZMi89U9ccu84tAWeaSB3YduShAzZCGrNLd0RGOYLBqF9tAZe8pJZT6nhVdAf94deRU1alKIYKYz/LU4UgUOq16gSRI5opNu6ECYemtnMk+TMtHZh4jjrnA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739445702; c=relaxed/simple;
	bh=zkYKGURITM4btT7FISriNJWnfFlX+Tv6TTpCw8DrnJ4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=fezE8DT1rMwBEAOVBVlSm9/ZyozoJDsKdXE0ScSj0zphidBmRHfvkaFau8gLmWzwOTPVLam2BSkYRtnoxI5E/Z+CHxXmJQtDFE0Kj6mCAwmjMQvHk8MH37C+ZVGe8ldavFA5xO8W8JV4fQAHFLtuJDo2NUjwM2h10bX60baXsgo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net; spf=pass smtp.mailfrom=garyguo.net; dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b=nIm9kdC2; arc=fail smtp.client-ip=52.101.196.137
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=garyguo.net
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I72p4F96LDww6H9YEZfffR/5OSbxQj1h9cOm/mYC507B98rSJFxnwSxrmfTGiuMCQwl0Mfkl6k7mGsvqnkfCR4CSIPKn9o1A7tKbOO/1qd0+40/jA+qCFVRKO6tbf9QD5FU34NivB2iZyHE/H4tDGlCElB/UtcZ2lNqOCOvI1FnQcFo43g4pfcNfKgRiTgqHXqQVL3eeSZtegyTY1G7hpOr445MF7gDNycxzchEeZLA2o9zac77ocrIIYKeGrOzC8OC3wJDOxCnhorsUffMT8JAyzT0pRiZQOay0TtC/9bRYrymXRWbuhfjXx3yTRZYfEdmPoDXRc4u9X0E450YKPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4GJ+z3nPwNyVEMvEmBwNI/3Se6eivbUhsyaPF26nFM=;
 b=QvkcJNHup5eohnOUBBxqEs0ZH3wWWGWl9ltOqOpsjNI0S8w+OrCi8sQ2wSHHWv0yRh3HNUfQkaak+AFLKmLZNCcKsLeSZcF9wPQOM5bsB0ScJa6iPgWGeiprBdYMIHbRNi/Jd4DNPUK9ADK8eZwmm3iJyGuoapFU5A5xbZvdN3kIqJQmnyxtM/TEpf7xgb7Gi/9mckx4TfVZ2GSnZYVfEnHUD4dsBUXW/a4bh8unPz7+VlLN6qcFBYwOixGiUVeEvcIvJAY/3Fm21A1XUmJ+yM/nrlsWGFnX3lO2qNVlLB6rf0vBGWSLQdpCt79vvcS12qKhj45fDqS542mO0nENDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n4GJ+z3nPwNyVEMvEmBwNI/3Se6eivbUhsyaPF26nFM=;
 b=nIm9kdC2ViM6zBtRV/dgGKOyjOco7AqTJyQCJ33LbM+23ZIl1Z9pTuXCEg0cVE+rexSXBWnolGRkO/8uSBsC+T+wkVL9/zLTCdpsnAlbUPC+itr7hoqslVYYi+QWYxXEFA+hse8GtZy2Tsu7AQ+KLu/wfjdB6WQKihjdi/RSddw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:253::10)
 by LOYP265MB2158.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:116::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.16; Thu, 13 Feb
 2025 11:21:37 +0000
Received: from LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1818:a2bf:38a7:a1e7]) by LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1818:a2bf:38a7:a1e7%4]) with mapi id 15.20.8445.015; Thu, 13 Feb 2025
 11:21:37 +0000
Date: Thu, 13 Feb 2025 11:21:35 +0000
From: Gary Guo <gary@garyguo.net>
To: Danilo Krummrich <dakr@kernel.org>
Cc: Tamir Duberstein <tamird@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, DJ
 Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, Paul Eggert
 <eggert@cs.ucla.edu>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, =?UTF-8?B?QmrDtnJu?= Roy Baron
 <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, Andreas
 Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor
 Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org,
 linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] rust: alloc: satisfy POSIX alignment requirement
Message-ID: <20250213112135.7319862c@eugeo>
In-Reply-To: <Z6zT6mZuxonewQ9z@pollux>
References: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>
	<Z6zA9UNm_UckccRm@pollux>
	<20250212163848.22e8dcff@eugeo>
	<Z6zT6mZuxonewQ9z@pollux>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P123CA0188.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a4::13) To LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:253::10)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LO2P265MB5183:EE_|LOYP265MB2158:EE_
X-MS-Office365-Filtering-Correlation-Id: e001c9bc-7244-4f5f-5a69-08dd4c20946d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?cXEcIT6ZUGsVM+eIgrg3Am+LNP0RwqA/IFeJmerNMMcWm4bxFsjcH2o2Icrl?=
 =?us-ascii?Q?dIcwjLEZwVoqw19Y0qbuX23+OfJOi1nrEfdFkzANVimthyX5VMsfvlE6Pqec?=
 =?us-ascii?Q?20YpI2h5tG7W0FLYB+GPikD8e9xNMEhjWyCdX8I7/s6+aPk2OateNruzD2al?=
 =?us-ascii?Q?kW+qEhkD0j874vJTwV+Y5+APs8QUqCiVC9ob8ScefFM/X6czG8v1XlQ29pAi?=
 =?us-ascii?Q?mDJYBhtGKAsAnIrX5nzFoOOlafyN+c4SAkTYAk85WxM6swxJhFoGhL0fJ7Ak?=
 =?us-ascii?Q?5mHlwjOch01yySRXrdHFH8hdvTdaUOfDAIsW4xVvAEQWEPqREkcd6ikqUeUq?=
 =?us-ascii?Q?Qfp5qFgrBP9QTKYkKj9MCO0G79SPXPEfRGorTuoYWOF1a8R42TW00XOaSyqu?=
 =?us-ascii?Q?l/kbbdx8QsEcabhL+z+OqVJLlAVRGbiarHcurNFKmhktgLnW2cmd08s9g3I5?=
 =?us-ascii?Q?X+1xVqThV0wqrqn0oVBzllWSSu1ntToDbgkkIT/uNxsP/UF3hOyiVw/8VQnT?=
 =?us-ascii?Q?TVMBjK8b2adVnyMYiFy9ZIm68Q5DIf4R5M+ydTys0k7I7tXFoSzUtk3cv/LC?=
 =?us-ascii?Q?rZ0nMoimCBP8uYsf0s04a1d+0kWMAB90/19XsgY8L5tGw8jtZBOISdaTzQpf?=
 =?us-ascii?Q?6u068u7mAnQbiRFybnJRiEgerLfr2LexCtUm7urdxoUwMojE/96OCHNER79m?=
 =?us-ascii?Q?gZyxm4/AuB6eB8oepT+9/MIl2i6TurGr6uzORtKRISdRru4lwv6Z8KWKErjd?=
 =?us-ascii?Q?pTeMDjrCxV88XMkRMu0//JAQuqmjQ2hS8dvu6zUQu3TcqsKbE1Tu+HUD36cf?=
 =?us-ascii?Q?+iyjMwt15ZOyUTYmrlRc29s3I/+u0ZDucqDeEKhBIRcRCXDGOJJ+5PXFtOIN?=
 =?us-ascii?Q?kmTZnPViZJhwT4lm1yFryRc0Mt0oN0E9kXFIE+rRTVLLyFmYD3yfjmjC7REh?=
 =?us-ascii?Q?9VF4MSF0o9HrsBHbMAtY34f4SHTAmeg4C64n3igNlRjLigqUpA5wzEOA2OOq?=
 =?us-ascii?Q?TD79No1nwm3T8VAb61S6s0snxIrsViiSdjY1O6VDFmgUmMXw82eb3NXC6J24?=
 =?us-ascii?Q?5Ci4+xiDxNnPifTSsnKYQ0FtNSIyWeZrGFC5DJgr7wBInQsl5ZRY3YqOEDXe?=
 =?us-ascii?Q?ts2wz8Ba/hKDw982w5rwM+M/3rEFljKE1HS102OIeKIaJzPFc0HKXKgq7rrn?=
 =?us-ascii?Q?9sjGo2CLf50Tak5LbdpdMAyBguyNcCFfkkR7DHMFMd3vzCDtKMioJPWmRC3T?=
 =?us-ascii?Q?M9ejEhPbdJurFFbQxRqAEz4E/N1rGNCfet6RJdasZs8kATpinCURJkYIukSu?=
 =?us-ascii?Q?xekqRWAyR9YDwRbaf/2sc6+gvSUQXAs+JySkuJuQDgFRcR16mJJqEo2o0C8y?=
 =?us-ascii?Q?VZgpHTGcIyFrh7Sya0UPFqpn9g7F?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?yHPs5vuSolA4i/qzHhueGSHVGGWRgmZj9+7g6T3kVDyFG8WQVmVFxJLErsxj?=
 =?us-ascii?Q?Szx6Zau4j6mhee59Kp8bWdSUnQtQobCDfZgCd8jceZZrqulrdGf0RJtQiPjd?=
 =?us-ascii?Q?u6lDzO82ncEZkpQsPp97O9xk3/IsbmpW07lj8SOPPRu+fXy2UYS/nzjPJLfB?=
 =?us-ascii?Q?h/WxRbPqHkT6VH87wap4OAGUTtjW01i0JiTsSay4p3BwrGDkQoCHcFJYdf9i?=
 =?us-ascii?Q?gnoC05PeOvOVILjWpmIqykjeoKhUZJJp7mmHSpzHh7p1SADX6obGqFcZNrI8?=
 =?us-ascii?Q?/o2Kl6RGE0dG1zOP2J8iBH+YEpC1Yc3vDcBqe8pOPFOG9VlJdlVrK4TZbSsx?=
 =?us-ascii?Q?WEkDyt44RRPvm++Z03g/fHHzZbq0fvyq85NfgOaNb7G/9zvfFsl5UEoxkHWb?=
 =?us-ascii?Q?yl/4ya2XeMki55H5fZAWst4ZtYShT1oY0L9mPCx0ihtl+YCd1gNNV6UlbKm7?=
 =?us-ascii?Q?ZEQ2U1UXySBDd0WzWZipGQcl5F+ttYI6b/T9PPKXfXm232WjIJV/oDGthKgQ?=
 =?us-ascii?Q?caLUw+jNEOaj1hed0Vm3B6FGly6WadkiDWdE84oPrLOmUzgqvhPE+ARJ9j24?=
 =?us-ascii?Q?yNl6SjrYdzrZpWVWcKSPxVrUg5PQ5KuYNGBtBl1NOi7S7lQGqtu31nOYIuH3?=
 =?us-ascii?Q?YwSCwRjmUzbNRmcE50ONBGXlF5RydvkS7GZhJxTF6yD8mWq7iPMCa7qcbSvh?=
 =?us-ascii?Q?7D/0WvcOO/WWFh6uo66P4ZoLkmkvw3IYngTDiX0NrCxASqCE7TJ4cwmGM2y2?=
 =?us-ascii?Q?YanaxK/yH5zjtXv77ysVNtNKqmQPLrRIMvZkouAeU6zrsrEzMu1VTzbHh+D1?=
 =?us-ascii?Q?bQkvFvvLmwzyUSn1WOdAbDX7gmeZhjK4xSpUD99rq3e+mzuNPTvYW9AkD54j?=
 =?us-ascii?Q?Ptg4bJJBL73RaC4cp2Ei1mfcyyL0MFjT6dFPIgo6fXYlUU3W8h7pGHoCmAlJ?=
 =?us-ascii?Q?ol+cy1RNxjjHGRFpAplV9TcLKt+5ic9TV2mf8ev9BPMDNcHyUo0bA0FLHuSQ?=
 =?us-ascii?Q?P6bbIzvCv+9EqYaG/J+yCkZhOetmFJjGeFYHZNAdDuSrGZTeIdlZEL1yE+Ff?=
 =?us-ascii?Q?u6pQZi8BSf1q0A3p6rlEkd/UWfdr9PB2XgaJpRxGRL4HVhdRLuLKgd6FwSRo?=
 =?us-ascii?Q?O8LOJdwBgqZ/4lvPK4aYb8f7E9dHxUpe/g/8V46rtPT6j+vdk1Txi9mkTrjK?=
 =?us-ascii?Q?1LWQiHwob8KX564tlD4ux9gKmhnd1E/QkmZ8+WGA59GXWIDq5+nkgHXE0MUy?=
 =?us-ascii?Q?li37HLRfb3gc2Hk7aecRw8vy8lWStxgfTJBiydtB1dEQ4KqqvFD2AEsI+35g?=
 =?us-ascii?Q?3YMIgyrkN25zN2VcDNWY5Pk7DwSHTL5Qvy8Ta3wL50qSKTw2NLYAwIZh2AJo?=
 =?us-ascii?Q?dH8VXrWEQudoXGeK/EFULtp6Sd5bd/WP3vildTwVk+pNI8hRHeJEcR1CScBE?=
 =?us-ascii?Q?uShpZwixrUIfoaxFpO4PWLtlyDkITYcfexR/gc3YpsZwY4LoCucGjdOO/4iA?=
 =?us-ascii?Q?CG37GRkVK21TI81DFR78yQcJtzwVFHTBQpqAGDsQEobyTlNHWXiSOdcUoIq4?=
 =?us-ascii?Q?iZbZ9E1ERzStN5DobU0503VUMTrKQjnSQX8kbaND?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e001c9bc-7244-4f5f-5a69-08dd4c20946d
X-MS-Exchange-CrossTenant-AuthSource: LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 11:21:37.1315
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9FqstqBguhZZXRKlvAAMykYzTwMccrWnHt+tebrzbXccW+u/yq/CCOgpgsJeRvQ07+nO7oSUhDw6YVIWlGILOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LOYP265MB2158

On Wed, 12 Feb 2025 18:01:30 +0100
Danilo Krummrich <dakr@kernel.org> wrote:

> On Wed, Feb 12, 2025 at 04:38:48PM +0000, Gary Guo wrote:
> > On Wed, 12 Feb 2025 16:40:37 +0100
> > Danilo Krummrich <dakr@kernel.org> wrote:
> >   
> > > On Wed, Feb 12, 2025 at 09:43:02AM -0500, Tamir Duberstein wrote:  
> > > > diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/allocator_test.rs
> > > > index e3240d16040b..17a475380253 100644
> > > > --- a/rust/kernel/alloc/allocator_test.rs
> > > > +++ b/rust/kernel/alloc/allocator_test.rs
> > > > @@ -62,6 +62,26 @@ unsafe fn realloc(
> > > >              ));
> > > >          }
> > > >  
> > > > +        // ISO C (ISO/IEC 9899:2011) defines `aligned_alloc`:
> > > > +        //
> > > > +        // > The value of alignment shall be a valid alignment supported by the implementation
> > > > +        // [...].
> > > > +        //
> > > > +        // As an example of the "supported by the implementation" requirement, POSIX.1-2001 (IEEE
> > > > +        // 1003.1-2001) defines `posix_memalign`:
> > > > +        //
> > > > +        // > The value of alignment shall be a power of two multiple of sizeof (void *).
> > > > +        //
> > > > +        // and POSIX-based implementations of `aligned_alloc` inherit this requirement. At the time
> > > > +        // of writing, this is known to be the case on macOS (but not in glibc).
> > > > +        //
> > > > +        // Satisfy the stricter requirement to avoid spurious test failures on some platforms.
> > > > +        let min_align = core::mem::size_of::<*const crate::ffi::c_void>();
> > > > +        let layout = layout.align_to(min_align).unwrap_or_else(|_err| {
> > > > +            crate::build_error!("invalid alignment")    
> > > 
> > > That's not what I thought this patch will look like. I thought you'll directly
> > > follow Gary's proposal, which is why I said you can keep the ACK.
> > > 
> > > build_error!() doesn't work here, there is no guarantee that this can be
> > > evaluated at compile time.  
> > 
> > `align_to` will only fail if `min_align` is not a valid alignment (i.e.
> > not power of two), which the compiler should be easy to notice that the
> > size of pointer is indeed power of 2.  
> 
> From the documentation of align_to():
> 
> "Returns an error if the combination of self.size() and the given align violates
> the conditions listed in Layout::from_size_align."
> 
> Formally self.size() may still be unknown at compile time.
> 
> Do I miss anything?

Ah, I think you're indeed correct. If I get a type that has the size of
`isize::MAX - 1` and alignment of 1, and then trying to align up to
pointer size will cause an error.

We should proceed with `map_err` then.

Best,
Gary

> 
> > 
> > I think both `build_error!` and `map_err` version below is fine to me. 
> > 
> > Best,
> > Gary
> >   
> > > 
> > > I think this should just be:
> > > 
> > > let layout = layout.align_to(min_align).map_err(|_| AllocError)?.pad_to_align();
> > > 
> > > - Danilo

