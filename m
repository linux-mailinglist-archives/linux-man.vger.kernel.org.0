Return-Path: <linux-man+bounces-2140-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3C29F1BA3
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 01:57:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E2EA188EBA1
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 00:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A670BCA5A;
	Sat, 14 Dec 2024 00:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iT+OnOnm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD819CA6F
	for <linux-man@vger.kernel.org>; Sat, 14 Dec 2024 00:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734137820; cv=none; b=dul04Af0j75y6Zeea7dWJtO7SQZnMpIsI5YQ2PryYK9xBm73+mDkXlUjtApPv6hfUZioIaFnqthDGahqp8qrnu1EXmKzluQBalQAq92FZv9eJYJXrAbqF5XApWCXyv8D8EHLuaJDN/gfdSWZ65D6mV5tBELe/3BjBEbSfUtJwcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734137820; c=relaxed/simple;
	bh=X8ZoXnHq+y3omcZpI2Nz643uJbpAOY1CD2blpFaUDHs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ndP9t2kCDISv+I3IpFZDlmswc9LsxOpLSBbjZv33VODZrJTXxWAKPqdG3tq9T9b7Hx9D974PqcSOjOgcyiAfXIV1RzizAHPJIGeEME90rpBb1L4DqKUHBEGvHdwgzJoEp91zG+akFp/uij/NZ8Grg/U8jM2it9op9300tv3t7/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iT+OnOnm; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-71e3005916aso444292a34.2
        for <linux-man@vger.kernel.org>; Fri, 13 Dec 2024 16:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734137818; x=1734742618; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nFkrgrMPHJBask1PYCL1QYpdVK9EhyFdW6Dy3BdqVqA=;
        b=iT+OnOnmGPfA0Y+tXhGWySikTTjs2becV4eyQTRbQoNdeYVevsrtil3SEpHL9KD4zI
         AUMImkAxYak+UM9HWVAe1Iltr91E4mGC/K2Mb0nKJDJN60Qg3Ab1Peso7CQbtKU9gDx7
         gRWHRakyix2qK/+yXuZDV8dMoInJp4Hhhk/exYbaS1ZFsJvSKmMYVYpB+BesNUt9Y/fr
         6IQLadhoNRdwyaDPeWFNT1UMUtdBB5vP982Cu1uE5HnkbXTFiQ5nENYVCpZCBK/TFfjL
         qGOrbIaRGrDu4jJUBzPj7yUWwrserXR1g7kR3z/87pRKZlDfVGs8jdH5ODTfYS4PmnRl
         R31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734137818; x=1734742618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFkrgrMPHJBask1PYCL1QYpdVK9EhyFdW6Dy3BdqVqA=;
        b=hf8Xb2VRrRa4UXAJpYKwPOkBiD5WQR5qlUeRDj8Q1XQStHjCy2zkxR6mhPsANl0rFW
         TpJ5KWAOs0EjX3p0V/fQdnZidyUM0LE/nsTJ2q6muExyX0J3kKh17VV8h/lBoN3ts8OU
         xhasuGcdy4s6uraWMy5kZLoJxq3HWq3DWxaLK0NMN5iJDm/YZLUhUIRBQIFzk0rg7GHS
         TaOj2sv2Pnu501NfekJfHrGE9hoRghIGPOVcf3nLAvMR0Ot8uRyBTqMJxwwLJmJwupUZ
         TdPJEqXjon08PAS4q0zpHGBpPNJ430UxccUaBx5rmTHpYtZuQRLytGriPy4nlVl5mTJy
         p2LQ==
X-Gm-Message-State: AOJu0YwddojMiGDHhHNu36vOOB9LPTratMBhXu5mq2/51fQk8XjxNhvQ
	4g9vHoK6sjR0HfFEiDacsXB+WNxes08a7+NRaVXkBwqv/zCc1FVP
X-Gm-Gg: ASbGncvPXv33pfCV4A/IZhANmfr9+rtBDTOCnsddyWvyI+EK5o41PN0ZRCLIxQsAyN6
	BZ38AmM0gFABW6tBUSLu8sWbKgtdFNcVw2L9wdyb7ggnrGk55OgXDbyqSmc3n4SA2mQjVwwiJ2G
	EU5tO/dw7iKQNbUDF3cmAoQgx6eO5WT5cNrHoVHOuyWG1CwJphdrEpJf4fVWjSRR2YFdXYKe/QX
	ka6SkwtNueFXQL0ux8LwZ0EixYBs5LbofJRVL9qEVrv2Z8=
X-Google-Smtp-Source: AGHT+IEmLfuaHo7eYSQ8wa/qCM+FG0eo1i3BhfkcMlQJiuCui8mFoia/DoohVsrmv9H2Nwu6EWXhaw==
X-Received: by 2002:a05:6830:3742:b0:71d:fe25:1a88 with SMTP id 46e09a7af769-71e3b8a3528mr2118324a34.17.1734137817779;
        Fri, 13 Dec 2024 16:56:57 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71e48307e07sm208681a34.1.2024.12.13.16.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 16:56:56 -0800 (PST)
