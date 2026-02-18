Return-Path: <linux-man+bounces-5161-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOXDJAswlmktcAIAu9opvQ
	(envelope-from <linux-man+bounces-5161-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 22:32:59 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0088715A24A
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 22:32:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E7C4304743D
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 21:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E3F3314BF;
	Wed, 18 Feb 2026 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bE6KIVGl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A63B8330D22
	for <linux-man@vger.kernel.org>; Wed, 18 Feb 2026 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771450096; cv=none; b=ll4c0Tzf0cnIS60qI4z/JUlGE2eMqt8A0DaXT6uigRu63Li8zYyma9K3N7w8mt3txQnN3gSImC203t1X5Iv6PppuYMtjREYtcfJDhwOXa2PMw9NfPmbfZhxfMEleQoyziFtE/B3Coj+tozuwxX3o51FGlbtiflpHxRG3IDEj3gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771450096; c=relaxed/simple;
	bh=hFDlbhcxiQWmOkpJXx1x37qWjIEHD4wn8U5LVm5kGyk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rdQq4cwm3zjJXJp0AP1WGxBAh2n63w9EjUZ4mTsflMfR4aMMAd1I6xB0fkejX6HHLKeigHCy3XABYvxk/byA7xsiB9c5oa8whqHfyjxTqzFPSjUWNfVvddG6+OYP5QffZ62vQaf6DSjxYBNW3I6IqNYk77lT4fEa7V6H29YA86k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bE6KIVGl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F5D1C116D0;
	Wed, 18 Feb 2026 21:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771450096;
	bh=hFDlbhcxiQWmOkpJXx1x37qWjIEHD4wn8U5LVm5kGyk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bE6KIVGlFlwjxpEUeZkB4taSX354FcKeubYrE7UeBCthJJWThnPj/OvncrBbum2dt
	 eRZJqc5e+WctILBdsWcN+VvLMbHf+9cFKcZSxQ1U7WVkcTWxQ6MHAvNfECsMmqkugV
	 nD2kGKu5IUUTnRWCImWvTIwl41tNLGhf7LECrNtv5J/GDnfnJLCSk5krZalVxPF4Tp
	 cLOIDYEHT9Kcm8ptb3LtdfLFIpY1QR6zxpAestw/3VOFV+lv13+RcH7w/U5xEYUJyN
	 5sOcDQa4Gv+oGmYTPRz1qnaE0ToF8vVPWcvxYx2Xf2FDhv7/v76t/+G2wYjK2TI2kx
	 dGwL737EcFF+w==
Date: Wed, 18 Feb 2026 22:28:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH v1 0/1] futex_waitv.2: Move text to a new PARAMETERS
 section
Message-ID: <aZYuPv3a1ONEi_nB@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <cover.1771374933.git.alx@kernel.org>
 <wkb6g6eqsjol24fyermtgntg3yuzgrbs6z3bz5vfy5x6psy57r@tarta.nabijaczleweli.xyz>
 <aZYgLav9DxDExlQL@devuan>
 <cieq4a5bknvcu6oykfehgc76djihdiy6fuats2nqbcnznojdyx@tarta.nabijaczleweli.xyz>
 <20260218204012.nzeqnwfgi2vdyi5n@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3njaarf6q6r6ztff"
Content-Disposition: inline
In-Reply-To: <20260218204012.nzeqnwfgi2vdyi5n@illithid>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5161-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 0088715A24A
X-Rspamd-Action: no action


--3njaarf6q6r6ztff
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [PATCH v1 0/1] futex_waitv.2: Move text to a new PARAMETERS
 section
Message-ID: <aZYuPv3a1ONEi_nB@devuan>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <cover.1771374933.git.alx@kernel.org>
 <wkb6g6eqsjol24fyermtgntg3yuzgrbs6z3bz5vfy5x6psy57r@tarta.nabijaczleweli.xyz>
 <aZYgLav9DxDExlQL@devuan>
 <cieq4a5bknvcu6oykfehgc76djihdiy6fuats2nqbcnznojdyx@tarta.nabijaczleweli.xyz>
 <20260218204012.nzeqnwfgi2vdyi5n@illithid>
MIME-Version: 1.0
In-Reply-To: <20260218204012.nzeqnwfgi2vdyi5n@illithid>

Hi Branden, =D0=BD=D0=B0=D0=B1,

