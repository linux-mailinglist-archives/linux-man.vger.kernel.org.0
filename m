Return-Path: <linux-man+bounces-4353-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 582DAC983CD
	for <lists+linux-man@lfdr.de>; Mon, 01 Dec 2025 17:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 27282342B5C
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 16:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CFAB31CA68;
	Mon,  1 Dec 2025 16:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOHiZ3K9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0E4334C28
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 16:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764606412; cv=none; b=k2OnU2W01Dh96MdQZQAVwAIii30SdhESyFm8zDv7I/0kUDFwW+MJyQ3iPMv0M48Dn/UNQC6kAPy47pfkhc3v+/olMwILfUGAGuBrDi81Owseog/r1aVbuR9L5s02gtZYDmu3mC/fsAuRPD25q6+CqiFckRQkA/6XfgOFHvykdIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764606412; c=relaxed/simple;
	bh=d3teryYjE4fzhAad+oTbjrmA8JrvctUXm9HMJEcv5g4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EzyKjaPTmMcBm5D65vQx0WpFfvItIVHAO0K56MOYiXJHiw7ON+q27Y1Jy57jsvjVVKLuqQmbp3LL+nNwhcAW5wDdfeNxuUgr+RBXxJtG0p+asNC+zWXJvDeShEN/wCbIpGbscJJVtjfFx1zkoyhEExtUfPOnl0i8zuUj82hXMD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOHiZ3K9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7423C16AAE;
	Mon,  1 Dec 2025 16:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764606412;
	bh=d3teryYjE4fzhAad+oTbjrmA8JrvctUXm9HMJEcv5g4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nOHiZ3K9SnecbWQt8ievvuE6OFBX08WsTV++LjTFWRNn6sx2KeasJ9MlS1R70/pg7
	 oK4ifASp8XMof6z/W9iF12uWWUNprE8JbyfgrUwbJ4z/w0edNEM31meodBhIQMTpck
	 tFEfp201E2kqwa53lU0O7XbDbz8JvRoPFje7KDIM64WpjaP68+ecoHWhbDlOzKADqd
	 wN2xuleFrWdOJzzhjgoxKeRitPyU/Cy2pnN5OikLksGVaXUOsYq/K5QoPWo1lsuPjP
	 TmPOmqa9Swzp7M+rEJ1tYqYNtrJqaYNsrm6VKkj4e18+4LpyZOWA94aYzYeg7c/LEb
	 rlj+DidLeimzA==
Date: Mon, 1 Dec 2025 17:26:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/ip.7: don't say that bind(INADDR_BROADCAST) is
 the same as bind(INADDR_ANY)
Message-ID: <jeuvylj3edngnksq26whqf2g4mftwngpuzi6ezyietnrojsqll@idck6xh4acbz>
References: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>
 <ib4uvgl23a6hscpgrvojt2fq2dprgzrfhbh2sx34hkkrfuhxbo@l5cyrhbdbohm>
 <bdnf2pp3hxvw4n6274xv7qfbn6vvtfzzb3hfmenuhob3kmqkau@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fdhd6thvrrqgkfsr"
Content-Disposition: inline
In-Reply-To: <bdnf2pp3hxvw4n6274xv7qfbn6vvtfzzb3hfmenuhob3kmqkau@tarta.nabijaczleweli.xyz>


--fdhd6thvrrqgkfsr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/ip.7: don't say that bind(INADDR_BROADCAST) is
 the same as bind(INADDR_ANY)
Message-ID: <jeuvylj3edngnksq26whqf2g4mftwngpuzi6ezyietnrojsqll@idck6xh4acbz>
References: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>
 <ib4uvgl23a6hscpgrvojt2fq2dprgzrfhbh2sx34hkkrfuhxbo@l5cyrhbdbohm>
 <bdnf2pp3hxvw4n6274xv7qfbn6vvtfzzb3hfmenuhob3kmqkau@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <bdnf2pp3hxvw4n6274xv7qfbn6vvtfzzb3hfmenuhob3kmqkau@tarta.nabijaczleweli.xyz>

