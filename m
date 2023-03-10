Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77B936B55E6
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 00:44:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232016AbjCJXoY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 18:44:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232017AbjCJXoJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 18:44:09 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FA20141618
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 15:43:56 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id h11so6493275wrm.5
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 15:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678491834;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+yTvNalGEMEU6jfk20vEt4BWimUfL/op9ChLWPV510U=;
        b=i6R+ImII0iPLgM90eEyGuv9m2n1v/W3XIS4scrrWIwn+cRh7LJuY6GBunRNSKl/nPK
         On3ypigJROZNM20ob1YKWRUVuSSz1FedTI4iEzzWSs/uoB+HoFP2B0TLVDDXWt6U+uyP
         JcEKowW6QU1gULiwfDSmvGnJYGmYUvYKQip7bqf4zFUL04BBklcYfk+7Ob9XzCawsjzF
         jQCwYw6R9S3V/HOfKwoU6kjwYcY0Ke1qbDr94whLDvr41DgNBiZauSVxYtTF8JWXzAQD
         y6na5qfybwMdW13elB1QlzMS+fCPEDGwICJ2GJ0OEjp3AZfdeRq6+1GOdtvMkkX+1Fry
         6bfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678491834;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+yTvNalGEMEU6jfk20vEt4BWimUfL/op9ChLWPV510U=;
        b=ONSFeH+rsErHEK3FArf3BZ/zsQZbBMKusNcra7LGQBm0arNBDoeUlf8FFn3jaSpqm/
         KgYtxZauZNaU8Lvxk9hIEdsOh9X/+tzuKnsUwChOtze5UqVKyUIMnqhNYtuRdsMCklV1
         D0T7RkSKMDmexrvyFo4Om92+iYUCiGz1+l9s1LaDcpJOEY9ch4HFjICWbEe/CAuf+7Z3
         2XLorL0XNeAM2VI2MPNlU5E9kFYsqaQvNfqJxf4uwij1AINvKyal5dlBJhTvNZZhV8Ng
         TIG23ZxfZruyCqz0Mbg8Tv5fggOHdH86IUODtE3q7NjASqbDLQiUkY4+OuujWKrR+KoD
         nkgg==
X-Gm-Message-State: AO0yUKWYql8NY3pQpcYQcP2PT7yipm2Hu0qI2Pv4Pj7+zKjoNp3tpMnW
        87DXJI9amv6R/RvFb508mMFaZoz9NrU=
X-Google-Smtp-Source: AK7set/RAmbqI1FesqyhuMQk8tRTi0llJuFA681QZtxzRUhtMD0BjqMU5Xzrz5DGZ3/1BhsUsJk87Q==
X-Received: by 2002:adf:f7c5:0:b0:2c7:bbe:4572 with SMTP id a5-20020adff7c5000000b002c70bbe4572mr18386645wrq.39.1678491834482;
        Fri, 10 Mar 2023 15:43:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p8-20020a5d4588000000b002c54536c662sm913714wrq.34.2023.03.10.15.43.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 15:43:54 -0800 (PST)
Message-ID: <cd2dcfa2-9779-64ac-80a0-0288469b77e7@gmail.com>
Date:   Sat, 11 Mar 2023 00:43:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] standards.7: ffix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
References: <20230310134959.6667-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230310134959.6667-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SV8MIIeqvVLLG52L1YcEkFzt"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------SV8MIIeqvVLLG52L1YcEkFzt
Content-Type: multipart/mixed; boundary="------------a6PfMzAaaZLJQ7oRwZZltXvo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Message-ID: <cd2dcfa2-9779-64ac-80a0-0288469b77e7@gmail.com>
Subject: Re: [PATCH] standards.7: ffix
References: <20230310134959.6667-1-jwilk@jwilk.net>
In-Reply-To: <20230310134959.6667-1-jwilk@jwilk.net>

--------------a6PfMzAaaZLJQ7oRwZZltXvo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub,

On 3/10/23 14:49, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

I see you're following the discussion about standards :)

Patch applied.  Thanks!

Alex

> ---
>  man7/standards.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man7/standards.7 b/man7/standards.7
> index 3073025fd..54dd2eb30 100644
> --- a/man7/standards.7
> +++ b/man7/standards.7
> @@ -132,7 +132,7 @@ describing real-time facilities
>  for portable operating systems, ratified by ISO in 1996
>  .RI ( "ISO/IEC 9945-1:1996" ).
>  .TP
> -.B POSIX.1c " (formerly known as \fIPOSIX.4a\fP)"
> +.BR POSIX.1c " (formerly known as \fIPOSIX.4a\fP)"
>  IEEE Std 1003.1c-1995, which describes the POSIX threads interfaces.
>  .TP
>  .B POSIX.1d

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------a6PfMzAaaZLJQ7oRwZZltXvo--

--------------SV8MIIeqvVLLG52L1YcEkFzt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQLwLkACgkQnowa+77/
2zL9cA/9HNBw2p/cGr/aGN3ykH5jmJk+xZHN8mCVQgZsg+bTRmqIjwBpt53NxYj9
inZUUiZGnExdxB1AJmtpOzW9Ep5QmlZp9xAW0kdSOTaTFshtofvMxdVCNFGeDImo
Qs6+h5g8YcdTnTXvlOwwaRS7EAEy6rEXQ0CaA/bLzgtj2UatW4m9sBW65YznZJ8I
H9b1NghtxOGG8vCT8PR+O0D6eAD1GxgyxaW7VJCWAtTbcUwfC4awHsk4DmDf5nIS
mQOZmLSBFYIx6c54TxTJp+AQ+K2znfQkgVIRBximc3c87MIs5Ja/yivjP0AQH4Ng
rOHzRMsu9Mp1mfmlgqilRmG6VVHGsyhFC57DHSE7a5qy42pYLUAk5pWApiBcDCCy
Eg8PTVA5b8FtYqfhb1n0Czgo+FoXEO0zcKBedugGg0I0FMyxihH/VNvdbMTBCSGY
T+eyRrH+E70BPVhNvPhJUuWPdi+jV1tXLgITHnw0RY7Sa7pKzKsBEFuWvEg4Ajqw
kfNV1dAE9Y/eqafjlUVaq9UfamM9/fwo5PETpPMOA223s3o3C/rLC4fRTmUQKJQ4
yBkI/fXiFoTW0M9y42ue3Ra5jlZBpmzJai2+Xhh4ba2FVkDoUXfyytgP5Z7Mj2r1
J2tt3BCRl1PpFVyP19v98dRBAn0dh/m5QGuMJaY3RNWsm1/Fz1w=
=uzhB
-----END PGP SIGNATURE-----

--------------SV8MIIeqvVLLG52L1YcEkFzt--
