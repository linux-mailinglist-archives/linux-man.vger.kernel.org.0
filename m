Return-Path: <linux-man+bounces-614-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 022ED87D74E
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 00:21:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 968131F2186A
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 23:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 369C25A10C;
	Fri, 15 Mar 2024 23:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfV+uMSP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DFF5A0E7
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 23:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710544880; cv=none; b=Cvr6Q8SKbnjkJPWAG9/nLHHKbvF07VNUcwl9b5r7uRFFDT+lisdj+W8kgsTaQFbcov4N1vhvWdXphOrtH7fkxrt2cK6hushxJ6ED/MS1CKA6+HnuRRpbvefdJANNK6/xX+cdXAJd2uA8hq5lt0ca36AYjx+nbcs8ESVeAJzt2Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710544880; c=relaxed/simple;
	bh=4pvNvPelaLtZsEmC41Ow3Ktbi2dHId6pSfASqOOQB2c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EJRq92eQQ7BY7n9gG5GrdHfLN13fMtzuLyHbvNoJZUJlhXb6LXIy49zNM6dPorptuPTSBLRqHEngW2zszAofb45BQTdGkiTnJfFAsXMBiXlR+PgOSVNetSIM5qUxtBAFjjzNGSjyfx+kLpa3+tMWHxs6Afj76i6aIxLVBpykcHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfV+uMSP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F2FBC433F1;
	Fri, 15 Mar 2024 23:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710544879;
	bh=4pvNvPelaLtZsEmC41Ow3Ktbi2dHId6pSfASqOOQB2c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YfV+uMSP6ZCNV8gM+zWkEsJni91+/chSgbedwt/UupHiX6bpWw/2r7r9boDoxW3na
	 X/4pA5gQQNPD1jy5lm3jbVlk4jgiqesZsdUYoEJ8C+44PYFzxRl9wk+dRboJJsyaaN
	 fpva/QKNl3lMvo8sRN66dDNPecMAf3w+LnDX1z7jyXHmxrvWncf8Y4BfN0KDTG05wE
	 Xr+R3YeKN4NGpQspLdjAHTDw8z0gUfMc3hG/PbkUjGxSxZZZWfHexyCNS0Bio2ydn0
	 78JhNJBVppiN//lxRIZecroA38PVhR15hhaQZYcWkr95IJR0HJFPFxuDCU8NLNyQ9e
	 y3qa2r9/Ngl3g==
Date: Sat, 16 Mar 2024 00:21:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Gregory Price <gregory.price@memverge.com>,
	"Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Message-ID: <ZfTX7F7KCglrYHZj@debian>
References: <20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com>
 <ZfSf3f7baqC1N_ha@debian>
 <ZfSgDOLBqw1Kyz8X@debian>
 <037EAE09-FE93-4A93-A988-BE1FEA5EBF1E@memverge.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wLqmRBODDpZn496m"
Content-Disposition: inline
In-Reply-To: <037EAE09-FE93-4A93-A988-BE1FEA5EBF1E@memverge.com>


--wLqmRBODDpZn496m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Mar 2024 00:21:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Gregory Price <gregory.price@memverge.com>,
	"Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation

Hey Svetly,

On Fri, Mar 15, 2024 at 11:00:58PM +0000, Svetly Todorov wrote:
> >> Path names should go in italics.  See groff_man(7):
> >=20
> > Oops, that's groff_man_style(7), actually.
>=20
> My bad! I should have sought out the style guide. Will fix in v3.

Heh, that's a long page to read.  I wouldn't blame anyone for not
reading it.  :)

Have a lovely night!
Alex

>=20
> Svetly

--=20
<https://www.alejandro-colomar.es/>

--wLqmRBODDpZn496m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX01+wACgkQnowa+77/
2zLPLg//RrvX2HleEG+RRn6FpLEU2yJGUTIoZlQnAakyYy7sd/9ksQ3l69mk9+tu
/k7zCOyWZJzkUdEgPS5a9ZO/TQdLxWXbI2QGZH0GNBuEaOPqj3r65vuPGCKl6a84
uWxG9fYGbcuzOmsVaGCb21vuKm5d94GxgFFvSKlAz1CI+whovWbV68UD7rMwhp8F
nmYBCpyYaQ9K9k8E4B/LJjcNlBaXH7iqp2X3sFnC3VYWp4T/rWZjFgB85VRpihgA
9EzDYiAyZctfZPuug2qz1Ih1GF7hTymaBNhxtD/YuI3T6mJCayjvidZMtGrSkjA8
g1NHJpR9ARBrNMj2OS1PZT+egXeYwZOWPg5C4EjqD3zsn2uUj+K9qSbqkJvihInY
ynJ7F9erY6y4WJRjhZmQ6RptozISST81tuqVEax1kdYwOBowbdPV8U1p1S4uVTPW
ufCyoZKEjjqbEJmNTfMN3AYVmiNepxI1sx07C7MmFy7NDRVEHo18gVvSXkHuaOuG
4i+biutAxEx+Gng0FVSGCaxAS95ea3bGZP87ZzzdDY2p8lJNkP4k2NhvPPfvpXXd
IIvwK5d61JTrUaBio4YIykZqniNEED58MVkks4o4Q3a418TE40auquNlZ22mxP2a
pw6PG2KV83RoH6/3Fxeq454Dxc22GSgvknjcSgqZ3FLyiYwMPPo=
=0A5b
-----END PGP SIGNATURE-----

--wLqmRBODDpZn496m--

