Return-Path: <linux-man+bounces-4214-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63653C1892B
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 08:00:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 636CD189064C
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 07:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C212F7AA9;
	Wed, 29 Oct 2025 07:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y1mFGqQQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8544126F463
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 07:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761721246; cv=none; b=KIC8TVvGpaGGx5jNoixNC4RTbhLHw+hwrwh+/sG6VGnXEvW8o9Y9b8Ml9mgBEuqQcw6ccodaPhjv/uzDGuYDhN5t6X5tynNqU/ByuZu+s5IHBx0ppOr7P1VRfWZoqtliz4o+3z9v3D+DS9rkEuCvrkoWsP9hb0BoVZW9+KV4t20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761721246; c=relaxed/simple;
	bh=Inf6c6qjB8SIZGxkJFWXJKsaOH+IBz9/QRU0VE5YP+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fAw9aimdQkPJkT2ZGssRAs7e2k0MAEZNtMy+jn0FicfnLOG0jnXdF0qW+q+6Y0baq38IZ1a4ttgjHhb2DjvBqZNMeSZablRm3XxZ+eMPNlBBwgHaJF1rjlE3rCzF3/e1pLT7iRhm5RXJm2WxSrbKIjBoZet79vuP3oVNiA+P+zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y1mFGqQQ; arc=none smtp.client-ip=74.125.224.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-63bcfcb800aso7751937d50.0
        for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 00:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761721243; x=1762326043; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4MUq4PdXjxIGcHOCDulreNgiMxSoR/01WxcBdIo2vnw=;
        b=Y1mFGqQQAZ98WGh1/AQc+TT/7Od/Heg6SBktrtu9iqsZpjGc28lcqWZvYIP8kfmsH8
         XeLyRGYZv0NajwThm4kShjdcihDkfTd40kZmx1yXcgoBGG4nmVaRGlpE+WnSXet4OEQS
         66pqXQc2fafph9JTok3IaB9i+ri5MNeuMBQZHc3v7H8C75hRTwMMySGeuRHH0a1yCQpl
         zCrYmeMbLaVt78T5i7v1Qetp4iq1l63Lt9bgQf3WXVDt6kaZ/UjaFm0vMChZw6r9eMDE
         TDWRInPD23MZlGZZR+TOo62KMhADjlS4tEZzNbIrT3OqVC92QXiOerdWK7LHtoCIun2x
         xN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761721243; x=1762326043;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4MUq4PdXjxIGcHOCDulreNgiMxSoR/01WxcBdIo2vnw=;
        b=uN/trUUeQcGmSmYhHmxtbtdv7wagi/LEkiV/NxOk4b4b41oGiu7AZCGtr5Y1R/ayIj
         0Ztq21UcblFIvoA6XMANKUOmBTksKwjUP0DA5Zqq+oa5YhzlSP7sp5rBSkdd2R2ahqcf
         MCRAtQyr/OZvlETnhBNeFCfqsSvBmgSbiUpPsYSunHOG9hGinudmXFSFm5yORf71bRmU
         7DGvB+FNTkKpuIBVpnqrTCWgCFaAr2DDABHE89+9FJLbO+gg1ExFgEKYZ2rdZH5V5oQh
         LZVUk6LhySQx9XYVlPJhXbahrB/N9SQg0wD6mA4PGliWChyZCsGqANg4oux4cR9obBNQ
         fjEA==
X-Gm-Message-State: AOJu0YwEGJjNcbKPUj3H0vw2QEPLjl0CQdBEOFAgMtK1zgDS0ZCSeSvB
	1bgKwOeSNZpNw2g4S7KoECKRbhCtGpF8w4pCQIX4+FOb7KATLNRUYkcM
