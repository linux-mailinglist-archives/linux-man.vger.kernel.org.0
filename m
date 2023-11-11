Return-Path: <linux-man+bounces-25-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CDA7E89AD
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 08:55:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B51B31F20EC8
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 07:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDDF979F6;
	Sat, 11 Nov 2023 07:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z6VV/AzL"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B6579D9
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 07:55:43 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B61E73C19
	for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 23:55:41 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9d216597f64so448871766b.3
        for <linux-man@vger.kernel.org>; Fri, 10 Nov 2023 23:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699689340; x=1700294140; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8llv4BjuSIBT5ZA6R9qY83gEdrrJQcQQzdH02NuRXj0=;
        b=Z6VV/AzLrGr5UAADw/ciO7sMtEbGYmjahT+eTXqzSFoiNMFRnqg08O3uNs21ZHPQR4
         ecKl5QfuK4AjrRZ2mXDUpyhHPormy2HD7Rt3FbxH84C2qzMSz9gr1rcFYB12WQb64ckY
         a8s7etODqfNjWqrBEEZc5AoY7NGrlTIUtRMApmYnufxq7H78y4ELa4DBDU29bE8afL7k
         HXjPs/awV8ophj7bbnFGjwKSiVOdfyH+RRbwvZDEHfTGWvNr4SmOzTye3TaL5vKMjf6W
         +57M0sj/GVatkOg7We3JEt8G2NMMOTTYNdQfcvSFsuH62iuNSaQe9Nl5kkCEEj0fpvm4
         OnrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699689340; x=1700294140;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8llv4BjuSIBT5ZA6R9qY83gEdrrJQcQQzdH02NuRXj0=;
        b=LfYuOnXd3PBxipp1wD37q+90mz6tarVI8K89OoQ31oYa+b9TRnKXhHy1T45N4eBsFt
         4qwTRvWIV2VngEAas0i64acuSQRsdsEeALCASMekR4blW/0zO96xH+EHwiamqd5mOPDd
         ATQlf1hTtLYY9gftoO7DcUxgY90RScZ0fytg7hDF3ZYIfBHMmKnZc1SMEEcmfZs1JPOW
         gaYbtD8ywH81rTY3g4Wht8Ao72pS8YhRAaRZ0Bnp+CwQvRd0E2UOedzM3jjBXAz2vFWz
         YVRofdoGfNkTyIv5DEN7Ml3L+Kq9ubMQceYhllGvM2eyfzXTaRpag5l8yZesAhE/DdWr
         /mOQ==
X-Gm-Message-State: AOJu0YzWSGtK5fDKFx4Y5K2lF2Zml36sXvzMQmj2T1qmG1IG1kNg1rOr
	kLMQXQ8VeXlsPSa6FCdzbEE=
X-Google-Smtp-Source: AGHT+IGX1Ehcml9pp5JoNIUNt4dz7UWopGtYzViCkM37BGMdRb63ZKt6NIoY4IxpK6EqVqlICXgQ3A==
X-Received: by 2002:a17:906:688b:b0:9be:6395:6b0f with SMTP id n11-20020a170906688b00b009be63956b0fmr809863ejr.29.1699689339937;
        Fri, 10 Nov 2023 23:55:39 -0800 (PST)
Received: from dj3ntoo (223.sub-72-107-196.myvzw.com. [72.107.196.223])
        by smtp.gmail.com with ESMTPSA id h3-20020a1709062dc300b009ae57888718sm656957eji.207.2023.11.10.23.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Nov 2023 23:55:39 -0800 (PST)
Date: Sat, 11 Nov 2023 01:55:33 -0600
From: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Matthew House <mattlloydhouse@gmail.com>, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU8zdRVu2gP4_S3u@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	Matthew House <mattlloydhouse@gmail.com>, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
References: <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <ZUzPNydLkFPEvvsa@debian>
 <ZU3WhDRpJj0GWnSp@dj3ntoo>
 <ZU4RpotBDOkzHnbi@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Lay0pPAQkhCSQ/LF"
Content-Disposition: inline
In-Reply-To: <ZU4RpotBDOkzHnbi@debian>


