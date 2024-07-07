Return-Path: <linux-man+bounces-1360-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0734E92980F
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 15:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B193F1F21CDD
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 13:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626BE20319;
	Sun,  7 Jul 2024 13:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhQ1SbRJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2180617556
	for <linux-man@vger.kernel.org>; Sun,  7 Jul 2024 13:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720357827; cv=none; b=apZbeInQpdJZAj2G5iOThZPY0aKhpJH0aaNQdc/pBXmq23sYQwmbcjQyXTxNOua1lEfu+F1eVDvq0Y4K8HXtZygai/EancfIO7qp5qQQRepAqDAg6UHtge75gvLUqEqMOtUSSjbz6Hy/c84GGv+KIFsXvT1zEIMV2VIVbb+sfyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720357827; c=relaxed/simple;
	bh=Ix9vL0ql7dhipR0YeZX+Wth9aHiVIeEU2Sit5AQYXxo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oAq47wcBF7a3TepnA3QHhj9ThlxXL2pT7bDMHE+IjyFB+qut7L/RERZWdnXWvunpCOHPzIVZXcHvWwH3i3ZlNU6B5kxDXffoSvNMMIE88vcRhign3nY5GAgcDlFNygr+DKCS/ik6idzb/ALMJvga8lKEpTVl4Guunv9Tgxvx4Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhQ1SbRJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1F9CC3277B;
	Sun,  7 Jul 2024 13:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720357826;
	bh=Ix9vL0ql7dhipR0YeZX+Wth9aHiVIeEU2Sit5AQYXxo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AhQ1SbRJQ6V5ZPedYsWsv0g0YRK4M93axnzRg6xstB36kplkFMwt2bT0e+UB5kLwF
	 DdLXF5n8PMjP2U5VOcl094XwMVk3pV3FcLfj68ZMzymc1i5AANOnEY4hF5Oed3K3ZA
	 ybKf1guh0UZxHQmCGTarLHHOnq1PGVW0gx1M4lzqayXgN8ITPhVPomzM0InWQ1JI+2
	 wCRbCw1HcxIXrY9j/LAFO8kmi85VW9pKxM3NYpjqO2fg8VHC7fkUCvDRMxV1c6d3wO
	 vy8Xx7R3RIoAfV3KmUjTfbe7OnkSCOloLplhasys3Vc56qp17G7KojAt6atQBYU+F4
	 oKucoI1COfQSQ==
Date: Sun, 7 Jul 2024 15:10:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <ma.uecker@gmail.com>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com, 
	torreemanuele6@gmail.com
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <o25uvugwh5ayrcln3s4dfrx6twbacqehaaw5a6i3u6ubmg6oum@c2t2asujrhiu>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <9d7d7564c3861969d3bd73340c0002d5e8b89376.camel@gmail.com>
 <mlzyfpvrnihbcg27oopghds5mm5ysz6sujrxvnbiixlcs53nkd@ibyybtnekhyc>
 <567c558f7ae6f26902105cc208b1fde241e6df6d.camel@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a3opdpuhxxcc2rnd"
Content-Disposition: inline
In-Reply-To: <567c558f7ae6f26902105cc208b1fde241e6df6d.camel@gmail.com>


--a3opdpuhxxcc2rnd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <ma.uecker@gmail.com>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com, 
	torreemanuele6@gmail.com
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <9d7d7564c3861969d3bd73340c0002d5e8b89376.camel@gmail.com>
 <mlzyfpvrnihbcg27oopghds5mm5ysz6sujrxvnbiixlcs53nkd@ibyybtnekhyc>
 <567c558f7ae6f26902105cc208b1fde241e6df6d.camel@gmail.com>
MIME-Version: 1.0
In-Reply-To: <567c558f7ae6f26902105cc208b1fde241e6df6d.camel@gmail.com>

Hi Martin,

On Sun, Jul 07, 2024 at 02:21:17PM GMT, Martin Uecker wrote:
> Am Sonntag, dem 07.07.2024 um 13:07 +0200 schrieb Alejandro Colomar via G=
cc:
> > Which is actually having perfect information, regardless of 'restrict'
> > on nptr.  :-)
>=20
> Yes, but my point is that even with "restrict" a smarter
> compiler could then also be smart enough not to warn even
> when *endptr aliases nptr.

Hmmm, this is a valid argument.  I feel less strongly about this
proposal now.

I'll document this in the proposal.

Your analyzer would need to be more complex to be able to not trigger
false positives here, but it's possible, so I guess I'm happy with
either case.

Still, removing restrict from strtol(3) would allow to change the
semantics of restrict to be more restrictive (and easier to understand),
so that passing aliasing pointers as restrict pointers would already be
Undefined Behavior, regardless of the accesses by the callee.

But yeah, either way it's good, as far as strtol(3) and gcc-20 are
concerned.  :)

Have a lovely day!
Alex

> > > You also need to discuss backwards compatibility.  Changing
> > > the type of those functions can break valid programs.
> >=20
> > I might be forgetting about other possibilities, but the only one I had
> > in mind that could break API would be function pointers.  However, a
> > small experiment seems to say it doesn't:
>=20
> Right, the outermost qualifiers are ignored, so this is not a
> compatibility problem.  So I think this is not an issue, but
> it is worth pointing it out.

Yup.

>=20
> Martin

--=20
<https://www.alejandro-colomar.es/>

--a3opdpuhxxcc2rnd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaKk7cACgkQnowa+77/
2zJHbRAAklMdAFeMjW3TC0z/8VSqDZ0JsbqQzj6C6RcMrHGZZO9Kup/w7VCRDcn0
lzXT6GEAa1HZF3YKLcpEtwVMOnD+YdXhN6OnEGlWkjKrVuVSub+zZIe8vVHNPwlX
7L3FAge2JraGZ1nQYwZCUinAhZ2jlEOpDPemtGcEpX0XMvgCdiUgrb/nT2iit0D+
IV045aIpHbh5vR44PS34bkOb3GVAbk1gdCUO15bKsXpqFVwvJlGfrem5kHWKEqtE
WKYRswkgIjdoH86BPjBBSWnFkzbP03h5NspibShkZRsm/nXph4e0YufXbhrtc6B/
WtrXEL6diBkXZBCpMZECyplQqE5XtExiB0R1zrhmed34GFRsIQSM1iRwATcVk2vJ
kaTeoatEen8ccYnSx88wm9WzVYl3oIlLp1boc9wllYob9fvbFZQt3NXelk4Hek8q
81SwxeSwR5sos3fOPkdTfRAk4qmbDosCbkoSA326apJTbwW0TCVIygXZ2sJSUZU/
UOowNYnaE/ddZ5/Q3uZXvNTotuPYHKUqnHLHL1fbJHWFBP1hXrjYqgygSlzxZVjv
KxccQP8HtY6iD1iRrQXGIkJbPAZMAmJ89c/Iyn5zhHJBpbJ3tr56rJ1FOIxmcr4t
TIRMqr9C6uXVEeCgexVuEzU6MTPpa2UP9/3RlxZAt0dZKR2Lnx4=
=8lDS
-----END PGP SIGNATURE-----

--a3opdpuhxxcc2rnd--

