Return-Path: <linux-man+bounces-2033-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4BE9D04B0
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 17:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C60C1F21987
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FDEC1DA0E1;
	Sun, 17 Nov 2024 16:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AOvXQzle"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE4F23AD
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 16:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731861829; cv=none; b=SNWpdZ37AOlSZRmk50sKYz+S57MdBr6fF8l/aWejO9+UhNm6T91Jlc1yjsV+XuarqCPwwpWNbTL8/jA9mmpfRF7NNxg/NboF2r1D5L9xVWwLoPBiimurC47IpH9MrZyiAQfxfgTin6P2tqqnFIGgfZ6ZdylSeL+Hi5vPMaWk5G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731861829; c=relaxed/simple;
	bh=QMBIZ3K0zG+jmyiz80DNkIMi7x+VDk82rhVwpEmUc9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YPHARIrAnzwYVXxAEk3U64oUZ8S1wC0YUFS0hn3HOmSp3g+S1hZP9Of5Lleyzr05RZLeoNGnaMSkscROmMaIODeI++GvhGSBtzx+RaMAa0mKVsqs7yCoxAx5YM9ZDnkOe8tMPY7WatJv6gkW4vXdplo8UdhomygN1B1GFDkTH+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AOvXQzle; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7181c0730ddso1069676a34.2
        for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 08:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731861827; x=1732466627; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EeabfV4cILzStAfzg8QN2uY3ipUyTjHJxaP09hKydXM=;
        b=AOvXQzleBUBGvwENJI2TuaEXnwr97ZIXD4H/CBfUevKZOWD0GMU2hKaTcxjscgpwmU
         JVc4eQt84kC254Age1EeeAQTCz9b5gq+rHoLutTcG1B7C71x7zKiTC/jzwkH5iETijWb
         3b6YgFVRb1xYVhPr7BlfE1FpT1Sfqx+7gDtLFNOvmi+nEXrvRwdc9KKw26P3Fm/r7Xjw
         Yy3mrIZWtdj4q+M1HhsPy7x09J8IqvB+jpevC/C96/uQn4kin0zait+ygJqtzGD4sX7U
         Xv/218wEdTSo1Q4LcezBfggTMdCehlucSGDLEp2FOBCWI9oGW7NCH9jBKz7iT83lvbH7
         ahkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731861827; x=1732466627;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EeabfV4cILzStAfzg8QN2uY3ipUyTjHJxaP09hKydXM=;
        b=HNa91NsZzfEkcOYLbCxg5F2oKPesYSx/i3FlPe/2Kok1+RYBnq+YGXrnu053EGy1AH
         Gz6CZkdZ0EEQK+oDfFBJpOzxcx0zYpQKS+X5HEARNyblSMtbTo7Kcd0egysKvwjIlxyi
         L6U0uLDV/fguiKvnV7TOCDzfOMCJD5D4KrbBiHjQ0S7hA4IMp1RAzBwjPz41VmND09Ax
         9Y3unkvYPX//UJ6FIJj++OtRlvH7LNb7r2C4X+lBiHInhL3EO6H8rnrafWLIpLKG/2pj
         znAbe6aj/NFA0D/uxQt8qFkECj74ygwNT72uhlTioC7dJfP7EZlNjnKO7Xl6kYF1VVdn
         BTiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRvEJDeww3qT78AWwQOpGaAvgt/eYXiCnA5ZZ0hLB4bUXAWtZ8rUu8GBjneop3kUA8mSLUXPizSCo=@vger.kernel.org
X-Gm-Message-State: AOJu0YwyYhruNL+leOaKp24dckQL5T4lt6Dn+Gi7RjC0c07+zw+Atr61
	XFZmPLdN4576knjm16kS6beZRDY9jKR2CuXJVJ+PvI52bAVsoL7e