X-Gm-Gg: ASbGncvsrqtjMMKpsrkTyZxXVc/2Z2u4shm5QvNzUJpGiRmTmt1eOC1+nywD5qoo984
	MhWLUnB1jJnQ54Oupw8xoUXtcbtXPJ1IKvRWCD4C6sqGICbazdBOqqHsxEjtxsNX02BQE3h/JQl
	o6VuiHmoo08+5I1awwNOIAiuCEgSoArvSPRgvPQUuJdzfXEP1M833faOHRUJZSBacVNyzqk5IFO
	T/dRhVNKXBqHbAWzDhsBDPJAO7PDiT+T74orXxtLqFDXY8Z1aOzGa7RbBRkcR+TpEcIdv5yn3tW
	Pui7adKPAuvBzTqRHosRxMpKon1dhbS9Gaitd4cAEWbPu7J8wXpNvIZrV2GHEBG7TIx51qw5BAG
	/JSUXTODSfCovrlCDf5U2DLVJj9Raf0zrM+baSnTaLV0lhb9YGqFgzuI+nN0+j0KInA==
X-Google-Smtp-Source: AGHT+IHFHDucOKsHHxB9eTiLZFyTizde00EfRU/PZbouxGGgEYXpQPqCJsemsYnYG3rZ6akGZdmxRg==
X-Received: by 2002:a05:690c:46c7:b0:724:be89:9b69 with SMTP id 00721157ae682-78628e827d0mr18998247b3.3.1761721243367;
        Wed, 29 Oct 2025 00:00:43 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-785ed17a1e7sm34365107b3.12.2025.10.29.00.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 00:00:42 -0700 (PDT)
Date: Wed, 29 Oct 2025 02:00:39 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: linux-man@vger.kernel.org, Jan Kara <jack@suse.cz>,
	Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH v2] man/man3/readdir.3, man/man3type/stat.3type: Improve
 documentation about .d_ino and .st_ino
Message-ID: <20251029070039.6axt6yugqobyv2nh@illithid>
References: <h7mdd3ecjwbxjlrj2wdmoq4zw4ugwqclzonli5vslh6hob543w@hbay377rxnjd>
 <7cce7dac8fb57608d71b073f8a3c94532e5cb688.1761693028.git.alx@kernel.org>
 <20251028235306.sxnpm333u4xtxgt5@pali>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r2qojaz572i2qkhx"
Content-Disposition: inline
In-Reply-To: <20251028235306.sxnpm333u4xtxgt5@pali>


--r2qojaz572i2qkhx
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] man/man3/readdir.3, man/man3type/stat.3type: Improve
 documentation about .d_ino and .st_ino
MIME-Version: 1.0

Hi Pali,

Thanks for following up.

At 2025-10-29T00:53:06+0100, Pali Roh=E1r wrote:
> Hello Branden, I'm sorry but I have not received your message because
> I'm not subscribed to the list. Otherwise I would have replied to you
> earlier.

No worries--it's a risk I take when forgetting to CC people's accounts.

> If you are referring to the "bug" then it is written in informative
> part in RATIONALE section of readdir / POSIX.1-2024. I wrote in my
> first email in that email thread which Alejandro linked above.
>=20
> Here is direct link to POSIX spec and below is quoted part:
> https://pubs.opengroup.org/onlinepubs/9799919799/functions/readdir.html
>=20
> "When returning a directory entry for the root of a mounted file
> system, some historical implementations of readdir() returned the file
> serial number of the underlying mount point, rather than of the root
> of the mounted file system. This behavior is considered to be a bug,
> since the underlying file serial number has no significance to
> applications."

Thanks--this is precisely what I was asking for!

> That part is in the "informative" section. I have not found anything
> in normative sections which would disallow usage of that "historical"
> behavior, so my understanding was that "historical" behavior is
> conforming too.
>=20
> Please correct me if I'm wrong here, or if it should be understood in
> different way.

