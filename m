Return-Path: <linux-man+bounces-2383-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DBDA2FCDE
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 23:18:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54748165F48
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 22:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB258250C03;
	Mon, 10 Feb 2025 22:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tr6kXfro"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D132505BB
	for <linux-man@vger.kernel.org>; Mon, 10 Feb 2025 22:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739225868; cv=none; b=WplM61PISrU4SYo9gTzXxoqlRyWVgjBZDsMToeR0sYlZuWbzX//tLQtHGkG4zVnAwfWOwar16sntI7w0oyucdttDXI5SsvvMz6PtxpOlmxPfDwg+pbwg7MPyILh987whRFqGBFxLhW8iblSMG7w9H6jt97jI19zPv6za/8XChq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739225868; c=relaxed/simple;
	bh=QCz9nEmO8iNuUSMqlImlcMfIarRyqseWM3u6WSfa0r4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lvYXQki4qG+7zmFEgEz+Fc+bOUElUiLC5I8Qd6RLH5m1cNCo/yUwn3m2XD3rbpY+qe8N1vUmLxRVJViRTYOP5fjILiy19iWQVW4P0KtSE3af8qd1W8SLC/3dRTmGrk4Y6usU7CXd/jvXveECCIuPr52lcAd1TB5sbNe4KoXI/hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tr6kXfro; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A35FEC4CED1;
	Mon, 10 Feb 2025 22:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739225868;
	bh=QCz9nEmO8iNuUSMqlImlcMfIarRyqseWM3u6WSfa0r4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tr6kXfroA0NBHV/8NjHo+WeW5bzmh48Uqg1qIR2hwtJORC7Hurq3O5G45qubPSinx
	 hQXNrxWu5RlqiriPzvSWh6UJpexEATHAjvUehUyDQQuGTwuqMwYzQIEWqT75ljeWYC
	 mygEu1LpnqVJDh1fOlP/jZYqdHdB3vThb6OzPiJ+PMnGm/EcOdvQNW5GF4LWCnXdpJ
	 cQbrAqz2IMu992Dj1Ijl3lCW295YlyqXV42wpupwBoFyHE085sX+b4T8ARVe+yZv+Q
	 6Q2cbkesx1tJDTQCEsNRTm754gO6mz9Jb9u6fGTN9vJf45Vkp1QmMRnzaQOO/dbEwT
	 k6v+SoeIGB3iQ==
Date: Mon, 10 Feb 2025 23:18:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: _exit.2
Message-ID: <hcskguffgnwgcvkonmwyj46s5icp2vwge2j54x3hdzglxyuvu6@3z7k7zhqsqa5>
References: <CAJgzZooL9dCC+zXXZVpntRSPtPWbHR0vXYOMrVp-tJiE=JXaaw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qnqtohsnngozsydp"
Content-Disposition: inline
In-Reply-To: <CAJgzZooL9dCC+zXXZVpntRSPtPWbHR0vXYOMrVp-tJiE=JXaaw@mail.gmail.com>


--qnqtohsnngozsydp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: _exit.2
References: <CAJgzZooL9dCC+zXXZVpntRSPtPWbHR0vXYOMrVp-tJiE=JXaaw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZooL9dCC+zXXZVpntRSPtPWbHR0vXYOMrVp-tJiE=JXaaw@mail.gmail.com>

Hey Elliott!

On Mon, Feb 10, 2025 at 03:08:46PM -0500, enh wrote:
> currently _exit.2 has:
>=20
> STANDARDS         top
>        _exit()
>               POSIX.1-2008.
>=20
>        _Exit()
>               C11, POSIX.1-2008.
>=20
> HISTORY         top
>        POSIX.1-2001, SVr4, 4.3BSD.
>=20
>        _Exit() was introduced by C99.
>=20
> the C99 for _Exit() is correct (so the C11 is wrong), and _exit() was

In STANDARDS, I list the current version of standards that provide a
function.  Thus, I need to update most entries to say C23.  Give me some
time.  :)

In HISTORY, I document the first version of each standard that provided
a function (thus, C99 is appropriate there).

> in POSIX before 2008:
> https://pubs.opengroup.org/onlinepubs/7908799/xsh/_exit.html --- but
> then maybe i misunderstand the difference between STANDARDS and
> HISTORY because i don't really see why both exist here. is STANDARDS
> meant to be the _current_ standards? (in which case it's still wrong,
> and should be C23?)

Yep.  I should revise all the references to C11 to C23, and POSIX.1-2008
to POSIX.1-2024.  I'll need to sit down and check all functions in the
standards to see if anything changed for any of them, so it'll take some
time.  I welcome patches for that, if anyone had the time to check any
of them.  :-)


Have a lovely night!
Alex=20

--=20
<https://www.alejandro-colomar.es/>

--qnqtohsnngozsydp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeqeykACgkQnowa+77/
2zL7ZQ//bEMJfwE036fUs9Q8zLPIOHervaglxrQQoLhlK6ViBc0vz2pM8TysMJg2
1/ZxTBTXNx0R6kmt6rLtip6YGXmmkbbdNdCeaKjce4RK01igZMiU+8WERPzTToqF
g0f11vYozMuQEt3l/asROX3aawSDVd2QuZJkbovS757j6QWMBWRfV0aWqd2XZ1ZS
8USwtwTyvbiGr8T24J3o9zWNdp1FOdepwRbccm07DGNwox5QgEJFNiNL7KODdSKm
ebSUSZm2yg7wEUXAXfetWPUpopP5p6/98u2+X05yp1voMrkhTtM0iaTgCE+AVWlR
TdaVxWDdO1naSWEJQIrFWkqpTxDuEoY0YsIxrqzgXdopAndYi5/2HL7T795b6ER6
SxIlfpFkbQJGvAbwvxHzwVRifXgmyIiAdMg6hl/JeTDmN1+2nZc1hMSYzJ1LZbev
8K7bFU0vlhNYyEd0XHij+7l83Rg6jm9sDHOVoXcQAjGSiWNpMaCmMy5qp1j+QXhO
qdoIdaXvIRU+tubSfeAcXWvktfeBrGPXTroELvmYjtvmeA3WHYt4XEDgqVsz2jf2
tyBJRjXQWiN1mbI9x/pjedo7j8L9meA06ZGRGJoRogm2Pd2c4MgIm7U9PU+aZkin
Sf7/im4mFYDSaxPJ/T1YwHUiCsNdD9Sii1pS0+w9ReBCHikBc14=
=BaBj
-----END PGP SIGNATURE-----

--qnqtohsnngozsydp--