On Mon, Dec 01, 2025 at 03:09:49PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > Fixes: commit fea681dafb136 ("Import of man-pages 1.70")
> >=20
> > Let's be a bit more specific:
> >=20
> > 	Fixes: fea681dafb13 (2004-11-03, 2004-11-03; "Import of man-pages 1.70=
")
> > 	Fixes: 3c5f99be9759 (1999-11-28, 2022-12-19; "man-pages 1.28")
> >=20
> > Since we have the prehistory branch which has one commit per pre-1.70
> > release.
> (conveniently, not blameable from master!)

Yup, that would need rewriting history.

> Blames to
> 	commit 3c5f99be97598106d12ea357b05a712a0b44c5e3
> 	Author: Kr=C3=B3nos <Kr=C3=B3nos@S=C4=81turnus>
> 	Date:   Sun Nov 28 05:16:00 1999 +0100
> =09
> 	    man-pages 1.28
> =09
> 	    Link: <https://www.win.tue.nl/~aeb/ftpdocs/linux-local/manpages.arch=
ive/>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> which adds it alongside the other INADDR_*s, noting only
> 	+Differences from version 1.27:
> 	+       ip.7 iso_8859-2.7 netdevice.7 packet.7 signal.7 socket.7 unix.7
> 	+    are new or have been updated.
> 	+    Typographical or grammatical errors have been corrected in several =
other places.

It seems it was just wong.


Cheers,
Alex

>=20
> > > --- a/man/man7/ip.7
> > > +++ b/man/man7/ip.7
> > > @@ -199,11 +199,6 @@ .SS Special and reserved addresses
> > >  means any address for socket binding;
> > >  .TP
> > >  .BR INADDR_BROADCAST " (255.255.255.255)"
> > > -has the same effect on
> > > -.BR bind (2)
> > > -as
> > > -.B INADDR_ANY
> > > -for historical reasons.
> >=20
> > Was this ever true?  Has the behavior ever changed?  It would be
> > interesting to know if this documentation is just bogus, or if we should
> > document some historic details.
> No clue but I'd expect POSIX to mention this if it were real outside Linu=
x.
>=20
> And I don't think this was real on Linux because it wasn't real in Linux =
1.2.13
> (where bind(BROADCAST) actually fails instead of being a no-op):
> 	$ cat a.BROADCAST.c=20
> 	#include <netinet/in.h>
> 	#include <netinet/udp.h>
> 	#include <sys/socket.h>
> 	int main() {
> 	  int sock =3D socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
> 	  int true =3D 1;
> 	  struct sockaddr_in addr;
> 	  char buf[512];
> 	  setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &true, sizeof(true));
> 	  addr.sin_family =3D AF_INET;
> 	  addr.sin_port =3D htons(123);
> 	  addr.sin_addr.s_addr =3D INADDR_BROADCAST;
> 	  bind(sock, &addr, sizeof(addr));
> =09
> 	  recv(sock, buf, sizeof(buf), 0);
> 	}
> 	$ diff a.*c
> 	12c12
> 	<   addr.sin_addr.s_addr =3D INADDR_ANY;
> 	---
> 	>   addr.sin_addr.s_addr =3D INADDR_BROADCAST;
> 	$ cc -I /usr/src/kernel-headers-1.2.13/include/ a.BROADCAST.c -o a.BROAD=
CAST
> 	a.BROADCAST.c: In function `main':
> 	a.BROADCAST.c:13: warning: passing arg 2 of `bind' from incompatible poi=
nter type
> 	$ cc -I /usr/src/kernel-headers-1.2.13/include/ a.ANY.c -o a.ANY =20
> 	a.ANY.c: In function `main':
> 	a.ANY.c:13: warning: passing arg 2 of `bind' from incompatible pointer t=
ype
> 	$ dpkg -l includes libc gcc
> 	Desired=3DUnknown/Install/Remove/Purge
> 	| Status=3DNot/Installed/Config-files/Unpacked/Failed-config/Half-instal=
led
> 	|/ Err?=3D(none)/Hold/Reinst-required/X=3Dboth-problems (Status,Err: upp=
ercase=3Dbad)
> 	||/ Name         Version   Rev  Description
> 	+++-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D-=3D=3D=3D=3D=3D=3D=3D=3D=3D-=3D=
=3D=3D=3D-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> 	ii  includes        1.2.13 4    Linux kernel headers, if you aren't inst=
alling=20
> 	iU  libc            4.6.27 6    The Linux C library.
> 	iU  gcc              2.6.3 4    The GNU C compiler.
> 	$ uname -a
> 	Linux 0.93R6 1.2.13 #2 Wed Oct 4 17:35:14 EST 1995 i686
> =09
> 	# strace ./a.ANY
> 	uselib("/lib/ld.so")                    =3D 0
> 	getuid()                                =3D 0
> 	geteuid()                               =3D 0
> 	getgid()                                =3D 0
> 	getegid()                               =3D 0
> 	stat("/etc/ld.so.cache", {st_mode=3DS_IFREG|0644, st_size=3D455, ...}) =
=3D 0
> 	open("/etc/ld.so.cache", O_RDONLY)      =3D 3
> 	mmap(0, 455, PROT_READ, MAP_SHARED, 3, 0) =3D 0x50000000
> 	close(3)                                =3D 0
> 	uselib("/lib/libc.so.4.6.27")           =3D -1 ENOENT (No such file or d=
irectory)
> 	uselib("/usr/lib/libc.so.4")            =3D -1 ENOENT (No such file or d=
irectory)
> 	uselib("/lib/libc.so.4")                =3D 0
> 	munmap(0x50000000, 455)                 =3D 0
> 	munmap(0x62f00000, 20480)               =3D 0
> 	brk(0)                                  =3D 0x3000
> 	socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP) =3D 3
> 	setsockopt(3, SOL_SOCKET, SO_REUSEADDR, [1], 4) =3D 0
> 	bind(3, {sin_family=3DAF_INET, sin_port=3Dhtons(123), sin_addr=3Dinet_ad=
dr("0.0.0.0")}, 16) =3D 0
> 	recv(3,
> =09
> 	# strace ./a.BROADCAST
> 	uselib("/lib/ld.so")                    =3D 0
> 	getuid()                                =3D 0
> 	geteuid()                               =3D 0
> 	getgid()                                =3D 0
> 	getegid()                               =3D 0
> 	stat("/etc/ld.so.cache", {st_mode=3DS_IFREG|0644, st_size=3D455, ...}) =
=3D 0
> 	open("/etc/ld.so.cache", O_RDONLY)      =3D 3
> 	mmap(0, 455, PROT_READ, MAP_SHARED, 3, 0) =3D 0x50000000
> 	close(3)                                =3D 0
> 	uselib("/lib/libc.so.4.6.27")           =3D -1 ENOENT (No such file or d=
irectory)
> 	uselib("/usr/lib/libc.so.4")            =3D -1 ENOENT (No such file or d=
irectory)
> 	uselib("/lib/libc.so.4")                =3D 0
> 	munmap(0x50000000, 455)                 =3D 0
> 	munmap(0x62f00000, 20480)               =3D 0
> 	brk(0)                                  =3D 0x3000
> 	socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP) =3D 3
> 	setsockopt(3, SOL_SOCKET, SO_REUSEADDR, [1], 4) =3D 0
> 	bind(3, {sin_family=3DAF_INET, sin_port=3Dhtons(123), sin_addr=3Dinet_ad=
dr("255.255.255.255")}, 16) =3D -1 EADDRNOTAVAIL (Cannot assign requested a=
ddress)
> 	recv(3,=20
> (I made a program that does sendto(ADDR_BROADCAST) and none of them
>  caught it, but I may well be holding it wrong and/or have my VM
>  misconfigured.)
>=20
> But there's lots of room for history between 1995 and 1999.
>=20
> > (If you don't know, let's assume it was bogus; we can always come back
> >  to this in the future, if we learn about it.)
>=20
> Best,



--=20
<https://www.alejandro-colomar.es>

--fdhd6thvrrqgkfsr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmktwcMACgkQ64mZXMKQ
wqn4rQ//bGEFp7RQQzgKqnxddO5lSVCuo/XFJ1dfsQS2k0IWX5HshNMkt0zrIAdo
WSF+rrqQjaDfLTqXRmeVupFbVostsL82t69RLhOzgt6StJbFjKRFUvtXK/bZWW+F
x6YmbvdVdJOPNBV+SfjBRqTJ0KX6C03n5PVwClMpRgDLWfw9PuWlxMjPtjTZLfIz
5Oo92GBeJqCrcM4XkIbp+zcVvQzVfQhEpdKVrVYFnOARhZacuCKV1q6S2NIEQT9c
GHikO1CpjT8ortYBU7Vuttt7gtrXdxSxAFaCbfk7rl/yCv55KtYRnuFypw27HdGK
t4vkXa2Eu3JtnivSHCE4+HCdLnhYSEmqzsIP9+9VZVWMwCPNqCmFPPE2Cgb8e802
6LHmhTEJclGox0DKcJqoOBJxtRcFs7FAP+A0PrjpvxcmeEDHAD/CjaMeVgBbaR9j
lYG0BITubcGUPJ+GfReknQywoVWossRSX4xz+B8D6TOq2jpeVmQzHF+0kb5Fp4pl
cq3m04gcT5zat+2r8UyPoN7ni5b5RX4sZalYhH5vgseGQ0DijqoIFUHWWxtNhPeK
dSoMuco9RhO/yKKEusQAbSqOmdxienIAaTsTCqGwThMnkHNBoZbngsy0XMpQW8h/
1Z82Lzzn5Vv34MQfayvA4pFbP8hWFGxSmFJVwPxTEa/4CQr0lFs=
=P9OJ
-----END PGP SIGNATURE-----

--fdhd6thvrrqgkfsr--

