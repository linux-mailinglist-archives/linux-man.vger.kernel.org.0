Return-Path: <linux-man+bounces-4701-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFC2CFBA25
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 02:54:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 19374304277E
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 01:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351662264D9;
	Wed,  7 Jan 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iTii828T"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBDF7FBAC
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 01:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767750893; cv=none; b=mWK/Uuq02oQEZOD/oMnkXwf9kxsZ8yiZ5gVHZQeMN0ONPd9+8J5+YfAjASpyQakUY6kG4LcClbS+b/4INUFX69vZezSarNmc3xBphB/oHZIEGigSkS6YFMYbauwJ6Hwpb186UPJPJe9mX77TqSa2RwstnLfoV0FDijDqrsWNFj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767750893; c=relaxed/simple;
	bh=FFL3cVFnI+lJLy+0GtM5F0Zcf+AC0npgtp2nZ4ask18=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=juF4LC4E8QZRgQVUXi3l16yhmKWfaMOYDD9OxwEK6P5jCNEACGffn7iBPTv/Bi5R8pZAmtYLgZXl9u4oEZbdz2vlR7ZnK/s3HtDTNrfNSvYyxphtqWATFOVaScblxDwrxNw9ve/1K3Qrd9eXNtygpETVBMSlKE3uGcJcqD6P/Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iTii828T; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2ac3d5ab81bso728478eec.1
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 17:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767750891; x=1768355691; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=USQKyHv9kRDqbSB/gWezaPiQSDKg9lPAyRx7vxPKJEI=;
        b=iTii828TIYBQIx8fSbuRH06id/yyimW1Y3W0rOMvXNmg9ACfgLzds5ACuT1JEF6AUw
         fVg67/LMKe6xAWbyHmrOaqXRucTsXFJkLFQG2/4pRDswtCM/eEHtb0Hz0fnk/pPBu3Pk
         P+5HGtEGZ/H5hZVg7+oysxSYNP8GkWL4wMC7wP8enfgFlX9jcBrXQYOBE2v8o0YPXC3E
         FHttNYbeTzFC7ytw7w0YnREQssMdzhW4J92GTw7qNibg/BmWQCAZE6qCO9rT7o+/RMhQ
         ++ZRNKKdqGdJ7cSrlTnz4o3WZfa4tp7nd/gHq4e81hZSH6oH8Y+yQvpbNTDq8HwfXRiV
         EIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767750891; x=1768355691;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=USQKyHv9kRDqbSB/gWezaPiQSDKg9lPAyRx7vxPKJEI=;
        b=ioYAcCVwbtInJ3OOgW50dDSZermrSJfIojEnKbkxpmVZStAhO7PbScYgXB2E53JSO5
         PJUa+MrbzCKcAxzjlQYa+pmFToYZ++qidi22ObJeovBoFItSLOKLVhJxxc4icCX7vp1E
         nUYow+mh0Dafp5eGDW/Nfqi0UvctXVjtVyYFiWqu1Mjka6kQCgw58w/Xhom2d4YmUKBW
         pYO/BJdU9OJD+vEMY+KKJ1+TwqpF+UTK0BM3oKv/hFeOHu2mEO0MdvtM9ZezBje5G6Fd
         0pKfwrnmnvQbt7Xmk1ML0NmzPNIbrEFAq7hpFuJ7x/zpaB2vCr0DBosklt/kaRyTiC1q
         TPpg==
X-Forwarded-Encrypted: i=1; AJvYcCUoLBNLtoGs9+3adSGRhS1mJ/dOYhEpzyeGpsYSMc6PE/PBIFKx/kPp1cmng0lYZmXuCzVrQvWTuDQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YwxSWgRINt8gCZ/vqOthe7Lnr1Hkcw6WOqzd/HJ0wlFHqhHSbon
	pBidLXGBZbXdf7P7D8JSFlJABrs1TsEi92yd5kC4ol5FiD/YSahcSuCqBNQO0w==
X-Gm-Gg: AY/fxX7b1KJ4KYkaGH8rHcwlZES2VPShrSfNccU3EB97lBJNrCvWp+Cnjiibw3eRzGz
	1NOOvjnZehUzfL29Zzor31hjzZpxdhx3/ZEXFQQdN/NMASGtSHY5CLlAI71vC9+qGfwlPzuP0gf
	+RusjCAa7/es58UCgQAKZkl1ht2+Qco+od62f/cd5U7wl4NG2YRkadAmCmnDMhaUJxsqcs0mCwt
	1ILP5M4eG9o8sW044Qh9g8z29tk3PTUAzDP0aA7wwAdsnEL4GpA4icf1reynQZEK5Bi/a08Wllc
	CtqMLgqh6w7b9wuNmEc4o+lFF+HosJXUotkRxbdqTC4DLagnXfbP8mx0tYJWO5NwQ0jm5AgMKAd
	l3q5ow/qvy7hMMfle94f+biU0g5hylEuAz++L7Rbh/YqLN4koKGMvyL9CjPswRF5t5HkQ
