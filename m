Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A7DB7CE74D
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 21:06:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229963AbjJRTG2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 15:06:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229924AbjJRTG2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 15:06:28 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BD8B114
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 12:06:26 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 198D7C433C7;
        Wed, 18 Oct 2023 19:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697655985;
        bh=6Zl5/SRRm8dkjYs4d9doDUGHBwO+m1v0c+nVCdsrtHg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hfYp13YsPgrT8NYoMUBAPibVeVL+4IQxoYmtbhS35ZFzBgJHZEfiwGe9BN0etBCXf
         L6xxtMymqiuGhFXv6sGhWgSsHgPvSiI1BQ+jeEM4ocXH1b0CORGTmdBxkULaaDPIV0
         wkQYw50WITWuJ1AidgmhIGf/IDmNcJ1aHhnTd3LBtClorloYUmXw/rDInCs4+98yJg
         Vp2BadYoGlK89S70PRLg8hFV8ySpdaYS3jMSpghL7sGGUn/hgWitbCKsLRYdMWa8Aw
         xCFq65Uxps/U9sgpmF7EG+lr8OKQa12k59prswRZgLviG5GCjgkmpvCaILsIaFG37g
         KgJgGs5/2t9dg==
Date:   Wed, 18 Oct 2023 21:06:22 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] ld.so.8: Update environment variables from recent
 glibc versions
Message-ID: <ZTAsrnUGVgUll56p@debian>
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
 <20231018172104.1196993-2-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ABfzJff5ZPRGV86L"
Content-Disposition: inline
In-Reply-To: <20231018172104.1196993-2-adhemerval.zanella@linaro.org>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ABfzJff5ZPRGV86L
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 18 Oct 2023 21:06:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] ld.so.8: Update environment variables from recent
 glibc versions

Hi Adhemerval!

On Wed, Oct 18, 2023 at 02:21:00PM -0300, Adhemerval Zanella wrote:
> Recent glibc version removed support for LD_TRACE_PRELINKING,
> LD_ASSUME_KERNEL, and LD_USE_LOAD_BIAS.
>=20
> Also adds a note for LD_HWCAP_MASk that since 2.26 the environment
> variable might be ignored if glibc does not support tunables.
>=20
> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
> ---

Patch applied.  Thanks!

I've also applied some small fixes for consistency, and to use "semantic
newlines".  See below.

Cheers,
Alex

P.S.:
I'm deprecating <alx.manpages@gmail.com>; please use <alx@kernel.org>.

---

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 5b5c22825..1999c24d6 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -310,7 +310,7 @@ .SS Secure-execution mode
 .SS Environment variables
 Among the more important environment variables are the following:
 .TP
