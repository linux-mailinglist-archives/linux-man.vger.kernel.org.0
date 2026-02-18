Return-Path: <linux-man+bounces-5162-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGQYC143lmkkcQIAu9opvQ
	(envelope-from <linux-man+bounces-5162-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 23:04:14 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A03F15A8D9
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 23:04:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1D7C23013705
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 22:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 288AE5474F;
	Wed, 18 Feb 2026 22:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXOu192B"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE7530648C
	for <linux-man@vger.kernel.org>; Wed, 18 Feb 2026 22:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771452250; cv=none; b=aP3Hz9+HKeyeBb2JAw1jmt4e7eNgV/0uVkzcfOfdLKO/psJKjQmWZefBl2R9Tg9PuwHXawDCV7McMMQSko5qbFZbLbC85GqfTfTeUPylQe9za59ggzhIF0MCH++0+r1r1nVLKTZvtOxogjAqobAHdVpOk6Fua1z1SeVzqkmhlX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771452250; c=relaxed/simple;
	bh=0WN00E09GJWSY5L8u4AkHttXfoDX3IgITS592B/Apvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EUhWul75ynRcwXdZPGtkKTG9iEV7Gm4XdENU1bQ3WpqdWvuRZtpS5Benbz1riGfIiZ0Qx7GTIZl+7ZYA1ZvAwh7e4oHz2KA3nFqAzCh8ZqGv5NagKaCx1aBJjxkz45EIAN+KMQmpieXwHuPLKErBSiZYuRz9hLGMzKDwE13JL7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXOu192B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9DC2C116D0;
	Wed, 18 Feb 2026 22:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771452250;
	bh=0WN00E09GJWSY5L8u4AkHttXfoDX3IgITS592B/Apvg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GXOu192BAZbPMucr3R3xrFkan/V/l7/29WFYMOv55BWr2jDaO/Ss4nhdU86/NyJt1
	 BLTWW7FpalNaR3Vp7pBn7PbBKu0brfHYQUWpN48CqdVqUuL+oY9icsznZi8F6S3mon
	 RBr8rHm5l9r/c3luzPzDfCqBEKuv3lcufhHJwj9wiW3DGQxd0EXO1Wlct05SAL44BJ
	 m0ev+b2XDMJCkAQfceqKwUD0lx6ymXO4KkjUaOsYIN6cb5uk7ICNb7W9UM7G+Z8gid
	 rvznKj9Gjj7VHyt2o3DHKYhYAD9fOq5SOIa/JpmSXdSGE7GIdJdaPEmcEhInIQzuWb
	 o1bxH/rLRKVNA==
Date: Wed, 18 Feb 2026 23:04:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH v1 0/1] futex_waitv.2: Move text to a new PARAMETERS
 section
Message-ID: <aZY3F6GDm6vZZ6Hg@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <cover.1771374933.git.alx@kernel.org>
 <wkb6g6eqsjol24fyermtgntg3yuzgrbs6z3bz5vfy5x6psy57r@tarta.nabijaczleweli.xyz>
 <aZYgLav9DxDExlQL@devuan>
 <cieq4a5bknvcu6oykfehgc76djihdiy6fuats2nqbcnznojdyx@tarta.nabijaczleweli.xyz>
 <20260218204012.nzeqnwfgi2vdyi5n@illithid>
 <aZYuPv3a1ONEi_nB@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g5rjb2luwrkokbq6"
Content-Disposition: inline
In-Reply-To: <aZYuPv3a1ONEi_nB@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5162-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8A03F15A8D9
X-Rspamd-Action: no action


--g5rjb2luwrkokbq6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH v1 0/1] futex_waitv.2: Move text to a new PARAMETERS
 section
Message-ID: <aZY3F6GDm6vZZ6Hg@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <cover.1771374933.git.alx@kernel.org>
 <wkb6g6eqsjol24fyermtgntg3yuzgrbs6z3bz5vfy5x6psy57r@tarta.nabijaczleweli.xyz>
 <aZYgLav9DxDExlQL@devuan>
 <cieq4a5bknvcu6oykfehgc76djihdiy6fuats2nqbcnznojdyx@tarta.nabijaczleweli.xyz>
 <20260218204012.nzeqnwfgi2vdyi5n@illithid>
 <aZYuPv3a1ONEi_nB@devuan>
MIME-Version: 1.0
In-Reply-To: <aZYuPv3a1ONEi_nB@devuan>

On 2026-02-18T22:28:16+0100, Alejandro Colomar wrote:
> I think this one should be uncontroversial.

And here's another one I'll push in a moment:

	$ MANWIDTH=3D64 diffman-git=20
	--- HEAD:man/man2/futex_waitv.2
	+++ ./man/man2/futex_waitv.2
	@@ -51,6 +51,11 @@ DESCRIPTION
	      clockid.  This interval will be rounded up to the system
	      clock granularity, and is guaranteed not to expire early.
	=20
	+     The following clocks are supported:
	+
	+     CLOCK_MONOTONIC
	+     CLOCK_REALTIME
	+
	      Futex words to monitor are given by struct futex_waitv,
	      whose fields are analogous to FUTEX_WAIT(2const) parame=E2=80=90
	      ters, except .__reserved must be 0 and .flags must contain
	@@ -127,7 +132,7 @@ ERRORS
	=20
	      EINVAL
		     timeout was not NULL and clockid was not a valid
	-            clock (CLOCK_MONOTONIC or CLOCK_REALTIME).
	+            clock.
	=20
	      EINVAL
		     *timeout is denormal (before epoch or tv_nsec not

--=20
<https://www.alejandro-colomar.es>

--g5rjb2luwrkokbq6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmWN1cACgkQ64mZXMKQ
wqkDFxAAuEsVYYq33hxyZGZ+pU9BvxCI3oVWjzwt51Ye+l2OLLd7yKLqL0gKCB2y
OljXuQwRFrHUpSI1z3VrE1YvUR/Z+2MLX8yuRYRcoz/nNOGX5mC7x94UpUFQ8AWV
HCAZuh5n+wbzNPdg87GajeHEdsqQlRbihVaTzubn0AfJzFa1vcu2jzSiXAPntJSk
0Y2Zkz/x/se46Oj/W0tum75iSxa8IDaVGjgRAS7+7kKc4KcY/j0YtJx9ZbVQVzxQ
NBJgswJ8Lq5ahZXQTJEd09SYYzIXbIzWFDvpitqfYaGlY9XTwuO4qwsBs74MmNUC
c1m2J5lgjt7RfUq5t3lTgX6a0wZWkcQLVtbq1E2aWvnOevAwGULG70zWxte9zHKE
EqBCrjXqMGeMUmjhCIJ3CatKzonkJZPLL+dzKaW5O6QPKnXB6sTfY2HNihV4HeGb
R8EPr8N0cApz3VxS8NuEiTpf5tYsEnS2zXr7HvH6lnm5hpJxK0rd5nDAPuKvYgnl
KE7OyvBQhhrX8LK2RqceNWlpa/a7i19sMkYImdOLiTHifKb9dwy/WKtpg6auebn+
q6YMGaT1AGMMXC3qgvaLJnoDx0/PYADXRyFFn8PUKxQ3X7CmXHB9yze8KTkTqWly
KEf1LpWYwhdZR+2Zz34DejuEW5/uWp2auGlA6bUNk7jdh5E5kTA=
=UJYg
-----END PGP SIGNATURE-----

--g5rjb2luwrkokbq6--