On 2026-02-18T14:40:12-0600, G. Branden Robinson wrote:
> At 2026-02-18T21:30:53+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > On Wed, Feb 18, 2026 at 09:26:38PM +0100, Alejandro Colomar wrote:
> > > On 2026-02-18T21:16:06+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > > On Wed, Feb 18, 2026 at 01:41:38AM +0100, Alejandro Colomar wrote:
> > > > > Please let me know what you think of this patch?
> > > > > Here's how the patch changes the page:
> > > [...]
> > > > > What do you think?  I think the formatted page is more readable.
> > > > I really hate it.
> > > Okay.  Do you like any part, or is it all hateful?  :-)
> > The format annoys me, the layout infuriates me, I find the tone
> > insulting.
>=20
> When dealing with formally complex (meaning: decomposable) proposals,
> rapprochement is difficult with a binary oracle.
>=20
> Alex,
>=20
> The onus might be on you to correspondingly decompose =D0=BD=D0=B0=D0=B1'=
s black box.
>=20
> Some obvious candidates include the two hunks of the end of the
> diff of the formatted document that change only a few words, and the
> existence of a "PARAMETERS" section of the page.

Hmmm, I've now pushed a much smaller change:

	$ MANWIDTH=3D64 diffman-git HEAD
	--- HEAD^:man/man2/futex_waitv.2
	+++ HEAD:man/man2/futex_waitv.2
	@@ -54,11 +54,16 @@ DESCRIPTION
	      Futex words to monitor are given by struct futex_waitv,
	      whose fields are analogous to FUTEX_WAIT(2const) parame=E2=80=90
	      ters, except .__reserved must be 0 and .flags must contain
	-     one of FUTEX2_SIZE_* ORed with some of the flags below.
	+     exactly one size flag, ORed with some other flags.
	=20
	      FUTEX2_SIZE_U32
		     .val and .uaddr[] are 32=E2=80=90bit unsigned integers.
	=20
	+     FUTEX2_SIZE_U8
	+     FUTEX2_SIZE_U16
	+     FUTEX2_SIZE_U64
	+            These are defined, but not supported (EINVAL).
	+
	      FUTEX2_NUMA
		     The futex word is followed by another word of the
		     same size (.uaddr points to uintN_t[2] rather than
	@@ -132,9 +137,8 @@ ERRORS
		     Any waiters[].flags field contains an unknown flag.
	=20
	      EINVAL
	-            Any waiters[].flags field is missing a FU=E2=80=90
	-            TEX2_SIZE_* flag or has a size flag different than
	-            FUTEX2_SIZE_U32 set.
	+            Any waiters[].flags field does not contain exactly
	+            one size flag, or it contains an unsupported one.
	=20
	      EINVAL
		     Any waiters[].__reserved field is not 0.

I think this one should be uncontroversial.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--3njaarf6q6r6ztff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmWLuwACgkQ64mZXMKQ
wqkXZg/8D42Mhd0MPK9i+dtp40FNnIVPckk2RB7t8c/AnZJRuRWMEQO5+UKeeI52
vLRYo+DQ1T2OH/NhV6DdqsMKHcDoUcz6DRy0muB9M5INBAmt6fQYMOTU4myOzT/q
7BBE9ZtmXeHnQOnVhUWy2+dlGpbtu5tbziGg1roqDOGYcaUHcnzsMsoFHJqyNd/k
F8G6R+fbMnag+liw7vXbzaU0Y/E7kwlFa1t0prIdx9Xc+QkBubW02UdsFxZE4tDF
tA3pLS0ulro+Vd1YCCdp45ZSRkBmmx+5dbauHfYZcos08vNZqs9sKqDbg28rESjH
fBAQyu5PhpsDO8l3SCGE2c0WU8kZl4VvDq6AaHXI/wZnpPFynX9kzEGZoKZwh54f
aRO8QNbZJz+QBbdEZ+HaFUd6i4NZN15UPyql51EMXyYI44+0SO1pt+6mkwaPMHzV
vU272jyCn/O+6EQf8F6MBVRwPO0LXPSUQS5UT0St+LknI159b+9nEZ6P9226cLTT
QV/wHDTiP/lvtgpKtadORV0SRhj2d9/ZNc9IRGNArzU5orUyzFymIcg+6keo2NYn
wuGkUoanJmJ/atoGOWjRLJ+ejk0ErLNgU4rm4c0iPt6XZZcE9dVV8r8aVUJiBsOQ
7RG2l+s2wR6kW/N/Y7rf5e8rpQo4TjWPAqrFxWfO5KAvcBUYHCM=
=+GFu
-----END PGP SIGNATURE-----

--3njaarf6q6r6ztff--

