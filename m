Return-Path: <linux-man+bounces-2406-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B55A32CAB
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 18:02:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6353167DBB
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 17:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E44253B63;
	Wed, 12 Feb 2025 17:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9m6FvDL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91482271838;
	Wed, 12 Feb 2025 17:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739379697; cv=none; b=Rz4sW1aHD/8J2xs948/1qUi3i+7QmHBf2HPDp3vXvABCZR00dDSOywoQWWPi4GtlBZSr+T623R4kT+W9hxie1N6FDO+roq96itWAeoUSwE/3DJBAXL2LsKmW3R/E+cWT8RLeFKo6Ue6BlD54vVWjNgpLChVbV929gYZd4pO/V+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739379697; c=relaxed/simple;
	bh=jRMoKpDWtWnYgacxLrf0ZiTJcjhUjLEbiD4mNMIMBNs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XBlXNX0kcf1R9KMfuxqTwdaayhWr9HAVwLCczER5sUKqYwWdyiQvJgFMrjOCKzzQ5SKNs7jVmpMBl4Bs+AY42L51CiuHlUezUehQ6i4gzKOloJ90UxS+f26HKJerduAvEyhmGDIORpi/fLPc2jL2VuZsKOM3jBm2gfXB/z5+pI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9m6FvDL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D04A4C4CEDF;
	Wed, 12 Feb 2025 17:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739379697;
	bh=jRMoKpDWtWnYgacxLrf0ZiTJcjhUjLEbiD4mNMIMBNs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M9m6FvDLhCR/khET7YRAqdzGD6HkViGAQzefjUtC5JopCmnY1FjCXfbO6GgBQzlXA
	 eKwSrVzaRVTc83WTn19YyfG/xrsALN5Su6ikDMl8eeKZ7olTuHObHybxreTVsHZb/5
	 CWUdgaisehmGjtZ/wiZumhaEtAK9GuCRWeV6dpGZF10wU8FhAko3n7AmAA8qfShnhi
	 J23U+2UP5uo7WxUd7DBz2c3HS+XcWzoXR2kMXJP7MDLzuJPlVwa8W3VCo2v6PuRa10
	 nUX/Ng0V7/QGVEo8qkNY8GBzhABaGyYAONjWgYDrWQUOoVkUEc37Mk3tqy2RVpo8SJ
	 s4lmnzPxdeLkA==
Date: Wed, 12 Feb 2025 18:01:30 +0100
From: Danilo Krummrich <dakr@kernel.org>
To: Gary Guo <gary@garyguo.net>
Cc: Tamir Duberstein <tamird@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>,
	Paul Eggert <eggert@cs.ucla.edu>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Benno Lossin <benno.lossin@proton.me>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
	rust-for-linux@vger.kernel.org, linux-man@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] rust: alloc: satisfy POSIX alignment requirement
Message-ID: <Z6zT6mZuxonewQ9z@pollux>
References: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>
 <Z6zA9UNm_UckccRm@pollux>
 <20250212163848.22e8dcff@eugeo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250212163848.22e8dcff@eugeo>

On Wed, Feb 12, 2025 at 04:38:48PM +0000, Gary Guo wrote:
> On Wed, 12 Feb 2025 16:40:37 +0100
> Danilo Krummrich <dakr@kernel.org> wrote:
> 
> > On Wed, Feb 12, 2025 at 09:43:02AM -0500, Tamir Duberstein wrote:
> > > diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/allocator_test.rs
> > > index e3240d16040b..17a475380253 100644
> > > --- a/rust/kernel/alloc/allocator_test.rs
> > > +++ b/rust/kernel/alloc/allocator_test.rs
> > > @@ -62,6 +62,26 @@ unsafe fn realloc(
> > >              ));
> > >          }
> > >  
> > > +        // ISO C (ISO/IEC 9899:2011) defines `aligned_alloc`:
> > > +        //
> > > +        // > The value of alignment shall be a valid alignment supported by the implementation
> > > +        // [...].
> > > +        //
> > > +        // As an example of the "supported by the implementation" requirement, POSIX.1-2001 (IEEE
> > > +        // 1003.1-2001) defines `posix_memalign`:
> > > +        //
> > > +        // > The value of alignment shall be a power of two multiple of sizeof (void *).
> > > +        //
> > > +        // and POSIX-based implementations of `aligned_alloc` inherit this requirement. At the time
> > > +        // of writing, this is known to be the case on macOS (but not in glibc).
> > > +        //
> > > +        // Satisfy the stricter requirement to avoid spurious test failures on some platforms.
> > > +        let min_align = core::mem::size_of::<*const crate::ffi::c_void>();
> > > +        let layout = layout.align_to(min_align).unwrap_or_else(|_err| {
> > > +            crate::build_error!("invalid alignment")  
> > 
> > That's not what I thought this patch will look like. I thought you'll directly
> > follow Gary's proposal, which is why I said you can keep the ACK.
> > 
> > build_error!() doesn't work here, there is no guarantee that this can be
> > evaluated at compile time.
> 
> `align_to` will only fail if `min_align` is not a valid alignment (i.e.
> not power of two), which the compiler should be easy to notice that the
> size of pointer is indeed power of 2.

From the documentation of align_to():

"Returns an error if the combination of self.size() and the given align violates
the conditions listed in Layout::from_size_align."

Formally self.size() may still be unknown at compile time.

Do I miss anything?

> 
> I think both `build_error!` and `map_err` version below is fine to me. 
> 
> Best,
> Gary
> 
> > 
> > I think this should just be:
> > 
> > let layout = layout.align_to(min_align).map_err(|_| AllocError)?.pad_to_align();
> > 
> > - Danilo
> > 
> > > +        });
> > > +        let layout = layout.pad_to_align();
> > > +
> > >          // SAFETY: Returns either NULL or a pointer to a memory allocation that satisfies or
> > >          // exceeds the given size and alignment requirements.
> > >          let dst = unsafe { libc_aligned_alloc(layout.align(), layout.size()) } as *mut u8;  
> 

