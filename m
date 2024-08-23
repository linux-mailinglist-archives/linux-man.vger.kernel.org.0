Return-Path: <linux-man+bounces-1686-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E90B95D7D0
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 22:27:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE0B82874DD
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 20:27:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EABF0194AFA;
	Fri, 23 Aug 2024 20:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZG4HqAjo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F4E194AD9
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 20:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724444846; cv=none; b=kCPzv63QGNqrQvA5QbPatMoTHXutQiSNBo7BKhD8AiUlvqVwG2AnhvBIhPLzA9xbVSJfX/5csB9vxhnrOzeunO7nK/Uvz/F0oeU0LDOIfk7mbRu2zeVuInnI74WydnfSkE/Ot4Zl8zHEgRzhJqngfKHJABYceWdcrbtL47TmqYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724444846; c=relaxed/simple;
	bh=DX8vYIDpKyfQ+tgRrN/9StgrUd+OoV8NUilnlZLT8kE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K7o/nmJEz1d4NjN7EsJjbiA+evuaT/xvmKUj7bBMjM6EMtHUuSqwcRPUOcJbNg4rkXqKb4BaPv0ybHbbyf6o+L6xklwD8pGszbYfzkLnEub/ctpTAcUm2MMpHHnJw/jH7EuukyobtIn4eTtCEw/5qe42mUtHp9/fOXqNqw/9HM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZG4HqAjo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5086BC4AF09;
	Fri, 23 Aug 2024 20:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724444844;
	bh=DX8vYIDpKyfQ+tgRrN/9StgrUd+OoV8NUilnlZLT8kE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZG4HqAjoJ6MHH5XYodM1ACoIopidRWX1yx0aXGIorxH9VNOigtFLz//3bx3fkaoXs
	 Rx9EaSGefIUW4uZBBsA8q7XZL4ZfpSzSGVrYRofNW1p/400L+dH6oYh2tBaqR6kcr+
	 6H3zk3XHd8aDTtImGK385y7IJeO1pG2LGV32NAMTm3XWKFntqOt8fZIqFixb2/xIZt
	 ssoJ4SSsLBgWqNZCyv1CrBBfI4mP+Z38ddSh0OQtEcmGCLyb9zAY4c4ywCj9NcMUKl
	 +tNMG+XdeeUywneM6/GPC06qTi/R91pHNOWjMS9M4kuxg9QHsCoFWjjpV3WA4FJONo
	 k4h/K/z3PX6Uw==
Date: Fri, 23 Aug 2024 22:27:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: carlos@redhat.com, dj@redhat.com, eggert@cs.ucla.edu, 
	jens.gustedt@inria.fr, libc-alpha@sourceware.org, rcseacord@gmail.com, 
	vincent@vinc17.net, xry111@xry111.site
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <6un6baaq5tez23irtycuvzqtuh7a4sdrf2px7tnyb3y6iqoxmq@2ofln4cd27ep>
References: <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <331b41ea-dce5-414d-8588-9e4e2a59dedd@SystematicSW.ab.ca>
 <jqdmfoxuecuevujyv66eyzg3xsvfhou4hhvvi5bachy4dujnhu@gwcgwegj7qml>
 <e6395fed-ec28-41a2-bd48-ba6db2389a85@SystematicSW.ab.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fovafpn7qp55imvt"
Content-Disposition: inline
In-Reply-To: <e6395fed-ec28-41a2-bd48-ba6db2389a85@SystematicSW.ab.ca>


--fovafpn7qp55imvt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: carlos@redhat.com, dj@redhat.com, eggert@cs.ucla.edu, 
	jens.gustedt@inria.fr, libc-alpha@sourceware.org, rcseacord@gmail.com, 
	vincent@vinc17.net, xry111@xry111.site
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
References: <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <331b41ea-dce5-414d-8588-9e4e2a59dedd@SystematicSW.ab.ca>
 <jqdmfoxuecuevujyv66eyzg3xsvfhou4hhvvi5bachy4dujnhu@gwcgwegj7qml>
 <e6395fed-ec28-41a2-bd48-ba6db2389a85@SystematicSW.ab.ca>
MIME-Version: 1.0
In-Reply-To: <e6395fed-ec28-41a2-bd48-ba6db2389a85@SystematicSW.ab.ca>

Hi Brian,

