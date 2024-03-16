Return-Path: <linux-man+bounces-624-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F8487DB52
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 20:36:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EEAA1C2087C
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 19:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57CBC1BC43;
	Sat, 16 Mar 2024 19:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cx9/6J42"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194DA1A38E5
	for <linux-man@vger.kernel.org>; Sat, 16 Mar 2024 19:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710617800; cv=none; b=u6neTdTWt1G0x8KD/6+UJGGVAXOdDFCzTeRnqHJbQft53xCYAyp5NSS6Ctsj3RmZa8k3Phi9IoPnQNrvVH4JJHNsua9s/gQxufeKQMLwbU9wybgg3Jz9O+q+puw2x6V0NPNKAyNMPQdpSucZjhL741YP+JQkeCwM4vIoSl2wmiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710617800; c=relaxed/simple;
	bh=gQB/uYgAWnWxH0mF+QWFKZfjJ6zvgszTIgpZ/0fW11I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mqB+IzfIef+Wdy5JVo1qdqGi7Tdf6i4s6HkD9hXB4vVzqoMpPjpJ/3rbPgK2bjUygyAz8s+wsryH/H5tUUBuD0em+lqtXbAHfYWucv2bZAORlognWSNgSwFF97sRooDctvAxyL99s7QxydnfXtmkwmGll3BK3pWM8S4KKPT2Q7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cx9/6J42; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CA83C433C7;
	Sat, 16 Mar 2024 19:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710617799;
	bh=gQB/uYgAWnWxH0mF+QWFKZfjJ6zvgszTIgpZ/0fW11I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cx9/6J425Naoa7AP/BpUOTL25yfAOPDDxovmX5WwpLHQqI+ngAbFu0bZDzGn46ST6
	 tLKsgBQsTZbhBc18L6KQ38qRY/DOL4sKfCewloWkyQohQxbXZHsJ0YOzRyUmo3Xqaa
	 /rNI2yjEU60kmuITBhXJBKRyZKrfCp1arrZtyvBKoYDWaiFXTA9O80DRQr2WHi1FQO
	 /tLlJ7P6fdIVOlvJHVQX9xVxZSId6z6SEP9ZudNUTuNG54kC5t/DmXLGcu2GMZAY+J
	 jIZm/Ec65AnrWc/fOCMswjUXd2H8MkU7gXc3IJTC9uHZwjSzbQkYFVW+NjlrM6iA9m
	 NBEa50d9K1Oug==
Date: Sat, 16 Mar 2024 20:36:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Gregory Price <gregory.price@memverge.com>,
	"Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v3] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Message-ID: <ZfX0xFYgXBnBVGov@debian>
References: <20240315-weighted_interleave-v3-1-416a1ab01524@memverge.com>
 <ZfTfUMG-LGPnhqHe@debian>
 <A5BD70C6-4AC8-4BE1-88D5-A5E4BE5E656E@memverge.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hojGjE2cnp7xVAZv"
Content-Disposition: inline
In-Reply-To: <A5BD70C6-4AC8-4BE1-88D5-A5E4BE5E656E@memverge.com>


--hojGjE2cnp7xVAZv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Mar 2024 20:36:36 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Gregory Price <gregory.price@memverge.com>,
	"Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v3] man2: add MPOL_WEIGHTED_INTERLEAVE documentation

Hi Svetly,

On Sat, Mar 16, 2024 at 07:21:21PM +0000, Svetly Todorov wrote:
> Hi Alex,
>=20
> Happy Saturday.

Have a lovely Saturday!

