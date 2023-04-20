Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41ABB6E933F
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 13:45:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232726AbjDTLol (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 07:44:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229775AbjDTLoI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 07:44:08 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5097C1FF0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:44:07 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id v3so1110749wml.0
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681991046; x=1684583046;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dhyda5Cek+pk7cQVnLhNh5+nI1DmtvET99HFMlIvpYw=;
        b=A+uz9m96KUJo8F9UDaY3t4qkBFsJ88x2ONO5Tbvu61KdtoBxMiRck3qj4cUIr3HvYZ
         N2dkBdeTQ1F6twzDBnkU7zpL0vJOhhjFFGBmpWzniG6XtPzEhLuvPBeRms41MM45d3as
         RXld4xXni15trFUX29OX/OK87uWzoVsMccrn1N2Zsw+oR5ekHYzw703ZB2BRq4/+wGNk
         hnr/ORHJQ8Kqy7fE/+Bp35eOEskHkw4kwcOZz6XKN+OEFYAPb8BmlPTEZ0RtX8NFG37K
         fFz1EQ0tGSAWBAX93jDZuLvOTHI50OAcp3p6yXhn0KeaQB/ngKm6fsVnNVXUqpV2PD/2
         d7cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681991046; x=1684583046;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dhyda5Cek+pk7cQVnLhNh5+nI1DmtvET99HFMlIvpYw=;
        b=jpaupHcD4q90lvgZdujoihcdjg0YZNcOX3UwZclgRPj2MyEqtrAq2P9K14WFPgQH8a
         kisZ886xEN5VmTYA3Vk19wTy2Y2Jffq+SU8vEbJkRVTR4OOLs+ilNXKSiT8EJshYmiHY
         i8bHZGAFJfLjm10tqoNGgwGHIQBI4R/5t3vAnGHSLlV2LEvEZyVC8z33Sni8rrDFI3gM
         Brjbm1RAqOWgB681X4Y84Oh+Wrrr8D74ExV4vFTFx7ZjouQDHcB0K6PJ6ris0LKoLZyp
         N2JJ208s7B8E4lwtk8tIwiSxt6aj4RQZojcHq/0YC9Dgj4x3PM1+PR4pu4elkSAlro6J
         Q6ow==
X-Gm-Message-State: AAQBX9dJVhac01+jajKtPwOxKyMPMMVUUFnXrhdhc5MYGOOeI01OxDY+
        vLQPS8rfocLRExkTlTD+E0hg8rVY0wY=
X-Google-Smtp-Source: AKy350ZWDNiLvnhsngLW/AaAyuwOvUxQlaYiIv8qFzrcQeFrkei13fgsmASwVeZUhjS0ysFadPG3pg==
X-Received: by 2002:a1c:7712:0:b0:3f1:7123:5f82 with SMTP id t18-20020a1c7712000000b003f171235f82mr1050644wmi.12.1681991045271;
        Thu, 20 Apr 2023 04:44:05 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t14-20020a05600c450e00b003f0a6a1f969sm5205503wmo.46.2023.04.20.04.44.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 04:44:04 -0700 (PDT)
Message-ID: <86767c35-3dbc-07a3-7b1a-7b5a9741d21c@gmail.com>
Date:   Thu, 20 Apr 2023 13:43:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v3 8/9] regex.3: desoupify function descriptions
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <36b8274e3527919fd0509bf90b3cc700c3dc25b4.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <92194104b9e74c0b55992a6b1fc4f6c585a117d6.1681989259.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <92194104b9e74c0b55992a6b1fc4f6c585a117d6.1681989259.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------eOpm0hADSm0eKCKdOXJlF4eE"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------eOpm0hADSm0eKCKdOXJlF4eE
Content-Type: multipart/mixed; boundary="------------4VnatNApH4AqXGuizAbOha1o";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <86767c35-3dbc-07a3-7b1a-7b5a9741d21c@gmail.com>
Subject: Re: [PATCH v3 8/9] regex.3: desoupify function descriptions
References: <36b8274e3527919fd0509bf90b3cc700c3dc25b4.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <92194104b9e74c0b55992a6b1fc4f6c585a117d6.1681989259.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <92194104b9e74c0b55992a6b1fc4f6c585a117d6.1681989259.git.nabijaczleweli@nabijaczleweli.xyz>

--------------4VnatNApH4AqXGuizAbOha1o
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1!

On 4/20/23 13:15, =D0=BD=D0=B0=D0=B1 wrote:
> Behold:
>   regerror() is passed the error code, errcode, the pattern buffer,
>   preg, a pointer to a character string buffer, errbuf, and the size
>   of the string buffer, errbuf_size.
>=20
> Absolute soup. This reads to me like an ill-conceived copy from a very
> early standard version. It looks fine in source form but is horrific to=

> read as running text.
>=20
> Instead, replace all of these with just the descriptions of what they d=
o
> with their arguments. What the arguments are is very clearly noted in
> big bold in the prototypes.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

It would be nice to see the --range-diff[1], to easily review changes to
patches.  I have a hard time running vdiff[2] on the raw patches.

[1]:  <https://git-scm.com/docs/git-format-patch#Documentation/git-format=
-patch.txt---range-diffltpreviousgt>
      See also: <https://git-scm.com/docs/git-range-diff>

[2]:  <http://catb.org/jargon/html/V/vdiff.html>, not
      <https://www.unix.com/man-page/linux/1/vdiff/>

Cheers,
Alex

> ---
> Left one "pre"compiled buffer.
>=20
>  man3/regex.3 | 80 +++++++++++++++++++++-------------------------------=

