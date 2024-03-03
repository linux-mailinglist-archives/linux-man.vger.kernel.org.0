Return-Path: <linux-man+bounces-498-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F09586F35A
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 03:21:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 569F91F21C5F
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 02:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19E264436;
	Sun,  3 Mar 2024 02:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0mgQ8iO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D492CA5
	for <linux-man@vger.kernel.org>; Sun,  3 Mar 2024 02:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709432496; cv=none; b=rcBuVmtIqb8balmld/EU39QekRj8I6gm54mjOFuZq6P7aZesaIh5uhKcHqvd14AlvkeNu9nYyjnebAbL2wWr+uDZ4pddFX4f072ya/p8sd91dvV9EPb8yaZQPUzMZfrLb/adv3FoxsSIYy0prueqFyqDdsT3Mclu5s1QgrN3Z4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709432496; c=relaxed/simple;
	bh=bWPImmp8XtdjQep7YT9tvAfApIbryWTVR+L3FEy7s5E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XzS5eLMfBMmi/m+kcfc/APtbSSHucnY8oKQDkEAioctcY4rOqMnpuMvkAHlIeCJe55jYJQjWUtAjv5wWtiv0CJRJ7A0tDYcBRJ2gBByxALYi+guvbQc2xQwRx8mBOKhp+K4uu6Cb30mI3JtLiP7wkY/N5UUsw/mv+8ZjQoKlFGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0mgQ8iO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5192DC433F1;
	Sun,  3 Mar 2024 02:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709432496;
	bh=bWPImmp8XtdjQep7YT9tvAfApIbryWTVR+L3FEy7s5E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W0mgQ8iOHxdopQBAoUJzKsHzRIY4M0d8jh8ImofuzhfQkE4/XrSdxWdaUKY+Kukly
	 dHa8znLP3XY/PbVuAjo6qawY1xkEkwnNJUM5CIWEctuo4hHPUaP+TjCva08OgzWYNw
	 HJMFESmH4V87qjebhfQ2MVd3NkBXURN2QMOOtBUezOlLs7kJNZvjuxsOovW5bXgzpQ
	 V7pD/ZTBPRJ+ZSYxcQqpQyR4dGVKLTFb0l1gWsu0puuiJQLkUjVLxJ8DC1PU2hhH3b
	 EL6BVJyVhIIN3qhc//qn6X+FrK8GP2t2EzI+WHxAdv1mN6vsxWlu40C2JaQgcIYCP1
	 WvP28koRR5urg==
Date: Sun, 3 Mar 2024 03:21:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	jsm-csl@polyomino.org.uk, newbie-02@gmx.de
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
Message-ID: <ZePerBa3QAvoFVSR@debian>
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeEnJB96mMC5bfBz@debian>
 <CANv4PNmMpiwfv5acr7U6VEVe7PE_AMTzkkpNoNN9jrtVzk_93Q@mail.gmail.com>
 <ZeOgFPCtzqY90kIR@debian>
 <CANv4PNm0xvB-GVb+z1yXPRVfeZYHU9533+VRTQfysjaycSbHBw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7O74X+Gn4hHtvz9J"
Content-Disposition: inline
In-Reply-To: <CANv4PNm0xvB-GVb+z1yXPRVfeZYHU9533+VRTQfysjaycSbHBw@mail.gmail.com>


--7O74X+Gn4hHtvz9J
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Mar 2024 03:21:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
	jsm-csl@polyomino.org.uk, newbie-02@gmx.de
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10

Hi Morten,

On Sat, Mar 02, 2024 at 09:02:24PM -0500, Morten Welinder wrote:
> Thanks.
>=20
> There is (was?) already crlibm out there.
> https://core-math.gitlabpages.inria.fr/  No particular need for wheel
> reinvention here.

crlibm doesn't seem to exist anymore.  Maybe just add some headers to
core-math, and package it as a standalone library.

> FWIW, it appears that the author of the glibc exp10 implementation
> agrees with me that the implementation is sub-standard:
>=20
> https://codebrowser.dev/glibc/glibc/math/e_exp10.c.html
>=20
> /* This is a very stupid and inprecise implementation. It'll get
> replaced sometime (soon?). */
> return __ieee754_exp (M_LN10 * arg);

Hmmm.  Still, it's simple.  If pow(10, x) is strictly better, maybe one
can prove it and send a patch.  Or for something better, it'll take more
work.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--7O74X+Gn4hHtvz9J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXj3qYACgkQnowa+77/
2zKGVw//QIao2u4NzjNmx4n5FvDsQ1TJAWW5Vnmy5S5HT1pS4ypJho6nSMeoxUUG
2f6QMeWYbgdR36syi96VI8a3r6F2+FliE62c5LXyhrFD+/8n7TWyMfP3HuAsT2oD
J7yiT6hpifXUk7F1adZsmQPzFMUuapxlX8Tc4JhepA8dl9UQLOYADxMxTSVUaF9W
qcJRDlyNCcMBTcMQvm1nIzV+snnotjnZzmXe91icbTujLS6t1CTuoahnL+HfbIAJ
mi9QQ+Hpfa4QPpsiIRqDTRZtCkhG5EhFvKT8ovn5vnURceqIRifUuHlMEL49w2mP
SCI6/49lVH+Q8dwLWYBfcdxUROjcGit+yoBsHgqS8KiNe67tfZ12ICnQo3Ggn9YS
1HWAmoELsvkouhhhQVdcAOTgeP46mvqelP6sgz7G37p+NAMBftP0kMyre/qeCMv7
pWw+nta51IeM0A4C3onr+tZdSKX5mYEF+PFEaKE8g6BwutAXYH9eJjAMrx9g3l86
t0WI5sWMKXZNR3XaoFw1gRJKKd0kZ/zxc3us0hYRKPGMNPbOKIjcvcF3+p0dc/8+
LqZ6tKHEIgT/LJyngWu5YT5XuaktZp6UA4YX53kl400VX4rWflDQH6oadrUKHNGm
Du+hhmafiA94E+Zn7Bp1s4mSZLl8bvGn1/4Q1h4EIiQSH8yJJvY=
=EyMN
-----END PGP SIGNATURE-----

--7O74X+Gn4hHtvz9J--

