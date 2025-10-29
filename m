Return-Path: <linux-man+bounces-4230-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D49C1D96F
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 23:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6403134761D
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 22:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A371D5147;
	Wed, 29 Oct 2025 22:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FkknRkYF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BF0288A2
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 22:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761777058; cv=none; b=BjCKBQpek3I7Mc7bZUN9p65CW1CkIeVvpxi7EqyGmaYTpQu6Pangxx2+mmuNX6TCArCFFHSjh1V2XTn1OplFnFTm3unPQ76HsdbruKIn4Dc85CO2hsRXpgTHjKpajQ6SC8A4Bgbgub86a0wO+V1WtYwKZTmz0UO9lKuL9Wtu6PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761777058; c=relaxed/simple;
	bh=MDeycv2kGRYvsfSXN0wFoOSJY28BhncEW9tEnkQilu0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O1s5wJTM+cs1LZygKU6lNOHN+0APCc30ZQruQo37ZdfD9boAD9ODRDcYFwtq/VSoxXC1UtyxDPj234Y4PI2G5390SNMSCOEWnu5OTbUJzSkPswJrOihKwV8tJ/uAuOCfOpdiH5BQNWBRZF747KAINSdqQiT1t/MBXSaS0ct3pvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FkknRkYF; arc=none smtp.client-ip=74.125.224.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-63e2c7a3d10so571136d50.2
        for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 15:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761777056; x=1762381856; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5RKdWt5ADcFQ7uEVscQalrg+xNCh+F02f5TN5iaZEUI=;
        b=FkknRkYFshLJWv+AF5IA58qqbu1AufgHvHHVk7O6B1N0pmGpkbydyZ4sCsWvOyhX0s
         Igs9dC2ngsZMf+rWS0gWndoRFDaIAIlX0X/oKl5ZGVs++jctvKL3HyU+0ByWjH8ATWUD
         kuYl4/XqvtB+gAR+AQnExDPUYUsesGGvt0JwlzH1zISIo9IVTAFFE6fek5hhgTrlpwxz
         vnx9Tu8LhsATXaOqL3FbXAAEqPpqsQm1BCw7CJ/1YiEwtFg/eNr06iUUD/6r0gb7ptbb
         C/Wxi372F4OyUTmaJ2mWdFCI6tfTQem66H4XN74TuRQLrFvKg/V+5xgVnNC8tofkUjoo
         OinA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761777056; x=1762381856;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5RKdWt5ADcFQ7uEVscQalrg+xNCh+F02f5TN5iaZEUI=;
        b=qqAQ5TUPrAra+1iKU6dumvhikuGLzRmooMmTwqpIQ0CWcM/P1APdN7xZD4VoTK2QRg
         GqfWm2Iwo++/q0uxF2MsYRd4b4btsofas7qdTvjr50VAG1f63ZE5H/m57Jp5PLB5+cGH
         aBCZCGHACS0Ws56vAWmsOju3QLHbS6LdnWjjxw2xjjovYCs/kRsH0e2ls069aRFpDzY8
         C0q4ZIXa3kdQEwC2XKq3Cbzf4A1NlNgIHovMNp4opWfdQcykO4017h7je1uVAy+LvaiZ
         FB0yXExGS+j+0p02UdEuY3KaiO4M8buJEmxi4GS5G2lpNREseKaYcX1luhSLa7XnpoNI
         fmXw==
X-Forwarded-Encrypted: i=1; AJvYcCVKV5QaIUn0YC1SQSw78jb/pa92dJuci+IIHmHolTRkUKAgd3IP2b0V2W+HTRaBKXAI0k7xd+27sGE=@vger.kernel.org
X-Gm-Message-State: AOJu0YxSPJPJdebaQH0xBXb3PcELUDKEVXQ545SlTqo92R9sq3LS0nWN
	qaLKX52v/QLdngb9CH1WvzcDq0uL7zn/I7imrVZlG9++v0KyWOEasqXMkr3C0Q==
X-Gm-Gg: ASbGncujtnF3JBWG8pVCxKMHlJGwmxX514bjA79dVxv1F2gBb/e+XrWF+N0FkzgfLAq
	49K9a2WrrlYzjcWm8QP6xYB3L8Xzcj4wZlIBOQ4pLGFT1vP/qq7RSasN5hgnVFiAGF8RJG6CPhX
	+X/4XeKm6bTTaIkk9ygb4BT3ZFwfLIGz4ahbnjfuoLFM3HGlwP4+/FduNigaSy7rlwJy5BiyW1w
	7My/gwokto3bbwQvebCZTqYE5xlJbCFsFx3bdIn49yUUn/bxSJa1MIkCwAMhm2XZWoRIGNJWNnQ
	ErsXbhxTgf+OOkrqFd7mpv9nLOHM7E5i222yQVTNrspp3+Q+hDa5d+JZ2lUWc9n64NwFixz1ZrS
	tCkIhlbBv4RhfMCrZMncWIS+bzq++LBBu38Wg7gf0vUvzlWC7LI9QezAoGo8NfkoYKw==
