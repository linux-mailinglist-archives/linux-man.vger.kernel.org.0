Return-Path: <linux-man+bounces-2260-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA99A15A42
	for <lists+linux-man@lfdr.de>; Sat, 18 Jan 2025 01:23:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C25F168191
	for <lists+linux-man@lfdr.de>; Sat, 18 Jan 2025 00:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59EAE2907;
	Sat, 18 Jan 2025 00:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iE4HXxpD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161231FDA
	for <linux-man@vger.kernel.org>; Sat, 18 Jan 2025 00:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737159778; cv=none; b=RbC9R/HwNMVSr21CNGEyXm/wZ5iGsku/H4bunpLs9isK3s7boNmsHW94k8Yf7zfk6ZkMk8EL5eL7fPX3dVIVjNE2fJbIm/9jiBKg0L5idTUBChvIyAEH4Bx/lYwUAXbURvkjT0lhzoK+QOcwYja5CVFehWsXVOW6uzoMZ5ccPQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737159778; c=relaxed/simple;
	bh=mma0B1K3mNrESdp+0aD1/q9EQ9dhqQHgCNnSEvQQNOQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YbroQV/1CffJWSRfQQiG7TcpuVkZh/IPsZNkUJqwNgyJCPC5A3V8O+n5XA7a1eF0FtNS96lph2woPovP/X1Ut9FqfQGkNmEKhKtvNzxPmt0PiEgeXvxB2Ck5c6EfjfK57rvyvZta33G6oGy1gCyBYkhKhfYdXv5gddRwA8IaiGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iE4HXxpD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B78FAC4CEDD;
	Sat, 18 Jan 2025 00:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737159777;
	bh=mma0B1K3mNrESdp+0aD1/q9EQ9dhqQHgCNnSEvQQNOQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iE4HXxpDxIN4iB7HWQNHAS9IC3fl73jD67XJKpjyBaA2flSbbeg5Z3zvGjF+80lxH
	 SkniXHzOXGSxPHe9WB3dwdgXbslYyRv4wW+xFHMwmeKYw2fz+XqqHrUBOoIZmnwWbU
	 xS1iJ3xtUxDHytnEzZ0RxrPKnTYv0NoBTqraMxjCTikSmT1a39cmQ5yTeNo/TapZYB
	 W1E3iL8gEYZjG30RtZRi9anBAnuuCvw3EM0iBQdjRF4r6JPPLwZVal/9EebzKSm+Gw
	 nztNJR2ZvSjj1cA2WFRXzX4VGY2y7oKst4SLVRG4pLjYA0uz3gZe3B67q+zVZw7MQH
	 b8PM+5twEa1Mg==
Date: Sat, 18 Jan 2025 01:23:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
Message-ID: <ryb6mts7mfcfnywnpwkjruptdvwycoca4zkup4jb3xodw43iek@gir2yo6zurbv>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
 <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7l7bcarjabj7nw62"
Content-Disposition: inline
In-Reply-To: <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>


--7l7bcarjabj7nw62
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v5] man/man7/pathname.7: Add file documenting format of
 pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250117130205.33119-1-jason@jasonyundt.email>
 <zmnk4zwijwa5scfuklswjrfkewv4me6jxqoft3mugam5ihxily@b3rrcknd3c4v>
 <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>
MIME-Version: 1.0
In-Reply-To: <y6enr2jwqs7n5hyjq4ry3crtmoqsrxc3ndkti36dyvcf62gzem@22orbvl26oek>

Hi Jason,

