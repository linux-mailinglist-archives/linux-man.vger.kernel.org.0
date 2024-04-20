Return-Path: <linux-man+bounces-795-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2C28ABD91
	for <lists+linux-man@lfdr.de>; Sun, 21 Apr 2024 00:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5551CB20BF1
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 22:33:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C20310788;
	Sat, 20 Apr 2024 22:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+VsfMVk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB5740843
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 22:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713652384; cv=none; b=V4EIUcu1/LAdAzsodraA7uuVzTC+91aXznkdMyHbhjrxrQxVLSlJa3enSUJdgz4EluaEJneRl5gvp/NGGxGX2f3MmtYC5KPmeLq6IKEd8Sa+bE8eNlSMMygFTUN1bnijmv5/4IyiHYa9B3pQ+vvieEwN4VYlpcnYp0MI8Eh1gC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713652384; c=relaxed/simple;
	bh=4QlRGRyTNi1a+Rf9DO9AzPpJcNiDuumkdxHqjvyaU8w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U602Lt9AVI2ZyRSYuNGekmlW9+f3C/vWq5Q65M1JzNAcoNpLnmTMwYehRFmFXRtB8N+6Ec/h2MGc6rxGgCP0o4bcYgFRAcF/xRhp/srtGU3o70bwoL/51hGzmp/5SvJLlqMb6xE2+7zNzz5A/wf7b2YDoJMqBa6z24vqAtFaPOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+VsfMVk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5C5AC072AA;
	Sat, 20 Apr 2024 22:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713652383;
	bh=4QlRGRyTNi1a+Rf9DO9AzPpJcNiDuumkdxHqjvyaU8w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q+VsfMVkOtXbeNvCeMy6Zp80lo0vW5PG0I98ijNQwHyBxQMUQcmuvtnvooJK18yIp
	 3gUmLk1GnNHTmTKrvssV46FF5pCsFYnPjjYogzlhsBa+th2EfdrEQYbnTLgzSssuE9
	 wfWwR3ll0cjNNvo6zRdCHsNu7Vwct+q0ZIgDPJi0PqehmUzfSBp1t/2pBgItRPHQBr
	 hD7/IxYafm/ov6BYvhuIqepOuIPqEm/uA06EEkl+35SUKuDrcBJXLpODQ4jBSuYTSp
	 8nTEMGn1w64idp2i5S51eR3VV3OMyQ5HrsXjLb0ufuPPEKGn+Gwzirn3Y3QwQ5fN+t
	 N15Vin4ZcMJzg==
Date: Sun, 21 Apr 2024 00:32:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Inglis <Brian.Inglis@shaw.ca>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org, groff@gnu.org,
	"G. Branden Robinson" <branden@debian.org>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Problems building the unifont PFA and DIT files for the PDF book
Message-ID: <ZiRCm1-6N-41Sjyl@debian>
References: <ZiO0cHOWPyuiJGQq@debian>
 <20240420155231.hwvoxfyqnefimh3s@illithid>
 <a55df048-f04c-4faa-aba9-a5be7e81543b@Shaw.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9XecfChFJN+v5ujU"
Content-Disposition: inline
In-Reply-To: <a55df048-f04c-4faa-aba9-a5be7e81543b@Shaw.ca>


--9XecfChFJN+v5ujU
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 Apr 2024 00:32:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Inglis <Brian.Inglis@shaw.ca>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org, groff@gnu.org,
	"G. Branden Robinson" <branden@debian.org>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Re: Problems building the unifont PFA and DIT files for the PDF book

Hi Brian,

On Sat, Apr 20, 2024 at 02:11:55PM -0600, Brian Inglis wrote:
> On 2024-04-20 09:52, G. Branden Robinson wrote:
> > At 2024-04-20T14:26:17+0200, Alejandro Colomar wrote:
> > > First problem:
> > >=20
> > > In the Unifont, I don't see a "Regular" font.  I assumed I should take
> > > the unifont.otf file.
>=20
> Hi folks,
>=20
> That's the BMP ~63.5k characters ~57k glyphs; unifont_upper are the SMP
> ~57.5k glyphs with specialized scripts and extended graphics like emojis:
> unlikely to be required for any LGC man pages.
>=20
> 		https://unifoundry.com/unifont/index.html

Thanks!

> > Since (I believe I saw you say that) you're using GNU Unifont only to
> > patch up missing code point coverage from other fonts, in your
> > application it probably makes sense to specify it as a "special" font.
> >=20

[...]

> OpenType fonts are normally designed with an 1000 units/em, and Truetype =
may
> be 1024 or 2048 units/em, so should use 333 or maybe 300 if you prefer a
> tighter look, close to your suggestion.
>=20
> $ ttfdump /usr/share/fonts/urw-base35/NimbusRoman-Regular.otf | awk "/'he=
ad'/,/^$/"
>    6. 'head' - checksum =3D 0x0cdb53f2, offset =3D 0x00016f4c, len =3D   =
     54
>    7. 'hhea' - checksum =3D 0x06b6057b, offset =3D 0x00016f84, len =3D   =
     36
>    8. 'hmtx' - checksum =3D 0x35d9ae6c, offset =3D 0x00016fa8, len =3D   =
   3420
>    9. 'maxp' - checksum =3D 0x03575000, offset =3D 0x00017d04, len =3D   =
      6
>   10. 'name' - checksum =3D 0x8993f63c, offset =3D 0x00017d0c, len =3D   =
    620
>   11. 'post' - checksum =3D 0xffb10032, offset =3D 0x00017f78, len =3D   =
     32
