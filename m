Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CFFD77A43E
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 01:36:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230136AbjHLXgc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 19:36:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbjHLXgb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 19:36:31 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71BA618B
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 16:36:34 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 11F6361C06
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 23:36:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6132EC433C7;
        Sat, 12 Aug 2023 23:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691883393;
        bh=iBKjI/DqIAaVxaqGsKaWB8Edid0MMWCIuo6P2WXRQnk=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=ill+TGm3k5jUObkm7J/je+MnLpuJOO4pHcaamX9GOzm7im8u8d0xLTY61H/GMS9PT
         2iH8JlV9X61A0umMhO/v2Fy60KAAqr/jqnMwRXfaTVMo2VXlBUNW04/tnxKbFKWpBh
         lhH4LrmKGqsXdgxHwCidZZlJFsKphfXZvKxS1gnbyP6Sjd6kQR7F3MQsYRZo+MtL8E
         sWNU9gbGtfoosbZv4Ry2LOeAqOukZykxJ7TjjOQSZmNBNzdGQLyp4cRwbzzyQWGDkq
         +v3/s8yBwGpfxmPR3XFM0Xzl/0+9ay1kCd6LPgnS8Akp9SNtXM9icmSm0Lx7vvLb47
         ApRJ3onCednZw==
Message-ID: <929cceff-b394-13aa-a3ae-9ef9d1b21ee5@kernel.org>
Date:   Sun, 13 Aug 2023 01:36:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: PDF book improvements
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Deri <deri@chuzzlewit.myzen.co.uk>,
        linux-man <linux-man@vger.kernel.org>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
References: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
Organization: Linux
In-Reply-To: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------aPx70MQSRekuQJXX85gNeRlt"
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------aPx70MQSRekuQJXX85gNeRlt
Content-Type: multipart/mixed; boundary="------------jn0vKj9Hrt1jNNgh3IVTCrvX";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man <linux-man@vger.kernel.org>
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff <groff@gnu.org>
Message-ID: <929cceff-b394-13aa-a3ae-9ef9d1b21ee5@kernel.org>
Subject: Re: PDF book improvements
References: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>
In-Reply-To: <3acefa68-2055-1978-da55-cc4f66cdd255@kernel.org>

--------------jn0vKj9Hrt1jNNgh3IVTCrvX
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-12 23:46, Alejandro Colomar wrote:
> Hi Deri,
>=20
> My end goal is to be able to embed the creation of the PDF book in the
> Makefiles.  To that end, as a first step, I'd like to reuse part of
> what we already have in the Makefile.  Currently, we process all files
> with -Tpdf, which I guess we'll be able to reuse.
>=20
>      $ make build-pdf -kij >/dev/null 2>&1
>      $ touch man2/gettimeofday.2=20
>      $ make build-pdf V=3D1 | sed '/^[[:upper:]]/s/^/\n/'
>=20
>      PRECONV	.tmp/man/man2/gettimeofday.2.tbl
>      preconv   man2/gettimeofday.2 >.tmp/man/man2/gettimeofday.2.tbl
>=20
>      TBL	.tmp/man/man2/gettimeofday.2.eqn
>      tbl <.tmp/man/man2/gettimeofday.2.tbl >.tmp/man/man2/gettimeofday.=
2.eqn
>=20
>      EQN	.tmp/man/man2/gettimeofday.2.pdf.troff
>      ! (eqn -Tpdf   <.tmp/man/man2/gettimeofday.2.eqn 2>&1 >.tmp/man/ma=
n2/gettimeofday.2.pdf.troff) \
>      | grep ^ >&2
>=20
>      TROFF	.tmp/man/man2/gettimeofday.2.pdf.set
>      ! (troff -Tpdf -wbreak  -man  <.tmp/man/man2/gettimeofday.2.pdf.tr=
off 2>&1 >.tmp/man/man2/gettimeofday.2.pdf.set) \
>      | grep ^ >&2
>=20
>      GROPDF	.tmp/man/man2/gettimeofday.2.pdf
>      gropdf   <.tmp/man/man2/gettimeofday.2.pdf.set >.tmp/man/man2/gett=
imeofday.2.pdf
>=20
> What part of this "pipeline" can we reuse?  I guess we can reuse the
> .pdf.troff files.  The .pdf.set files probably cannot be reused for
> the single book, as they'll have the page numbers and so on already
> set, right?
>=20
> So, I'm imagining that we could cat(1) your front cover with all
> these files, and then process with troff(1) and gropdf(1).  Does
> that make sense?
>=20
> Could we also reuse the .pdf.set files and only run gropdf(1) on
> the catenation of them?

I added a script to sort these files, as you do with your sortman()
perl function.  I called it sortman too :)


$ cat scripts/sortman=20
#!/bin/sh

# Copyright 2023, Alejandro Colomar <alx@kernel.org>
# SPDX-License-Identifier: GPL-3.0-or-later

export LC_COLLATE=3Den_US.UTF-8;

sed   -E '/\/intro./ s/.*\.([1-8])$/\10\t&/' \
| sed -E '/\/intro./!s/.*\.([1-8])$/\11\t&/' \
| sed -E '/\/intro./!s/.*\.([1-8].+)/\1\t&/' \
| sort \
| cut -f2;


We'll probably need this to sort the files in the shell.

>=20
> Cheers,
> Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------jn0vKj9Hrt1jNNgh3IVTCrvX--

--------------aPx70MQSRekuQJXX85gNeRlt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTYF34ACgkQnowa+77/
2zKDkg//YFQx3bwelJsWQ33+2CuNXss5ZPi8xbFu354lVQhX27UkO2+Z2W8BeiGB
tpHEE7907uFjL3CfiOBWpvldyqkJRHy99yd0+jl16G9zDn2S7JfF1ehMmv5M2JN3
tqVxgXuTTfLZ4otGtR+CDTxYMt3GveRgA+byinhJQm4Xi24b3yl0A6t2vFcXVYO8
m7sulefnJM9G9w52Oa8nzS128iZZRqBb6ju26CkC7tevv9qVdAkve+uI4skCBV+p
KfKqchEMSqoMvzpNSd+JSUQ3UqB0jG5jdYG8GyGKekkxR/ZhTQ3R9bBlda7Cdhoc
tzzpvDT0epPYIBnEze1n0cxfIOpWhGk94eta9j91yZg7pVxWa217i7r5hJGLN9bQ
1cBTCOSFVdFOFJYm8R6g1uDxAQgXe/7kdwtU2FNnxr0E4jJQBS/dPBGJrJtlDqH7
hyCABw/sQ5M4SGcKNfTxqw4Npo3gFqDOs9d9h9fyddfFxN11z7W2Fb+fi+xEHa1f
Oh1UN76Py7RgneBWocyIZ2ms8HXzw7RygpAGejhiFBRXeg7Fl+bfv1UZz0MzWhI9
si/ccfan65uwdVp1JHsP5sBSKbaHzaPU5Jn1X7cCnEDezTTBQ+io9LuaQfKJ4wYg
LIBkHj2twQT6dStasMvt7zqN71bPfc3CEghOVvrHSBb/5jjqjIE=
=dPHx
-----END PGP SIGNATURE-----

--------------aPx70MQSRekuQJXX85gNeRlt--
