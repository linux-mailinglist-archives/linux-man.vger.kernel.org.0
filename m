Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 853DF754D1B
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 04:06:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbjGPCGN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 22:06:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjGPCGM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 22:06:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5594A26BC
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 19:06:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B2ACA60C50
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 02:06:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69217C433C7;
        Sun, 16 Jul 2023 02:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689473170;
        bh=5AuxfYPz45U9F8kcRrrOKtQunwUfOKuVK6Lqfbrg4F4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=FKtWCTpM42A+ibuEl8T0fpwYhRXo+/ML0/DmxAqBvZSU0KSn7zekaaXvTK2HvsQbp
         /4n+RbCUtKQ/gDwowy+GMv0eS0xGtFl5SajMLBFXdPWn07Fa+fw/ai0N90v8z4SoGN
         0eGP/Hsfb2RmsLU9JyQ3EjyRLAwt5KEIx+GlG/oqF9t7USPGYhRJwiQ3ZEJ1aLGIov
         8i28yYPr8vbBDtwJncqrPxYhkQMx7+le0fboIC1a98koRMUkI53EjnTOgAe5iS4r0u
         ymdmy49RKdbmXKAT0XTU6NoF6+tsoXw0a/JDpTnK4TCrTbe0RAqNnV4nz0zW6TWQ4e
         EACVOnDXzx36w==
Message-ID: <57858bfc-9635-a054-b0df-64e94ad4c554@kernel.org>
Date:   Sun, 16 Jul 2023 04:06:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2] crypt.3, encrypt.3: Fix library name and description
Content-Language: en-US
To:     Xi Ruoyao <xry111@xry111.site>
Cc:     linux-man@vger.kernel.org
References: <20230716015125.1811944-1-xry111@xry111.site>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230716015125.1811944-1-xry111@xry111.site>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AtFUv3iQ5vjf6i8fTU0qE0C7"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------AtFUv3iQ5vjf6i8fTU0qE0C7
Content-Type: multipart/mixed; boundary="------------tcvSBAsHcvGeVZEGUUgjNvEM";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: linux-man@vger.kernel.org
Message-ID: <57858bfc-9635-a054-b0df-64e94ad4c554@kernel.org>
Subject: Re: [PATCH v2] crypt.3, encrypt.3: Fix library name and description
References: <20230716015125.1811944-1-xry111@xry111.site>
In-Reply-To: <20230716015125.1811944-1-xry111@xry111.site>

--------------tcvSBAsHcvGeVZEGUUgjNvEM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 2023-07-16 03:51, Xi Ruoyao wrote:
> libcrypt is the password hashing library, and libcrypto is a completely=

> different library (OpenSSL cryptography library).  While the encrypt()
> function can "encrypt" things, it uses a broken algorithm so let's not
> call libcrypt an "encryption" library at all.  In crypt.3, also replace=

> "encrypt" with "hash" except several places where it really means
> "encrypt".
>=20
> Signed-off-by: Xi Ruoyao <xry111@xry111.site>

Patch applied.  Thanks!

Alex

