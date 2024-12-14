Return-Path: <linux-man+bounces-2144-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE89E9F2034
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 19:01:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CA711887A69
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 18:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E686194AD5;
	Sat, 14 Dec 2024 18:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RoWjqTES"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87A516F27E
	for <linux-man@vger.kernel.org>; Sat, 14 Dec 2024 18:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734199291; cv=none; b=jblvrR06T1urmpTJpB8wzTl8JAKY3JhTxnxYw5Z1aQbNGAIZfSCqlXeg1GLxN6UTn3ID2l4enwjqmQsUL1xNPG2o/zg8L5BoOZI8K5g2+aW4mfEPiMudjkzSIBatQL29qBb9XQtjI4OxwZOAoStgSD6YjzWnrxhE57/qOLKZcyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734199291; c=relaxed/simple;
	bh=7jCyxXA+vx/zoUmkj9+XxyUR/C5Xbz2B2TsADPxAf74=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dkbRzzNT/3t7u8fWq27ZK9BUY9F3XDO92SNWjEFq2m8QsMFTwDo5dHhnxJpwxPCl64byoQwS0yvDxGSYh/wLZfxmiaNjYj449uQzB5pVDvgF8kI2AsOIVG2jRkM0v25fm4BWtmAXxBXOVaxrkIWZaSR4BXooUUMtzLdl4AcIzgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RoWjqTES; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-29f9e76802aso2052061fac.1
        for <linux-man@vger.kernel.org>; Sat, 14 Dec 2024 10:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734199289; x=1734804089; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6/TWNiPpE6QCilIyrvS1LD6lqLKRijKKAjxiECxHN5E=;
        b=RoWjqTESI4jeVMzU2yXdWDC4ZVeS7RiEV9iB0lThX7LIzrDBxT0OpkzfjGMrTFqwQN
         BbBVo/LjYqVM9HvZblqkBdsSUQxzMiYgHlGZoBOkBCUzJtXhHnjEkf8N41Xdf3ERhkIT
         k1Q2YhacJFF6CFp9B0QzyZd5W0c6w4+/4c2STO57nCcQL6lr2+HQ5K2WxTbjS5IjETs3
         9OzJsZRrlPmCPxDaQAjSUV+XuouidSv/hAR/CYIBNzaCQNT7wT6k3CHWccMrYn8aOIfu
         MNckBaaYBOQqANdfTSklbCb2y/E3B+86wyIF5NTm6lfJKml7EOG4EZNQGo6UPIM9DjyT
         tRJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734199289; x=1734804089;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6/TWNiPpE6QCilIyrvS1LD6lqLKRijKKAjxiECxHN5E=;
        b=RTz3klENcQTPC4ldhl6qOTQvtKepF1SCqfzAer7vW7ZdP5p3k5jmTuYA71JIfx6+QM
         fuZ/hZvRbF4hiptopVgxIjqBGrzT4sAaBCzRVhp40UUghC16ha0SxYbZlSWMGwfxXY1l
         R1aXA3Bp3WDP4uwSCEAtbKUJmPAIgRtuGLMKD8KF112fd8UKo92KNsckby3NGTXV/reL
         naS6SDAgpmS7dC0Bpms7/ogHKOlgAXc2kSMmj43GwazrqvdpVh6PStiq4w1cQHV5nyCI
         cNSjNWqwiJxhBTYh/nZAlMQfljBJbn9EnyDqPmtggpCDPHbWQQPkvnFj37LmA6R5127J
         FJMA==
X-Forwarded-Encrypted: i=1; AJvYcCW9iYh1ccdO0Qb9q1Sgsp/3pzCWOj1VKWiMWVcgvwylhXvEVm+5+bIao0wXx08/D1iHmNq2TBeCwdg=@vger.kernel.org
X-Gm-Message-State: AOJu0YyzfB1pVJkeW7yM973BqoL6OtlRTP3RLOWw00umJL44Du9rMN1i
	Oc4xe0Z8w2S7sSlu6txpiSKND2tKRHEzrO4gXKX2AHx8G+2g7kJ5
X-Gm-Gg: ASbGnctqrPEKy4tr6t24VIyqy2Bn88/0jHF98NOmJhOIXOxp4oCKPMAIre1rZ4CjLES
	frVqq0UGjObCFYNrERwHOBzKHff7uqxJsMNqpUcUgXFiaBKI6h7vXYBgkxFzh/C33QaCW6MAa3H
	9h2gVRTKoY6FG/HMGdIQmuj1Ausu3TndVEKLGgkmJb0mT2+tO7em2ciWxciPGmMDnE57/pu0+ie
	3U9idaLJeAQKmIFfLYHo/WHmoA0XGRxkB2HmFWaIK0NS2c=
X-Google-Smtp-Source: AGHT+IGiptPPRi/DohtKBUO8+zXI+RIOnWZ4MzxUbdCQFDBXQtmkxaRjRb1oEQno67FVz064j5gJOQ==
X-Received: by 2002:a05:6870:471e:b0:29f:c94b:3a06 with SMTP id 586e51a60fabf-2a385392cbdmr6040014fac.8.1734199287364;
        Sat, 14 Dec 2024 10:01:27 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2a3d29d3803sm647331fac.48.2024.12.14.10.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Dec 2024 10:01:25 -0800 (PST)
