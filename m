Return-Path: <linux-man+bounces-4043-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B86BB9652
	for <lists+linux-man@lfdr.de>; Sun, 05 Oct 2025 14:45:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C215718969E2
	for <lists+linux-man@lfdr.de>; Sun,  5 Oct 2025 12:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34E9F1C69D;
	Sun,  5 Oct 2025 12:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O20S3wDa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3772D3D987
	for <linux-man@vger.kernel.org>; Sun,  5 Oct 2025 12:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759668351; cv=none; b=WqevhV+rxxtRW4LJAZQ8/7LAbuRZmFav0B1W1FfxzbGLnJtwljp71SG75UTiZ7n04qKMKOHCS+Iujm1wBxQGt3wOOty7y+r7JvL0W+NDLuGqMG8733KxABbTkcHYFeAA1fxHzpekoIueu9xBm3Jnm/F64zqwcK1nioiclwTQxsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759668351; c=relaxed/simple;
	bh=fdo+pY4lQIdmTrZ/fPbAVzxndBOFuJ7wVIjifdMCb0g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=acnH89KvifTj36FRjU5wyDAfwjWPZHuQWuBC4fPs/DUw9zj9JT2btEFgivG1yKbwj/b4s+aM+IEcVz051N9Au2iGl2GVDb5rgMca6hAI3e2OiSKeR6jZ9RaEKRb0wXGaTplkWCEKPAVhc2udI3naVkgy36CfvvI4PwpV0hIHqvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O20S3wDa; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-71d603cebd9so49741327b3.1
        for <linux-man@vger.kernel.org>; Sun, 05 Oct 2025 05:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759668348; x=1760273148; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e5Koz0YOLclX1t3WEaj4LsQ/O5ymNRhhgN/FPWFX3M4=;
        b=O20S3wDarxGyZ21T4AD1JP+NEYRfdLVwZkL/OtHI+8yZemfO1E1iPyipgZfjrO5ZuZ
         3n/GQbQMXtGN2FIFShZKuZCglf58yBIO96F+zCnEJDe7howgr9VXGPva8nuO7Wu4hUhe
         AFfU6/UZhHfeb3DKUgBFARe+ZAv15qkzGQItpx45JpmgRQZzo0nTC4u/GgqoTX1tW8Yp
         dzi7Nwzg6l882vKf4uuCM6VbQ5bsnhQIajmdRvvd5iJarsUHHAd5v4GZV6fwwwgLXtDC
         4vRJvUAXdt7GyblATuSYPaeYwTCCelmrB+27T6ifWCNwGt1KH1lF3ZUOSnh0Gy5gLBd4
         0sWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759668348; x=1760273148;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e5Koz0YOLclX1t3WEaj4LsQ/O5ymNRhhgN/FPWFX3M4=;
        b=evTn/Uo6VooAFXBAw3YVPdzCzEbHlZQpI6+GKoeFU+SkzyRlp6hL4Dx2S11qG5+htL
         w0yhyUOWOPzDJhxaY/Jdpi3b0U6SMH53L0fQlSka8SuoGlq67qaXC0fF1X/I125zCI+S
         Kq4tjvB7Fwa4qlRNbo072OYKOiuxagaY20vE8cA9bYF/7GRICtNzjUgjjduUl536dOlC
         77xsUUSoOkLz2B3Xl1WMn1gg1wjpuYdmtMuKUUOny3xDRH/6t4i9cVG8Z2pBBuhlXYUG
         1seOd3OAtuX3fywOJX4WrABG38x85fiKQdjso74lILqmfLibOKKIircj1WPmIbf5ZGGk
         EakQ==
X-Gm-Message-State: AOJu0YwRMSCBv8BS7L4whl0TyKHaFjcomvrCqFWj9UmKHueT/BDNz6qa
	dWqoJtfZgKam8QMLOM6UIKuTRKTb6hGCgO0zbZzoBbvBLBuCAd2Z7EJ5mypX6w==
