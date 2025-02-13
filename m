Return-Path: <linux-man+bounces-2433-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 565ADA33E32
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 12:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40961169B1E
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 11:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AADE120AF82;
	Thu, 13 Feb 2025 11:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NS9hDwKG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99594227E81;
	Thu, 13 Feb 2025 11:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739446479; cv=none; b=sU5cN/rLCn0nHNzOdH2KupJGj2OW7IL6qe4iL2VYkO3v+DEC0hjECmaFUsXkOitCqdHtK6zlId+cPZi/pz+fUnnTEYCF8mRVptziQM422MT2kW8gN4k5/Hiq/JK2SQ4gojE7bqWH8Ozlckn+9sVO+R++tKklIOazRiC48/GUOtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739446479; c=relaxed/simple;
	bh=9nPaMrqfswNTlXDbAV7j23H13B3ZzLBoIXjShb+MhA0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g5hWOdE6uAfzIX1HXENvC8/l1Ufu2VPdWqXsHqDDj3ztPoFxXb3U3JV2Iq0nOc9WImbxNRgTZLf1EpPYYtxolXRiacDEfDfXcO+ngT4Iv0l8HvWadfOaFeJMitaedsrl+3pSWFXABeOeFPX1gNtfkZrFyk0KsOfNpJDpLn2mhKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NS9hDwKG; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30762598511so8997821fa.0;
        Thu, 13 Feb 2025 03:34:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739446476; x=1740051276; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ep3ZDAZ6f2Fxj01U4KhpTyn+5eq3nIT1XayIlYkibQw=;
        b=NS9hDwKGx2kSm1M0o9apNO3DxuIi0xEl+W5wamOQJmWyc7LMGBdnS5hx0vP8GR6ahm
         7Z3YVMUQ59OHrXBQWjfnIo64dZKFhBbXtip0RZrEQqnIN7taJgOz3Yl+eyCRC9J5j3S5
         9zu9aKXx52gOXzpqX6OTr1aHchxrlkkBJpvc/yMk9nhUH4ZES0EjD7oP+8l+1CRcsPWJ
         PW9Lf/7luN6IMC1QjHEfuFUOHSOawus6b0xSy66juOMr5Ig/8VarNjwE0q7JOUzWqv5n
         3QjH7RK6lmoqaE6JubIwZ/sgfsVp3m/CzvL1n7eCOA6Zyn/Cjxvnj3+6wlX/mup3nMYt
         rQPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739446476; x=1740051276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ep3ZDAZ6f2Fxj01U4KhpTyn+5eq3nIT1XayIlYkibQw=;
        b=i8eyfZAN434VnYpGHc7LzcniIRiUC+R8todyS4qWuK6RWsq68HLgfPsp4QHvPOmuBD
         pjutWsGu5TIrP1J1DlFdiXG54yIATXgiIaaFI83iYMVTofgJZ8E7BWta4crMehoIXRT6
         O2QOBtgPIEryDBY8uAi4+0a9RwR/XFh7vEjvPHSiLCb10egpzvT/mrNkKeE6ItV9m/Es
         iA3UfT5WZ83vRqfC6OgwoNuXuQFVgI6avjDo1tWt5uq3wELOcCRvIAkK18kHCwHxyAjy
         Jd3IgYnJHgCG+oD6+xa8Tu07vck6V2Ib+VECW3mZEaB0zp98lUGmdHt1670SlAHLv3Zn
         Mc6w==
X-Forwarded-Encrypted: i=1; AJvYcCWHNK68bVjlBqFUaQKqWtkVa7XgZN/18hrb5EkO/+eVzCq8OtgiLJpumxCgYUFNzV0+XS0lblOXPyfHplOzqTA=@vger.kernel.org, AJvYcCWIAUDRhGiQFvax6/LTmsDKAI+HK6MobhNErU574bFfJnVaDEVD3YMmPUnMfIW1LWe9J3anAeLMJC9NPOY=@vger.kernel.org, AJvYcCWsRjUeNQoxyDdTzupDSiNN9zx0F9FusM3xwH6ieRG2ogjZRNhgCLf+fUuZA2DaWSYBXvnmJLJv+prm@vger.kernel.org
X-Gm-Message-State: AOJu0YwCp7jaRP+wmmErJdwPEDu1gkBEC4eIi/8IUTQFewgsPTUZqKiX
	sZA7+nn6QrletCYy/rpqzV+WAcevnowPvqqUW0CHqBYMbKgIyclEbUnmmwzVl9g8uF8YiSB0mgN
	VuuqZtV++XU0qfgnwuaQC+GD3bqk=
X-Gm-Gg: ASbGncvNbsOVGOpDssIpa+Dj1q4lN1qpdHAMOZoBPcHEdwJ5eG13sQBPUDlZp++heH0
	sOy/ebwJAUJNzpAjL5gV1VYdAFl+USsm0+L28ciqj5o66w7aWYOxyHGXzeLn2KysC82IOZJft02
	WxJCWhCgOXIo7BrdC7Mev9K0JAS3T/ud8=
X-Google-Smtp-Source: AGHT+IH4HOzirp4VkegEKXaevcID9IjMTuag8kmVWRa3Qmt70ngOyzC/jjDLc3Lm2lIQnnNWyHFcOxxDsv7tVr/tQgQ=
X-Received: by 2002:a05:651c:220c:b0:309:27e:fc5 with SMTP id
 38308e7fff4ca-3090ddbfb1cmr7529901fa.28.1739446475263; Thu, 13 Feb 2025
 03:34:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250213-aligned-alloc-v6-1-4fd7f248600b@gmail.com> <20250213113024.3d9919e1@eugeo>
