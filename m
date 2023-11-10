Return-Path: <linux-man+bounces-15-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B93B27E7F3C
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 18:50:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBDE31C20EAE
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 17:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01453A290;
	Fri, 10 Nov 2023 17:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EeQdMuoV"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4923D3B3
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 17:47:09 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EABE28256
	for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 23:06:53 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507b9408c61so2265266e87.0
        for <linux-man@vger.kernel.org>; Thu, 09 Nov 2023 23:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699600012; x=1700204812; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zs0PiCLM8RjU3fOhW2yXXfCrI8miTdu5T0Mp+qSTIq4=;
        b=EeQdMuoVXI0fLxDCLwoBgu3ETuRtqIulzxUjoTmqkjNyEWSMemmE1jP0HB8E5TMqhO
         BLIANdUoGWHVCumN8IA+65dPT11pcitnP9KAhA3Jyijg8kjtrNaDuoFJ2EhcyYN+KG0T
         e+39SRl/iLWXwKezW87/zRBewfKHtGK/JdnNsBXSHpX1ij+e8HXK7GEF07jkaMK0RCaN
         UsqAUqlgME1Ti7VPICoX6wZ5PiU+HSmWcvjyoZdDEArZHOik+QsqXA8z60SPVEOPcTyW
         SZU9FKqhL3Av5L/e8wCCsDLFzkmOXCXTa91bN0W4j62OYLI6SlPLoZeMHS0W0E5GXaWc
         lXRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699600012; x=1700204812;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zs0PiCLM8RjU3fOhW2yXXfCrI8miTdu5T0Mp+qSTIq4=;
        b=MGVTYAyJWcwBjNqkeczWkMmgpXmlo7h0+jh5euNYbnHQTFoNTMGd76YfwrrVnIzVsN
         27HCmQa0BKEJ/dtUX9dZAoqY11PwgR7C8+VnIHUltJZ+GpuaiEhFXSeBTYX8BdIUM2zJ
         w6KLW0ddCneaBSMGOq+6RCE8ICbvQluYb83ke5ERd79TcuKDM5/8u86ZhOFpFAZHY334
         2Z8GmrwhpInlm28WOGa+Gk9qEsx4MgJO8YT4Xn2Jcc1JZtRb6ossQ3Eu+GRXF+/rTsHn
         qnumRn+Ipk6vbYYddRi8lgNo6mWGFPUgnbbuf93KOx9YGXR5Od3awQPXIgROnxsTRb0L
         8Pmw==
X-Gm-Message-State: AOJu0YybukyMUOiKraVP9u3CIO5BZphoPe69B3tbSZ47EcWnUZTo9T7H
	az90AxbPCNIMm7Tq29XfOuAuJs3KyKlrZA==
X-Google-Smtp-Source: AGHT+IEPYPqpSDk4je8H5qCKVGdJTgDg4PmLy2FUZr+Xw2/RlUM19Ys/NoPDpP3IsgbqJRqc16Ph3Q==
X-Received: by 2002:ac2:546d:0:b0:509:4ad7:3de9 with SMTP id e13-20020ac2546d000000b005094ad73de9mr3147993lfn.65.1699600011911;
        Thu, 09 Nov 2023 23:06:51 -0800 (PST)
Received: from dj3ntoo (223.sub-72-107-196.myvzw.com. [72.107.196.223])
        by smtp.gmail.com with ESMTPSA id a3-20020a056512374300b00507a0098424sm1297158lfs.109.2023.11.09.23.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 23:06:51 -0800 (PST)
Date: Fri, 10 Nov 2023 01:06:44 -0600
From: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Matthew House <mattlloydhouse@gmail.com>, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU3WhDRpJj0GWnSp@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	Matthew House <mattlloydhouse@gmail.com>, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <ZUzPNydLkFPEvvsa@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="O2bB5daIVF5nnaWm"
Content-Disposition: inline
In-Reply-To: <ZUzPNydLkFPEvvsa@debian>


--O2bB5daIVF5nnaWm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 09, 2023 at 13:23:14 +0100, Alejandro Colomar wrote:

=2E.. snip ...

> > > > For the sake of reference, I looked into a few big C and C++ projec=
ts to
> > > > see how often a strncpy(3)-based snippet was used to produce a trun=
cated
> > > > copy. I found 18 instances in glibc 2.38, 2 in util-linux 2.39.2 (i=
n spite
> > > > of its custom xstrncpy() function), 61 in GNU binutils 2.41, 43 in
> > > > GDB 13.2, 1 in LLVM 17.0.4, 7 in CPython 3.12.0, 99 in OpenJDK 22+2=
2,
> > > > 10 in .NET Runtime 7.0.13, 3 in V8 12.1.82, and 86 in Firefox 120.0=
=2E (Note
> > > > that I haven't filtered out vendored dependencies, so there's a lit=
tle bit
> > > > of double-counting.) It seems like most codebases that don't ban st=
rncpy(3)
> > > > use a derived snippet somewhere or another. Also, I found 3 instanc=
es in
> > > > glibc 2.38 and 5 instances in Firefox 120.0 of detecting truncation=
 by
