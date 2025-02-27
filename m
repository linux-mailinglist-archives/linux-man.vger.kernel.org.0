Return-Path: <linux-man+bounces-2534-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B2874A482D7
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 16:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C84AB163B8E
	for <lists+linux-man@lfdr.de>; Thu, 27 Feb 2025 15:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93A78237708;
	Thu, 27 Feb 2025 15:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLzya6pL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F5025D203
	for <linux-man@vger.kernel.org>; Thu, 27 Feb 2025 15:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740669611; cv=none; b=eO6jZ+LV2VIPDGEKf1SNu47c1+U387cuOqJWfMq+nYC7X4s6Y66pj1fWZED9EA8wP08Zkz5te4Sk0F8HqFokGjcTopoIz4+Cw0VsG0gotH7KWUZwnIvMwB2JjFp7/TVFBEv350KCzOrBxOg8sGsmP9593noTwYWSTpx6Egos0a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740669611; c=relaxed/simple;
	bh=WcfOpybr2AyQ/7UjxZ6KUGF2k9hSWqSyvM5i+98zVLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rgqL9gQWeVKi263UKf6VrkMUbeoshZcip0hir2y5K/dersv8Rsd7fAJ/foOF8CyMcsZFdXPAP2lrOJIKxoLD8ukqvzIG2YL0jWhpUsLRYvco71Ytm18QPPhpwq5TH9njgqEeyWlKBuRdKve9lEFfurwYpouJN9eo6V7zhiQ+G5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLzya6pL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E429C4CEDD;
	Thu, 27 Feb 2025 15:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740669610;
	bh=WcfOpybr2AyQ/7UjxZ6KUGF2k9hSWqSyvM5i+98zVLM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LLzya6pLmTgjPP3wHixHe2lgkMuwEqO9yrY0gRy53PY5jfI6v8moyaokotbI75y4Q
	 bo1meW7zsB3bZVi3vXw2cVFMl+SdvnhlBEMfBxWRX80LpM+ZRfm9rXFvD/+SdWtGzH
	 dKUxsvWZPDpYEIeVCsQeLRnmfeDe5uu/UMGfBozo+11KVcr+Eci0zCUUjxRyJHszZR
	 DE7AuTeFRlhs1b/gz1uH1lQWZ14KWcyUq8YtN79ywdVlPkPVzIcoh1HSgr0ksfRBuX
	 SObP7v0bGpHUQmBJca5jHb6fuNawBDwO+oB7KpYnHh9kONz8sAK0nZd692ai4A/jkd
	 6c+lNEvgsoydg==
Date: Thu, 27 Feb 2025 16:20:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fw@deneb.enyo.de>
Cc: Sergei Trofimovich <slyich@gmail.com>, linux-man@vger.kernel.org, 
	Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
Message-ID: <5bjgrgu63l3uodofandxcqavwov4b5ub7ae5vnngu7as26d4o7@ylejzhnko7vm>
References: <20250227092142.1822609-1-slyich@gmail.com>
 <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
 <Z8BLSuhHpNxGgg0y@nz.home>
 <ha62i7u3tqzovwf62evd27erfwx57anmist4odhldi6npzr4ok@esbl7yn54egh>
 <878qpr78j2.fsf@mid.deneb.enyo.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4islgrrshiim2ivg"
Content-Disposition: inline
In-Reply-To: <878qpr78j2.fsf@mid.deneb.enyo.de>


--4islgrrshiim2ivg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fw@deneb.enyo.de>
Cc: Sergei Trofimovich <slyich@gmail.com>, linux-man@vger.kernel.org, 
	Boris Pigin <boris.pigin@gmail.com>
Subject: Re: [PATCH] mk: don't escape '#' for `grep`
References: <20250227092142.1822609-1-slyich@gmail.com>
 <5s43rvskakybdll44oj5d5x7xmxjhlindgdokxyjqzqtgkipxl@hbfuwiyish4r>
 <Z8BLSuhHpNxGgg0y@nz.home>
 <ha62i7u3tqzovwf62evd27erfwx57anmist4odhldi6npzr4ok@esbl7yn54egh>
 <878qpr78j2.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
