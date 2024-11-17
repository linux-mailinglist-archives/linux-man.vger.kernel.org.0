Return-Path: <linux-man+bounces-1975-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 805649D0343
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:26:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D1D61F2309D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8136B14900E;
	Sun, 17 Nov 2024 11:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQGNwRlF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE2A33E7
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731842781; cv=none; b=uyGo7koznG4zX/yOVPHz8OpxexTkDYKJs99et+p6CX7umVFBoElFakHJaidhHFt8rFn1U1SFjriei9CPWCM67NBQ99wzbMvDPpXz1ke55EUEnIZwYJmRF7VM6Bbw/vvZyo+thYq6IKBNORozkFIkOmqGrFjSxDfwq6KJVDxlhhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731842781; c=relaxed/simple;
	bh=zX8YYZ65T+6ukpiLEppMegiAUjDMX0AhFLA7FxSN8ig=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eNoOaawPPEUvvyUrWo4Vpafe1Up/KJyCIdvPiYJMZXSP8CQjzs7dRlzI68iXlI1wJC1o94T3S5PmWb4IP0LfgAFWCWv46MmFybUI0zIipiG0q77FGQSrdtH0pIazFTZ5vzHB8PdK2ErNyctB8MoQRb93+lQN1yitzga5Qx67ZBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQGNwRlF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF910C4CECD;
	Sun, 17 Nov 2024 11:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731842779;
	bh=zX8YYZ65T+6ukpiLEppMegiAUjDMX0AhFLA7FxSN8ig=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aQGNwRlFPwqlG6d20465pPvk+IHgO/5y92qhPMrnW8uxzbdjGV/vW58YdOqVkR6Wg
	 2nq5RRv8V3dt67ayyZSgXs/ZC8qOtq7XdMSg577iHCdI/WXHGTWBmckM1Ss8u/JRls
	 WOPsT+a3prjkLQH9tBt86wK3L4ibv+ADmpBuroX70vRiD8OXgEZ5i0uYZU2TSXQXyN
	 jQaRO+uITGNUYpGeLENjq2aQcIJtDEGRbnW9eGQ2H4PWW7z/1taP5t7TSZ9ETYXrF6
	 ptSlKd/XyxjIZTVwJhEQnssBG9Iatqkxc+aVc97ZgXiP8uosHsTu3cxsYjaUtQ6qXd
	 QCdUBz6qZBmYQ==
Date: Sun, 17 Nov 2024 12:26:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
Message-ID: <6teowwb5747ra73s6kt4egc44obtwtmuilcrmxuf4n5p2ruusv@uuuf5gsdf3cw>
References: <ZznJfpN_LuCf-ERy@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uv7oyyl2qbn3hitx"
Content-Disposition: inline
In-Reply-To: <ZznJfpN_LuCf-ERy@meinfjell.helgefjelltest.de>


--uv7oyyl2qbn3hitx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
References: <ZznJfpN_LuCf-ERy@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfpN_LuCf-ERy@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    inherit-scheduler =E2=86=92 inherit scheduler
>=20
> "In order for the policy setting made by B<pthread_attr_setschedpolicy>()=
  to "
> "have effect when calling B<pthread_create>(3), the caller must use "
> "B<pthread_attr_setinheritsched>(3)  to set the inherit-scheduler attribu=
te "
> "of the attributes object I<attr> to B<PTHREAD_EXPLICIT_SCHED>."

I think that text is ok.  Can you please clarify why you think the -
should be replaced by a space?

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--uv7oyyl2qbn3hitx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc50tgACgkQnowa+77/
2zL11g/+LVYJCZThMAYbJdb5X5DdymxAPqIuJalEt0KEtylZg3whIIgxSriiIABb
3UzjKrH/ABt3MKMvAP+ZVs6ZFsbvXNT1EtP4COGS1ya6+8ta96+4cXVq0R+mBO+1
UkSgWKnqPrEoxmR8slUR0XOv47xfpTb/1TCe+9v3xwEJrr0iHLtGA3SyA9EwuFvD
Op2v5WdK4gsg82BdcJOc7fuVjygA02b55GnWeO2j3HnpBRBWs2U/A++2pHtrq5mx
BuitJ+6ci8Xkp9t63GedQDL2CEFsbRUKehhrONEIWD5hSzB/0LqbgUkMj/8ojJve
eWF2dEXJ/WTyAWkq5Ov8/EPHoC07qEpIEInxrGWY4jkTxSilHE7+B/0IT4SXjte/
2liCbwQ0Bxx7uZ8BSPmMJtMpDCEEIyXcMfGgkK5VJwN+ASo0pqRl2/AkYLg4NUJl
XCjaXMLgeVKJszmTrQUn7XVC+SODpke/tAlnuZ99XvK1ctD9fl6Fib1DRsRc9MO+
OIVTbvYtktR+8q29JOjDXBgFmbzOVUbl+vYGmry/L26ZD22fjeRkZvIs6zMGgHYN
jLXlzhJQ14cijDsLbPGgU8KMigSBixdZ1N6EB6clNQuzaNOK0BOXTPCKZ4WzyMZ7
Q21b+hVX01Gz5MdQ3vBFwcAaHQmBhrKTlk+A9OC5FD+o0nZzi1A=
=zqmr
-----END PGP SIGNATURE-----

--uv7oyyl2qbn3hitx--

