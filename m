Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 592936E2204
	for <lists+linux-man@lfdr.de>; Fri, 14 Apr 2023 13:27:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229647AbjDNL10 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Apr 2023 07:27:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbjDNL1Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Apr 2023 07:27:25 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1667D2136
        for <linux-man@vger.kernel.org>; Fri, 14 Apr 2023 04:27:10 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id he13so15150336wmb.2
        for <linux-man@vger.kernel.org>; Fri, 14 Apr 2023 04:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681471628; x=1684063628;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I/gdjDix1WhFWBCMFAbui2jQvZVYeNzFzLISCjBNYX4=;
        b=gQs7VZBrMXaAXhRUd+8wqKVtTST4si/UbvL/7VphT9J0nm+vl5xDae7447lGMSkrcC
         bG4s3yZzeI2tqQmC9+sC2Fkt+haYtyWQnlvFxmGjnIbM7oWcQyGJH0ba//y3/I1wrQqT
         qkGoY0Me3UVqzCnVPqUNgu9NG+JXcDs7hJa3cAQK2RN8jv5CQb/3nkBnDEisgNfXh703
         MIAwXjkh5bzVg9URdwHK49icP8C1lEaccmIZxr2xxTgWJ4Z/w2IdINWfnf+Sy5wWXGhD
         qeXj+eAqq8Y3slHqPH7VjOYJz3idlh2s5XiGam54YIZKrlfHiBQ44J0o3wc0BQqXNAO3
         bW2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681471628; x=1684063628;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I/gdjDix1WhFWBCMFAbui2jQvZVYeNzFzLISCjBNYX4=;
        b=OKBOLVBupsZa4g2/Om1IjxLHOl7a2Rlej8xKhr3eZXZrr28QfOorbD9JjO4j8FKQoW
         RUt1n3DUbGoIXOMOHOQjmlIkn8iaT2hy6yG3sFU7xHc59sB0vTK9JrFtoKxFsTS6xOy/
         37XZSE3uExB9PVsycme05oZCLthC38guQp1bkK8XLTZr2l3qgl8l+eC8yOxs5tdcG7+q
         R8l3Ud6vVmwnSL+T9w2uWUNgWsiHNP566uGdnmGprJV6QW7xaEx4fDwN3lotW7Q2w8ZS
         vwyYo2FP2Ygvll/7EqjBwtbuMUELUSYxvGKXW2PVt3lgm8nUU9yr9tsPivJpEP5Bgl1M
         lb5w==
X-Gm-Message-State: AAQBX9ccBCxBvURcgvyGQ8nFhVYJr0LNkC5RpiML1x7iWOmYUB020Hq3
        zLcVsZpcvT9W8D6DNoGqYbexwlR8TV0=
X-Google-Smtp-Source: AKy350YV/iwxb8XomaLwct3dHhWbZeqqhvKSU7gVICDUK4Vjg2yTJsYZ5W4Jqz1NsX6MlbhtFMFm9g==
X-Received: by 2002:a1c:7211:0:b0:3dc:55d9:ec8 with SMTP id n17-20020a1c7211000000b003dc55d90ec8mr3942976wmc.41.1681471628409;
        Fri, 14 Apr 2023 04:27:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z13-20020a5d44cd000000b002e61e002943sm3330692wrr.116.2023.04.14.04.27.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 04:27:07 -0700 (PDT)
Message-ID: <852b1842-3d1b-2b40-7e88-a8a34d00d264@gmail.com>
Date:   Fri, 14 Apr 2023 13:26:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] bin/stdc: Improve output formatting
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <ZDjGUp5t5Fefb+zW@dj3ntoo>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZDjGUp5t5Fefb+zW@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0RNOdYI9r99yl0c40BB0Lyh1"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0RNOdYI9r99yl0c40BB0Lyh1
Content-Type: multipart/mixed; boundary="------------kjgYqFLn8v0mC7squ0rY6Q9V";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Message-ID: <852b1842-3d1b-2b40-7e88-a8a34d00d264@gmail.com>
Subject: Re: [PATCH] bin/stdc: Improve output formatting
References: <ZDjGUp5t5Fefb+zW@dj3ntoo>
In-Reply-To: <ZDjGUp5t5Fefb+zW@dj3ntoo>

--------------kjgYqFLn8v0mC7squ0rY6Q9V
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Oskari,

On 4/14/23 05:19, Oskari Pirhonen wrote:
> Remove leading whitespace and collapse multi-line declarations into a
> single line using (g)awk.

I can't reak awk(1) :(

But I like the idea.  I implemented the same using sed(1) after your
suggestion.  Does the below patch look good to you?

Cheers,
Alex

P.S.: I forgot about writing a man page.  I'll start now.


commit af1ab8cf11165dba56dc54bae7310aa7824fd89b (HEAD -> main)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Fri Apr 14 13:21:27 2023 +0200

    bin/stdc: Improve output formatting
   =20
    Remove leading whitespace, and collapse multi-line declarations into =
a
    single line.
   =20
    Suggested-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/bin/stdc b/bin/stdc