On Fri, Aug 23, 2024 at 12:31:01PM GMT, Brian Inglis wrote:
> On 2024-08-23 08:25, Alejandro Colomar wrote:
> > Hi Brian,
> >=20
> > On Fri, Aug 23, 2024 at 08:04:20AM GMT, Brian Inglis wrote:
> > > AFAICS from 9899 1998 Draft to 2023, the *mktime* wording has been es=
sentially:
> >=20
> > I find the above confusing.  What is 9899 1998?  The draft is for
> > ISO/IEC 9899:2024.  There's no 1998 in the name.
>=20
> Sorry for the typo - from the original *1988* Draft from ANSI X3J11 88-090
> 1988-05-13 of ANSI/ISO/IEC 9899:1990 through 2023.

Ahh, thanks!

>=20
> > > "The original values of the tm_wday and tm_yday components of the str=
ucture
> > > are ignored, and the original values of the other components are not
> > > restricted to the ranges indicated above. On successful completion, t=
he
> > > values of the tm_wday and tm_yday components of the structure are set
> > > appropriately,"
> >=20
> > The text you've quoted is there since ISO C89.
> > <https://port70.net/~nsz/c/c89/c89-draft.html#4.12.2.3>
> >=20
> > And that is not guarantee enough.  It says that wday and yday are
> > ignored (for the purposes of determining the return value).  And it says
> > that on success it modifies them.  But that text is silent about what
> > happens on error.
>=20
> It states they are set on successful completion, and implied left alone i=
f not.

ISO C leaves everything not explicitly stated as Undefined Behavior.  :)
Implied left alone is too optimistic.

>=20
> > It is C23 in 7.19.2.3p3 which provides a novel guarantee, that those
>              ^^^^^^^^^^
>              7.29.2.3.p3

Oops typo.  :)

>=20
> See "WD" https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#page=
=3D415
>=20
> > fields won't be modified on a failed call.
> >=20
> > >=20
> > > so the recommendation has been to do something like (pointless exampl=
e):
> > >=20
> > > 	time_t tt =3D time(&tt);
> > > 	struct tm *tm =3D localtime(&tt);
> > > 	tm->tm_wday =3D tm->tm_yday =3D -1;
> > > 	if ((tt =3D mktime(tm)) =3D=3D -1 && tm->tm_wday =3D=3D -1 && tm->tm=
_yday =3D=3D -1)
> >=20
> > This conditional, just like the one in the POSIX 2024 standard, is
> > redundant.  Reading tm_wday is enough for determining a failure.
> >=20
> > Otherwise, what would you expect if tm_yday is 4 but tm_wday is -1? Hal=
f an error? :)
>=20
> Checking both are still untouched guarantees an error!
> If one is set, it's a QoI bug, not an error ;^>

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--fovafpn7qp55imvt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbI8KgACgkQnowa+77/
2zJOkQ/9FXyEtq4QiLs2IExeqJDBegSWMm7r/mHea03KwPlp8WPMWUl2XwoV72Ov
uVyyZEiOQmtr3qeCA8n529xkPcCat/frpWPOcjmzQ+Tc88mualIzfS2slEOxixAR
le21eCVEe435fGpozT767my0G81JMFRKYLeYVymMF636l1MDTw8fG7WrWqg/fZRJ
/BaG5QzZR1zTBvcvRiRWBq85Ptx+dZR8xsYWTfxJE1YhJE1K4ArdC7cil2qMUwyQ
JCyd19k/zw4i8ogoBgNemtI7h5B0bo5T3vtUUWdIWoQOk4FPuE+H3LULOnBVbHxa
nroC79lL7MRUmZXjjj8h6cVlndFA1RgzXBi5oeSq4bSPKvK6rwOl2Xp7gScKV3Lg
ClNeHz8zBuxA29pcmFyF/V1cpvdz//fmYvXyTef91VXIbStG5GoPzBrJImGoAW2V
NYg138CbBkpwXY5aY8U+qVqVYaYss8+0FtyPngR77YcxS7LEV03iWkc4YMBk7G5Z
Q/uXKfAzQ0HB67WuhJrI8YqmXBt2u+0nRA8llzC5mwPfcpCJA5YI01FFBW2IOmwc
h7v1nrhJSbUDmbnOOAEZU/+EQV0YYutTTDzcrlnIyLGs9SqWiWQujoEzhEzZyuSl
RahBMZTd25U52ivMu/08+iUmml/YhuMELeNpfbISaTyVFIzG5PE=
=pWES
-----END PGP SIGNATURE-----

--fovafpn7qp55imvt--