In-Reply-To: <20250213113024.3d9919e1@eugeo>
From: Tamir Duberstein <tamird@gmail.com>
Date: Thu, 13 Feb 2025 06:33:58 -0500
X-Gm-Features: AWEUYZkC9z1olQpM09jr9B3SiB81IYRl4EUT6EHZ7VC2z9_r0l_7dX1KQbpiICA
Message-ID: <CAJ-ks9mQG5pyEP+cnVxBkCDbfR_cecBZK0K456=Qw6Y03LuRvg@mail.gmail.com>
Subject: Re: [PATCH v6] rust: alloc: satisfy POSIX alignment requirement
To: Gary Guo <gary@garyguo.net>
Cc: Danilo Krummrich <dakr@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, DJ Delorie <dj@redhat.com>, 
	Eric Blake <eblake@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2025 at 6:30=E2=80=AFAM Gary Guo <gary@garyguo.net> wrote:
>
> On Thu, 13 Feb 2025 06:26:41 -0500
> Tamir Duberstein <tamird@gmail.com> wrote:
>
> > ISO C's `aligned_alloc` is partially implementation-defined; on some
> > systems it inherits stricter requirements from POSIX's `posix_memalign`=
.
> >
> > This causes the call added in commit dd09538fb409 ("rust: alloc:
> > implement `Cmalloc` in module allocator_test") to fail on macOS because
> > it doesn't meet the requirements of `posix_memalign`.
> >
> > Adjust the call to meet the POSIX requirement and add a comment. This
> > fixes failures in `make rusttest` on macOS.
> >
> > Acked-by: Danilo Krummrich <dakr@kernel.org>
> > Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module alloca=
tor_test")
> > Signed-off-by: Tamir Duberstein <tamird@gmail.com>
> > ---
> > Changes in v6:
> > - Replace unsound use of build_error with map_err. (Danilo Krummrich)
>
> It's sound, just not correct.

Changed. I asked a tangential question in the last thread but: do you
think it's possible to make build_error work correctly on the host?

> > - Link to v5: https://lore.kernel.org/r/20250212-aligned-alloc-v5-1-c51=
e0b17dee9@gmail.com
> >
> > Changes in v5:
> > - Remove errant newline in commit message. (Miguel Ojeda)
> > - Use more succinct expression. (Gary Guo)
> > - Drop and then add Danilo's Acked-by again.
> > - Link to v4: https://lore.kernel.org/r/20250210-aligned-alloc-v4-1-609=
c3a6fe139@gmail.com
> >
> > Changes in v4:
> > - Revert to `aligned_alloc` and correct rationale. (Miguel Ojeda)
> > - Apply Danilo's Acked-by from v2.
> > - Rebase on v6.14-rc2.
> > - Link to v3: https://lore.kernel.org/r/20250206-aligned-alloc-v3-1-0cb=
c0ab0306d@gmail.com
> >
> > Changes in v3:
> > - Replace `aligned_alloc` with `posix_memalign` for portability.
> > - Link to v2: https://lore.kernel.org/r/20250202-aligned-alloc-v2-1-5af=
0b5fdd46f@gmail.com
> >
> > Changes in v2:
> > - Shorten some variable names. (Danilo Krummrich)
> > - Replace shadowing alignment variable with a second call to
> >   Layout::align. (Danilo Krummrich)
> > - Link to v1: https://lore.kernel.org/r/20250201-aligned-alloc-v1-1-c99=
a73f3cbd4@gmail.com
> > ---
> >  rust/kernel/alloc/allocator_test.rs | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/al=
locator_test.rs
> > index e3240d16040b..e68775078e90 100644
> > --- a/rust/kernel/alloc/allocator_test.rs
> > +++ b/rust/kernel/alloc/allocator_test.rs
> > @@ -62,6 +62,24 @@ unsafe fn realloc(
> >              ));
> >          }
> >
> > +        // ISO C (ISO/IEC 9899:2011) defines `aligned_alloc`:
> > +        //
> > +        // > The value of alignment shall be a valid alignment support=
ed by the implementation
> > +        // [...].
> > +        //
> > +        // As an example of the "supported by the implementation" requ=
irement, POSIX.1-2001 (IEEE
> > +        // 1003.1-2001) defines `posix_memalign`:
> > +        //
> > +        // > The value of alignment shall be a power of two multiple o=
f sizeof (void *).
> > +        //
> > +        // and POSIX-based implementations of `aligned_alloc` inherit =
this requirement. At the time
> > +        // of writing, this is known to be the case on macOS (but not =
in glibc).
> > +        //
> > +        // Satisfy the stricter requirement to avoid spurious test fai=
lures on some platforms.
> > +        let min_align =3D core::mem::size_of::<*const crate::ffi::c_vo=
id>();
> > +        let layout =3D layout.align_to(min_align).map_err(|_| AllocErr=
or)?.pad_to_align();
> > +        let layout =3D layout.pad_to_align();
>
> You're doing two `pad_to_align`s.

What I get for going back and forth about 10 times. Thanks, Gary.

>
> Best,
> Gary
>
> > +
> >          // SAFETY: Returns either NULL or a pointer to a memory alloca=
tion that satisfies or
> >          // exceeds the given size and alignment requirements.
> >          let dst =3D unsafe { libc_aligned_alloc(layout.align(), layout=
.size()) } as *mut u8;
> >
> > ---
> > base-commit: 8a5aae7dbbfb612509c8a2f112f7e0f79029ed45
> > change-id: 20250201-aligned-alloc-b52cb2353c82
> >
> > Best regards,
>

