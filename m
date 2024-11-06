Return-Path: <linux-man+bounces-1880-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7A69BE51F
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 12:02:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E0752834C6
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 11:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A861DE3A8;
	Wed,  6 Nov 2024 11:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1XmRwMR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC031DE2DC
	for <linux-man@vger.kernel.org>; Wed,  6 Nov 2024 11:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730890939; cv=none; b=tu0YDf4HTXLth4qo+Ag8n9tWwWn+B0Obv5n9KuUMKREXmiBQff5Yfl9mPmKy0m3LODQEAiTvCcXZM8kUpO3D9vluXP5e6Cxht2xfHOonNmmu/Y8ulZ5nz1eWBpTaTSK7dDXBEQHS2gZ0ZLlig+h+T0TAgPC9T8e9HjCU4JFqWso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730890939; c=relaxed/simple;
	bh=p+/0Whc7RLRJJip2Ax9fTvnZI+T5hi4yo148roasC5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eiFfRKFbV/RMv2JoUNC4s9pp0zfslxeukQEEC7OnOQdanNQyLPEB89xN5ajgg3jngiHXDkE1pBNH1XUjtqlOyDCY8zP3axcHGXgCJRdFoWPQk+FVwSYF4Vpjn7GexGmkTS4XXYC7c53oxdeCbqKwvv/0cdb6MnH0bC/gNrRZtss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1XmRwMR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5811C4CED3;
	Wed,  6 Nov 2024 11:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730890938;
	bh=p+/0Whc7RLRJJip2Ax9fTvnZI+T5hi4yo148roasC5Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k1XmRwMRoPWLII91ucnOAnBAMp9ULIEMAPXq7Ua4N9AIUfC3I2Ymj6GYcisHvBOP2
	 er3vCFplpJm6v+JTARSNQMiOdOMKd1vF7hq4mWfXNkyrBdaoy39hGl+orKOc27/rrh
	 o+DB49CXR+Fq8n+WOgWDI+gelU/8CJijQQj7KRUWmzUCc5MjOPKc9vZI9ZkATZD/Uc
	 3JDQpVKr4d1oQTwdm07Z37wMepPbS5I0DCZTQ4tHugVyQ7h6IyCceGdSUJxg3dIfBl
	 9QlnTvHP4IOAvO90qs/KMVrhcWFm3dS7IIka/3AWzkZXd7c6oaJL7dA/YGsyMwb6wH
	 iXgwkUwig1ePw==
Date: Wed, 6 Nov 2024 12:02:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Philipp Takacs <philipp@bureaucracy.de>
Cc: linux-man@vger.kernel.org
Subject: Re: bind EADDRNOTAVAIL at wrong postition
Message-ID: <fj7iukibghp5hszfobo4bpghwejfnxzydemlnkamk3346gtivp@xkyeiof2ynft>
References: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>
 <20241101124840.icu2zoyzbmfnzckd@devuan>
 <9010315d55e27a361142b67cd5816ba4.philipp@bureaucracy.de>
 <auseqaq5nrc3rndajqtapsticsomipqpihgasfcmlnp2sgkczu@amngtstagdta>
 <ef69c2c2493d24f97b0d4938c62603ec.philipp@bureaucracy.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y4dwlho4u7ktivw7"
Content-Disposition: inline
In-Reply-To: <ef69c2c2493d24f97b0d4938c62603ec.philipp@bureaucracy.de>


--y4dwlho4u7ktivw7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Philipp Takacs <philipp@bureaucracy.de>
Cc: linux-man@vger.kernel.org
Subject: Re: bind EADDRNOTAVAIL at wrong postition
References: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>
 <20241101124840.icu2zoyzbmfnzckd@devuan>
 <9010315d55e27a361142b67cd5816ba4.philipp@bureaucracy.de>
 <auseqaq5nrc3rndajqtapsticsomipqpihgasfcmlnp2sgkczu@amngtstagdta>
 <ef69c2c2493d24f97b0d4938c62603ec.philipp@bureaucracy.de>
MIME-Version: 1.0
In-Reply-To: <ef69c2c2493d24f97b0d4938c62603ec.philipp@bureaucracy.de>

Hi Philip,

On Wed, Nov 06, 2024 at 11:55:58AM GMT, Philipp Takacs wrote:
> > Hmmm, then it looks like a documentation bug.  Would you mind sending a
> > patch?
>=20
> Actualy I tried to avoid this, because I'm not a big fan of the
> git-send-email workflow.

Is the issue with sending patches as email, or specific to
git-send-email(1)?

> But a patch is on the mailinglist.

Thanks!

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--y4dwlho4u7ktivw7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcrTLcACgkQnowa+77/
2zJTFw/9H0P/W6mFE8wc5rRU+LMn7z4cdwIAr0MWS7m6P660VVevNvywGOGmuDG9
GGBngUS4LPPplucQPa18TQllyEz295phdLWg9dQdSWt3vCg7TzOGUv5Hui4XJh+s
r0PyCr6Wm3IU5bJL0pUEqGz7Lmp9QFVZ/jJvFJB9J/C0sPFiRZk1E5ZclKpUXiZO
/nnovWLjEyupunkYtzEaN3YJTK103CaSiRE4iWsZgDdF2c16QTgUPt1vuCalr+GD
6b943G6c/X7mzcJgjp8dtXJJ7y8qyWP6XdRq1KC4dJPpOtS/Nde5eUUOMpQ1/BaS
Ou271aUZsO+2MPObekvk1JmmKKLIdxvieM7T9WKJR8LQFF9HBimelUnAkEY/xE8F
cLbFrLtQ3PAOucR12/aeTdBSOxJdHESRR2K0ck8fql1x/r587c0nz5WcxNGLejxT
pEiC9sCrXyWPqmWgQf9xbLvfg9pNYIbToLMh7xfgUaGpPDlWYg3oVBHvtsn3cV2a
bXGuX68KDedqCOwxv8Ix1DjiTODJbSslsU5rHJNSkYiFZu77ZkZYVWqU4wMKLSFa
AtH6rVjr5WGLe09/aPhfXGON/+vMe+Z/brDUmtpUiBce0PnxyGTkQKM/QlWYjkj2
xPl9BWeNGcCvdP/J/SEaEDvCvBtkHauFywZJ2GxaDg6fXhx8t9k=
=P78r
-----END PGP SIGNATURE-----

--y4dwlho4u7ktivw7--