-.BR LD_ASSUME_KERNEL " (from glibc 2.2.3 to 2.36)"
+.BR LD_ASSUME_KERNEL " (from glibc 2.2.3 to glibc 2.36)"
 Each shared object can inform the dynamic linker of the minimum kernel ABI
 version that it requires.
 (This requirement is encoded in an ELF note section that is viewable via
@@ -628,7 +628,9 @@ .SS Environment variables
 is ignored in secure-execution mode.
 .TP
 .BR LD_HWCAP_MASK " (from glibc 2.1 to glibc 2.38)"
-Mask for hardware capabilities.  Since glibc 2.26 the option might be igno=
red
+Mask for hardware capabilities.
+Since glibc 2.26,
+the option might be ignored
 if glibc does not support tunables.
 .TP
 .BR LD_ORIGIN_PATH " (since glibc 2.1)"
@@ -703,7 +705,7 @@ .SS Environment variables
 .\" (This is what seems to happen, from experimenting)
 then all prelinking activity is traced.
 .TP
-.BR LD_USE_LOAD_BIAS " (from glibc 2.3.3 to 2.35)"
+.BR LD_USE_LOAD_BIAS " (from glibc 2.3.3 to glibc 2.35)"
 .\" http://sources.redhat.com/ml/libc-hacker/2003-11/msg00127.html
 .\" Subject: [PATCH] Support LD_USE_LOAD_BIAS
 .\" Jakub Jelinek


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

>  man8/ld.so.8 | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>=20
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index 900f3a9b9..5b5c22825 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -310,7 +310,7 @@ A nonzero value may have been set by a Linux Security=
 Module.
>  .SS Environment variables
>  Among the more important environment variables are the following:
>  .TP
> -.BR LD_ASSUME_KERNEL " (since glibc 2.2.3)"
> +.BR LD_ASSUME_KERNEL " (from glibc 2.2.3 to 2.36)"
>  Each shared object can inform the dynamic linker of the minimum kernel A=
BI
>  version that it requires.
>  (This requirement is encoded in an ELF note section that is viewable via
> @@ -627,8 +627,9 @@ Since glibc 2.3.4,
>  .B LD_DYNAMIC_WEAK
>  is ignored in secure-execution mode.
>  .TP
> -.BR LD_HWCAP_MASK " (since glibc 2.1)"
> -Mask for hardware capabilities.
> +.BR LD_HWCAP_MASK " (from glibc 2.1 to glibc 2.38)"
> +Mask for hardware capabilities.  Since glibc 2.26 the option might be ig=
nored
> +if glibc does not support tunables.
>  .TP
>  .BR LD_ORIGIN_PATH " (since glibc 2.1)"
>  Path where the binary is found.
> @@ -691,7 +692,7 @@ Since glibc 2.3.4,
>  .B LD_SHOW_AUXV
>  is ignored in secure-execution mode.
>  .TP
> -.BR LD_TRACE_PRELINKING " (since glibc 2.4)"
> +.BR LD_TRACE_PRELINKING " (from glibc 2.4 to glibc 2.35)"
>  If this environment variable is defined,
>  trace prelinking of the object whose name is assigned to
>  this environment variable.
> @@ -702,7 +703,7 @@ If the object name is not recognized,
>  .\" (This is what seems to happen, from experimenting)
>  then all prelinking activity is traced.
>  .TP
> -.BR LD_USE_LOAD_BIAS " (since glibc 2.3.3)"
> +.BR LD_USE_LOAD_BIAS " (from glibc 2.3.3 to 2.35)"
>  .\" http://sources.redhat.com/ml/libc-hacker/2003-11/msg00127.html
>  .\" Subject: [PATCH] Support LD_USE_LOAD_BIAS
>  .\" Jakub Jelinek
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--ABfzJff5ZPRGV86L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUwLK4ACgkQnowa+77/
2zJoyBAAoFOpuddBtadXIADhtrXMPd7Prt2aEmi8oowq3lKbVN8042Q5RIKRQLJo
V1q7ZV4Wa5A84ljw7Yxf++YdCGAiu2HtiLzA7Ps5CHgDPLkbg/ThUgShvJhwRqnv
zL6gx7OTUaBMEuw4a5moJbd5ZPlOeeja9r40iAP9tzDoFo8xUqXmYdt5yBBMBXCL
0XRL09Q1XSfd8vMq13PjH1pYvFWX04cCoRDVJftzitr+azYjyQXL1gaXmBLBJQb6
MaClP67lmY46U0qQQEpQYf9oWC3R0LyNwio4v/a94Eguv7M5aIQquSRbefx8LmaK
0Mr925KzhjAebiiyiZ950b4LIRFM5v/bQUYMkOUwyXSo18DTwoSlRS48yQfN/J9G
O02OBzfubi4mR1+hyKRU7lkkPDv/qnZ9RHSa13FgnUVrwAVYQ2H1/JeVSo3TLe9p
wFXtBZfo47lRyv3vSEp/SK/SkZPno0KHATSB3KfoOxKX/N5uww3gfjpifsZLthYo
17oPf3BhP9dfJaW0Fbz50d6AmaxrRJdJke35JIW6UwOlddsKnr40vJ2xVeH7jIbd
rVgU12eK1p3hBM2mq9A21cltcE257ywBfyhoCSfy+q5WRLtazZqp6DSiCAOLrV9o
qN82oemvY1l+spN6yf7IpXyPtyxYvIaX6Cst1oCu3yQd9TfCT3c=
=DbOw
-----END PGP SIGNATURE-----

--ABfzJff5ZPRGV86L--
