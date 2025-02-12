Return-Path: <linux-man+bounces-2414-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB38A33101
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 21:47:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DAAC3AA4F4
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 20:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC02C201016;
	Wed, 12 Feb 2025 20:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D8DjhsTr"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9931327183B;
	Wed, 12 Feb 2025 20:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739393271; cv=none; b=XB6GAZjgaNQuVXAJOnjzvQbbc6Fng3vob+8nOVwRAuSJCfmeQauZstBTUkY+by9oq7inOCzSFOGTQR3MSVBaH2MB++WZhBSiR8H8tbFQIcDgteTbwL4AxRlyAhlh0qwsP63gL7QQZEmeniu113vezO5UEUWDODkHkHp15JyPc9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739393271; c=relaxed/simple;
	bh=f2OndY0N/HJlsXG3BXz07x+0iiADisddaDnDG3DL41I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VArudTlgF0M2bRANInkg1pGpnOYIPuEqN16cqABPSl3n5Eigl3RKIU+mTcqAy7/PP53wVKvKgEVGaaPjJe3rJ9BHLAlPfZsYwF/JlF4UsuVcxMhBdySCH+RWLV4Fxht6w9gCJD1JhfGsXcR7Hp8sZZ9j5YNuY+1r/mWo6XQq4m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D8DjhsTr; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-545097ff67cso62817e87.2;
        Wed, 12 Feb 2025 12:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739393268; x=1739998068; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qyp/t36cikfJ5qwnOCdgeR4xTyyQ9dQqxD0dEw365zA=;
        b=D8DjhsTrHTsDV2X3zDXa16xlsSNaYpeoVznQ1mTKpoYoWKwGAZ/est6eG40/3z6qFT
         NxJxt6KOQmgYhRCGAVKuMU8v+RRf0e95jvnsSA5EeKO4HYSkdmbyj3eZfc9jyayemtng
         eNgN5crca0E40D8t+GuErjuZ4pogdzrEFUarL2ka/gpJkcbANujdvOLS5HXdsjidcqhd
         gSSQuVqa9AQIltm2vSEaOd8yiV1PGnXro5sJrRoeeWxemRk13DOIMaoLn3IwzJpWlCzS
         okmCwUq/DBFrXn7uGtRWGPg/bqHjD5TkSU92ktwoqlnoH50mriOFSptfpGGcfz/GU78f
         KFjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739393268; x=1739998068;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qyp/t36cikfJ5qwnOCdgeR4xTyyQ9dQqxD0dEw365zA=;
        b=D60gXGY3vzNRqhKJa1sUfkSQ6FVgBAOF8mrt3Xnxch9yIG1I1/v/9g8xQ1rcfq9WCS
         /R5X7UFeBxf9D7cHBdKZnauh9e/Us8Af/tXFSy1MAfeMjSLyxh8hyLgOB5CNQJaZ39sI
         Pn77isSc6WJKRswgLulZZ5Qaej5fR7dZqnRpb0fq4k5CpvPQ28DZfBYtpj34KMTURhQ2
         D7cDg/uEQ2WTm067rvRqCUUWV9xsh88cEHRVJd5vMeTvWaDG37bZwhmDodZSsAzqnUgp
         8cuCl/2P7lGEMjfiCLfUm6w5YLQu2RcOIRruoaD4viHakv2GQaIgBNLpy+4itYsCn1qi
         nXDg==
X-Forwarded-Encrypted: i=1; AJvYcCVWAmiL7cDT/V0Tpaem7JsEj6mOdEX24jzZBNiLMpkVKMfAQAkAl27I8Y4KXZdqp6X/0Ts074t5LhZc+3c=@vger.kernel.org, AJvYcCVqlSk24ClQyH6w2QNBwNUnmFkwoOjZ0lwgTHuY5pf/f/RQwQIGzTnUeGGB2xpH3vqk/j4oqTWJMgRv@vger.kernel.org, AJvYcCWXUCKzxJElBO+7yDiPbJzuH7SzwFGNI7MqkYjD6yLgTZooGN4cvqYX7MrU1V6c7GcsxGRO5u7G4aVKRo74Tws=@vger.kernel.org
X-Gm-Message-State: AOJu0YwZJMuj6aZPeeizoheWPtY59qkHxe/aOyr1ycsfgabl3UIS9Dbf
	JuUkO+weHXjods0JE8C72Q0Y83imbuM+YhGcHx9ObXnGOFO+wJXBuhHe2IFOhyy41Cq7cFd+8lm
	xNzWGAwGl+uDPofl7M7596Ena0aCD3xHT1Ek=