X-Google-Smtp-Source: AGHT+IEl7h5o+Bp1qqL0/dbrbYSNxxgh6itAGW1W+gM5fA3KC2l3IAtyvTNzbkRa+bJ3BH1RVBtlDg==
X-Received: by 2002:a05:7301:4249:b0:2ac:1c5a:9950 with SMTP id 5a478bee46e88-2b17d341edbmr429991eec.34.1767750890596;
        Tue, 06 Jan 2026 17:54:50 -0800 (PST)
Received: from fedora ([2601:646:8081:3770::361d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1706a53f0sm5605563eec.10.2026.01.06.17.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 17:54:50 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,  linux-man@vger.kernel.org
Subject: Re: [PATCH v1 12/15] man/man3type/id_t.3type: HISTORY: Mention
 change in datatypes of [pug]id_t(3type)
In-Reply-To: <aV0XZSgwGCE5G65j@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
	<00eec0f9aa43bd9337490c1150976223aa753754.1767675322.git.sethmcmail@pm.me>
	<aV0XZSgwGCE5G65j@devuan>
Date: Tue, 06 Jan 2026 17:54:46 -0800
Message-ID: <87jyxumbkp.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Alejandro Colomar <alx@kernel.org> writes:

> On Tue, Jan 06, 2026 at 05:08:01PM +1000, Seth McDonald wrote:
>> pid_t(3type), uid_t(3type), and gid_t(3type) were initially not
>> specified as integer types, but as arithmetic types:
>>=20
>> "All of the types listed in Table 2-1 shall be arithmetic types; pid_t
>> shall be a signed arithmetic type."[1]
>>=20
>> This technically means the types could be floating-point arithmetic
>> types in systems conforming to early versions of POSIX.1.
>
> But did any implementations do this?  As far as I know, there were none,
> which turns this into something that was only true in paper, and can be
> entirely ignored.

I don't think any did. It would surely be an interesting, to put it
nicely, decision if they did.

Here is the 2001 request that was accepted to make this change, for
reference [1]:

 __________________________________________________________________________=
___

 Problem:

 Currently uid_t and gid_t are only required to be arithmetic types.
 However, there are various commands such as "id" and "ls -nl" that
 are required to output UID and GID values using "%u" format (i.e. as
 unsigned decimal integers).  Now that POSIX.1 and POSIX.2 are being
 merged into a single standard, it would make sense to remove this
 anomaly by requiring uid_t and gid_t to be integer types.  The same
 applies to nlink_t ("ls -l" uses %u).  Also, if uid_t and gid_t are
 changed to integer types then id_t should be as well (since pid_t
 is already).

 I realise it is debatable whether this change is in scope.  I believe
 it is, since it addresses a discrepancy between two base documents.
 In any case, if the change is considered to be out of scope, it can
 easily be brought into scope by filing a POSIX interp request.
 If it is rejected for being out of scope, please give an indication
 of whether it would be accepted if resubmitted after it has been
 brought into scope.

 Action:

 Add the following line after line 13255 :

     * nlink_t, uid_t, gid_t and id_t shall be integer types

 __________________________________________________________________________=
___

My impression is they probably left it a bit under specified accidentally
before that change.

Collin

[1] https://www.opengroup.org/austin/docs/austin_74.txt

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmldvOcACgkQjOZJGuMN
fXUeBw/9EYPe60WnvLPB2yxLiTgR5tjmoQt93yh+ihZT7kOmHv8giWwn5ASIS0x8
xCUcyxfGSvv75X83V/VZ6/cCv5/t27ANyyooPisDKspT7Tbw2jq/3/w/qfTmlbYM
0v2QdohftvdOUojSvyREoa6l164MvT2D7hev3JEVzHv6LX582VSZPBdNcyOQt2pu
t+oYhtRtF/P18CFxJ0CD2f/t/oqEFLK0cPmBRJIloanaGkxx3i5buH7pgWbwcbEX
GnAY0+/fAVPt8TaVpAu+iTlT+kALADJPHCQ48R0eBlEPe8Fx6CvaHi02/NV+9cuk
fN0j7EKsMPj/NlFKG6YC2xpP1d4pqBbo9f3U9QGTSoz7THfYMlY38oJXuIBkeONq
KI6xlxIY16E1qx19k9DA6f5xeBgBdTwFKRkS/conlsN2nfAxeVuTmI+ye1bFw3Ck
Xp4MSSwGaoCgZO7lxGyQwLl+QwddPEN895N/G4CJN9OXepoxA9F/kQyXC942zopB
V3B8Mx9ENeb3IaArhSgP9wEhlDn08PUpMryrrKXXv9LraAsOQI1duWXqQSJXiILY
mCIGTDBm1s9He1Qsq+WcKfIlSarhMMeC7EL0LrSCEDiIfdUukVt911wuDNA43kO9
5Djxks8h8x+4Ljj1ZZmbPANHVE7vTYWUXVlXc+H2XcUlpNJm1+o=
=d0MC
-----END PGP SIGNATURE-----
--=-=-=--

