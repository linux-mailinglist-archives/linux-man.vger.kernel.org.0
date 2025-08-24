Return-Path: <linux-man+bounces-3695-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 638F3B33258
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:21:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F255D202308
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 19:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AFAC21B9DA;
	Sun, 24 Aug 2025 19:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kt2AzUfg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5781F219319
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 19:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756063305; cv=none; b=GtFSWLfIsRuhbdLXRT5Nnn5oTK8zZlgIi0DAyGOjUoi4smbSUJk1HbbQQ/B6y6fbwYkq2JF8nbS0jfSZbrlRITEqSnJ/tgf9CmCrsDfQd5vvMJucDWhIqKirj3/+ga5QjVKD2Y5lBUpBhrFG07bJ2OaGDG5f+eayiXNLBDFMNxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756063305; c=relaxed/simple;
	bh=XgEtt2hT35wQ0y3p1C3H5ZvtJYaMF7gEyHoiZe1ylNM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PZTx8ieMxfy2EJnS6pYcIFQLiQtrE0vtmdt41AfDVQAZo37xoWU/kH+GGP7XkCcT6vnyPdQdeFUVGz+OTleUN/KxQbklL9mGYctrYfpUHM/XNmoOpPWsoWc1xfcB2+H0j0VEzf1iGAXryLzLWvUk+ZH2LXCRWCTJSQcNKG15cxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kt2AzUfg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB885C4CEEB;
	Sun, 24 Aug 2025 19:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756063304;
	bh=XgEtt2hT35wQ0y3p1C3H5ZvtJYaMF7gEyHoiZe1ylNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kt2AzUfgwIpFdk5zwUHMdNJGZpQM6SrEagt7EpEHcq1BxmgkVIfQs7XkZFAnGjgk7
	 u4uUQyUeNh7KiLVSzfNBq/zaUUBtcM8skZBG0AIFBotmfrYDUQFOj0vZjmbTKd+Je1
	 eUN0Hk8D6MJVBxzV/JhBuajNEIhKIRaLHGrjbwHwnrvp/1N8Cu4/Nn5+eHskq+jNK7
	 99Fnbj9aSnwpD6Cr85quC8Z11zC8NAoJbJA6EVCg7RqXK5y5hKH3uxEzuvu86ggYvV
	 OyYBamjla7OkObFwQZI0r6SDwq5XgrdGYNvGZrqL5NVCmxkIpCY4wXqwC9O1IC+RhO
	 awF3HBxodZhEg==
Date: Sun, 24 Aug 2025 21:21:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
Message-ID: <lnh4f63q5onlj54wt7qg76unbcvu5apinualih4byiatrfvjpv@5r53xpupbjws>
References: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z4rsmbnxz3nfolzj"
Content-Disposition: inline
In-Reply-To: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>


--z4rsmbnxz3nfolzj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
References: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>

Hi Helge,

> Subject: Re: Issue in man page PR_SET_SECUREBITS.2const

You probably meant PR_SET_THP_DISABLE.2const.  The text you quoted is
there:

	$ grep -rn THP.disable
	man/man2const/PR_SET_THP_DISABLE.2const:9:set the state of the "THP disabl=
e" flag for the calling thread
	man/man2const/PR_SET_THP_DISABLE.2const:21:Set the state of the "THP disab=
le" flag for the calling thread.
	man/man2const/PR_SET_THP_DISABLE.2const:32:The setting of the "THP disable=
" flag is inherited by a child created via
	man/man2const/PR_GET_THP_DISABLE.2const:9:get the state of the "THP disabl=
e" flag for the calling thread
	man/man2const/PR_GET_THP_DISABLE.2const:22:the "THP disable" flag for the =
calling thread:

On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    malloc =E2=86=92 B<malloc>(3) ?

Maybe, but we should probably add a reference to malloc_hook(3) instead?


Cheers,
Alex

>=20
> "Setting this flag provides a method for disabling transparent huge pages=
 for "
> "jobs where the code cannot be modified, and using a malloc hook with "
> "B<madvise>(2)  is not an option (i.e., statically allocated data).  The "
> "setting of the \"THP disable\" flag is inherited by a child created via "
> "B<fork>(2)  and is preserved across B<execve>(2)."

--=20
<https://www.alejandro-colomar.es/>

--z4rsmbnxz3nfolzj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirZkMACgkQ64mZXMKQ
wqn+ZBAAggYtyQDjlqI1e+yVI5qXtNu26xCStDhg7tLsjDMTug6GTrPYKoTVz0n7
JLvvxbWYCmK5u1U13may8WwphRQOqtKmVdBToWSW/pYEP6zCMse+nuRbmCigmjct
O4sAhyVDUFW3HNP8fvQprB55RL+sX2y6nlGQ97F7A5FklzoWcimWqyPMax/PhLaU
Yca9WN5g6ALoxT//handLhQyQaK0RIH2DFHWOEW4wqxekUwywMP+umAqNSj9LU19
wI5aZBEKyKL0j0a+Da7pVV31MfIZv48Km71VvV4V4HRwBDg8y4aiF0nRwjd7+AjG
oTyz67sZu8Gaopo0Y5CCnhgI8pTN7aGBPy4KRZGK++UGpHsKG3UQ5Z8/D0JHNDt4
sOr+/rX7C6llxw5cK5MzeYWypNgZ3a/5qdFppP9RywJsVUPI5UIzkU/y6tm1BA/r
4jxFW67j2UQO4071S5hzr+YzDdrD8G7lIArVD7NJ4RBwn4TR7o++LFWrbY6LbiZT
hmOwagYKZ142VMLyRwOGtXY13Rtuf+8zahfU518qXNI+9ntBVIEbe4YV9uIdks74
3HJjm1LWms6AsQ/7NwoPsthtFz4eTovNmay1VPSKvDtAErE5JT+K7PfsDrwp5e5H
u6FeVWZbGf2UCzbSxsO6v0zvE83P2ZH7K9+UTv2JSpZdRh6OWXo=
=an+K
-----END PGP SIGNATURE-----

--z4rsmbnxz3nfolzj--

