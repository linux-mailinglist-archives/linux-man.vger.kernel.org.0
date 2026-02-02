Return-Path: <linux-man+bounces-5018-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCjnBF2rgGkFAQMAu9opvQ
	(envelope-from <linux-man+bounces-5018-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 02 Feb 2026 14:49:17 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8407FCCEDA
	for <lists+linux-man@lfdr.de>; Mon, 02 Feb 2026 14:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49AE6303CC35
	for <lists+linux-man@lfdr.de>; Mon,  2 Feb 2026 13:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCE6C274B3A;
	Mon,  2 Feb 2026 13:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ED3kNYir"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809AE35EDC9
	for <linux-man@vger.kernel.org>; Mon,  2 Feb 2026 13:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770039799; cv=none; b=F6h2pg2Q2dQIMOdzoLrC8ptfn9Gw4sDYVVKlk19oaPqsxHDCOJHYbGFi6IsQyn3ooKo9Q2DaYMIcUxsiHpVYQUz0SVI06Li3vPdoXOJRdsQIzdHt0jTq8xb6GQeXoc4z6zdtqdinV6KsBiS1SRpsh9P3ZaYINUIVfDo+PaE6JDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770039799; c=relaxed/simple;
	bh=0kcyFaLkVEz0qqeAOzBIzB/o/dfrjjJAcyYUu/a6vwo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UOxNs3eySdjmXoK5fMV6H6miMY92EJ0TOFwj3ThcXLZkGyxmIDLcKOJm5+RTD7VLFGm5FolB7jb6QYFxzWimNDAieEfOWOgn7rn/yM1gz598AWnlp6QcF1i6KiariZmHdrXAp2x+XQL1ViSy7arD9m8puzCcOS6KsQUljathqGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ED3kNYir; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A7B7C116C6;
	Mon,  2 Feb 2026 13:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770039799;
	bh=0kcyFaLkVEz0qqeAOzBIzB/o/dfrjjJAcyYUu/a6vwo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ED3kNYirRucFjTiyJxWvzPsLfryqcnkNuQwn/URiYL0WoHxLlifKRtQJR69wxEMHI
	 DCUX+bYMozqbRACfFwdlT6YIPvfcoZsIwb7VbxHJg+KuNMm4DUr5cjNLMJ0sdTxOje
	 pTN5OxwN56cfRKJwZIzo30v1wmc8Cp3BJIV9tqfqWV7/nmO9BakBvrGkRxf2CvQ0cx
	 cr/T1h9LOQFskGpCC+urDdCJ9H1WWu3iOunIpXaa2MDoOwrqHqgHwAM82mCABqPypo
	 mbyxIJN2tuEHPdKoZPuyWkrluFDFkagF6fQ5Zq23IGmz6MG5CQjqtVAfAu/SywmzUK
	 vcbpJ/KHNqIGQ==
Date: Mon, 2 Feb 2026 14:43:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Thorsten Glaser <tglaser@b1-systems.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/syscall.2: fix numbering for notes
Message-ID: <aYCnGFboK-95B8AY@devuan>
References: <7b1b7c56-ad07-40b7-5387-08a4b60e3078@b1-systems.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ngrcdleloytosxbp"
Content-Disposition: inline
In-Reply-To: <7b1b7c56-ad07-40b7-5387-08a4b60e3078@b1-systems.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5018-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 8407FCCEDA
X-Rspamd-Action: no action


--ngrcdleloytosxbp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Thorsten Glaser <tglaser@b1-systems.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/syscall.2: fix numbering for notes
Message-ID: <aYCnGFboK-95B8AY@devuan>
References: <7b1b7c56-ad07-40b7-5387-08a4b60e3078@b1-systems.de>
MIME-Version: 1.0
In-Reply-To: <7b1b7c56-ad07-40b7-5387-08a4b60e3078@b1-systems.de>

Hi Thorsten,

On 2026-02-02T12:39:00+0100, Thorsten Glaser wrote:
> Hi,
>=20
> the table refers to numbered notes, but the notes just have
> bullets. The attached patch fixes that.

Thanks!  I've applied the patch, and amended the commit to change the
format.  It's pushed already.

See man-pages(7):

	   Lists
	     There are different kinds of lists:

	     Tagged paragraphs
		...
	     Ordered lists
		...
	     Positional lists
		    Elements are preceded by a number (index) in square
		    brackets [4], [5].  These  represent  fields  in  a
		    set.  The first index will be:

		    0      When it represents fields of a C data struc=E2=80=90
			   ture, to be consistent with arrays.
		    1      When  it  represents fields of a file, to be
			   consistent with tools like cut(1).

	     Alternatives list
		...
	     Bullet lists
		...
	     Numbered notes
		    Not  really  a list, but the syntax is identical to
		    "positional lists".

	     There should always be exactly 2 spaces between  the  list
	     symbol  and  the  elements.  This doesn=E2=80=99t apply to "tagged
	     paragraphs", which use the default indentation rules.

Have a lovely day!
Alex

>=20
> bye,
> //Thorsten (with $dayjob hat)

:-)

--=20
<https://www.alejandro-colomar.es>

--ngrcdleloytosxbp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmAqfMACgkQ64mZXMKQ
wql1yQ/8DDp6xVmrXm9/MfYm6O8ofX6SXDacnIqUNHtoKm5x5KECFXsWkjYj8p27
5wyp1XPf1Eabf0aOVd3zh5yCx1LYhyoiJVzNzUUcWzpWs+1Oaqe3c52im9aAihrF
y2TLQLiAgjK6N2VzzIyqvypm9WCuQFmCsLnU+nKXiEtXA9ULA4EZHOndu7rCaelB
JB7Is+qY1Hg8tSC5XWgfuvZB6O0HKCJhls5bt9NU4PwOO4KD/d1al07j/XTlm30e
lp4pdG8/YPot4psx+ohazi/JlcOH1A5YgKmv0wRZFsy9e/7cuwn5vxOMfJZsHplp
PE4Yg6mx0rTWc1hkVjdwU6suQBpv2CaksLaMUtEtKF7hJzsmUqfdBSDrutypC0Gg
e4DmwY+j2wMa3+iSe0GzbBfC7+y9dMgbL0Enkz5NtGHSfn/CYEEyzTOgfNORr4Nf
UkuaNC/UgXuPwcm5XK1pZnbPVqGwKFp8MDeCnczkp5k0puoSFz2guc6+9cLdzpvV
goite3Hy83iYcjMaXZfhfj/0LfJiWXV2Yh9wyMoTAk/r7x95nXXraxFCCkdu2n1T
X1MxOzvl/CsO8+gG7Z0G4YlNnk6wJFmM1wSLun5yFJfwQsq1IZZG0Nw5sxQXiVKx
kehDApCwD45ZmtOpwVo/TlHeM/UaiNz9mXA+PGSxYZgV2x9FXpw=
=Qnsx
-----END PGP SIGNATURE-----

--ngrcdleloytosxbp--

