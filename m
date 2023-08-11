Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E9D6779AD5
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 00:52:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232087AbjHKWwL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 18:52:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230077AbjHKWwK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 18:52:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AE682130
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 15:52:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7F7D364F21
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 22:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C917C433C7;
        Fri, 11 Aug 2023 22:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691794328;
        bh=2JE5ORShRNwIm5MfS0Jei20YnI2e2UAuVM42eAvOukg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=RDkzlZ8cQkcwQDhhj67OFmlNy6OJ5LV0WjeAkgEq8vw7fYvyLCM2Fp7zK7RXVfVfz
         z4czvN+ThI8346tLK9XpHEbxJt0t7B05EpVmvni919uBkksN/x0AmDVv1X72TZ7mRi
         n/vTYyPvPSHNdiLpZjaN4eEwm6EkxnlspS9QX/frSq/s4wBoViElTACPXKuMpNaJ4k
         LhDsojXIPiQjFC65CztkR20xne7KpX5Jy4u9JdRq6yvNH63RdsEfjecOknk8fJV5w1
         bNznEjL+IelbhK2N/0Xl3lUiM8dVMSKwnunFkPV3pH286jHguG3SudGGH0V2Rpww6g
         Yl/beLAmiD4og==
Message-ID: <92db3ed7-b3ed-6508-ff3f-aa0abef764ed@kernel.org>
Date:   Sat, 12 Aug 2023 00:51:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to
 MT-Safe
To:     Shani Leviim <sleviim@redhat.com>
Cc:     Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
        automotive-devel@redhat.com, Carlos O'Donell <carlos@redhat.com>,
        Gobinda Das <godas@redhat.com>
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com>
 <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
 <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org>
 <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lC0RnvUuCTdcIiAgAL0jaBQ3"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------lC0RnvUuCTdcIiAgAL0jaBQ3
Content-Type: multipart/mixed; boundary="------------zm7bt3ZPazrV0hqJYyAHHTPS";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Shani Leviim <sleviim@redhat.com>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org,
 automotive-devel@redhat.com, Carlos O'Donell <carlos@redhat.com>,
 Gobinda Das <godas@redhat.com>
Message-ID: <92db3ed7-b3ed-6508-ff3f-aa0abef764ed@kernel.org>
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to
 MT-Safe
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com>
 <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
 <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
 <ce1e0e84-8835-8fc3-b344-c3b1b5b7cfdd@kernel.org>
 <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>
In-Reply-To: <CAMO6KYqROAQ5fFMcAESJGvBZ-kiC_VDCegZPJaRAF=Nao_1dJg@mail.gmail.com>

--------------zm7bt3ZPazrV0hqJYyAHHTPS
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Shani,

On 2023-07-30 15:41, Shani Leviim wrote:
> Thanks, Alex,
> Attaching the patch (see attachments)
>=20
> From: Shani Leviim <sleviim@redhat.com>
> Date: Sun, 30 Jul 2023 15:51:07 +0300
> Subject: [PATCH 1/1] strerror.3: Change strerror() reference from MT-Un=
safe to
>  MT-Safe
>=20
> The information in this patch was obtained from a glibc upstream patch,=

> commit ID 28aff047818eb1726394296d27b9c7885340bead
>=20
> According the patch above, for glibc versions >=3D2.32,
> strerror() is considered MT-Safe, and the man page should be changed
> accordingly.
>=20
> Signed-off-by: Shani Leviim <sleviim@redhat.com>

The patch doesn't apply.  Can you please check what's wrong with it?


$ git am patches/0001-strerror.3-Change-strerror-reference-from-MT-Unsafe=
-.patch
Applying: strerror.3: Change strerror() reference from MT-Unsafe to MT-Sa=
fe
error: patch failed: man3/strerror.3:238
error: man3/strerror.3: patch does not apply
Patch failed at 0001 strerror.3: Change strerror() reference from MT-Unsa=
fe to MT-Safe
hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


Thanks,
Alex

