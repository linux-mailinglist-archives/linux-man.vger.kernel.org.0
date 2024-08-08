Return-Path: <linux-man+bounces-1596-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FFE94BD32
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 14:16:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46D0D1C220E2
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 12:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA8C2155A5D;
	Thu,  8 Aug 2024 12:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B2ZVXWdf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2733663D
	for <linux-man@vger.kernel.org>; Thu,  8 Aug 2024 12:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723119368; cv=none; b=AgLTXlDMLaKDEsQXBIEg3bmGVQnseia7nnqTZjwPPyzOuO06DS+zpWqpsg6P53vRIFmK/Z7q8PXdByK+QqNffVr31a6Pldff4j45U9DHZ7Rbx4cKtdreJmQVa22MkI3eHKFFEKQP3uPBfWy4CNT5Xqtns13KuSFKQ9NP/D0Pz1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723119368; c=relaxed/simple;
	bh=165BKAUHRxZiMEUMm6tXj6NcBLaVgsiKLD/ah7qG1YA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YNPCjxYLEvF4xA7Zf5Sd5E1/Btcjc6F8T8Q+2Dw033HNGvRI5Pozk6gwrd0AljXVbGPsGjP4isWBWVAStimHnLGPTTRbPJbpG8T+t8e11nUMmOjmE4f1FJqw3EIq4V2hmkP1yqwQ4UPZobRh6S6S6KzWtMk+oJUxPi5RlFOikVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B2ZVXWdf; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-709340bd54dso385490a34.1
        for <linux-man@vger.kernel.org>; Thu, 08 Aug 2024 05:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723119366; x=1723724166; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQLsKS/s6tIE33BYmAT+OgZ8xi+YJFB7jfVdRfjJ8nQ=;
        b=B2ZVXWdfpONXkFwPlIybnU4THxD6YSF19567mi7qsUeYuweTXvH/M4b5FNhmqeOVdS
         nIcvrbRPYWD8aAlIW9WxnyF+j8yZw/t5fHjIy72qSH3WrO6yFwr+9xRqQTesXM4vN6k1
         i7JVy6ZgSyPwylfswkL7V4bkU1sWy0uXTEDS2qRqF9RVpwm+khm2COdZsqcarYvpEmdr
         c4Z31RcEI1KIH//F/tmmlevUNHtC2kvz1WkMYe+dIoOQiFRbeIb8OQ+mrlJt04z2psii
         Pz/b96FML5W05uOvbABZqzBoi4VMFN7YV10oy95B6Ll+sLKko160QREv29EZn+QmAAEm
         XJjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723119366; x=1723724166;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZQLsKS/s6tIE33BYmAT+OgZ8xi+YJFB7jfVdRfjJ8nQ=;
        b=DHsAkZI9yAzJApTK8m4YdZtHMCKCVA0ivwOSreiUZ83sS5hz8delZdfYxgiFhzOnr6
         GN/AX/zxr94Z0Cf9GozFsidKaWVF89SrndK56h6CGij7EhDKAZ8tk/LzARmhGGLVdE4Q
         NgkwjDOIdjkIGgJBSY9MTUVuTBwSf++g5Femkt4wXSDVGlWx5np8pTQ7MT054vR9vfqg
         2KuBGOFUghJeArGqmw+kOdWMi+XMqg6oYPvk0C/ued/cylWV0DqBSwRaEnJYQiwNrVme
         EyMpGs6q9700Lp84ICBP8CiaiyR4vIVuSmjVUSIMlQNMPT77dyk95y/Wh7kIt/aksjtV
         AkTg==
X-Forwarded-Encrypted: i=1; AJvYcCXd1kiy1XLSPMGK5vvv+tdF/x0k0MDRGm1nkCzdia2Lb6eFeF/9CW4lVbUa2LL16V7Ik3btDhnMp3ejIjUb1QJX7ZrjTK5TJWIW
X-Gm-Message-State: AOJu0YznD2whjuDV5ABB98M3TM1Hi4Yoii6wgYcUj0EFstBUmdi4N+fI
	eSYyMuAp2L8WBmT7iJ+tc8UaAUnsc86XPsNSuqIDbO60jyZ7J/OaG/PEGg==
X-Google-Smtp-Source: AGHT+IEA00vdGvD6iGcE0sewPseT/UheKs1jZlyT9T6XI9oziUK777LF8IZhcrXI5T9Ii933PeB+LQ==
X-Received: by 2002:a05:6830:620e:b0:709:5b14:53aa with SMTP id 46e09a7af769-70b50bd426cmr591580a34.16.1723119366029;
        Thu, 08 Aug 2024 05:16:06 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::48])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5d7625e9b97sm3705642eaf.34.2024.08.08.05.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 05:16:05 -0700 (PDT)
Date: Thu, 8 Aug 2024 07:16:03 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Vincent Lefevre <vincent@vinc17.net>,
	Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <20240808121603.fatotzqmtpbf2jez@illithid>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bsmokowrdevzpus7"
