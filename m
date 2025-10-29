Return-Path: <linux-man+bounces-4215-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5540AC193D0
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 09:56:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8377560102
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 08:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9C64311C2F;
	Wed, 29 Oct 2025 08:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q8yqnASa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEE1313265
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 08:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761727328; cv=none; b=AlQvNeNr+fCCwYo9nrxjVj3CPac1vEcdo3GEWA+/YtONCNWUjQRUvzLCnS6l8qgRSHBp7jZ4QwfWvRANaNI61U9pFHMWADQFQO/0pCgSXABg9tdKSB4etuxnson3RjkfjuAaLFC+NKLSQP6lqwyDbp9Cu/GdURDnwI6B3ccDz78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761727328; c=relaxed/simple;
	bh=VPDNuUj0nYrTBBqrOeM0086b0KFECPtea3Mi0Uj+8os=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DwlO/iSVHCqlVeIOujeAaktWpKgKEwAeUaz7QsbvOmV6ysxW5rpWQia1Ccqg4yYb607BWrPkFabm0bids862qlkGuiw2bKjWmyvvkJ6IujnsJc3P+udaNZDb1QI8DgbjFY5PmmZCtmX5KJAkAbN2rjSR9/C0rTykfVQVd6gLpzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q8yqnASa; arc=none smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-63e3568f90dso7275314d50.0
        for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 01:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761727324; x=1762332124; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SLPT97cZHQka8JTGr25zJ20NsEiCPTNC7l81DtyvScQ=;
        b=Q8yqnASa2TQfXGFUwTQf4v489KzBsGbY+Qckl8cOEhPj3JTYivOLHg36MPM7g9+198
         a1AREjQatEc9HUac6O7APh6/TOcQynaK99Bg/ZwIMa2ou6L1ebN5reYUNn9bkHROdMeI
         bNqEZa/E2e65gTE7Cuoj4gUfpvXjasLyuczlsagZ4+TIcYhjyJIuMqjqSHfGCHxBFG9+
         FvpN1UCclU6dGZIyT2fakSh7KPKCrALwRFz6v/BZXM4HByAKoDwMnmWfMvmbsJipFfuV
         JI1nz2/cZhj0u9TTFKlyZt66heQUDpbNxwS9J1RNI1SNSSEn6IZYsLGD1cHAadIB4tJx
         i+PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761727324; x=1762332124;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SLPT97cZHQka8JTGr25zJ20NsEiCPTNC7l81DtyvScQ=;
        b=KPOvsjZ8Re2dWMMa9aBJ1PKBPnp+VyNJpXros3SC2NlbwdVqzNYz6iLZYRGDoI+pFN
         fFP/BKFNVd7hwKLAtuGmcvW0zbfogQ1BrMMH/C93STuqGaAQUq0oSoFh99lO4LP4BWjz
         miS7bGYcYGbpxnyi3enNiJFxxB6aBryMhbXV4f7Dvm6jgTm1Twa8jOz+nYT0ipNhVM6k
         dONpxOXpHgDQ1S8l67Us8iABLF1bzfMr1YiBhH5xt9/bU8TOeWGea4/mn6bw/AWXu6f2
         Z/F6hyczVA8/AjkhVmggyoCFYHLX7a3X53fsA9g80saDuQbbM56s8wnMRZth8TKnWqEH
         cEHw==
X-Forwarded-Encrypted: i=1; AJvYcCXT1XFe0em+l1MB+i6QinKuacSU8O6LO48wd35CURsZQ7ck6DkArNADVDk7lh1ZTi+p46NzBgD9IcE=@vger.kernel.org
X-Gm-Message-State: AOJu0YwGOTL6rLUFlKnoMrKELyN1q+OFVII2todvgfSTc+X3Mow/n7Q+
	aDTPc0GGvBeKaHmMrUOv2v81PUkHzzG21DIcWcJBMconwkj38mVctZW/
X-Gm-Gg: ASbGnctsthZeblOFJ9NGHOzhUbgX/HCdxsTzFL6aYmvzBlDgkinQMs1OuRHO3xkS3Wx
	9iVlSun/F65w5CIMRSu4MPU7QQuuMyh15xVYSaSAvkeN7z7fTDOoiYE9MpwFttfmMkYzak5sJ8P
	U0aFron/5n7aKjjjlcbABEq5ZanrIFCiBZwfVojTCoweJsoiCGhPkL18BqWiaGUBT309Wpvz9MI
	BOrMJP6KSWg1AO0uVPOx9vvrmZZwkkZ1ObDvXeR3ebvIPFfw/7JO2SdPxq1Qof2JZqJyDlr/KEI
	38zoWWP14UuZ+23lDf2hLgieXm91RXDdlA4d8ysi1jLveqs9NpD22/bqmOBV9ajsa+QJFI8POIS
	dhGOzEvDIgvoQV/NUOU+hoiVD7Z1+QQx2yFbbA0RqTzkESKWQfKIaZUZn2ITeAk540A==
