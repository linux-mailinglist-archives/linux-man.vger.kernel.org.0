Return-Path: <linux-man+bounces-2392-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0391EA31279
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 18:12:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A70933A44FF
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 17:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BD2B26214A;
	Tue, 11 Feb 2025 17:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VbftSO0P"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231F017C91;
	Tue, 11 Feb 2025 17:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739293964; cv=none; b=WrkT1qsnmAgjBRJCIjHYeF/7D7ddRvWe/g1btIpe57FbKEPtR1WxXBSqh7q5q0uqehl89ScYOTGHmlwStmeyEI+Q+33rFoTQFP0vHCJbGGma1tIdXqKHopTmUBnx8CvS/8QDpjtIxA5AJoWBrl2y5T9SDZSGblEC62LsWqiW0nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739293964; c=relaxed/simple;
	bh=QhvuHbELYrWjE33zr6TiJbxyC/VyBVmfRLfa8dr6OWY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jSbNWqjbxBBH8rwP8F9fQzxJOPvSioKaHF1R2FoICTzrx9M4SoYXbvEo3ochD/TrZCERwK6VGuSKOQWwwtGqiLAvWMl4F1A0Sqd6DyrdKDYWlUmLTmoQzfj4aB6r2IryshW9xGXalgPzS6dgXgvjJIMzMzrPiLdFyyI9DloWb/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VbftSO0P; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30613802a04so58293341fa.2;
        Tue, 11 Feb 2025 09:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739293961; x=1739898761; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ivpSK4bGRxb7RARFAlp64dRU1xC3G91v3RY78RMBLCc=;
        b=VbftSO0PpdTcB/s+QPMWeAiFYMLyfNNm6h8nMkD4IAQUmjHr+w4TkFMZ0LfG6tZuCZ
         qszZM48lJxa+O9BoPkcWerw94UZ7dNktQQUDffIDp88WNhsf4E7NE01RcCZ9lM3xprIZ
         b92crz2mbin1jDbSh4hXzjTh+aUSzUUe455po4x8Ecfa+srIrIx9Ne6GtG3idNnCfZWU
         Q6Vnv5gDVPHcrpwDbiDR/3INRWAee/lXRdvRgoJ5x7gSYNCRe4y0sk2cEbmnI7TRvoMm
         2jIylOrDdm2XzvQbgv2atoZRIPOpVBiFgzygZ0ygKXuNkqK3NcGu1wVtZi3qE0LqMudD
         8bqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739293961; x=1739898761;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ivpSK4bGRxb7RARFAlp64dRU1xC3G91v3RY78RMBLCc=;
        b=XoHoeMbW3KyUMKkJNmEFWF8Wiq9km3YbSRgMtZumETuPrQeW0b0+eAEZ5+XgP32eM1
         u4Lq73kseg7/6vDsOYnReHHKt/mNNolojJabIw7ZL1d+RcgM+Hy9nxLR9+gNoNtanVaO
         edbJW6nXja3fTpHF64obxsiucS7+U09klkSgCFQRZBLS1jWh54j6TFMVkFGR690mfiQ6
         hiE5uLE6i/M+qRbBON9KLqZoOGF3DflxruPMe333tPakdRqXD3re6Vc6UNKS8FFrdi12
         60szVL5qbaUit/jWaUVxmVQ9YAyy6w1Rxxos6y61pNOKDX2TEmeIvxWXNm+3U4YqdFsJ
         yq4g==
X-Forwarded-Encrypted: i=1; AJvYcCUSUYeVusvVRmsnaxZe7ajkUY42xgdY19yCwdVA6tytyTEF3ink2kCzpjelbeajzZ1CNynlliQ8p6pi8l4=@vger.kernel.org, AJvYcCWRNeH+u6HSs0FbCE25K7TiyyA8ZLF3mcPcJeDRIMw+NIh7BokXuaUknA5gvFs12EG2B7dY/ZmedZp5@vger.kernel.org, AJvYcCX+Ag5DQmojMNXO8U9mD0pjLnSCtuihqhBONPNls0oQtS2kWvC5VJg1+M+LilvEhUezvaAh4oyqF8XmX2inxMg=@vger.kernel.org
X-Gm-Message-State: AOJu0YxJdPtdLt04XgoJQ4vIE2V2Oox0BOXKEvacsQJ8ndQ/Tjt/zT7h
	mCxk2R30wuwbsVkIpmbRYu6a/0sQGd9TPtRCS7zLMwa4QWhybzfzfv89poJEPvQ5Fxr8yL62FHY
	tXJjCuTKpBRu3jHX9FV4C/+1P2h4=
X-Gm-Gg: ASbGncv/ILhBCeTYuCQi4bsRsDyfBCql+UoZw1/XkxlNFb4haHVTqAyhXmfJ52bSvpM
	CIjDmpP0VVQsYOdozmjZYHTqbgEB7ksAPUm01NboQI9LRMW2Kq+n0lFRvV4ImFn2hvN1A5ROSsg
	srORKRFtkOGD1L
X-Google-Smtp-Source: AGHT+IGlzfpTa7xFQQqk0e6fl0B5vrzHG5+Z5wgQlSo/AQ5w5vLgC0bPMVS05DUa1+xkTy3oT43pwDZpa9/bF8tBo/Q=
X-Received: by 2002:a05:651c:542:b0:308:e9ae:b5a9 with SMTP id
 38308e7fff4ca-3090379da66mr1090821fa.6.1739293960912; Tue, 11 Feb 2025
 09:12:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com> <20250211165240.5f600eac@eugeo>
In-Reply-To: <20250211165240.5f600eac@eugeo>
From: Tamir Duberstein <tamird@gmail.com>
Date: Tue, 11 Feb 2025 12:12:04 -0500
X-Gm-Features: AWEUYZmZmLCKjFTXFN3mRyZTrSvv71KR_8H4uvLCBlBGSx_SmQrlUFK0kzO3fgY
Message-ID: <CAJ-ks9mDUb2zS=9Ojx5GFnmsqKBdKerZoPL86LhLNnKndfpaag@mail.gmail.com>
Subject: Re: [PATCH v4] rust: alloc: satisfy POSIX alignment requirement
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

On Tue, Feb 11, 2025 at 11:52=E2=80=AFAM Gary Guo <gary@garyguo.net> wrote:
>
> On Mon, 10 Feb 2025 09:55:19 -0500
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
> > Adjust the call to meet the POSIX requirement and add a comment. This f=
ixes
> > failures in `make rusttest` on macOS.
> >
> > Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module alloca=
tor_test")
> >
> > Acked-by: Danilo Krummrich <dakr@kernel.org>
> > Signed-off-by: Tamir Duberstein <tamird@gmail.com>
> > ---
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
> >  rust/kernel/alloc/allocator_test.rs | 23 ++++++++++++++++++++++-
> >  1 file changed, 22 insertions(+), 1 deletion(-)
> >
> > diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/al=
locator_test.rs
> > index e3240d16040b..1c881ed73d79 100644
> > --- a/rust/kernel/alloc/allocator_test.rs
> > +++ b/rust/kernel/alloc/allocator_test.rs
> > @@ -62,9 +62,30 @@ unsafe fn realloc(
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
> > +        let (align, size) =3D if layout.align() < min_align {
> > +            (min_align, layout.size().div_ceil(min_align) * min_align)
> > +        } else {
> > +            (layout.align(), layout.size())
> > +        };
>
> I think this can be more concisely expressed as
>
>         let layout =3D layout.align_to(min_align)?.pad_to_align();

Yep this works. Thanks Gary.