X-Gm-Gg: ASbGncu2L7cA5N6ZAx9smybKUbYx25Bt0UEwm+MmAHd9434VODggaAyq5IukhEVdkX/
	aAUcgrOd11ik019QP0kby8ztMUyOCVq7Q1qimkYlOGu4IBSbzoYnjdA2/yCGJlpLoRBUaEQ+FcX
	rQcWRNQ+ckvMiz
X-Google-Smtp-Source: AGHT+IH3KzU+wmVTdNvjjfgFfcmvbkDy8bo3qZPe4hvm3sn4wwrtriNxfCwQJzbqFFZrtqtK5dsvOK/oumibGAF5NDk=
X-Received: by 2002:a05:6512:e81:b0:545:ae6:d740 with SMTP id
 2adb3069b0e04-545184a2e67mr1218019e87.41.1739393267369; Wed, 12 Feb 2025
 12:47:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>
 <Z6zA9UNm_UckccRm@pollux> <20250212163848.22e8dcff@eugeo> <Z6zT6mZuxonewQ9z@pollux>
 <CAJ-ks9=-kP5jBGQ_A88VPU_HW9VkF=OCqcGufqrJobhJu8dhww@mail.gmail.com> <Z6z-FlEUk9OfeJCV@cassiopeiae>
In-Reply-To: <Z6z-FlEUk9OfeJCV@cassiopeiae>
From: Tamir Duberstein <tamird@gmail.com>
Date: Wed, 12 Feb 2025 15:47:11 -0500
X-Gm-Features: AWEUYZlY0QbbhrC10VNd2x8jWaAJGFYDZASGwDMbYLF62Nd3FDQRBPtaViQLiIE
Message-ID: <CAJ-ks9=-ZQpmhJRs3YstZBGb9UvLwRQJ7od+dsc_sYZtwUhF2A@mail.gmail.com>
Subject: Re: [PATCH v5] rust: alloc: satisfy POSIX alignment requirement
To: Danilo Krummrich <dakr@kernel.org>
Cc: Gary Guo <gary@garyguo.net>, Miguel Ojeda <ojeda@kernel.org>, DJ Delorie <dj@redhat.com>, 
	Eric Blake <eblake@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 12, 2025 at 3:01=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> =
wrote:
>
> On Wed, Feb 12, 2025 at 01:44:45PM -0500, Tamir Duberstein wrote:
> > On Wed, Feb 12, 2025 at 12:01=E2=80=AFPM Danilo Krummrich <dakr@kernel.=
org> wrote:
> > >
> > > On Wed, Feb 12, 2025 at 04:38:48PM +0000, Gary Guo wrote:
> > > > On Wed, 12 Feb 2025 16:40:37 +0100
> > > > Danilo Krummrich <dakr@kernel.org> wrote:
> > > >
> > > > > On Wed, Feb 12, 2025 at 09:43:02AM -0500, Tamir Duberstein wrote:
> > > > > > diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/=
alloc/allocator_test.rs
> > > > > > index e3240d16040b..17a475380253 100644
> > > > > > --- a/rust/kernel/alloc/allocator_test.rs
> > > > > > +++ b/rust/kernel/alloc/allocator_test.rs
> > > > > > @@ -62,6 +62,26 @@ unsafe fn realloc(
> > > > > >              ));
> > > > > >          }
> > > > > >
> > > > > > +        // ISO C (ISO/IEC 9899:2011) defines `aligned_alloc`:
> > > > > > +        //
> > > > > > +        // > The value of alignment shall be a valid alignment=
 supported by the implementation
