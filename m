Return-Path: <linux-man+bounces-2403-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8723DA32A52
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 16:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E7C51889936
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 15:41:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4623220686;
	Wed, 12 Feb 2025 15:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlzXXs60"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB6121E097;
	Wed, 12 Feb 2025 15:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739374844; cv=none; b=jyzxPWLQJQBeJojfij5QC10+HuE8aYMd1iwFN5EUN5zFpJHE4qQuQq800Sxam7y2hIKW8Gy40076sXUyx/dbIAbJY0b0R/jU7cSo99TGIgnI5TNhUX1199jJgAnwbPnzGVuPDJouEX5/bWiU30rItjNUISNiQCpSHjJTBJzo4ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739374844; c=relaxed/simple;
	bh=zriqMxxivzJ+e+SRUhbYjcGx6tySbbLJ8Jprrig86VM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ogya9S0/mVQVHs04h8BDwFvWyjslLyN+Wa8slcst/RUKcgzfHEjyMnrjy9WUzWiZvQ5nnhQXdndzVKJV0MO9lf9VY9Jtnip+wfY2Xgf9TixcdFhTQzeqLViZnQziXBtcOG3WU/HVo5fn5QWdEskfIT8Xf51r2ew/kV2mq//URsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlzXXs60; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A04A2C4CEDF;
	Wed, 12 Feb 2025 15:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739374844;
	bh=zriqMxxivzJ+e+SRUhbYjcGx6tySbbLJ8Jprrig86VM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NlzXXs60MAUomwoBgs1NCPoADrVw0Ssbfuk0Xy9+tnfyQifq3TUvT8ghgxN7Zt5Vg
	 q88KvhPsjWtGhfHC5ISbe/9ky9Hy10O/MpsywIdrh9ADdWJqCyui/mgEbhh1civiBF
	 I8DnC5nO17K2h9fTGf91THDhI+paJr7nBYSEIklyVbv7sKvNA8/DuGjOOhPhmK5qQ7
	 FShFV7TdJrkJa7wWJH4rYjYjjWj+tC3oF4l+CFeBn6MjBK5NayzpYU6jHpXUt5loTe
	 OD/CrQftFVgXqT2Kudxa3rl2MvZK7cOEcGNF4XZCep25n91LlW/92WiuF9ogVfQKHr
	 bl3kN9ysNohBg==
Date: Wed, 12 Feb 2025 16:40:37 +0100
From: Danilo Krummrich <dakr@kernel.org>
To: Tamir Duberstein <tamird@gmail.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, DJ Delorie <dj@redhat.com>,
	Eric Blake <eblake@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Benno Lossin <benno.lossin@proton.me>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
	rust-for-linux@vger.kernel.org, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] rust: alloc: satisfy POSIX alignment requirement
Message-ID: <Z6zA9UNm_UckccRm@pollux>
References: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>

On Wed, Feb 12, 2025 at 09:43:02AM -0500, Tamir Duberstein wrote:
> diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/allocator_test.rs
> index e3240d16040b..17a475380253 100644
> --- a/rust/kernel/alloc/allocator_test.rs
> +++ b/rust/kernel/alloc/allocator_test.rs
> @@ -62,6 +62,26 @@ unsafe fn realloc(
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
> +        let layout = layout.align_to(min_align).unwrap_or_else(|_err| {
> +            crate::build_error!("invalid alignment")

That's not what I thought this patch will look like. I thought you'll directly
follow Gary's proposal, which is why I said you can keep the ACK.

build_error!() doesn't work here, there is no guarantee that this can be
evaluated at compile time.

I think this should just be:

let layout = layout.align_to(min_align).map_err(|_| AllocError)?.pad_to_align();

- Danilo

> +        });
> +        let layout = layout.pad_to_align();
> +
>          // SAFETY: Returns either NULL or a pointer to a memory allocation that satisfies or
>          // exceeds the given size and alignment requirements.
>          let dst = unsafe { libc_aligned_alloc(layout.align(), layout.size()) } as *mut u8;