>=20
> 'head' Table - Font Header
> --------------------------
>          'head' version:         1.0
>          fontReversion:          1.0
>          checkSumAdjustment:     0x69d6e98e
>          magicNumber:            0x5f0f3cf5
>          flags:                  0x0003
>          unitsPerEm:             1000
>          created:                0x00000000d5420807
>          modified:               0x00000000d5420807
>          xMin:                   -168
>          yMin:                   -281
>          xMax:                   1000
>          yMax:                   1053
>          macStyle bits:          0x0000
>          lowestRecPPEM:          3
>          fontDirectionHint:      2
>          indexToLocFormat:       0
>          glyphDataFormat:        0
>=20
> For comparison Tinos ttf substitute for Times Roman:
>=20
> $ ttfdump /usr/share/fonts/tinos/Tinos-Regular.ttf | awk "/'head'/,/^$/"
>   12. 'head' - checksum =3D 0x0bd978fc, offset =3D 0x0000015c, len =3D   =
     54
>   13. 'hhea' - checksum =3D 0x19811ca6, offset =3D 0x00000194, len =3D   =
     36
>   14. 'hmtx' - checksum =3D 0xa4bce0e7, offset =3D 0x00000238, len =3D   =
  13116
>   15. 'kern' - checksum =3D 0xa39da9f5, offset =3D 0x0008d6f8, len =3D   =
   5220
>   16. 'loca' - checksum =3D 0x28e2bf88, offset =3D 0x0001a45c, len =3D   =
  13120
>   17. 'maxp' - checksum =3D 0x10d405bc, offset =3D 0x000001b8, len =3D   =
     32
>   18. 'name' - checksum =3D 0xc3ff0ad5, offset =3D 0x0008eb5c, len =3D   =
   2052
>   19. 'post' - checksum =3D 0xe841b7c5, offset =3D 0x0008f360, len =3D   =
  34664
>   20. 'prep' - checksum =3D 0xbd48485c, offset =3D 0x00019b40, len =3D   =
   1550
>=20
> 'head' Table - Font Header
> --------------------------
>          'head' version:         1.0
>          fontReversion:          1.20736
>          checkSumAdjustment:     0x84b246c2
>          magicNumber:            0x5f0f3cf5
>          flags:                  0x001b
>          unitsPerEm:             2048
>          created:                0x00000000c844d0ce
>          modified:               0x00000000d25f0c4c
>          xMin:                   -1114
>          yMin:                   -797
>          xMax:                   5728
>          yMax:                   2068
>          macStyle bits:          0x0000
>          lowestRecPPEM:          9
>          fontDirectionHint:      2
>          indexToLocFormat:       1
>          glyphDataFormat:        0
>=20
> > [1] I do observe that the URW font descriptions shipped by groff include
> >      a special character called "space".  Syntactically, this would be
> >      accessed within a groff document via a special character escape
> >      sequence: `\[space]`.  I've never seen a document do this.  I admit
> >      that I don't have any idea why this is present or what its semanti=
cs
> >      are: I need a PostScript or PDF expert to tell me.[2]  It does occ=
ur
> >      to me that we might enhance afmtodit make of use of it as the
> >      default "spacewidth".
> >=20
> > [2] Or I can self-help; I have copies of the _PostScript Language
> >      Reference Manual_ (3rd ed.) and a version of ISO 32000 lying aroun=
d.
>=20
> But Unifont uses 64 units/em, so 20-21?

Thanks!!!

I've tried to build the Chinese man-pages book for shadow, but I still
don't get Chinese letters, so I wasn't able to test this value, but I'll
try debugging it in the following days.

Anyway, I've applied this value in a commit that I'll push tomorrow to
the Linux man-pages' master branch.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--9XecfChFJN+v5ujU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYkQpsACgkQnowa+77/
2zLGaQ/+Lt2yDNrQWoyEDHc4JgOivBRNOfSP3XCERUCEWgholLQlUZ1t5cDS2jDb
LL1aYeHXVQ6dd9zSe39TLJa+pPtRZsc1oUCLr7IPV2feQsU6nGJIuW+G0lKXSxhR
dYLLgRauEpP9l20io+nBoWH+qKCia/Cstf3X/Evz++Be6+t1CqpSw0eZettltJgS
0sseQ6GRxc9ktOmt7T1iGOLRAPZ6XG8AgpQ6okW1r4ysLQDBiBNGUwDOZuYYYdjr
Jptn8/SCwu58Hkq3cldpOYWQ2uPyWhQfiLKx+6qtNULaKcb7DL5wf5uMogenA2GD
HdYcaQTHN+z0G7nGAm3759AcSKga18QSoYO8UmbNbf4L/93dJ56DfZ/0hfvO83Py
jOFq8vdqUm4Qb4fK2VokkSSbAPpcMEmDlFJ1Q53WtvzKSa49jz2si9WiROTFLwfQ
MkACwBuwA+K1Y7vOksj1myNcMUfFVHvkVfW2HwNtaKWcCbd5fmYVIP3k3R7zwD8V
3OiH9R7sM5tB6nsm9sYI7a4M1KYwxZtRCupWRV4fTVjmnG+i0waXbLURScgDAJXL
fcdtgiE7odSu58e+Ag/qXhNX2Ik6c59W7aC5A6ZNdTE4qfAbVATE0b1r/Q0Tuy3A
rjgSsH4r/N0rgdYb2SbpHtsF3tiK/dV8d5lIDjWt46kWp/zKI+8=
=RURD
-----END PGP SIGNATURE-----

--9XecfChFJN+v5ujU--

