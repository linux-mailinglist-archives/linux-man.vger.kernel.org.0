Return-Path: <linux-man+bounces-2366-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57125A2D9DB
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 00:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C4DE3A7C2F
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 23:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E17C324338B;
	Sat,  8 Feb 2025 23:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZjMg2yTg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323F5243360
	for <linux-man@vger.kernel.org>; Sat,  8 Feb 2025 23:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739058384; cv=none; b=WVjoQ4F/B0/fszUWTkGH8DFreQhrbPS/Dc4WefHzwn6R48y1MI9lWv2xrwI2WdsGTWyOZQDW4fSdNUf0+VDSk7LXqnxnhxtR+Q0329QUILsOCevqCBdXL9bl/e57Wnql0IJNXSAyIWWTPnWQVyWZhhvRPHov5OFypSlKSnqaXZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739058384; c=relaxed/simple;
	bh=YXidNghgYpNmd20Ehf+bm3x5p90ahNJmGMWEUvs3F50=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d0Nsh4rOoQyNWMxekpdiQoyKgKsb8damGL4O/LqZLT9RwzJ0/XXCbZHAnCtooYpumXEDw9q4gYA40MX2uevZSaV17k6pn409vPL/LC7N0Ao+xhMfUotfJYXHEe1Du7n1u+L0aHnFJlnJLNXWqnMLjnSKD/YwX1GbBLuc4Lu3XZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZjMg2yTg; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-723442fd88aso976621a34.3
        for <linux-man@vger.kernel.org>; Sat, 08 Feb 2025 15:46:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739058382; x=1739663182; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N1dy1FHR5ukHgQ4t7OyT0/s1jIM3OydCn1wqboFuga8=;
        b=ZjMg2yTgAfaotMks1V4qbQugnXnM79WD+dOjAcO/ovieYbBsJkEFUG42iogWaa4jZ3
         mRkK3RmkoLk4Cus6KlllNwZaAPbI3ZPIIOebaZTi/KTTywTJ4QCSqfORpTHnhC7ZtNzc
         +OvbUkJOpQiDzq7GblGHc4O/wP1jsKsE9JO/BcRB+SXqxU8qDhoRGcjv8ZbT7GEsVqqa
         wRmIBBZwokNuR1ssfMyZrcKWggp2lZVw3ksn+Sc0Czip3ioZ6KNf817NVba9ev4M3jCx
         Rd0298IvejhIrXjRKKNNrjwC+tG64GjwuD2vNOju8MzDXT3VDk7EpCx8E4Qml/ZI6l84
         om2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739058382; x=1739663182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N1dy1FHR5ukHgQ4t7OyT0/s1jIM3OydCn1wqboFuga8=;
        b=eFguzW0aWKGpzP93CLr8qfYcY8Egv6W24sXXv5uSSdk3vTv/2GzhqXcO80nOwuOc17
         2MKWrAfNAVmJcIk9cD8sqwZjP+ySTCjZ5GLYEVK71goqr2WYLEHQpyLkxD1MGnvC7K4d
         TZ1WGBTS21HnbNKvrlEfZz7zfAD9YAmrCtmxb3nXURxf+TaCNqIR5y9ePrn3L7pIi+3G
         alIncB0dtP6dxUJgtGMOuBJ+t1Ye5pGS5TepT0aQ1yM/GrljyZREPQlQOSSO+sIu/7CE
         UJ3eyrKQiTruRh6SCCqEBpAUcQFwhYstpmEulILBV5ZhMdHvUL2KLR1ZhkjeGYm5v/BQ
         mVww==
X-Gm-Message-State: AOJu0YzODqlcmgqCKiX6fqqCNq8zfXsbj3jL5eUsornToyFkUE/7miKn
	7F7h1TR3YYMD35wRlcBvuF+ywh9MOpo7SpNWVZBP4412xL8FwuxCYnhMBw==
X-Gm-Gg: ASbGnctLtTvoALWAdpKZWQmnCVaQRBWXVf5rxpnBCAZapm0LeIsWgWreT+XleISUptA
	txqurcNlzhbQxIL2khMjoZJzCXb1JpqlZxWoCQndmjxOa40GiwYbStvQiB/FnmogOv4mnCu7Itj
	5e9nUMkY6VEfns8oTxArtpwYuZti3bRmyvk0D7aqLi8NyrE4AEaPVlZBHmcFEVmudRWQGOGwOUJ
	tlUjziI8rRz5NahHe8YB21BpoBdQsz39UfqWXm0ih39c0byc2ttY4qxc9Fo+FVb/OeMtAuM6pFF
	htoChQ==
X-Google-Smtp-Source: AGHT+IEGXVMheyp8EBb4IbxNBDPUdNlHVDWaTmEPTbCXhtJDmi1dgDjYwIBtXZRJotNB3drDAmhb2w==
X-Received: by 2002:a05:6808:1709:b0:3eb:5d13:f688 with SMTP id 5614622812f47-3f3923c203dmr5807498b6e.26.1739058382034;
        Sat, 08 Feb 2025 15:46:22 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f389fd6712sm1525684b6e.45.2025.02.08.15.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 15:46:20 -0800 (PST)
