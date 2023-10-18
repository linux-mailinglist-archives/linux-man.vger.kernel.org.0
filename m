Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C4E27CE829
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 21:51:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231656AbjJRTvj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 15:51:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231860AbjJRTvZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 15:51:25 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F52010C1
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 12:50:24 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69223C433C8;
        Wed, 18 Oct 2023 19:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697658624;
        bh=MPXF8XuwHO9Q5tsGyC54JmtWeF0HhqEOaero5gqelwQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uTux0Gs3y1oWP/W7axBaIKp44+9WxIN1ylXBsU2xUgjuF6ZLHxIFxGgiErwrkBDYM
         8cplUjrLpUsAZoh2WuzLJ8u0GMCDrRANM9cQA8FBje8WDwLWuB+LrQOr76cetqFJ9j
         P4I4vvGNOBXpOmMkZqHSq6/0OfUJ9CjclD9o7aVM/KrAZXjXRai56LDDkaXLCxlZuj
         gJhM54hweDWDNgh2zOr2PizNbIjv5KgUgf3rxlhLHkyUHtQx2Fefdu1HGvwMVyIBmQ
         2RjCvivR7vDIhuU4xi7dP08TIFrRU24sQYRO/0cSg8lzzZEEurCQmAs0s9arT25rtE
         LaEpUfg3g1pyA==
Date:   Wed, 18 Oct 2023 21:50:20 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] ld.so.8: Describe glibc Hardware capabilities
Message-ID: <ZTA2_f0gWRRcob5i@debian>
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
 <20231018172104.1196993-5-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="L8ajiK8fKWsbCvIk"
Content-Disposition: inline
In-Reply-To: <20231018172104.1196993-5-adhemerval.zanella@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--L8ajiK8fKWsbCvIk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 18 Oct 2023 21:50:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] ld.so.8: Describe glibc Hardware capabilities

Hi Adhemerval,

On Wed, Oct 18, 2023 at 02:21:03PM -0300, Adhemerval Zanella wrote:
> It was added on glibc 2.33 as a way to improve path search, since
> legacy hardware capabilities combination scheme do not scale
> properly with new hardware support.  The legacy support was removed
> on glibc 2.37, so it is the only scheme currently supported.
>=20
> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> ---
>  man8/ld.so.8 | 47 ++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 46 insertions(+), 1 deletion(-)
>=20
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index a0020be98..0e742cddd 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -208,6 +208,14 @@ The objects in
>  .I list
>  are delimited by colons.
>  .TP
> +.BI \-\-glibc-hwcaps-mask " list"
> +only search built-in subdirectories if in
> +.IR list .
> +.TP
> +.BI \-\-glibc-hwcaps-prepend " list"
> +Search glibc-hwcaps subdirectories in
> +.IR list .
> +.TP
>  .B \-\-inhibit\-cache
>  Do not use
>  .IR /etc/ld.so.cache .
> @@ -797,7 +805,7 @@ as a temporary workaround to a library misconfigurati=
on issue.)
>  .I lib*.so*
>  shared objects
>  .SH NOTES
> -.SS Hardware capabilities
> +.SS Legacy Hardware capabilities (from glibc 2.5 to glibc 2.37)
>  Some shared objects are compiled using hardware-specific instructions wh=
ich do
>  not exist on every CPU.
>  Such objects should be installed in directories whose names define the
> @@ -832,6 +840,43 @@ z900, z990, z9-109, z10, zarch
>  .B x86 (32-bit only)
>  acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, m=
ca, mmx,
>  mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
> +.SS glibc Hardware capabilities (from glibc 2.33)
> +The legacy hardware capabilities combinations has the drawback where eac=
h feature

Please don't use more than 80 columns in man(7) source.  See this
warning:

$ make --debug=3Dprint lint-man-mandoc
LINT (mandoc)	.tmp/man/man8/ld.so.8.lint-man.mandoc.touch
! (mandoc -man -Tlint  man8/ld.so.8 2>&1 \
   | grep -v -f './share/lint/mandoc/man.ignore.grep' \
   ||:; \
) \
| grep ^ >&2
mandoc: man8/ld.so.8:849:81: STYLE: input text line longer than 80 bytes: T=
he legacy hardware ...
mandoc: man8/ld.so.8:850:82: STYLE: input text line longer than 80 bytes: n=
ame incur in cascad...
mandoc: man8/ld.so.8:854:81: STYLE: input text line longer than 80 bytes: d=
uring library resol...
mandoc: man8/ld.so.8:867:82: STYLE: input text line longer than 80 bytes: T=
he glibc 2.33 added...
mandoc: man8/ld.so.8:870:81: STYLE: input text line longer than 80 bytes: p=
riority over the le...
mandoc: man8/ld.so.8:882:1: WARNING: skipping blank line in line scope
make: *** [share/mk/lint/man/man.mk:32: .tmp/man/man8/ld.so.8.lint-man.mand=
oc.touch] Error 1

