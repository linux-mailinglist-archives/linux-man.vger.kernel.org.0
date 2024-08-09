Return-Path: <linux-man+bounces-1599-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C76494CA5C
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 08:19:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7F911F223AD
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 06:19:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BAE16D328;
	Fri,  9 Aug 2024 06:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XGnLbAb7"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F27C16D30E
	for <linux-man@vger.kernel.org>; Fri,  9 Aug 2024 06:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723184345; cv=none; b=bYlIRCLLXCuhQ1tp8RKvZ2b83plMAYvNjEDoYSmA+HAFBZbMg/jrKfNKzQI9Kg3olWRrnyHrWAU1seto5epngixYtgjhOa4SjKItUBOvrgTG0wr/gClrwdkKYkqP6B5VM5GXhwUFuZ4oud+hjQOQLMZMMNQwVzYqs7JkkTBFJC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723184345; c=relaxed/simple;
	bh=xZ6/zAU4NtlnyTVB9NdZC0ZU/+kxqJKDd2i1nMpWN8Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q/+5LxPoElVReJgXebs8ZXEONMQIusfKt8KoxvAjdjisqQ+o+9JO9x6wQu+JImBJC+GU+xwjUE4iKmhdCR++qU9BEryP0LB9DbMjw+FSP/NFIc2845vnwt/F1+gigNQ4ofMQtYBWMYa+oe6hzNPUa0P2NbO1ZehjdZMKaI1mUZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XGnLbAb7; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-709345dd01dso1235886a34.0
        for <linux-man@vger.kernel.org>; Thu, 08 Aug 2024 23:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723184343; x=1723789143; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5KQZ1N1JEKEmRsYJDk773t+w3atkTYu8VxtHqnLPgMQ=;
        b=XGnLbAb7F/2oqNL4G21tFODlDPHqP/Feq4LkktNJxrVEXu5TTl9PcxkYw2+Na11jWZ
         eUwymHTZazksN8a2DaxHVdS6wx3IR44eZZyU0OsgPTERAEMuD+CD2nXuBYoXlHf6MGHj
         RBEdXIaEpcmg4YdhReVjSvvxj0ge5PbAomQNEVOfxbE4PYDS0hWJi5KqWDSBr21qgSSO
         GErWWYLn1w0njzgUwniu0NlIkj85wZ1WaW0VICv8fLPvBeD3vK/hTePOoqIWQIQjmMpS
         8FSXuTska9qH7Kwv6UEcapX+X+qhYr8wsi7mrETDfFsPQhUUeQTWvEwaZFu+V60hpt7G
         ikSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723184343; x=1723789143;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5KQZ1N1JEKEmRsYJDk773t+w3atkTYu8VxtHqnLPgMQ=;
        b=dncTc1/EhDkU/9u4f+RnLO05icrwnw6pQgvFdCTUo9Q3k2nwCeu41Ykzc54tf1tN+r
         cChDpsg+HxFq1id55zHwqlvtfqrraSLztNIclS9hT5sCZu6p4R7YQXrxIVwDW5uYz1Pe
         MBTwdWSj/uJGrtnNDSuU5lhOTRoSpjReZJIl7OI9n2ZatS5ohprEQjp/RUmsCTyfjaeb
         1Am2xdzfJ4emEtywHSRcSdaT/psoYkyzrFQnvHnOYPmadru88tTmiAtt3+7ND0Pp0Ml8
         Ka9wvznlZwqycTYQABRcnzkjDQ1F1kSGhu0vMZq3/CAqhFcushoJujxl56Vr6oNtLT+O
         iaJw==
X-Forwarded-Encrypted: i=1; AJvYcCU/uos8NzifHruMPLno1THmdB4In2Nj2+z+p4il+xBzzSF9MG8XQkWhsOuYGYjs14zAhEdnczXd5LAHwMqnboZnXim1bqwpUU0L
X-Gm-Message-State: AOJu0Yx67EqMla0cgo6H7GFRzV8puT81oGDCXl5wMmsKXnI3TzR9oqjl
	fGmq1jzWsbmh3gEaNl+S3PYmO1dhZHHzaE2Px1IoswulI/587hAr9z3NLg==
X-Google-Smtp-Source: AGHT+IG3tAjOwvb9YJBHjSQjer5VhqSv/bm9ifVu0Nw0RfNX/Z3zQIDDfuqf16N4hPGTPt5lpHVMXQ==
X-Received: by 2002:a05:6830:6d09:b0:708:becf:7160 with SMTP id 46e09a7af769-70bcd9ad3dcmr201972a34.14.1723184343163;
        Thu, 08 Aug 2024 23:19:03 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::48])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70a31ec4159sm6101367a34.45.2024.08.08.23.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 23:19:02 -0700 (PDT)
Date: Fri, 9 Aug 2024 01:19:00 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: John Gardner <gardnerjohng@gmail.com>
Cc: Dave Kemper <saint.snit@gmail.com>,
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <20240809061900.yxo7uncxwt47pbms@illithid>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
 <20240808121603.fatotzqmtpbf2jez@illithid>
 <20240808125838.GD2669@cventin.lip.ens-lyon.fr>
 <CACRhBXPyVNN8q9pbeZSzSFj-nB1woJLWhTGw8N8yuBpJRyY6CQ@mail.gmail.com>
 <CAGcdaje1Fo_DuFf87ST8rrNCHmXx8uEzjJCwHiZ2Wf47h_O0Pg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rzxo7a3yp7munzzw"
