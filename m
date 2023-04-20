Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 247776E99C6
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 18:43:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232726AbjDTQnA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 12:43:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230459AbjDTQnA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 12:43:00 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81B462721
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 09:42:58 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id he11-20020a05600c540b00b003ef6d684102so3360195wmb.3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 09:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682008977; x=1684600977;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=txJjTDL9N1KshAuWGQCtI2Lf85PnRA7boCG+VDjqCgQ=;
        b=TJjaxRWxrOELlHVTjRSR848leYsnclfXX+RqO+0WB0dfbIjM0GaPWpLZSla7zB//KK
         2ICma2V5rXj+AY18zbcWdkCHVDXTVgwywZX9F8H/AHxF9KcloglV0sqbur6WeVJfT4AB
         RP8vRUQ5xUXuVTAlp29PeNeuw2Jo9Y37HU6/x3I6EeUnj4o78FJq9SQGDD8uHeZTnBEQ
         kGVoYHDAELgxcCJjS4MzNQfDZx/8itXLEhAiuA8fgbZGugBHhnaZVvPJIxlAMbreeA3o
         uZvZ+DKEiwAw7E9y026hxmO0nJo2KFpifVyv8kt9pe5CrKoWrf/xeUHR30yJzHaGFIRn
         MQtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682008977; x=1684600977;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=txJjTDL9N1KshAuWGQCtI2Lf85PnRA7boCG+VDjqCgQ=;
        b=HOP+StYdU6rPdLCYyA+GuOmOtxynmb3p+7NcrUIPiNnf4+j5vmO2bfKGb0NAZroJ6e
         FWCIHf9YIQXiyJqdZMPXW1qZorFrBDwqJzRQssNj9oxGMlTrBob1EM0rCSmtAX0j9+Pr
         GdbCpxBAIk9iGiaKVRdwWbomVUMKfWHueGqWkdUMmPGorbBnVmZlUgKtfPUHexF3XRKt
         4wT5sjC2B3uzNX2golyjIjG7kzhqDIkkrEimPZkq7Ml8Evj5hzBInDetezcQydECez11
         nBv19xkBuTMQDnqZLnzCfKyO03wwLFRB3WKOEIiaPC1yNRTbTSmnUSskSFU95nH1/6JL
         xjgA==
X-Gm-Message-State: AAQBX9dIxGtT+OqbV6AgowrG4SEMauw3mCNRWIg9e90kDcE8l4sQyABF
        R8qe4UTLgz7yfmD7UEbo+g8=
X-Google-Smtp-Source: AKy350YMx8g8a2HLA94envKFUcDRe84HU3pw+oy7HNmwZ5WllvWXxDpUNnGL1rwTpjPf1470jcFcEA==
X-Received: by 2002:a7b:c003:0:b0:3ee:f1a4:8895 with SMTP id c3-20020a7bc003000000b003eef1a48895mr1667201wmb.24.1682008976536;
        Thu, 20 Apr 2023 09:42:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id x24-20020a1c7c18000000b003f183127434sm2496785wmc.30.2023.04.20.09.42.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 09:42:56 -0700 (PDT)
Message-ID: <69943892-d6ab-af73-efd2-d4b6df2f7ad2@gmail.com>
Date:   Thu, 20 Apr 2023 18:42:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qEbKxgY9E1KxBi9L7tzYuqhl"
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
--------------qEbKxgY9E1KxBi9L7tzYuqhl
Content-Type: multipart/mixed; boundary="------------LaabVEVdCYd8SFlntAsRpOwM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <69943892-d6ab-af73-efd2-d4b6df2f7ad2@gmail.com>
Subject: Re: [PATCH v5 3/8] regex.3: Desoupify regerror() description
References: <6405717b8de85a370febef4f102676dc65c61113.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <108f30cd72f18419b3e4c62490d63807d48225b7.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>

--------------LaabVEVdCYd8SFlntAsRpOwM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/20/23 17:35, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3 | 46 ++++++++++++++++++++--------------------------
>  1 file changed, 20 insertions(+), 26 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index ae160c9b3..c5185549b 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -26,7 +26,7 @@ .SH SYNOPSIS
>  .BI "            int " eflags );
>  .PP
>  .BI "size_t regerror(int " errcode ", const regex_t *_Nullable restric=
t " preg ,
> -.BI "            char " errbuf "[restrict ." errbuf_size "], \
> +.BI "                char " errbuf "[restrict ." errbuf_size "], \

