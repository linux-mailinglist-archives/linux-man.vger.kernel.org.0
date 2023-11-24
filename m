Return-Path: <linux-man+bounces-158-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA117F7302
	for <lists+linux-man@lfdr.de>; Fri, 24 Nov 2023 12:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7E8E6B212A3
	for <lists+linux-man@lfdr.de>; Fri, 24 Nov 2023 11:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71EBE1EB42;
	Fri, 24 Nov 2023 11:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvGqVPtJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2071D692
	for <linux-man@vger.kernel.org>; Fri, 24 Nov 2023 11:46:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0AADC433C8;
	Fri, 24 Nov 2023 11:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700826399;
	bh=k56DB346aYH+oj2PGPiHqQM68oLQXchybnNOhGk4qfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JvGqVPtJRg+knyIQhZoX1b8Kqi9aT3SMGfycJ+2nKQu3HdHHAqAxQrhdrqlIjNiiW
	 UOXAU8PbBLqNMv/YdnyY3kcQzOIZvSjMCm53h9rZ9HT4K6E1/j4mhASr89ysQMrM2v
	 8r7kSR0DBx4tkgtKHaSKdepYw1PtEicVXWNSnks3Vd9Xzk7MEpflSxEN4dviBFRk7g
	 MT0POYtjI8WSkUvMRgFW3BLBHrdjdEI2MvZyXisPSXvhNG6A47+xvxuJLW4oSkksJY
	 LOUrmLCy1ofgrcQ3+FmOGxfa4C7qCvEO8/rlL+1H6SAySuqbcfSRuYQztPgWm7fTti
	 gNw8uklcDD3kw==
Date: Fri, 24 Nov 2023 12:46:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Optimize script for generating LinuxManBook.pdf
Message-ID: <ZWCNHM9qQnK96ksZ@debian>
References: <ZV4XNnNlv8OK1B1m@debian>
 <2818350.Jt13fLt2Sg@pip>
 <ZV_OXhw7V6Vk1HBR@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rpC0zE3KjpObGkiF"
Content-Disposition: inline
In-Reply-To: <ZV_OXhw7V6Vk1HBR@debian>


--rpC0zE3KjpObGkiF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Nov 2023 12:46:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Optimize script for generating LinuxManBook.pdf

On Thu, Nov 23, 2023 at 11:12:45PM +0100, Alejandro Colomar wrote:
> > It looks fine, although you have to run the code in=20
> > "prepare_linux_man_book.pl" twice (to avoid using a temporary file).
>=20
> Yep.  I was wondering if we could change something in the design of
> prepare_linux_man_book.pl so that it could be run once without needing
> a temporary file.  Maybe if it could insert something in the pages that
> the latter troff(1) would process in one take, without having to put all
> the bookmarks at the start of the file.  That would be an important
> simplification of the scripts, and probably also an optimization.

Hi Deri,

I have another optimization: split the sort.  It reduces around 0.3 s.

diff --git a/scripts/LinuxManBook/prepare_linux_man_book.pl b/scripts/Linux=
ManBook/prepare_linux_man_book.pl
index 0a79df4e5..5a4aad429 100755
--- a/scripts/LinuxManBook/prepare_linux_man_book.pl
+++ b/scripts/LinuxManBook/prepare_linux_man_book.pl
@@ -88,7 +88,16 @@ sub BuildBook
 {
        print ".pdfpagenumbering D . 1\n";
=20
-       foreach my $fn (sort sortman glob("$dir/man*/*")) {
+       foreach my $fn (sort glob("$dir/man*")) {
+               BuildSec($fn);
+       }
+}
+
+sub BuildSec
+{
+       my $manSdir=3Dshift;
+
+       foreach my $fn (sort sortman glob("$manSdir/*")) {
                BuildPage($fn);
        }
 }


I didn't think of this as an optimization, but rather to move code from
BuildPage() into BuildSec().  However, since it doesn't block until all
of the pages are sorted, it reduces the latency of the script (that's my
guess).

I think moving stuff from BuildPage() to BuildSec() would both simplify
and optimize, so please check it when you can.  (I'm also checking it,
but while I'm learning Perl with this, I'm still very limited.)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--rpC0zE3KjpObGkiF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVgjRYACgkQnowa+77/
2zJuFRAAjqw1AFv2gvR0zB1efMv3ZokzgxzdetBHGoIdsN2uqBC4M5YkUL+ve0x3
resLVYy1Jul/tDaXumrC/Sh/XNyYKC2ZZUhZg9lOq9o0u/1d4Ntes03e8J4+ihGP
u5A0TXHLMVDkN1wXjJbbVRRb3H7lsjHu2gLwL+B/A8TTrZLSBMe2juZHPI4kHX4X
Kcd2BzADGXkpIuyioauXsajUD8fYWt4FKueh/KA9hGSgjlQ6DRjmo4Lrl8vvJ4zS
gYSVqGPaWufGZ0VaVUnjHfAesNPIGGmA09AFN1AQrN+SdHBc9j6uQKncoUmsFSV/
va/Z64hsanGdtfRJlRe4YAWIHPH0mkAXRGezaxMViE9QfS06g4S1KNxEyWxwapwx
7L0CEPg3Un49wRLfyGFiPvR8BY1+E3Mu4wPBhzlBUnKRbVB372aoEJVC/2dq1s6O
ffjfvABuPiGW6o6WpTagqRngs6JEPKpKy2e/QYEjqZCsBB0m1L3YeTC2RekuBJZ7
fGENn/Z5BIE20Eh7K3s7NPaSAmJzkxNef1M8To/WsYApfh6ESzFDXYM95Iv7M/HV
I2OSzAe+5maUGzuv4D29oi0OppjG9L2XW4inZ6IGT5Ki+GgpCDioHipeG5RC3Y5U
U+A25LoBV5ccfkV0B0PBTadx/ifZi71R+8nn5YmZfhxpPP7sFgY=
=lTeF
-----END PGP SIGNATURE-----

--rpC0zE3KjpObGkiF--

