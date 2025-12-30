Return-Path: <linux-man+bounces-4589-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EB4CE8E2F
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 08:22:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F144E300E028
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5078028CF77;
	Tue, 30 Dec 2025 07:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eZ3cBCKW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99ED323EAA4
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 07:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767079357; cv=none; b=fg+akxLD05II1twseTVsTLmu/qPDF3EDSQdctdnF21juj0Yev8/MMgm31rNkcnIh/cmmlT6eVhBjIYh/NaoCV2O+W0y+ZfhMxGocq+RF4OlamA6N2hPPqnHoclQpMX8OwACK5AWktvmqihB870frG/50TlN4BlwlSioiVBV148s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767079357; c=relaxed/simple;
	bh=5n7dTFkZcWGfxRPuH3QNm62li4Ws2spuL1emS1yp9LM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E55iK1DRPbz+lxonuY9AyfJxZ3cs6fCqisU3kB+ZCgSHUMklvHMAPIVHDSv/LEpoplJljxSCQh2gC6akzcEVDQgxRuIblsQ+PknusyLarKJAq340eciVwoJvhvvE19VkhO+6IJFAqSk2Dkby4adDGaHtKm8DBchIaypkG4luDL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eZ3cBCKW; arc=none smtp.client-ip=74.125.224.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-6446c1a7a1cso7996269d50.3
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 23:22:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767079354; x=1767684154; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wDQ79DJjy5Jnao2G24FD4CZGIi0bFJDAihp/dfyZVCI=;
        b=eZ3cBCKWryP5Lz/lSbLcDtxam6Lzx6fCqQzkTeuorppLWMbl/9OspTCCkwN3EiYuVX
         Mt5Vp2iLS4azqFKvst3UnmDMBqNMacFD+pCrn+b7wUqA5NzdSmnKYB4V/KBd2WDJ9c4v
         1IQD1UxKdYE+NoEWRrQoWsKcc567eRGO1IqIEwZfpMQfZKDmQh3cstd+K4fRrs5BdLAq
         ODRtIUTWI7jLZCcFFjEbrpo/kcSRR5ZsjpMgBIwlIaZ0eZc1YNt9zOGDfX2Z94se2gLu
         Zc5H3qyeONEU8XEAkd7Pzm36FovdSljTl8vYhraAJ+0gT29Am930O2QB7ndk5nWapX7s
         AFyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767079354; x=1767684154;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wDQ79DJjy5Jnao2G24FD4CZGIi0bFJDAihp/dfyZVCI=;
        b=ofhJoddauFstJkO+1za++mB67gZzxehr4eAzdm2HgZ6YYrXTtMHcHk4HPqahtx/mCR
         bI50KlbOlmQLI/RgpNQZYavTHygQpCRONoWYmPf6OwGIV0lHGVni6cu7aiYrNpEvRMPN
         JupG5DsBz/GGbEI+Whzlo5+rjFod/s6sFj8BMfZIb3oEgnlnePmWy+N+GBnE73Sc7edH
         m1ylwnidjMEZSQDK7uijvSxPGV+9/NzmCUNeiDGN3lQljIxXCfd+3SlJzm7n+iI4cAy1
         q1lAOGF2PeSj1Ywc8WJ3dgZDwZyJrr8eem7AtykAS4+ESm1nom3Jgl1AS5zOCEomYR5n
         qJmA==
X-Forwarded-Encrypted: i=1; AJvYcCWuWjqtWsaI1ggtxep7OaB8FaRyrhaKfbErZp7zWTX1QMii1gLGGf7UNAfpc1HPioLsYI2bOAZObcI=@vger.kernel.org
X-Gm-Message-State: AOJu0YyQhxeWMN1g+u6GS8vnGkPJwZr4Hg+dcGlxPeVk4Dfgf2rcR3Fz
	3xayMmV8rkBveXemcMPopMQYpx0r6HQp5SoKPxQQndFHYrRtzHqpt6yd
X-Gm-Gg: AY/fxX6ZRzoS33GSYxXp102lDFc3RR9QFXR92qaCuYTsxWgqTOoJLDeTQO0qsPOvqiB
	go/AJ1o6N9kuFPHAvm2FwmCODLaTgagl1iglZlyNW+98bpRxbH1YB3JlO4Qy0EQRPexyeNDCW5C
	Ji8TCz1hEUk/KzEkNuEdYFs4LtxuSGrsM2Rszlx/JIecQ9s5PSCWpMPau120j3gs3h3khHb+W8z
	GNFYvBuO9A/TEv+oqEyIxVhFNgQkbzj4F/acMFhgPoxtLsu07LOTWLzmex0+YJRVEUy4kyDEz04
	brhU0GesRjyno/gsBuPdTTkiDsA9u0VFMpMYfRjOR159G9ZdoO7WMyAEjryYux2uA024sPe6T4h
	unAuF+38cwylCxqyeKe5Yf4ID/lgY4YPokYAsBPUON+tN/LInRbYm6fSLNf+HRL44EIbou5usAf
	hy
