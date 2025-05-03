Return-Path: <linux-man+bounces-2862-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9EBAA7F3B
	for <lists+linux-man@lfdr.de>; Sat,  3 May 2025 09:25:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8ADCD466167
	for <lists+linux-man@lfdr.de>; Sat,  3 May 2025 07:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E1DE1A23AC;
	Sat,  3 May 2025 07:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYV1WIDg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B11118DF80
	for <linux-man@vger.kernel.org>; Sat,  3 May 2025 07:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746257104; cv=none; b=phaHrZ+zEfOMWAzaFdXWnQxm++QLl9NR8P/xckmQEx5o7D0M3bCSL4bqtkkHfML01E9d+vcH0akRHV3wbi5SlP0JPMy62sA2kmc5GXByH/j0jDIh7KXfiNRlfvpDsBoklc9ioNEODP8BRuvvGDhit40ZazofjbKBLhuUkruLtLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746257104; c=relaxed/simple;
	bh=RmjVET0aYHz9l/ZNWf3XeDJuN5zXCom1J2aHytayX18=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GLb58pDfdul/WYnxi63b52I+G7KvoxKlr60DAimQXmx55WzK63fuQHpy7d1UcVwat2jQq1k4eE0RrArvA5azD4jXM6bMEf5a/gt5EJOdopFhFi/giVXpsg/r3i8831/Y98WCW1Fby7it4qYncVbl/8GL4oRs6fRhPFIojPOaFZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYV1WIDg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C24CFC4CEE3;
	Sat,  3 May 2025 07:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746257103;
	bh=RmjVET0aYHz9l/ZNWf3XeDJuN5zXCom1J2aHytayX18=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=nYV1WIDgwsWzc504L1mUKRPkpDOuss01jaVOLBFznKgP1qWmivv+qhGzlSB4NsMfW
	 y5+UH8j6Z9e78zAqZFrCNYUQlC85IMvSetUb3TzVneeJLvRfC5TpbyNgo4yPCpwgo+
	 WT3B+O5R//XBVwfQnipBu/v/dzI3+2G/SgYIzO1TFDWRojPrRP4U8kc+gn59Aw0VA/
	 epIg/1Fslnt3B5KZrbaUrZGXxLqGKZSubAwtghbMJCfhnFmh6ioK9RT1B6bFTmcOk/
	 cf3itfz3dLVX9C8qRxtfvLSUWBULex9uS66Q2a49syXG0glU4m7+hAJ+qAHM/U+xwa
	 gaN8AeKr9N/hA==
Date: Sat, 3 May 2025 09:25:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: grof --run
Message-ID: <infs32luww4dgzndwamqqulr2mj37afffizkemzubbr6plr7t4@sn7kgnd5fcnu>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <fg6yru6cwn4itrn55mmnpt2eerjeph3z3ow3asowf2dhkq5iwv@qewmi2xgqgf6>
 <20250502141948.bszoef7vvhnuworm@illithid>
 <ina3kzpisr62v4dcrzrneae6mo5vlaoosgmlhaewpeqhusv6u6@xy33kozxiknz>
 <20250503004917.6hg6ymsdfnnn4o7v@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="htzl3375s35a55gt"
Content-Disposition: inline
In-Reply-To: <20250503004917.6hg6ymsdfnnn4o7v@illithid>


--htzl3375s35a55gt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: grof --run
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <fg6yru6cwn4itrn55mmnpt2eerjeph3z3ow3asowf2dhkq5iwv@qewmi2xgqgf6>
 <20250502141948.bszoef7vvhnuworm@illithid>
 <ina3kzpisr62v4dcrzrneae6mo5vlaoosgmlhaewpeqhusv6u6@xy33kozxiknz>
 <20250503004917.6hg6ymsdfnnn4o7v@illithid>
MIME-Version: 1.0
In-Reply-To: <20250503004917.6hg6ymsdfnnn4o7v@illithid>

Hi Branden,

On Fri, May 02, 2025 at 07:49:17PM -0500, G. Branden Robinson wrote:
> At 2025-05-02T16:59:58+0200, Alejandro Colomar wrote:
> > On Fri, May 02, 2025 at 09:19:48AM -0500, G. Branden Robinson wrote:
> > > Your grog executable may be out of sync with the man page you're
> > > reading.
> > >=20
> > > Compare `type grog` with `man -w grog`.
> >=20
> > Hmmmm.
> >=20
> > alx@devuan:~$ which grog
> > /usr/local/bin/grog
> > alx@devuan:~$ grog --version
> > GNU grog (groff) 1.23.0.2695-49927
> > alx@devuan:~$ man grog | tail -n1
> > groff 1.23.0                    26 December 2024                       =
 grog(1)
> [...]
> > Okay, this complicates things a bit.  :)
>=20
> I'm betting `man -w grog` reports "/usr/share/man/man1/grog.1", possibly
> with a ".gz" extension--in which case, mystery solved.

Yep, it's the system one.

> In my shell startup files, I make sure to update $MANPATH any time I
> update $PATH.

I'm not sure why, but I don't have any pages for groff(1) under
</usr/local>.  It seems I only installed the binaries.  It's not a
matter of MANPATH not being set.  In fact, I read the pages from the
Linux man-pages installed into </usr/local> every day.  :|


Have a lovely day!
Alex

>=20
> This is not a common piece of cargo that Unix newcomers acquire;
> historically, I suppose a lot of man(1) implementations didn't support
> $MANPATH, but man-db has for decades, and I see mandoc(1) does too.
>=20
> Setting it won't, as I understand it, help FreeBSD or macOS users; but
> the former have already memorized everything worth knowing about their
> systems, and the latter use only "intuitive" software that requires no
> documentation.
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--htzl3375s35a55gt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgVxMUACgkQ64mZXMKQ
wqk7xQ//QkKs8heC6QoJ+k4d2LnXAC2MCa2dJKwvJEr+FOiyCOAavjUe/vwIez2e
ym8/ZGxAIJUWDl45VR3aOIuj336mvuA9t4Yzys3DbzQBoIiWMyghavLjLPKtIEDl
pmUDf2536rQPLHrlwjXqF5KmHL8WwVe0O6pXhpmg6fGv7DOm2dRW/EVCxUzJKbaC
zLrsf1NZwb7bNKNXmoOt32EwgIKixEhnjYsMgDeliPHmBwNfMhXSO3KDBFHGV6vi
d2LaSf8eDEolTxrG1MoZobXQm3DVpMKS14e0OWrl7IDQK89Iy/GvWPHLzjt1p9Mb
vszzfexptIMHmHbI9UPeiRBRiOVWebidhziqsO9Q8ehrhahYjF66Wt5XVhYldv6v
/XmgBoD6HUira9OgP5xdUu0CP6kqODZ0JCOxelvnpdkkoH+3KSymaqZBy76LpkOB
P1VtKnXZg6qv0IFo2Y/wXyTqzAURZZPrD8LB6Rg9rL26HqhDxJDu56G8TdbFOH68
bKi0BWTlJ+o9+4RhTbbKTGpwBS4J6dUhaZ6HTXTJNTP7UtkNewbcRT3Rs48lcmX7
8c8WYOEkgeH1Eigbwi0d70vnkgfLzwl3NbZ0qDi5qUMpWeZCOl7sFSGReJUmIxRL
r62G3pS/PDeFT6ujhRR/9Oj49YMvq9siVjg6XHo+DZvz9t8eNVg=
=pOEp
-----END PGP SIGNATURE-----

--htzl3375s35a55gt--

