Return-Path: <linux-man+bounces-5335-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +M8hKtUA4GlKbgAAu9opvQ
	(envelope-from <linux-man+bounces-5335-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 23:19:17 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EF44081FC
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 23:19:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A5085305F833
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 21:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78CFF3191BD;
	Wed, 15 Apr 2026 21:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ikfpj6Yb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C28419D8BC
	for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 21:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776287948; cv=none; b=EASgAVX0+aKSnN9qpMPs/JH9T/ZwCvKyonyKPrXIaULumTlzw02WvJmtJCsQKGBac4Q6zv/6s5M9/onj6WJMyYNbY1PTdN2Lu4ayrTz00Fv2t4YMcqC/22/aeewvUnSN/1jDAWFy6vkT03otosCfmWYl4HonbfwJ/BtwmgSIkrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776287948; c=relaxed/simple;
	bh=nPPWEBvvYNibO4vuu13yJ5QtRWtvTnFTt+S5/vIGk5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EQccVNfRGD3TpEITqT5UWPV3iGL3WtQGwm8rIzyPK5cYer+Kum51aEDeUMT14M092FNnzzEmgFjzHzThmjXgSMYi/NyYKNAKAsjN5rgTKZgjRciX8c4NqWccnv9mKMWHshs430cuogLIDxhNJxBwmT1zaHit14hCMWwBgNfBa+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ikfpj6Yb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 761E5C19424;
	Wed, 15 Apr 2026 21:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776287948;
	bh=nPPWEBvvYNibO4vuu13yJ5QtRWtvTnFTt+S5/vIGk5s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ikfpj6Ybzcu2k9a9ZA0ImCsnyFDSh8UaHaK9XjFpGgfBa8us/dyQXUwWILv3RvcwZ
	 BdWTFcn7eUs035IF6LLj0c/NyBMYaBC1lUK6Nn/UBAlG5nEdhBOg/tOYudQJiGkXND
	 BbHwlFZbV18bQDLVYA7e7Al5T9PoWBy55CI4/mRJECm/bbV/K96ABjp7poYTPNr6Xn
	 6PKhKx4YXf858BRFTSmVxl5G+SWdvRHGrg9XHFW4CEtoqiod+gKlT5sHPQEF/arPaA
	 vE+dNEAXIjLaOf9qxuVU2F9yhmQ63C4tcX7RONGcXNl9LzBfAPRKH4aX/tHB9foHTQ
	 pX3bYJydhN1+Q==
Date: Wed, 15 Apr 2026 23:19:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Cc: linux-man@vger.kernel.org
Subject: Re: TCP_DEFER_ACCEPT documentation should be more precise about
 rounding to retransmits
Message-ID: <aeAAXdBe1f2THR2N@devuan>
References: <ad50CQgF_gNtB1Kr@localhost>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cbzqkzfmh775eaiw"
Content-Disposition: inline
In-Reply-To: <ad50CQgF_gNtB1Kr@localhost>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5335-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 53EF44081FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--cbzqkzfmh775eaiw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Cc: linux-man@vger.kernel.org
Subject: Re: TCP_DEFER_ACCEPT documentation should be more precise about
 rounding to retransmits
Message-ID: <aeAAXdBe1f2THR2N@devuan>
References: <ad50CQgF_gNtB1Kr@localhost>
MIME-Version: 1.0
In-Reply-To: <ad50CQgF_gNtB1Kr@localhost>

Hi Josh,

On 2026-04-14T10:06:17-0700, Josh Triplett wrote:
> `tcp(7)` says:
> > Takes an integer value (seconds), this can bound the maximum number of =
attempts TCP will make to complete the connection.
>=20
> However, it doesn't say *how* it bounds the attempts. From the kernel
> code, it appears to round up to the first retransmit time that's larger
> than the specified bound. Could the manpage please document this?

Would you mind sending a patch?  (And if appropriate, CC someone.)


Have a lovely night!
Alex

>=20
> (Discovered when adding Rust bindings to this, and trying to figure out
> and document the rounding behavior.)
>=20
> - Josh Triplett
>=20

--=20
<https://www.alejandro-colomar.es>

--cbzqkzfmh775eaiw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmngAMAACgkQ64mZXMKQ
wqlzMRAAgbryMhaOpeJjsMIRibTV5s/ZOkvCXfhVEIkS8TlF8+AbkanVEOmit6b7
1dkgoz5iGHXWOKMlENQpYnR8NgtSp+4w2J1/D2cwHz5YkApAVr0df5VYkz6vjiWv
pqFH2+JIftXHTx/fKelBFlUOmN7XqgPkqWtf5JwcHHm2sQMI52Q+lk8cudRVPzjx
O29avWaaejJ33GgeNcBOCryl9ErnquWngJYWJvOwqEfPpohVMp/TDDBBA0850VlD
KjP22fpwZXwsyPCMlL8HEH01QecyUQAP33FQ/zaqK4M0B4bsFNNZoIlxb/CHNeNu
lbrbcTzsVGXasYi2cFXNBoU64Oii8K+6qp5SPrSWZNUD4vMupSTZqzkS7CLEv/mP
VZ1RXt45bUldOwZXXDDih/KYHu7J2pcdDlVvvam9jmYPm9N94z8ZWPMuY3ZLoPjo
RWfCERvjlX0148tDLAGRs0rO3njDwWLGXfgey//5KV7JL6LlTas3PFaeCSGnuhKy
gE2MTr9xy38PeutZ3foc35AsTT/1LdAOLeSTr0AIpvdm/abexHnruE0OZvHNliga
Lw9Xdirs1wBGLMABsyARe5jaCr1rZ534NEyL+SNUEArpabjlrHRP3n9jgxr5zjHO
9DuFWLeC6Mp1wTZ5+7X+ClrX5XO/igacx/C3pPU9ieA8Pgo7ZrQ=
=Z2lC
-----END PGP SIGNATURE-----

--cbzqkzfmh775eaiw--

