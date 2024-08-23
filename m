Return-Path: <linux-man+bounces-1673-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1562995CFE2
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 16:32:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C10432826D0
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 14:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50ACD18BC3A;
	Fri, 23 Aug 2024 14:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jit88Nem"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1164418BBB4
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 14:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724422706; cv=none; b=tKkKtjDo4FrDR+NZk2/8MrRbeZfY/ImaWXF2x+vAu+F0tTtqPZl4iZoQd8CRR7p+BEJ//FxNDjRKdVC6sMtyxKV18nzuIODPVOk0J/RgO0DCik8lsRtA6Jjbgc3tJDDsq5AG2S/qNWVVi/eOFR5FB9r5u8k1z3pFXG7HrtXSsLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724422706; c=relaxed/simple;
	bh=Wpe4ERhfjHPD0G/XHFtl8xr2ctqIYnYAhXIf3ErHLj8=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oBzAap9M1SkhISdEGum8o5Fn0wHpOu7nM6pjvlvopUdpNU1P1YyD3YMyTqofzOiWgtAAeOJvepeuqFG6CSlYiKIodK1v+CHzn9dGJSE9fcu/CevGtl/WgJ46992ZnjMYzIaiFeK8z+WT01D9AdMMlWGVq6pgvJHiZ7JXqE3oWpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jit88Nem; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBE61C32786;
	Fri, 23 Aug 2024 14:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724422705;
	bh=Wpe4ERhfjHPD0G/XHFtl8xr2ctqIYnYAhXIf3ErHLj8=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Jit88NemvtwVRpJwb6zgkh5nrtdNoRBt3tL/3N7iGc3m61mplTsTebZqHL8p5Z3+D
	 icT7jm8UNW3NRa/NyJc57adxvNAa1NacCvkqPISOPYpX0h+i/IA0EWVezmepLG+0NV
	 WSiejtoAVgPYg8Q6Zl5vu3lYRB0KNvVn2mqapv8gbxHrOSlXm2yYIUEpepMVs6M/pg
	 lOjEeAQP1XkHc3mvsV4ZtVHPuKU7a2OGWHUW+tS+ixvmOUhDNb3ifaxy1xDAunEvHh
	 QssJB70XDmzPuJeq+OLCgdx4CnthVeW5+K9k5tfvh7AaptY2upFdnQXBoi8pbOze9/
	 xWREKvlcDN5eg==
Date: Fri, 23 Aug 2024 16:18:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, Xi Ruoyao <xry111@xry111.site>, 
	Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>, 
	linux-man@vger.kernel.org, carlos@redhat.com, "Robert C. Seacord" <rcseacord@gmail.com>, 
	Jens Gustedt <jens.gustedt@inria.fr>
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <4n6fqru43irlzw7qcqkj6za4hxtn5g3icvtmyuneap4fs2aryk@ctcmkvw2xxl5>
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
 <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <20240823135449.GF2713@cventin.lip.ens-lyon.fr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="idepvuql5vfrfci3"
Content-Disposition: inline
In-Reply-To: <20240823135449.GF2713@cventin.lip.ens-lyon.fr>


--idepvuql5vfrfci3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, Xi Ruoyao <xry111@xry111.site>, 
	Paul Eggert <eggert@cs.ucla.edu>, libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>, 
	linux-man@vger.kernel.org, carlos@redhat.com, "Robert C. Seacord" <rcseacord@gmail.com>, 
	Jens Gustedt <jens.gustedt@inria.fr>
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
References: <xned6jlywd.fsf@greed.delorie.com>
 <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
 <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <20240823135449.GF2713@cventin.lip.ens-lyon.fr>
MIME-Version: 1.0
In-Reply-To: <20240823135449.GF2713@cventin.lip.ens-lyon.fr>

Hi Vincent,

On Fri, Aug 23, 2024 at 03:54:49PM GMT, Vincent Lefevre wrote:
> On 2024-08-23 15:12:16 +0200, Alejandro Colomar wrote:
> > Looking at the WG14 document logs, it seems it was added in n3147:
> > <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3147.txt>
>=20
> Thanks for the reference. Additional details can be found
> in CD2 ballot at
>=20
>   https://open-std.org/JTC1/SC22/WG14/www/docs/n3148.doc

