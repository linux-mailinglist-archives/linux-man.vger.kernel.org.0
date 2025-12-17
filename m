Return-Path: <linux-man+bounces-4437-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7B0CC8A76
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 17:05:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5517330B0BB0
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 15:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6B9134251E;
	Wed, 17 Dec 2025 15:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dm5czdIu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED72F33BBD0
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 15:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765985871; cv=none; b=B0O7Jk3FgUPXhtk5jkoL7fziJ7KiufurCrcbZdHrLNAmKBvBZoS2yqrwXzYoEi3bo/8zBZ73xQ0sod6b1q3vFZLvBzwNiAEpyPynpfN11s6QfvOM/v0hrJ3Cs+QFBPmASqFcIL0pdsHqbAKDrz7IpiSaE+fBxs/Mt9yXzxcPjjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765985871; c=relaxed/simple;
	bh=kcVUZtPy9bxv/O53zTd3NFJ8QpNqaz08RctxkuW1aUA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UkAXEGMzCXayI0V8ZGZHqaarRN56MP7X91kiqSUe/8v+YjVVqDXaYZ4Lku5gSPCBs9BFL+WimGnL7vnE5wC34NoabyKez/ghTyT6VAtRSlQKBkzBrM6xAkdXWhdUfbhldHqw1HX59rMsYRbH2zW4dZaAozPz/2wSpEWZcuYWk0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dm5czdIu; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5de0c1fa660so2050226137.1
        for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 07:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765985867; x=1766590667; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OfTZsrEJUws1oSNsYazV2GKSOwQxQ74IyBgE7/lrx4k=;
        b=Dm5czdIuiYQ8zsZ7nPmhluuPK3Nz6zteqeybhF3Hc76UlkJ/ducTFITbOHv1ipwszq
         NLH2YIAzE8VrVzufqFi66rgVGeh8gN/VZ8XnH94apCPP4coKFmkZ9znd+7mdRMuI4zup
         8j/mnIxPn/GzP966m2PBjTTbVx7mDQ6KGTRVCYt2+bv1ga3MLaeDgT2Zv8sLkjqo9Buv
         fQfDqYAcz2EyLiCkMrNxcjrO/gG2HKEHic+MXpQ0Vx/0cIrCaWP+s/vF7LGfF1YjdleT
         9i6smwOmxSr0yP+sK6sMwJVmU9ZGF7YyLYpFM9+gAm78mkzQ7PCznPqYkcdApNhunpiA
         KHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765985867; x=1766590667;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OfTZsrEJUws1oSNsYazV2GKSOwQxQ74IyBgE7/lrx4k=;
        b=NSIaaO/94wG03pB2HtjjtsuyYbS3mtpm5FGq1mPTE9eyp+TWFqCIHxOpIBuKVzE00y
         TzUCgxYlx85ewNoiOZIjRMT+zda3PkImSryRcELERK+jG41nxp8tq8bxWoxWP52u4irv
         syjs4eNRK14E5vCTAddjRknz9T5CT4YQmjm6WeirV8tQqiH1hJF3Gec4QTiAUawiroPo
         GCY8yUBE5LEJybvYRKh1KAoCnRn7ub+C7/qUkB+pAXBr4XlyaewwMHwT7JDsITDdHs8p
         XXEsqhxy8XIaGgEbphi45NrUus3bCMp2L/CGVSVP/5gAz5Wth7I+75hTzuS6fbANbVrj
         aWbw==
X-Gm-Message-State: AOJu0YwzLOm6dy/PdxD6Y9B4h1+6cUniRMe/uxYPsYgINs7HQ8t8zjpZ
	nk0MGw9mCsnK4zHym3M52zyAzSn9fMvdE3TSguigJjlUBTvhl2vl6h0bSh+L1E9VzsybO3JvM4Y
	C1e/8P5O/n+8tJj2KkR+0Un4r8bg0USs=
