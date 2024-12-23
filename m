Return-Path: <linux-man+bounces-2177-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3109FB60F
	for <lists+linux-man@lfdr.de>; Mon, 23 Dec 2024 22:30:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 772EA164DAB
	for <lists+linux-man@lfdr.de>; Mon, 23 Dec 2024 21:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65DB1C4A34;
	Mon, 23 Dec 2024 21:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjMOVR6d"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D2761FFE
	for <linux-man@vger.kernel.org>; Mon, 23 Dec 2024 21:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734989399; cv=none; b=UmHJJuwqGeEsJSqMDQHfPtc+2cP6MgAxyOLbSHh28xZWALi38fSJHMxWoEqTNct7US77+kM/vfSb+zvZGksX3aMN5iQ3epn9WJA/BqlBEAGX2QqvcF1k0HndYCU3y/ja1RCU0gEraYKX6LiJsX1taVtlTZqxG52nwKaPclCcuIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734989399; c=relaxed/simple;
	bh=Hi9XK7y4wORxmFiY+oLXPm7uw+dttb0pJSEB+XFuCHY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uiGShZwkR6Kni8xeFVY2cNNOiM/tpnK++CIAFvMvpPGpngm5IbmpKsTU68dfck4Jq/sknO6Q4qsHYsAbsczf676p7JUtvE5uncAYqn080UEjYZbA1TG5Wi4+8C67KAZMGwQysgEb1hMf4dkaseGOMTs1Je4eai47LpaUyYiRBPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjMOVR6d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BCC1C4CED3;
	Mon, 23 Dec 2024 21:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734989399;
	bh=Hi9XK7y4wORxmFiY+oLXPm7uw+dttb0pJSEB+XFuCHY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mjMOVR6dfNBi8mln7V9YU1ZR1Tde1/5mG/ISP8HUVCPFZYQ8qCWDcG1xxfJ7zxEeq
	 vPIkEROSn4viDw83ecDHmumPhjEdghFw3+gKkD3yQ47Ecu7HVKtIUjH34H5HMF4yVm
	 7luTni98TMnxwRR5lI1bbpKrVWeIaNUnZSPTwH9dpvy+m/SQmu8dHwpXXA2FQAGrnf
	 4z+KCYHp4bmrWg3cAsg/S87oMBJObcF1MciD44DUm/BnpboaKUGLpSwTM4/Ok/R5AH
	 drIuFgLTqyNCZcMr+dJ5ibj9AD3vMHH09UKz9lZm///QVPuaz5+N5BzlzmWnyqcm17
	 F1UYnAm0QCC9Q==
Date: Mon, 23 Dec 2024 22:29:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Cyril Hrubis <chrubis@suse.cz>
Cc: David Howells <dhowells@redhat.com>, linux-man@vger.kernel.org
Subject: Re: ioctl_pipe(2): SYNOPSIS: $1
Message-ID: <ffjzjxeeip52tjseiexesoypjhrhvr2s7zo34zyosptbg34skx@yd6d2kexfjph>
References: <20241214180348.pp4vrlnxqpo6cus6@devuan>
 <20241214180423.2thsuyyfosrlyajb@devuan>
 <Z1__sIy3Kyka0nrS@yuki.lan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mc6wjjury5ysabtg"
Content-Disposition: inline
In-Reply-To: <Z1__sIy3Kyka0nrS@yuki.lan>


--mc6wjjury5ysabtg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Cyril Hrubis <chrubis@suse.cz>
Cc: David Howells <dhowells@redhat.com>, linux-man@vger.kernel.org
Subject: Re: ioctl_pipe(2): SYNOPSIS: $1
References: <20241214180348.pp4vrlnxqpo6cus6@devuan>
 <20241214180423.2thsuyyfosrlyajb@devuan>
 <Z1__sIy3Kyka0nrS@yuki.lan>
MIME-Version: 1.0
In-Reply-To: <Z1__sIy3Kyka0nrS@yuki.lan>

Hi Cyril,

