Return-Path: <linux-man+bounces-1861-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 772339BA384
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 59E201C20996
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9485E5733A;
	Sun,  3 Nov 2024 01:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kw6+kjUP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4997C1CAAC
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 01:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730599179; cv=none; b=YCIBTWcF9Zt82JmQbn2nnNcam+uCHCmkxPoWp3IZSic33v70Mbiyk/PCUXVkzHIyvFtL0QUWrC7BFyZRIOZYGWX6fv75CQCiCKN5MNuquFeA6RWqJaWxvkUumySmU47EyxcSFPqkzslUNspPF83ykjEwfygPkISGiZnmCVsgj9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730599179; c=relaxed/simple;
	bh=hSi3ct6duSl0eCNppykLhctvOB5ly52mCl87qbw4ZLk=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJY33wotR3D443Vo545zVTJNL4skZX74zSOmfyZBY96B+jW8MQAPdYFFmO9FDhAgEXlZShxcSthIjl/ilJP5zk4W/BJ7uxcftIWMJOzYxhxMj838Xkj31pj9+5KE2p8jLOiL+EO9lcyhC0DYAysNeul0XLcZO5lqPlDSHyKIE+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kw6+kjUP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A237C4CEC3;
	Sun,  3 Nov 2024 01:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730599178;
	bh=hSi3ct6duSl0eCNppykLhctvOB5ly52mCl87qbw4ZLk=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Kw6+kjUPGYplV1mmovTUesc6xacFrzUVeQFa/9VIGyabu2P6h/hud4mXxro0So+bc
	 oSkyavL/efSgWJmGzjVnRAwrtTiIBrvqbt2nMuywBjGW8LTuK8N9SV5+KEOsuSy7gd
	 kBkW0ym43Asb1B1oq4QYLTN+8LAhOzBm5DZ+gMQTewK/9Wvi5KilS+K2VDdL0FExV8
	 gMBnh5QDHUfPOIQEIFHM948Rrbb9HsRBUx9/8Zpy8pU7nBEHLBK7ubciOzDQNIdxsc
	 kPyeRbBDbdPqMacJbS/NfQvpFrUe7dEknLHLMBXG3m15vwnxKJ6rBdj+jHZJKEpyaT
	 DL9LbzLYqf5eQ==
Date: Sun, 3 Nov 2024 02:59:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <20241103015934.gs67lyd2x77ehoev@devuan>
References: <20241015211719.1152862-1-irogers@google.com>
 <20241101132437.ahn7xdgvmqamatce@devuan>
 <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
 <20241101200729.6wgyksuwdtsms3eu@devuan>
 <20241102100837.anfonowxfx4ekn3d@illithid>
 <20241102103937.ose4y72a7yl3dcmz@devuan>
 <20241102213620.kfccilxvhihwmnld@devuan>
 <Zya6ApewCZQNEfJb@riva.ucam.org>
 <20241103000534.th3jq7umwojlxnma@devuan>
 <ZybIG9xykOW6driW@riva.ucam.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="timpni3a7f3wfvnu"
Content-Disposition: inline
In-Reply-To: <ZybIG9xykOW6driW@riva.ucam.org>


--timpni3a7f3wfvnu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
MIME-Version: 1.0

Hi Colin,

On Sun, Nov 03, 2024 at 12:47:23AM +0000, Colin Watson wrote:
> I'm not trying to stop you committing whatever you want to your
> repository, of course, but I want to be clear that this doesn't actually
> solve the right problem for manual page indexing.  The point of the
> parsing code in mandb(8) - and I'm not claiming that it's great code or
> the perfect design, just that it works most of the time - is to extract
> the names and summary-descriptions from each page so that they can be
> used by tools such as apropos(1) and whatis(1).  Splitting on section
> boundaries is just the simplest part of that problem, and I don't think
> that doing it in a separate program really gains anything.

Splitting on section boundaries is the minimum thing so that mandb(8)
can use groff(1) directly to parse the section (instead of rolling your
own man(7) parser).

groff(1) could also be used --avoiding a shell script--, but that would
need a new feature in groff(1) --which Breanden has suggested--.  I
prefer avoiding the growth of groff(1), if a simple sed(1) invocation
can do it.

The script will be useful for now to me, so I'll probably commit it.
Feel free to use it if you find it useful.  (If so, please let me know
so that I keep the interface stable.)


Cheers,
Alex

> (That's leaving aside things like localized man pages, which I know some
> folks on the groff list tend to sniff at but I think they're important,
> and the fact that the NAME section has both semantic and presentational
> meaning means that like it or not the parser needs to be aware of this.)
>=20
> --=20
> Colin Watson (he/him)                              [cjwatson@debian.org]
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--timpni3a7f3wfvnu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcm2QYACgkQnowa+77/
2zJivg//TY/Cuol6EtaWKDTGvfpSlub7pUhYDraS66LtqxvXZetP9O2OQSKxZxcR
6xB7Z0IHLDduXMpbM0ZrPfcBVCtUlDOl0kPZ/5MERrfkfl7ecZYpD0IaZNWybTCw
BjBMXSw0ZseRIMRT2wGMnAp4bgTMLKyfHZfITC06PLaNUtenRIu/00Q2A2oOm+qf
bXrz9evTCWDxVklkKlgiiQhONq5BdimVBVoZ1gU+UvyWt8aimB24Mi7nOkzD97OC
w+uQN+DZCgmwnoGfBp29DvuNS2N0SUESkhdmWlcgHhM3dku8u2aOgFa+eMP0BruN
Qpc95ujXFtmcsl1vhBZY6sriNBey9YkbdJ8WxoslNH1Zw9uGRiWX59ZQILs/IuK0
2IuqknNjzKN35yM4YnTsPdKde+Pk0pcnN2mhH4q6TiO1yGTuV4NG1yzFMDb4Wlir
3DjXqSxV5dKDyN3NoJ9ATbIuyUTdPCZ72PJMHLk4tGTjZyk5lzmLkIysIpr8mZ+7
y3FCKonLa51VLIej3VepNnp/4PXEuU8QwMRFTwLhlDfVPmVzJdLxo7wmU6o68L50
kJPYHWk0vExccEyZeRXAwws6x0U691bVsSG1wiljwTx7NlPoDRslhQ9Zc+hZjN9r
mz+ipEaz9NSBKdw0QWERpPU8e7AvWpFOBXKPT5bMxLYTJWy+11s=
=HBF3
-----END PGP SIGNATURE-----

--timpni3a7f3wfvnu--