index b685df8..54db0d7 100755
--- a/bin/stdc
+++ b/bin/stdc
@@ -14,7 +14,9 @@ err()
=20
 grep_proto()
 {
-       pcre2grep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$";
+       pcre2grep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$" \
+       | sed 's/^ *//' \
+       | sed -z 's/\([^;]\)\n/\1 /g';
 }
=20
 libc_summ_c89()



>=20
> Signed-off-by: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
> ---
>=20
> Here's a snippet for comparison. I've manually removed some of the
> formatting repeats from C99 and C11 output for the sake of making this
> message shorter.
>=20
> Original:
>=20
>     $ ./stdc c89 '[[:alpha:]]*scanf'
>              int fscanf(FILE *stream, const char *format, ...);
>              int scanf(const char *format, ...);
>              int sscanf(const char *s, const char *format, ...);
>=20
>     $ ./stdc c99 '[[:alpha:]]*scanf'
>           int fscanf(FILE * restrict stream,
>                const char * restrict format, ...);
>           int scanf(const char * restrict format, ...);
>             int fwscanf(FILE * restrict stream,
>                  const wchar_t * restrict format, ...);
>             int wscanf(const wchar_t * restrict format, ...);
>=20
>     $ ./stdc c11 '[[:alpha:]]*scanf'
>           int fscanf(FILE * restrict stream,
>                const char * restrict format, ...);
>           int scanf(const char * restrict format, ...);
>             int vsscanf(const char * restrict s,
>                  const char * restrict format, va_list arg);
>=20
> New:
>=20
>     $ ./stdc c89 '[[:alpha:]]*scanf'
>     int fscanf(FILE *stream, const char *format, ...);
>     int scanf(const char *format, ...);
>     int sscanf(const char *s, const char *format, ...);
>=20
>     $ ./stdc c99 '[[:alpha:]]*scanf'
>     int fscanf(FILE * restrict stream, const char * restrict format, ..=
=2E);
>     int scanf(const char * restrict format, ...);
>     int fwscanf(FILE * restrict stream, const wchar_t * restrict format=
, ...);
>     int wscanf(const wchar_t * restrict format, ...);
>=20
>     $ ./stdc c11 '[[:alpha:]]*scanf'
>     int fscanf(FILE * restrict stream, const char * restrict format, ..=
=2E);
>     int scanf(const char * restrict format, ...);
>     int vsscanf(const char * restrict s, const char * restrict format, =
va_list arg);
>=20
>  bin/stdc | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>=20
> diff --git a/bin/stdc b/bin/stdc
> index b685df8..8c07956 100755
> --- a/bin/stdc
> +++ b/bin/stdc
> @@ -14,7 +14,14 @@ err()
> =20
>  grep_proto()
>  {
> -	pcre2grep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$";
> +	pcre2grep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$" \
> +	| awk -e 'BEGIN { RS=3D";\n"; ORS=3DRS; }
> +		{
> +			gsub(/\n/, " ");
> +			sub(/^ +/, "");
> +			gsub(/ +/, " ");
> +			print;
> +		}';
>  }
> =20
>  libc_summ_c89()

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------kjgYqFLn8v0mC7squ0rY6Q9V--

--------------0RNOdYI9r99yl0c40BB0Lyh1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ5OIMACgkQnowa+77/
2zKaNQ//RGAOdSgRojwXjYz1JAInW5jTMtdlx+nC4/CIZnW0GhUFqI2CjtGRQTbC
kUOnlIMyXMoV0fD8ehO/EpXqTAUschKs6/D80OV6LOQUR7u+Za6dapjaDKzG2iwY
JnyxOAdV0BERUpYCX8D9nYmetO3SP2YgmVifALJ4pXWSJRgJd1/oBf9fcovRnQgr
kfomg+uPOLldfsfh3CU7Oe8JXFxc/u89Ne7rkBTGSd9EVE2SGsTuvfmQD3LsfISa
hzwMP6BbbwQ2qvF+dL04sjBz1wDkzEYVB4FepeUm4RK14Zfo/WjVKjqJLDNpocRq
gjqw6F71fd78CU4qjXXXDFGamQJVap+mIzp10HtuwOfMvHSwgbnk79RBEgOb2dfs
j9BxGQN1AMZwjZ3reqCkH+8BlXalqN7lgqyVeQiUoDkU1jBQeR01CkrRjLxsEZxA
iZc+1EnK++07MClTUY5GPxljqyg4Gel+ZUWtXXftdVoXdNw+99U2+Wnsl6XFTaP3
PoAcbVAu07FVSe6BU0ZbqXDOt9WUb21wvdoKHLRPQSiQAJFF6S3mf+BXtjYq91Nd
7VzJJz358pVUbAKfiPKvUkqtBDpAIqpwZrJ3dVVy9ye+63bsW+hRNnO4zRrEb5yJ
hGrksfrpOgBJcqcZBFZTA56TbAnNbjvs0dzpMySv+eOv8ZxP8NM=
=lS98
-----END PGP SIGNATURE-----

--------------0RNOdYI9r99yl0c40BB0Lyh1--
