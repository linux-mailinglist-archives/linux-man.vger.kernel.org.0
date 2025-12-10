Return-Path: <linux-man+bounces-4397-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EB241CB42C8
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 23:52:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EECC83017F2E
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 22:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147CD2D1913;
	Wed, 10 Dec 2025 22:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T6tqrWeB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF6026B2AD
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 22:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765407051; cv=none; b=bxACmyL338BY+n119w4ql1LSUqrLrplKZOFFS5zMrd3CUN7ZJoM61/7Pcs97Q05GaUq4IbpMvyOD3/hYRkzpB4F2XdExIJ/BO4W36fWoFIVrimjbVNEUeBePTEhppY2L16z5Xgtil3hg9qiKgnRF7IXEvXeliO5tEIVW4jt0Ams=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765407051; c=relaxed/simple;
	bh=ZJTERcXg2oogkBjMQ4XF/FoYjKZ9TJKc+ttp3wxmfdU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y+97z4uJNSK2BIG7/7DFx569Okg4nOR9AFWMJvbvS8vKr+fdQFihQ3mCQKFLXufIlU+xTNMjRa5nNYl76vWr8HfjRov5bP9lmUHMGDwJqDbNWDuAvG2YWGtYQntbIM/TLxW7RzPouxiiEVrawJPCs8Q/P83+A7Ij9g93ggY0yEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T6tqrWeB; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5dbd3dbbde3so221596137.1
        for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 14:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765407049; x=1766011849; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2hz/efmGMmfZYlF7ioBVp4+BDZ7+Xedi5wVR10Mh7us=;
        b=T6tqrWeBgMbysBQniGa4H6LtvGLS5eqGuDwvgITEtF5mOw3do3bhrtl71xbGwKMnYk
         L24R34EDeo4msEMicR2cg1Q0m5VnICUCBhaYnTwok8c3a92f02Y3x+sb8g/8WHB6fP9i
         h6/p3ZhR8618YAfHe+8Ohock+0uqEl9piNBiWCmcrNWOl2919KpQyh9I8RZ2nVzUAxsW
         YfU7GXLOzqtep3WGBJgfpKI9O99PxUqTt0fDGtCuZr6B8kSUbYyEaSCsf9pVgInGzERJ
         6E3SIBsR0+VBSRYsDBwT28JgotUfv+mgtgpWF3skQQ05RQI+1bFevp6epYP6Y7xdsfPj
         I1vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765407049; x=1766011849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2hz/efmGMmfZYlF7ioBVp4+BDZ7+Xedi5wVR10Mh7us=;
        b=VHQWCp2q8HiZqv1dQJDzuu+OAXrr//3PciNXLd7dKhTsuDZfnK92EtiJ8jSeDfbTn6
         Egjj0e+mk0vFhbzAkeRzPGAmQaWsa3rAjrrbTYxi4gG1tbeZ/J0VKsh3fq35rKVgNjTK
         nNfQ3B1NrN9A9opPKMrfxv6/3q2lBYy6Rr4AAmhsLvdha/21U3cnowyoCHTxk0joCCo0
         rclUTlDIBo1lXSXfJQOYIxS6HRGIAQtBw0IfjqillNHu+DI3x4pTxNP5jGZl5W/jS76c
         79BfGIy686fJzBGPafO7jnXvsA1YTY/ZyllEkCArRl9U6Nzg7CYs+25O6DV2llMnftoR
         DDBA==
X-Gm-Message-State: AOJu0YyCSIJ3AM6it3upH28OAR+uODdWn9ZL+X2WyEEUr+BAaJnAFSJF
	uspvFHSfWe0ELm9VJEDuW01l/f/KPX+ZJseLeGx1Ap2Z0pjyclNHL6kK0la7vBurjOjwNHjpnhY
	HCq3AbxacYJRcvLsP7nVz8vShoxn+Ces=
X-Gm-Gg: AY/fxX7UD3IG0C7s+hqbU1P5Dh0iPQGRHMjUqPmxAyPpdPEdfcwOCq2fY4NMzHZpHJc
	p9G4QH5f9EF6sxUCRhJPo8aqXwtCeiYUQQF1NIn/Ag80ETyDyFObLfc4xJ69OL7CEDVDk7IttiZ
	rpUBAtPEjvYfF/seV9eCFmqO9F5XMje+Cm0FH/gjdO/FSMhhsKApIlApk1IYR4I3egqgjHQOY7I
	j4ulKexQ35ULIR7oWODKFm9OiH7lqyjAXZlOz23VOeV5pIbbn+PvdZlBI491bODSskM6g==