> ---
>  man3/strerror.3 | 31 +++++++++++++++----------------
>  1 file changed, 15 insertions(+), 16 deletions(-)
>=20
> diff --git a/man3/strerror.3 b/man3/strerror.3
> index 862e153ee..6a3d83164 100644
> --- a/man3/strerror.3
> +++ b/man3/strerror.3
> @@ -71,11 +71,12 @@ part of the current locale to select the
> appropriate language.
>  is
>  .BR EINVAL ,
>  the returned description will be "Invalid argument".)
> -This string must not be modified by the application, but may be
> -modified by a subsequent call to
> +This string must not be modified by the application,
> +and the returned pointer will be invalidated on a subsequent call to
>  .BR strerror ()
>  or
> -.BR strerror_l ().
> +.BR strerror_l (),
> +or if the thread that obtained the string exits.
>  No other library function, including
>  .BR perror (3),
>  will modify this string.
> @@ -100,12 +101,12 @@ For example, given
>  as an argument, this function returns a pointer to the string "EPERM".=

>  .\"
>  .SS strerror_r()
> -The
>  .BR strerror_r ()
> -function is similar to
> +is like
>  .BR strerror (),
> -but is
> -thread safe.
> +but might use the supplied buffer
> +.I buf
> +instead of allocating one internally.
>  This function is available in two versions:
>  an XSI-compliant version specified in POSIX.1-2001
>  (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.13=
),
> @@ -238,7 +239,7 @@ Interface    Attribute    Value
>  T{
>  .BR strerror ()
>  T}    Thread safety    T{
> -MT-Unsafe race:strerror
> +MT-Safe
>  T}
>  T{
>  .BR strerrorname_np (),
> @@ -249,6 +250,10 @@ T{
>  .BR strerror_l ()
>  T}    Thread safety    MT-Safe
>  .TE
> +.PP
> +Before glibc 2.32,
> +.BR strerror ()
> +is not MT-Safe.
>  .hy
>  .ad
>  .sp 1
> @@ -292,13 +297,6 @@ to
>  if the error number is unknown.
>  C99 and POSIX.1-2008 require the return value to be non-NULL.
>  .SH NOTES
> -The GNU C Library uses a buffer of 1024 characters for
> -.BR strerror ().
> -This buffer size therefore should be sufficient to avoid an
> -.B ERANGE
> -error when calling
> -.BR strerror_r ().
> -.PP
>  .BR strerrorname_np ()
>  and
>  .BR strerrordesc_np ()
> @@ -309,4 +307,5 @@ are thread-safe and async-signal-safe.
>  .BR error (3),
>  .BR perror (3),
>  .BR strsignal (3),
> -.BR locale (7)
> +.BR locale (7),
> +.BR signal-safety (7)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------zm7bt3ZPazrV0hqJYyAHHTPS--

--------------lC0RnvUuCTdcIiAgAL0jaBQ3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTWu40ACgkQnowa+77/
2zLWxBAAmPC/4rVRIsi+h8jQwKZa4VEIZU+tpbFbJYkEQO/zGGi9csWYfqge5siQ
YR0uGkhJ8DVOVaTQn1HLuTdJl85QB9CqTgjLzwuJ+ITSx8QBfn16ESRjZfLS+JKl
Xg17EJh+10gHuuqTJqeQDD+jmdlAod84/vAAZEq2SMMKwax7D0GyDo9c8+mXBCR1
ZHLSKhwfFHeP/ArZD4gDra6suXONXtA+Eax+scEDLKABB2VuFXwhjMy6Rb0okf2x
b81pwj38JKoHsTW+D9jgtmz57Zjo627/gNZOyGuD+3y2HP1ShDUQx+XKlJy5DOWd
8ANdAYO9fAq3euDLq1kjcQbCBE6GzoG8+lpOIWBj2qQQ33rZizK36qd4CeMvTZ2t
uKVvyMOVmid1UGAuGjyL0Rjdz/RFKhdGhzB6ILPyhNVtx/uUvqUxIHagJAQ48tzF
HXxgFLp04edmJvfSiRLHe7ADFAc/BQZea26ohNfREqiH+yXBhCVa5NP1CJjKCRte
q8pHcTQNtSPPfvNYsdc9+LYV7vh6TjA8z2/MRbRZ2ICl9SwNuP0qTv1EaQ1vAbXl
+mLQbhKrWGQF+mKEf/r9vzA61Zdml+B1tyD9C8v4lRyN9zJWpR6yVubyHDboHFh0
8CTk4z3uMf1UbkBC2I2qTaIem1puu54VQ4fliiPrTyGu++0jV6Q=
=3Dk1
-----END PGP SIGNATURE-----

--------------lC0RnvUuCTdcIiAgAL0jaBQ3--
