Return-Path: <linux-man+bounces-4399-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F418CB4A61
	for <lists+linux-man@lfdr.de>; Thu, 11 Dec 2025 04:46:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A48B7300EA33
	for <lists+linux-man@lfdr.de>; Thu, 11 Dec 2025 03:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A815C20297C;
	Thu, 11 Dec 2025 03:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LxYxPySm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24371DB13A
	for <linux-man@vger.kernel.org>; Thu, 11 Dec 2025 03:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765424782; cv=none; b=rNPchSEP8H2r99Uc5zDJishCAH87dGVjecc5IezVaLw5LDoeePrqhLzbKxfmLPJRaxeI0/dtw02MK5IuaJuD6zW702l9uzIsEpTKUEMDn6bRgXbxT+Go+NxrsTxF8evsMxRyrHMzqF81cTQNtpghkk3TkmFXf/kidDMd0mSxMdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765424782; c=relaxed/simple;
	bh=mxK1UTm+znFtzT8XLxWKrIjAwaLDVVv00faiJ+p5+ys=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W7cATAjocCcUl0UP9HKO3fvi2b4fCy3UuGzrUIdSTUmK7LQkZl/do+ErXNH1I2pvCMq878QoBZvEoLjlJ7gOaOOK/MSa0ZiK+4PF0OpfJ4NXMRa5ABYb74Vbth9KaXhgGKwrtf/wL4a61i9mrDM3+7ASriNheCK6q7ceKJxu2xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LxYxPySm; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-93f5ca8387eso25672241.2
        for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 19:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765424779; x=1766029579; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o2lINuN5tbWlRzjvCVFrteHqK6sAAJ98eopKbunJG+8=;
        b=LxYxPySmJPCT6TTMDZcNhtyBw4tJVEDNnoSzNtJAOYbTYsa100GQ2rhn3ugsRBqq3L
         1fglkZXBuT0ZLsVsHmcpVj8MUQzgeWtf7uulplOf9Vyy0rLj5haQO/Ak1EyrE8xelYMf
         lW+7FSw7VHbTh2epaMTdt2bgT81OrJSDjw3ZpJ+Hf7jve8E5nb0RFP/yuINzrk7m7MGR
         vTs+lcuouL5GlUPRjq/mw73yvUxT55AzwUlZXaS2T+0ZCyujIUhKGTlKDw71OD0J+06P
         lacQj9D7JzFBkQQxQjmhywNeam04RCILIKMOsqybL6N5u9HEIa6FATnN8D3sQ06OJ/+E
         yDFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765424779; x=1766029579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=o2lINuN5tbWlRzjvCVFrteHqK6sAAJ98eopKbunJG+8=;
        b=bKmXoxReKSTWV5mAtteNPJm8unjrx/xOTZtrQ3QV5bDWLDUFRPad09X1D+AKEwN6My
         qndq5gexbn6nsZQ2LdGw0exKGeodk8GMP+DV02BNG+ORi56t1F9gIl28eu3VUpxR/sBJ
         69vTcZhDWcM1LU2My41No39Ik5Yeh+NHx0H5P2xXojiw9sOmVDCm0WJeZYqr5RXwDwmv
         z9KoGYXQZuBErWK80fpKuuTsyb1ooSHnHrW2WfNWlTR3tC6VmTHz7CQcbm+mpu0RcfIq
         Ld2ZKPeuG0SvyiU+GLJKJ7muWHftu2YljvLDip9vt/RYNdebPktg7FIiud9LjPCILeuG
         xMbQ==
X-Gm-Message-State: AOJu0YyUIFGChsGbmCwWjBpHgh1My29dS6WZEuoxYvVfWKSDIwoZn7Oh
	3GRl1sC1XhDEHg3Oe7GcXYi4IcosbVLDss602UjlQS9EUPcvmFmqjxj8lGmzUINmIYxIv6EKuVU
	6KoK/cXOtxLaZ8gUskhgrDX1kf9i+6XA=
X-Gm-Gg: AY/fxX7Sr+iNrdvMhzxOzOKXtqkS7n2ZVCoWtG39FBmEpF/mTvStV9oOC/EFMJE7j/h
	uVuyl9ekplS/nWuls5py06FtT1NC21/CmpWXaEAx+zH5shKKrDHuFCgOzOtxoiDD6T36zfSzTXz
	txT1WInllGqOMEfxLB5iLM9G4OPsxU1SLnqcUGKbc05gIqv2PleoTWx+64JDMAlUBea0hMlSbnQ
	FYL1y4phd3tJWxDfJIdlUmwQM5Ikp+tFwfmrzvKSQhpVVjwA/koPUOJvAfz0XBlkKZIwg==
