Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98B587CFA4F
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 15:03:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345777AbjJSNDY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 09:03:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345734AbjJSNDX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 09:03:23 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C64021AC
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 06:03:20 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D4CFC433C7;
        Thu, 19 Oct 2023 13:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697720600;
        bh=nrS8oT6LkIl0/0t1LLSfBU+2AhpcuYZo4nYtZ+kYDOw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CD9FleeIWapYRF6jZ2lCL6HEWvMUBYpb1O5dIltXapZBQhdniWHFL/ykCb24+YdVd
         w4tL0ncBpGevqqxfZd7EUWOQLhbyqxXEl3SPHWvcoW1V1MfofaeOfpJ3Hv5RwUITCs
         +/yoJMyip+E73QUK1AwCS1dc5AOzNnqhl4GTONx9Jg1KuLVT84IjrhBr4+hH48oxcb
         G7P/ns19caSVbwXyGbsKspRGaAL5yszDh9sMrsz9E5NnWeHxeQzzA8r9V6yc2ZVk02
         gTSsEBbr0xIRJfJZMhbKjjg7BWOeoge3UwwM8XF8SbMZGaEySSXKQ23EYUYlIIjVXF
         I21AsnWODKXTQ==
Date:   Thu, 19 Oct 2023 15:03:17 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] ld.so.8: Describe glibc Hardware capabilities
Message-ID: <ZTEpFReLAM-VhwKA@debian>
References: <20231019123139.1808532-1-adhemerval.zanella@linaro.org>
 <20231019123139.1808532-3-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="8rcAcQP8/VdH+lhj"
Content-Disposition: inline
In-Reply-To: <20231019123139.1808532-3-adhemerval.zanella@linaro.org>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--8rcAcQP8/VdH+lhj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 15:03:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] ld.so.8: Describe glibc Hardware capabilities

Hi Adhemerval,

On Thu, Oct 19, 2023 at 09:31:39AM -0300, Adhemerval Zanella wrote:
> It was added on glibc 2.33 as a way to improve path search, since
> legacy hardware capabilities combination scheme do not scale
> properly with new hardware support.  The legacy support was removed
> on glibc 2.37, so it is the only scheme currently supported.
>=20
> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> ---
>  man8/ld.so.8 | 48 +++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 47 insertions(+), 1 deletion(-)
>=20
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index cf03cb85e..3025da861 100644
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
> @@ -808,7 +816,7 @@ as a temporary workaround to a library misconfigurati=
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
> @@ -843,6 +851,44 @@ z900, z990, z9-109, z10, zarch
>  .B x86 (32-bit only)
>  acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, m=
ca, mmx,
>  mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
> +.SS glibc Hardware capabilities (from glibc 2.33)
> +The legacy hardware capabilities combinations has the drawback where each
> +feature name incur in cascading extra paths added on the search path lis=
t,

Use semantic newlines:

The legacy hardware capabilities combinations has the drawback where
each feature name incur in
cascading extra paths added on the search path list

> +adding a lot of overhead on
> +.B ld.so
> +during library resolution.
> +For instance, on x86 32-bit, if the hardware
> +supports
> +.B i686
> +and
> +.B sse2

=2EBR sse2 ,

Otherwise, you'll see a space after the comma.  BR alternates bold and
roman for its arguments, and puts them together without spaces.

> +, the resulting search path will be
> +.B
> +i686/sse2:i686:sse2:. .

=2EBR i686/sse2:i686:sse2:. .

> +A new capability
> +.B newcap
> +will set the search path to
> +.B
> +newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2: .

=2EBR newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2: .

> +

=2EPP

> +glibc 2.33 added a new hardware capability scheme, where each ABI can de=
fine

s/, /,\n/

> +a set of paths based on expected hardware support.
> +Each path is added depending of the hardware of the machine, and they ar=
e not

s/, /,\n/

> +combined together.
> +They also have priority over the legacy hardware capabilities. The follo=
wing

s/\. /\.\n/

Cheers,
Alex

> +paths are currently supported.
> +.TP
> +.B PowerPC (64-bit little-endian only)
> +power9, power10
> +.TP
> +.B s390 (64-bit only)
> +z13, z14, z15, z16
> +.TP
> +.B x86 (64-bit only)
> +x86-64-v2, x86-64-v3, x86-64-v4
> +.PP
> +The glibc 2.37 removed support for the legacy hardware capabilities.
> +.
>  .SH SEE ALSO
>  .BR ld (1),
>  .BR ldd (1),
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--8rcAcQP8/VdH+lhj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUxKRUACgkQnowa+77/
2zJwZA/+MzJ0INX4yrjRu5b6ko2t69S78qYE6exELK315LxKkLBMjrE0PZItFG5Q
xIFwybg7/HJiMkBgzFxEkl0lML/SMaYJxVjG3MNlX/R7HJ6ZwJUsSG3A7OtKRe44
3wVzq7S9y2U/pRZ3Thz9wfouFHDVr5K9SpshScwniaZg4sRrmgtWMIw1s3gxlClH
KjFLKwlueo8Rkk3v+O3VzBDmwWzQ14NSTOIDWOoQH/UzF6fhKAWrpBxysgrV6dRT
20OyA+PauhsFCoI3EfZorxUkqlZvOWWFFg7rxh//XoiIxuV/qQlOj/XgRErVl9t2
YIBVpKqR8F7lrzn4Dti3heVgHO9HwMsQVpTeDCvUEPIm5aFS1rX6s/dS8I+BQzEd
WMEc3nZJ2Y1yiYBmXxl8GLJrcBwTyIlgmu9UYixv7XH4ixASwt8i6+VQMyHEVBmE
5kQJJBIbnYiqUnJ53/TgZo1tXR/2m5XFAYMSTmwhcaGNydfMnT4KYEQQR2zZ7cGo
aWGGUYsPXq5JNGakd4aNNeMOq6ZFqHAA86p6awzm1TP2DqYAtKL1x1/ShUVYjrK+
d2WTMeGCauP61kTKnz7TnP+qYmTPoilDBKtEJ7kCBCsB7xQhGccxM+V5rMdXoJFQ
d5+3WbqBRaMe5MEgu0+kvNI5q5PmO4VBmf7Kd904Q4wsfsNh0SU=
=ZjIp
-----END PGP SIGNATURE-----

--8rcAcQP8/VdH+lhj--
