Return-Path: <linux-man+bounces-1096-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B4A903EEA
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 16:35:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 528D32887A7
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 14:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89AC917C7D5;
	Tue, 11 Jun 2024 14:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tp5whvbw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB2528E37
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 14:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718116498; cv=none; b=oFcogjzF79lcuvPWFFEPBkHPRqIVoV8/yk1rC7EAmHUc71Ui7d19hHe+N0co/4h7lL9hnWanADCGge20NjBogbunTnzyK2HxrAOFUVjIw6u9KTr/pMkzMFLA8xmeLMhD1R2M3paTh5ecBV3t1A9vPiIBW5l1x8S3pNO+OxSFsA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718116498; c=relaxed/simple;
	bh=blPdVSe21Le8b1W9kV5YemQ6VUybCSIEpbZeLk7yVeE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bnaOfpNMrnh0rQmyLW7i18d6rQMlsuEfsSGvlx1AwAhlqdyjX6cyStQ04E84UeZeKAzQnFzBK1zW+9bWCQSJg7VKFPQoUdY+AevNWHj5nbjB6VK1gO3oI0yIoU80I0n5WFLTm6FXTvk4fZpZ8CngBMLH91rbmW7fBCFU7keEnnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tp5whvbw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDA40C2BD10;
	Tue, 11 Jun 2024 14:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718116497;
	bh=blPdVSe21Le8b1W9kV5YemQ6VUybCSIEpbZeLk7yVeE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tp5whvbwGJ1TK+DeuhYUFGf2Kb7jgLZtrFsWd6RTHt9wfgmm7SqcIcXfolxcWdGg9
	 9dH2MUYIEH/p/D9DM5pC69YWjvTZnGhb6/O6KFlIhJPwDNn7ngiTAlsgFu449+zO+3
	 xNdr1yvqB7JARz/DdW51X8m7lMWlFYLu5XagBfVEl2FqXLSOoNdNc/YaxqLj5ionHC
	 /VJpkRHE8USphjkMJi1p6lvY0FDjUryQX8S2dIwF4VrPA1ibjUpegZM8mLW39Ufgr0
	 WLNp2qHo7Bm+qz61hjKH8812dWLlrOfaN1chiJKwY0dsINbs0jEBX+Zang8Z/vLl6Q
	 49nXRoib5/87A==
Date: Tue, 11 Jun 2024 16:34:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Joe Damato <jdamato@fastly.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <6ghtfloubcjb3x43e2kxdmeqgbajgllfzmk2vhwy7bfzs5cbge@vq54kljkn6sp>
References: <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
 <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
 <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>
 <ZmdfD-UUhVkyws1w@LQ3V64L9R2>
 <uz4vtiy24yaisc3j5bvb66ezk2og32l3hawsx4rwp3ehgxp4cr@nvzwqlbbkhoz>
 <20240611123950.qmc6m2rlrlst5cfg@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ltm4z3ne4thkzzw6"
Content-Disposition: inline
In-Reply-To: <20240611123950.qmc6m2rlrlst5cfg@illithid>


--ltm4z3ne4thkzzw6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Joe Damato <jdamato@fastly.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
References: <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
 <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
 <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>
 <ZmdfD-UUhVkyws1w@LQ3V64L9R2>
 <uz4vtiy24yaisc3j5bvb66ezk2og32l3hawsx4rwp3ehgxp4cr@nvzwqlbbkhoz>
 <20240611123950.qmc6m2rlrlst5cfg@illithid>
MIME-Version: 1.0
In-Reply-To: <20240611123950.qmc6m2rlrlst5cfg@illithid>

On Tue, Jun 11, 2024 at 07:39:50AM GMT, G. Branden Robinson wrote:
> Hi Alex,

Hi Branden,

> groff 1.22.4 did have, by my count, over 400 bugs in it that groff
> 1.23.0 fixed.[1]  However this is not one of them.  groff 1.23.0 still
> complains.

Hummm.