X-Google-Smtp-Source: AGHT+IENIE3i/RixjG7YPkHshHvIjHbGG/PC5N/FuCcf7CHKD7mQ1BZc3HXs+NlxV2CZOgQ1n8soXWU6gUnA0PkK3Sc=
X-Received: by 2002:a05:6102:1529:b0:5db:ca9e:b589 with SMTP id
 ada2fe7eead31-5e571eed8c4mr1681076137.33.1765424779510; Wed, 10 Dec 2025
 19:46:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1765370035.git.alx@kernel.org> <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>
 <f3jvslzwzo56cg7mqtbdrci2nhzpqcn2tq6ukep4mk4bjt26tb@wbxdiviqasu3>
 <CACGkJdtqrbpSiqznBA116ZN5MPTzh-WQ-zG3fGpHgMeOKfs2bQ@mail.gmail.com> <yze7qnewrsbcpyomkzwdm7s6hgxtigd7i6pyofl22e5crbzilq@rbxb72ijj26f>
In-Reply-To: <yze7qnewrsbcpyomkzwdm7s6hgxtigd7i6pyofl22e5crbzilq@rbxb72ijj26f>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Thu, 11 Dec 2025 04:46:03 +0100
X-Gm-Features: AQt7F2pbJHuukHAaDN9ZEvvgfaAtfsMxrSja90FU_r5rqg5CJ1myF7mRH3NGdyw
Message-ID: <CACGkJdssK6kg4aTVvmKdFENehOxADvYkn6FwZ_qnZUcb9GSUmQ@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] man/man3/posix_memalign.3: Several fixes, and
 split the page
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 11, 2025 at 1:04=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> [CC +=3D Ingo]
>
> Hi Eugene, Ingo,
>
> The good news is that it just fails.  So far, no implementation has UB;
> it's only theoretical, and after the DR fixes, no new implementation
> should ever implement it with UB.

I do recognise your point (and, from a practical point of view,
aligned_alloc() is most likely fine on Linux), but still think (and
thus want to re-iterate) that the fact that at some point in time it
was, in accordance with standard, UB and, consequently, there could be
an optimising compiler that treated it as such, warrants a portability
note.

> Maybe the manual page could show a wrapper to workaround the ugly API of
> posix_memalign(3):
>
>         static inline void *
>         my_posix_memalign(size_t alignment, size_t size)
>         {
>                 int   e;
>                 void  *p;
>
>                 e =3D posix_memalign(&p, alignment, size);
>                 if (e !=3D 0) {
>                         errno =3D e;
>                         return NULL;
>                 }
>
>                 return p;
>         }

Uff, in terms of wrappers, it's difficult for me to advocate for
something, as there are many aspects in that:
 - To some, returning an error can be a preferable interface.
 - Some may want a bit more fool-proofing (like allowing alignments
less than sizeof(void *) or guaranteed upper bound for possible
alignments).
 - Some may want some fallback built-in, and that fallback also may
differ based on whether alignment is seen as a hint or as a
requirement.

For example, OpenSSL implements its own wrapper,
OPENSSL_aligned_alloc()[1], which is, well, some mix of the above
(with the spice of non-POSIX-platform support).

Personally, I don't see the choices made for posix_memalign() as
outright bad (for example, pthread has generally the similar
interface), just peculiar in the overarching context of other existing
memory allocating functions; however, if you want to suggest some
minimal wrapper to make it in line with the rest, I don't see any
particular flaws in the proposed code right away, looks good to me.

> > The other aspect (which is irrelevant to this
> > discussion, but doesn't adds points to aligned_alloc in terms of
> > practical usability) is that MS CRT doesn't support it at all because
> > it is oh so special in terms of aligned allocations.
>
> Does MS support posix_memalign(3)?

No.

> What's the problem with aligned_alloc(3)?

As far as I'm aware, MS CRT does not implement it;  there is
_aligned_malloc()[2], which returns pointers that are supposed to be
freed with _aligned_free()[3], and, I guess, it hints at the ways it
is implemented and the reasons aligned_alloc() is not provided.

[1] https://docs.openssl.org/master/man3/OPENSSL_malloc/
    Also, check the HISTORY section there.
[2] https://learn.microsoft.com/en-us/cpp/c-runtime-library/reference/align=
ed-malloc?view=3Dmsvc-170
[3] https://learn.microsoft.com/en-us/cpp/c-runtime-library/reference/align=
ed-free?view=3Dmsvc-170

--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

