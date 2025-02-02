Return-Path: <linux-man+bounces-2327-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D099A24E28
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 14:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C7333A4C59
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 13:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09D0B1E4A6;
	Sun,  2 Feb 2025 13:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLWgSFKO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B393FAD2F
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 13:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738502211; cv=none; b=ZKpF72bYfHNJY9pP2f8jV4My/unaoHPgeIEXoH954Z/9O3t4h3sLBTE0+6J9bo+SJ5cDhs8RXus0MwAfymSgB4JI7MCObikFTv1Kd2oJ3f3HqH8acLBdE8Lwvh5KD5rb6+GbBXjNTbarjAhWC8/JfFdQYesDy0tYeJ9zdzamGrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738502211; c=relaxed/simple;
	bh=TUx6XbW9/qg8HdcHoyYH1mqWXUoSuFWZ99AUzF1H45o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EfPKOMXsKAIAeRF9iQvBERAe9Z7XKlf0FV8Tivj5R0Bi1VrRASjkvXosAzvlQ85/hyuHGH1DJfJp2/3nJF0H/9uI5vTSQdJSCqNq/3RykClPRM6Wv+v3ZGAM6FiVej/1vpBmghe7//Np6rTUcK3dinNgO06l7XKhNnZyCsp4VrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLWgSFKO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7335C4CED1;
	Sun,  2 Feb 2025 13:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738502211;
	bh=TUx6XbW9/qg8HdcHoyYH1mqWXUoSuFWZ99AUzF1H45o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JLWgSFKOEuuib/IsYqanr79VPPNRw4dWXyHUBB0L7pYtv+MdisTSpnxFq635SiWTv
	 cK92myTQTUwhlhiVzxbMU4Pu0NJa+fneXgAj9TleOwMXGQHzO2F4EFY/3Gc/g6IxQB
	 nT7LVdpz3DsxhxI1S7DS1jzY3tD6xBhr72IiQ5CW7amdVyHWXeYZIjTu/NIlaeZ9pH
	 +hiv3Lguqfbe8l7x1Y1M4xjhJW+mLOfJk42305MMciLvIj+FY8AaNe3cIZGM20xLRh
	 vww4eKkVqSIQpbYDOAtqD0V550ZoW8d7pVXDiqGDC4bjYWhgmE9QnWvrf9LrwTDAnO
	 KdOtuBALSowSw==
Date: Sun, 2 Feb 2025 14:16:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/signal.7: Update definition of SIGCHLD
Message-ID: <dv2b3g5om4o27t2x3lckg3akadpar7tpzyr4imvm2ip6crd5bt@sft42jpejgeg>
References: <20250202121112.9911-1-arkadiusz@drabczyk.org>
 <daw7t3a6apgrepg35pxrhfnirxqtkjtzutonvv6ry5lvc7sdfg@5lj7652rabim>
 <Z59t4-g91hVntcGQ@comp..>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="njeun4kq5hvycoze"
Content-Disposition: inline
In-Reply-To: <Z59t4-g91hVntcGQ@comp..>


--njeun4kq5hvycoze
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/signal.7: Update definition of SIGCHLD
References: <20250202121112.9911-1-arkadiusz@drabczyk.org>
 <daw7t3a6apgrepg35pxrhfnirxqtkjtzutonvv6ry5lvc7sdfg@5lj7652rabim>
 <Z59t4-g91hVntcGQ@comp..>
MIME-Version: 1.0
In-Reply-To: <Z59t4-g91hVntcGQ@comp..>

Hi Arkadiusz,

On Sun, Feb 02, 2025 at 02:06:43PM +0100, Arkadiusz Drabczyk wrote:
> On Sun, Feb 02, 2025 at 01:30:00PM +0100, Alejandro Colomar wrote:
> > Please add a comma before the 'or' (Oxford comma).  Other than that, it
> > LGTM.  Do you know if there are any other XSI extensions documented here
> > and what we do with them?  It would be interesting to be consistent
> > about that.
>=20
> No, I don't. It would require a lot of manual work to go through all
> of them but I agree that it's a job that needs to be done.

Hmm, I've done it now and it wasn't that bad.  There seem to only be 3
signals that are specified as XSI extensions.

<https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/signal.h.html>

Apart from this SIGCHLD extension, there are:

	SIGSYS		A	Bad system call.
	SIGVTALRM	T	Virtual timer expired.

And we document them normally, without saying anything about them being
XSI extensions.  So I guess it's just fine to not do it with SIGCHLD.

Nice!  :)


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--njeun4kq5hvycoze
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefcDYACgkQnowa+77/
2zI/pA//eEVXf5PcGlMRElOVQzR3DHR6L02j/NfUbqZshWNo4z3nTciqfxogYk/j
7PwRePX6kCpTvb+Ia/xqFT2ue3Hd9VlOF/ngodSTTvH7e2C14IwaYmfHg+/rYmBF
FCIkbvG4hmtB4ALW+3Lo6S6TQGPc9Aj8ReE4PkxaZnDrL3ZVXaeA0u12OEXCWFav
A0t40EM3gzOqZhmBv+ic10M8vHlc5kfvT3JzGGDKO8GjcipzA3zMpkWJTftLHL4f
40L9a05YtaJImbi6OZsQkeKIwBxytdSCvrFUNepKepxjckq7C3Z1tLAXqYRDBKiH
M9qv16kRqyfmLmkBpQV/knWNdmLMhlCXcT6FfRgzhxC4UruUgrKgeIY7MzWwlbZM
r3yCI4e4C3huN3yLPfs9jLFN0Z1lp97AYOm7YZ0YCs24vxFssOOQEUKTThuR/nDz
I/pxA+CPJdsbrg16cv/OfvQ9XnAilw+YOtreY9NBmCEq33vD17As6Otqa4Vul0Rr
yRKLbYgq1E9xwp3vMXSY4ivgb+jgzVfEBtKaQYd9pkgQ3d0x2hvUN+b9eooLyr9o
o2+BoGjWxqweLm8Y+CoNaq/mG58seNxQHDorGDacRWXvGkqrMg3QxOXM0fhKcq29
wqou+HB+x0M2m5uoizl37a+Ecq70Zed4+KyjBhd6KuIOk+5h/TY=
=zU91
-----END PGP SIGNATURE-----

--njeun4kq5hvycoze--