I can't speak for the Austin Group, but I don't read the text quite the
same way.  I interpret it as saying that some historical implementations
of readdir() would _not_ "return a pointer to a structure representing
the directory entry at the current position in the directory stream
specified by the argument dirp, and position the directory stream at the
next entry."  But I suspect that's not what it _intends_ to say.

Instead, these implementations "returned [sic] the file serial number of
the underlying mount point", which I interpret to mean that they would
return a pointer to a _dirent_ struct whose _d_ino_ member was not the
file serial number of the file (of directory type) named by the _d_name_
member but a pointer to a _dirent_ struct whose _d_ino_ member was the
file serial number of the underlying mount point.

I think there are two conclusions we can reach here.

1.  POSIX.1-2024 might be a little sloppy in the wording of its
    "RATIONALE" for this interface.  Presumably no historical
    implementation's readdir() returned a _d_ino_ number directly.
    (Though with all the exuberant integer/pointer punning that used to
    go in Unix, I'd wouldn't bet a lot of money that *no* implementation
    ever did.)  I'll wager a nickel that readdir() has always, on every
    implementation, returned a pointer to a _dirent_ struct, and it is
    only the value of the _d_ino_ member of the pointed-to struct that
    some implementations have populated inconsistently when the entry is
    a directory that is a mount point.

    If I'm right, this is an example of the common linguistic error of
    synecdoche: confusing a container with (a subset of) its contents.

2.  The behavior POSIX describes as buggy is, in fact, nonconforming.

> Also I have not read all those 4000 pages, so maybe there is something
> hidden. It is quite hard to find information about this topic and that
> is why I think this should be documented in Linux manpages.

I reckon someone should open a Mantis ticket with the Austin Group's
issue tracker to get clarity on what I characterized as "sloppy"
wording.  Either it is and we can get the standard clarified, or I'm
wrong and an authority can point out how.  (Maybe both!)

I'm subscribed to the austin-group-l reflector and will take an action
item to file this ticket.  I'll try to do within a week.  (I have a lot
of old Unix books and would like to rummage around in them for any
documented land mines in this area.)

Regards,
Branden

--r2qojaz572i2qkhx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmkBu5AACgkQ0Z6cfXEm
bc7e0g//YF9mQOjuK9T+jQaUyF4W9TsCrZ5xYJEP80j2ggK/7Jygn+Of5QBPoeX2
8u2IP8gmtmurcb2ajsGXYTZf53vkkaM3D5Q1hkDLuaW3QZB3w41K13doP7dTk/Kd
FPEXbPvpgAYca3AFkYc8r6D5iOGMEH/7mkvvF+42Y6WIPb+DkiM+ThzL9DnyPnd/
NgEx9lkHIpSnDjgAcfFTTgX9m+u9vkbIXGWP2JxtMxOhp4WuoIlCc+LhEAdAyaZn
CIGOQQ/zQSf5mc5DGMbKw0BfEJ7QCu67Zrzj1HwOKfT2y0NGw0fnBxh3n6w9yLC/
fabN/Pw5rQ3U1haf/jM9JLXDWFAkC8zdnKyWcVS2hERecOBOh+nyhPwfFqyEw6oC
BCqPFii6SIClmmg0mB9etE6Qh5M4AZW1NidAcNGEzwQjBp4xpq20rKMvZ3BNetV9
PFgG20ZEreV7LLWAC+uNJkBKjtD89VSr26ErOYn8IH6IbZ/RF/q9i9sUa/WCkypa
RZ2jMmkYXKIiDWHtYeMJJg7+rxgk4VZ3kqJHtJXqKIlEr2AwoKB52/HCF6pJlm+Q
3rlKh6bVM3mCOByp84mlci9mLuiaaXgjJsnvu9vQ1uBXIN/kalXfajq4G4qZp0ie
TLR0i6LVVeWikJxpz9BYqA9Dac4BQrq9I5ZGbVsJf06bLSYYA3w=
=LxPx
-----END PGP SIGNATURE-----

--r2qojaz572i2qkhx--