--Lay0pPAQkhCSQ/LF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 10, 2023 at 12:18:56 +0100, Alejandro Colomar wrote:
> Hi Oskari,
>=20
> On Fri, Nov 10, 2023 at 01:06:44AM -0600, Oskari Pirhonen wrote:
> > On Thu, Nov 09, 2023 at 13:23:14 +0100, Alejandro Colomar wrote:
> > > Don't worry.  strncpy(3) won't be deprecated, thanks to tar(1).  ;)
> > >=20
> >=20
> > Just please don't tar and feather [1] the people who use it ;)
>=20
> Hmmm, it just caught me after a year fixing broken strncpy(3) calls.  I
> was a bit unfair.  I'm sorry if I wasn't so nice.  Hopefully, we've all
> learnt something about string-copying functions.  :)
>=20

Indeed we have. This whole thread became much more informative than I
could've anticipated. And we also got a better wording for strncpy(3)
too :)

> > > We could maybe add a list of ways people have tried to be clever with
> > > strncpy(3) in the past and failed, and then explain why those uses are
> > > broken.  This could be in a BUGS section.
> > >=20
> >=20
> > This would be a very fun read.
>=20
> I'll write it then!  :D
>=20
> >=20
> > ... snip ...
> >=20
> > > > > Also, I've seen a lot of off-by-one bugs in calls to strncpy(3), =
so no,
> > > > > it's not correct code.  It's rather dangerous code that just happ=
ens to
> > > > > not be vulnerable most of the time.
> > > >=20
> > > > So will all the custom strlen(3)+memcpy(3)-based replacements sudde=
nly be
> > > > immune to off-by-one bugs?
> > >=20
> > > Slightly.  Here's the typical use of strlen(3)+strcpy(3):
> > >=20
> > > if (strlen(src) >=3D dsize)
> > > 	goto error;
> > > strcpy(dst, src);
> > >=20
> > > There's no +1 or -1 in that code, so it's hard to make an off-by-one
> > > mistake.  Okay, you may have seen that it has a '>=3D', which one cou=
ld
> > > accidentally replace by a '>', causing an off-by-one.  I'd wrap that
> > > thing in a strxcpy() wrapper so you avoid repetition.=20
> > >=20
> >=20
> > Might I go so far as to recommend strnlen(3) instead of strlen(3)? That
> > way, instead of blindly looking for a null terminator, you stop after a
> > predetermined max length. Especially nice for untrusted input where you
> > can't make assumptions on the "fitness for a purpose" of what's being
> > fed in.
> >=20
> >     if (src =3D=3D NULL || strnlen(src, dsize) =3D=3D dsize)
> >         goto error;
> >     strcpy(dst, src);
>=20
> A NULL check shouldn't be necessary (no other copying functions have,
> and that's not a big deal with them, although I have mixed feelings
> about things like memcpy(dst, NULL, 0)).
>=20
> About strnlen(3), you're right, and Paul also pointed that out.  See the
> other mail I sent to the list with an inline implementation of strxcpy()
> using strnlen(3).
>=20

Yep. I saw it just before replying to this message.

> >=20
> > This, of course, assumes you have POSIX at your disposal.
>=20
> I always assume this.  If not, please ask your vendor to provide a POSIX
> layer.  Or at least the parts of POSIX that can be implemented in a
> free-standing implementation.  Or stop using that vendor.
>=20
> >=20
> > I'm writing this before going to bed. I did briefly sanity check it with
> > a simple test prog, but it would be quite ironic if I missed something
> > wouldn't it...
>=20
> Looks good at first glance.  :)
>=20

Dev 1: It passes all tests.
Dev 2: Ship it.
Users: *proceed to break it anyway*

- Oskari

--Lay0pPAQkhCSQ/LF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZU8zcAAKCRCp8he9GGIf
EfTcAP4t1pMWtffjPlryu7++1fusTY0GfSws9uXLqZqCrWQEdQD+OYt/M5vgY+pC
IbyDxKFPrruwgGYmtFKRE6ZthjixOg0=
=ZB5/
-----END PGP SIGNATURE-----

--Lay0pPAQkhCSQ/LF--

