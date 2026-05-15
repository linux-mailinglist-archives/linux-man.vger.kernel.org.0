Return-Path: <linux-man+bounces-5519-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFNzHEalB2rP/QIAu9opvQ
	(envelope-from <linux-man+bounces-5519-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 00:59:18 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC20B559285
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 00:59:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A6FC305E37A
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 22:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DDDF39A076;
	Fri, 15 May 2026 22:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpDMLZR+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53DB35E1DF
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 22:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778885510; cv=none; b=PJ5tZw8UgkdaA4xvqJpc7U765Q3Yo07z5FaCmNTJwa9MDL5T1okRdM2jIe38khdftosSRzWp9CRQsNQL9zFk3NVwYUy/qG7u93debH570WtnpGLqT/1LZWl7/SI3Gt9HUHQLknblsniw09DW0OxfjU8XZ4pwG8Li2VJw2J8nB/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778885510; c=relaxed/simple;
	bh=kzXYPmtKeyjTuQ4cczOmcZR5dgmJIIqzu8i/w5061Oo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I9V6XpadP5r5UzcK8AzA6MS8AdS+ZWEQF1dnHsm3hoOkipYk/SndTwV2bJMdaWTJHuPOaaNd+PYJgKrAcY0MOQtOI39yeqGN4T4EODvNr8kVPE59HXo5yOusLW3mMcoib83ubX+RRun/Xj6Ll4HqyRfmFqZLElOXtkkhrW/MQvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpDMLZR+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6718DC2BCB0;
	Fri, 15 May 2026 22:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778885510;
	bh=kzXYPmtKeyjTuQ4cczOmcZR5dgmJIIqzu8i/w5061Oo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NpDMLZR+mXENeWtD0lkr+OszFqDRP5dJIPf/pvZfch6//amkYpdtJeNWc3n97t0L3
	 ovsq1Y5iiPWRZ9QPxiRmke3wdXiie6ytyiFfd5OnuwPGPj1C+5fASll+sEFHpHNU0K
	 poROljDoDKmkQIBdB36uGpSQq58y9m9Se2ruknnTwGSWr13dg4A9bUkgdUJF/DrK3b
	 5aZigDWhgmLC7t2qDx1FKuNTjJe/rZiANhimDFyYGYwp7vUlbQWsxE7SX44zc462s2
	 2oYqJ5fj9OluBCPu/q44PczkdyFmky9BuM5rKaUJv8L7xPVi2d/PsvWIwSvN5eM5nl
	 9389w6lAQxYbA==
Date: Sat, 16 May 2026 00:51:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org, Martin Uecker <uecker@tugraz.at>, 
	Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH v1] man/man3/dlopen.3: EXAMPLES: Simplify use of dlsym(3)
Message-ID: <agejUfKwaYYzU3RR@devuan>
References: <b2eb99d1f9a5681a4e8bca3126f3743fed900243.camel@tugraz.at>
 <508bb4972e4846eab32f11e924aec8e1c9132515.1778859636.git.alx@kernel.org>
 <3628881.qSoW2BAyJ8@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="klpgcjcmo6ar3n6a"
Content-Disposition: inline
In-Reply-To: <3628881.qSoW2BAyJ8@nimes>
X-Rspamd-Queue-Id: CC20B559285
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5519-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Action: no action


--klpgcjcmo6ar3n6a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org, Martin Uecker <uecker@tugraz.at>, 
	Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH v1] man/man3/dlopen.3: EXAMPLES: Simplify use of dlsym(3)
Message-ID: <agejUfKwaYYzU3RR@devuan>
References: <b2eb99d1f9a5681a4e8bca3126f3743fed900243.camel@tugraz.at>
 <508bb4972e4846eab32f11e924aec8e1c9132515.1778859636.git.alx@kernel.org>
 <3628881.qSoW2BAyJ8@nimes>
MIME-Version: 1.0
In-Reply-To: <3628881.qSoW2BAyJ8@nimes>

Hi Bruno,

On 2026-05-15T18:19:44+0200, Bruno Haible wrote:
> The patch looks good to me. Thanks for removing the misleading comment!

You're welcome!  Thanks for the report!  I've taken your reply as an
Acked-by tag in the patch.


Have a lovely night!
Alex

> Bruno
>=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--klpgcjcmo6ar3n6a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoHo4IACgkQ64mZXMKQ
wqkQKQ//Xcux2FoF9df0flTjTDm8HO42mgnRrbWO+MrvoyEb/9raiu1wQhlz7ord
VMMX1wzYRZTCtPl7KNAfs+nfgGm8N73gFaymOdND3Y2qBXtXMeV4LWH+iV8x+EqT
vkq+T8dQXxWGvmGTfVvCpx4S4vRR+B9SwGsWnfsg+PLKRFv3Ssj2b/9Vz7Egv5qV
4daozFzUY/z3UH/bmzFR40UJpBSH0dctopz5Cnc8/zrHn6Zt9B4mtbEbA3+Q++/S
kkXgP23IiV7vTro/G9aYCa/LhPL2tOIVqpCkOFUFGGKqUX12pmru7yhY2bLk3bCY
KPcjsVBXYVxXodmZNjghNGzwhlq9uTZTI8MhzZYld27HtWXi7L63VOM0bFqS2adc
QaVlBQOenKTCzt4Th9KbXYb3DYKId0PBcwhgTcvu/CNnBlnXTIKxDW7Nm2JQlLV3
GeiyoTab2fevRyTrIDir6xWCNFvaKl2ONl23CHM2bTDFnHnwRZfQmCTlG3qwudPN
6ZBrgmTtvcdjSwGqeLCQRBuJcWT5PA6lj64Yq4v7acoc1s0cbNsSQRwSZHW83tCm
xqIrJeNtFIfECQ5oUBzxXcwd75uFPKYuiVO71t7O2zoWHblzcjTZG66tHpnGb1Lk
PnPEIc4kU6XAGh2ZXGFW2lU15gmoPDU71kLopyYQta22tF5Em2c=
=mk3m
-----END PGP SIGNATURE-----

--klpgcjcmo6ar3n6a--

