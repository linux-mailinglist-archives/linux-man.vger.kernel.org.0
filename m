Return-Path: <linux-man+bounces-2298-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F196A1D53F
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 12:22:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4B6A166425
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 11:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83BA11FE451;
	Mon, 27 Jan 2025 11:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4+Y7NNN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BCE25A646
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 11:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737976952; cv=none; b=DyTD8tqGJlUSZvvH5n/D7yffmD3WqVaKvFK9k3x+6ER/OfKbTpWw3+5y6BTbYbRCUEa2fl43Y1GXQQ2NTiE23Sl+5/eh7v/s8btjWXmeeX2n/LVawdFr8+94pYuk4zky7I/wKYTWDH57240KUsQQQAV8fUqHz46gVlOgJ7GbFhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737976952; c=relaxed/simple;
	bh=gO20t5K6QURxeWLMhTmabzDKxAebb7FPDeyJQZMRC5o=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=NgN1lAMKK9Abr/fIhEXwtnlHT7LkKSRFdngNIgC5iAtfY6pmivfxwtRkO33d7nAWzab3wlAQkPj1QpgVNetgBFcN2VVhV6234Tro2Fa7ESdFQH6fxGYbng+PQd0vPUHYfVtkSHJKZPUCs/TqTgWqWf4kr8qi9vC0Np8OxIm2oJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4+Y7NNN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B11C3C4CED2;
	Mon, 27 Jan 2025 11:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737976951;
	bh=gO20t5K6QURxeWLMhTmabzDKxAebb7FPDeyJQZMRC5o=;
	h=Date:From:To:Cc:Subject:From;
	b=q4+Y7NNNyKi8V2fi66sS4eySqGKclg0Rjqih7RlnRsVwhNDM7dc+XZ+YPoc9w32Mc
	 QVwPl4BxQmnvNpBCKWrGo4QAd8bMSgzN0lBshyUl7KUyg4IWpmbEFBhTKZSHB5S9tH
	 zzkEwroDZ8u0kl6qf/LCqTyeoa3n/Y4psBQLob6KkRoLL5VJhbrtDuy2tIh6EruV22
	 iXdiIoDoMnGLoynDo9YIFXJR9Zx73wqbWhyeLuKWL6M8awoSn9OzAFf6aEyoyAZsPV
	 30VqdDp/L0AykTfjonfAFmkisSfvgSZT3GgwNfCys6LLA3xYOeER4Ot5zhQWKcmvIQ
	 YQW+q52hPqetw==
Date: Mon, 27 Jan 2025 12:22:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b7cstzuy45gstqqc"
Content-Disposition: inline


--b7cstzuy45gstqqc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: man/man7/pathname.7: Correct handling of pathnames
MIME-Version: 1.0

Hi Jason,

I think the recommendation to use the current locale for handling
pathnames isn't good.

If I use the C locale (and I do have systems with the C locale), then
programs running on that system would corrupt files that go through that
system.  Let's say you send me Mar=C3=ADa.song, and I download it on a syst=
em
using the C locale.  Programs would fail to copy the file.

Instead, I think a good recommendation would be to behave in one of the
following ways:

-  Accept only the POSIX Portable Filename Character Set.
-  Assume UTF-8, but reject control characters.
-  Assume UTF-8.
-  Accept anything, but reject control characters.
-  Accept anything, just like the kernel.

The current locale should actively be ignored when handling pathnames.

