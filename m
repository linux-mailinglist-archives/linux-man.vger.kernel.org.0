Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72CB46D2AF3
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 00:11:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233244AbjCaWLP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 18:11:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233405AbjCaWLO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 18:11:14 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0C9E55A3
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:11:11 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso16282798wmb.0
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680300670; x=1682892670;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+RiBZRZxDQWu+Wa+Pp9D39qaYB6HRaoxsh6TLeOb/dI=;
        b=Usl5iPOqoxceO2DCSNWgNxXWfQFwyGFh0QLGyfUDizcSrK4OoHPfvVaBWppT5RBEsz
         tLLlrwgnUzW9HM56aaZIf922WGijujNeYgGtf+2hFWvM98QO77trDKWIzvv+iwn8FNIv
         aPW69y9OK85HfOBGDdAsjbOhrlMRBYyojDsATzoR7f+5Cps6o5iDE1vCRp1O88i0r4py
         99E/4ATmH72xWI3oEPLt3Dlsm7uhhcykihnP/Mad5BOGWettf/9vur6bp1OR1OKoaz4R
         N6YpZIkrLIRBO/J/EMwMJwoQ9Nv0EXE8SWLo9TdUX/Qqvc9dtpWQdjpf50odONFFIe+d
         f2fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680300670; x=1682892670;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+RiBZRZxDQWu+Wa+Pp9D39qaYB6HRaoxsh6TLeOb/dI=;
        b=NA/P5tkcfthlUnudAxF135BrsXtMBPiv4viQ8PLeCL2cD8LyGQxNeQqX/IZ192IddE
         YIPLQBxQfnEPQaTCbbA7Dx9EFqWl0oXozfGhifnVMXonshS7CyW+C6EgxiyXxtALRBDJ
         doene58FbXKON0wUfCQt8d7QisB8lX7Sfn+qdM1Y8IiuTD7ip1yxRpw8pLBEuN9/kQus
         bIRtD3XN7jTupmJd5T3l9Q6+j/J1atX5gS847InBZdDkD7rpPe58ueQtNFeaydtNO+/+
         iOCZAnUE/AzHMJmKqk4uw7BRAPyt/tIcxEFYeINsKSI3hB9XpBygOcNnrhRH2yHikXOM
         M4gg==
X-Gm-Message-State: AO0yUKUXsTc6inZvzccTmhA8vLQkb+vdpExL0pS6pFc2aKemhJ5hPWZE
        BtYB9711z3ZwieVI+hMWiI+h4JW24Eg=
X-Google-Smtp-Source: AK7set8ZGlt0+BqngOIC2EU77FkHjMYgipQET5YoMTQPO0vlFgYSDQ9Oox6AQoxhMhom+bfiM7Bfaw==
X-Received: by 2002:a05:600c:2157:b0:3ed:cf2a:3fe8 with SMTP id v23-20020a05600c215700b003edcf2a3fe8mr22450495wml.8.1680300670163;
        Fri, 31 Mar 2023 15:11:10 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u25-20020a7bc059000000b003ede06f3178sm3932744wmc.31.2023.03.31.15.11.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 15:11:09 -0700 (PDT)
Message-ID: <cb1148d0-4e56-b40f-798e-2528e9a38db2@gmail.com>
Date:   Sat, 1 Apr 2023 00:11:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] proc.5: add "system information, and sysctl" to .SH
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <6be579daa25e0c9a2692388cf12cb51a96f98350.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6be579daa25e0c9a2692388cf12cb51a96f98350.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ozCGG8c5z52bsH2pPe08D4Xh"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ozCGG8c5z52bsH2pPe08D4Xh
Content-Type: multipart/mixed; boundary="------------iqjON47j7LwDuUAL7K0ep4Yc";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <cb1148d0-4e56-b40f-798e-2528e9a38db2@gmail.com>
Subject: Re: [PATCH 1/2] proc.5: add "system information, and sysctl" to .SH
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <6be579daa25e0c9a2692388cf12cb51a96f98350.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <6be579daa25e0c9a2692388cf12cb51a96f98350.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>

--------------iqjON47j7LwDuUAL7K0ep4Yc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

By SH you mean NAME section.  SH is just Section Heading :)

On 4/1/23 00:04, =D0=BD=D0=B0=D0=B1 wrote:
> procfs hosts a whole host of information about the system,
> as well as sysctls; proc(5) hosts a description of a lot of sysctls,
> and at present there's no way to find that out.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

I'll give a day or so to this patch, in case anyone wants to comment.

Thanks,
Alex

> ---
>  man5/proc.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index 39c7eb8ab..e2e3c3409 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -36,7 +36,7 @@
>  .\"
>  .TH proc 5 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -proc \- process information pseudo-filesystem
> +proc \- process information, system information, and sysctl pseudo-fil=
esystem
>  .SH DESCRIPTION
>  The
>  .B proc

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------iqjON47j7LwDuUAL7K0ep4Yc--

--------------ozCGG8c5z52bsH2pPe08D4Xh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnWnUACgkQnowa+77/
2zJFKRAAj6WHrPhbRc+Ch+Txgz/UfDVzCcwjr19GZROMAYlnQA770oewkO1Bsvy9
M4ux1ifxaisIPTOckpUkfltwwVlry4Ghjd/F+X35/m/eypNRwNbjm83yDBCfaM/8
+18fTTkY02qsg/JxCsTFMp4hzd86vRejox76bA6gkQB2KHZb/CLVfl2jRXJ2M8kD
4AVI6G9pzJ6EZFyxSJ8rd19W3koqBWP0fchVpCIbagIxgQpy96iSq726r1THRrLa
TvOqQZR7gOmlR16cnsQX2rf9rwvsvPmwzOx/jGsDa98RuQ1/D/QaZMz9X+wFf+0A
3CeSGx7tcULn/j75tkRMqK/Yg/LrhuNL02mNzJQQfIgSc6QRb5cRETg+UmtCisAs
7P4317MLNGEM6yyCQwyMOY5eRiQpzqVTuSbJ8sJjZfxhQsvNDeDtS7ipHMLa9rr8
XsiP1wEbK3ei+jyClCJxfqVD6IRzgddnOrUG8gBeWQg0cFLgdPZM69VUo5HMSV9g
3LYebNxbGhWUkPoub7XGv5iwUrArK9kSt0eXjT/ubQqnmRyf+kA8sBbwBTLdOSXq
EPVbYyyZC7j6W49VLVIeHLAkIb4ljL9VPv1rxi/b75oWg7n0HyOUKNjBEyCZ83AZ
Vn2R1CMX67OzbU67tKwRgJwN4xcFXYSMGx1AmxxI1IML2M5tlR4=
=bxBx
-----END PGP SIGNATURE-----

--------------ozCGG8c5z52bsH2pPe08D4Xh--