> +name incur in cascading extra paths added on the search path list, addin=
g a lot of

Also, please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.

> +overhead on
> +.B
> +ld.so

We prefer having it all in one line:  .B ld.so

> +during library resolution.  For instance, on x86 32-bit, if the hardware=
 supports
> +.B i686
> +and
> +.B sse2
> +, the resulting search path will be
> +.B
> +i686/sse2:i686:sse2:. .
> +A new capability
> +.B newcap
> +will set the search path to
> +.B
> +newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2: .
> +

Please don't use blank lines in man(7) source.  If you want a paragraph
separator, use '.PP'.  See this warning:

$ make build-catman
TROFF	.tmp/man/man8/ld.so.8.cat.set
an.tmac:man8/ld.so.8:866: style: blank line in input
an.tmac:man8/ld.so.8:882: style: blank line in input
an.tmac:man8/ld.so.8:884: style: blank line in input
make: *** [share/mk/build/catman.mk:54: .tmp/man/man8/ld.so.8.cat.set] Erro=
r 1
make: *** Deleting file '.tmp/man/man8/ld.so.8.cat.set'


> +The glibc 2.33 added a new hardware capability scheme, where each ABI ca=
n define a

s/The //
s/, /,\n/

> +set of paths based on expected hardware support. Each path is added depe=
nding of

s/\. /\.\n/

(And if we ever had two sentences in the same source line, there should
be two spaces.  But we don't.)

> +the hardware of the machine, and they are not combined together. They al=
so have
> +priority over the legacy hardware capabilities. The following paths are =
currently
> +supported.
> +.TP
> +.B PowerPC (64-bit little-endian only)
> +power9, power10
> +.TP
> +.B s390 (64-bit only)
> +z13, z14, z15, z16
> +.TP
> +.B x86 (64-bit only)
> +x86-64-v2, x86-64-v3, x86-64-v4
> +.TP
> +

TP means tagged paragraph.  If you don't want a _tagged_ paragraph, you
just want a paragraph, which is PP.

> +The glibc 2.37 removed support for the legacy hardware capabilities.
> +

This blank is unnecessary, although you may want some separator before
the .SH, for which '.' or '.\"' would be acceptable.

Thanks,
Alex

>  .SH SEE ALSO
>  .BR ld (1),
>  .BR ldd (1),
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--L8ajiK8fKWsbCvIk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUwNvwACgkQnowa+77/
2zJiEg//U96YeBjeUmAZFMo0qQEZw7vK2lyoR348T9W0nj4kxvhCz1M9WSAacx+n
QuUhRwd1jmDnnWTLzlgrZG61OipPBr0v347hIhy59PZxMC9wmUp8DyS9rHHY1Ssu
ZcCPpBW/GJZLjTEz3v1QbxQ1YjwIDYJw8aiZMxhZHU5pEUunep8HsooRaZE66sHx
c5xscTRjhpKlnkuSrRQXZL0VK2IPcmMD8xFBs2rBvwPO1SxzjMFSBiHn4eIIsyJh
DNZVcG5MTO+IzHfGdRVmTlcFlLXyap7Yq0oTxixhj4TbuuGo85GMWtSH3a4GBXXy
Exxrhu38qqLL0qqiMvt2y1k0+bXyKdvFTJoAp9TuDplF0ly7eS7w62XCyvx08C1c
p8Y2LGR/vA37a/hftK6gtEppy9cOozZoHY0s5wbHeoAneE76anqxbpi7SaH04a7b
u9o3skwxmTrI0Eb7ZSaum1xxQ5XtF8XFXsY4+76QLwQkj5f7V4YgWg/wZOGFxlqR
4yGiGlSzem2Xa0zvYSq8pq1RI2oYMNonJQj+2HEE+oW+ZbINZiiq/2ZzO8U5HuW4
NpizP0L0E1ve+2Ruh6mYFdKJqh5C74CEW7WHWuA3KJqiuEkXbjlGlvpmfcbzJbLq
gLWYd7QWCWqQ4Ju8PngmlWEONz6u/1Swt1ryDH9WOrsggx3iP9Q=
=Ldn5
-----END PGP SIGNATURE-----

--L8ajiK8fKWsbCvIk--
