Return-Path: <linux-man+bounces-4788-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B255D0D5AE
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 12:55:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 904DF30213C3
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 11:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1910C33EB13;
	Sat, 10 Jan 2026 11:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FLTMajPZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84AEB33A718
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 11:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768045953; cv=none; b=PSH+/O96bMY/v2jBZXtVmesq/zDJGbA6bUcrYYnOinMhQF33D27OksKy2YyobBJ50NVWIRirT0IDonSIm8FfLn40fp8BkyxvGFpxkQvyD4VcAqeFKVjfup/qPSPbbk6Ga7LxI94pxgM6AwJp/q0XKi+J755zItJI0BoZt31/Ltc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768045953; c=relaxed/simple;
	bh=pi2zOeGqgFfF+QKChdqSxTu3v15Djg5hGKSLuTkdsrE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZAtyMulTczRfL3kitpyXMq0TdzP1pXIXWdys/aNBt5hCbCjIECuXuidiwoqT/GOhiHbFKCYz+80IaDO/SDntt4I3Rb5MSOQEIHoLL4WMu3V4FF+x/PIne7PI1NHBZEz9JJ/uORNre0RXuGKfWIoo8OhKqFQv7iKd0BrvLLd60DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FLTMajPZ; arc=none smtp.client-ip=74.125.224.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-64472121ad5so3495063d50.0
        for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 03:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768045951; x=1768650751; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=556wawMtceSxvJN1ajz5nELE44Tey8wPAqFWi7wQfiA=;
        b=FLTMajPZeeGsRnFl4f1c9jcP+36GrQlBgDu6dZNQ2024BUcQ6jfO38K6oQqpCwvEHu
         wMxlSTEE6UdP+d4DLhIE1OG7KcDul9/j0wUOGKrsRYfnLGlciSREsXbuBkO9p+f6uKyp
         h4amZB2S1tGyU42g6QoW1x5HbMJbFe3o/k+XgH7/mkRq2XXHKyD+w8yu3xstDXK001vz
         5mwb7RhYHuWtecwsZNqkde/gy9c7BfVlq/Pgza+bHoCq+wr4QmOYOpDd8NgsB1wXSEVZ
         d4YXh2f8YhRdplM+17BwBoy7EghdDOGTnNJ7x2mr168oZ/BE0EyenUH5DUkgtrVIROpL
         KGqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768045951; x=1768650751;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=556wawMtceSxvJN1ajz5nELE44Tey8wPAqFWi7wQfiA=;
        b=c3XjVSmdKxC34J4WdAHF69uB/1cTM9vxp81N8jWudHC162glcHBwV4o7C4LasX8U2u
         bQ3UoFVVA1uyNYJSX/k+6BFx2dXp8qrFhTedtK+924R4TGKAUI/Yjnc/3S4nhvz3ug4f
         Bkpemt+F/TPjGZrowZ5aBrJRaHr615lJ8IBIW8O2Jrs2UpaNFHsbZgk182Bqvy2Hv33R
         qfCKxgGHtzHOU0697dKQhBp9AFqGSiKjFELwdUTi+jKb+S4CdNJtI0vdaXR3aj6ZGwaQ
         +sri4bvz/0dOH3GCI4fCQP9aFUIq4tiOuMqn/On8fYZl8hvtmLhJCS8h/3FTj5nUMhMW
         Ab4A==
X-Forwarded-Encrypted: i=1; AJvYcCWtOn8q6QHKkLdFuTcTPsO7NZgor8XnxtNqztQr+fghdpUjcDKnbInc0V1hrf88XaNgCt2HUtMykD0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2b8uWYZI8rDp4VW0GAiLxkWSDW5yWSJPXPYZgOgM1dyT4Zjip
	JSNivE2lv0F6SWerj4Z18Sri2WvKd9wK+4CQRZnPNrcdNQxLTlpN94e/
X-Gm-Gg: AY/fxX6LJtY2T3WpeaeEgqEUs/7/WLersYbvGz45NFh72APVfVyVic3GHmPjXUSfYju
	8Bi5bxygWuj7qSqCvCf76fbiYsHKgM7kXrpPgCZrBHnrVLtKNWDswPcebgyXgWA7eCUn4LTG5iZ
	3m7BOH7zmba9U+UnOihmPqKh5+FzTNtOgx5hGGG6SsEJqovHRI5oaqJt3xNdHmP3rjHTOkkXnOO
	luAfj1RrYJJRIZW7pw14jWO+R4HNP/M0hfR/hsSUG+busYERA0Srgh6NYF6pr4HtcfudwxW+2O+
	KhiOO8ADfX88KRjgRuQXpI26heUKyjxoJWcsVbIlxK/HeTjlIYISu91Nz5/h1KAcb7z5bOH8U4G
	sOwyw0q9BSm3VMzNon+WAP8mZ7fQfAfjsHB+AliOYRPUCuvPS+Rv9kpLW5Wn55fMtWWgfbsFpB0
	xF
X-Google-Smtp-Source: AGHT+IFJOPV9ShW2wJYPkY+qTdJdluu8OGCqULmz6lRF97D10M7t+yqYJqACGFFionV6A+kYzkoXag==
X-Received: by 2002:a05:690e:1202:b0:644:ca2b:b659 with SMTP id 956f58d0204a3-64716c89b6bmr10029841d50.64.1768045951497;
        Sat, 10 Jan 2026 03:52:31 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6470d89d607sm5647624d50.12.2026.01.10.03.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jan 2026 03:52:30 -0800 (PST)