Content-Disposition: inline
In-Reply-To: <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>


--bsmokowrdevzpus7
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] nextup.3: minor improvements
MIME-Version: 1.0

[looping in groff@gnu]

At 2024-08-08T10:07:35+0200, Alejandro Colomar wrote:
> On Thu, Aug 08, 2024 at 04:56:36AM GMT, Vincent Lefevre wrote:
> > On 2024-08-07 23:19:56 +0200, Alejandro Colomar wrote:
> > > Hi Vincent,
> > >=20
> > > On Wed, Aug 07, 2024 at 12:56:17PM GMT, Vincent Lefevre wrote:
> > > > The current "If x is 0" is a bit misleading because "is" is not
> > > > the equality test, while this condition should apply to both -0
> > > > and 0.  Replace this condition by "If x is equal to 0".
> > >=20
> > > How does 'is' differ semantically from 'is equal to' in this case?
> >=20
> > "is" designates the value (it is a short for "has the value").
> > For instance, in the same man page (with the typo fixed):
> > "If x is NaN" (saying "is equal to" would be incorrect, because
> > the equality comparison with NaN is always false).
> >=20
> > That's why the sqrt(3) man page has
> >=20
> >   If x is +0 (-0), +0 (-0) is returned.
> >=20
> > and the cbrt(3) man page has
> >=20
> >   If x is +0, -0, positive infinity, [...]
> >=20
> > "is equal to" corresponds to the usual equality, as written in
> > a source code. (IEEE 754-2019 actually uses "equals".)
> >=20
> > For zero, one can also say "If x is =B10" as in the IEEE 754 standard.
> > The IEEE 754 standard also uses "zero" in the sense "=B10" (but it
> > never uses "0" in this sense when there may be an ambiguity, knowing
> > that in practice, "0" has the same meaning as "+0"). In a condition,
> > when it says something like "x =3D 0", this means that x is either +0
> > or -0 because these values compare equal to each other.
>=20
> Hmmm, I see.  Thanks!  I think "If x is =B10" is the clearest way to say
> it.  I'm not sure if that glyph is available everywhere, though.  How
> about "If x is 0 or -0"?

I think it's reasonable to assume that it's available.[1]  groff's
terminal output devices will either output it as-is or substitute a
fallback.

$ printf '=B1\n' | groff -K utf8 -T ascii | cat -s
+-

An argument could be made that this fallback should render "+/-"
instead.

With low-capability devices, there's often no single best answer to how
one should limp along.

In groff, of course, you can ask an output device whether it supports a
given glyph and define a string appropriately--but the first part of
that is not portable to formatters that don't implement groff
extensions, and doing so could rouse the ire of Ingo Schwarze's
mandoc(1).

Regards,
Branden

[1] The =B1 symbol was in the Seventh Edition Unix troff glyph repertoire
    and is also in ISO 8859-1.  I conclude that it's as portable as
    anything not in US-ASCII gets.

--bsmokowrdevzpus7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAma0tvsACgkQ0Z6cfXEm
bc4lbRAAnuC9dakhWV+sjsi20WVHNY0Z9wjQ/6hcEZfBfjbRU1MsdWdrC1J3T/4n
3clqvy50xPFkwUQfWfXMgSlYIgdu5rHnIP8BGV5mQ33MU19zYrTBVOtdaLzZGiKo
ALaQ+QYXNKNrtzArn8vmpbecrirjBSaHIw7SgkqzBYMJbjb9xmkredNwztK+Zta2
g4mi58vU7vxlLocNxKabMsZjta6udSZ3iIlnTOWbQEkPBS/EYa4HuupUgBt4Lopz
j4mefTcTBqg9Q+L8Ka8WTc3qFL2vIZVEEnhlGdTa6NdwwLsXsITWw/CbfVzBjRo6
k2uYIHxYGrWzD0soIOIeEi7vKRcE0GChWQO6y6rxaiuGKmOp1idTQQn1cyQvX/7+
3/P0inXjWJn1R/sNbiw26x1gC43v822N6+VZj9cgvyIpCFHe7j+v5pb8Nib3L+Ej
m31rhXVb8RZ7R2FMO/vMxJ7FTWPI+BpdXo2GMjMEIAhnTo/Iwe/VPEXVHpm5LU+y
xWtRx6aputolEWSXIFn6V7Q5AcPQlclimIkq2Z5wwGrpxY0FVlmOcka5zxBeLDhd
zWMYal/ANLXL8iVfV/sMK1ddXh/5oyGD+TfvJ5NdhUbLYX1NZbHe2zPxUXE7R4a9
LZed7Rab5XhHcGOua+grO//9XN3IQEO5fSvw8GaB96G7LBxuPlw=
=N/Fr
-----END PGP SIGNATURE-----

--bsmokowrdevzpus7--

