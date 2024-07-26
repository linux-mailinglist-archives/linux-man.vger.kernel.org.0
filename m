Return-Path: <linux-man+bounces-1528-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A47593D956
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 21:54:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 359192851C5
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 19:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67CBB502B1;
	Fri, 26 Jul 2024 19:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTXuyx7n"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262FD50288
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 19:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722023627; cv=none; b=cUeYEk4JQ61YbJorw34O2E4FpwN6uDtPFLjEyQGETdQOiuPXMDnipif9sNWu2dDnNSqBD6ebZatM4Fi+BSQnXuo6TYaSiKApDT/BQ1RPvvTVUJZe8XvmdKAXuBRtHR+qFHtVZn1FntIAhxXrgpLZIzNmnw+nwBXzKUtCAmkUu2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722023627; c=relaxed/simple;
	bh=GDyoVOPsXHaPgRxao54gZ7w/KXthflevQzge09FDz0I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jdAblutRbiJWHZ2TSSENsDMYE3FvNMq8RHD5hzQhGOoyCJ12Igsh1MtFVq/1zMvh0ZsBrtQyFSFfK1w9ZZeTw9m8B8x6MJ1m3Z/QsZou4cXxzy540hhHSbUgwZrg167HAi8nciizaD4z/+QgfbKK0bYURT+EVFrCaTvwxg+pAws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTXuyx7n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2261C32782;
	Fri, 26 Jul 2024 19:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722023626;
	bh=GDyoVOPsXHaPgRxao54gZ7w/KXthflevQzge09FDz0I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jTXuyx7n38KnHVTB8MBVZwVtC9rygvswSB2w6PCZqCSlNOKW86d0IbraO/RR+WV7h
	 ElGh0Fqbn6D08AvdkIwHlGzV9fApkylCkA1tKdQkBDiIVe8I4E8EPVhtldmKiBNEci
	 DyEomSB5wt3LqMiz4qqbS5KLMMf3gFfQzWSuXK4JqcI6PmX6vVizYKiA/bu8lpATlQ
	 HE4U5IPPA0TlmZ69UCMjD5/p2XX8fNQh2+F9q0gcjLbsACLSS1MSAv7A6+lKhIQ/Tl
	 i23+W5JyuZJXZThEcubfpAF1mpsnGWKnDzsg3UWYd+KkQZU7fhqYvsiDWXNK2ctM6H
	 S8VkKEy8Gd7fQ==
Date: Fri, 26 Jul 2024 21:53:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Joseph Myers <josmyers@redhat.com>, libc-alpha@sourceware.org, 
	uecker@tugraz.at, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, lh_mouse@126.com, 
	jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
Message-ID: <7fnub27orprwkez2zxvst6ck6m2re34fqnovkqkxznxasjsic4@6ow6p3wds3in>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <20240726163551.5fn4mei345wseoap@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rosaayg6gmhkrxdw"
Content-Disposition: inline
In-Reply-To: <20240726163551.5fn4mei345wseoap@illithid>


--rosaayg6gmhkrxdw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Joseph Myers <josmyers@redhat.com>, libc-alpha@sourceware.org, 
	uecker@tugraz.at, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, lh_mouse@126.com, 
	jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <20240726163551.5fn4mei345wseoap@illithid>
MIME-Version: 1.0
In-Reply-To: <20240726163551.5fn4mei345wseoap@illithid>

Hi Branden!

On Fri, Jul 26, 2024 at 11:35:51AM GMT, G. Branden Robinson wrote:
> At 2024-07-26T16:24:14+0000, Joseph Myers wrote:
> > I know that "noalias" was included in some C89 drafts but removed from
> > the final standard after objections.  Maybe someone who was around
> > then could explain what "noalias" was, what the problems with it were
>=20
> For this part, I think the source most often cited is Dennis Ritchie's
> thunderbolt aimed directly at "noalias".
>=20
> https://www.lysator.liu.se/c/dmr-on-noalias.html

Thanks!  It seems Dennis's concern was that it was a qualifier.
Probably the reason why restrict ended up being a qualifier on the
pointer (and thus easily ignored), instead of the pointee (it would have
caused the problems that Dennis mentioned and which anyone can guess).

Since I'm suggesting an attribute, we are pretty much safe from type
rules, and thus safe from Dennis's concerns, I think.

Have a lovely night!
Alex

>=20
> > and how it differs from "restrict",
>=20
> I can only disqualify myself as an authority here.
>=20
> > To comprehensively address this demands so we can make sure that any
> > new proposals in this area don't suffer from whatever the perceived
> > deficiencies of "noalias" were?
>=20
> I think it would be valuable to get such a discussion into the rationale
> of the next C standard.
>=20
> Regards,
> Branden

--=20
<https://www.alejandro-colomar.es/>

--rosaayg6gmhkrxdw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaj/sUACgkQnowa+77/
2zJdzQ//ZwNaZMweq2WxyYJV/peQQxbwytwzGEKS9JbtE7px9HtvmsM0d7fydglR
RwmiOHpd5/zww+QvvcsHOEFmCZC2bjpT+id9nNO8t6oKqJJTE1acCNIAgNylJ3j8
p+VboLjXL/q8KE82Ep1l7Q5/iA2DncNslR3yLnAx8IPOT6hATDjcM6nQ9JqOQwcz
2aBTu9KLb1r/tESkfJ6zFRv93EJKhLOoSEE6Dz+1ZWPhqOyD1VZrtnicMdliGp/7
7xbJOJFXnRNYTkJRgUkovwpq8McGE+as8P/kvrvPtzfFHhhmmrr4YNipJcaG9SZs
cVLq9o+ad72nthpVswwl+MO+J2TMmPaWGPY2DQb6O2F3k0ZNg/glqDw+AhKEWLak
eUJ6Aqo0Nb/IQcqJpeNoaqsE65tllKNKqfle6WLqO/QAGCos2Bgk6KWy5SdvfuI7
EIPmXivGJVhAXP+LgXAHsGGLptsS2rkSq2sc58j9Dj/nixRgcaKtXWLYyOtc6JbI
kylO/GP3RICtUjeKurfdzd3I1/ByNhqoOTVUdPqgoTAMYiMYVbEcERSAjulCD3aQ
F+6+Ap7oPBlelbn6OM8eFxj+Vrbt39xXOiLnM/90jg161lm9PwrGXy87h6wYYYF7
I+ebb6dfthSoSFPcZp1+dnYE9o3W6wf+KbtLgweRXo36A5187Xw=
=pU69
-----END PGP SIGNATURE-----

--rosaayg6gmhkrxdw--