Date: Sat, 10 Jan 2026 05:52:28 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: origin of "void *" (was: [PATCH v1 19/25] man/man3type/void.3type:
 HISTORY: Update first POSIX appearance of void(3type)
Message-ID: <20260110115228.bwtdqrpe5x3b2rrn@illithid>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
 <aWDZFvDvb-hAXQMJ@devuan>
 <N5rwikkzw2f0JXz95u_1kI4bAmDj9D2gkp_MrOGQRmYRpZUHBuRAP390fgTkgcNbzYe3YAfS3Zb-OT95Mc_XjSCLQwr-JnMM6fLmIlsN8NI=@pm.me>
 <aWI0djUqajn0xGZL@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k5alog6xhdqxyefx"
Content-Disposition: inline
In-Reply-To: <aWI0djUqajn0xGZL@devuan>


--k5alog6xhdqxyefx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: origin of "void *" (was: [PATCH v1 19/25] man/man3type/void.3type:
 HISTORY: Update first POSIX appearance of void(3type)
MIME-Version: 1.0

Hi Alex,

At 2026-01-10T12:30:13+0100, Alejandro Colomar wrote:
[rearranged]
> On Sat, Jan 10, 2026 at 07:57:49AM +0000, Seth McDonald wrote:
> > I know that the void pointer type was not mentioned or used in
> > POSIX.1-1988.  Instead, the standard used the char pointer type for
> > pointers to generic data.  POSIX.1-1990 seems to implicitly require
> > void pointers - at least for conformance to "POSIX.1, C Language
> > Binding (C Standard Language-Dependent System Support)" - by
> > including them in some function prototypes.
>=20
> > On Friday, 9 January 2026 at 20:34, Alejandro Colomar
> > <alx@kernel.org> wrote:
> Hmmm, since POSIX.1-1988 was already written after some C89 draft, it
> seems void* was incorporated to C89 in a late draft.
[...]
> Yup, K&R C 1st ed. is too old and I wouldn't expect it to have
> void*.  I have a physical copy of K&R C 2nd ed. (1988) and it does
> have void*.
[...]
> Being a scan [of 1e], it could be authentic.  I don't have a physical
> copy of the first edition, so can't compare.
[...]
> If anyone else reading the list knows anything, it would be welcome.
>=20
> Be careful of online copies of K&R C, though.  I once found one of the
> second edition, and it was fake (by comparing it to the actual copy).
>=20
> Much better to get the physical copy.  Although the first edition seems
> difficult to find.

I have a physical copy of K&R 1e, but unfortunately it is in storage and
not easy to access.  However...

I have before me as I type this a copy of Tom Plum's _Notes on the Draft
C Standard_, copyright 1987 (Plum Hall, ISBN 609-927-3770).  Publishers
treat years in copyright notices the way automakers treat them in
vehicle models, so I'd guess this puts the date of publication anywhere
=66rom 4Q1986 to 3Q1987.

In Chapter 2, "Comparison with Earlier C", on p. 24, it says:

	"A pointer to any object type may be converted to a =E2=80=98=E2=80=98gene=
ric=E2=80=99=E2=80=99
	pointer and back again without change.  The syntax for generic
	pointer is void *."

Tom Plum was a noteworthy figure in C standardization circles; his name
shows up in much literature on the subject.  I'd regard him as an
authority.

https://plumhall.com/newsite/phall.html

Looks like he passed away last year.  :(

Regards,
Branden

--k5alog6xhdqxyefx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmliPXUACgkQ0Z6cfXEm
bc65aQ//Wax77wfc+nevmlakqe4BI7bEdhvSn0NvqPFeg4cUcFvg0p7iHOmv2ZSi
L7Vr+Hnuhj2/JskcoOc1Ijv+CxtIF1mmhQql2q5p8ECdsq060Ie6dkajKjJmRg7R
grc4wFGJNbNnMr0OpPPL+z26bfY2Ki2+NpM3oMIl3Yau/T76fZZN/9o0Ca8c669i
sLnt77uwhS0zJ8HzXM6PKchpKKn99/S/BV8JtZabji25lqkFZ3CAYHNqgq7r0pEi
jMFFN2bDr1BlMlLyorl+L+XUSPA4e3qpr94xG3CAmNZXl1IwtxR0M0kyTHxXHuKB
C/LtE8r4fpzPSc3+FBZxaDlD9USvztWh+ans+svS+nR8kXdZ+v5br8eZhvIyXR5a
+W1bU4BAotGZm7gsQqlH3NLnpM2yyAX7bOrLSJjfhOz1T+ODJGFcoT+SCA4R5fC0
jRYubHJRRoJQombsuDz1sOJ4RGUwMmn42IrH7TBPtFvnqb7XIN6hjunerS+RenEW
yqsTfcH9aihD5/+jhJ+tENbifccDoz6uyuUOyc6tQeitYqEGR++wqtmcbZfwZnSS
NC5hVm57jMjBSHpzC2uvCDGGIQ8XozjTMXj4tgjoV/KT49WkIUV2KF2aMfD+ecLJ
u0/twQ9u60sWQ5dJR23yewNcfbbVnl975vZ9EIqm5XobzQ9aDbY=
=zw7M
-----END PGP SIGNATURE-----

--k5alog6xhdqxyefx--