> ---
>  man3/crypt.3   | 30 +++++++++++++++---------------
>  man3/encrypt.3 |  4 ++--
>  2 files changed, 17 insertions(+), 17 deletions(-)
>=20
> diff --git a/man3/crypt.3 b/man3/crypt.3
> index 1f3e4792e..57027ed5d 100644
> --- a/man3/crypt.3
> +++ b/man3/crypt.3
> @@ -17,10 +17,10 @@
>  .\"
>  .TH crypt 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -crypt, crypt_r \- password and data encryption
> +crypt, crypt_r \- password hashing
>  .SH LIBRARY
> -Encryption and decryption library
> -.RI ( libcrypto ", " \-lcrypto )
> +Password hashing library
> +.RI ( libcrypt ", " \-lcrypt )
>  .SH SYNOPSIS
>  .nf
>  .B #include <unistd.h>
> @@ -52,7 +52,7 @@ Feature Test Macro Requirements for glibc (see
>  .fi
>  .SH DESCRIPTION
>  .BR crypt ()
> -is the password encryption function.
> +is the password hashing function.
>  It is based on the Data Encryption
>  Standard algorithm with variations intended (among other things) to
>  discourage use of hardware implementations of a key search.
> @@ -72,7 +72,7 @@ a 56-bit key is obtained.
>  This 56-bit key is used to encrypt repeatedly a
>  constant string (usually a string consisting of all zeros).
>  The returned
> -value points to the encrypted password, a series of 13 printable ASCII=

> +value points to the hashed password, a series of 13 printable ASCII
>  characters (the first two characters represent the salt itself).
>  The return value points to static data whose content is
>  overwritten by each call.
> @@ -115,7 +115,7 @@ the only thing that the caller should do with this =
structure is to set
>  to zero before the first call to
>  .BR crypt_r ().
>  .SH RETURN VALUE
> -On success, a pointer to the encrypted password is returned.
> +On success, a pointer to the hashed password is returned.
>  On error, NULL is returned.
>  .SH ERRORS
>  .TP
> @@ -165,7 +165,7 @@ function was not implemented, probably because of U=
=2ES.A. export restrictions.
>  .B EPERM
>  .I /proc/sys/crypto/fips_enabled
>  has a nonzero value,
> -and an attempt was made to use a weak encryption type, such as DES.
> +and an attempt was made to use a weak hashing type, such as DES.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> @@ -225,7 +225,7 @@ is an ABI-compatible drop-in replacement.
>  .SH NOTES
>  .SS Features in glibc
>  The glibc version of this function supports additional
> -encryption algorithms.
> +hashing algorithms.
>  .PP
>  If
>  .I salt
> @@ -234,11 +234,11 @@ followed by a string optionally terminated by "$"=
,
>  then the result has the form:
>  .RS
>  .PP
> -$\fIid\fP$\fIsalt\fP$\fIencrypted\fP
> +$\fIid\fP$\fIsalt\fP$\fIhashed\fP
>  .RE
>  .PP
>  .I id
> -identifies the encryption method used instead of DES and this
> +identifies the hashing method used instead of DES and this
>  then determines how the rest of the password string is interpreted.
>  The following values of
>  .I id
> @@ -265,13 +265,13 @@ T}
>  .TE
>  .RE
>  .PP
> -Thus, $5$\fIsalt\fP$\fIencrypted\fP and $6$\fIsalt\fP$\fIencrypted\fP
> -contain the password encrypted with, respectively, functions
> +Thus, $5$\fIsalt\fP$\fIhashed\fP and $6$\fIsalt\fP$\fIhashed\fP
> +contain the password hashed with, respectively, functions
>  based on SHA-256 and SHA-512.
>  .PP
>  "\fIsalt\fP" stands for the up to 16 characters
>  following "$\fIid\fP$" in the salt.
> -The "\fIencrypted\fP"
> +The "\fIhashed\fP"
>  part of the password string is the actual computed password.
>  The size of this string is fixed:
>  .RS
> @@ -283,7 +283,7 @@ SHA-512	86 characters
>  .TE
>  .RE
>  .PP
> -The characters in "\fIsalt\fP" and "\fIencrypted\fP" are drawn from th=
e set
> +The characters in "\fIsalt\fP" and "\fIhashed\fP" are drawn from the s=
et
>  [\fBa\-zA\-Z0\-9./\fP].
>  In the MD5 and SHA implementations the entire
>  .I key
> @@ -299,7 +299,7 @@ followed by "rounds=3D\fIxxx\fP$", where \fIxxx\fP =
is an integer, then the
>  result has the form
>  .RS
>  .PP
> -$\fIid\fP$\fIrounds=3Dyyy\fP$\fIsalt\fP$\fIencrypted\fP
> +$\fIid\fP$\fIrounds=3Dyyy\fP$\fIsalt\fP$\fIhashed\fP
>  .RE
>  .PP
>  where \fIyyy\fP is the number of hashing rounds actually used.
> diff --git a/man3/encrypt.3 b/man3/encrypt.3
> index 9f7ea9627..49549a28f 100644
> --- a/man3/encrypt.3
> +++ b/man3/encrypt.3
> @@ -13,8 +13,8 @@
>  .SH NAME
>  encrypt, setkey, encrypt_r, setkey_r \- encrypt 64-bit messages
>  .SH LIBRARY
> -Encryption and decryption library
> -.RI ( libcrypto ", " \-lcrypto )
> +Password hashing library
> +.RI ( libcrypt ", " \-lcrypt )
>  .SH SYNOPSIS
>  .nf
>  .BR "#define _XOPEN_SOURCE" "       /* See feature_test_macros(7) */"

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------tcvSBAsHcvGeVZEGUUgjNvEM--

--------------AtFUv3iQ5vjf6i8fTU0qE0C7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzUI8ACgkQnowa+77/
2zKfSg/+M8UygFee3VLt//J9UwwguSh5GsvWyUeFGku3+qcQYece64eNXXbplE3T
PfWvJg1r65ynYmg1KFzzOdmj8z04NlwzQIKa627ct/1OZ9+O2TOLvKw8DktyRIei
tbJM8hz2MqD7RuoiUMlD7p3XGHbzeQQKDzwT9bgnRWKRn0G1sE28Ap0YcUqE92HW
1gl+NZeTkOWV6U3OnViic9OA4BTI6eo+rKcEUBgJsPwCV0LUsbjrMQGna/ltOQ+k
mvZP5RYuT2AtLAB1AtUGntwXBJHu2VcSmqEF2ynbldZwXbhWIhnR+n7Vml31eeUX
VSIHuCgYvDgTuVoEdcXHUaTZnqDZXVK82eH6IsqndknWgrUZlCJUprxs8gOauDhd
dMrcTs5uWvAnctqV0hSYW2XT0fT94946iXeSBY++t2ts608RbEH3V9RpMCZqM5eQ
KqitAPc6QYtTHbfquzY4Tzb11TwwXw5WbMPqX0vi7Q80RDrLLc6DDa2VnYOsYj8j
/LJewoyGlYZQc3kuKtDn/i3fnniCBYfgnYw7a0LJVoMWxAtkX4QYnfKjZ2G+k5XT
6tmc+Cmvu7RMTpfq0Z/Zt3Mu2FGcz2HIqilhpQZ+bUmoW+Cvzvdog6LLj2f2iw8Y
deJ9iPEZdFJOfogLovcADhms7B2eO55n/PGxuvZoFpxKZqr4qjk=
=PHo3
-----END PGP SIGNATURE-----

--------------AtFUv3iQ5vjf6i8fTU0qE0C7--