X-Google-Smtp-Source: AGHT+IETEuYV34n7jtptjDlrksek8g/I6jMw9OlLR0GJYEmFPlUnTfIV7QmOpYgscjOS5XzuS0f34g==
X-Received: by 2002:a53:d018:0:b0:63f:7d65:747a with SMTP id 956f58d0204a3-63f7d6578d3mr1725865d50.30.1761777056090;
        Wed, 29 Oct 2025 15:30:56 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-785ed13e518sm41143477b3.11.2025.10.29.15.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 15:30:55 -0700 (PDT)
Date: Wed, 29 Oct 2025 17:30:53 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <20251029223053.hbsbdsizoeoudejs@illithid>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
 <20251029090718.6xpq6zf6iawjta2j@illithid>
 <oaa34iz4h2uu4dz2z6ias6lugfh57fspd6bdep5ycw4zzv37oe@rhos3t2bvz6y>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nwz6r5hfgdqb5n7o"
Content-Disposition: inline
In-Reply-To: <oaa34iz4h2uu4dz2z6ias6lugfh57fspd6bdep5ycw4zzv37oe@rhos3t2bvz6y>


--nwz6r5hfgdqb5n7o
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
MIME-Version: 1.0

Hi Alex,

At 2025-10-29T11:21:27+0100, Alejandro Colomar wrote:
> On Wed, Oct 29, 2025 at 04:07:18AM -0500, G. Branden Robinson wrote:
> > At 2022-07-19T14:17:15+0200, Alejandro Colomar wrote:
> > > Could you come up with a more mathematically precise term for
> > > "reverse"?  What is reverse?  The additive inverse?  Maybe use
> > > "additive inverse"?  I think "opposite" also has the meaning of
> > > additive inverse in maths, and it's maybe a simpler term (although
> > > additive inverse is more precise, IMHO).  But reverse is
> > > definitely confusing to me.
> >=20
> > I think the idiomatic term is "inverse".
>=20
> Inverse is too generic.  Inverse functions do something else.  The
> specific terms are "opposite (of a) number" and "additive inverse",
> AFAIK, and maybe also "inverse (of a) number".

Yes, but `tm_gmtoff` and `timezone` are _scalars_, not functions.

tzset(3):
     extern long timezone;

tm(3type):
     struct tm {
=2E..
         /* Since POSIX.1=E2=80=902024:  */
         long        tm_gmtoff; /* Seconds East of UTC */
=2E..
}

Consequently, if they possess an inversional relationship at all, they
must be either additive or multiplicative inverses of the other,[1] and
the page now makes it clear which.

tm(3type):
     tm_gmtoff is the difference, in seconds, of the timezone
     represented by this broken=E2=80=90down time and UTC (this is the addi=
tive
     inverse of timezone(3)).

I apologize for re-raising an old and as far as I can tell,
satisfactorily settled issue.  I was looking at messages in neomutt with
a non-obvious filter in place (meaning one I'd applied, wandered away
=66rom the computer, and forgot about), and since your message of 19 July
was still in my inbox, I got confused and thought it was an item still
solicting my input.

Regards,
Branden

[1] If there's another kind of inverse that can apply over the integers,
    I don't know what it is.

--nwz6r5hfgdqb5n7o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmkClZYACgkQ0Z6cfXEm
bc5nEQ//eQe68JXi2G9Us3X307bqw0Iflf7iJpHtMr4eu+zhb6NKmbeHM7doR4rp
O69wa077vsx3hOG304Ot9Udg7g3AkrMOsiu1J86lMrDm17CSgDYTo/oGfhxS/gey
JqnoVEil8ZDSXAaRzdvYFk1wL1eONTpSjhV6gyjcpkUPMDgkqv7d190hxDM8/khm
HjIbL3cq0Hk5bNRST1/HFG7G9WOYTbAGJX3qMtmKPLUG3SVnNV9/m+UTmSMKztj9
w+iLK1DMsE6gvPQi2TxB15jaSnVl+LqTn6YZ9EnygVuxjaVvR7GEPyglmN2g2IWE
1iRnqtvobbvjBMI8pTeyolQm1P6TlU23AHoMQ7IGoOeRMjO4G+Rx/4HusGybKfJa
eUWIPwtKfxRXIRg+jdRAFnirp9wtvOUG2k/xKJ/+jq3b9PnC+TbVAyeMCRV/JkZL
AWqSRxxOTKuCBCj79WamIaIoYQ1GKes41FtJa8nkJ5kBSB/jpRfliX/NCIhp2O9n
y7S0VBa1G8pgsMoL3kxEhmK11KXsovrtm51A1V7tY8DdF5STzVf7lk9MX/vSy1G6
WYIjVBbmoKmFHUTRKZt+wlYiGsoyBAMo/iPZzprjLmRE2vDinmn8N+eSz+VZiLl1
ojRqOUqg9+t3VjRvxep/i7yMpT4Uk6mSpWu5tHJvmsDvhb408xw=
=HROa
-----END PGP SIGNATURE-----

--nwz6r5hfgdqb5n7o--