Date: Sat, 14 Dec 2024 12:01:23 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, Bruno Haible <bruno@clisp.org>,
	linux-man@vger.kernel.org,
	Mario Blaettermann <mario.blaettermann@gmail.com>, groff@gnu.org
Subject: on the need for better quotation in man(7) (was: names of ISO 8859
 encodings)
Message-ID: <20241214180123.p6woqw525e5dlfks@illithid>
References: <3678665.hdfAi7Kttb@nimes>
 <20241214003716.gnockyne6qh7jpml@devuan>
 <20241214005654.vhpp4c46p7sw4zjr@illithid>
 <Z10hv4ogO2TzgJ6D@meinfjell.helgefjelltest.de>
 <20241214154713.njpgwqgm4vycuiiq@illithid>
 <20241214172714.bostrlr6v3fxvmta@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qzxgkm33i7cdbn4k"
Content-Disposition: inline
In-Reply-To: <20241214172714.bostrlr6v3fxvmta@devuan>


--qzxgkm33i7cdbn4k
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: on the need for better quotation in man(7) (was: names of ISO 8859
 encodings)
MIME-Version: 1.0

[looping in groff@gnu]

Hi Alex,

At 2024-12-14T18:27:14+0100, Alejandro Colomar wrote:
> [I wrote:]
> > Alex, do you think this issue is enough of a trip hazard to warrant
> > presentation in man-pages(7)?
>=20
> What's the issue?  I think it's simple:
>=20
> When referring to a standard, use the pedantically correct name for
> it.  When showing a command line, use text that is pedantically
> correct to the command interpreter.

I agree.

> Am I missing anything?

Only that people may sometimes not be clear on which is which.  That is
why it is important to typographically distinguish the cases.
Traditionally this has been difficult in man pages, I think because (1)
the man(7) package has no macros for quotation; (2) idioms for displayed
examples and other I/O were not in Seventh Edition and slow to evolve.

I think some of the blame for (2) can be laid at the feet of the "it's
reference, not a tutorial" camp.  Even references sometimes need
exhibits.

With Chet Ramey's kind indulgence, I've been trialling a simple
quotation macro `Q` in the bash man pages (bash(1), readline(3),
history(3)) this year.[1]  I have an alternative design for quotation
macros in mind as a future groff man(7) development.[2]

Regards,
Branden

[1] https://lists.gnu.org/archive/html/bug-bash/2024-01/msg00027.html

    Chet soon added a `QN` variant to prevent hyphenation, because it's
    a little tricky to achieve that in a quotation context otherwise.

[2] https://lists.gnu.org/archive/html/groff/2023-09/msg00052.html
    https://lists.gnu.org/archive/html/groff/2023-09/msg00058.html

    This is likely due for a cleaned up re-proposal under the new names
    `QS`/`QE` as suggested by Doug McIlroy.  Also, an optional argument
    to disable hyphenation, brought to my attention by Chet this year,
    might be worth having, though mandoc(1) has the problem of
    formatting all arguments to unrecognized macros as text, which is
    not a very *roffy thing to do.  It will do the same with `.YS 0`,
    until and unless mandoc(1) comes to support this extension scheduled
    for groff 1.24.

    Having gained some practical experience with several other man(7)
    corpora, I probably would not float `Q` as a groff man(7) extension;
    I think `QS` and `QE` would suffice.  I am mindful of the benefit of
    keeping the man(7) language as small as possible (but no smaller).

--qzxgkm33i7cdbn4k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmddx+wACgkQ0Z6cfXEm
bc5HAhAAoQXCfjRunbeXtMWpd2rhKPY3S6DACFAazk+kdWTK0Lu57qlNQlBy/eoD
ytlJnylUKGLEIjjy7+9HrJsLvBLCjm77KTEdfZ/zCKbgmJA7+q06H/VypxvyzAsx
JWzwjWGGbtQ8WqqwphSIKL4dXyROwRjA81OnFwlBcE1zS8IQXlCtWYB+gZ8hwEPG
cYF4KCj4ACgtyFFZTVsJryr0JeZNLWMsbWJc7x/10swWAafsPM1OIt/YZvYdGxVx
WiUcM4GwotQE4s37ESBKNR27WCfM1bONmNySgSaudvymKPn/bURkApheVCA7Tgq1
2JvBWOKivPOWMYMOBSvc/RWkfd9m8wKdISZiX667oTIC4TiKiC8zSoQjRJRDBKav
jesuE6qqq83Ov9Igtq+7cYxftQtlMGd6xz4v8x8UX5BsFzYueKRQIXaEg9wtsFe6
aQ64MQ/M0nuEGX68iycDS71z6hkefiKJe0yqmjsZxWrZ0D3zfvp8KH1TKFMzCpYL
oAXS0VUbVthc5vQblQw+0okFtyk1FIfc9YAvHL/ZUUNwUkOVSRdb8CVRF2XyNkjV
/1NH6k6b05f26oU4v84j4iNmBDaxL2zA3xjMzV2Jn6gxSSAjxTRqgv4xU0lSBVsm
7piCfjV5URTPwh9b/Q7X+M3SNhQ6eQABbNDKAF8PXRry2PshOuA=
=Q5Sh
-----END PGP SIGNATURE-----

--qzxgkm33i7cdbn4k--

