Return-Path: <linux-man+bounces-4457-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D84CD0E9F
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 17:39:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44BF030D64BB
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 16:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1987F26C384;
	Fri, 19 Dec 2025 16:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nmh57sKY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FD81DF25F
	for <linux-man@vger.kernel.org>; Fri, 19 Dec 2025 16:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766162024; cv=none; b=gdDOLrOjTmzHSZVGIKUG7UWrnWVtd8mIhRiWSUbU9adlnWP4GR4GPSUh85XAugfuU8tbu+QNJSAhrRCAUvGh7yB9RMLI1LOnfAe01+a6BYC03WqB7XF0CmQqccwK0zfHwgJh8jJu58Mr/HwCm8aQW5o1eUTVrI9MGuV04i6DgtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766162024; c=relaxed/simple;
	bh=X0gAYutdlhtiDEmf0/ydm7G6St2EH1MbuTM2Q55lWg4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ma56QR4xBV9DOLobmuGBzHMldrWqnB1Vy+4GeBwzngmi7A7tIVG/ro95NCpYMMWgyAwnnE8HeF3wscpCSktG+4gfoVZqxBc1yC/eFk4pj/UaW6GAA6yvWqKsTVUL+7xtUKunjieVhTTjqoYnJY3ajWSpfZ8hTA/fOZZyVl53+go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nmh57sKY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F147C4CEF1;
	Fri, 19 Dec 2025 16:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766162024;
	bh=X0gAYutdlhtiDEmf0/ydm7G6St2EH1MbuTM2Q55lWg4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nmh57sKYl2auivW0yjolxR4JT1dnOa5flsnw8bCesyvelLmwacUeAQi0UuTzCZzMr
	 X4HgbbNRkP0fIVMIYRHIParZT6P/VwABmIGQ1MVYLPhyIqumJGjIkJaQAjS+iivIz1
	 flthd94mfqyablqh+onWtp5C8QUngHRPa1mfo0pg6J19yk9m+qZSSwECeL2b7TBPFS
	 Ju/rzGE77XST/3puoOKDOiRdh4vysIPhJy3VNOGei0meaFiH8MfcjexDydmNeuq+vj
	 CGsG1/4iznHvJM4pcCswD/FHzzoKKUhfhLD6uW86dmtOk+urw2UVb7DH/yPWU+e3T0
	 21T9v5/8Hnhlg==
Date: Fri, 19 Dec 2025 17:33:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
Message-ID: <aUV9Xmxr9ASJ_A5s@devuan>
References: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>
 <20251126020524.cq7alectskkzbjh5@illithid>
 <i526ocx5oztrostv55e77cq4fjsdet3g6hf4hej5q5wyyheyrt@eyz2knpjir55>
 <87h5ughsn0.fsf@gmail.com>
 <rwtjhwhcdo5x7sxqdktcfrvljjak2uwh5jh4hgoewdhramlnx7@eiqkvvluszla>
 <20251219162503.gg7k3fbfgsie7muq@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bh35zlehxsmryyv4"
Content-Disposition: inline
In-Reply-To: <20251219162503.gg7k3fbfgsie7muq@illithid>


--bh35zlehxsmryyv4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
Message-ID: <aUV9Xmxr9ASJ_A5s@devuan>
References: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>
 <20251126020524.cq7alectskkzbjh5@illithid>
 <i526ocx5oztrostv55e77cq4fjsdet3g6hf4hej5q5wyyheyrt@eyz2knpjir55>
 <87h5ughsn0.fsf@gmail.com>
 <rwtjhwhcdo5x7sxqdktcfrvljjak2uwh5jh4hgoewdhramlnx7@eiqkvvluszla>
 <20251219162503.gg7k3fbfgsie7muq@illithid>
MIME-Version: 1.0
In-Reply-To: <20251219162503.gg7k3fbfgsie7muq@illithid>

Hi Branden,