In-Reply-To: <878qpr78j2.fsf@mid.deneb.enyo.de>

Hi Florian,

On Thu, Feb 27, 2025 at 03:43:29PM +0100, Florian Weimer wrote:
> * Alejandro Colomar:
>=20
> > Could you please try to find out the cause of the actual problem?  Maybe
> > there's a fix that doesn't involve reverting that patch.  Or maybe
> > there's a bug in some tool, and we can report it.
>=20
> NEWS in GNU make explains this:
>=20
> * WARNING: Backward-incompatibility!
>   Number signs (#) appearing inside a macro reference or function invocat=
ion
>   no longer introduce comments and should not be escaped with backslashes:
>   thus a call such as:
>     foo :=3D $(shell echo '#')
>   is legal.  Previously the number sign needed to be escaped, for example:
>     foo :=3D $(shell echo '\#')
>   Now this latter will resolve to "\#".  If you want to write makefiles
>   portable to both versions, assign the number sign to a variable:
>     H :=3D \#
>     foo :=3D $(shell echo '$H')
>   This was claimed to be fixed in 3.81, but wasn't, for some reason.
>   To detect this change search for 'nocomment' in the .FEATURES variable.

Thanks for pasting the relevant NEWS entry.

>=20
> Applying the $H suggestion seems harmless enough, although this make
> change seems to be fairly problematic in general.

However, I learned about that change last month (after Boris's report),
and I think it's not our problem here.  The thing is, on my system,
grep(1) is just fine with that escaped hash:

	$ echo '#foo' | grep '\#foo'
	#foo

While Sergei seems to be getting a warning from grep(1).  So, something
in our systems differs, even if our make(1) version is the same.

Our bash(1) version is also the same (sh(1) is not, but we're not using
sh(1), AFAIK).  So something other than make(1) seems to be treating the
\# differently.


Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--4islgrrshiim2ivg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfAgp8ACgkQ64mZXMKQ
wqnxpg//f+ut73cmxVJyuyWAGqc4wzi0QKwQL5cWcaFQHvwKSQDbMgnYSsitVbCt
bUmOcpxmSlKDiS0bsJVwf8TUMLA6gXWNRKzQoyolAnsGwdUdkzO8XZ+7HGK9DBd/
IM34/ilzLnQVfhPa725yvmtZZu9uuMZ+3jRYmG+GFM8WCcuMVCx8JXZk3CTZNy4x
to+jm4JL00JcLkiyXE0w/i73B49QYA8a2V+PiFaOUAq/p94oVDkjsb3p/6xt1nLM
6yx3QxETru5dsWrIMxdwgv41wxTVdp7c4+Hs2Vw8j4g7os/KcLq/eZaxT5p6bSQl
SXMeLKttnI2asa0bUZWqKA9RkzEdFld4mm3K3CojkgdBpnyFKMnPPCDgbjaiNZAv
/8zWLnJGn1lXGJtjflybqDha5VRG1jHZhjNrdmiGjS2cvNFa0OHBnC4N62OVo3u9
OJ4rrtBmQm9/UW8Fm4toeEAzAOuUcpByqD6pg9kLCpoYyT856UiZkgzdDMH8oRTK
pKHJkDMGZmrrwd/oe9gZrKU1+v+lHVS67O58/Pt1aGjIarby3KMEBzOY3kSH/Nf+
AEsBO5zsI0+S/t94gxo8UFi34XixpiYKsPylfF6nL52120IwmSm7M6bBCYSgoi4b
o9nMGCOsDbJs/JlZcMEbLD03V+cVMJ29C2fz02l99eTG6iq8h5A=
=tbuC
-----END PGP SIGNATURE-----

--4islgrrshiim2ivg--

