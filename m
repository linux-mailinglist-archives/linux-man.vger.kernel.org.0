Return-Path: <linux-man+bounces-574-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A109879D12
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 21:49:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F3E67B22E90
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 20:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 690D314290E;
	Tue, 12 Mar 2024 20:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EYfP1OFX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A832C7E10A
	for <linux-man@vger.kernel.org>; Tue, 12 Mar 2024 20:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710276574; cv=none; b=odg2IhHcEWVPsfsglds5FicZIwIYDRFtj9eWbbcpy6UVd8um7sDSNWB52IgNQdB2d/5Oa3eeMx0s1HXtP4dfTv3fkEyvRi83n3haUD5QdV1P6QzWu85/yJY2FSWTIctM6OdE+jcg2p4zZXFSw+RBJjrEoMxQYcQVIoBLFceYrCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710276574; c=relaxed/simple;
	bh=3DI2aJ074YLuafIcvcv6EFI72geg+L1hWtNZ/TCwuts=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TGsatStSGxqy2cM2Rw7WV3ERPDpc2Q6KdNvPX32ffkyr+sYppOkIPSCI5sMD2hq/QLNsnDgZQqBIFmFVC/y64BLRTSBwSSmy36AkK1BFkOCUR0rxvQq+y5HLWdKXGkyx+3nnMkA08Ng0Gh1lHoBjGojG5gAnpj4Cx5xaSUYuuOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EYfP1OFX; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3c1ea5e54d3so3409245b6e.0
        for <linux-man@vger.kernel.org>; Tue, 12 Mar 2024 13:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710276572; x=1710881372; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+7Gkai6kAPhT6LRY+zE7tRkVTJesUAdEhQHqFSZt5ZY=;
        b=EYfP1OFX0F61hyjakVIP1yWLDDzOPC7+ayHtZWa3XO4JYUGOdogGwj6B63r/LxDBJG
         F0XaOwZbXAwOd3O0DUUX2RkpFAI+FWhLQzL9vp+U0E6n1CTEqMVMEt7JIbN+TWjkn4M0
         CPGDk6NENc9L86ca/HECqdTtAKnD0pyq18XHTYKABgBY0/mjDGVw5Tj66x06bKq/seBu
         FNC5/F3YQRQGwLInZYhKnjaxaVvKC5hdCtn2WU82zQb2ivh7btBwtf0MApbxyAmHUR5H
         AlRFSSCI4BmsBCgdaFjDYXYZ8lRuov8IBr1X7D1cpPe5tchi5dcUQY4J04rbVqW6pfek
         yoHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710276572; x=1710881372;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+7Gkai6kAPhT6LRY+zE7tRkVTJesUAdEhQHqFSZt5ZY=;
        b=qolmBnommrTOcE5F634fHmRfnERwalhjceAO2Weib33kk4Z9+dMan8q1pi8mL5J1xu
         XVxLul3AJzjzP1KueSWCjdu7Tn8wimCJVrEfzna1NRJDGAireTbV+dsZZEreWnrjt8HG
         EA2te5knVc6V/B/yYSLZhfV6iVHWe6B3r2VFIZZlEO86nPLL92CRsGllhnOd/wMjP+Qo
         6wQsPo78dmzHBFqeMjePiIJOzxQCiuAZx4MoWhuyyZYsICNZk3wtCG4NLSj991loT0/5
         bx4NseDPNMSdM4HTu6HYc97Y0MkgLRNLq1ffg0G7wEbPUIvyrUwMf6Dpqjl28AppU27e
         ChDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqk6qERfE9DPJ3c0idZYfusZ0/KO8rkzMAeDMBH1P8uip+9c1uDKXXZMyJNUWZrgUUjhn3U/94RGLtIuZ3ReJuE4Err4VZZ5Zm
X-Gm-Message-State: AOJu0YyQ+mZciaW1E0GIFGz1AkkzHLFMNnUAaXkM4PkY6YMRwOvjtxdk
	BcG2ZPRl4eg6N1lmuKrvgWBp984avUc1+Vv8Q3fs1UTdDn2USqtf