On Fri, Jan 17, 2025 at 07:01:46PM -0500, Jason Yundt wrote:
> On Fri, Jan 17, 2025 at 03:14:55PM +0100, Alejandro Colomar wrote:
> > Curiously, my system is also limited to 255 for tmpfs filesystems but
> > yours is not?  I still get longer paths rejected.
>=20
> That was my mistake.  Running your program confirms that tmpfs filenames
> are limited to 255 bytes as well.  I had originally assumed that /tmp
> was tmpfs on my system, but it was actually bcachefs which has a
> _PC_NAME_MAX of 512.
>=20
> > Doesn't iconv(3) terminate its output?  I've never used that API, so I
> > don't know.
>=20
> I thought that at first because I hadn=E2=80=99t ever used iconv(3) eithe=
r.  I
> created a test program in order to make sure that it doesn=E2=80=99t term=
inate
> its output:
>=20
> 	$ cat iconv_termination_test.c
> 	#include <err.h>
> 	#include <iconv.h>
> 	#include <langinfo.h>
> 	#include <locale.h>
> 	#include <stdio.h>
> 	#include <stdlib.h>
> 	#include <string.h>
> 	#include <uchar.h>
>=20
> 	#define NELEMS(a)  (sizeof(a) / sizeof(a[0]))
>=20
>=20
> 	void
> 	display_memory(char *memory_block, size_t len) {
> 	    for (size_t i =3D 0; i < len; i++) {
> 	        printf("%02hhX ", memory_block[i]);
> 	    }
> 	    printf("\n");
> 	}
>=20
> 	int
> 	main(void)
> 	{
> 	    char32_t utf32_pathname[] =3D U"example";
> 	    size_t pathname_len =3D NELEMS(utf32_pathname) - 1;

There's no other length.  You could just call it len.  pathname_ just
adds noise here.  See the section on "Variable names" here:
<https://doc.cat-v.org/bell_labs/pikestyle>.

> 	    size_t utf8_pathname_size =3D pathname_len * 4 + 1;
> 	    char *utf8_pathname =3D malloc(utf8_pathname_size);
> 	    if (utf8_pathname =3D=3D NULL) {
> 	     err(EXIT_FAILURE, "calloc");
> 	    }
> 	    memset(utf8_pathname, 0xFF, utf8_pathname_size);
> 	    printf("utf8_pathname before calling iconv: ");
> 	    display_memory(utf8_pathname, utf8_pathname_size);
>=20
> 	    iconv_t cd =3D iconv_open("UTF-8", "UTF-32");
> 	    if (cd =3D=3D (iconv_t) - 1) {
> 	        err(EXIT_FAILURE, "iconv_open");
> 	    }
> 	    char *inbuf =3D (char *) utf32_pathname;
> 	    size_t inbytesleft =3D pathname_len * (sizeof *utf32_pathname);
> 	    char *outbuf =3D utf8_pathname;
> 	    size_t outbytesleft =3D utf8_pathname_size;
> 	    size_t iconv_result;
> 	    while (inbytesleft > 0) {

I don't think we need a loop.  Do you?  iconv(3) should convert the
	entire string if it is valid and there's enough room.

> 	        iconv_result =3D
> 	            iconv(cd, &inbuf, &inbytesleft, &outbuf, &outbytesleft);

It seems you're passing a non-terminated string, and thus it's producing
a non-terminated string.  Why don't you pass a null-terminated string?

That is, inbytesleft should include be the length + 1.


Have a lovely night!
Alex

> 	        if (iconv_result =3D=3D -1) {
> 	            err(EXIT_FAILURE, "iconv");
> 	        }
> 	    }
> 	    iconv_result =3D
> 	        iconv(cd, NULL, &inbytesleft, &outbuf, &outbytesleft);
> 	    if (iconv_result =3D=3D -1) {
> 	        err(EXIT_FAILURE, "iconv");
> 	    }
> 	    if (iconv_close(cd) =3D=3D -1) {
> 	        err(EXIT_FAILURE, "iconv_close");
> 	    }
>=20
> 	    printf("utf8_pathname after calling iconv: ");
> 	    display_memory(utf8_pathname, utf8_pathname_size);
>=20
> 	    free(utf8_pathname);
> 	    exit(EXIT_SUCCESS);
> 	}
> 	$ gcc -Wall iconv_termination_test.c
> 	$ ./a.out
> 	utf8_pathname before calling iconv: FF FF FF FF FF FF FF FF FF FF FF FF =
FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF
> 	utf8_pathname after calling iconv: 65 78 61 6D 70 6C 65 FF FF FF FF FF F=
F FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF
> 	$

--=20
<https://www.alejandro-colomar.es/>

--7l7bcarjabj7nw62
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeK9GAACgkQnowa+77/
2zI7iw/+Nevxhx4Jt+Qqq/zH4oxUOtI/vVWELF0LTpaoA7on2ubotrL6Qn2TcAKV
/n6U3Gs2tQiHpggSCLYIleVodXi8TiEKIb3d68L8MW6PnIR4WvhvmtLpdzHEnU38
qVkvBRNphpHLYWgpxk18aKuDgfN3hJGoRdk1O7kc5Op2seU+d0GDQuSyyXfwVDYS
yLkB+E0tabORWxCXIQ9wVQY1CysUEpBZyDhH1WupN2c+Ygx43QR8k0MSDOcSCF4k
81xrv9w/Y428kbQKwsFSQV9N3k+bMYr4ZoczREhHuFXNBtgP+EOlTLBJw14C71Uy
c9+ugqcB26tRsZeUu5QYXrCeUzYXvhkgo36JfiA9f932sbuIxNXSvm6+hQTenjWO
UtHq8PklvTFa0qW+nxeFW7Bsiu5wOaRDlxAI0TJkZdHxFlTzgu1585FM2X7fbcKE
3ADfaAy7QC8B0rNFj2Tv/Z/K12Z9u7z8rVwc6Lq4O2tz+sOg5FpPHUXsN/B6rm57
4gOmiY8nK0mE9YCOyKp/SB1CoGu1RzRU5wjhGve3WF/uknFjoCXVe6zE+qL85UJB
bnhOLvz34aC6/9KN8njFhhHD5SgEaoyqMQRLeHodaur6DmFD+PF/5SyHOfe1pCCO
2bDhv2SVjIGq5KiHV51RDKD7ggd2iATPebXDPX+fsSXMOzBymj8=
=p8g3
-----END PGP SIGNATURE-----

--7l7bcarjabj7nw62--

