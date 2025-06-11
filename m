Return-Path: <linux-man+bounces-3128-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CE2AD4EF9
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 10:57:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6ACE51BC155A
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 08:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DFDC243370;
	Wed, 11 Jun 2025 08:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPZ3103I"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9EA23F43C
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 08:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749632246; cv=none; b=R6hwVVhNjESgGzD9Ov/2TLgkoNOanVkXsOr2SlbSLTF3l3AznGKlR3oFS7n94AUucMO8UuGjkZmeVZ1yGG95jRG6+v0UeuVtMyzJmC/9bdhHbRxfouCKXr3Yw/07eEKmTKc9GodWFf8O2K3tVxvn2w0wY/S+C4KE4rUNNw94YdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749632246; c=relaxed/simple;
	bh=bsxj2/cF+ggszEyJrDpzUj2yhVxUGe4aC+sGrLS6/EU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JG7GfVggnVoEqUOTBTVhZgehslHj4kWqyc2AHYmA6LpC3Z8Fj5c1M10AohdvvZAoTmpBtZaIFgWcaQBv8y4z8eBXDvDyWVAQOZADg2VOk30/QoXtnYigGl9AhCLYpOx1XVriMXEZusOPcEEp5oIamtJ6qOhwPgV3MtE+r9GlanE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPZ3103I; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54DD3C4CEF7;
	Wed, 11 Jun 2025 08:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749632246;
	bh=bsxj2/cF+ggszEyJrDpzUj2yhVxUGe4aC+sGrLS6/EU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZPZ3103IlxAtV12JhRB09HfwzZT76ieiq4o4edS0ZGdI6lkHq1z9CCDspKfSUxDma
	 B1flOEMQVT0weed20hP1Ic/ghrsf4LtrmSjHcjNjjxuWPq7O9l2bH543ZH3Thstexf
	 3yuMVSvb3HUayG5hGCLzmipOPRoAcl6tn5y6Q+X/K2ztQWQD2ll/4b1DeLDT0zItMX
	 WxK7a6tlK4Mag7pxoRG73xLAwjC0eLG2/yg+GDJ2Id6XlP/E1tzFhEmMLaDGGzOLwl
	 eJjAVdWPQcIc72NwPGTM8g0L4soBrA46qb2uyyEiITtXZ/OE7ruQWretVeBL0WPqO5
	 t/CHgmefL5xvg==
Date: Wed, 11 Jun 2025 10:57:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vince Weaver <vincent.weaver@maine.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: popen.3 return value
Message-ID: <3wglujqaexkd4kum5rnnu4ia53k2itez353bpzsqv2pdomwi64@fij4gn4f6n2w>
References: <a07f79ff-a659-d54b-ea4c-d5cafad58e54@maine.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h5osc7elcoeibzwt"
Content-Disposition: inline
In-Reply-To: <a07f79ff-a659-d54b-ea4c-d5cafad58e54@maine.edu>


--h5osc7elcoeibzwt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vince Weaver <vincent.weaver@maine.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: popen.3 return value
References: <a07f79ff-a659-d54b-ea4c-d5cafad58e54@maine.edu>
MIME-Version: 1.0
In-Reply-To: <a07f79ff-a659-d54b-ea4c-d5cafad58e54@maine.edu>

Hi Vince,

On Fri, May 30, 2025 at 02:27:07PM -0400, Vince Weaver wrote:
> Hello
>=20
> I came across a situation where I feel the popen.3 manpage is a bit=20
> misleading.  If you run a command such as
> 	result=3Dpopen("/usr/bin/aplay","w");
> on a system where /usr/bin/aplay does not exist, the manpage seems to=20
> imply that you'd get a NULL return value.  However you do not, since the=
=20
> shell itself forked properly you get a valid FILE * return value.  Howeve=
r=20
> the first time you write to that FILE * your program crashes with SIGPIPE=
=20
> (assuming you don't have a handler for it).
>=20
> I don't know if there's a way to clarify things.  I was thinking somethin=
g=20
> like the below patch, though it's probably not the right section to put=
=20
> the info.
>=20
> Vince Weaver
> vincent.weaver@maine.edu
>=20
>=20
> diff --git a/man/man3/popen.3 b/man/man3/popen.3
> index 7c665a342..810f7e631 100644
> --- a/man/man3/popen.3
> +++ b/man/man3/popen.3
> @@ -115,6 +115,17 @@ returns an error, or some other error is detected,
>  On failure, both functions set
>  .I errno
>  to indicate the error.
> +.P
> +NOTE:
> +.BR popen ()
> +will only return NULL if there is a failure starting the shell itself.
> +If the shell is forked successfully but the command inside the shell
> +fails to run (for example, if the executable is not found) NULL will
> +not be returned.
> +Instead a
> +.BR FILE *
> +will be returned, but any read or write to that will generate a
> +SIGPIPE signal.

You should move this to CAVEATS below.  Also, please create a subsection
"Errors" within CAVEATS, to separate it from the current contents.


Have a lovely day!
Alex

>  .SH ERRORS
>  The
>  .BR popen ()

--=20
<https://www.alejandro-colomar.es/>

--h5osc7elcoeibzwt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJRPIACgkQ64mZXMKQ
wqm1lRAAlgm6ajXtPF099cLlGTVLNyam2ap1XsBmXMaAbi0+7qRw9M8BJSGNaXmj
heUzW36puQE2lJRMMA/Tu4m1U7dNkJH0tX+AwZGHeN1Fsrn1ovkFkWP8s+OjAJ9y
wjVGcOiMc6NwSv7iMahRJuDAkzuPJpNAC8nG5V8RJALkWAwG2xPS/6u8w9bRZAKb
7jc6F7HMlDUxAxMsaMw4RPGaSV76gHLixiz14sh8Pq6X3SFir1q712673bf0+DuY
Z7Vuo9+Z/gD/lWcuJIKUXYGGwVQGCenA5J7x5aFrHlLcO7AGDFpWwLBLeciN4IeE
juBagx+5sIrBjXcDoarVhWf5rAh/VX2r6iaK/6DPBOlvNh6mHTPnaQxDEPeSfFc0
0i1N9hhPCJVtJ9hSfbt/MIRyvKMgUr1TN36MQDklMIugsXGNMz6Fk4xxHmbMAF4F
lDUuN5uTnjKdC4KCzrJWIcxrpP4pW2K7blpfvr4aJkR5ywrcCilKdKhNk3vDF7Jk
L78gjpr2KVAUFK+s9f7McaQ2VwLe6PZmd6guQlRKjfF2nA9O3CkpydS/vlFzoSoV
A380Nde+Fu32odxrnnO2ZlATkGD7zFjTD1m1bRsftvQzdqrgm337PdiZslghVrZm
yvVTONzSH5b3GbAyELLKphLzXm+lVmheegZaR4jGcBa4c67XhSs=
=6iGg
-----END PGP SIGNATURE-----

--h5osc7elcoeibzwt--

