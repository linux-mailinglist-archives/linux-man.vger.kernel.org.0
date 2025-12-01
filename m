Return-Path: <linux-man+bounces-4347-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 065A4C968ED
	for <lists+linux-man@lfdr.de>; Mon, 01 Dec 2025 11:06:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8D367340F3E
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 10:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791CB3009E7;
	Mon,  1 Dec 2025 10:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAXrvJGS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C522FDC29
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 10:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764583459; cv=none; b=lKTVUhalnyljCtMHDIfl2gnxgQnKyAOZ8lgnn0ObHU54dAI0RAiai0+p06NPfTA/zJaxzx9QMMGyOQzfC9d4LGbIXSr0/McdpAFjhJo53N42pRVJPWl7l16JpuY/cS45pM1JCdY9eEo7XSflaBLU5xKAeAjay24DTWNlJKMOmX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764583459; c=relaxed/simple;
	bh=/vbMtm7BBpiFUVjJAA+4lVyGilJr+DqW/ATfYMLKGPI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mBJsk+1QHo/ywW2HV+q14UvtSQ0BT0bLVEZctaALmkKsryZ0NZ1OQYMYg8y37c2M510Im9YY7wZ5xXs08XKoxqbGJPcBmZVkLj5aThjvYQsYoKnV7vVipEYb93dejtdjTM8yJ5PH2cIkQ5+nJVPgEjvsSZqMDTsbhbobMKn62x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAXrvJGS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E312FC4CEF1;
	Mon,  1 Dec 2025 10:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764583458;
	bh=/vbMtm7BBpiFUVjJAA+4lVyGilJr+DqW/ATfYMLKGPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fAXrvJGSidc8+ANh/Yo5ExvASUvZ6KEjF9FFRHcPdLlKju/ftZ8hdpocoFJ6IiPX8
	 GMSCbCV0SjXvMmC2vPMo/gAMEZ5nqCrSUJQZ4QQi6Ozxx1vKlEuC7upzjYhZEWRToO
	 4EYPlXbutmSyVysB4h60qZEn9FApQns31C0G6K14+f8rRoiOrOGtNX36ImePKOVDfy
	 gZ9LmzKSAowfLBnwcw7Y9w0TmjlA0+fKBh1WiBOXmTO1awT+rQ+41T4H+QcjfFxRoP
	 sunYpIAcMvpSPqMp3jM+RBnbQOkbTFaZ9rj4uXa/I2wNpEFhatzhw/YS5vRdcP0ND/
	 AJQwbLXqQl34w==
Date: Mon, 1 Dec 2025 11:04:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/ip.7: don't say that bind(INADDR_BROADCAST) is
 the same as bind(INADDR_ANY)
Message-ID: <ib4uvgl23a6hscpgrvojt2fq2dprgzrfhbh2sx34hkkrfuhxbo@l5cyrhbdbohm>
References: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="syirnve4vqb752sa"
Content-Disposition: inline
In-Reply-To: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>


--syirnve4vqb752sa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/ip.7: don't say that bind(INADDR_BROADCAST) is
 the same as bind(INADDR_ANY)
Message-ID: <ib4uvgl23a6hscpgrvojt2fq2dprgzrfhbh2sx34hkkrfuhxbo@l5cyrhbdbohm>
References: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <qzlsd5wpn42hdxj43tavdyzhrpocjaddwxgyikiuk2bdzvobya@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On Sun, Nov 30, 2025 at 05:52:16PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Because it's patently not true: a program like
> 	#include <netinet/in.h>
> 	#include <netinet/udp.h>
> 	#include <sys/socket.h>
> 	int main() {
> 		int sock =3D socket(AF_INET, SOCK_DGRAM | SOCK_CLOEXEC, IPPROTO_UDP);
> 		setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &(int){1}, sizeof(int));
> 		setsockopt(sock, SOL_SOCKET, SO_REUSEPORT, &(int){1}, sizeof(int));
> 		bind(sock, (struct sockaddr *)&(struct sockaddr_in){.sin_family =3D AF_=
INET, .sin_port =3D htons(123), .sin_addr =3D INADDR_ANY}, sizeof(struct so=
ckaddr_in));