On Fri, Dec 19, 2025 at 10:25:03AM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2025-11-27T13:12:26+0100, Alejandro Colomar wrote:
> > On Wed, Nov 26, 2025 at 10:54:59PM -0800, Collin Funk wrote:
> > > Alejandro Colomar <alx@kernel.org> writes:
> > > > On Tue, Nov 25, 2025 at 08:05:24PM -0600, G. Branden Robinson wrote:
> > > >> At 2025-11-25T17:15:39-0800, Collin Funk wrote:
> > > >> > While looking at 'man -S 3 getopt' the underlining under PID
> > > >> > looked strange to me.
> > > >
> > > > The underlining under 'PID' means that it's a variable part.  We
> > > > use that syntax in many pages.  This is documented in
> > > > groff_man(3), as Branden said.
> > > >
> > > > However, you might have also noticed some dotted underline that
> > > > extends until the end of the line.  I think that's a bug somewhere
> > > > --might be in the terminal emulator, because I see it in
> > > > xfce4-terminal(1) but not in xterm(1)--.
> > >=20
> > > I was using Gnome terminal and Emacs '(man "getopt.3")'.
> >=20
> > Hmmm, I can reproduce the dotted underline in gnome-terminal(1) too.
> > I don't know where's the bug.  It might be in both.  Branden, can you
> > have a look at it?  I guess you'll know better than me about these
> > issues.
>=20
> The dotted underline is how gnome-terminal(1) marks a hyperlink.  The
> man page source explicitly formats this text as a hyperlink.
>=20
> MP> .P
> MP> Very old versions of glibc were affected by a
> MP> .UR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;h=
=3Dbf079e19f50d64aa5e05
> MP> .BI _ PID _GNU_nonoption_argv_flags_
> MP> environment variable
> MP> .UE .

I know this; however, for some reason I hadn't realized that we had a
hyperlink here.  My bad; a bug in my brain, it seems.  Thanks!  :)

>=20
> I observe a few cases of failure to protect literals from hyphenation in
> this page, include the aforementioned literal.
>=20
>        Very  old  versions  of  glibc  were  affected   by   a   _PID_GNU=
_nonop=E2=80=90
>        tion_argv_flags_ environment variable.
>=20
> I'll prepare a patch.

Thanks!


Have a lovely day!
Alex

> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es>

--bh35zlehxsmryyv4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlFfl0ACgkQ64mZXMKQ
wqlLlA//aIN9+Es51ETK9HU2MVhpAqY+fGyTGqFmMCyLaJUPNYr9y533BE9MrfVc
HeD+cgjKBitSzZNfWTPSD0PxPDryAKbANPkf4f52FAs4jDHR81lHucCKWYiK+Zv1
BdmotdakmqFk0mKb+IkSvTaELRixs4MAlWE2txUVmuykCf8dXPc59w5xDASz4g1y
vjXqQ3jCqIZcuKigWMjHRkCr7gRgr68gKTbJWZ5gE6/1UFRF67N+r21PulKNd2sp
ggQK3aRDhF9azNRog9AKP0g06jvOBM9XGziBg2AgOC/LC4T1GfTV+K9IKh2vHlyw
9lkO7ICqs3eqDTblT5DNgdIKnDvpRXoCJRBB3BYwUTNQmfIbpBz9rk2RSAElDeao
K5uydWyBdjWlyU4I45MrkoJXFKRsMHhfb5imUnj2diX7gxyqyo55LJ3DfINe0oFj
Pdlz1PUGQwvKfbWT3UMUxpMcpMSezb1CHAF26mHsX89fimfAufiwGnDmgraltn9N
DS7keQFuG6gHCxUtDE/BkhER8FW7XN8FZvyJEj/Ivgx1hDO7uNPXqFFzgvQPOCBI
VO5nflcmgZ4zrV+UdJBpsY5a4cj6JvypuC4+lLcrcAEi3HcXW44WIRVA1kU9e3mm
JHlwATgK3Tp5mStOHn/Xi4Y3hiohea6aLRFZyXWDgTkQRLIZ+FI=
=pdkj
-----END PGP SIGNATURE-----

--bh35zlehxsmryyv4--