Content-Disposition: inline
In-Reply-To: <CAGcdaje1Fo_DuFf87ST8rrNCHmXx8uEzjJCwHiZ2Wf47h_O0Pg@mail.gmail.com>


--rzxo7a3yp7munzzw
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] nextup.3: minor improvements
MIME-Version: 1.0

Hi John,

At 2024-08-09T15:53:30+1000, John Gardner wrote:
> Hi Vincent,

Not to horn in, but I think I'm better situated to venture opinions or
background on implementation decisions taken in groff than Vincent is.

> So ideally, the fallback for "=B10" should be "+0 or -0", which is
> > much more readable and less ambiguous than "+-0" or "+/-0".
>=20
> For approximating =B1 in ASCII, is there some reason \z_+0 hasn't been
> considered?

You anticipated the answer.

> I'm asking earnestly, as I'm primed to assume overstriking hacks have
> already been ruled out (pun intended) as a fallback.

\z _is_ an overstriking hack.

=46rom groff's Texinfo manual (slightly altered):

 -- Escape sequence: \o'abc...'
     Overstrike the glyphs of characters A, B, C, ...; the glyphs are
     centered, written, and the drawing position advanced by the widest
     of the glyphs.

 -- Escape sequence: \zc
     Format the character C with zero width; that is, without advancing
     the drawing position.  Use '\z' to overstrike glyphs aligned to
     their left edges, in contrast to '\o''s centering.

All of the terminal output devices groff supports lack overstriking
support.

Resolving <https://savannah.gnu.org/bugs/?63583> (waiting on me) is a
prerequisite to doing anything about that.

We would also need a new "DESC" file keyword to declare overstriking
support in output devices, and a way to query this parameter from the
GNU troff language.[1]  (This would also be useful for Tektronix 4014
support.)

The enthusiastic aficionados of the Western Electric/Teletype
Corporation Model 37, including (it would seem) many less(1) users,
could then run wild with TERM=3Dtty37.

tty37|model 37 teletype,
        OTbs, hc, os, xon,
        bel=3D^G, cr=3D\r, cub1=3D^H, cud1=3D\n, cuu1=3D\E7, hd=3D\E9, hu=
=3D\E8,
        ind=3D\n,

I'm open to correction by Vincent or anyone else.  :)

Regards,
Branden

[1] Straw man:

    A.  A new keyword "overstrike" or "has-overstriking" would be
        recognized by libdriver and/or libgroff.  (In practice, only
        grotty(1) would need to bother checking for it; any driver for a
        typesetter can assume that overstriking is possible.)

    B.  A new conditional expression operator, "T", would take a
        delimited argument naming an output device capability.

So you might have something like this:

=2Eie T'has-overstriking' .fchar \[+-] \o'_+'
=2Eel                     .fchar \[+-] +/\-

The feature window for groff 1.24 is closing (maybe in a month?), though
I still want to get #63583 landed before freezing the formatter, even
though it's strictly just an output driver change, on the off chance
that I _have_ to change something in the formatter to support it, and
because Lennart Jablonka has demonstrated the patience of a saint (as
have Deri James and TANAKA Takuji_).

--rzxo7a3yp7munzzw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAma1tMoACgkQ0Z6cfXEm
bc58ERAAmCk3Fnsun5Cg9t8Z1Qd/S9PR3ZiZGhPdzKOU82J42qGnoChwpldYl/qO
7xH0kViR9v0nCcqHgncRThT7OnYMXWJMBZVRN+M/RBSnk19a8nndSFbk8HfM20Yl
fWMi2KxkfTkk2D65CQNr1Om6iIEKxXmbKNAV4XEu++cPfq9Vfh+NRfGOIbJ0bJWJ
DLDGACCUqfKNwh+Ps+v+K1TdP3XbzZRAIjhagnoVrGFpgNWKF9+GFH74hjxm8Iox
/0TejfRkA0I97Pze+0vqykHkN7NUS1cVthXbDiJXNHhxn3auSeb2n1j7OUGvSLMv
JXNmG7K1wjRnuazrBr+X5oBGEk6PtsYacgAojghB3awwOjde8nWj+/H9qFgn7GYr
ykZvD8B4gD3J3V+YoMz76i5iRyvD+L/raKhT4g3A4PicS06n3oFt71IKcFX8eAB7
2d5zwUiH/JhJgpxU+xAT/KvPmAKofLQU3YTGKILB63lbBhDZdatkzkV3bs1/FNIH
/gEEFNkGp8xVAtrFPNab1H+vZ2pdrZr6ZmyOhbg7Kd7J0W1qc8+nFVKexIBSGN7D
zEG7mwBAlaIbb2+XCaOsDyfwDqB0+4c2a0ZdZxDZRtpbnnXP8uZgX3rvo4ClofKS
Dj+TYGYIc+8oLSBM5rBgW8/s06I3W2nMXSNt7r7unJGIpw6ibag=
=EPEA
-----END PGP SIGNATURE-----

--rzxo7a3yp7munzzw--