X-Google-Smtp-Source: AGHT+IHHm285/XFCu6rSe0wVenX144pXy7k3bX6wCYCB09rOtz1JH4j3exNGSjfU0TdOsmO9raWsVg==
X-Received: by 2002:a05:6808:1389:b0:3c2:505c:855c with SMTP id c9-20020a056808138900b003c2505c855cmr5467119oiw.26.1710276571518;
        Tue, 12 Mar 2024 13:49:31 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id a25-20020a05680804d900b003c21389550dsm1315188oie.0.2024.03.12.13.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 13:49:30 -0700 (PDT)
Date: Tue, 12 Mar 2024 15:49:28 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: Re: Bogus index in man-pages book from other projects
Message-ID: <20240312204928.nzowpxj2wmyawgk2@illithid>
References: <ZeyMlGwA7MNDZIfj@debian>
 <ZfBi5PSZXPDpygXB@debian>
 <20240312151518.evusk3qi3cfhkxv5@illithid>
 <10631018.ZHfXn36Ih2@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dmvo5gbhqfwomce7"
Content-Disposition: inline
In-Reply-To: <10631018.ZHfXn36Ih2@pip>


--dmvo5gbhqfwomce7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[looping in groff list]

Hi Deri,

Good to hear from you!

At 2024-03-12T18:25:36+0000, Deri wrote:
> On Tuesday, 12 March 2024 15:15:18 GMT G. Branden Robinson wrote:
> > [looping in groff list]
> >=20
> > Hi Alex,
> >=20
> >     I'm attaching another couple of examples to illustrate this.
> >=20
>=20
> Unfortunately, these are not examples of best practice for creating
> reference bookmarks.

They certainly aren't!  I didn't intend them as a demonstration of best
practice; they were files from my "experiments" directory, where I have
hundreds...uh...1,834 files exercising various aspects of groff.

My intent was to share a simple and straightforward demonstration of the
point I raised, about 8-bit characters being smugglable from *roff input
to device-independent output using the `pdfbookmark` macro as the
vehicle.

> The problem is the bookmarks are just numbered and if you have a
> large document it is easier to give the bookmark a mnemonic instead.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> .\" groff -Kutf8 -Tpdf
> .de NmSection
> .  sp 1i
> .  ft B
> .  ds pdfsecnm \\$1
> .  shift
> .  pdfbookmark -T \\*[pdfsecnm] 1 "\\$*"
> .  nop \\$*
> .  ft
> .  sp
> ..
> .NmSection Intro "\%A na=EFve attempt at bookmarking"
> Sed ut perspiciatis, unde omnis iste natus error sit voluptatem
> accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab
> illo inventore veritatis et quasi architecto beatae vitae dicta sunt,
> explicabo.  Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur
> aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione
> voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum,
> quia dolor sit amet consectetur adipiscivelit, sed quia non-numquam eius
> modi tempora incidunt, ut labore et dolore magnam aliquam quaerat
> voluptatem.
> .bp
> .NmSection Another "Another section"
> Return to
> .pdfhref L -D Intro -- the first section
> or
> .pdfhref L -A . -D Another -- the last one

I'm pleased to report that this example also works fine to demonstrate
PDF bookmarking functionality in groff Git HEAD, despite a recent change
I've made to pdf.tmac.

What change and why?

Let me share a further development of the foregoing example.

=2E\" groff -Kutf8 -Tpdf
=2Ede NmSection
=2E  sp 1i
=2E  ft B
=2E  ds pdfsecnm \\$1
=2E  shift
=2E  pdfbookmark -T \\*[pdfsecnm] 1 "\\$*"
=2E  nop \\$*
=2E  ft
=2E  sp
=2E.
=2ENmSection \%Wacky\-Intro\:duction "A na=EFve attempt at bookmarking"
Sed ut perspiciatis, unde omnis iste natus error sit voluptatem
accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab
illo inventore veritatis et quasi architecto beatae vitae dicta sunt,
explicabo.  Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur
aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione
voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum,
quia dolor sit amet consectetur adipiscivelit, sed quia non-numquam eius
modi tempora incidunt, ut labore et dolore magnam aliquam quaerat
voluptatem.
=2Ebp
=2ENmSection Another "Another section"
Return to
=2Epdfhref L -D \%Wacky\-Intro\:duction -- the first section
or
=2Epdfhref L -A . -D Another -- the last one

