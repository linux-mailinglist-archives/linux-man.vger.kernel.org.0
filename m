Return-Path: <linux-man+bounces-669-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ABF87F2EA
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 23:05:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6E9D1C21021
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 22:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E2C15A4DC;
	Mon, 18 Mar 2024 22:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUSD1OFt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7AB5A4D4
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 22:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710799513; cv=none; b=K2ISOVzVScRwjS5cPJGQOuJY/uul5r44cOnG4/BuO8qhgs36sTjbJB/XmTERMrUbc+jV+iZOnHvzskrYYL7P6VNZ86WWrdYQ5qM+3grlfYA0PqNb27uhXhJDyXvxCo7uGb7wLg46lx4utl9b3BRA7csBXeVRlrJ3E1PeToJX1N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710799513; c=relaxed/simple;
	bh=agyTmO/9mKjRWxq3SzpUVX94ZkRE8sFRwU/RRuRy4mc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aqVSJ4cvud7PGrnL1upwdjWnHy6VzWu6nmgi9ER0V2OPLo2zpastacPS2jWMqav/eQcCI63olOmpGQKf4DlSymVAciOsfJXk6d7dqtX7t0Ex4pyjh7CTPn9/inqpEjAk3n8e8tqwBmYMrDqWUyVLuPlvVYrY00oM0SsL2CtXo3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUSD1OFt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1C40C43390;
	Mon, 18 Mar 2024 22:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710799512;
	bh=agyTmO/9mKjRWxq3SzpUVX94ZkRE8sFRwU/RRuRy4mc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mUSD1OFtCmQmvY24rm9Qz31lj830thvVyUvKFiJCERtfCaPhgqUAtbVD8chLUuTMh
	 QYUstYNJuZrpSX1JZxAQQVylI5ETYEL9bZkrxJ0z6Q6H/OR3aR2HXxHetwFgpM1IiQ
	 5J9V/RNs4t9oACjRHATbzLpXoV/0Lauq3iZ0DpymR68eR9GAdLw/xxmw8Ko6e6MI3+
	 LGww1CY4IP7m+/YIc4UM6wTytpgFCiGqYkdGbMqMc9lRnHhKdTOMxsifCQD4ahHCxF
	 pCuKhIbZTxE4xK6MgEDr36ZkiV3UP5DVNkQMdq4bpfWDBis8XvZz/drT3SUVwO7joO
	 pSiu3b4W+c9bg==
Date: Mon, 18 Mar 2024 23:05:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Jeremy Baxter <jtbx@disroot.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/6] intro.1: Revise language
Message-ID: <Zfi6lSKPCBTiuxVg@debian>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <ZfcCl6dcTFX9Zy6p@debian>
 <CZX4Y18EKIWK.1YLSFJIPJG2YA@disroot.org>
 <20240318195657.bihsax5gk5jx5tyc@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="04q48abZNXQaVHBK"
Content-Disposition: inline
In-Reply-To: <20240318195657.bihsax5gk5jx5tyc@illithid>


--04q48abZNXQaVHBK
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 Mar 2024 23:05:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Jeremy Baxter <jtbx@disroot.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/6] intro.1: Revise language

Hi Jeremy, Branden,

On Mon, Mar 18, 2024 at 02:56:57PM -0500, G. Branden Robinson wrote:
> At 2024-03-19T08:50:21+1300, Jeremy Baxter wrote:
> > > cat will show
> > > but
> > > cp copies
> > > ?
> >=20
> > I think it sounds better to use the "x does this" form rather than the
> > "x will do this" form, similar to what they have in the utilities' own
> > man pages. What do you think? Should I change cat's description to
> > adhere to the rest or just keep all of them as they were?
>=20
> Two rules I've been applying to my man page revisions for a while are:
>=20
> * Favor active voice over passive.
> * Favor present tense over future.
>=20
> This is "favor", not "always use", but, other things being equal...

For intro(1), we could make an exception.  A less formal voice might
seem more friendly to newcomers.  Don't you think?

BTW Jeremy, you could send less changes.  I'm not very happy about such
huge changes suddenly.  How about fixing what you feel is most obvious
that should be fixed, say 20 lines or so, and in a month or so we can
discuss another patch set for this page?

Have a lovely day!
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--04q48abZNXQaVHBK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX4upUACgkQnowa+77/
2zIZdw/+JWEV2oKwUtAFQO9Ic4SQm2WWry0O9uXJX16iuqgLCUwg5cUTsxdeCy+N
1PS3clxdKyS0hsWX/p/FgmIWAs9KGoJUsZ6D7xw3ByWYUG0oBRWr9NKtYu6x47w3
hv86gcm4J/XaEQN+/32MmfhlNTx1d9L7wIfMOR6iQHAnDQcyHXMKfQvF1h0NQd9B
3cKx7vJASss2Z9Kh+gML7OEHqeDbtnQPxuMSII56DQraCitdUNeIIeH0BlnDYiyD
5QY5jdKC7gup+NYDQCGqWuee/3Cl5tAjTxTMWCEsCfITNlo1PwR9nrZr1gziduN3
5QwSFL9rAQ9RaGJsjayjxmzpFhpK2sEsDzegd/tzCtxaJcItJvOygyFEsyr2QMWY
vI1+bR3NYSH1tkggRzs1CQSTGOXieX7ZMFGlxsxp/GpY3NEYxpFh0ETT51eU5V40
9+h2UFiwz++U151I7VKFTUuADnjLBGSBR4F18wgIp0lD4VmJNnxHKZ3WDRKt3HMZ
1jZ5Sg18sTAHCwrg1rR2HAylPD4Grekahtfdf2/GJPS/ORcUPcQfKzBt+IAasKPI
PvQKXkjZamZ0yCj3cWUbp0zLbCyy2CGtQSQYfNeX9jEkca1NJC13k863zuSDcqZQ
RtkiANSQhvg0JujrkWHGuRyQBd37Lf3+BG/hiKUFK0Qq6jZYPvo=
=JYfn
-----END PGP SIGNATURE-----

--04q48abZNXQaVHBK--