Date: Sat, 8 Feb 2025 17:46:19 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>,
	groff@gnu.org
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
Message-ID: <20250208234619.a3zfan43cawwhae2@illithid>
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <qdcjd7falwasz4fakmt6mraw6omkt3gdhfi5o4teigxwobtoqq@ga5bgz26yoas>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x6fhmgmktothd3kn"
Content-Disposition: inline
In-Reply-To: <qdcjd7falwasz4fakmt6mraw6omkt3gdhfi5o4teigxwobtoqq@ga5bgz26yoas>


--x6fhmgmktothd3kn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
MIME-Version: 1.0

[looping in groff list because I bring up grotty *roff details]

(in both senses of "grotty"!)

Hi Alex,

At 2025-02-08T23:57:07+0100, Alejandro Colomar wrote:
> On Sat, Feb 08, 2025 at 11:44:43PM +0100, Alejandro Colomar wrote:
> > Personally, I prefer tabs for actual programming.  But for manual
> > pages, we can live with 4 spaces for $reasons.
> >=20
>=20
> [...]
>=20
> > +Description
> > +    Indentation
> > +	Use 4 spaces.  Ideally, tabs would be preferred; however, they
> > +	cause 5 spaces in manual pages, which is weird, so we use 4
> > +	spaces.
>=20
> On a side note, Branden, I've considered changing the manual pages'
> EXAMPLES' source code to use tabs, and let the formatter do whatever
> it wants.  Do you have any opinion on that?

The behavior of input tab characters is well-defined in *roff, but
defined _weirdly_ to most people's sensibilities when filling is
enabled.  I won't quote the documentation here, merely point to it.

https://www.gnu.org/software/groff/manual/groff.html.node/Tabs-and-Leaders.=
html

(This discussion is somewhat elaborated for clarity in the forthcoming
groff 1.24.)

_If_ you advise the use of tab characters _only_ when filling is
disabled, as, apropos of the Subject line, is the case in (displayed)
code examples, you should be fine.

However, you will get 8 character cells per tab stop and I am _not_ sure
it's portable to expect, or to try to configure, anything else.

For example, grotty(1) has the `-h` option, which is accessible via the
MANROFFOPT environment variable supported by man-db man(1).

     -h      Use literal horizontal tab characters in the output.  Tabs
             are assumed to be set every 8 columns.

Hmm, I should edit this to add "to optimize movement to the next tab
stop" or similar language.  In other words, when given this option,
grotty(1) performs a crude curses-style optimization, replacing long
sequences of spaces with tabs even where tabs do not appear in the
input.  For example:

$ printf 'foo\tbar          baz' | nroff | od -c
0000000   f   o   o                       b   a   r
0000020                       b   a   z  \n  \n  \n  \n  \n  \n  \n  \n
0000040  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n
*
0000120  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n
0000132
$ printf 'foo\tbar          baz' | nroff -P-h | od -c
0000000   f   o   o  \t   b   a   r  \t                       b   a   z
0000020  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n
*
0000120  \n  \n
0000122

Finally, I have a vague memory--perhaps not a correct one--that Michael
Kerrisk preferred 4-cell tab stops over 8-cell ones (however obtained)
because he found that the latter caused lines to overrun too frequently.
Keep in mind that displayed code examples in man pages will always be
significantly indented, unlike in real C source where we start
everything at column 0.  Things to consider.

I would proceed with caution, and test with multiple formatters.  (Maybe
you already do.)

Regards,
Branden

--x6fhmgmktothd3kn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmen7MMACgkQ0Z6cfXEm
bc7aYQ//bnV/Uhy9xy0U63TuMZ2DBjRLylMJP008gbAY4OVIliWmgozkZyD+6gFP
tgswyOyUdtW+sXa8vaMqBU6Vh79EZ6QVZsViW38ZvVWz+OShNGVFw3DosvECqOjs
KhA2at8dJMDxORAdTPaMtWY8gphH4gly7sdT7VUXA7lZbf9CK16sWwkQ67afdXfZ
KFMtWGKUWGVCbjAP79iNomfkEfVpMhWJDG796HtAdF/bm8DOLd4IfMXHPKBto4QJ
efRmwV4Bf2R3XDdiaKLbuQt8xsEZJewjZHnfQnPx7nZAOmZz3jDQF7XjEB13UgQf
tqC6GdQRG7Tv0V6RPbVAPDKU5+SNgra3dJZ2LOjoek8Q0rWJBYzkZ8tHcRs5h8PI
Oepl7/Wfbhroix6iWSNjFz9y6RMDGu/7YzhLHiPWJuKSga/V8CAkDHqj4hQJBGkH
8SMiR47vePefW/XC+IWzx0L8GwqrHnLbyVsgOlZs9ENTAwWoj/0/OKxOz4bOs+t7
ky1EYz8PaYp3ITGoq7Rdm4bEZnw9BKm0lVOPOZQZOJQO+N79hlVuyCDPjHOY2iBb
mvZ/o/9vVlY0gY16qgwf6AWcBf0R7VfV9vIfpQS7BNHt88NBYD7x+Y6HCVcsE8VV
ez5IDRf+h8EmQSXx3ji6v6cQnKleJd/3UCkeEBy4AhJvmHcR4es=
=egs2
-----END PGP SIGNATURE-----

--x6fhmgmktothd3kn--