> > > > checking the last character.
> > >
> > > I know.  I've been rewriting the code handling strings in shadow-utils
> > > for the last year, and ther was a lot of it.  I fixed several small b=
ugs
> > > in the process, so I recommend avoiding it.
> >=20
> > I can't tell you about your own experience, but in mine, the root cause=
 of
> > most string-handling bugs has been excessive cleverness in using the
> > standard string functions, rather than the behavior of the functions
> > themselves. So one worry of mine is that if strncpy(3) ends up being
> > deprecated or whatever, then authors of portable libraries will start
> > writing lots of custom memcpy(3)-based replacements to their strncpy(3)-
> > based snippets, and more lines of code will introduce more opportunities
> > for cleverness.
>=20
> Don't worry.  strncpy(3) won't be deprecated, thanks to tar(1).  ;)
>=20

Just please don't tar and feather [1] the people who use it ;)

=2E.. snip ...

> > > > the code to understand the concept behind how these two snippets wo=
rk, that
> > > > the only difference between the strncpy(3)'s special "character seq=
uence"
> > > > and an ordinary C string is an additional null terminator at the en=
d of the
> > > > destination buffer.
> > >
> > > This is part of string_copying(7):
> > >
> > > DESCRIPTION
> > >    Terms (and abbreviations)
> > >      string (str)
> > >             is  a  sequence  of zero or more non=E2=80=90null charact=
ers followed by a
> > >             null byte.
> > >
> > >      character sequence
> > >             is a sequence of zero or  more  non=E2=80=90null  charact=
ers.   A  program
> > >             should  never use a character sequence where a string is =
required.
> > >             However, with appropriate care, a string can be used in t=
he  place
> > >             of a character sequence.
> > >
> > > I think that is very explicit in the difference.  strncpy(3) refers to
> > > that page for understanding the differences, so I think it is
> > > documented.
> > >
> > > strncpy(3):
> > > CAVEATS
> > >      The  name  of  these  functions  is confusing.  These functions =
produce a
> > >      null=E2=80=90padded character sequence, not a string (see string=
_copying(7)).
> >=20
> > My point is isn't that the difference is undocumented, but that the typ=
ical
> > man page reader isn't reading the man pages for their own sake, but bec=
ause
> > they're looking at some code, and they want to Know What It's Doing as =
soon
> > as possible.
>=20
> We could maybe add a list of ways people have tried to be clever with
> strncpy(3) in the past and failed, and then explain why those uses are
> broken.  This could be in a BUGS section.
>=20

This would be a very fun read.

=2E.. snip ...

> > > Also, I've seen a lot of off-by-one bugs in calls to strncpy(3), so n=
o,
> > > it's not correct code.  It's rather dangerous code that just happens =
to
> > > not be vulnerable most of the time.
> >=20
> > So will all the custom strlen(3)+memcpy(3)-based replacements suddenly =
be
> > immune to off-by-one bugs?
>=20
> Slightly.  Here's the typical use of strlen(3)+strcpy(3):
>=20
> if (strlen(src) >=3D dsize)
> 	goto error;
> strcpy(dst, src);
>=20
> There's no +1 or -1 in that code, so it's hard to make an off-by-one
> mistake.  Okay, you may have seen that it has a '>=3D', which one could
> accidentally replace by a '>', causing an off-by-one.  I'd wrap that
> thing in a strxcpy() wrapper so you avoid repetition.=20
>=20

Might I go so far as to recommend strnlen(3) instead of strlen(3)? That
way, instead of blindly looking for a null terminator, you stop after a
predetermined max length. Especially nice for untrusted input where you
can't make assumptions on the "fitness for a purpose" of what's being
fed in.

    if (src =3D=3D NULL || strnlen(src, dsize) =3D=3D dsize)
        goto error;
    strcpy(dst, src);

This, of course, assumes you have POSIX at your disposal.

I'm writing this before going to bed. I did briefly sanity check it with
a simple test prog, but it would be quite ironic if I missed something
wouldn't it...

- Oskari

[1]: https://en.wikipedia.org/wiki/Tarring_and_feathering

--O2bB5daIVF5nnaWm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZU3WfQAKCRCp8he9GGIf
EQfeAQCtw7jShUvPUfGuBTPL+hHpjSwQX4ZLu4C2wcuYtDSyrQEAvM/BCTSJvgm6
jpY5ZE7Wuq0cwMgsPZCuUXVYA9UNEws=
=Om9L
-----END PGP SIGNATURE-----

--O2bB5daIVF5nnaWm--

