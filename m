Return-Path: <linux-man+bounces-4351-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B11F2C97C57
	for <lists+linux-man@lfdr.de>; Mon, 01 Dec 2025 15:10:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89E8A3A32A9
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 14:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 724E42DAFC8;
	Mon,  1 Dec 2025 14:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="FeIGykkk"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6891DE8BE
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 14:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764598200; cv=none; b=m8vlHRyTApBzy79AXk68qm+7JTqVhL/5Xd4H5v/JNPSoHXXWdSjf/U6PfLDhwAmpiiW+4e7zyhMUtHcylBj1WWg+Hj/jVbQ76YGO2piGZHktDhfcYdMDc99Tk3cdSOs5sf9xg9SiUeWUQoEeqGuLG4KvwZxcHJwKAYJlw/RV71k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764598200; c=relaxed/simple;
	bh=jKbj/fuN0nrZvrORigE5Wd6DwKPU+lI+MRQfwkAhCDQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c/KHDfkzOFaVXLxPaQ9mxFJderrkshhG56LsGVQDjhbdkaAowXeEPkKBHM5CqKObsOnsp74D6XxmT1VDgerp089xqaHa2GGxJt21Bcz/zcO8yktkov6cA0btKpk7VQdp5yinWLOPHRldJoqf+4Ew6TH7KNFnHKkJD6t8/e8aQ2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=FeIGykkk; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1764598189;
	bh=jKbj/fuN0nrZvrORigE5Wd6DwKPU+lI+MRQfwkAhCDQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FeIGykkkEWMbuGGCScAnK9DhPsPCaH8E1En4PaxChaChSMlWXGnBUAq7fw/6pgkLQ
	 S7iGRo+f2iEglZGpC3J3h8e5feqn7SUHV2tytNPnSuq03hQDMCFveOQ7QAWdycDDWy
	 jm+aK2YZnguPzYbhE1p7JOUQu/K9V0k9VSsygewOZ9LgP8+/pMFe5PrXPzyQcQiY7c
	 NkhfTz8xJuRUshnzP1fC1oBd0q3BiHIkH6SubtP1kFKOMdgO50abUGPv8+gMOr0sOU
	 kWRNl+fh+KacnevVe1Tr9pk8fBMXpmrZPj3UCqD39Amt4qfN6WlC1cCSHtafgcYH2W
	 lVN4pZvdNtyrw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 94847E718;
	Mon,  1 Dec 2025 15:09:49 +0100 (CET)
Date: Mon, 1 Dec 2025 15:09:49 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/ip.7: don't say that bind(INADDR_BROADCAST) is
 the same as bind(INADDR_ANY)
Message-ID: <bdnf2pp3hxvw4n6274xv7qfbn6vvtfzzb3hfmenuhob3kmqkau@tarta.nabijaczleweli.xyz>
References: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>
 <ib4uvgl23a6hscpgrvojt2fq2dprgzrfhbh2sx34hkkrfuhxbo@l5cyrhbdbohm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j7es2c23efv4my24"
Content-Disposition: inline
In-Reply-To: <ib4uvgl23a6hscpgrvojt2fq2dprgzrfhbh2sx34hkkrfuhxbo@l5cyrhbdbohm>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--j7es2c23efv4my24
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Dec 01, 2025 at 11:04:15AM +0100, Alejandro Colomar wrote:
> On Sun, Nov 30, 2025 at 05:52:16PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > Because it's patently not true: a program like
> > 	#include <netinet/in.h>
> > 	#include <netinet/udp.h>
> > 	#include <sys/socket.h>
> > 	int main() {
> > 		int sock =3D socket(AF_INET, SOCK_DGRAM | SOCK_CLOEXEC, IPPROTO_UDP);
> > 		setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &(int){1}, sizeof(int));
> > 		setsockopt(sock, SOL_SOCKET, SO_REUSEPORT, &(int){1}, sizeof(int));
> > 		bind(sock, (struct sockaddr *)&(struct sockaddr_in){.sin_family =3D A=
F_INET, .sin_port =3D htons(123), .sin_addr =3D INADDR_ANY}, sizeof(struct =
sockaddr_in));
>=20
> Minor quality-of-life comment: glibc accepts sockaddr_in without a cast:
Only with -D_GNU_SOURCE which is not the default on clang trunk:
	$ make a
	cc -fdebug-default-version=3D3    a.c   -o a
	a.c:8:51: warning: incompatible pointer types passing 'struct sockaddr_in =
