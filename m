Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5110F7DCD0C
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 13:37:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344263AbjJaMej (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 08:34:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344260AbjJaMej (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 08:34:39 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 802A2A1
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 05:34:36 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4619AC433C8;
        Tue, 31 Oct 2023 12:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698755676;
        bh=ZZEVSuJoeZx6QURvWYVam6ItAIkk3zF5AaIyvVhBcs4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Sip+0jIJFkOLNo7IsoC7Prw9X9tgLxHmF2S9N6rOQ6Ewtym0JTa7uAWCuY9GUH1hO
         dlmL8KhIefDWT+Ee990xttS8J30mVXWnSfGsVw6CO0INnOponwIOkAMYbtAI/6nk6Z
         lXM+6q9dVgypd7xTrBUx5dZ+qxVuSX5MzPZJxxYO0oa35bqCy+ATiFM1/v3TsjNYkv
         0DBE4ljkDIjVCTKBs0Eh5936u7BpXZxvgoth0YyzF4v1Kyc01AHM2eEekyRVCClUWA
         cWvcqjDNKFp646/TwKS7SsraUSuk2JbSqm/YLhsE+GzTBICy71K03mxgdbhNLn2AwN
         b6GedrrcHJr2Q==
Date:   Tue, 31 Oct 2023 13:34:32 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        Stefan Puiu <stefan.puiu@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities
Message-ID: <ZUD0WFR4Rearx6_V@debian>
References: <20231026182802.2194109-1-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fbVEefpLFz420Gox"
Content-Disposition: inline
In-Reply-To: <20231026182802.2194109-1-adhemerval.zanella@linaro.org>
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fbVEefpLFz420Gox
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Oct 2023 13:34:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>,
	Stefan Puiu <stefan.puiu@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities

Hi Adhemerval, Stefan,

On Thu, Oct 26, 2023 at 03:28:02PM -0300, Adhemerval Zanella wrote:
> The feature was added on glibc 2.33 as a way to improve the path
> search, since the legacy hardware capabilities combination scheme
> does not scale properly with new hardware support.  The legacy support
> was removed non glibc 2.37, so it is the only scheme currently
> supported.
>=20
> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>

Patch applied.  Thanks!  I amended the patch with some small tweaks (see
diff below).
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Deb82265f495a2c55e76c213c7b877b8eafc2d2a4>

Cheers,
Alex

---

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 3526bcd6e..eb6c2c8ff 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -851,44 +851,50 @@ .SS Legacy Hardware capabilities (from glibc 2.5 to g=
libc 2.37)
 .B x86 (32-bit only)
 acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, mca=
, mmx,
 mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
-.PP
-The legacy hardware capabilities support has the drawback that each
-new feature added grows the search path exponentially, because it has
-to be added to every combination of the other existing features.
-.PP
-For instance, on x86 32-bit, if the hardware
-supports
+.P
+The legacy hardware capabilities support has the drawback that
+each new feature added grows the search path exponentially,
+because it has to be added to
+every combination of the other existing features.
+.P
+For instance, on x86 32-bit,
+if the hardware supports
 .B i686
 and
-.BR sse2
-, the resulting search path will be
+.BR sse2 ,
+the resulting search path will be
 .BR i686/sse2:i686:sse2:. .
 A new capability
 .B newcap
 will set the search path to
 .BR newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2: .
+.\"
 .SS glibc Hardware capabilities (from glibc 2.33)
 .TP
 .\" The initial discussion on various pitfalls of the old scheme is
-.\" https://sourceware.org/pipermail/libc-alpha/2020-May/113757.html
+.\" <https://sourceware.org/pipermail/libc-alpha/2020-May/113757.html>
 .\" and the patchset that proposes the glibc-hwcap support is
-.\" https://sourceware.org/pipermail/libc-alpha/2020-June/115250.html
-glibc 2.33 added a new hardware capability scheme, where under each
-CPU architecture, certain levels can be defined, grouping support for
-certain features or special instructions. Each architecture level has
+.\" <https://sourceware.org/pipermail/libc-alpha/2020-June/115250.html>
+glibc 2.33 added a new hardware capability scheme,
+where under each CPU architecture,
+certain levels can be defined,
+grouping support for certain features or special instructions.
+Each architecture level has
 a fixed set of paths that it adds to the dynamic linker search list,
-depending on the hardware of the machine. Since each new architecture
-level is not combined with previously existing ones, the new scheme
-does not have the drawback of growing the dynamic linker search list
-uncontrollably.
-.PP
-For instance, on x86 64-bit, if the hardware supports
+depending on the hardware of the machine.
+Since each new architecture level is
+not combined with previously existing ones,
+the new scheme does not have the drawback of
+growing the dynamic linker search list uncontrollably.
+.P
+For instance, on x86 64-bit,
+if the hardware supports
 .B x86_64-v3
-(for instance Intel Haswell or AMD Excavator)
-, the resulting search path will be
+(for instance Intel Haswell or AMD Excavator),
+the resulting search path will be
 .BR glibc-hwcaps/x86-64-v3:glibc-hwcaps/x86-64-v2:.
 .\" The x86_64 architectures levels are defined the official ABI:
-.\" https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/low-=
level-sys-info.tex
+.\" <https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/low=
-level-sys-info.tex>
 .\" The PowerPC and s390x are glibc defined ones based on chip
 .\" support (which maps to ISA levels).
 The following paths are currently supported, in priority order.
@@ -901,9 +907,9 @@ .SS glibc Hardware capabilities (from glibc 2.33)
 .TP
 .B x86 (64-bit only)
 x86-64-v4, x86-64-v3, x86-64-v2
-.PP
+.P
 glibc 2.37 removed support for the legacy hardware capabilities.
-.
+.\"
 .SH SEE ALSO
 .BR ld (1),
 .BR ldd (1),

> ---
>  man8/ld.so.8 | 63 +++++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 62 insertions(+), 1 deletion(-)
>=20
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index cf03cb85e..ed27744cb 100644
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
> @@ -843,6 +851,59 @@ z900, z990, z9-109, z10, zarch
>  .B x86 (32-bit only)
>  acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, m=
ca, mmx,
>  mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
> +.PP
> +The legacy hardware capabilities support has the drawback that each
> +new feature added grows the search path exponentially, because it has
> +to be added to every combination of the other existing features.
> +.PP
> +For instance, on x86 32-bit, if the hardware
> +supports
> +.B i686
> +and
> +.BR sse2
> +, the resulting search path will be
> +.BR i686/sse2:i686:sse2:. .
> +A new capability
> +.B newcap
> +will set the search path to
> +.BR newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2:=
 .
> +.SS glibc Hardware capabilities (from glibc 2.33)
> +.TP
> +.\" The initial discussion on various pitfalls of the old scheme is
> +.\" https://sourceware.org/pipermail/libc-alpha/2020-May/113757.html
> +.\" and the patchset that proposes the glibc-hwcap support is
> +.\" https://sourceware.org/pipermail/libc-alpha/2020-June/115250.html
> +glibc 2.33 added a new hardware capability scheme, where under each
> +CPU architecture, certain levels can be defined, grouping support for
> +certain features or special instructions. Each architecture level has
> +a fixed set of paths that it adds to the dynamic linker search list,
> +depending on the hardware of the machine. Since each new architecture
> +level is not combined with previously existing ones, the new scheme
> +does not have the drawback of growing the dynamic linker search list
> +uncontrollably.
> +.PP
> +For instance, on x86 64-bit, if the hardware supports
> +.B x86_64-v3
> +(for instance Intel Haswell or AMD Excavator)
> +, the resulting search path will be
> +.BR glibc-hwcaps/x86-64-v3:glibc-hwcaps/x86-64-v2:.
> +.\" The x86_64 architectures levels are defined the official ABI:
> +.\" https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/lo=
w-level-sys-info.tex
> +.\" The PowerPC and s390x are glibc defined ones based on chip
> +.\" support (which maps to ISA levels).
> +The following paths are currently supported, in priority order.
> +.TP
> +.B PowerPC (64-bit little-endian only)
> +power10, power9
> +.TP
> +.B s390 (64-bit only)
> +z16, z15, z14, z13
> +.TP
> +.B x86 (64-bit only)
> +x86-64-v4, x86-64-v3, x86-64-v2
> +.PP
> +glibc 2.37 removed support for the legacy hardware capabilities.
> +.
>  .SH SEE ALSO
>  .BR ld (1),
>  .BR ldd (1),
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--fbVEefpLFz420Gox
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVA9FgACgkQnowa+77/
2zKiBw/+MzRCZ72O9CdtVioCs6W86xjis+NFQb2engvWcvZu4sRiVoIzSsS8Thd0
Cs/VeNiHnrZeG0E7UXXQD74J3gL+/+o1EpOG5RBriYZLVPF3ssG51wVtVrWcVN18
XopC1SbpqcfnIWWPGPQzyGuXFKEvKEoe+8RLlJ1+Gt7JAkDe9yFp1s9b9Ez83GvD
PT9OdGU/FjyFIKbD0xpj0AIg1ebV2iR/K3ZBscwmZuZAvKoe+KcdzTMEEH5A8ipl
MRwn0jkU1XM02hC2eQ2YS4MyFb9qYcjyHr+yN32Aq8FO6RUsOQhm9aSPkKjnIcnC
VpGGft/m7gTWmHSmaTPTtY1T7u3rWbGt0I7AWdg+Apvg21+VAQcfo549SPvqMQwS
4Xde5plMasJOXIF50YsGtcyOsAzCvHZFd6jTFEwsgORlBn/bs4L7jwJVyFs6DMse
AIwYEzEVWbBVDnBKhS+rcNHk7Bxo/HvKTwClgZF6gLT2uFcHb5k+D5moZjxtM4w3
VCyVnS2+iAtp6EaiHeVan1v97WJwI5UDkXOdMeKq9R1GoVmKOgw/SB5iBR9XKr1M
IhkVPtc/N1piXhdm5Xz3K6Nw2XY06cQJmW3BP2WmfoSgCa+dHk3gLcyZLivaO7OI
CTrJA28+51CYEJb7xERPLlG+4P9I8M6w5haphL1xNWogpa+dPMY=
=/52u
-----END PGP SIGNATURE-----

--fbVEefpLFz420Gox--