> >> diff --git a/man2/get_mempolicy.2 b/man2/get_mempolicy.2
> >> index 5248f04ba..03550331d 100644
> >> --- a/man2/get_mempolicy.2
> >> +++ b/man2/get_mempolicy.2
> >> @@ -137,7 +137,9 @@ specifies
> >> but not
> >> .BR MPOL_F_ADDR ,
> >> and the thread's current policy is
> >> -.BR MPOL_INTERLEAVE ,
> >> +.BR MPOL_INTERLEAVE
> >=20
> > This should be B, not BR (BR is for alternating Bold and Roman).
>=20
> Can=E2=80=99t believe I missed that!
>=20
> > Or,
> >>=20
> >> .I flags
> >> specified
> >> diff --git a/man2/mbind.2 b/man2/mbind.2
> >> index b0e961f9c..6f85dec0e 100644
> >> --- a/man2/mbind.2
> >> +++ b/man2/mbind.2
> >> @@ -105,6 +105,7 @@ argument must specify one of
> >> .BR MPOL_DEFAULT ,
> >> .BR MPOL_BIND ,
> >> .BR MPOL_INTERLEAVE ,
> >> +.BR MPOL_WEIGHTED_INTERLEAVE ,
> >> .BR MPOL_PREFERRED ,
> >> or
> >> .B MPOL_LOCAL
> >> @@ -243,6 +244,22 @@ at least 1\ MB or bigger with a fairly uniform ac=
cess pattern.
> >> Accesses to a single page of the area will still be limited to
> >> the memory bandwidth of a single node.
> >> .TP
> >> +.B MPOL_WEIGHTED_INTERLEAVE
> >> +This mode interleaves page allocations across the nodes specified in
> >> +.I nodemask
> >> +according to the weights in
> >> +.IR /sys/kernel/mm/mempolicy/weighted_interleave .
> >> +For example, if bits 0, 2, and 5 are raised in
> >> +.IR nodemask ,
> >> +and the contents of
> >> +.IR /sys/kernel/mm/mempolicy/weighted_interleave/node0 ,
> >> +.IR /sys/.../node2 ,
> >=20
> > Since ... is variable stuff inside an italicised word, according to the
> > groff_man_style(7) paragraph I quoted, it should be in Roman.  So,
> >=20
> > .IR /sys/ ... /node2 ,
> >=20
> > Also, for better formatting of the '...', we use \| between the dots,
> > which on proportional fonts (in PDF, or HTML, for example) will produce
> > nicer elipses.  So,
> >=20
> > .IR /sys/ .\|.\|. /node2 ,
>=20
> This I was more unsure about.
> I saw the quoted portion of groff (7) but since
> the ellipses are a stand-in 'kernel/mm/mempolicy=E2=80=99, I figured
> they technically *weren=E2=80=99t* a variable region, so I left them ital=
icized...
>=20
> I dunno. I was pretty fried yesterday. I=E2=80=99ll follow your lead on t=
his,
> and thank you for the \| tip.

The rule I follow to not have to think too much about it is:
if the user can copy it verbatim, then it's not a variable; otherwise,
it is.  :)

Cheers,
Alex

>=20
> Svetly
>=20

--=20
<https://www.alejandro-colomar.es/>

--hojGjE2cnp7xVAZv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX19MQACgkQnowa+77/
2zKzSQ/+NxM/iQ9NwaYkIVAPHh/tybvbGymvoVqcfFiWqxqGdG48jQyeIha2Ocsv
ZOjDDmeR9NKrmdIlg89BPObXiAE7Jyb70NH5J1n4esK5AHurJe4xRc6Ag8y5+EQT
SmXJoNmcGx5uvOArDP+2gPIXZw3unXZiWOVc337dN8TSwO2sRJaDd1nWkii7XwTW
Vz5r7An5NZlhN+Db4vZgIZLI3d8FdzRnJrlTlzQros68E1bPlmwIIsvmQ2Tht38e
S/clkjlGWtklANjchTQoAPBaNH+ZAZnPPTlhH35UYPSu3Ogfbr4MRVJCAiBrTgJW
SNCITBSest+ET0zn8ZMZNN55uXv2hVh+OAURBEzlMF8CKewlPUY+CmukQXqe7LOS
l9H5aTU3PCoh5EmEr8RyDg10+14F4Zi4b45FUULV2zdujvGRCC2Oe2SbcBxtCZE7
mc5QWslaReSXsJQtr4jqYAAjKkav/tcl6uBKb8u7tsohgofGa8dxxscPsV+oa10v
mYjivLwyIplYdy3D1TTOjp3AW0/RHCQ+9kdi3fzDc7lu1NImXcwB/RwQTP2X585g
5dGEoCKBT46WZdEIvvMjDauhRg0+CkIXvE5RWT3gyFaZORuwszZAzbbLHofdBG+P
eH1uTI5RIBaYAdhVk0PGrXs3mzdBL5rgcQQAI+MW6NtcB3nqnkg=
=qB68
-----END PGP SIGNATURE-----

--hojGjE2cnp7xVAZv--