>  1 file changed, 32 insertions(+), 48 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 9f262f985..9bb4a73ff 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -25,8 +25,8 @@ Standard C library
>  .BI "            size_t " nmatch ", regmatch_t " pmatch "[restrict ." =
nmatch ],
>  .BI "            int " eflags );
>  .PP
> -.BI "size_t regerror(int " errcode ", const regex_t *restrict " preg ,=

> -.BI "            char " errbuf "[restrict ." errbuf_size "], \
> +.BI "size_t regerror(int " errcode ", const regex_t *_Nullable restric=
t " preg ,
> +.BI "                char " errbuf "[restrict ." errbuf_size "], \
>  size_t " errbuf_size );
>  .BI "void regfree(regex_t *" preg );
>  .PP
> @@ -52,21 +52,13 @@ for subsequent
>  .BR regexec ()
>  searches.
>  .PP
> -.BR regcomp ()
> -is supplied with
> -.IR preg ,
> -a pointer to a pattern buffer storage area;
> -.IR regex ,
> -a pointer to the null-terminated string and
> -.IR cflags ,
> -flags used to determine the type of compilation.
> -.PP
> -All regular expression searching must be done via a compiled pattern
> -buffer, thus
> -.BR regexec ()
> -must always be supplied with the address of a
> -.BR regcomp ()-initialized
> -pattern buffer.
> +The pattern buffer at
> +.I *preg
> +is initialized.
> +.I regex
> +is a null-terminated string.
> +The locale must be the same when running
> +.BR regexec ().
>  .PP
>  After
>  .BR regcomp ()
> @@ -142,12 +134,10 @@ contains
>  .SS POSIX regex matching
>  .BR regexec ()
>  is used to match a null-terminated string
> -against the precompiled pattern buffer,
> -.IR preg .
> -.I nmatch
> -and
> -.I pmatch
> -are used to provide information regarding the location of any matches.=

> +against the compiled pattern buffer in
> +.IR *preg ,
> +which must have been initialised with
> +.BR regexec ().
>  .I eflags
>  is the
>  bitwise OR
> @@ -242,34 +232,28 @@ and
>  .BR regexec ()
>  into error message strings.
>  .PP
> -.BR regerror ()
> -is passed the error code,
> -.IR errcode ,
> -the pattern buffer,
> -.IR preg ,
> -a pointer to a character string buffer,
> -.IR errbuf ,
> -and the size of the string buffer,
> -.IR errbuf_size .
> -It returns the size of the
> -.I errbuf
> -required to contain the null-terminated error message string.
> -If both
> -.I errbuf
> -and
> +.I errcode
> +must be the latest error returned from an operation on
> +.IR preg .
> +If
> +.I preg
> +is a null pointer\(emthe latest error.
> +.PP
> +If
> +.I errbuf_size
> +is
> +.BR 0 ,
> +the size of the required buffer is returned.
> +Otherwise, up to
>  .I errbuf_size
> -are nonzero,
> -.I errbuf
> -is filled in with the first
> -.I "errbuf_size \- 1"
> -characters of the error message and a terminating null byte (\[aq]\e0\=
[aq]).
> +bytes are copied to
> +.IR errbuf ;
> +the error string is always null-terminated, and truncated to fit.
>  .SS POSIX pattern buffer freeing
> -Supplying
>  .BR regfree ()
> -with a precompiled pattern buffer,
> -.IR preg ,
> -will free the memory allocated to the pattern buffer by the compiling
> -process,
> +invalidates the pattern buffer at
> +.IR *preg ,
> +which must have been initialized via
>  .BR regcomp ().
>  .SH RETURN VALUE
>  .BR regcomp ()

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------4VnatNApH4AqXGuizAbOha1o--

--------------eOpm0hADSm0eKCKdOXJlF4eE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBJXwACgkQnowa+77/
2zJgVxAAm6C5h5cIIz3G6Zf58W+2ZEPJNKnrsI89+a/Zlw0NI7HShny8oIJUP1J1
fsS1547OYFVOwzRKPDmWffeGrLDDZ0rvp7JXn5h/ualqbvfAmDTm0hi3fAuMZcvn
XmjyS1THBcb3kSuJr4DBc5N/TK+/0otYKx4yyKGFRCMRj30q8ZblysoVok+d8zXe
GqlYauiRRYY8IprrGO2JI2SmDYvSO9CASrjJTexxzdq98S98SEzoJ2Gt5bgAY3aE
vAv/mGtuazGbtSf5V6zqSoAS1J/vib8WD25viG4AvkeiInbXk+dGAL//NMZG4IcN
CKjbGxvmB1atSIS9NG+8UDDLcbtoMP/Oy1ws7vU2nQjNSj0c4IOsg1czYe6c1kR6
Nw/ebG3yHdNWU+zBLG36+ZTQTvVW8LAg5q+Fm9rFyLlf9NCNoVZmPL+PeUXj9Y9f
7lalviAagCi/eqHiqok8bM6idqlAFBirBwKgXKXWCtEKqpi/4mPKPjMppgzTYc11
A1sHO+Xcq8W3O4XA0ZIfwPw12bpqATfhchL7w9WPnl2iFwwm47y2igIiTh3WRgg5
eOmCHLXgpGqGuulbYWgtVDXZTm4OBY80PKTNgwMnDOp3UJgGYMfrmXMD7JzEcK/i
IVh3nQGhE65LnL8EKoFSZ/AoGD/oRjmJSPEya6DlTl+EwH1/KLY=
=O02Y
-----END PGP SIGNATURE-----

--------------eOpm0hADSm0eKCKdOXJlF4eE--