In groff 1.22.4, formatting the foregoing with "groff -Tpdf" yields the
following.

$ /usr/bin/groff -Tpdf /tmp/branden/naive-gbr2-latin1.groff >/dev/null
troff: /tmp/branden/naive-gbr2-latin1.groff:12: '\%' is not allowed in a na=
me
troff: /tmp/branden/naive-gbr2-latin1.groff:12: bad string definition
troff: /tmp/branden/naive-gbr2-latin1.groff:12: can't translate character c=
ode 239 to special character ':i' in transparent throughput

groff 1.23.0 says similar:

$ GROFF_ENABLE_TRANSPARENCY_WARNINGS=3D1 ~/groff-stable/bin/groff -Tpdf /tm=
p/branden/naive-gbr2-latin1.groff >/dev/null
troff:/tmp/branden/naive-gbr2-latin1.groff:12: error: an escaped '%' is not=
 allowed in an identifier
troff:/tmp/branden/naive-gbr2-latin1.groff:12: error: bad string definition
troff:/tmp/branden/naive-gbr2-latin1.groff:12: error: can't translate chara=
cter code 239 to special character ':i' in transparent throughput

But now in groff Git HEAD:

$ GROFF_ENABLE_TRANSPARENCY_WARNINGS=3D1 ~/groff-HEAD/bin/groff -Tpdf /tmp/=
branden/naive-gbr2-latin1.groff >/dev/null
troff:/tmp/branden/naive-gbr2-latin1.groff:12: error: can't translate chara=
cter code 239 to special character ':i' in transparent throughput

=2E..and the hyperlinks even still work!

The tolerance for Latin-1 smuggling continues but is, however, something
I plan to change as noted earlier in the thread.

And at long last I feel I understand what that incomprehensible
diagnostic message needs to say.  It's been a long time
coming--something like six years...

Regards,
Branden

--dmvo5gbhqfwomce7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmXwv84ACgkQ0Z6cfXEm
bc6e6BAAovzaALH9KEbmNIEAULCUIV1rMHAF4oAe2sm6RTWRrAXqazmvMxS/2G5W
0Brtk1fkBUfHZAYd77DzgKsqrz3AA8P0jSjGBR863OwW/YWS60x5gLJ90sypp9+s
UtJLhyHwZOgpi5H/wv0d474+YbVLn7hcZ1xZ60J4IWXfIBhQYBkt9XStSsvqzLAc
fACDWos4RfwEsTA46IZPTy0iJRn3px7u8Ftlk8Bl9hHJg6smaHtMOvzEMaqWFf2K
H4Ouwe9jE/axM3gOhovbALULcHJLTHftaU/Q6qSXl9qy23a+PYam0itp0nFHWt8t
hATFVFu6M8MUYUbVO/RvorAEPqdhXpYS2A1Kueys5c4zepERh1jifO7GQpsDi0cZ
iLngpcbnig4e+EJnT5L8nM/uE1GMxoWdL7YLyH0H9qx4mKMl7GIJH7MhBoV+qdyF
yVImaC3T4D7PzGcdwBIsn5sO9UVLTQxzo0mk/c27CqoBmttjhrWNjbQRVM7gargR
k9+p7FJJWBWe8l3Nr3cKuinoL/vJ5P8QB1nJeBfaud7crcozBxi39iYn9nPxpi9O
t22gydpluPD8PT6tmy/SyknvCR9XAooyG8uprkhKZ7a4l/OF7fMM8S32mEkd6ybn
ZNJ9lxRQN7KKP3XgPVbhGW+s65wiwVZZ6al5yWED+nY0ZK6432E=
=mCPt
-----END PGP SIGNATURE-----

--dmvo5gbhqfwomce7--

