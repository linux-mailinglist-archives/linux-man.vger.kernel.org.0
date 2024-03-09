Return-Path: <linux-man+bounces-561-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A0E87722F
	for <lists+linux-man@lfdr.de>; Sat,  9 Mar 2024 17:21:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8898F2818D5
	for <lists+linux-man@lfdr.de>; Sat,  9 Mar 2024 16:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1DD45962;
	Sat,  9 Mar 2024 16:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODLowvGb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B660D4594C
	for <linux-man@vger.kernel.org>; Sat,  9 Mar 2024 16:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710001303; cv=none; b=KD6b6U550pYdjQcfytRZlTT78+LZ7PW1byI+oxnazENxrHtOnBKW/owiVtqjadJMyBnvn6+Rx+6xCsVjh2TgaicAYdLUcCDipYsHTFXjDk3lv06zR0CuAJocfHM0eCLnZHprFrYH9C9RPcQLwys4yU6JVDDmrf/NkE5x/8LlffU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710001303; c=relaxed/simple;
	bh=YIsHeAgVBDadKb8nHnF77LxVGhR2fgHmOmniZODFpq4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=SjN2dqEBQpoEVmsTO3NYVAiqynplBcgBK8MGg0dGXKWmPu0TGdNJ+BjImW1C5Jf8YzrYdfpV1sw1UCDiQlfbNKXY4MC55Li8seUqKeTF5uZzGq09eVsVxW9bCzQlwK92jhOFywJhGQWHTgXropP12D6cgQ4Q5zw6diDgoSebxQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODLowvGb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98DDBC433F1;
	Sat,  9 Mar 2024 16:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710001303;
	bh=YIsHeAgVBDadKb8nHnF77LxVGhR2fgHmOmniZODFpq4=;
	h=Date:From:To:Cc:Subject:From;
	b=ODLowvGbgBIXjICCdRfH4mmCCXCwiiMuXiRWPwTmnPuGovq3NDYHFLVeBhiqiHuzl
	 oHNZcXJcGhynjgvYXqSElnszCLqBqQfLQYCdwGv3/KsFFHxkc1djK2uWu3y2Uqs8Rb
	 fLnTAH3RDCqZtkNk8dhpIkbs9znuUXS2oZsw9GuByrXl6HDiwOc+dhUbF89eMRW6aA
	 UYxKbCAvRHEn71QckCXXuDdJOIbW54AkyS0u05KDPOqGY6HOQnLiSqhKDOVFjgydTS
	 J8UEhnEOn+P988zrv+6/965crvCEW15NcoFyPF3cN09DlMbSJHHdFBFEmg3lFGWABc
	 utWn06XwOe/+Q==
Date: Sat, 9 Mar 2024 17:21:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri James <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Bogus index in man-pages book from other projects
Message-ID: <ZeyMlGwA7MNDZIfj@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G5KifRDLQ3+zcfYr"
Content-Disposition: inline


--G5KifRDLQ3+zcfYr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 9 Mar 2024 17:21:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri James <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Bogus index in man-pages book from other projects

Hi Deri!

I've tried to build a man-pages book of the shadow project, using the
Linux man-pages build system (which calls your script).  The text
contents look good, but the index seems to be bogus, and man-page
references don't work (it results in just text).

I only see in the index the names of the pages that are aliases.  None
of the actual pages (their in-page sections are top-level entries in the
index).

To reproduce it,

```sh
git clone -b shadow http://www.alejandro-colomar.es/src/alx/linux/man-pages=
/man-pages.git/
git clone https://github.com/shadow-maint/shadow
mkdir build
cd build
sudo apt-get build-dep shadow
=2E./shadow/autogen.sh
make -j4
cd ../man-pages
make build-book MANDIR=3D../build/man
open .tmp/man/man-pages.pdf
```

The `make build-book` step results in the following warning, which may
be relevant:

$ make build-book MANDIR=3D../build/man
MKDIR		.tmp/man/
Build		.tmp/man/man-pages.pdf
for my (...) is experimental at ./scripts/LinuxManBook/prepare.pl line 62.
pdf.tmac:chage.1:29: warning: adjusted level 3 bookmark; should be <=3D 1
pdf.tmac:chage.1:31: warning: adjusted level 3 bookmark; should be <=3D 2


Would you mind having a look at this?

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--G5KifRDLQ3+zcfYr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXsjJQACgkQnowa+77/
2zLLVQ/9G8wOFHA1FGZZsDBg0IAsMQDS3ZphunQa9jyeir8yC5oeQlWml2FOLntd
VpMix+f53bSIbR6YUXTjEbnr64t1gajDRjXl63k1Nq/KSMMiBdY+Hx+QBcvjzyvK
dxd1xx0TyHKZoCNFKX+CmC04+tnraBtSgQ/sF7WxnmOUMXBwYjqQu6RJE9oEMVGg
NyP1lanZDWAgLCJqnKxFdfwy0YRH09PCKBRtTJAexRJr6iHy2KDPeamnWO30NXQi
bJUt9FfRc3nrNF4yp7myicfcEomXbQHhT4bUJoEkaf84h4FUueWwjjXAfcIEjFm1
E4yXXtarPlcUh+BgFhJx4lbqIGqkvvHSXhtZIL5gmeqJUCgBwLKTE41LA4Oogk4L
YB5WOtzwDtZARNafULiGT+GF04VnZXcz6E18UEsEbF6w+KFrc4dmsHqF6f5MFQTU
Dx5J/rIuAl1i8A4OKn8DkWtOiJht5XyZsYK1wj+7tMW3VVKFssYOX6TzrulHLctP
zNwCVpwS3/d9novcwUXQY2PIRckQqqvoO0rR6hWAivqD8DDTsyzHjR9GF8KomBOY
S0kJxspWPzG9V6qntd5irkntLQtkTO16Mb68TbSNYWrpGjw/c/dZyhO8B2IjLU7L
Fr7TfUQtH5WSekUDo6rkvkuKUDlkbl60MJFZzSF6JK7vhCF1O5Y=
=SYRr
-----END PGP SIGNATURE-----

--G5KifRDLQ3+zcfYr--

