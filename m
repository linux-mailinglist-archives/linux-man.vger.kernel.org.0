Return-Path: <linux-man+bounces-2404-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0E3A32A54
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 16:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C11DF3A63CE
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 15:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF5821322C;
	Wed, 12 Feb 2025 15:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iQG4H6on"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873FC27180B;
	Wed, 12 Feb 2025 15:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739375013; cv=none; b=s/c2kjEzPTtGMmhTTOlymAHpjvkwJRlps9pTycf3356frozF5aPNhhMCQKeTFvN78tf82kj9ql9krcUTK6vYb6037FWTvncJn80q0GcTBcjvN5KiBU8tN9DdnqshdrM2z1Gh+O6C9bqjCjekZ2Jvc9NyoopIrsqI2Q2+Kbtaslo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739375013; c=relaxed/simple;
	bh=m8NYUagxBsz4lmM/QSJ4DoOEEIB1JMWs4WfWFrP/JF4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CaYScvUushBZjuTvp+m1LHyC9Hlm4dzvPl+bUA/vKAH3vi3NuTxDFRPZwisMgsmiPEmPZ7nK6XpSkn4O2GuNOd8Q38mh35pw5GMk2wp9z+OCY00LvGoWPpLSsD5RY8F64PpFlXp79UDZHIVntUr+8LNOW0oCMiAamXqAwOokmGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iQG4H6on; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30761be8fa7so63098711fa.2;
        Wed, 12 Feb 2025 07:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739375009; x=1739979809; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MrG1C3LGrXYCpjXYL+/7XXWmlMTY91eCJMvpBu5pHQI=;
        b=iQG4H6onpPY0iwu+PzatHpQ3+WRgex9vG7HyeBT9lkZwD9m9C12HBQ4xGv3BGN89US
         mEKrD2FGQKTpLada004IpKwtVE/ZAqPupKd/xxLDfQGdEZKLZ1arPPjTaxrlAmXBNP0q
         AA8QwX6yqb/90ij+rfj/aVSwJGjAmmRT5Bwn0/0Jc2YGoESOPDDqV0aXVe41ZR3170t2
         sTxUWSBGV/7O9ej9XlGnUMUcWltJs0Pi1OSw+2RqcOT0/hyJGYx+QShAT1EOV/D4XnB5
         ZukSkUhS4S+Q8oyiUN6IBncL2A/6MiV5i4o8GHqQzQJpgrj1s92D7vwsGe9QSOPT3tzV
         +w6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739375009; x=1739979809;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MrG1C3LGrXYCpjXYL+/7XXWmlMTY91eCJMvpBu5pHQI=;
        b=gIP3nofbFBHKqol6JKvRCN2cp4EfBILt1QoGp7vPBhqxYJsw38cXVlEGMzGOTjF0TM
         pnzjI6MWkmYkViZCsfRy9WcAZN9ZSKPvFzFwkIToRy5hQKJazGQj1fsMCD7QOzVD043u
         LoLqGqu54UIbpeHbGu8dbloe2KvxupKCAlUgdgu/ENpMCYs55kGVkTZgieRinR8P0z8w
         E3McY7pl2PYcM1VRJUNXfHRGtpd01GfKnD4TvCP6Eu8nIpdcYJDfukEWkBcb2LBMesrz
         dPhb/sEm1/I3Rtj3ZOz0tMiDSXrag4kGyoItBDhuO68vfrlMZgKprFVtzD//u3PFRP2Y
         W1RQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0zyT4VO8ralggL5bKb4Mbwkoc9UzR/lIcPH0gL9S/IO/siCPmJGQxgkfj8T7jXKSPDs1aecPaOxsq@vger.kernel.org, AJvYcCWhZIVz7lR4DJz2aihgYMZ1vLow+WYhhesQQ0ntTrp8tDb0qKcviS72be+TOZjWhFwmbwbmhj5zdgEezlY=@vger.kernel.org, AJvYcCX0iVdTvWfiQdqoCwg8+IpPmNjl7KfHtlYIvNp3MUWFBCSx9AnFGGUks4P2OTqUIS5Nulu0xpLG258i6fVpDEg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9QyS4r2wBmTYsW8dfWhMqw9SFx/CbQj308RdDmBAh5vPrC2Es
	UQM7AvSVmVvrJDahYzzG6rszYklWNF1cLtGZTzq03bJ4giPCnz4IzQay0I72+upMhtimjYMcZYZ
	UnZ4ei/TDI3xqHcpkjfyCQm9peKZjsiZ0SS0=
