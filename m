Return-Path: <linux-man+bounces-2410-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A92A33050
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 21:01:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90053188BD45
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 20:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B854201022;
	Wed, 12 Feb 2025 20:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/SYAqBl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA9E201017;
	Wed, 12 Feb 2025 20:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739390492; cv=none; b=aZ3F+CU/vH28peLkzniN0ogBoge6DMSNG/jhTQdOeXpTjOmSUeU0DSGrPdfhlV4LG88JV0UEYUXsfZE72HNuoZR21Ae77f3cl11lVzd8GyrK88RXq8GPKaNsnQhWM1N/cI/KEPREw32Gq2gyKEo4P3qUuY2oYCIWBpdPDf2HiUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739390492; c=relaxed/simple;
	bh=ih7UwWQTGH9m1+e48DnI4Kmn77m9E1quXg8pFdtmvwE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Na/O+DlcVoNz6zuJywiDuyBGPmXWFajH3gCXWrEYZfDsl32x2v3R378GBqnPPbX9aG5YiTQSl7QwxnHr4fOfzyNunS52X4qtGSj6AX4nCgcaXN2O+MDtw5wRPzXNkNEMqgrSv+k1aozEk3V0ungOyZdivu4btmyFz4rZEehMBCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/SYAqBl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECF7BC4CEDF;
	Wed, 12 Feb 2025 20:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739390492;
	bh=ih7UwWQTGH9m1+e48DnI4Kmn77m9E1quXg8pFdtmvwE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u/SYAqBlCpPfF1iq+4ICv36S0WZyNqpyqeX0b1enYwZlNh5j2DPR8Opx8VV7fzkX4
	 3a0UmILl6EVPNFxAerkdjEk1xBH3Az1b8tEjoLNLcsUXFQ2q9mnnK9f5hSM4NoivI8
	 VK83HinlUaR1JvKM4QXOmocK/H9riF648gVnrJx90CVsSupWQrM20TXYfbfi4soNyC
	 iofcBj2lqigFLl4YqTHcEt8kzHL2cyc9LgfOXFtCOjTqcW8U5+d/IQZygN0lFMy7dC
	 Lh91Z9CHzPW0d5m6xoDI/2nuUa3GX0wvyGPDxhFlrXzjOznYXifgMaB2nMASjxEmFJ
	 Li17Bkvb2AwfQ==
Date: Wed, 12 Feb 2025 21:01:26 +0100
From: Danilo Krummrich <dakr@kernel.org>
To: Tamir Duberstein <tamird@gmail.com>
Cc: Gary Guo <gary@garyguo.net>, Miguel Ojeda <ojeda@kernel.org>,
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
Message-ID: <Z6z-FlEUk9OfeJCV@cassiopeiae>
References: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>
 <Z6zA9UNm_UckccRm@pollux>
 <20250212163848.22e8dcff@eugeo>
 <Z6zT6mZuxonewQ9z@pollux>
 <CAJ-ks9=-kP5jBGQ_A88VPU_HW9VkF=OCqcGufqrJobhJu8dhww@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJ-ks9=-kP5jBGQ_A88VPU_HW9VkF=OCqcGufqrJobhJu8dhww@mail.gmail.com>

On Wed, Feb 12, 2025 at 01:44:45PM -0500, Tamir Duberstein wrote:
> On Wed, Feb 12, 2025 at 12:01 PM Danilo Krummrich <dakr@kernel.org> wrote:
> >
> > On Wed, Feb 12, 2025 at 04:38:48PM +0000, Gary Guo wrote:
> > > On Wed, 12 Feb 2025 16:40:37 +0100
> > > Danilo Krummrich <dakr@kernel.org> wrote:
> > >
> > > > On Wed, Feb 12, 2025 at 09:43:02AM -0500, Tamir Duberstein wrote:
> > > > > diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/allocator_test.rs
> > > > > index e3240d16040b..17a475380253 100644
> > > > > --- a/rust/kernel/alloc/allocator_test.rs
> > > > > +++ b/rust/kernel/alloc/allocator_test.rs
> > > > > @@ -62,6 +62,26 @@ unsafe fn realloc(
> > > > >              ));
> > > > >          }
> > > > >
> > > > > +        // ISO C (ISO/IEC 9899:2011) defines `aligned_alloc`:
> > > > > +        //
> > > > > +        // > The value of alignment shall be a valid alignment supported by the implementation
> > > > > +        // [...].
> > > > > +        //
> > > > > +        // As an example of the "supported by the implementation" requirement, POSIX.1-2001 (IEEE
> > > > > +        // 1003.1-2001) defines `posix_memalign`:
> > > > > +        //
> > > > > +        // > The value of alignment shall be a power of two multiple of sizeof (void *).
> > > > > +        //
> > > > > +        // and POSIX-based implementations of `aligned_alloc` inherit this requirement. At the time
> > > > > +        // of writing, this is known to be the case on macOS (but not in glibc).
> > > > > +        //
> > > > > +        // Satisfy the stricter requirement to avoid spurious test failures on some platforms.
> > > > > +        let min_align = core::mem::size_of::<*const crate::ffi::c_void>();
> > > > > +        let layout = layout.align_to(min_align).unwrap_or_else(|_err| {
> > > > > +            crate::build_error!("invalid alignment")
> > > >
> > > > That's not what I thought this patch will look like. I thought you'll directly
> > > > follow Gary's proposal, which is why I said you can keep the ACK.
> > > >
> > > > build_error!() doesn't work here, there is no guarantee that this can be
> > > > evaluated at compile time.
> > >
> > > `align_to` will only fail if `min_align` is not a valid alignment (i.e.
> > > not power of two), which the compiler should be easy to notice that the
> > > size of pointer is indeed power of 2.
> >
> > From the documentation of align_to():
> >
> > "Returns an error if the combination of self.size() and the given align violates
> > the conditions listed in Layout::from_size_align."
> >
> > Formally self.size() may still be unknown at compile time.
> >
> > Do I miss anything?
> 
> Formally, I agree. I tried testing (in allocator_test.rs):
> 
> #[cfg(test)]
> mod tests {
>     use super::*;
> 
>     #[test]
>     fn test_allocate() {
>         #[inline(never)]
>         fn non_const_usize() -> usize {
>             let x = 0;
>             &x as *const _ as usize
>         }
> 
>         let layout = Layout::array::<bool>(non_const_usize()).unwrap();
>         let ptr = Cmalloc::alloc(layout, GFP_KERNEL).unwrap();
>         let ptr = ptr.cast();
>         // SAFETY:
>         // - `ptr` was previously allocated with `Cmalloc`.
>         // - `layout` is equal to the `Layout´ `ptr` was allocated with.
>         unsafe { Cmalloc::free(ptr, layout) };
>     }
> }
> 
> and it compiled (and passed).

I suggest to try the following.

Move non_const_usize() into allocator_test.rs and within realloc(), try [1];
then try [2].

Besides that, I still think build_error!() can't be used here correctly, since
layout.size() might not be known at compile time. Please change things to what I
did suggest previously.

--

[1]
```
if non_const_usize() < 0x42 {
   crate::build_error!();
}
```

[2]
```
if non_const_usize() >= 0x42 {
   crate::build_error!();
}
```