X-Gm-Gg: ASbGncstNgcgZOSUKmajYSYSCzQR5tSDN8FtWA+IQraNoHRI8+sZwGWGmlSdu30JKVg
	XAqa3ZIcagrmoTM6+dRpk5ozz+f18erccL50KQpxMb3y8DPb/tKOmHhgSnKmLIcdHQQK0VLQB14
	9HpKrM4kR4K0lufbRsBaetj8rHE0tDPft7yhlYHXQTS8M070RCp6xxem1kn3LonNS5henTeRYiR
	KzBky+80QstCaDcrdnv8Kw5Y+NYbAsg4fBVh5b22DyHUc3vXxw4yOyqe9yJb4vLKQDN2nPXYpqz
	jz4+E/jlXe1m2Vn7Vhwb8TUCo18LYMr1dn/2Sb1L1aKCqbT4np3pl4FJOWKZt9xtqU2hmUOpQYL
	ye9LFo9nC5axxWfymcFWHWtugDE1ltReol+pM+EN3Sd8JE/w=
X-Google-Smtp-Source: AGHT+IHNCyno7NI0LjLR3IDVWorxDgLLbdLe5a3eMth/WY5wwc8Sg0V6pzdET6MiEl818qTB/TWa6w==
X-Received: by 2002:a05:690c:a90:b0:761:1488:99dd with SMTP id 00721157ae682-77f94564737mr99943717b3.4.1759668347759;
        Sun, 05 Oct 2025 05:45:47 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-77f81e3bf45sm34352037b3.56.2025.10.05.05.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 05:45:46 -0700 (PDT)
Date: Sun, 5 Oct 2025 07:45:45 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: tbl(1) issues in console_codes(4)
Message-ID: <20251005124545.hagkbqas5devc3iz@illithid>
References: <xl24ubmnak3ygqgnlh74z6gry4vi7dssvmuo2itsud6y3lirrd@cf74bnypoqmp>
 <20250925221012.lss5ixmixnqrnrwq@illithid>
 <yzqe6a4f4nvlto5pck454sc4l7vtakyot3qsq3bxu6dgscocdy@s7lzwinqdjsx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aa57pthcdarp76ja"
Content-Disposition: inline
In-Reply-To: <yzqe6a4f4nvlto5pck454sc4l7vtakyot3qsq3bxu6dgscocdy@s7lzwinqdjsx>


--aa57pthcdarp76ja
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: tbl(1) issues in console_codes(4)
MIME-Version: 1.0

Hi Alex,

At 2025-10-05T13:09:25+0200, Alejandro Colomar wrote:
> On Thu, Sep 25, 2025 at 05:10:12PM -0500, G. Branden Robinson wrote:
[...]
> > If you want to avoid overset lines with tbl(1), you must either
[...]
> > 2.  use text blocks.
>=20
> Thanks!  I've done 2, of course.  :)

Sometimes they're the best tool for the job.

> > I would format the document with `MANWIDTH=3D65` and, for any line
> > that still oversets, stuff the descriptive table entry into a text
> > block.
>=20
> I've done it with MANWIDTH=3D72 for the commit above.  However, if I go
> down to 64, I see some cases where we're using text blocks, and
> groff(1) still doesn't do a good job:

Well, first, I personally wouldn't ever take the MANWIDTH down below
65n, except to troubleshoot a macro package or the formatter itself.

A line length of 6.5 inches, or 65 ens on a typewriter using a "10
pitch" font, which amounts to the same thing, is about a 55-year-old
tradition in *roff.  Maybe longer, depending on what Jerry Salzer's
default for "RUNOFF" was.  It's pretty deep in cement, like the
presumption of U.S. letter paper size.  Of course these things are
configurable (and I'm sad that the U.S. doesn't use ISO paper sizes),
but due to inertia and the size of existing corpora of man pages,
pursuing good formatting at a narrower line length than that seems like
an unrewarding effort to me.

Setting matters of style and strategy aside, I have a technical question
to field.