X-Gm-Gg: ASbGncsuPsXlR8S1RwyopXYc1Lfy9sPQsDYr84Om7Wd4+tLO5Nkbw3A1jFUQf5EYyOe
	9JnLTe4wswCXUer1EcN6PnBFT0eZFKa+T9OHrN+8HA6Kc1pY2jK4UZYF6pNL8sj50wMSJ1DevC6
	HPIpAOPzq50yVs
X-Google-Smtp-Source: AGHT+IHtRsXyzOiDPlRcKhxM3aGaz3M5wwLPjFvx1z8yJ//HzOHru8aLdvN8ryhSx0B8JwX+6hMSfVjGR/eF83bntYs=
X-Received: by 2002:a05:651c:4ca:b0:302:3e14:34c8 with SMTP id
 38308e7fff4ca-3090367d768mr13694661fa.22.1739375009337; Wed, 12 Feb 2025
 07:43:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com> <Z6zA9UNm_UckccRm@pollux>
In-Reply-To: <Z6zA9UNm_UckccRm@pollux>
From: Tamir Duberstein <tamird@gmail.com>
Date: Wed, 12 Feb 2025 10:42:52 -0500
X-Gm-Features: AWEUYZnUGf8pbONf8p-V9rV6mZQhf5ocwnQtCUgiL45XcZR51wEeqfhNcQw5Dq4
Message-ID: <CAJ-ks9kaZ=nwfNXexJxqGy+R6EKmn5xaft5rOpnUF94052n8MA@mail.gmail.com>
Subject: Re: [PATCH v5] rust: alloc: satisfy POSIX alignment requirement
To: Danilo Krummrich <dakr@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, 
	Paul Eggert <eggert@cs.ucla.edu>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org, 
	linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 12, 2025 at 10:40=E2=80=AFAM Danilo Krummrich <dakr@kernel.org>=
 wrote:
>
> On Wed, Feb 12, 2025 at 09:43:02AM -0500, Tamir Duberstein wrote:
> > diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/al=
locator_test.rs
> > index e3240d16040b..17a475380253 100644
> > --- a/rust/kernel/alloc/allocator_test.rs
> > +++ b/rust/kernel/alloc/allocator_test.rs
> > @@ -62,6 +62,26 @@ unsafe fn realloc(
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
> > +        let layout =3D layout.align_to(min_align).unwrap_or_else(|_err=
| {
> > +            crate::build_error!("invalid alignment")
>
> That's not what I thought this patch will look like. I thought you'll dir=
ectly
> follow Gary's proposal, which is why I said you can keep the ACK.
>
> build_error!() doesn't work here, there is no guarantee that this can be
> evaluated at compile time.

It's not guaranteed, but it does work. I could use some clarification
on the appropriate use of `build_error`. Here I'm using it to mean "I
want the compiler to let me know if the guarantees change". When is
that inappropriate?

> I think this should just be:
>
> let layout =3D layout.align_to(min_align).map_err(|_| AllocError)?.pad_to=
_align();
>
> - Danilo
>
> > +        });
> > +        let layout =3D layout.pad_to_align();
> > +
> >          // SAFETY: Returns either NULL or a pointer to a memory alloca=
tion that satisfies or
> >          // exceeds the given size and alignment requirements.
> >          let dst =3D unsafe { libc_aligned_alloc(layout.align(), layout=
.size()) } as *mut u8;

