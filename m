Return-Path: <linux-man+bounces-2407-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8BCA32ED6
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 19:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F0397A1475
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 18:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B124E211A2F;
	Wed, 12 Feb 2025 18:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nLq3cmWl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF91B1F76A5;
	Wed, 12 Feb 2025 18:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739385926; cv=none; b=j8UYHsvHnDAuOlOMFAXfZXnBY5AJZxSk0Y8ePPkOaBYZ6t35jSgPegRgwL1eq7HEicnxmWIcKer0tiUKjGfD5wcJBVKvlrwSPn8isR72fOKYA7x9SbZAvejLEIaMJRLFdLaKC6iwk45vbirM9621jFZFa6uyTaSiA7x41pcDg0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739385926; c=relaxed/simple;
	bh=2eYmWLnzj9twu0Mfh6rt4+jaBja6arjQhRyjGy/z7OA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A6QofLZHxnIBOB+wKVQLDN89q4M2XDdvNt9KxjXxTgiKvzsclGWqL16waR5SrNBsW95soG4YJqfqz+4lF+ZCEM2PYLMFyHn1KSUFIgOKv4w0bSNr83gU1OCcRG93cpOl+GtX6ohHhxqdnWKa3G8xKrhgFFPaDFzU9CdTQ4ilmNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nLq3cmWl; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-308dc0878dfso484401fa.3;
        Wed, 12 Feb 2025 10:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739385923; x=1739990723; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wr7vsSEsGF7ruq+bhM/HPuV9jN2c8jyJNq3EMxGGUec=;
        b=nLq3cmWln6pgexmmKRqvCyo2Z91dim+8NQLBIEQ8x5Bbt4bUBwy51DXb6rTlyfvO+N
         OeryOCbcPBf5RK6n0GrOjwxIV8zlIUijCWqUKONn0cSm7HrciEczH1dNKLsjy5if/Kbi
         FqJEX01WlQ+7nPYdO4BTTuv8eQ1MntGmNOWMuKDN9tUKh/ljiIHeV/BA2KwMsHYmz1Jb
         +c6nDGVPwi4/aR8698XcW+gUDHDB+EoiHyEaTnzYJYWuHW6k8buJdS+Q2ZrmJpsEtCn1
         nVuC3NE9fMwCbi3gnuuUD+gb+4mL3Ms6GNJz2rA3ANtoU/lUPEgtP8z2PsNLiAENcfqH
         4wWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739385923; x=1739990723;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wr7vsSEsGF7ruq+bhM/HPuV9jN2c8jyJNq3EMxGGUec=;
        b=uHn3bc8mGIoW72dtUVWUEn1pNUp+oUT40l9uM2QSzLsIZF3x+4zKTwrMqZhd8aB0JQ
         ijJDog/KtulIKbav55KpIMAYVLFHCSnoyh6aTZ9ppKVBY987LjQaFKtGbVxBE77h1z8X
         qWCb1KQLo05yTiBC6aUzevVkaMVkBzb+8XN79vo2nuQys3QDHeGTJof0td+3QhVTustV
         Oq9fT+1etwlRDF6xKs3rkvDQPDJ4f2Udg2Khi5+PvExmSDM3NJXxqIEDxnozzWsh7NqY
         iDFLePywgisDMgzfZxl6NyKnGDQZkPoECAcSQUwzLF+PndDamGWnyYuppSJ+5j84I6z6
         djjQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2xldr2rbsd7Jw0FLwP3ujJoU40OjB9OJd4AKWMqcK6t5M7ktJSYVT9t7YnH3ysVhb+P6SkidUpmVPaO8=@vger.kernel.org, AJvYcCXIJ55yiV7os1Banhr6IEi8L2pvJf3nZi1SYoNjYcMpsGBCxO5RpG/EQz4sFksz/Ta5dAPrvpmSbwCqjB9De6c=@vger.kernel.org, AJvYcCXbFw/b10GDBdgHRBKeZx9xnb7JF3kf2NnYAQBwDWyiYszvRZ5k2KGwqjzv1se5rm7kO4UpDh5JY+I2@vger.kernel.org
X-Gm-Message-State: AOJu0YzpYEGCdZTBlDn5r51MXgztaWMJDIV4ihFxOacqPzCfsuXvh52H
	1oJhyiAdw6cvzsV1xoHpPJWSl2Xftf7ay7/MXUXPJ/71tEevt1/UcgfoZy2pLN95KTZCTqhuRpa
	AJf4ptrmrVcesbVZATMmwHE/Hlood2luAsSU=
X-Gm-Gg: ASbGncuq0Jd7N/PXdeIIFuI7+BrytL8FemTP+ahhReosjt729MyTkYdxXTgokJqLJG9
	3D2hQGnGZf2mzv2uzyFW7sWxQzLpL42Q5UYuJSLbluC7C6qxd3NS1JQBWJmUf01oGSMTWSis9wr
	s9wf6mDNDdXqQv