> 	$ MANWIDTH=3D80 man ./console_codes.4 | grep '.\{81\}'
> 	$ MANWIDTH=3D72 man ./console_codes.4 | grep '.\{73\}'
> 	<standard input>:130: warning: table wider than line length minus indent=
ation
> 	$ MANWIDTH=3D64 man ./console_codes.4 | grep '.\{65\}'
> 	<standard input>:130: warning: table wider than line length minus indent=
ation
> 	     ESC Z     DECID    DEC private identification.  The kernel returns
> 				the string ESC [ ? 6 c, claiming that it is a
> 	     ESC 7     DECSC    Save current state (cursor coordinates, attrib=
=E2=80=90
> 				utes, character sets pointed at by G0, G1).
> 	     ESC 8     DECRC    Restore state most recently saved by ESC 7.
> 	     ESC % @               Select default (ISO/IEC 646 / ISO/IEC 8859=E2=
=80=901)
> 	     ESC # 8   DECALN   DEC screen alignment test - fill screen with
> 	     ESC (              Start sequence defining G0 character set (fol=E2=
=80=90
> 	     ESC ( U            Select null mapping - straight to character ROM.
> 	     ESC ( K            Select user mapping - the map that is loaded by
> 	     ESC )              Start sequence defining G1 (followed by one of
> 	     ESC ] P            Set palette, with parameter given in 7 hexadeci=
=E2=80=90
> 				mal digits nrrggbb after the final P.  Here n is
> 				the color (0=E2=80=9315), and rrggbb indicates the
>=20
> But if we check the source code for the first one, we see it's within
> a text block:
>=20
> 	$ grep -C2 'kernel returns' console_codes.4
> 	ESC Z	DECID	T{
> 	DEC private identification.
> 	The kernel returns the string ESC [ ? 6 c,
> 	claiming that it is a VT102.
> 	T}
>=20
> Why is that?

It's because of item 7 I mentioned:

> > 7.  Stop using `\0` escape sequences to achieve indentation of table
> >     entries; favor `\ ` (an unbreakable space) instead.  We're not
> >     laying out numeric data, and both are universally portable.  We
> >     don't want to use groff's `\~` because we don't want these
> >     spaces to adjust.  Really, we shouldn't be using space to indent
> >     table entries at all.  That's what the `A` column classifier is
> >     for.  Using `A` brings the additional advantage that if a text
> >     block is in a column using that classifier, and it breaks,
> >     subsequent lines are indented the same as the first.  This
> >     advantage is unavailable with `\0` or `\ ` because you don't
> >     know in the document source what the width (line length) of the
> >     output device will be.  In fact, I'll attach a second version of
> >     the diff capturing that reform too.

The troublesome line is this:

$ sed -n 150p man4/console_codes.4
ESC % @         \0\0\0Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)

> > Consulting my Git checkout of `man-pages`, I see that while some
> > entries in this table use text blocks, others don't.
> >=20
> > $ nroff -t -rLL=3D65n -man -P-cbou man4/console_codes.4 | grep -E '.{66=
}' | wc -l
> > man4/console_codes.4:130: warning: table wider than line length minus i=
ndentation
> > man4/console_codes.4:330: warning: table wider than line length minus i=
ndentation
> > 29
> >=20
> > Those warnings will be wanting attention.  Also, I noticed that some
> > of the table entries overset _even though_ they're already _in_ text
> > blocks.  How is this possible?
>=20
> Yup.  I'm intrigued.  That explains why the entry right after the one
> I fixed was oversetting, even though it was in a text block.
>=20
> But I don't think it explains the ones I'm showing above.  At least
> not so obviously.  The entry for 'ESC Z' is the first one that
> oversets, and it's within a text block.  Would you mind explaining
> that?

It's the same problem with the same explanation.  The "ESC % @" blows
out the table width, its column uses the `x` modifier, and that column
is shared with text blocks.  Thus those text blocks greedily use the
width of the "ESC % @" row.

> > Fixing up a couple of spots where text blocks should have been used
> > but weren't (diff attached), I get the following result.
>=20
> The diff changes more than I'd expect.

To a man with a 10 kW clipper, everything looks like a yak...

> > $ nroff -t -rLL=3D65n -man -P-cbou man4/console_codes.4 | grep -E '.{66=
}'\
> >     | wc -l
> > 0
> >=20
> > I made several other changes to fix things that drive me crazy.  Most
> > are cosmetic.
> >=20
> > 1.  Stop using `ad` requests.  They don't do what people think.[3]
> >     However, _do_ use `na` requests _inside text blocks_ where
> >     necessary to defeat adjustment, because they work reliably
> >     there, and cannot damage the rest of the page.[5]
>=20
> Would you mind suggesting a separate patch?

Sure, I figured.  :)

> And why do we want .na sometimes?

If there's not a lot of real estate on the page/screen for a column
using a text block, adjustment can look ugly.

> Why is it necessary to not adjust sometimes?

I don't know if it's ever _necessary_, but it can be appealing.

> > 2.  Add paragraph macros before tables so that they set like
> >     typographical "displays".  This is common (if not universal)
> >     practice, sometimes done already in the Linux man-pages[6] and I
> >     think it looks better.
>=20
> I'll do this globally.  Would you also do that for 'allbox' tables?
> Or should I keep those as an exception?  (See man3 pages; section
> ATTRIBUTES.)

I don't have an opinion there.  I _am_ pleased to report that you can
exercise either choice and groff 1.23 will not betray you.

https://savannah.gnu.org/bugs/?63749
https://lists.gnu.org/archive/html/groff-commit/2022-07/msg00134.html

[...]
> > 5.  Remove trailing spaces from entries in the "Linux Console
> >     Private CSI Sequences" table.  This makes more efficient use of
> >     space and, for some screen widths, permits more table rows to
> >     fit on the line.
>=20
> Trailing spaces?  I can't find any:
>=20
> 	$ grep -rn ' $'
> 	man7/bpf-helpers.7:37:.\"=20
> 	man7/bpf-helpers.7:41:.\"=20

They trail the _table entry_, not the input line.

Inspect the "ESC [ 8 ]", "ESC [ 13 ]", and "ESC [ 14 n ]" rows.

What you want to look for are spaces followed by tabs--assuming the
table uses tabs as its column separator in the data entries.

> > so let me know which of the enumerated items you want
>=20
> Possibly all of them.  I'm not 100% sure, but please send them all.

Can do.

Regards,
Branden

--aa57pthcdarp76ja
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjiaHAACgkQ0Z6cfXEm
bc5zABAAmxrDyotf2KEkhzqcHEgUdWfIbUMcftowKP1fj4s30aLG0wPCgTKEHNOa
Qi1K/196pW+829TCeZesHQ9CfnJFGjbOw8oyHRSSM4Sci5qpgOpu8MzhSFXfb3jU
wMBtW9HJKd0RBJcQzleuH7JruCxLEMv2VFqmNnepQXkg7n3e187ByMlCcB7XwLlV
YSxn3xwl9lNmtRWvEthcw2UhIxU8c3rEDJeB+P9qf8OSUCw0ZF3PSqZazSSr4iR4
o1NkWsAy9i0vkB8dQs9I6HfEl4R3SqDB6CtQJVdR/xffaWlxGUdqBcoXJguGoh7C
DH0O6iWSbKaQvATAZzf7zKEFz8Au9ZFE29L39osZriaEpbEm1FGL84gAVFD7/xMj
p+jHlyWycSTBYoPo2JYS2eQlUicO0lZ2AbkvRVe01LvXuCc1ttZcYuca1CPLbl/B
oRR1zgLrfzlud3U3+vlMbmnJ//LNq1LjGWAcEW9SzccJIExUmIs1XvzylKP7pYJu
BalSfw3kRQ8KhDs+bvuy5lVlqSbS7l2IUM3CvzYIfGS38KaZGlWe077OF3zkleBE
zRTj6KXJn454D1VP4NPI3eBTgAxlizdbzC/qath5DkuGoTbZ5pqwUmi3PmUwFMzF
a1VYHGFn0WCrQkc5JMPJQr0PNXOYYoc1zmkfHIlE0ie1KRjOVBM=
=d5jN
-----END PGP SIGNATURE-----

--aa57pthcdarp76ja--

