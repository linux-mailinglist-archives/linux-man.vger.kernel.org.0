Return-Path: <linux-man+bounces-2452-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3B0A3749D
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 15:01:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0196F3AEA30
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 14:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D735818FC83;
	Sun, 16 Feb 2025 14:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tw3moeJd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9747218DB2A
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 14:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739714510; cv=none; b=YQGL7/KOYlnCV41cedc7Rf2zYiYR11AbVRihQ1DrszvDuACe2hXQA51Sy7cv6zYQXw6m6g641gilYyPRduRtmgX9JMXaiLbyl5ObueAg0z1H0/Jwg+Ubt7xGAFiAz86JR/O2gPpAk4qksbJ5xF/P6juf+vv+yduoqTGMl9e6D7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739714510; c=relaxed/simple;
	bh=Q/e0e46Ys/qrrSZWH8h9oEpUvfqRq3CNfiC+W7g6ASs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f9KlUPwIJFlqee0UlFGkvs+8xJowD89rNixASD296FqUa8V0u1NipcFQj/kzIyi7X15AZuioPtuX2tdXH/pC1GOEjbJ1m0rnL2QB7Ek67P6reauaY0XLdGVR6rR1o+XCFOJ//XN/uifxQ2NtPPdb8c1Y6d155w2aHDgQydihCf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tw3moeJd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD456C4CEDD;
	Sun, 16 Feb 2025 14:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739714510;
	bh=Q/e0e46Ys/qrrSZWH8h9oEpUvfqRq3CNfiC+W7g6ASs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tw3moeJdsAJyntk1sqkU0TA7g1jf2IzZICqeTXZFaDoHojISTxOz2DGcsbw37bR4k
	 oeDWaQ1An01K50Uy6x9vIpl0VdYlRdYwHbRToiiusPmuRoSHad/jm3JOoTOmyWd6Ji
	 0Y/EwYDeynS49qOjvHW8pJzqXlTaqnwdffDHp7mu8mY8C/DRB8ysP9LL3lx9flU9aE
	 YMwu6PiIiRNgsJfxB9zKwgx8jt155WNPryGPBhXTrEqG0duAhb7I05NyLHtfNDI7Ew
	 oRNmFy50vJCNiDm9zxcT+XMphD6D6CQlM2LfwtWiwfAm7QqWD8DPjwCf/VXF8xjzqY
	 kn/z3UUN1O00w==
Date: Sun, 16 Feb 2025 15:02:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: brian.inglis@systematicsw.ab.ca, linux-man@vger.kernel.org
Cc: help-make@gnu.org, psmith@gnu.org, sam@gentoo.org
Subject: Re: man-pages-6.11 released
Message-ID: <krlptdeymwpx4i6cb464p2rjo5pugmszrw7lnio5ioln5iw6jl@sfs7bnishw7y>
References: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
 <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>
 <t3ha5wm6yqgkx43y5mycwcw2ynwidl6gi2sq5erlhssadibvcr@mbmk2qff45fl>
 <672qhmdi2ef7l2lgczjaxwmkxdxhhi3ng7ivqgp6w6clgfhznj@hk3it3n4vz6v>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tekc5go3xxjzmdmr"
Content-Disposition: inline
In-Reply-To: <672qhmdi2ef7l2lgczjaxwmkxdxhhi3ng7ivqgp6w6clgfhznj@hk3it3n4vz6v>


--tekc5go3xxjzmdmr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: brian.inglis@systematicsw.ab.ca, linux-man@vger.kernel.org
Cc: help-make@gnu.org, psmith@gnu.org, sam@gentoo.org
Subject: Re: man-pages-6.11 released
References: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
 <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>
 <t3ha5wm6yqgkx43y5mycwcw2ynwidl6gi2sq5erlhssadibvcr@mbmk2qff45fl>
 <672qhmdi2ef7l2lgczjaxwmkxdxhhi3ng7ivqgp6w6clgfhznj@hk3it3n4vz6v>
MIME-Version: 1.0
In-Reply-To: <672qhmdi2ef7l2lgczjaxwmkxdxhhi3ng7ivqgp6w6clgfhznj@hk3it3n4vz6v>

[CC +=3D Paul, Sam, help-make@]

Hi Brian, Paul, Sam,

On Sun, Feb 16, 2025 at 02:48:54PM +0100, Alejandro Colomar wrote:
> Bisecting the bug shows it's fault of this commit:
>=20
> 0d69e51cd4b8 (2025-02-10; "share/mk/: Use ?=3D assignments for user-facin=
g variables")
>=20
> I suspect there's some variable that we use that exists in a normal
> environment?  I'll check.

Hmmm, at first glance, I don't see anything from the environment that
would make this behave differently:

	$ (
		git show 0d69e51cd4b8 \
		| grep '^+' \
		| grep -v '^++' \
		| sed 's/\s*?=3D.*//' \
		| grep -v '$.' \
		| tr -d '+';

		env \
		| sed 's/=3D.*//';
	) \
	| sort \
	| uniq -d \
	| wc -l;
	0

The command above says there are no clashes with my environment.

My second guess is that ?=3D since has the =3D behavior, which is different
=66rom :=3D, that might be the problem.  We'd need a hypothetical ?:=3D,
maybe?

Sam, that means that I'll have to revert this change with no short-term
replacement.  We'll have to live without environment variables for some
more time.  ?=3D doesn't work for well here, it seems.

I remember GNU make(1) was working on some of that.  Paul, how is it
going with the idea you suggested some time ago of adding "trigraphs" to
GNU make(1)?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--tekc5go3xxjzmdmr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmex7+8ACgkQ64mZXMKQ
wqm9nRAAkdValtU+CaR0L8Qk+vCLufpOoy2Dv6Ad3AZGiRjOkPSBuCmuss4fWn88
TD/OD10t5gZzX5ERBq8qm4y6SiAHsu14ETLZ3nepgeptU2pjfckHzyl1LdIwMKiK
bUQIOSVec/Ov/ME4WEgkKkaU7S+wByUpzNfg5Wzpmltcob/0LRjImqsTS8r6YXh6
cIBG5Cg+d6JzHtg+XruzU2CDgdufJl9DUfDpIcPDlvyj/ihKVlQQ0nkd8VcG9t9L
SYXAIVeOKTpwcvQrLMszlnnchxTLq598XRO3Gn91RT8o/Wz2A69lWr1a5Iwl8YDb
swHSTtck7BK72hMUXTSCWX83FZUisT/RJY0Nhzg9VOSm3Wr/W03F6mu92dWyvuXR
1gDQyJLlQhZeDQM/ik4TGBAo9T0OGhavLlq/PeWJpJ3szsX/LwupSQFmya0lZXaV
Gcy9yAOALLSnekERzfk06kfV9Ufgyi192PHMGPwSQ1MtG3xJrqz+Cd8sXHUpNhKZ
xKoEIzavxJUQnD2rp5hTcwcUv81cO8RCOZBZ7dvnw07JgoxgzovKxU+nMhhWedK8
3VimWGhqKqWCBvcZwLqF91hIDLF3i5bH7QNVtaU4njRJZXyOFnU1KtXmVkQLxo+f
CuBt8tpO7Q/GBws63Mp+FqWYYh2La+1B+6e5RhQqB5EqUgK4wCY=
=u1IR
-----END PGP SIGNATURE-----

--tekc5go3xxjzmdmr--

