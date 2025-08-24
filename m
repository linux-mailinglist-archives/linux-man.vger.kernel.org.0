Return-Path: <linux-man+bounces-3702-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33175B3327D
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 22:04:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E8C417AD2B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 20:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ABC321576E;
	Sun, 24 Aug 2025 20:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7IyCs3k"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB18F1E5B69
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 20:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756065848; cv=none; b=MKXVCJnM1CJPwW0iO1KQyLKt7VB/sFscSkcHxE6CDCgT7Aq/2edDmKzu6dP6wgFzXusXU7Db0s4X9gkL8aY8AmsCcFJVQiW5rlDl6YLo5d9Yj9w2KFyHoAMGDl3qr2YAqPidy0JaZreeoNo1VATXCyTZ1ebXizhgEWq8bwrJeGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756065848; c=relaxed/simple;
	bh=yj3F90Cce8F9Xg2Fid4OBLesx67LSpKsD+V1xam3cDU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pdj/gkuw2Km0PpGpOr20+tVLb/lZubEhOQ1teG1jb2yJyfT7LO6TI/pji1ejmJONTX6qdyW19xjCx94HP9O9grGc0ufwbLuOtd9Dt73WyW0Osf3DES/h3HWUhSTtXSBHJl+LuVQ8xaMLlX3gzQmHov0ua3tdIKC/aP9SNhCYWGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7IyCs3k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDBE3C4CEEB;
	Sun, 24 Aug 2025 20:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756065848;
	bh=yj3F90Cce8F9Xg2Fid4OBLesx67LSpKsD+V1xam3cDU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W7IyCs3kDQ+9oheINDL7d3k5t6OfxL/bx5Xp05kC15FukFwlLBwpPnhdFFd0OtJ7o
	 ZRkF5sipuyxG+Edwl9FuhCTZe+gURVp57kvjqhwoLuBlnHxk087JFs35fRcqZ4OTd8
	 ApP1ScCs7N4VuBefExJuJRI47XwX+IRzSdLNLcS7t2wLywJVOXVqYiksLonpRQS6jF
	 VwkOjmkxqfFmGKG4QFRoYkh/XBuEkQhnSWC+bHmWNo5srexzrQ6IK7V1ua/JCb65jr
	 f/yOnXnZDCm5pTDQRolEnJcdk81aO7ZjlNun4mNCK8HZG3PKoL1po4+ZI+kSoFGWCN
	 1XxU4KbkF92vQ==
Date: Sun, 24 Aug 2025 22:04:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pathname.7
Message-ID: <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ocmu7tvnynqolqp4"
Content-Disposition: inline
In-Reply-To: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>


--ocmu7tvnynqolqp4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pathname.7
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    The URL is invalid
>=20
> "For maximum interoperability, programs and users should also limit the "
> "characters that they use for their own pathnames to characters in the PO=
SIX "
> "E<.UR https://pubs.opengroup.org/\\:onlinepubs/\\:9799919799/\\:basedefs=
/"
> "\\:V1_chap03.html#tag_03_265> Portable Filename Character Set E<.UE .>"

Hi Helge,

That URI has '\\:' in it, which is correct in roff(7) (and in man(7))
source code.  That is removed by troff(1) when formatting the page.
If you read the formatted page that's not there.

The effect of '\\:' is telling troff(1) that those are good points to
break the line if needed.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ocmu7tvnynqolqp4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmircDMACgkQ64mZXMKQ
wqlrvA//VA8Vp0eJhy06B4O37g41PowTB7Cud8ED7VhsplAP1Q4PeHWPSbA5n0/Z
hejbbinpfJFM+UYN3Pt7Eq8XNbLnur+D/AdWQVi/nDbf0YKWuOyqkg/l9pO/pwoW
bf6k112lgC4vBr8sziBfAkejSF2Xha2v2//R3WvD2k3v4+pmuEVcPqCqfRZGF8kS
kYP6xaYh9Th/VbpDapWh+kgzX90a8iI2f/WCbk90XvbsfudMSLA8FQqnaQFd586n
h8gNskCz0KwtG2aTY2Xx14IwKvy9StFIUNiuDkjpjJbx/j4UTd/WYEqYLdxVLmlz
y7VXjXiXu2F+M9+TVOlf10ynxFOO7q0xWcfAMmF1FcBUoNObDMkyIx1w8CiPTyWJ
oKWzoOLr5qVcPzyi+LGLTM7MuhjwCMQKhZBEzRonphuuRtVqwtQmClv3+gOzkF50
fhQ+Zoi+49FEpmzSI/qlvmdgKq1ANAUOeJBIazLX0TrdJKX6avaeotE/gv3ZPtPd
aPZaLNJOb6TqOJnxEIbwL/GGUSkDcV7gDAYGdKhpl2psUTlc7Kmc3kLSJpWeWJdO
Rb0H5hfoNrFWwlYfMnFAQpq3QWa77F0GG2Jx1B0kR+jWBFA0xFp9Ji3xcEphZaXp
5EOaPY2ayGOTFuHyxO3nXKJxDtD+dwxrQV0Q52GpHmeqw11t99Y=
=AKa/
-----END PGP SIGNATURE-----

--ocmu7tvnynqolqp4--