> > > > > > +        // [...].
> > > > > > +        //
> > > > > > +        // As an example of the "supported by the implementati=
on" requirement, POSIX.1-2001 (IEEE
> > > > > > +        // 1003.1-2001) defines `posix_memalign`:
> > > > > > +        //
> > > > > > +        // > The value of alignment shall be a power of two mu=
ltiple of sizeof (void *).
> > > > > > +        //
> > > > > > +        // and POSIX-based implementations of `aligned_alloc` =
inherit this requirement. At the time
> > > > > > +        // of writing, this is known to be the case on macOS (=
but not in glibc).
> > > > > > +        //
> > > > > > +        // Satisfy the stricter requirement to avoid spurious =
test failures on some platforms.
> > > > > > +        let min_align =3D core::mem::size_of::<*const crate::f=
fi::c_void>();
> > > > > > +        let layout =3D layout.align_to(min_align).unwrap_or_el=
se(|_err| {
> > > > > > +            crate::build_error!("invalid alignment")
> > > > >
> > > > > That's not what I thought this patch will look like. I thought yo=
u'll directly
> > > > > follow Gary's proposal, which is why I said you can keep the ACK.
> > > > >
> > > > > build_error!() doesn't work here, there is no guarantee that this=
 can be
> > > > > evaluated at compile time.
> > > >
> > > > `align_to` will only fail if `min_align` is not a valid alignment (=
i.e.
> > > > not power of two), which the compiler should be easy to notice that=
 the
> > > > size of pointer is indeed power of 2.
> > >
> > > From the documentation of align_to():
> > >
> > > "Returns an error if the combination of self.size() and the given ali=
gn violates
> > > the conditions listed in Layout::from_size_align."
> > >
> > > Formally self.size() may still be unknown at compile time.
> > >
> > > Do I miss anything?
> >
> > Formally, I agree. I tried testing (in allocator_test.rs):
> >
> > #[cfg(test)]
> > mod tests {
> >     use super::*;
> >
> >     #[test]
> >     fn test_allocate() {
> >         #[inline(never)]
> >         fn non_const_usize() -> usize {
> >             let x =3D 0;
> >             &x as *const _ as usize
> >         }
> >
> >         let layout =3D Layout::array::<bool>(non_const_usize()).unwrap(=
);
> >         let ptr =3D Cmalloc::alloc(layout, GFP_KERNEL).unwrap();
> >         let ptr =3D ptr.cast();
> >         // SAFETY:
> >         // - `ptr` was previously allocated with `Cmalloc`.
> >         // - `layout` is equal to the `Layout=C2=B4 `ptr` was allocated=
 with.
> >         unsafe { Cmalloc::free(ptr, layout) };
> >     }
> > }
> >
> > and it compiled (and passed).
>
> I suggest to try the following.
>
> Move non_const_usize() into allocator_test.rs and within realloc(), try [=
1];
> then try [2].
>
> Besides that, I still think build_error!() can't be used here correctly, =
since
> layout.size() might not be known at compile time. Please change things to=
 what I
> did suggest previously.
>
> --
>
> [1]
> ```
> if non_const_usize() < 0x42 {
>    crate::build_error!();
> }
> ```
>
> [2]
> ```
> if non_const_usize() >=3D 0x42 {
>    crate::build_error!();
> }
> ```

Quite a good experiment, thanks for suggesting it. The result is that
one of these just panics at run-time. This means that it's trivially
easy to hold `build_{assert,error}!()` incorrectly! It only does the
right thing in a constant context (and the docs do say this) but it's
very easy to use in _any_ context. Looks like I wasn't the only one to
fall into the trap (rust/kernel/io.rs):

    #[inline]
    const fn io_addr_assert<U>(&self, offset: usize) -> usize {
        build_assert!(Self::offset_valid::<U>(offset, SIZE));

        self.addr() + offset
    }

since offset isn't known at compile time, this can easily be misused?

I'll change this to map_err. Thanks for your scrutiny.

