Return-Path: <linux-man+bounces-2836-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2F8AA64AD
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 22:19:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F7981BA79A2
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 20:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64E5321884B;
	Thu,  1 May 2025 20:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uy0Q4q0t"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251F41BE871
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 20:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746130746; cv=none; b=JcJnq2f0pqUjFWdijXA0H4TVCF288vKY/i0ZuJOJ3+yR3JvmwMyWQPv3UEzikFkBJUWFlu6QlYodMIHjnxHiqChWWjPrzV24bn1znZVq/1lanpWL6JqOiIG7kgbJExQXXoOZD1CjmoQeP/G1fzaqKjkk86GX9YxtbFJe9l1PMgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746130746; c=relaxed/simple;
	bh=N6YiQjfukG0TLu/xCaq79bFgvLL2hCeHisl55yrxzKg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RuguMyH5WIXbMyLoPvkfy8gz/dotNtI5+Ax87aJZM21iv+MlcHGFRHEWr2vQvVBiyzgmB9UKqPUock/H3kSi59T/FTFY3+4ZUtWKhz1ErDC4E1Ec+i57lL6J+D8r7t4khE8NGcOIO2V/Z6NW8HehvvWmd1xuf4JZWCQhu8ycpnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uy0Q4q0t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4383AC4CEE3;
	Thu,  1 May 2025 20:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746130746;
	bh=N6YiQjfukG0TLu/xCaq79bFgvLL2hCeHisl55yrxzKg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Uy0Q4q0tlx0Ev3zlqB3RIOI5/eZm2RdjkeFYtuOmSRmfayWMGUcgte5YBEtA9tX4F
	 Sr16fg/T6fjBVXMX5ClLdyA220O1vYvWlUbKeLrU17j6eyhMP5w43Un1H/c36GeVdO
	 FeVa/Vi2naegLuSF3XjLigeJG6ViX/keJtQzM9oOeyaO1xaaRooXYym0C/w9ONXttI
	 M5Nh8tLKTvDJWq9QmBmr5CL3XhnTKlutG9ltJIVGbl62t+xWxOQBtnrmSaFMCOq/xZ
	 FJMelkq5fMAMaOqNbLvBXnHJCFfDL/HzPtEGrp3ka15Uygdnx39NVaQdsfNp+1cd8f
	 RigLXFUmxd95Q==
Date: Thu, 1 May 2025 22:19:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jared Finder <jared@finder.org>, Jann Horn <jannh@google.com>, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>, Jiri Slaby <jirislaby@kernel.org>, Kees Cook <kees@kernel.org>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/TIOCLINUX.2const: Document CAP_SYS_ADMIN
 requirement for TIOCL_SETSEL modes
Message-ID: <v3665whb45ai5elelq456u7g5ihpikfhziinrbdyjvyg2kpg4w@ptcxy4u75n2o>
References: <20250501110024.9225-2-gnoack3000@gmail.com>
 <26e2aje76rj4guq7g3isno6ni2lnzevgywq7y5odnkrykr7gqr@2qmexziuowok>
 <20250501.0561ccffe9d6@gnoack.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fr4otarobcit5lgx"
Content-Disposition: inline
In-Reply-To: <20250501.0561ccffe9d6@gnoack.org>


--fr4otarobcit5lgx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jared Finder <jared@finder.org>, Jann Horn <jannh@google.com>, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>, Jiri Slaby <jirislaby@kernel.org>, Kees Cook <kees@kernel.org>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/TIOCLINUX.2const: Document CAP_SYS_ADMIN
 requirement for TIOCL_SETSEL modes
References: <20250501110024.9225-2-gnoack3000@gmail.com>
 <26e2aje76rj4guq7g3isno6ni2lnzevgywq7y5odnkrykr7gqr@2qmexziuowok>
 <20250501.0561ccffe9d6@gnoack.org>
MIME-Version: 1.0
In-Reply-To: <20250501.0561ccffe9d6@gnoack.org>

Hello G=C3=BCnther!