X-Google-Smtp-Source: AGHT+IG9IxVjPzCl0c16vzs8tHxsLKODiToJEVIb3bSkwOHJ2ZPX/vOm+iaWQ37qRUIWV56a09gLug==
X-Received: by 2002:a05:690e:d8d:b0:63e:2272:97c6 with SMTP id 956f58d0204a3-63f76d246fdmr1744593d50.25.1761727323784;
        Wed, 29 Oct 2025 01:42:03 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-785ed1b27ddsm34437967b3.36.2025.10.29.01.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:42:01 -0700 (PDT)
Date: Wed, 29 Oct 2025 03:42:00 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
	linux-man@vger.kernel.org,
	"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <20251029084200.umuk2hbescz3txgn@illithid>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6h5as5u6kwmmi2x6"
Content-Disposition: inline
In-Reply-To: <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>


--6h5as5u6kwmmi2x6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
MIME-Version: 1.0

Hi Alex,

At 2021-09-15T21:42:26+0200, Alejandro Colomar (man-pages) wrote:
> On 9/14/21 2:41 PM, =D0=BD=D0=B0=D0=B1 wrote:
> >   .SH BUGS
> > -There is no error indication if the stack frame cannot be extended.
> > -(However, after a failed allocation, the program is likely to receive a
> > +Due to the nature of the stack, it is impossible to check if the alloc=
ation
> > +would overflow the space available, and, hence, neither is indicating =
an error.
>=20
> I'm not sure this use of neither (without a preceding "not") is valid
> English.  Is it?

The sentence is confusingly cast, but the problem is not as simple as
you describe.  It is common in English to use "neither" without "not"
preceding or following.

Neither wolverines nor beavers have yet self-domesticated.
Neither C nor C++ are good language choices for novice programmers.

Maybe you were expecting something like this wording:

Due to the nature of the stack, checking if the allocation would
overflow the space available is not possible, and, hence, neither is
indicating an error.

That's more grammatically conventional.  However, I would recast even
more aggressively, as I find "due to the nature of the stack" hand-wavy.

I suggest something like:

alloca() does not query the system for available stack memory, and does
not fall back to using the heap if stack storage is unavailable.  It
therefore cannot indicate an error if the allocation fails.  If it does,
the system generates a SIGSEGV signal.

(I checked getrlimit(2) before composing that.)

Regards,
Branden

--6h5as5u6kwmmi2x6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmkB004ACgkQ0Z6cfXEm
bc6oyw/+JXc/hrRkNoGyNHxGr4L/SlF/clsX3x9yUKBbXevKAMyOsNWZJSKijSKH
ogjID3kh8Z3w+ctMVVc3IRdLXWjx3JXSS/p9TMH+X/V60EtwDoBLWc7AHj+d8MaP
h0Qjw3hnIUsYhbhqNSzcgfNrd7wsyuPZutWxjfez47tuW88rvKvGJwQf/rlVoWMl
ncWtig96JpFVr/bsJ4ncCCrHe3ENg+8h13A9X+8eEBvztIDF4BFDf+MX8OjFrr8t
jEwYfh/xXTPmpw8tol5R6cJtsN9BNhrYBF6RrreHnBlun5BcPb88Zu1GuexrOChD
KFobuERdNmfYvpWT/4lSrd7utpms4Y2DTipEhFIXtCBv5hz9ddcN7h5RzsQ/iFnR
+DYc7lP/H4Aq9Slo5oPPuEZP0FQaULyH38MGZxJ7ex+/hCBgDif8/Y1NqUSYmWLU
gis2dhzSvZf7j22wSKSsYrVv2Gyiyc4uNU7e7FFqfi51Ky3N8H1odOnHjMiP1CZc
YZo+B+zug10vHmzMjHM5GE4kEyGrQzwhfDai/l78wY48UA5g2B5XcyBXbIT0rEzW
aw0vdUEOAHrMmJhiIK61qUDOi3O6RPWWew+ugiyb7rotK+eub1XD4rsAGwG43SLM
dwleUbRrgYVGJm9slXaN6oXsxmhvZ+THughRhDv8slwpissfGcc=
=Zv+Q
-----END PGP SIGNATURE-----

--6h5as5u6kwmmi2x6--

