Return-Path: <linux-man+bounces-1177-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F10907E33
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 23:31:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EB831F25F12
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 21:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A7C13D24E;
	Thu, 13 Jun 2024 21:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NH9DSxdj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92DB313B7A1
	for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 21:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718314298; cv=none; b=m3rt1dCytjCgYacaGOtLT1eZA6A3AsbXa1I/ym8S18v1imJ4UZLymoUfFiXkX8QU+5ukgwt7D5VV8I8Zlfl0Hy0qalj1HVmYVxGc3BNG0Wz+fh6kgGkDQtMSy9Yw+FtvjF/l6mh7VUR0Nr/VG0G2Wyk+SHJUmneN26LQlNTJvlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718314298; c=relaxed/simple;
	bh=frjY435SWQVQ4vOnzJfS/ze8PUWruRuZEbrmHsDUQM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b+8N4cENVnjnbKDTMMxvig2fxft07bJyZI5tN/yImmMfrJJk6H4Hv5kNfJLtYFexexKyaQwiVvlex9UbCdPjXw2jsLueZlVV4CNa4ixlbgBwaIQ0yqXx2xq6Mc0h34fMZHgkRTFCsxrumva80IfSHPl+Y7IMJ4P+N/EZkIgQt1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NH9DSxdj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0246DC2BBFC;
	Thu, 13 Jun 2024 21:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718314298;
	bh=frjY435SWQVQ4vOnzJfS/ze8PUWruRuZEbrmHsDUQM8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NH9DSxdjoO+J6+ITC5V8CWHWu4xIYynhhWD7aGo7iYdMk6yKe2NOPu9BBxY3Bfye8
	 FY7tAYrrE3swxCrZAWDBlzY7WMhBEnremXkRl3xhgfyKIeinYUDZV3vTMEhrnQTcEO
	 z+a/LFED4wgiOJmTDdO4I+3c6J+j2DpiZPU6dcTK28aOjlgWru09mK+QOHp99+t0aZ
	 gFAK1xM2bq0phOm9gaL1/4fEtu8A/8vyZekSkXFp1hu890b3fvOg+yNylRcpvAR665
	 kdWsTLe0dlW1oo58fl7Gf7ez0ojo3raozWOoXMRNEOtIQmBFjIDR+2py0f/IT1mIG5
	 pu7tiOn4B6uIQ==
Date: Thu, 13 Jun 2024 23:31:34 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] sched_setattr.2: Document sched_util_{min,max}
Message-ID: <lhiauw2ot6i4fxgdkeov6uxolcxvv3yckgxvl5n2okk2jxiv3l@cgt2lruvyfwe>
References: <20240612204504.2651521-1-briannorris@chromium.org>
 <20240612204504.2651521-2-briannorris@chromium.org>
 <v4beebxguvvbhjgroqb7erykafxuez3svqf5pavvi6bmfjvuup@xsaim44xgdx6>
 <ZmtWuBD51thBxnBK@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rargltn2qc65masw"
Content-Disposition: inline
In-Reply-To: <ZmtWuBD51thBxnBK@google.com>


--rargltn2qc65masw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] sched_setattr.2: Document sched_util_{min,max}
References: <20240612204504.2651521-1-briannorris@chromium.org>
 <20240612204504.2651521-2-briannorris@chromium.org>
 <v4beebxguvvbhjgroqb7erykafxuez3svqf5pavvi6bmfjvuup@xsaim44xgdx6>
 <ZmtWuBD51thBxnBK@google.com>
MIME-Version: 1.0
In-Reply-To: <ZmtWuBD51thBxnBK@google.com>

Hi Brian,

On Thu, Jun 13, 2024 at 01:29:44PM GMT, Brian Norris wrote:
> On Thu, Jun 13, 2024 at 12:15:55AM +0200, Alejandro Colomar wrote:
> > On Wed, Jun 12, 2024 at 01:44:53PM GMT, Brian Norris wrote:
> > > +maximum frequency and is represented by a utilization value of
> > > +0.2 * 1024 =3D 205.
> >=20
> > This should go in italics.
> >=20
> > $ MANWIDTH=3D72 man man-pages | sed -n '/Expressions/,/^$/p'
> >      Expressions, if not written on a separate indented line, should be
> >      specified in italics.  Again, the use of nonbreaking spaces may be
> >      appropriate if the expression is inlined with normal text.
>=20
> Regarding the nonbreaking spaces part: I'm not too practiced with groff,
> but the wording around the \[ti] character is confusing. AFAICT, I
> actually need to spell my expression like the following?
>=20
> 0.2\~*\~1024\~=3D\~205
>=20
> At least, with trial and error, that's what appears to render correctly,
> whereas \[ti] renders as a literal tilde. Is man-pages.7 [1] incorrect?
>=20
> Brian
>=20
> [1] from `man man-pages`:
>       "In this case, it may be worth using nonbreaking spaces (\[ti]) at
>       suitable places in the command."

Yup; that's a bug.  I introduced it by accident in

commit 36f73ba37945c7ff4aa2d8383f831519a38e3f27
Author: Alejandro Colomar <alx@kernel.org>
Date:   Sun Feb 5 22:59:22 2023 +0100

    man-pages.7: Recommend using \[..] instead of \(.. escapes
   =20
    They are more readable.
   =20
    Signed-off-by: Alejandro Colomar <alx@kernel.org>


Which did:

-(\e\(ti) at suitable places in the command.
+(\e[ti]) at suitable places in the command.

but it should have been (\e\[ti]).  The intention was to render as (\~).
Would you mind sending a fix as part of your patch set?

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--rargltn2qc65masw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZrZTYACgkQnowa+77/
2zI+OBAAn+uBrLmtL5Pu0q/gLeA7g89Xor1HwmVcoS54OqZEjOv7gdJ1tAPj8k9C
g8QgnBhwR5KJNb1aukICvxqW1qjVCd/rPO4LaY0DZbb/PanlwyDdT6wsfUTM48AM
mOrXCofDBnCt8YfOTZTz7V0vA5lMC51Db/7CpTF57UR9GARV8ARY/L8cjW7n/kr4
f89YrixhIjwUcnqbmkffGOn04UiAnbiqsOQ6nYNJk6LZzh8Pga2XudsAGE1IcCIz
a5IVZSoGODeEQapmIwYHMETw1v6dYjp9jo4/rJAbyU3ixU6zSbeLHL6ZXDhIMwYc
zvEZRjqgfGMt2HEMH7klaS9t9XeOSUZTGsDOCxU8MY90NpiDtfNub0e5BNeAr+tl
ng845bRUBho1OKlhOWB6XO6jsUzYjY8//mUd+nRgr/4kAMPC/0r7DPQJK0yZmpN3
hD7SYhB4FmRjZqQugxJ6xqrPxKH8H4LJGSl10IAdfqY/KDhCZO3yP0LSwdlcYfmP
7vhi8m0By5bs8xBZoeQ0a0Hb3pQ+m+unF4Nf4mpEyMUESgmFQwdBfyPBS4Tfax89
O8wu/jM1rdaBgcINhBIf2cKqcreIvxpuHcpjFFS4SEfp9PmDfkrgkH3rylLZDhTz
Enb66XT8wfnWp8YOrWSKPW0h0P8J+iblmoCa7hUpQnaOA7p62Rg=
=PVxO
-----END PGP SIGNATURE-----

--rargltn2qc65masw--

