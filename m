Return-Path: <linux-man+bounces-5173-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id XB+kDowZmml2YgMAu9opvQ
	(envelope-from <linux-man+bounces-5173-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:46:04 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A4116DD46
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:46:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 04215301F695
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 20:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01D682D8396;
	Sat, 21 Feb 2026 20:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLnJA0XU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6231E7660
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 20:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771706759; cv=none; b=TXGoyRx+pkI6CkX5iEo7cN6tX4LBtJJ8CWg38HnqL5JZxD9mLa+Ll0Ku7kFhBW8mZL9TJJQmPZue43sOkUKrSlJKIRADlQNgcy6N4loz2Yd23E/dL6ZlCiJkz+jnSqoG0d5YtbYIbVNRI9E2C5jpuRK5nBd8a5pmgpv4nasiLuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771706759; c=relaxed/simple;
	bh=6DXSqeqUHhkcgVLbMCcavZg0zKLTWGVFq56m7zPtrIs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XIflY0PXO7Vg53FtL1uVSUNNst16ISHBiaVqqL1QDExOlaS/j1mbCaL7vdWqYHNszrBiw+gppdYkwQxfs9AYFBN7rSObn/0HJO8YeN57fMzObB33JgCWD/me+ZAqfOqdVJyMaMGDcmChbRqWWMDR/FL/B0KC6735b1DBy5FDTxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLnJA0XU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AE3BC4CEF7;
	Sat, 21 Feb 2026 20:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771706759;
	bh=6DXSqeqUHhkcgVLbMCcavZg0zKLTWGVFq56m7zPtrIs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cLnJA0XUJDzu7wIENqfYUl/Q1E7vABZ2bG8rl/0GQefloQ7yEJb2yC1REpXG3qbrP
	 Sp6aR7fFNHlremrJg04gsiZ+IB82LgybbiiClVix83KheJv0vbFw+mHxwJK2KL4mvx
	 S7sKsARoPL59SUapN/0yBcmYLXX5rAvUFnRGla3nTPV0h4uaLpkgOGChmiiLvOHlJW
	 l2+4q7AD6xlnt+0ipWy6Ut3m++bCFx334un/6fjqTGOAw8dVfBwHBY8Vqofy2Dx94w
	 4f5D2sn5lfU/AcGPWtSDFo6QaTnPnbU2d7+9VzqfN0lwygHJEhsRCIBKuIMAp6RBr2
	 /iZOtaZyaHjPw==
Date: Sat, 21 Feb 2026 21:45:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Simon Josefsson <simon@josefsson.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZoZJDBj_b9wJJZL@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <20260221174142.5e6xufffrawahxsp@illithid>
 <aZoMp9gUNpU6rGo4@devuan>
 <87fr6t7tli.fsf@josefsson.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4dimvy3jhhsyknqa"
Content-Disposition: inline
In-Reply-To: <87fr6t7tli.fsf@josefsson.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5173-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,gnu.org];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A2A4116DD46
X-Rspamd-Action: no action


--4dimvy3jhhsyknqa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Simon Josefsson <simon@josefsson.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZoZJDBj_b9wJJZL@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <20260221174142.5e6xufffrawahxsp@illithid>
 <aZoMp9gUNpU6rGo4@devuan>
 <87fr6t7tli.fsf@josefsson.org>
MIME-Version: 1.0
In-Reply-To: <87fr6t7tli.fsf@josefsson.org>

Hi Simon,

On 2026-02-21T21:02:49+0100, Simon Josefsson wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Hi Branden,
> >
> > On 2026-02-21T11:41:42-0600, G. Branden Robinson wrote:
> >> Hi Alex,
> >>=20
> >> At 2026-02-21T16:02:52+0100, Alejandro Colomar wrote:
> >> > +.SH RETURN VALUE
> >> > +.IR s+strlen(s) .
> >>=20
> >> Too cute, in my opinion.  Use English.  :)
> >
> > The thing is, at first I thought, am I going to repeat the same exact
> > words as in the DESCRIPTION?
> >
> > DESCRIPTION
> >      strnul() returns a pointer to the terminating null byte in the
> >      string s.
> >
> > RETURN VALUE
> >      strnul() returns a pointer to the terminating null byte in the
> >      string s.
> >
> > I could remove the DESCRIPTION altogether...  What would you do?
>=20
> Use the same style as for strlen:
>=20
> DESCRIPTION
>        The  strlen() function calculates the length of the string pointed=
 to by
>        s, excluding the terminating null byte ('\0').

Hmmm, maybe I could do this.

DESCRIPTION
	strnul() calculates the position of the terminating null byte
	in the string pointed to by s.

>=20
> RETURN VALUE
>        The strlen() function returns the number of bytes in the string  p=
ointed
>        to by s.
>=20
> One says what it does, the other says what it returns.

Thanks!


Have a lovely night!
Alex

>=20
> /Simon



--=20
<https://www.alejandro-colomar.es>

--4dimvy3jhhsyknqa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmaGYMACgkQ64mZXMKQ
wqkfcw//Qh9ILMU2tWYf3LtFXfSAWQqzbvt55uQUVtmZ3HUy6YULgOb9Jy6zz9hQ
CSZq0NfFasAvsHBx2P8EzFiiw1p5WugnnjkKcfCsEcDf9AI5IMkTNQYGcJt5uWiX
+EDYCfIZu2u28BnnM0sM3lKjl4gjf3knqj47h9N8zmX0NXb5IoOlDUCjnJgLHZ9r
JeWDHQ2f2MERkKoGecqWXwK/mr6tJ5VHYtyN16ZRTsO0o7scKKt2PrOZ/2nTqclg
yp6fALlFI1JhCGcdbStkbXGPkH+C7t1PDj3NTd28ZuEb0UMtEUCr5K8EWJDuN1Ve
tSgO+sj0OMJotgbyKFHU8b2PILLxV7ss+kvvFS1DsJCkHu+DXlX15ovCGpQTKm79
RKQU2kjgJrxxJ0eS+CukC7lURijx6GZ3zpp8+pc306OQ/eLzE0uNtKY+YgOG2yq6
BNqZu0mKSwhWwhF/Y08f0lxgAOC+QVF5g+DjaTbm+jswo5N7qNWF9mxBuOB8BlY0
ihjYYUw1p9eexRbe5prLoLWyozIU/o3ytKRX//DJWPILlVadvZL+sdsN87nUuSv2
404QXMKLGbKAh3aJNsFQuWGk/qIywfO/VY8D7KR+9hY9zITlhsr3NnLNUysF7/ID
IEQIavSjbeQ65SvPsK0pjGxESLmbGdSvqw0JuB3sOV/k+5mny8M=
=TFrL
-----END PGP SIGNATURE-----

--4dimvy3jhhsyknqa--