On Mon, Dec 16, 2024 at 11:23:44AM GMT, Cyril Hrubis wrote:
> Hi!
> > > The manual page ioctl_pipe(2) has this synopsis:
> > >=20
> > >        int ioctl(int pipefd[1], IOC_WATCH_QUEUE_SET_SIZE, int size);
> > >        int ioctl(int pipefd[1], IOC_WATCH_QUEUE_SET_FILTER,
> > >                  struct watch_notification_filter *filter);
> > >=20
> > > Which says the $1 is an array of int (the type is declared as int[1]).
> > > However, this is incorrect, since the first argument is of course a
> > > plain int, a single file descriptor.  Would you mind revising the pag=
e?
>=20
> That looks indeed wrong, I suppose that we need just 'int pipefd' there.
>=20
> And looking at the kernel both pipe file descriptors seems to get the
> exact same fops so it shouldn't matter on which end we call the ioctl().

Thanks!  I've applied the patch below.

Have a lovely night!
Alex

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db199d102db5be24e0ac88eb6879e3e3b6e0ea722>
	commit b199d102db5be24e0ac88eb6879e3e3b6e0ea722 (HEAD -> contrib, alx/cont=
rib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Mon Dec 23 22:25:54 2024 +0100

	    man/man2/ioctl_pipe.2: SYNOPSIS: Fix $1, which is not an array paramet=
er
	   =20
	    Link: <https://lore.kernel.org/linux-man/20241214180423.2thsuyyfosrlya=
jb@devuan/T/#u>
	    Reported-by: Alejandro Colomar <alx@kernel.org>
	    Suggested-by: Cyril Hrubis <chrubis@suse.cz>
	    Cc: David Howells <dhowells@redhat.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2/ioctl_pipe.2 b/man/man2/ioctl_pipe.2
	index 5f5c42652..fc15e1511 100644
	--- a/man/man2/ioctl_pipe.2
	+++ b/man/man2/ioctl_pipe.2
	@@ -10,8 +10,8 @@ .SH SYNOPSIS
	 .BR "#include <linux/watch_queue.h>" "  /* Definition of " IOC_WATCH_QUEU=
E_ "* */"
	 .B #include <sys/ioctl.h>
	 .P
	-.BI "int ioctl(int " pipefd "[1], IOC_WATCH_QUEUE_SET_SIZE, int " size );
	-.BI "int ioctl(int " pipefd "[1], IOC_WATCH_QUEUE_SET_FILTER,"
	+.BI "int ioctl(int " pipefd ", IOC_WATCH_QUEUE_SET_SIZE, int " size );
	+.BI "int ioctl(int " pipefd ", IOC_WATCH_QUEUE_SET_FILTER,"
	 .BI "          struct watch_notification_filter *" filter );
	 .fi
	 .SH DESCRIPTION

>=20
> --=20
> Cyril Hrubis
> chrubis@suse.cz
>=20

--=20
<https://www.alejandro-colomar.es/>

--mc6wjjury5ysabtg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdp1lMACgkQnowa+77/
2zL9Bg//VZWlZhb4wOJnsTdouOhFCIfuj2syprBvkifk0FKfC9/+FwKk+Pl6cAKi
zMiD+qE4twb17DY6VEyE6SETiqYg2GEsYxZ2Df2+/F9ywgmMcj62WXCEg14k7mxJ
uZrk7ov5kVcLq0QL2TE/355F94PKUc5wMuruaQbxlsy8A71CR4Cy+6/+EzELnB88
6nBF2GPg0t+GrIUnCDKTiQbYdhKQoF6FVYxbf+i3bh9Nj5ej/6AyA3qV6zC8zAxh
VXyc4tJqNJGgxlYDaWisYK3Rw9utrpji/t6fHDyXSJWM9k+c5XB6rFo60GvfKHcZ
StnYAoTd42SgqlfjfupIqSv324U5LYRs8vYCfbfqelKIz8xuruA1sQz1f6vxoCux
3mMltBzZNRyAj4no2/pS9kDYeTY85EiSAeGham32/eraYAr7CPTtbcqIyXxz2DzS
8VWWfJLWEeGb48MF4miZM+CYjYkZmlCBUn3JBYUEsUm4C3+9AZqndWGpMO+UYGML
9ZZ4xkza1fNQAh6wwgbcFNbzy/k7GRsXM+owWid9U2cIjMvrgc2oTBmXvceCYgDX
rm4o6DqAWwIuerMm1Hkd+aJKjjs/Ch8u4zwlEcajil5BjiAdbcRdWOv+HuKRRBZR
Rf7TiXXk8g70UKwmPy1VueLzl84cI3vgvV73/CN9AA3L4dbkx/I=
=/Bpo
-----END PGP SIGNATURE-----

--mc6wjjury5ysabtg--

