Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 900497CE849
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 21:56:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbjJRT4w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 15:56:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231723AbjJRT4v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 15:56:51 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 669C5116
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 12:56:49 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62D27C433C9;
        Wed, 18 Oct 2023 19:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697659009;
        bh=DW7QBTXRGkQPA45DScrsq40+FFwJTRCKMFmE7Je5ogw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MP8FsNRIxMh4z88S/JxlI3vsbTz6SINNTodX/aYMidk0R7frU2qmpVnBb6rMum97x
         ffOUMLzMuf37EUC6cWlGlBJnTdw0oyqw54/Ji6UUVQus8M06NH83Rva70C4VMmK2z2
         ME1HZtrcKd/aEER62IUWXfvmIsoJjDU7jy+lUocjgbjcsb5J7FKXbvgsZNoPq20U/B
         EnEbmpPE4pC7Mfn8MHd117XJeIx6K9+uZKwQvE/RmzF1aKV9RoC+QQyFE+IIuRPUM5
         cfSVsIx51/KzEx0ESJnmUYXU2058vG+3Pj+M442zz4HUQln09SQqGa2+09u9dF9/vn
         ucZuzuI/x6Xvg==
Date:   Wed, 18 Oct 2023 21:56:45 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 5/5] ld.so.8: Describe the --list-diagnostics loader
 option
Message-ID: <ZTA4fpEaa-EaEIg2@debian>
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
 <20231018172104.1196993-6-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="csY/jDBklGf4RV+G"
Content-Disposition: inline
In-Reply-To: <20231018172104.1196993-6-adhemerval.zanella@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--csY/jDBklGf4RV+G
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 18 Oct 2023 21:56:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 5/5] ld.so.8: Describe the --list-diagnostics loader
 option

Hi Adhemerval,

On Wed, Oct 18, 2023 at 02:21:04PM -0300, Adhemerval Zanella wrote:
> It was added on glibc 2.33 as a way to print system diagnostic
> information in a machine-readable format.
>=20
> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>

Patch applied.  Thanks!

I've amended with the following minor fixes:

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 6684b8418..d4eb27a70 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -238,13 +238,16 @@ .SH OPTIONS
 .B \-\-list
 List all dependencies and how they are resolved.
 .TP
-.BR \-\-list\-diagnostics " (since glibc 2.33)
-Print system diagnostic information in a machine-readable format, such as =
some
-internal loader variables, the auxiliary vector (see
+.BR \-\-list\-diagnostics " (since glibc 2.33)"
+Print system diagnostic information in a machine-readable format,
+such as some internal loader variables,
+the auxiliary vector
+(see
 .BR getauxval (3)),
-and the environment variables.  On some architecture, the command might pr=
int
-additional information (like the cpu features used in GNU indirect function
-selection on x86).
+and the environment variables.
+On some architectures,
+the command might print additional information
+(like the cpu features used in GNU indirect function selection on x86).
 .BR \-\-list\-tunables " (since glibc 2.33)"
 Print the names and values of all tunables,
 along with the minimum and maximum allowed values.



> ---
>  man8/ld.so.8 | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index 0e742cddd..66f14aef4 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -246,6 +246,13 @@ are delimited by colons or spaces.
>  .B \-\-list
>  List all dependencies and how they are resolved.
>  .TP
> +.BR \-\-list\-diagnostics " (since glibc 2.33)

This triggered a warning:

$ make lint build check
LINT (mandoc)	.tmp/man/man8/ld.so.8.lint-man.mandoc.touch
mandoc: man8/ld.so.8:241:27: STYLE: unterminated quoted argument
make: *** [share/mk/lint/man/man.mk:32: .tmp/man/man8/ld.so.8.lint-man.mand=
oc.touch] Error 1

With the fix from above it vanished.

Here are the applied patches:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dcce97466d5ed9e278120b7a49c7933e939742ef1>

Cheers,
Alex

> +Print system diagnostic information in a machine-readable format, such a=
s some
> +internal loader variables, the auxiliary vector (see
> +.BR getauxval (3)),
> +and the environment variables.  On some architecture, the command might =
print
> +additional information (like the cpu features used in GNU indirect funct=
ion
> +selection on x86).
>  .BR \-\-list\-tunables " (since glibc 2.33)"
>  Print the names and values of all tunables,
>  along with the minimum and maximum allowed values.
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--csY/jDBklGf4RV+G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUwOH0ACgkQnowa+77/
2zKAphAAgo9oS8HL5anCKJf4ukmc3KLdTqz8T9P86uMjlZPzkY5alnHab9yzVQWr
0mezpCF0oFZL/9o0yRUNIKSeMdaXuWvfP4X56AGuiiYm3177MeOrXIcQ3w6UCtPN
FFoHxN4laAZj26ErKykMdvhJ3n7OHs0e8LhfZtsqzcRM5Xxbiyigv/NXod/qAmAm
3PHVHSp08riMCKWOuRek8PG2J6rm/UAUGPc1Zin4JYUCqRk/Pbi685yXxTjdiH8K
MiCkVoEirbF1NpXSza7znLYS8mMqW/pesI8LRWvjNd63iOjTxnC1yamD2wlgH1Al
viDNMlL6Mkp41sjCmSlC8qzov2ZxsQvL5r79O3KWKVDFgE3yJwafA57hNAcyKrYM
dYGSF32qgwmCjNdCnKJgWKhHh9tg0xgVAXCJdReOcCA+n44loF1HA2c81ZcWKTSG
n8R775hC3ahe6fuNeahGWRbo+eDTMpq7AIsA/KWNgNE4DcmbY/jp6F39QowCn6Ew
irLqe8GZmrSHMR8X5BWLjs1iu+38qp49FPaE6YpzA/+O9zMpFW0zbyujKn/7gCY+
0ldLbJhXXv3Uct9GJM3re4/mzS6MA7lu9+hI55M8PbCk+WV2md3ue5JGOIyW5tIm
zSTNYLzKx/lJXJoky7pgjfgosW0/uUO2/9i7G5XE7J5+EGDg4ss=
=t/n+
-----END PGP SIGNATURE-----

--csY/jDBklGf4RV+G--
