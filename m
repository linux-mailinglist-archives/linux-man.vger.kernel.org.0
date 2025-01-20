Return-Path: <linux-man+bounces-2266-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 840E6A16B50
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 12:14:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2993D1883AD4
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 11:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B119A1CCEDB;
	Mon, 20 Jan 2025 11:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lq9HVbrj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BCF33981
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 11:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737371670; cv=none; b=FrImdmorOTPUK8rbiDMq2SD87aVPeHlWIVTKfag1vHWGr/j5imICgqkZc0BpLAXy3p1zYU9LMItDI0PYN5Sh+9lfYpGDpTFFxiIETedtUpy03CHwgsD3hzisVjIAUFu5gaikly/Uhd6pKoicC6VYFvwbc6ooztZYM/x/9c8Ld38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737371670; c=relaxed/simple;
	bh=cK+tjAZzEaIu5eZqoMEOgBzmXB3fzoytc5CjgGzzvGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e0jIpuwVYaOBf01iESVkB5zXBRT3EsJsc+zemQBhvZmccb8gspAyjxaczGf6VYGre3Y4lrNztBStbfVU4EVBXY01vJso427GqKe6BwF6nrrWb8IcTbiy1Gu03dy4iA1xCd4zsNXqvSD9KRlXQME2z59ddNhq78x69KJLvLvZTUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lq9HVbrj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDFF5C4CEDD;
	Mon, 20 Jan 2025 11:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737371669;
	bh=cK+tjAZzEaIu5eZqoMEOgBzmXB3fzoytc5CjgGzzvGI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lq9HVbrjL4NgkawMJG7eqf+HNsYZhbUcFisz4ROg2eMvdCbPtm3FEcIFp20+qfhmd
	 G3NxZzY4XIOTuhLMVqJZQbBd6hI00QRGvobFIRVvJG+i2ftxEqR6GUf9qDnnsFz38U
	 qTNgs110SbyLia7jI4WBYpSb7S3pwT7U30MjjTj5skt+DF/XJLbSFB71km66FxhiQW
	 1/iy19HxYpst2OnddXiQfP3ON/AgbZUyLihLjydUSYy3ImgANrbIXu1KnZm3ad+t03
	 8tm5ES3H4/uLLbT0GDO14/ZI70C59ElVkZ6j7G2KJ6YD/D7mXu1NrEerjF9FqVKnxV
	 z2vBs7M5xSICg==
Date: Mon, 20 Jan 2025 12:14:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Jason Yundt <jason@jasonyundt.email>, linux-man@vger.kernel.org
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <247qglmeqmdb2mlb5ydyml64w5nthcej5mtuatzblng6wyy257@b44py2sqfhyt>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
 <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
 <ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>
 <t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>
 <5ghdwxt5hnyyfyjomhon5xotz5lcvr6fkjemv56654b4qzeilg@2pjj6dm3twj3>
 <877c6pew1g.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tmsc2cbahjbkwlar"
Content-Disposition: inline
In-Reply-To: <877c6pew1g.fsf@oldenburg.str.redhat.com>


--tmsc2cbahjbkwlar
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Jason Yundt <jason@jasonyundt.email>, linux-man@vger.kernel.org
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
 <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
 <ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>
 <t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>
 <5ghdwxt5hnyyfyjomhon5xotz5lcvr6fkjemv56654b4qzeilg@2pjj6dm3twj3>
 <877c6pew1g.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
In-Reply-To: <877c6pew1g.fsf@oldenburg.str.redhat.com>

Hi Florian, Jason,

On Mon, Jan 20, 2025 at 09:20:27AM +0100, Florian Weimer wrote:
> Character sets used by glibc locales must be mostly ASCII-transparent.
> This includes the mapping of the null byte.  It is possible to create
> locales that do not follow these rules, but they tend to introduce
> security vulnerabilities, particularly if shell metacharacters are
> mapped differently.

Thanks!  Then, Jason, please use terminated strings in the example, and
assume a glibc locale.

If one uses a locale that doesn't work like this, they'll have the call
fail because the converted null character won't fit, so the program
would still be safe.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--tmsc2cbahjbkwlar
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeOMBwACgkQnowa+77/
2zI/Ow//dqGhBghyKZJSrlX/k+ysiYVHV+AKrNNYvQfPByHSCrUsdS/M1Nq1Wp2n
M5dfb77Qdh5rewFEyJ/wrHJe3ae6aDMt1WNPfXAeiOsnYhdmFawRwWHQ8xmEjUiG
oqA//lVjjOueLv4A66DOxjCwPzhWy5KKZfXs2aOReBASIqX5qES3p9tsevRaErUt
H6d8nP+mJMZOibmR+mQl5Qf2jiCsCszmsuTasbuXZQlijXggOksDwgbhLgOR61mZ
1aOmxY5REZfu1GckDpSGzrzu7etYuFgUC5QP/N1vx/zIepTaX9a+/+DBnAnqj9HO
gcrXYO6ZvFW1FOSoo7h1Hldw7eNxiPLwAE7UH/t++PZOEUmxyy+8ercAbn+7A11R
88dnrPQI20k2C8YznjdN+IMocGkDw7RYuXUw7+dfDyx0sGRPY0WPiPDBxAJ61cAc
WOT9NlBZ59+T4JxBmmR8i3OvQZ2/TVnGKnsLV5uTsAJrx2wrmyNTbBY/ZUuOiq7Y
2OuPEff0izlKvBmAX+y0QXVFQ31Gpb6ZxlbKFKCK301tWOP/nd1Gjbx5pzGmToiz
yDrrTS6Y/FweIH0i//W+VHfF4D1d6Au2AFJbMBK++hqAgCT6mtsZwr9xBC2DRPx/
V+oqIRhr8SOjVi2eElQb42FXu6S8TAP3XrIDgUB7YW2+72VpjJQ=
=palZ
-----END PGP SIGNATURE-----

--tmsc2cbahjbkwlar--