X-Gm-Gg: AY/fxX7l+ROCKVFTNzu5jnT0cFMam3KxxoSvqpkFuYr28GJTEqIeXNn4z7ORrnP80IV
	ndTk3fxD8hzhcK4Q5ZCw9ocHMdU5o8OrzS1Zv7Hi/LqHVPUyrfn6VjANDWuFP367aZhntIGs61B
	nqAdALLThiMOneCFevKJiaT6boRVgJ4hkma03N2iiSLEe/LjwbdL4YxDg8cPZYXKZKoE1HxMiTv
	oKERYTAFcC4s5Avhz+ADgwV3z0n8WcOXgLIsNhLvW2i9qvz+e+chOzs7HoF8O16d5AAaddWiNTJ
	aEayKed/I11Xnd7JUnlOaF4nww==
X-Google-Smtp-Source: AGHT+IFv9OFrxwiI+DZDnTFowxqYQnFSNyj1O6/Aj639948AeOzU8r9djlxVcSl4aAHJhNmL50YKmScj0tSAvVJijXM=
X-Received: by 2002:a05:6102:6888:b0:5df:af0f:30a1 with SMTP id
 ada2fe7eead31-5e82783f3e6mr6323134137.31.1765985866722; Wed, 17 Dec 2025
 07:37:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1765370035.git.alx@kernel.org> <cover.1765979316.git.alx@kernel.org>
 <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org> <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>
In-Reply-To: <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Wed, 17 Dec 2025 16:37:30 +0100
X-Gm-Features: AQt7F2q1a6LKCwB4O16G-FjxGylLn8P3ZZ6CXk64gsG9XxbKIIcFQtVwRz7Q9nA
Message-ID: <CACGkJdtg9GhOjkqKspKRscebpyAA87=zTJzcZEYYGW5pr-uLtQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, 
	John Scott <jscott@posteo.net>, misc@openbsd.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 3:42=E2=80=AFPM Eugene Syromyatnikov <evgsyr@gmail.=
com> wrote:
>
> On Wed, Dec 17, 2025 at 2:51=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
>
>
> > +Otherwise,
> > +the behavior was undefined.
>
> I think this statement is incorrect, or at least misleading, because
> the current reading (that includes DR460) of ISO 9899:2011 explicitly
> states that the function must fail when the condition is not satisfied
> (and that is what OpenBSD has implemented), and that also makes any
> permissive specification non-conforming wrt C11 as it is now. But that
> is also true that C11 _used to_ specify a failure to conform to this
> onerous restriction as UB, which rendered the programs malformed, but,
> on the other hand, kept libcs that implemented it permissively
> standard-conformant.
>
> I understand that I am unnecessarily conscientious here, but I think
> it is important to articulate what the standard both says and used to
> say, as it is the reference point for the language implementations,
> the totality of which an application developer can neither observe nor
> inspect, and relying on a couple of anecdotes in terms of
> implementations may lead to issues down the road. I guess the outcome
> of my rants is "don't use aligned_alloc and C11 together", or
> something along those lines.

Correction: I was thinking that there was a published TR similar to
C++, but apparently there wasn't, so the UB-including wording has
never updated in publicly-available iterations of C11, the next
published version, that is C17, has removed the requirement
altogether, and the version with the
failing-on-size-non-multiple-of-alignment requirement was never
publicly available similar to the ways standard drafts are, while
technically the wording existed for two years before the adoption of
N2072, hence my blabber about the "final version of C11" is
nonsensical;  however, the point about the standard requiring three
different things still stands. My apologies for the excessive noise.


> > +.IP \[bu]
> > +If
> > +.I alignment
> > +was not a power of two,
> > +the behavior was undefined.
>
> I can't find a version of the standard that mentions the power-of-two
> restriction, it pertains only posix_memalign.
>
> --
> Eugene Syromyatnikov
> mailto:evgsyr@gmail.com
> xmpp:esyr@jabber.{ru|org}



--
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

