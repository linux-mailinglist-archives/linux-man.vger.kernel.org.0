Return-Path: <linux-man+bounces-915-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DA18C5BD9
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 21:53:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEFE1282E52
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 19:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56FA5181318;
	Tue, 14 May 2024 19:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7mN9uS7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154EE2AF09
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 19:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715716412; cv=none; b=WRA82rxlW0KuspY4kE/oEaF/wR/hi1bNdzVDwxq8xbQ6WBVXEopFkm6Rnmny2EENsV+GkBAawS0H3K06J5o/x/JoscfRe9XMpQkQgMJqRJdEeHZcqW1Q63KjSOKwnjAG5rCmdmxU5ntbwTc06oym7jgVqp/bSAA6nREfjBzAerI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715716412; c=relaxed/simple;
	bh=D7XWwfjYjYAz94mwiwq4beCcbDLYR+VUu8ZqWOOEDF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J6/3Ryt33R/nb9gVdcQoyufy5KUDWwPsGnsQlUS/fV+87yO7gDFQxv1hWTzpiJ5XfNZLIjf+dyQp0bNuQMesi5PkLSSx82EMQU2zNoXhrhMj0rw7qt28hx+wAn+PGORK0E5zcEd6TPRH4V0OqMxgz8gY3T9OCesiJIcj+o+prpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7mN9uS7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D08C4C4AF0D;
	Tue, 14 May 2024 19:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715716411;
	bh=D7XWwfjYjYAz94mwiwq4beCcbDLYR+VUu8ZqWOOEDF8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o7mN9uS73wOkAOkIjCXdjkz+LgVQnp4qMwXbhSip2WOI8BYnpZjb/f8Q1SSYtbQWm
	 Dc0zlPBXCM+hE6YybGMtwr7ptzPnfBTKgLpGtBhx57lR1naHL0c2bd6+TbLdQYaXTO
	 wJIrZlDOURFCiyJSrEFLp/oz5H6S5q3PU4mUT7nnj7sNku2f1oIKDG+5sLtFO5VpNH
	 S1tS5AEdHp0xr0QvyO+3bASivcx8leuaowh61z9HleSDS3jvWi3AwVxowPhqnB2dki
	 rzTjr7OMG5X78NFGZQAdub/sBKvwgI/qM8n1KPfrMqmryvrHzif1+GHy+/lF8fwQRV
	 yV1E1EBXg93LA==
Date: Tue, 14 May 2024 21:53:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH] proc.5: document 'subset' mount option.
Message-ID: <mtqhpz2p3b7fmjkxq5hbnuls4mpkcckrnubcrzwc5cydawdjyb@3jhfe5monxpn>
References: <20240514175449.68721-1-technoboy85@gmail.com>
 <jp6oa3ge3qs2kl77kg4p5ns6u6yob5qyomhbdbqcoti55cj3je@tieeceztop3b>
 <CAFnufp0rx-OyfpYmTDGCXHDmB6XSYE_hbF-1s9WCd3UtLw0nUw@mail.gmail.com>
 <pvdvga6qc2dov7uo3r73epgs72hzwv5ioiya3jl6eddqxwsbaq@uk7xau6ljj4h>
 <CAFnufp1XDhzF=+2QqFGg_Ji04nxpb_wh0CYRgee+q00FgcqbDw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fsq7fu5wyxyo2w6o"
Content-Disposition: inline
In-Reply-To: <CAFnufp1XDhzF=+2QqFGg_Ji04nxpb_wh0CYRgee+q00FgcqbDw@mail.gmail.com>


--fsq7fu5wyxyo2w6o
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH] proc.5: document 'subset' mount option.
References: <20240514175449.68721-1-technoboy85@gmail.com>
 <jp6oa3ge3qs2kl77kg4p5ns6u6yob5qyomhbdbqcoti55cj3je@tieeceztop3b>
 <CAFnufp0rx-OyfpYmTDGCXHDmB6XSYE_hbF-1s9WCd3UtLw0nUw@mail.gmail.com>
 <pvdvga6qc2dov7uo3r73epgs72hzwv5ioiya3jl6eddqxwsbaq@uk7xau6ljj4h>
 <CAFnufp1XDhzF=+2QqFGg_Ji04nxpb_wh0CYRgee+q00FgcqbDw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFnufp1XDhzF=+2QqFGg_Ji04nxpb_wh0CYRgee+q00FgcqbDw@mail.gmail.com>

Hi Matteo,

On Tue, May 14, 2024 at 09:12:43PM GMT, Matteo Croce wrote:
> Il giorno mar 14 mag 2024 alle ore 21:06 Alejandro Colomar
> <alx@kernel.org> ha scritto:
> > Then 'pid' should be in bold (B), not italics (I).
> >
>=20
> Ok, I will send a v2
>=20
> > > # mount -t proc proc_pid pid -o subset=3Dpid
> > > # mount |grep -w proc_pid
> > > proc_pid on /tmp/proc/pid type proc (rw,relatime,subset=3Dpid)
> > >
> > > # ll -d pid/{1,$$,cmdline,version}
> > > ls: cannot access 'pid/cmdline': No such file or directory
> > > ls: cannot access 'pid/version': No such file or directory
> > > dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/1
> > > dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/25146
> >
> > Hmmm, makes sense.
> >
> > So, it contains:
> >
> > /proc/<pid>
> > /proc/<tid>
> > /proc/self
> > /proc/thread-self
> >
> > And all others are gone, right?
> >
> > Is anything else included?  Or is anything within those dirs gone?
> >
>=20
> Exactly, self and thread-self are the only non-numeric entries in that
> mounted procfs.
>=20
> # ls pid |grep -vx '[[:digit:]]*'
> self
> thread-self
> #

Please document that in the commit message.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--fsq7fu5wyxyo2w6o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZDwTgACgkQnowa+77/
2zLb+Q//aqmfRRw2G5KDcm+d98wpVlzhdmx/xd/K4HB7UQaONO5ODUdRoQB95TXE
hSRKp75Um4rWuRa8PuHD8q4/FuC8Lr0rZvhKkQimSzdaFFTdUglJdIW/YtpVpNRb
Aj4IjdPuJqf08IcP5i/zG1xwih/SvcDSktBGnEFuDBJEMAtNZoEKZHdZQZvC9uv0
sIOzik6z5gM02tSxM9QkxbQ8DJEAVL02VFZWRnpDJ4avv4VE6OsmufOEZjdZ+aZX
sTcGSq1HVPQMm8FUMoQg6ITJ/ht5/JinJ39OYBXpfvxORotoPat88XKsyyQ8Itf2
w26GZRw8HoZPN50+DS6uhc4idVsOB5P9RkhUjX5lMRHpqnwpqabLV29P9rOflL5c
2dRi4C4G84wUYeZhnXdRMq5y9kwru59CICEu0nq3UCv/g/QcvDG5w4GIMMl+PXoU
lsDuSROdvh4MdLoVjeiDviYYBHt1PEwda42dJCB+5WgWEijoIG85th0j0KOwgplt
2aycvfrek/3YIuoQdQ2dNgZkuc6I+0fOiXIwGXi+U9hivqPzZtqdkfqamVB0M9YY
qELdbdzpkew5mUY7cpfCBkOXToPIGKZDCPzw5hbQ6bI5VAAto8IjjVm2YFhBTCli
W9H81UzMInq6phFFlvujBOMTrNzu4tZXpOb/P3HQE219a4VLhWA=
=mJGY
-----END PGP SIGNATURE-----

--fsq7fu5wyxyo2w6o--

