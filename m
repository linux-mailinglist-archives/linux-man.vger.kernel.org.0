Return-Path: <linux-man+bounces-1042-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E0C90011E
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 12:45:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37DDF1C226EB
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 10:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF5DF15D5C4;
	Fri,  7 Jun 2024 10:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bibAlDbL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20B31C696
	for <linux-man@vger.kernel.org>; Fri,  7 Jun 2024 10:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717757096; cv=none; b=bNyC0xEF3uQCeqd0ZdzA5UxLH2yzIHkVdaYpvJZn0jhIXWNUNWs/DtG8LqzMUIaebTJgrvG3a5QNlXPgH3trkeRhzcqHeJuwAiXdBUKsoAsR1UIsyasR5pRDE7DZVTOkKIm/d8evYwjREvocqR1JDO0qPyrRI5paz0gN8HdDTCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717757096; c=relaxed/simple;
	bh=1MS9uJpOANX8XRflOi+70ERPV1EX20d3AdzvomRZmk0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uld8JNhLJ2g3gzHeckBqHnZeMBDPyMES8vYTfksjfrMz9+lINtdHUWeicIAQMtFg+neUs+sgzfdJfCZ2aLoxnkLVSa9nV2+J6o1D3CUbK+Zm7XVaiQ8fQ+yF0uUOYzdlH8Tuo8bn2zXyZKZLdJqWqsA6movmE3a0whFgdbLE4zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bibAlDbL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E019C2BBFC;
	Fri,  7 Jun 2024 10:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717757096;
	bh=1MS9uJpOANX8XRflOi+70ERPV1EX20d3AdzvomRZmk0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bibAlDbLLoBlF5AnsQ0vhNjSmaggwbYe7c8PwJo1jYj1mvQt+EfxB5SnotZd1zvdX
	 wWPVB49PuGx7i0DiR+GG9nhuqqMvWTyavZBWyQ5s1W4b++Fw8sLRLe+ia28G/KP1Hz
	 djQTnw8JALrT0OkpYKZDi+lGP5mNZ1GMyYDCMU0BKvVwGH8qGxgLutS6aA0C5HMJ2e
	 i0wPc69QnmoduxE6oRNtf0/faDswWLJ8DGBXpjzzAzS/iDISvz7OPKW2BajlpL2lnm
	 KwrSFlrRM0Cx2v+5AuGi9mLW77FHtjviGyilaOtOD71JFkHTImoJ2sh5T+BCboKsAH
	 8g/bHGGmQJZtA==
Date: Fri, 7 Jun 2024 12:44:53 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/1] ioctl_epoll.2: Add epoll ioctl documentation
Message-ID: <y35l3wyxcjk5tsq4hd5mtqvpor577fmysaufv3gntu5uwsyzrf@wiqk4rbxkm4w>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <lu3cm6yc3qjbozu7nxglrnbyjsuolgdtkjmvklduh5rms5een7@wwr5klqqsxwb>
 <ZmI0ydFzb754YD-C@LQ3V64L9R2>
 <jqnuggiy2od5xc4xi67oemdhavh2aqityedevpxchypeqeal43@xp75h2cplbj7>
 <ZmJrhtfUHA6ZVoz5@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6qbamp6civy7yuhp"
Content-Disposition: inline
In-Reply-To: <ZmJrhtfUHA6ZVoz5@LQ3V64L9R2>


--6qbamp6civy7yuhp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/1] ioctl_epoll.2: Add epoll ioctl documentation
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <lu3cm6yc3qjbozu7nxglrnbyjsuolgdtkjmvklduh5rms5een7@wwr5klqqsxwb>
 <ZmI0ydFzb754YD-C@LQ3V64L9R2>
 <jqnuggiy2od5xc4xi67oemdhavh2aqityedevpxchypeqeal43@xp75h2cplbj7>
 <ZmJrhtfUHA6ZVoz5@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <ZmJrhtfUHA6ZVoz5@LQ3V64L9R2>

On Thu, Jun 06, 2024 at 07:08:06PM GMT, Joe Damato wrote:
> > Yep, that's fine.  If you know who merged your patch, maybe you can CC
> > him/her?
>=20
> I had an existing email thread with them on another topic; they
> mentioned that my change should be included in 2.40 as there has
> been no announcement of a release freeze yet.
>=20
> As I mentioned above, if you'd like to be cautious, I'm happy to
> just get the patch into a pristine state for merging and then
> waiting to merge until glibc 2.40 is shipped.

Nah; we're always in time to fix it if they change their minds.

>=20
> Totally up to you!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--6qbamp6civy7yuhp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZi5J8ACgkQnowa+77/
2zKO8A/+OVX8vDdP0jRRjEkvsbiK1zU9V+mwrjiody4/LkAZpKWA+3rEyKEKhCSL
Crs02vpJROooQaY1sRKcB0PlMET2wWa5BdezyLY8NdlfR5QOkJbSYCqn7lu4myKT
s7VF1+731N3D+kn9iybSLcLT9sD+pUaj1KMKIbOqG+BALqGiQsyYNN4HaxtYr8mA
jDis7ntZrZ7J8ZBjvqrCVjW+Dqfa6mN0XHdeuuZPllAs9HrmvYBXOsR1zw46cpLl
sonksI84Rq6ET1W29mqSBYosVjReVk3oyLAYB7EvEsVAQ4YSytqLDxd1u9o+SsBk
wX2fEt7CVo5+AF/7bOJBlbOpi7uphkWPZDm4lrvacp/lOXdx/upCX1AGucvp4P6D
+kMqt48Dzwg3uu03K7dbtU10KfVkZGZDMMj/MogQsA3Ynwt7WBQj3GazGuPNwBOS
k3s2F8mgJPRYFK6vvQyvcrrTVvmHICJCOtyuqBeCn6nMV8IiHAWS3EP2AJWBxJ/Q
CVYUAtBVETjEDoKgv0VmROOpAOJLdYaAMNRdSgEv2nC5/RDEGFnHRmcfuLaL5VNf
ui8I+MXZnCmK6ue6jGUBS3gNw1I3SWqX3gg0Qn36LJMSHZ08uRptamOhxIsFmMTc
bezxtDmuhJhYw+h6M0mG1Yf+Xzlf3NiWDx6UjX/C0oepkWykhwo=
=fT6B
-----END PGP SIGNATURE-----

--6qbamp6civy7yuhp--