Minor quality-of-life comment: glibc accepts sockaddr_in without a cast:

	alx@devuan:~/tmp$ cat bind.c=20
	#include <sys/socket.h>
	#include <netinet/in.h>

	int
	main(void)
	{
		bind(0, &(struct sockaddr_in){}, 0);
	}
	alx@devuan:~/tmp$ gcc -Wall -Wextra -D_GNU_SOURCE bind.c=20
	alx@devuan:~/tmp$=20

>=20
> 		uint8_t buf[512];
> 		recv(sock, buf, sizeof(buf), 0);
> 	}
> will receive an NTP broadcast,
> but if you s/INADDR_ANY/INADDR_BROADCAST/ it won't.

Would you be able to compile the two programs (with _ANY and _BROADCAST)
and run some shell session that shows that one receives it and the other
doesn't?  Only if it would be easy for you.  Otherwise, I'll trust the
below.

> Quoth POSIX.1-2024:
> 	11252  The <netinet/in.h> header shall define the following symbolic con=
stant for use as a destination
> 	11253  address in the structures passed to connect( ), sendmsg( ), and s=
endto( ):
> 	11254  INADDR_BROADCAST   IPv4 broadcast address.
> (this is one of two mentions of the symbol,
>  the other is a RATIONALE for why no byte ordering is specified).
>=20
> Linux calls it
> 	/* Address to send to all hosts. */
> 	#define	INADDR_BROADCAST	((unsigned long int) 0xffffffff)
> and AFAICT never uses it in the receive path
> (except in RDS to reject bind(2)).
>=20
> Fixes: commit fea681dafb136 ("Import of man-pages 1.70")

Let's be a bit more specific:

	Fixes: fea681dafb13 (2004-11-03, 2004-11-03; "Import of man-pages 1.70")
	Fixes: 3c5f99be9759 (1999-11-28, 2022-12-19; "man-pages 1.28")

Since we have the prehistory branch which has one commit per pre-1.70
release.

	*   160863ad0 (korg/prehistory, prehistory) Merge prehistory and history
	|\ =20
	| * fea681daf (tag: man-pages-1.70) Import of man-pages 1.70
	* 29efd194a Import of man-pages 1.70
	* 28da52e85 man-pages 1.69
	* 5cabfa06b man-pages 1.68
	* ca28c82b2 man-pages 1.67
	* 3708b209e man-pages 1.66
	* 6071a7a5b man-pages 1.65
	* c3c9e6e91 man-pages 1.64
	* 41be24fb8 man-pages 1.63
	* e5da8412c man-pages 1.62
	* edf63bf7b man-pages 1.61
	* b87a796ac man-pages 1.60
	* e5c99a89f man-pages 1.59
	* 21a36b5ea man-pages 1.58
	* 8d332a950 man-pages 1.57
	* 1dc9987d2 man-pages 1.56
	* 07060a128 man-pages 1.55
	* a477c8518 man-pages 1.54
	* 6c2fa3783 man-pages 1.53
	* 03fd0013c man-pages 1.52
	* 07e6140bc man-pages 1.51
	* 843f811c5 man-pages 1.50
	* 56c0d11e8 man-pages 1.49
	* 5ce5bba9b man-pages 1.48
	* 164d73fde man-pages 1.47
	* 121edebe2 man-pages 1.46
	* c868a9c14 man-pages 1.45
	* 04ee9f2cf man-pages 1.44
	* fd81d1912 man-pages 1.43
	* 34eba8851 man-pages 1.42
	* c06eb28eb man-pages 1.41
	* df26b0242 man-pages 1.40
	* fa5210ba7 man-pages 1.39
	* 91262414b man-pages 1.38
	* a7167988e man-pages 1.37
	* 238eba508 man-pages 1.36
	* ddeb4bf8f man-pages 1.35
	* 2fcfbadbb man-pages 1.34
	* 4c3175d00 man-pages 1.33
	* 1f86bcc7e man-pages 1.32
	* c3a92bcab man-pages 1.31
	* 10caa353b man-pages 1.30
	* 120555098 man-pages 1.29
	* 3c5f99be9 man-pages 1.28
	* 198772f56 man-pages 1.27
	* d91506f8f man-pages 1.26
	* 8869fd764 man-pages 1.25
	* 9d1fd1157 man-pages 1.24
	* b59b9a612 man-pages 1.23
	* 7a5c6cc1b man-pages 1.22
	* 934adb1d8 man-pages 1.21
	* de9137cb6 man-pages 1.20
	* 3b676b134 man-pages 1.19
	* d93adc12a man-pages 1.18
	* 2637c202a man-pages 1.17
	* b12f1e583 man-pages 1.16
	* b54f095f4 man-pages 1.15
	* d707f866c man-pages 1.14
	* 349a9d843 man-pages 1.13
	* b5472e741 man-pages 1.12a
	* 1c259a902 man-pages 1.12
	* 8dbebb416 man-pages 1.11
	* df81bc9e8 man-pages 1.10
	* fc17e68e6 man-pages 1.9
	* 404a66cbd man-pages 1.8
	* acd0e5cf7 man-pages 1.7
	* 110003fb3 man-pages 1.6
	* 0a610ab3a man-pages 1.5
	* e128ef8ef man-pages 1.4
	* 4da2ffc7d man-pages 1.3
	* a18a162de man-pages 1.2
	* 84c15c9af man-pages 1.0
	* c8eee6c3c void

> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man7/ip.7 | 5 -----
>  1 file changed, 5 deletions(-)
>=20
> diff --git a/man/man7/ip.7 b/man/man7/ip.7
> index 60081cbea..f2f526762 100644
> --- a/man/man7/ip.7
> +++ b/man/man7/ip.7
> @@ -199,11 +199,6 @@ .SS Special and reserved addresses
>  means any address for socket binding;
>  .TP
>  .BR INADDR_BROADCAST " (255.255.255.255)"
> -has the same effect on
> -.BR bind (2)
> -as
> -.B INADDR_ANY
> -for historical reasons.

Was this ever true?  Has the behavior ever changed?  It would be
interesting to know if this documentation is just bogus, or if we should
document some historic details.

(If you don't know, let's assume it was bogus; we can always come back
 to this in the future, if we learn about it.)


Have a lovely day!
Alex

>  A packet addressed to
>  .B INADDR_BROADCAST
>  through a socket which has
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--syirnve4vqb752sa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmktaBMACgkQ64mZXMKQ
wqmwGBAArwKFMRZoQeMJ4DYVbyllr5yJKQiyJtvXtgb7gGZTsXV+npIRbRf+0UWD
+ipIqR8G5STnMNaqgs9LbeldeQupA0lLKhkEZD806YMuviajco5jdLByLBbQHdoR
dqfFk5D7eluFHqDFEe4kDzMafI7eJRnGzLI6O9nQOlXNQIzj+y2av+Nzl7ORRPs5
bxxcA6JYoSVNNn2eIhDroQPwO5reTYnvJQNeOar662+ZI8AYoRzHZmrLNjGLYxMA
QDj1u+p3o6U4R1jLSl2i9aXodp+qjx4O+hDpo3PNC0NUFu8dalHQSh+rn9c1YqoT
1SFVZOMcXgYFsxJO0Dx9280QdHN6GY2bYRYWjqyJ0RqfAsNECkAic5j15BXUOZeD
B43g6nsRT3kro2VMxWL9575IAZpYjVXkXhKOW8yBYpAB/z/eX9KqnB/B+JeSJRQA
HS2dvOzmS8BoKWgkunTVFpJOCamKNbNP8Te6jGsCrTn/X4v0jDE0foLIeQoq3ZIz
4rrhYivXXT6ga8yTSlxzcyTxM9YPcu9FJW3IQMyZCQcDhpsf53lx/6zZ6KNhQ3bC
CgIoL4SnLk19rllw8cY/xrjTx7aFFjFXSl+koBnzhVqbnUn0wihq5gtrzYG45WM+
L7MJKP6F5fDfpBzLQnUWvKqXH0GOYziWzE6v/JWmykFHSSrAG/Y=
=CO5K
-----END PGP SIGNATURE-----

--syirnve4vqb752sa--