*' to parameter of type 'const struct sockaddr *' [-Wincompatible-pointer-t=
ypes]
	    8 |                 bind(sock, /*(struct sockaddr *)*/&(struct sockadd=
r_in){.sin_family =3D AF_INET, .sin_port =3D htons(123), .sin_addr =3D INAD=
DR_ANY}, sizeof(struct sockaddr_in));
	      |                                                   ^~~~~~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	/usr/include/x86_64-linux-gnu/sys/socket.h:112:49: note: passing argument =
to parameter '__addr' here
	  112 | extern int bind (int __fd, __CONST_SOCKADDR_ARG __addr, socklen_t =
__len)
	      |                                                 ^
	1 warning generated.

> > 		uint8_t buf[512];
> > 		recv(sock, buf, sizeof(buf), 0);
> > 	}
> > will receive an NTP broadcast,
> > but if you s/INADDR_ANY/INADDR_BROADCAST/ it won't.
>=20
> Would you be able to compile the two programs (with _ANY and _BROADCAST)
> and run some shell session that shows that one receives it and the other
> doesn't?  Only if it would be easy for you.  Otherwise, I'll trust the
> below.
Hard to prove a negative, but they strace to:
	socket(AF_INET, SOCK_DGRAM|SOCK_CLOEXEC, IPPROTO_UDP) =3D 3
	setsockopt(3, SOL_SOCKET, SO_REUSEADDR, [1], 4) =3D 0
	setsockopt(3, SOL_SOCKET, SO_REUSEPORT, [1], 4) =3D 0
	bind(3, {sa_family=3DAF_INET, sin_port=3Dhtons(123), sin_addr=3Dinet_addr(=
"0.0.0.0")}, 16) =3D 0
	recvfrom(3, "%\4\6\347\0\0\3\35\0\0\1\232\300V\16C\354\330\22`\365s\216y\0=
\0\0\0\0\0\0\0"..., 512, 0, NULL, NULL) =3D 48
	exit_group(0)                           =3D ?
	+++ exited with 0 +++
vs
	socket(AF_INET, SOCK_DGRAM|SOCK_CLOEXEC, IPPROTO_UDP) =3D 3
	setsockopt(3, SOL_SOCKET, SO_REUSEADDR, [1], 4) =3D 0
	setsockopt(3, SOL_SOCKET, SO_REUSEPORT, [1], 4) =3D 0
	bind(3, {sa_family=3DAF_INET, sin_port=3Dhtons(123), sin_addr=3Dinet_addr(=
"255.255.255.255")}, 16) =3D 0
	recvfrom(3,                                     # this never resolves

> > Quoth POSIX.1-2024:
> > 	11252  The <netinet/in.h> header shall define the following symbolic c=
onstant for use as a destination
> > 	11253  address in the structures passed to connect( ), sendmsg( ), and=
 sendto( ):
> > 	11254  INADDR_BROADCAST   IPv4 broadcast address.
> > (this is one of two mentions of the symbol,
> >  the other is a RATIONALE for why no byte ordering is specified).
> >=20
> > Linux calls it
> > 	/* Address to send to all hosts. */
> > 	#define	INADDR_BROADCAST	((unsigned long int) 0xffffffff)
> > and AFAICT never uses it in the receive path
> > (except in RDS to reject bind(2)).
> >=20
> > Fixes: commit fea681dafb136 ("Import of man-pages 1.70")
>=20
> Let's be a bit more specific:
>=20
> 	Fixes: fea681dafb13 (2004-11-03, 2004-11-03; "Import of man-pages 1.70")
> 	Fixes: 3c5f99be9759 (1999-11-28, 2022-12-19; "man-pages 1.28")
>=20
> Since we have the prehistory branch which has one commit per pre-1.70
> release.
(conveniently, not blameable from master!)

Blames to
	commit 3c5f99be97598106d12ea357b05a712a0b44c5e3
	Author: Kr=C3=B3nos <Kr=C3=B3nos@S=C4=81turnus>
	Date:   Sun Nov 28 05:16:00 1999 +0100
=09
	    man-pages 1.28
=09
	    Link: <https://www.win.tue.nl/~aeb/ftpdocs/linux-local/manpages.archiv=
e/>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
which adds it alongside the other INADDR_*s, noting only
	+Differences from version 1.27:
	+       ip.7 iso_8859-2.7 netdevice.7 packet.7 signal.7 socket.7 unix.7
	+    are new or have been updated.
	+    Typographical or grammatical errors have been corrected in several ot=
her places.

> > --- a/man/man7/ip.7
> > +++ b/man/man7/ip.7
> > @@ -199,11 +199,6 @@ .SS Special and reserved addresses
> >  means any address for socket binding;
> >  .TP
> >  .BR INADDR_BROADCAST " (255.255.255.255)"
> > -has the same effect on
> > -.BR bind (2)
> > -as
> > -.B INADDR_ANY
> > -for historical reasons.
>=20
> Was this ever true?  Has the behavior ever changed?  It would be
> interesting to know if this documentation is just bogus, or if we should
> document some historic details.
No clue but I'd expect POSIX to mention this if it were real outside Linux.

And I don't think this was real on Linux because it wasn't real in Linux 1.=
2.13
(where bind(BROADCAST) actually fails instead of being a no-op):
	$ cat a.BROADCAST.c=20
	#include <netinet/in.h>
	#include <netinet/udp.h>
	#include <sys/socket.h>
	int main() {
	  int sock =3D socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
	  int true =3D 1;
	  struct sockaddr_in addr;
	  char buf[512];
	  setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &true, sizeof(true));
	  addr.sin_family =3D AF_INET;
	  addr.sin_port =3D htons(123);
	  addr.sin_addr.s_addr =3D INADDR_BROADCAST;
	  bind(sock, &addr, sizeof(addr));
=09
	  recv(sock, buf, sizeof(buf), 0);
	}
	$ diff a.*c
	12c12
	<   addr.sin_addr.s_addr =3D INADDR_ANY;
	---
	>   addr.sin_addr.s_addr =3D INADDR_BROADCAST;
	$ cc -I /usr/src/kernel-headers-1.2.13/include/ a.BROADCAST.c -o a.BROADCA=
ST
	a.BROADCAST.c: In function `main':
	a.BROADCAST.c:13: warning: passing arg 2 of `bind' from incompatible point=
er type
	$ cc -I /usr/src/kernel-headers-1.2.13/include/ a.ANY.c -o a.ANY =20
	a.ANY.c: In function `main':
	a.ANY.c:13: warning: passing arg 2 of `bind' from incompatible pointer type
	$ dpkg -l includes libc gcc
	Desired=3DUnknown/Install/Remove/Purge
	| Status=3DNot/Installed/Config-files/Unpacked/Failed-config/Half-installed
	|/ Err?=3D(none)/Hold/Reinst-required/X=3Dboth-problems (Status,Err: upper=
case=3Dbad)
	||/ Name         Version   Rev  Description
	+++-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D-=3D=3D=3D=3D=3D=3D=3D=3D=3D-=3D=
=3D=3D=3D-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
	ii  includes        1.2.13 4    Linux kernel headers, if you aren't instal=
ling=20
	iU  libc            4.6.27 6    The Linux C library.
	iU  gcc              2.6.3 4    The GNU C compiler.
	$ uname -a
	Linux 0.93R6 1.2.13 #2 Wed Oct 4 17:35:14 EST 1995 i686
=09
	# strace ./a.ANY
	uselib("/lib/ld.so")                    =3D 0
	getuid()                                =3D 0
	geteuid()                               =3D 0
	getgid()                                =3D 0
	getegid()                               =3D 0
	stat("/etc/ld.so.cache", {st_mode=3DS_IFREG|0644, st_size=3D455, ...}) =3D=
 0
	open("/etc/ld.so.cache", O_RDONLY)      =3D 3
	mmap(0, 455, PROT_READ, MAP_SHARED, 3, 0) =3D 0x50000000
	close(3)                                =3D 0
	uselib("/lib/libc.so.4.6.27")           =3D -1 ENOENT (No such file or dir=
ectory)
	uselib("/usr/lib/libc.so.4")            =3D -1 ENOENT (No such file or dir=
ectory)
	uselib("/lib/libc.so.4")                =3D 0
	munmap(0x50000000, 455)                 =3D 0
	munmap(0x62f00000, 20480)               =3D 0
	brk(0)                                  =3D 0x3000
	socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP) =3D 3
	setsockopt(3, SOL_SOCKET, SO_REUSEADDR, [1], 4) =3D 0
	bind(3, {sin_family=3DAF_INET, sin_port=3Dhtons(123), sin_addr=3Dinet_addr=
("0.0.0.0")}, 16) =3D 0
	recv(3,
=09
	# strace ./a.BROADCAST
	uselib("/lib/ld.so")                    =3D 0
	getuid()                                =3D 0
	geteuid()                               =3D 0
	getgid()                                =3D 0
	getegid()                               =3D 0
	stat("/etc/ld.so.cache", {st_mode=3DS_IFREG|0644, st_size=3D455, ...}) =3D=
 0
	open("/etc/ld.so.cache", O_RDONLY)      =3D 3
	mmap(0, 455, PROT_READ, MAP_SHARED, 3, 0) =3D 0x50000000
	close(3)                                =3D 0
	uselib("/lib/libc.so.4.6.27")           =3D -1 ENOENT (No such file or dir=
ectory)
	uselib("/usr/lib/libc.so.4")            =3D -1 ENOENT (No such file or dir=
ectory)
	uselib("/lib/libc.so.4")                =3D 0
	munmap(0x50000000, 455)                 =3D 0
	munmap(0x62f00000, 20480)               =3D 0
	brk(0)                                  =3D 0x3000
	socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP) =3D 3
	setsockopt(3, SOL_SOCKET, SO_REUSEADDR, [1], 4) =3D 0
	bind(3, {sin_family=3DAF_INET, sin_port=3Dhtons(123), sin_addr=3Dinet_addr=
("255.255.255.255")}, 16) =3D -1 EADDRNOTAVAIL (Cannot assign requested add=
ress)
	recv(3,=20
(I made a program that does sendto(ADDR_BROADCAST) and none of them
 caught it, but I may well be holding it wrong and/or have my VM
 misconfigured.)

But there's lots of room for history between 1995 and 1999.

> (If you don't know, let's assume it was bogus; we can always come back
>  to this in the future, if we learn about it.)

Best,

--j7es2c23efv4my24
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmktoaoACgkQvP0LAY0m
WPEaGxAAhlWQlmRbGFTDuY1yYeM265BvoGZD3ePr6M0AuixxTJt9qEzHf/Z0bP6C
Adij6holxXqYrpxZD/Phn0ur6BLQXUXDL2oxsaomeksKKD8Okuar6pbcUtmh/Z61
fedZhK9G+jYZ6Ei8cfwYr2RcTNikdeUGqGHoBC1Rv+a4qXPpXsk4v3j4Noz7YkmK
LeYTiK+xB8Yl9+ctQBMb6016u+J/nZQEKblMiFqsqf+PM2lFVCNDLyZpdwMWftGa
pH0zgY1YHs7tZ5DAS5AUcpKIlffspmQ9cNEGb3BFKahKnCvSz3mfMuT5zs+OpXdO
X2TyxqdKQEmzY66L56OjZgXy/PT+xMut7PXGWZou332axTB+zWFaYdQpQSISHdMx
1WiImuD29wjvAyEPjnNUomaYf8EfUlIdwwpb+XMLbAs8ca79JfNdxSleXTwAGU1G
vN9RVHvkHCAITzp6ZO+WqbUxehZnSkrFK8SgnxQLnpKyoFEoSPDveCItAPRCeOJd
CkEsi9QvKBMb3HimrqNzfz2O3kJRsiO7p/x++3gx3yFtOOidqPuTe4QGmcOezJNP
eHh/ssQ8gSYSCsoMDf6RONKzRo1TuSa/eTNW+hn+LonX0SVTZNaQk32MnqKA4RqS
caSDzBnfy6q8Ulm1oU+r3ubQeVxVAnfiE1LTguwwM022u9hCWpo=
=oH2p
-----END PGP SIGNATURE-----

--j7es2c23efv4my24--