On Thu, May 01, 2025 at 09:33:52PM +0200, G=C3=BCnther Noack wrote:
> > > @@ -118,11 +130,11 @@ If mouse reporting is not enabled for the termi=
nal,
> > >  this operation yields an
> > >  .B EINVAL
> > >  error.
> > > -.RE
> > >  .IP
> > > -Since Linux 6.7, using this subcode requires the
> > > +Since Linux 6.12.26, using this selection mode requires the
> > >  .B CAP_SYS_ADMIN
> > >  capability.
> >=20
> > I'm not sure I understand this part.  Was it required since 6.7 and now
> > it's only since 6.12.26?  How can that be?
>=20
> Legitimate question.  For the TIOCL_SELMOUSEREPORT selection mode, the
> requirement was briefly lifted (but in a confusing way due to an
> implementation mistake).
>=20
> The way that the diff came out is slightly misleading.  Note that the
> .RE "moved", which really means that this text is now talking about
> the TIOCL_SELMOUSEREPORT selection mode instead of the TIOCL_SETSEL
> subcode - so we are now documenting the more fine-grained selection
> modes instead of the more coarse grained TIOCL_SETSEL subcode.
>=20
> For the selection modes, we had three cases:
>=20
>  1. The selection modes which continue to require CAP_SYS_ADMIN.
>     For these this is true before and after these kernel patches,
>     so this is "required since Linux 6.7", as before.
>=20
>  2. The selection modes which do not require CAP_SYS_ADMIN any more.
>     For these, I dropped the remark.
>    =20
>  3. The TIOCL_SELMOUSEREPORT selection mode.  For this one, we had an
>     unfortunate back-and-forth for when CAP_SYS_ADMIN is required:
>=20
>     - It used to not be required.
>     - It was required in 6.7+
>     - After 2f83e38a095f, which aimed to loosen the requirement, it
>       was *sometimes required* (unintentional and really too confusing
>       to describe in a man page, IMHO)
>     - After ee6a44da3c87 (coming up in Linux 6.12.26), it requires
>       CAP_SYS_ADMIN again.

Hmmmm.

> So for TIOCL_SELMOUSEREPORT, I am now saying it is required since
> 6.12.26 (an upcoming stable kernel).

Makes sense.  However, 6.12.26 is a branch, and we would need to clarify
what's the state in 6.{13,14,15}, don't we?

>  But we can as well change it to
> say "since 6.7" if that sounds better to you.  Maybe that would be
> simpler and err on the safe side for users of the API.  (To be fair,
> these interfaces are anyway only used by gpm and consolation. I am
> mostly documenting it for completeness.)
>=20
> Do you have a preference how to word this?  Should we say "since Linux
> 6.7" instead?

I don't have a preference.  Maybe since Linux 6.7 is easier than saying
since Linux 6.12.26, 6.13.x, 6.14.y, and 6.15.z.

> Thanks for the review!
> =E2=80=93G=C3=BCnther

You're welcome!  :)


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--fr4otarobcit5lgx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgT1ygACgkQ64mZXMKQ
wqm05hAAuCVVSSJk8fV18ylWubckGW0ubrF14+JWbj86x77RiKlEMTc2JreUatly
YBASBD8b+8aMj49mmUAH6T47xaxxhu4u0yEWluZVQ+8D682TAKt4mqQZxso16oW5
wZLw8hecZdX9K+40u1NsANwez80ruXj+YwFOTQw3t49HE97txK7sO5GUwy10CR1e
/CWSNBzIjDZkY7PRUDrF9kIl9I5yLaUuBJc71R+naXYKNLqTuaFmStc34m5aCiGx
eJKPRHdtVf+ZRLhfhkBYlyoWbM5I9qzxXpM+fQT50jGOSA2WtIJLm61e1Fr9pZ1R
8R8Zxi0Z+5LI8+cYk6ku74cqlnVGtKWcaWHbCKOeSEioIz2M1L0Z3PPCqJ15wUyL
A97EvNrDLmRBSN9AKUVCMKKVZDmzEMHGkco7xfQClr68GVg9ZqZ2ejI0TENZpOoy
wnavLvOO8LzPLPrD+Hz5DeLY5MYb9uvlQfIr8ld2eU1mFsBJBKXxUnRZhI/PG6SR
1XuOBUvFvrvUQVvCbEQ9LHEJwvtBvtXxfobIeduQADR+r1pykMGpZgs+Wu49bhyL
Lk7/+/C/6utS3G70Jit0wzEM4vPAq97BGRVybiSWd/tBFu+iLeFdyEB0ZiSDSGO8
lh3byg3y/oBMHatA2A8v5JT7Cd50ToIvPT++7fX0dTPfwGd5LYA=
=rSpP
-----END PGP SIGNATURE-----

--fr4otarobcit5lgx--

