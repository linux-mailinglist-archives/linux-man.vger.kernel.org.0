Return-Path: <linux-man+bounces-524-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB047870FFA
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 23:17:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62EE4B28054
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 22:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 212E07B3FA;
	Mon,  4 Mar 2024 22:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uENBhgYJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D661D7A70D
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 22:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709590618; cv=none; b=c82mR/umCfeauGPT5s50riOxITKcAhA+b3e7mXUGE93u41flxZ3YDadjFl63OvYrTJaI6vuY32ZzJn/DzS1X+arsORq0caUTWskwQlIuP8gnnJ9FL5pH2LE3Cd/4XUVOz0CKlcFXwBWY8CUsaMtr1FZcVYq+412buiGi2/eIHAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709590618; c=relaxed/simple;
	bh=AWsu/pppOL+W2Tac6yP/gftwve4TmvXVGTu6ZO+39Kw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qli+FmRIZtrL/EN91CIbR7BItfJvM1DE8aKyesrhenVuUdepQaxTflRpIbMrr4XpeibUCb6Cop9HaDXYWkALIBo6GB/fRqxs3zaWCU9dyaMB/qsJbCnY/s3Tpz9yWNT/VHsUIgXFiR86T/lVnLWIwgS4Q4eN7UgXR7YTQZKEA5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uENBhgYJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76D78C433F1;
	Mon,  4 Mar 2024 22:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709590618;
	bh=AWsu/pppOL+W2Tac6yP/gftwve4TmvXVGTu6ZO+39Kw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uENBhgYJBOaTTVG2DojYeyH4JqAMB7GsPdW8NwKQOLvRpvCfps7R253U9N+5AXL8W
	 0BTe0JsELLykn6ZY1MXNwJcEbp7G10vpd2nud7HjSOnZkhXwEcYZM8+SR4Hq9m0po2
	 vaGaPZ1nD71reDTvBRJ1fMdVc80NVDuj9Bn5JxAAaZRy+0zsh8LnoN+PcNQ3D9+52S
	 JHgRLFomqv9Xm7JohURspE30G+0WEWLQ0nZ5b3l+CSGb0fPW81rvfEE//dGlotluim
	 ur1tnSWOfQ/9xHNSqZoAiNeX/vVlyMDvuOAyA+/jO9PAEqpr7PRPRb/UsSrgNYwREo
	 sjidqlBshfFmg==
Date: Mon, 4 Mar 2024 23:16:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org,
	libc-help@sourceware.org
Subject: Re: logb() vs floor(log2())
Message-ID: <ZeZIVzJ_Wl42SnF2@debian>
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeYKUOKYS7G90SaV@debian>
 <bddcd00f-7adf-4558-9733-6a71906b46ed@linaro.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="F90RKteSigh9LTxp"
Content-Disposition: inline
In-Reply-To: <bddcd00f-7adf-4558-9733-6a71906b46ed@linaro.org>


--F90RKteSigh9LTxp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 4 Mar 2024 23:16:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org,
	libc-help@sourceware.org
Subject: Re: logb() vs floor(log2())

Hi Adhemerval,

On Mon, Mar 04, 2024 at 03:47:26PM -0300, Adhemerval Zanella Netto wrote:
> It does seems to be an error on manual, could you send a patch to fix it?

Sure!

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--F90RKteSigh9LTxp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXmSFYACgkQnowa+77/
2zK42BAAqRc3+fO1J8EW23pDWvnCiTohpG2FZk9Py4WHbdyRbAW5Vtkrzxx+4w1C
4oPdYOViqDetu+HFi6WY0giDs3T/CBe8JdsNeGqBMJzKgnYHGnoOYW7CLSN8Gayu
Wn9xPsVcwcVnw0K/XkDCnhF3A36eiD5kgwfdCiu6N6lLw0SojqTDod5JrEfIQOKM
Ms5UzPsXNeDfwMhnjjQmbpjNQWPqM/KYmdLP/jSkpPMzlT+bCgLXB7OCEx1HgJIi
E65ACtRzIYaZyKv1n7LCG3HQMqOH+x5VkzNpXn0gXyUlCcuvk4jU6XoaiSQVuzP5
+2h86LsHrCUKVwySZ0NmMfpU8tVlVBhcProj5C4XK+9N62AspdusMDrtsPnAFtKd
O94Gx2rqz2u1BfCcUNsR5Su1Pl5bZa25iv745+VkgdKfwzhNq+mvBvw6ouUhpwSY
HgFS1/o0OwfuOdQItLsQtNie2/wfYt+3OdDtbSmCjri1nngHTznEukRZff9FVqzS
XRXwNisma2jSvGEAA2BowRj4/9JruSZTbuUB5ELbWKGzcRefDiS86c//1tAPWjK3
HWoGvMaVFgIaolDgjD1Fv27SZv9T92Hu+gmxUF+XQ7PGCNZagVXgu9EbJwEjSog8
xytaRTnenHWOP8KSDxqfr1f8Ug5GLYvrHQ9jkyJGBCDlDaQ4PG0=
=6nTE
-----END PGP SIGNATURE-----

--F90RKteSigh9LTxp--