See man-pages(7):

FORMATTING AND WORDING CONVENTIONS
       The  following  subsections  note some details for preferred forma=
tting
       and wording conventions in various sections of the pages  in  the =
 man=E2=80=90
       pages project.

   SYNOPSIS
       [...]

       In the SYNOPSIS, a long function prototype may  need  to  be  cont=
inued
       over  to the next line.  The continuation line is indented accordi=
ng to
       the following rules:

       (1)  If there is a single such prototype that needs  to  be  conti=
nued,
            then align the continuation line so that when the page is ren=
dered
            on  a fixed=E2=80=90width font device (e.g., on an xterm) the=
 continuation
            line starts just below the start of the argument list in the =
 line
            above.   (Exception:  the indentation may be adjusted if nece=
ssary
            to prevent a very long continuation line or a further continu=
ation
            line where the function prototype is very long.)  As an examp=
le:

                int tcsetattr(int fd, int optional_actions,
                              const struct termios *termios_p);

       (2)  But, where multiple functions in the SYNOPSIS require continu=
ation
            lines, and the function names have different lengths,  then  =
align
            all continuation lines to start in the same column.  This pro=
vides
            a nicer rendering in PDF output (because the SYNOPSIS uses a =
vari=E2=80=90
            able  width  font  where  spaces render narrower than most ch=
arac=E2=80=90
            ters).  As an example:

                int getopt(int argc, char * const argv[],
                           const char *optstring);
                int getopt_long(int argc, char * const argv[],
                           const char *optstring,
                           const struct option *longopts, int *longindex)=
;


>  size_t " errbuf_size );
>  .BI "void regfree(regex_t *" preg );
>  .fi
> @@ -207,34 +207,28 @@ .SS Error reporting
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
>  .I errbuf_size
> -are nonzero,
> -.I errbuf
> -is filled in with the first
> -.I "errbuf_size \- 1"
> -characters of the error message and a terminating null byte (\[aq]\e0\=
[aq]).
> +is
> +.BR 0 ,
> +the size of the required buffer is returned.
> +Otherwise, up to
> +.I errbuf_size
> +bytes are copied to
> +.IR errbuf ;
> +the error string is always null-terminated, and truncated to fit.
>  .SS Freeing
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

--------------LaabVEVdCYd8SFlntAsRpOwM--

--------------qEbKxgY9E1KxBi9L7tzYuqhl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBa48ACgkQnowa+77/
2zIv7w/+PIjiSqbbfWvBPnHFSrKRG63THHmns/CGYrBpV3GXqOcK+fOo+aFZ8DBN
BNeO+3o//RJfMxz7LLDIotqiOnm0/9JvPA1Gv8DYG2xUh84i0J1mT2x98Q2wrnDy
tWwl8PeR9hxFJvbVoNo2meefbNYvdU2lxIGynjIdVkwObkqk3Ul1I/H/7fNKbNm9
UVQUdteW+lEqKGThgMBRqtES5TFDHHYUXvkhvvoOFYiyCILLx+iNDQ/5kxg5/K3d
yXhbxS8l0mkhrgggZcjOR24sK0aJZ/43GcGyRHApxxaa/zV4XuVbPtzxwfPmB7qp
WHNBUtzG/i+nsBPbl5swIYFa+FrnCVGbCC4ltvyvRoW0sBrY2QCuGF3+WTig6Ncs
l0g4cUttymAh8Oq0IoheHeuBfhkAXE7rH/rFfeE4JiyFIWPOGdLxNFP0UPGWBXmd
GekFH7asZBvCgiFo0dvS/Fn/+sdhR/dzYGfwNfgZIA0cNSR9dEp/F+o4R3NNETM6
XcdkhErW+5BPhvIFIkrr1wAsSMgM+BqQY70R4IKjlMBLNmd7+Sh8nUhAS7I7skVz
SxaBuQ5YkWR2mo6E7C2gH0FzoG4usQHxmL1eJ3SDTnwIdH4niICU4IK9L0jnAm9D
bfEVxELyW2POcFOcv2jig/StBb5TzYM8OtY7zi0JXM04DYiNVMQ=
=0165
-----END PGP SIGNATURE-----

--------------qEbKxgY9E1KxBi9L7tzYuqhl--