X-Google-Smtp-Source: AGHT+IEXpGpyrPkq+GtQD9g25l+Nnt3VA/h3tLuOjYKUK6NJCLX2zY9aFyd8EI9biTzyBYlvl/+Ilw==
X-Received: by 2002:a05:690e:418d:b0:644:2c33:42d2 with SMTP id 956f58d0204a3-6466a85b6c3mr23823085d50.23.1767079354552;
        Mon, 29 Dec 2025 23:22:34 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78fb43a9cc9sm122460827b3.17.2025.12.29.23.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 23:22:32 -0800 (PST)
Date: Tue, 30 Dec 2025 01:22:31 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Collin Funk <collin.funk1@gmail.com>
Cc: seth.i.mcdonald@gmail.com, Alejandro Colomar <alx@kernel.org>,
	Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Is 2.11BSD < 4BSD?  It depends. (was: [PATCH v1 2/4]
 sys/man2/sysctl.2: HISTORY: wfix)
Message-ID: <20251230072231.cbsmcowvonavhd4c@illithid>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
 <87zf70xxog.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kkawxfv2qfh55kkb"
Content-Disposition: inline
In-Reply-To: <87zf70xxog.fsf@gmail.com>


--kkawxfv2qfh55kkb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Is 2.11BSD < 4BSD?  It depends. (was: [PATCH v1 2/4]
 sys/man2/sysctl.2: HISTORY: wfix)
MIME-Version: 1.0

At 2025-12-29T22:59:11-0800, Collin Funk wrote:
> It actually existed before 4.4BSD. It existed in 2.11BSD at least [1].

Hang on a second.  BSD version numbers are a little funny.

It is true that 1BSD < 2BSD < 3BSD < 4BSD.

After that, things get a little weird.

2BSD targeted only the PDP-11, and swapped out entire processes just as
Unix historically always had.

3BSD targeted the VAX, and supported demand paging--just as UNIX 32/V,
the most recent common ancestor of AT&T System III/V and [34]BSD,
did.[0]

4BSD was a relatively minor update to 3BSD, also exclusively for the
VAX.  4.1BSD was a much bigger deal and would have been 5BSD, except
AT&T blew a gasket over the version numbered, seeking a proprietary
claim over the number five.  This has been discussed just this week on
the TUHS list.[1]

2BSD however was not abandoned as soon as 3BSD or even 4BSD showed up.
Some people still had PDP-11s around.  And thanks to (Open)SIMH, we can
all still run one if we choose.

Features from 3,4BSD got backported to 2BSD, which eventually stabilized
its minor version number at "11", I suspect because that was
irresibility useful to characterize the system's only supported target
architecture.

2.11BSD continues to be maintained today, as a set of literally hundreds
of patches, as Berekeley-flavored Unix aficionadios explore just what
they can do with what is now basically an "embedded system".

The most recent patch I know of is #498, dated 2 September.[2]

I wish we had a modern package manager for the thing.  I've never been
crazy about BSD's "patch && make world" approach.  :-P

Regards,
Branden

[0] The demand-paged kernel was such a big deal that it's why the
    "virtual memory" version of the Unix kernel appeared on disk as
    "vmunix".  The Linux kernel aped this as "vmlinux"--"vmlinuz" for
    its compressed form--even though there has never existed a
    traditionally swapping version.  The more arbitrary and esoteric a
    naming convention is, the more tightly Unix people cling to it.

[1] https://www.tuhs.org/pipermail/tuhs/2025-December/032903.html
[2] https://www.tuhs.org/Archive/Distributions/UCB/2.11BSD/Patches/

--kkawxfv2qfh55kkb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlTfbAACgkQ0Z6cfXEm
bc6Cdg/+Jc/zXShVl6vLyA2Ic1/b6uaoZWYiy8sOL5gLt1pvbHFqa3N7OX/Ds4TB
aZVCSjq9h2aKtvcvughQqnPsM2KdF7C3If9miwx/HrutXCbQSFhhvuZECY6/k9el
dBrw6rvvvuEdJG5BcNQF4h5v1KXiTB8BgF7HQ5Rju/pfCO4cznRMLIXX2qm3HEN/
RFYNeUNwJtjjDt2vEAi/cu1XWMT0t60E+YzBJXDLoJEJTCFDocNw/eYV2jx2qUyl
1mCp+wZBLlGSwClK2oT1HJOOUcKm0s3dn7bMdu0IVWjk4TEiSUGriUTYYzcook1C
4TL6OQOzTKEkIWLgb7nt8E4+6jEillYzRKrpimEUhypNoyu7r+Nm/nz8H2yqlSlr
nwC8yDI+DnALA5oA2L4GieR7abgHqCr+FUtOAP8YHSS9lSGxnPpfzUvn4Brefz1O
/zbWD0rbnLlnSZT4YHGMZ7ljFwogXUBIm/ljj14Q4Ilj5RRcOmO75AtGvGuFWiuq
Evs0FYewTFwgoIFY/iiT9HsJDN1297iym60UiskPDC71U8Pgdac3FT2IFi0nDufd
wPfSOD1H68WRNVXDTc1yAXV4CebuvrYoI0FitVLVpHqwJTqLY9yOJya133cv+AAC
aOJiCtQNRzFuFk4EhvTA2iqDHVS8/aeNPvibbqiiOjmkkbBIkzA=
=bC8v
-----END PGP SIGNATURE-----

--kkawxfv2qfh55kkb--

