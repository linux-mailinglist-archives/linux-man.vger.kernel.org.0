Return-Path: <linux-man+bounces-4444-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7089DCC9CAA
	for <lists+linux-man@lfdr.de>; Thu, 18 Dec 2025 00:20:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84F74302E165
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 23:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C959F33030F;
	Wed, 17 Dec 2025 23:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W4445Whm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f66.google.com (mail-yx1-f66.google.com [74.125.224.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260EF2D7DD7
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 23:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766013598; cv=none; b=BMOPNjRHzTZMDdWYIPxRB72lP1BIqfLw1l4m0WX7RHLgTf7SvVVRDIwFotozmKi7G3/Cyy8GMCSHQe3NcppAkt1tk8EbVXklt2I7QKe60Ws+VBMy29yHlv6XoDSKbDC5FYDJ1rQVWmzVVucWoHPOXyzlXJcNz+Z7X0qmqE2Kh7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766013598; c=relaxed/simple;
	bh=RE5Edi5TQqmwfflmQadEsYaMezx+cm8EZKIpbeJcY+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cQXgyo6pwZyljmRypXjTsS51VrxEuW/sJnQd/uA2oT42JXUVhGINTijFUKdrX7SlQcSLGnzIc0T9L3LkqixPUbPUTBkzMEMV6okQrhLHYxvYo0iOsYMou7RgyXkwJNSfeaylLXcHUcxJf4werCbNzdWh9RXMyqF1u9iXvisqzpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W4445Whm; arc=none smtp.client-ip=74.125.224.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f66.google.com with SMTP id 956f58d0204a3-6420c0cf4abso19374d50.1
        for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 15:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766013596; x=1766618396; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GYHbhQ3dae5Dw3SzHZ7fvhs1N7ERXllGBKcPc53nmFI=;
        b=W4445WhmJxXz7+ZdVws27GRMEPK2aQj1/vwQSmy0oSABMVEocqvq4GbUmDgspJ3bgR
         gIngnBHtDaivULD7Bl59gJN0/UjZQznJZcGZXipJZRPRVvdTnKp6tE2G1OYBaOFjZkrH
         aRjmtUAtru+DMjktvOrx2dfTppiVGPnfnrdrosRxOIAkeFdJCgrLy5Z1+rScd8iW3wfm
         Ew8DzQMhNQZtSHmsNuaO8mdS8kgrmMT8LqdGmu6LCB2xSe7CrbwfboS/S91b5L3jPa/7
         nRfurE4en9kKlTDZNPXa90CGm6DVueLQMck1X8DEsQsn75cep5UOUvCgMsnUbbwZopHw
         jnYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766013596; x=1766618396;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GYHbhQ3dae5Dw3SzHZ7fvhs1N7ERXllGBKcPc53nmFI=;
        b=LJgmjqB74eY9jzAPcda0o1YhV3VgctNKTuw0gHFaIZvVgbPcOgTdk83kC6dDFy3GyL
         QUe897P3Gok430IgO0na2nd01nQEnivuVEXhKrMJhZJOkV4luifc6XgtS3ivKL08wVSo
         vzMIJjd6KFkPug6UgsLM/u6YauKYkyNIDqWWhmCIKrba2K6lB2B9RHaGzeWMBPAkdXoL
         WLw9BOvRsLaE0xED5BJHDsFx4uoNWVfPrf91YLYv+91mf71eZpjVvoOn4rp4C9XjK61J
         DOyaidFrA05WJJBa6MWbXWRmXUw0/HS/0N3QOI58Pm6F3Il4iUb05BjzIverAYck75ta
         K0bA==
X-Gm-Message-State: AOJu0YxxSrQXOgSDwiVC1STd5ZU4+hSO/O+QRR0vHcm0KBMherxQ1IYD
	uCzfBfi/J3L8zKUNXz3870PZuu/c68kI57auooDuyKoDMJoVCxPq+3o+
X-Gm-Gg: AY/fxX6i3JUtf+GvPl6UYhWseDno3pcxlJoaemDC1I20pS7MMppCHobadXk9vHaScpd
	63Hq8bqeh6FEr8qJemq6sG4pzON6F4554R4/KKO9DNhdUjavHSqx6TLoYAT7wN3YtSXXkBEz2IC
	y1h3T4UVAfkD1/I5hZBCzErSn1CIxgObLy0FefvKITDDoV6m4i4t/t6XOikK/qB6+UB6HEQJSWL
	D1pGqQ0iVAfcd5bBIGWcdtb5QvbzKNKcq1OgpK9KKs1+Qx2OiVQM2/mKGiWpLJIZueOyMAepy4c
	EcG/2lCH8sRA6+fesyskLFoPLptYeDiJAeH8hpVZfUPhn5wPLbmX/0b/1BERWeF7QNPUsipPV31
	lWk09sDLrpqcKCftpGtWBqoojaLNGNtayiy5wY6QJ1GXPR5zNZRqZPwBTnIEQ/8gclWgO2lQR3B
	WS
X-Google-Smtp-Source: AGHT+IGRLVLC+WQX45bb8BCWVHsBbHC7S5P7fOLSA2J4F15OuUVKMGEFoZtnRkmORsljQayMM5IIXQ==
X-Received: by 2002:a05:690e:1189:b0:644:60d9:8656 with SMTP id 956f58d0204a3-6455567d755mr13648283d50.89.1766013595932;
        Wed, 17 Dec 2025 15:19:55 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fa6f52c04sm2193857b3.18.2025.12.17.15.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 15:19:55 -0800 (PST)
Date: Wed, 17 Dec 2025 17:19:53 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getopt_long.3: Assist users
Message-ID: <20251217231953.2m3sdzfph3h3lgyf@illithid>
References: <20251214013754.hvrmeblfbr3cb4he@illithid>
 <dfezdrhg7wupodwha53d7yzymf43poxonxhelekituha7yuma6@rklvqpo5fwfa>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fqysdwkl73ra5ams"
Content-Disposition: inline
In-Reply-To: <dfezdrhg7wupodwha53d7yzymf43poxonxhelekituha7yuma6@rklvqpo5fwfa>


--fqysdwkl73ra5ams
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="i623xcp5ylatclot"
Content-Disposition: inline
Subject: Re: [PATCH v2] man/man3/getopt_long.3: Assist users
MIME-Version: 1.0


--i623xcp5ylatclot
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2025-12-18T00:15:21+0100, Alejandro Colomar wrote:
> > diff --git a/man/man3/getopt_long.3 b/man/man3/getopt_long.3
> > index 73e8f3e6f..a464349fe 100644
> > --- a/man/man3/getopt_long.3
> > +++ b/man/man3/getopt_long.3
> > @@ -102,6 +102,12 @@ .SH DESCRIPTION
> >  is not NULL, it
> >  points to a variable which is set to the index of the long option rela=
tive to
> >  .IR longopts .
> > +.P
> > +Its analogue to
> > +.BR getopt (3)'s
> > +.I optopt
> > +is
> > +.RI \[lq] "argv[(optind \- 1)]" \[rq].
>=20
> Would you mind adding \% to the entire expression?

Strictly speaking, it's not necessary, because in groff's English
hyphenation patterns (and when using the hyphenation mode configured by
"en.tmac"), "optind" is the only letter sequence long enough
to be eligible for hyphenation, and it doesn't.

$ hyphen optind filibuster
optind
fil=E2=80=90i=E2=80=90buster

I'm attaching my "hyphen" script.

I can do it, but FYI.

Regards,
Branden

--i623xcp5ylatclot
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=hyphen

#!/bin/sh

: ${HY:=4}

for W
do
    printf ".hy $HY\n.ll 1u\n%s\n" "$W" | nroff -Wbreak | sed '/^$/d' \
        | tr -d '\n'
    echo
done

# vim:set ai et sw=4 ts=4 tw=80:

--i623xcp5ylatclot--

--fqysdwkl73ra5ams
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlDOpEACgkQ0Z6cfXEm
bc6kKA/7BaE2ySmlyBHP1XBKIsfrhF/lXKAbuaHtf7PLpankKHFrxFGHeW1NVvPN
0UZbr8S4ZSq9ZJ1f/qzZSW+lyNmv2P77WvTuYvaLFVIwmAddjL0fHLECdlxKqXTA
rauI/I5TCJf+DebsMGH65wy/8fH7XXYfWf4bZqcqeGhkJ074+nLXm0sKQirJG5Ze
2lIF5PaPR/DgkwFqjG1O2cEPL47AlaFXdBrnb/b3yfA7doJ9n0EYxWBSYqjbShWD
bpe8zGiQ/NeYqMwiM2EKtjpLm0sdHmnDGgZoRFRhrFcmzJxxGWcUPAdgIvE9ueHn
m1CtX6K2fK/J0YGRvar2c4/2HgY7iDeQgGs9qmib+rc5+MyX4JLS1EmRTwE/LIHV
oDzDOrkbw1V0CNUMwBD0y1Sn8GwKeY8H7Tkv52FIMCnwWTyVIrgvRyO4iYz8zd33
XeNmKyhs1jsrprX7tgPC2G7boSHXJ7K26aygdTe3QrQq0Tvq7U46aj7R0Wa482kK
qCpmGTUqfZZ0SiucS01ss5yFnhhs//y8KHWt97yYv6j+Mnwn2jwRKOo3rYoZ8v83
jM0TY++ubI4emJy5tAU0nvaRtQ77r0FhsLlMRs3ckDuzWyldpwXAx7L68m4oguh2
AcvEjnAel9UkJlpCvyyZ92rrYkH+mga+8FrNNH8sAwGfa/LjzKc=
=9ZZO
-----END PGP SIGNATURE-----

--fqysdwkl73ra5ams--