I've modified the example in the manual page to use a filename that's
non-ASCII, to make it more interesting.  See how it fails:

	alx@devuan:~/tmp/gcc$ cat path.c=20
	     #include <err.h>
	     #include <iconv.h>
	     #include <langinfo.h>
	     #include <locale.h>
	     #include <stdio.h>
	     #include <stdlib.h>
	     #include <uchar.h>

	     #define NELEMS(a)  (sizeof(a) / sizeof(a[0]))

	     int
	     main(void)
	     {
		 char      *locale_pathname;
		 char      *in, *out;
		 FILE      *fp;
		 size_t    size;
		 size_t    inbytes, outbytes;
		 iconv_t   cd;
		 char32_t  utf32_pathname[] =3D U"Mar=C3=ADa";

		 if (setlocale(LC_ALL, "") =3D=3D NULL)
		     err(EXIT_FAILURE, "setlocale");

		 size =3D NELEMS(utf32_pathname) * MB_CUR_MAX;
		 locale_pathname =3D malloc(size);
		 if (locale_pathname =3D=3D NULL)
		     err(EXIT_FAILURE, "malloc");

		 cd =3D iconv_open(nl_langinfo(CODESET), "UTF-32");
		 if (cd =3D=3D (iconv_t)-1)
		     err(EXIT_FAILURE, "iconv_open");

		 in =3D (char *) utf32_pathname;
		 inbytes =3D sizeof(utf32_pathname);
		 out =3D locale_pathname;
		 outbytes =3D size;
		 if (iconv(cd, &in, &inbytes, &out, &outbytes) =3D=3D (size_t) -1)
		     err(EXIT_FAILURE, "iconv");

		 if (iconv_close(cd) =3D=3D -1)
		     err(EXIT_FAILURE, "iconv_close");

		 fp =3D fopen(locale_pathname, "w");
		 if (fp =3D=3D NULL)
		     err(EXIT_FAILURE, "fopen");

		 fputs("Hello, world!\n", fp);
		 if (fclose(fp) =3D=3D EOF)
		     err(EXIT_FAILURE, "fclose");

		 free(locale_pathname);
		 exit(EXIT_SUCCESS);
	     }

	alx@devuan:~/tmp/gcc$ cc -Wall -Wextra path.c=20
	alx@devuan:~/tmp/gcc$ ls
	a.out  path.c
	alx@devuan:~/tmp/gcc$ ./a.out ; echo $?
	0
	alx@devuan:~/tmp/gcc$ ls
	Mar=C3=ADa  a.out  path.c
	alx@devuan:~/tmp/gcc$ cat Mar=C3=ADa=20
	Hello, world!
	alx@devuan:~/tmp/gcc$ LC_ALL=3DC ./a.out ; echo $?
	a.out: iconv: Invalid or incomplete multibyte or wide character
	1

What do you think?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--b7cstzuy45gstqqc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeXbIMACgkQnowa+77/
2zILwg/6A7xPHlJQHWdSnGvCcEoQBSD39E7FF8P03fLz8wjgXwKwx3epIU8JcF2W
MrAo5GKlgjrwAi63jXgXF6JqBLJkwa+748F8in8EaKT5nopc2ChllfYpO/HvL9lN
prHFeWPIoKOqk6+ziBhfI4Cx6vO+noJkp/ff2QzlYeqpef5ygTO5MSP5hyMJiBeB
4EezN4/tFxOWDmKZy1UjGrD0Ft2ERwnCC9F23B/Zr9E4uGRV74ia0sjSK3j1i0Cn
nSLr6yYtm4Y9MTtpXn4rxQWbJBeDXiYZAyz5rezlRRU1oFSLLfRb72vm+AMI71bL
Yg/AmdIIi/xhCikI7Vvm7a/zLMOcGN+1wCEpEBzYQIpWWO8P6B53SKBDmZ5bbgqo
p2V3oTkTSiKnCFlxjE4c0YnIOfqh19O3rIJztmNjUn+df6i3vBCsrYKpnwNSC0Tz
+rZHFuJuyfiDWK6Yc80QT5+/jDP51w+7ePB+qWqjY79mRa3sroN4qYytX0WvQ5g/
MiRdO8c06AH7dkNQHdPqMdLbUYcMjtrFWWhFlwG70l3syV7RgiQrE20n8Akd3xin
oBPLQ7rbJeKE6dSHJLi1JSSDYaps9UANRE/qRkdFqbT5K/YAYoRBCbAwLUeykUW7
jyFbibrH/SPOjtLzjL0UNVKsjMCa4gjrbivIYIUQEpM6onMxxWM=
=+7SB
-----END PGP SIGNATURE-----

--b7cstzuy45gstqqc--

