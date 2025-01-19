Return-Path: <linux-man+bounces-2262-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D47A1629B
	for <lists+linux-man@lfdr.de>; Sun, 19 Jan 2025 16:24:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4A823A5151
	for <lists+linux-man@lfdr.de>; Sun, 19 Jan 2025 15:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC6E1DF727;
	Sun, 19 Jan 2025 15:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+qQVdRp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F171DF26F
	for <linux-man@vger.kernel.org>; Sun, 19 Jan 2025 15:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737300279; cv=none; b=Hm/rPQ4i0pmEB7oC1jZvXIADFSx3n8o0wtpYHpiHH3jts/W9u3b/QFuIyThb4WcKa0CyglwTCfx6FN6DVPf6sLDCJG23i0yPKb8G4nrfqV+pDIMd9E+7qkmo5xOKe909C0V5kU4eqLLCjmx+W/qwgve4AxgtR7K1hds64lqRTig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737300279; c=relaxed/simple;
	bh=G1zdLV4+dJwxfFRUZJ1PcMVvSlKsgxFtLK5TrfaoLNU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DOAsdC9lhCobkPZtxptJFSXwZB15waGa9Fsvv4ReGvIzjR1176DEGs2s6/S4USoKK4UL//ZxHg+vcV/lujLGt0CGaasbTGZP+mGGFNYfDpbMIuqWmUVWyMXv5Gkb3CbvrUdHxwTgK1+lmYDpV9iwPXdHG3IwaTk1II83qhSIEYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+qQVdRp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 003B7C4CED6;
	Sun, 19 Jan 2025 15:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737300278;
	bh=G1zdLV4+dJwxfFRUZJ1PcMVvSlKsgxFtLK5TrfaoLNU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H+qQVdRp51NGhwDShaJU3hTvcrLld9sSXGFgTx+gEfjATJoF+n99I3dRGAnaGKB0c
	 3+vNEWj5dkrpz6Q6uO0AQQUxWcMMQpif62lzi88jLZf746rM+evAWvwWbTiCwwiMAh
	 GH7El0JfPMqZ0SEFyP5/CBUkXFmoQGm6dHtVd5lD+DV8o04cOLpB9c6frc6pINNs2s
	 zVne0OPy1YKxzNUCtfTldmFK0fudAb8W0Zj16yPJmYhuLjfW7BhS5sbhuUcd7QIFbC
	 i0Tai1XHEGenUzjf0mkjGm4ud/O6ehkM3LggT8YT0ylXgIkkxA5EG96CzXZZK0bYSn
	 mq5O5nj4o4O2A==
Date: Sun, 19 Jan 2025 16:24:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>, 
	Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <5ghdwxt5hnyyfyjomhon5xotz5lcvr6fkjemv56654b4qzeilg@2pjj6dm3twj3>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
 <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
 <ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>
 <t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cxg5dd26wyr43r6p"
Content-Disposition: inline
In-Reply-To: <t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>


--cxg5dd26wyr43r6p
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>, 
	Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
 <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
 <ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>
 <t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>
MIME-Version: 1.0
In-Reply-To: <t2rxmhwj45uuay34wgjnrzqainmwb2wttwt7wnfh37oaxrolch@5gqkhunuzpyg>

Hi Jason, Florian,

On Sun, Jan 19, 2025 at 08:17:46AM -0500, Jason Yundt wrote:
> > It seems you're passing a non-terminated string, and thus it's producing
> > a non-terminated string.  Why don't you pass a null-terminated string?
> >=20
> > That is, inbytesleft should include be the length + 1.
>=20
> Here=E2=80=99re my concern: iconv(3) is going to see the final element of
> utf32_pathname and interpret it as a U+0000 null character.  In some
> character encodings, U+0000 null is encoded as a single null byte.  In
> other character encodings, U+0000 null is encoded as something other
> than a single null byte.  For example, in Modified UTF-8, U+0000 null is
> encoded as the bytes C0 80.  Is there any guarantee that
> nl_langinfo(CODESET) will return a character encoding where U+0000 is
> represented as a single null byte?

Hmmm.

Florian, do you know this?

You could maybe overcommit, that is, provide space for 4 bytes, just in
case.  But I would prefer to not need to do that, so if we can get a
guarantee that the terminator will be a single null byte, it would be
much better.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--cxg5dd26wyr43r6p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeNGTwACgkQnowa+77/
2zJkwBAAi9QNN6GAFYEHqBwUpj0Em2XJ4lkpjkUwsJgy583uaHp+djoNkrm/VXNY
wGdcOOG71xsOwX7xFWndeQjzJlVOKK0PrziyVgs6ZektXzAmLh+z7qGXBs9lUuzy
9YCKQMLZb/l8YsLpdLddsPxNDS7K51AcCat2pIjhNDoBTngwX5M/ITfd+DOodtjK
HVoHzJf63tdS7IqKe3tNOzgccW6kmmi/TLh5qPSZicoXXHNGjlCMhdf9aC0RhPFT
kwc5Tk24CVpNQYMNeLdn4Wwq3jYUOnhxrJMsMO0h5xp6nG5UoX1Re/TZNhMK4CKQ
XoFc+1vD/J163BPv+nFnOJJma3OGLEEKvDf5hycyNcTOpc0cCivUVDSfe4fznFDP
e2EJLTbXIQvehNIWqJvLZpYDw0128Enc652/aakBJXfucto7l9FQGxY5v+fiETJE
qkwe2rPzGp+WJTUzFIAYE2YHnoFzNsvrGMmUvzSHUXaAVBm7fuCLBguipqfrEAg0
vn70Wo2T70wHZbvc/hMPf7dq8Zz+T/VO/IRGh2CrQbGUFDBfGU4PcYtjH6Gy0ANv
x4dzoZM5oLqYFyFFIk00ghX62A3kcMhxcBW+Ti+mafyhbQIXedQ/FecIg5KgAWKB
n+4pE02v9YKI86RAwOVUz8vFRfvQxorscoMWBuHEHTDx7QYq8yQ=
=Ejai
-----END PGP SIGNATURE-----

--cxg5dd26wyr43r6p--