X-Google-Smtp-Source: AGHT+IFZO2EiwwRn/62buyMDhDd+5v/jkPywVWyxKpKHb1Fpz/iKMA8bZHDpPm1OeFfuLULFg5Za+7W7LT1OcXKN0w8=
X-Received: by 2002:a2e:a99e:0:b0:308:ee65:7f4e with SMTP id
 38308e7fff4ca-30903554dc6mr15780571fa.0.1739385922424; Wed, 12 Feb 2025
 10:45:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>
 <Z6zA9UNm_UckccRm@pollux> <20250212163848.22e8dcff@eugeo> <Z6zT6mZuxonewQ9z@pollux>
In-Reply-To: <Z6zT6mZuxonewQ9z@pollux>
From: Tamir Duberstein <tamird@gmail.com>
Date: Wed, 12 Feb 2025 13:44:45 -0500
X-Gm-Features: AWEUYZm0Qb4K72pqdFq1fsoU1hZvwF588BOOitpVC3zV7pcNaFxc5kGBTGYAHMw
Message-ID: <CAJ-ks9=-kP5jBGQ_A88VPU_HW9VkF=OCqcGufqrJobhJu8dhww@mail.gmail.com>
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

On Wed, Feb 12, 2025 at 12:01=E2=80=AFPM Danilo Krummrich <dakr@kernel.org>=
 wrote:
>
> On Wed, Feb 12, 2025 at 04:38:48PM +0000, Gary Guo wrote:
> > On Wed, 12 Feb 2025 16:40:37 +0100
> > Danilo Krummrich <dakr@kernel.org> wrote:
> >
> > > On Wed, Feb 12, 2025 at 09:43:02AM -0500, Tamir Duberstein wrote:
> > > > diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/allo=
c/allocator_test.rs
> > > > index e3240d16040b..17a475380253 100644
> > > > --- a/rust/kernel/alloc/allocator_test.rs
> > > > +++ b/rust/kernel/alloc/allocator_test.rs
> > > > @@ -62,6 +62,26 @@ unsafe fn realloc(
> > > >              ));
> > > >          }
> > > >
> > > > +        // ISO C (ISO/IEC 9899:2011) defines `aligned_alloc`:
> > > > +        //
> > > > +        // > The value of alignment shall be a valid alignment sup=
ported by the implementation
> > > > +        // [...].
> > > > +        //
> > > > +        // As an example of the "supported by the implementation" =
requirement, POSIX.1-2001 (IEEE
> > > > +        // 1003.1-2001) defines `posix_memalign`:
> > > > +        //
> > > > +        // > The value of alignment shall be a power of two multip=
le of sizeof (void *).
> > > > +        //
> > > > +        // and POSIX-based implementations of `aligned_alloc` inhe=
rit this requirement. At the time
> > > > +        // of writing, this is known to be the case on macOS (but =
not in glibc).
> > > > +        //
> > > > +        // Satisfy the stricter requirement to avoid spurious test=
 failures on some platforms.
> > > > +        let min_align =3D core::mem::size_of::<*const crate::ffi::=
c_void>();
> > > > +        let layout =3D layout.align_to(min_align).unwrap_or_else(|=
_err| {
> > > > +            crate::build_error!("invalid alignment")
> > >
> > > That's not what I thought this patch will look like. I thought you'll=
 directly
> > > follow Gary's proposal, which is why I said you can keep the ACK.
> > >
> > > build_error!() doesn't work here, there is no guarantee that this can=
 be
> > > evaluated at compile time.
> >
> > `align_to` will only fail if `min_align` is not a valid alignment (i.e.
> > not power of two), which the compiler should be easy to notice that the
> > size of pointer is indeed power of 2.
>
> From the documentation of align_to():
>
> "Returns an error if the combination of self.size() and the given align v=
iolates
> the conditions listed in Layout::from_size_align."
>
> Formally self.size() may still be unknown at compile time.
>
> Do I miss anything?

Formally, I agree. I tried testing (in allocator_test.rs):

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_allocate() {
        #[inline(never)]
        fn non_const_usize() -> usize {
            let x =3D 0;
            &x as *const _ as usize
        }

        let layout =3D Layout::array::<bool>(non_const_usize()).unwrap();
        let ptr =3D Cmalloc::alloc(layout, GFP_KERNEL).unwrap();
        let ptr =3D ptr.cast();
        // SAFETY:
        // - `ptr` was previously allocated with `Cmalloc`.
        // - `layout` is equal to the `Layout=C2=B4 `ptr` was allocated wit=
h.
        unsafe { Cmalloc::free(ptr, layout) };
    }
}

and it compiled (and passed).