It's interesting that WG14 claims that they're not aware of any existing
implementations that would modify tm_wday on failure.

Although it's weird, because WG14 attributes that claim to the Austin
Group, and

>=20
> which references the POSIX bug
>=20
>   https://austingroupbugs.net/view.php?id=3D1614

I don't see any discussion about tm_wday in that Austin Group bug.  :|
Maybe it happened in a mailing list or elsewhere.  Anyway, let's trust
that claim.  (If any implementation does not conform, at least it should
be feasible to fix that implementation to conform.)

> where I can see at the end:
>=20
>   On page 1332 line 44348 section mktime(), change:
>=20
>     if (mktime(&time_str) =3D=3D -1)
>=20
>   to:
>=20
>     time_str.tm_wday =3D -1;
>     if (mktime(&time_str) =3D=3D (time_t)-1 && time_str.tm_wday =3D=3D -1)

Yep, they do that change, although I haven't been able to find a
discussion that justifies that change.  :|  (Anyway, I think the change
is good.  I'm only perplex not finding the justification.)

> This is the test I suggested: a check that mktime() returns -1,

I think that test suggested by POSIX is bogus (redundant).  If mktime(3)
has failed, tm_wday is unchanged.  If it has succeeded, tm_wday must be
changed.  Thus, the return value is meaningless for the purpose of
determining if it has failed.

> and since it can be a valid value, a second test on tm_wday
> (where the input, which is ignored, has an invalid value such
> as -1 here, or INT_MAX in your case; note that -1 may be more
> efficient with some processors, and shorter to write).

I didn't use -1 because I thought some weird weeks might contain 8 days
(for some of those weird timezone adjustments), and that that might
cause wday -1 to actually exist.  Thus I chose INT_MIN, which is far far
away from valid values, to represent an error.  However, I assume that
they were careful enough to make sure that such weeks do not exist, so
yes, -1 will be better.  (And if it's not, we'll blame Austin.)  :)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--idepvuql5vfrfci3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbImhgACgkQnowa+77/
2zIyQA/+NeXWCKMRkyzgySqo0GHYlK5PXBoY5fiTlqxbLOEsIBBwalobrAzwkjFB
IBhoMKcXpD7AhbPnChX8KYMrvhlxbuhFEZhRkLfKek0PQPVgwStIXhOGl1nyVryJ
H1rmf17eB9qo2eWBsC1EhTF1dJBquMCN1ORLmgC/7TMmjWlGNPTMn5qZvd+I2pP1
pKqZbm11PSFaRS4pRHm7Ky9J+WFEk9kKXQY102ppABvcCZ9Vy8mLnKC3qnLRFctw
vMUP9QJXrIcuGycE9lfxXBgu8rMY7g8O4BO6mDN5CzJaxkSEc+sKQ0CcwLe17ddz
wJ9wzDu0okKiq7gcqAAjqlnWVa/rIKWMpEcf/UlmO2wY0mBzZnp5nAnsb2xyXAYz
ymYRdT9aF6GTYMLNcQL+Wx+zGjHN3yPh7C63FTrWWNXw6M5rSvTgqnwef3DyMphk
IrIpORzIcgMfbEL5GAmcchAZ+BSy8q8/YU4YGqGc81/NY1NM6f7cw72p4T9f2Dbs
PaaKivw6oM8UULVrHFTBwH2ijBUo8uXXToXtHPpH8/d7NnPdVgWou69S1nuYcNRS
/flLMM1ke9X40nFleUAS0euzPMmVaEf5RHpAK2hEDttbVrQkRn1+ibAjgLtyMkzz
EEaMleucIMB9AJ+VzZUWorFSiJgv6RJLAEpA0o/gmWSPmjjaPeA=
=dEKa
-----END PGP SIGNATURE-----

--idepvuql5vfrfci3--