Date: Fri, 13 Dec 2024 18:56:54 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Bruno Haible <bruno@clisp.org>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Helge Kreutzmann <debian@helgefjell.de>,
	Mario Blaettermann <mario.blaettermann@gmail.com>
Subject: Re: names of ISO 8859 encodings
Message-ID: <20241214005654.vhpp4c46p7sw4zjr@illithid>
References: <3678665.hdfAi7Kttb@nimes>
 <20241214003716.gnockyne6qh7jpml@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fi2nmvwu7y4g7uzj"
Content-Disposition: inline
In-Reply-To: <20241214003716.gnockyne6qh7jpml@devuan>


--fi2nmvwu7y4g7uzj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: names of ISO 8859 encodings
MIME-Version: 1.0

Hi Bruno & Alex,

At 2024-12-14T01:37:16+0100, Alejandro Colomar wrote:
> On Sat, Dec 14, 2024 at 01:23:09AM +0100, Bruno Haible wrote:
> > Commit 3ed1de0ddccb42bae4151c7225d3fddeab04ff43 should better
> > be reverted, IMO. The ISO organization or their *standards* can
> > be renamed to whatever names; what matters here is what the
> > *encoding* is commonly referred to.
> >=20
> > The *encoding* names are standardized by IANA:
> > https://www.iana.org/assignments/character-sets/character-sets.xhtml
> > The first ISO 8859 encoding there has the name
> >   ISO-8859-1
> > or
> >   ISO_8859-1
> > and the first among these is the preferred MIME name. So, please,
> > in encoding names:
> >   * revert the ISO -> ISO/IEC change,
> >   * change the space after ISO to a dash/hyphen-minus.
> >=20
> > Likewise (partially) for commit d5e5db91ece5955b21ae1aedc03ba1d56d3cf42=
3.

Oy vey.  Helge Kreutzmann submitted a similar bug report to groff and I
was planning to make the ISO -> ISO/IEC change to its man pages.

Also your point seems more strident than clear to me as regards the
encoding name.  If I want to refer to character encoding _not_ in the
context of a machine-parsed MIME datum, I trust you're not going to tell
me I need to spell with an obnoxious hyphen-minus or underscore before
the standard number ("8859")...?

I would then wonder why I am not equally compelled to write "ISO-9000".
Or, to name a standard that comes up in documents to which I contribute,
"ISO-6429" (better known to some as ECMA-48, and yes, ECMA standards
routinely get the hyphen-minus).

> I'm okay with reverting those if there's consensus.  Would you mind
> CCing the interested parties (e.g., the people that requested that
> change, and anybody that participated in the discussion)?
>=20
> (I've CCed them now, anyway.)

Thanks for looping Helge in.

Regards,
Branden

--fi2nmvwu7y4g7uzj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmdc188ACgkQ0Z6cfXEm
bc5bPQ//RhWSve5jn8u/3ISkk4PusRwKnFDHJyGCn6Mlji6qQWNbl03UBKeC+68P
xxlqUqUlq1p7wvmqrQ9ypmblx+xEHMWqNLLflNcH+GdZhljboiLTcS5B965Kv7Iq
u/GdeEnzF5lubhlA2yHHQL5pgeHbsJHRCG2hA0fNef5pXE3E0BS7N5vnyjLWoo0i
9Bt6qYpYXr7DpPRQP2GpWAlGY2lq7Q9MJAPjUxKTX87yzHtwVbz4h2k+OuJx+2WQ
lV0y2OaWWvsSn/oRtSw7x2WAHyxNMfeSnacVf+CfsMNgX83F0/driDarDyWaV1l/
Frrnas5BCq1bz2EIz/1ZwUnuau0k0T4oYBHPhOleAp6gHaZt90AXYwE5O6iskUfp
0rZQXeHWEM3KAjlbw+ZwsiNPjxbblRzUS1vLRLMl51NJ7Dyl123EgdetfyeU4Uez
8c0LKPd1rdq8gBbW+xTQKeMc24RrM9Zu+d59Jc5LpwDASwOYMYoOxY1kDNb+wqbU
RIhsosIdIkLPM5tZfbiK1bQoSo160RpXFSb4On/ApfqVR3849kQDfyer/d3OEZ6P
K3h/kxrrkw7fBxuC7VC1cjbO29SxXnqnX5CkI2ZhUEZ9wvkFUlS5dJuIZL2MiCjJ
orHpG2LNj2fsKlmzmQQBucUx00ibeA4xX0U25/OOoJu6+TQE1Zg=
=Cn4v
-----END PGP SIGNATURE-----

--fi2nmvwu7y4g7uzj--