> Let us recall what "adjustment" is in typography.
>=20
> 5.1.5 Adjustment
> ----------------
>=20
> After GNU 'troff' performs an automatic break, it may then "adjust" the
> line, widening inter-word spaces until the text reaches the right
> margin.  Extra spaces between words are preserved.  Leading and trailing
> spaces are handled as noted above.  Text can be aligned to the left or
> right margin only, or centered; see *note Manipulating Filling and
> Adjustment::.
>=20
> > > troff: .tmp/man/man2/s390_sthyi.2:124: warning [p 2, 2.8i]: cannot ad=
just line
>=20
> What is at line 124 of this document?
>=20
> $ cat -n ./man2/s390_sthyi.2 | sed -n '120,125p'
>    120  .SH NOTES
>    121  For details of the STHYI instruction, see
>    122  .UR https://www.ibm.com\:/support\:/knowledgecenter\:/SSB27U_6.3.=
0\:/com.ibm.zvm.v630.hcpb4\:/hcpb4sth.htm
>    123  the documentation page
>    124  .UE .
>    125  .P
>=20
> >> cannot adjust line
>=20
> This is a legitimate diagnostic arising from a ridiculously long URL
> colliding with the formatter's frustrated attempt to adjust the output
> line.  Here's how that renders.
>=20
> NOTES
>        For  details  of  the  STHYI  instruction,  see  the documentation=
 page
>        =E2=9F=A8https://www.ibm.com/support/knowledgecenter/SSB27U_6.3.0
>        /com.ibm.zvm.v630.hcpb4/hcpb4sth.htm=E2=9F=A9.

I see:

NOTES
     For details of the STHYI instruction, see the documentation page.

In xfce4-terminal(1), that's an underdotted hyperlink.  In xterm(1), I
see the same, but it's not underdotted, and seems not clickable.

Why am I unable to see the explicit URI?  That seems the reason why
I can't reproduce the warning.

> Not much the formatter can do about this monstrosity.  People with
> crazily wide terminal windows, or with adjustment of man pages disabled
> (a groff 1.23.0 feature)[2] won't experience the warning.
>=20
> You _could_ make it less obnoxious in the source document with input
> line continuation.
>=20
> .UR https://www.ibm.com\:/support\:/knowledgecenter\:/SSB27U_6.3.0\:/\
> com.ibm.zvm.v630.hcpb4\:/hcpb4sth.htm

I don't like breaking URIs.  I'll accept the warning and add it as an
XFAIL.  However, I'd like to be able to reproduce it.  :|

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ltm4z3ne4thkzzw6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZoYIgACgkQnowa+77/
2zL5hQ//RD6SaCeIM0ymtgAV7685bWQxaI8JwaIK0OoLr3km4JWz+amtc+m1k5EP
ZJ3A3AsPiJ1pznN+1LhV0ubQow/2Zfxa6m58BBNIPy98wjo2wYLdWsGSKKvXZgWW
ALXpGl/j6G8CzzEg+qKa7oWEJDVG0WfhTrzO9Cv9h6s+t3lrBJ6vKEbjcRSOpSqf
dvx4Cjrj7Vjalbg3lMNY4N4J3tUekXeRyMoZEjA1NxkPQ9By05dqlKtHT9BvxdYe
BrdIZdCfE8w5isIfTgzz+RbUSYgXMMnxzDKbDFZK7q94GG+liAJkSWuR2A37x+cE
/j0uHbcbncEy8kjnjV8pjfkcrti0w3Ml3d3IM7+KTuicNQ7PyRoRi1X+Hd5HS3/l
NbaQOiqkgmahtj1LLJmRe4gNXslTi2jRxsFIdH9W+AzMsFFqkqDGNv875FAzDyI6
9tM7Zfmoe9cS4tMgsjnK4oOThG3VeQ4qpZF5Mm0xwoe622uS4DqaEpJf3y2l3TcK
BWKmHN8uXme2qGe3f/JsHO5pgF9hhlvlTvmd5J/XesGVMyHzjVGyia5qTnAVL5Ax
xNTLFUveXv2PgKDeBwIEtx2teYQxKZE9zUxw/xEFZveN8S7mRZvP6MqJ3iz20Q65
QVF3+aG3VD9zJNFw0B3Ua/9xV1HBoT3SFAAtFeM6PuUn+l+QWCg=
=vYIh
-----END PGP SIGNATURE-----

--ltm4z3ne4thkzzw6--