X-Google-Smtp-Source: AGHT+IGNCXVMcQLzjNmWuYReOWhUDguTWlj2TK99mk+/gciJI54hcm5G1W9f6vklZz/McSJCt6HPK1nZiCdPh5m4tDQ=
X-Received: by 2002:a05:6102:442b:b0:5db:ca9e:b57c with SMTP id
 ada2fe7eead31-5e571bce1b2mr1557158137.27.1765407049023; Wed, 10 Dec 2025
 14:50:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1765370035.git.alx@kernel.org> <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>
 <f3jvslzwzo56cg7mqtbdrci2nhzpqcn2tq6ukep4mk4bjt26tb@wbxdiviqasu3>
In-Reply-To: <f3jvslzwzo56cg7mqtbdrci2nhzpqcn2tq6ukep4mk4bjt26tb@wbxdiviqasu3>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Wed, 10 Dec 2025 23:50:33 +0100
X-Gm-Features: AQt7F2rJEVL06XtE05LbbHLR3QLW1X6SmR386P9n61K9y-ZTG83rvz7cXMKztkQ
Message-ID: <CACGkJdtqrbpSiqznBA116ZN5MPTzh-WQ-zG3fGpHgMeOKfs2bQ@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] man/man3/posix_memalign.3: Several fixes, and
 split the page
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 10, 2025 at 6:12=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Eugene,
>
> On Wed, Dec 10, 2025 at 05:29:39PM +0100, Eugene Syromyatnikov wrote:
> > On Wed, Dec 10, 2025 at 1:40=E2=80=AFPM Alejandro Colomar <alx@kernel.o=
rg> wrote:
> > > From all of these functions, ISO C's aligned_alloc(3) is the only one
> > > that programmers should be using.
> >
> > I strongly disagree with this assessment; moreover,  I'd argue that
> > this is the function that people should avoid, due to its
> > inconsistent;y defined behavior in various versions of the standard,
>
> The only standard that was different was C11, but C17 --which is a bug
> fix, and thus, the same standard-- fixed that, and the standard has been
> consistent ever since.
>
> All known implementations conform to C17 and C23.

So, you see, here lies a problem, conforming to which standard? As an
application developer, I don't know whether requesting a large
alignment would lead to success, failure, or rm-rf-ing my whole system
(as the standard specified UB in that case before DR460[1]) by a
"conforming" libc implementation, because libc, generally, is out of
my control;  so, in reality, I'm only limited to alignments that are
divisors of the object size for "safe" use, which renders the function
useless for practical purposes. The fact that the definition of
restrictions has changed so many times and so wildly renders it so
toxic that I'd advise against using it in the foreseeable future and
just stick to posix_memalign, despite its peculiarities in terms of
argument handling. The other aspect (which is irrelevant to this
discussion, but doesn't adds points to aligned_alloc in terms of
practical usability) is that MS CRT doesn't support it at all because
it is oh so special in terms of aligned allocations.

[1] https://open-std.org/JTC1/SC22/WG14/www/docs/summary.htm#dr_460

> posix_memalign(3) is terrible, because it takes a void**, which requires
> a cast.
>
> memalign(3) is okay, except that it need not report invalid alignments.
>
> > and due to its limitation of size being multiple of alignment, that
> > renders it useless for the vast majority of use cases.
>
> That limitation doesn't exist.  It was a bug in C11.
>
> Both musl and glibc seem okay:
>
>         alx@devuan:~$ grepc -tfd aligned_alloc ~/src/gnu/glibc/master/
>         /home/alx/src/gnu/glibc/master/malloc/malloc.c:void *
>         weak_function
>         aligned_alloc (size_t alignment, size_t bytes)
>         {
>         /* Similar to memalign, but starting with ISO C17 the standard
>            requires an error for alignments that are not supported by the
>            implementation.  Valid alignments for the current implementati=
on
>            are non-negative powers of two.  */
>           if (!powerof2 (alignment) || alignment =3D=3D 0)
>             {
>               __set_errno (EINVAL);
>               return NULL;
>             }
>
>           return _mid_memalign (alignment, bytes);
>         }
>         alx@devuan:~$ grepc -tfd memalign ~/src/musl/libc/master/
>         /home/alx/src/musl/libc/master/src/malloc/memalign.c:void *memali=
gn(size_t align, size_t len)
>         {
>                 return aligned_alloc(align, len);
>         }

OpenBSD's libc isn't:
https://github.com/openbsd/src/blob/master/lib/libc/stdlib/malloc.c#L2336

And it is understandable, since at some point it was *mandated* to
fail in this case, and not be permissive.

I know it's likely outside linux-man's purview, but it's definitely
something to consider for portable application developers.

> Prior to that implementation, glibc had aligned_alloc(3) as an alias for
> memalign(3).
>
>
> Have a lovely night!
> Alex
>
> --
> <https://www.alejandro-colomar.es>



--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