X-Google-Smtp-Source: AGHT+IEwFOdqyiUnsi5paUGqr8/dhUEQoCtD6cK4HaVFFoPKrH7pLNYOgGgIyYqdy0Fq3J+8wPcGeA==
X-Received: by 2002:a05:6830:4982:b0:71a:4b13:c561 with SMTP id 46e09a7af769-71a779b34abmr8147619a34.16.1731861827034;
        Sun, 17 Nov 2024 08:43:47 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5eeabd51728sm2129308eaf.30.2024.11.17.08.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Nov 2024 08:43:45 -0800 (PST)
Date: Sun, 17 Nov 2024 10:43:43 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_timer_stats.5
Message-ID: <20241117164343.53rxospihkd4upgh@illithid>
References: <ZznJfjcl7JIMY7y9@meinfjell.helgefjelltest.de>
 <6f36qk2pgcvkd4hijiwdafu5wm5olgbrxl5ywshw45zv4x26v2@s73psznizi2q>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zqsqrxgimloccjty"
Content-Disposition: inline
In-Reply-To: <6f36qk2pgcvkd4hijiwdafu5wm5olgbrxl5ywshw45zv4x26v2@s73psznizi2q>


--zqsqrxgimloccjty
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Issue in man page proc_timer_stats.5
MIME-Version: 1.0

Hi Alex,

At 2024-11-17T12:33:13+0100, Alejandro Colomar wrote:
> Hi Helge,
>=20
> On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Other pages don't use FROM and until =E2=86=92 to - maybe ali=
gn?
>=20
> When a feature is discontinued, "from" makes more sense than "since".
> "Since" means that it still exists today.
>=20
> I'll eventually do a consistency fix in this regard.
>=20
> About until/to, I think until is more common.  I'll also check.

Where the value of unambiguous expression is paramount, it's hard to
beat interval notation, like "[2.6.24, 6.3)".

Failing that, I would select a fixed set of English words to correspond
to interval notation, and document that, probably in man-pages(7).

For instance, and just spitballing here:

	since	[
	after	(
	until	)
	through	]

I wouldn't expect this choice of associations to be accepted without
some amount of argument--that's the advantage of proper interval
notation.

But, if interval notation is thought too unfamiliar or too awkward-
looking for man page readers and/or contributors, such a mapping of
English words to it might be the next best thing.  Disciplined use of
the terms will be important.

Regards,
Branden

--zqsqrxgimloccjty
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmc6HT8ACgkQ0Z6cfXEm
bc4LChAAmix9Za9qELiXYTJ6UqUCF/oDf6gt/Qummf8av601iMC6cwyHF7dPhtqR
sfzjren7Iy+ztAnsA2Kr4YBHqIWjZU6aHBlQfDLXo7rE5OHMBwlpe463QRdEe9LE
sd7QgcKNT73P1TTe+O6wz4aydS4p/yrbcFF9mq8ncgbaybj9+I59mA+V+cLH0liP
lzkBIg+qiEVatM60Z20Z1yBEXFTy77RSkqE3hDQ8GZC203rfkp0H6eX6bZh3Ls1O
/nqhG3ZqP5H4E9WHxJ0YDiS080x/GCi8pLo3JJG1imlbmWfVYgyHabpo55Egbwsr
4NqA+u/pwo0wkjRZ0gzkuIvZ7I4oswsf1W2KTm0K+Epm6qUocqnrzibxI4dQcIAH
dbz7MgZ9w1Qnic0AehFW9DlrV3jVrei2Oyy7SlrOcN4/L5tP81ZdaTjqeUXkfYCD
OdsTCMU2VdVYvupYsCOWnNYD9HJyQTt/n+5/xcHdTMXLPtWp3w4xLRnpm1Xithyf
4r4e3UEnzfjZ1F6OEf8WgRF8ImfogVNRPwPizYHJo/48kDmIxMTJrbGCBiKEeyMZ
yFtsf7kJQ5Lj08W/Zz4dZUm7g5/9KJLkKc+f4bPfvwyWKBPa4WJaYS6E2eGGusNj
9kT5F+x5TtRrIogUZmmWijAEXghfxcdti9sNYJci8v4FPMbzs2Q=
=lUOi
-----END PGP SIGNATURE-----

--zqsqrxgimloccjty--

