Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B2866EA00F
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 01:35:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229839AbjDTXfu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 19:35:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229792AbjDTXfs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 19:35:48 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF1571BEF
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 16:35:46 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f17fdb5062so11575535e9.3
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 16:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682033745; x=1684625745;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P2fyR+RtsZakWOmsJik3O8ny2rY7hu3Nu/6go7kusXg=;
        b=QFFBNS1hlq1q/a16fD9hvZJwo8f8nwpIH7NVd2IBLQOYmuVtpV32SHKqTAQZt7dPQw
         ZlEgwmFnJuYxaRkIRXoN11w4flt5GWPySlonXluOvu2HOrsBmW9lLc72feg4kkoMb//S
         AIlUY/BPdkRGvW6d5Q1fxa/hzm8apu/Q0aJbY6h9GHciKnUyCqDaPaZAzHjEkLjD6/Ah
         vTRxzSIaEAyS4kiU4iwr3a1MK2rOAMnja/mAzupxj2KRtqoHqCeXHkpuBRXsUsqTaxzP
         GF8zyjuKXDBDwHml7nUdtFEAxShRgV8H46WdSqppf914VTQrYJbCXHBwQ0gqP7VWMJ43
         TtgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682033745; x=1684625745;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=P2fyR+RtsZakWOmsJik3O8ny2rY7hu3Nu/6go7kusXg=;
        b=ik/qHZ13uwXZ/pIpejJrCU+KDSbwi/HchJU/aumrl5sUPN+EdBum5ORiBJQ2em1XbR
         pw9+mw4eP1GfTYqcLYhrhcgQjCDHfW+4s3Gw8L+PQvyLMMF26eNJWAxKBkTzBy1n3OH8
         HTW4iJmkWJcCawyVZSYLHw0i6Mhj5uXLckVN6YJWwzJh9C60M6J7mahLQLRAnDLLuOEC
         1VFUL2W8e/8Pv3VQou1pGtsgXMwrPlfOvSybzJEo8BL0nvJJcgCnmPuyQcQDPZ1ifyuX
         8BlUONUQ8XmQEj9AufjHecks4yjH/GV9zzkbdwAOEl7sziY00isGSgINO9sQjuhddw5K
         TWkQ==
X-Gm-Message-State: AAQBX9che9vhpawCfKKK0zzVeYIGbsLIyrherVeFV6BbURA9nxJq530x
        Roy+mr/ZSgDdMsUSOT1vo6JVtLIb9BE=
X-Google-Smtp-Source: AKy350YNwkfm98u1pL8fzOv6yTRAy0d0930NDy+BFCXZFI7bbXMQIIX+VjshMadpdz2IFJbIa+TPmQ==
X-Received: by 2002:a5d:46c7:0:b0:2fb:3013:322d with SMTP id g7-20020a5d46c7000000b002fb3013322dmr2393159wrs.38.1682033745322;
        Thu, 20 Apr 2023 16:35:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b1-20020adfee81000000b002ca864b807csm3172426wro.0.2023.04.20.16.35.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 16:35:44 -0700 (PDT)
Message-ID: <80317350-b3d5-4e40-9ad2-5d4f96ec746b@gmail.com>
Date:   Fri, 21 Apr 2023 01:35:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 3/8] regex.3: Desoupify regfree() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <4b7971a5e940914a7f6d717a4a9d9ba714edc3b7.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4b7971a5e940914a7f6d717a4a9d9ba714edc3b7.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4dyH00eH85Tbvsw8Eo624Pwh"
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
--------------4dyH00eH85Tbvsw8Eo624Pwh
Content-Type: multipart/mixed; boundary="------------k0WokrosSP3ZZGYuLZE50iFd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <80317350-b3d5-4e40-9ad2-5d4f96ec746b@gmail.com>
Subject: Re: [PATCH v6 3/8] regex.3: Desoupify regfree() description
References: <cover.1682004802.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
 <4b7971a5e940914a7f6d717a4a9d9ba714edc3b7.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <4b7971a5e940914a7f6d717a4a9d9ba714edc3b7.1682019335.git.nabijaczleweli@nabijaczleweli.xyz>

--------------k0WokrosSP3ZZGYuLZE50iFd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/20/23 21:37, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man3/regex.3 | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 3f1529583..e3dd72a74 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -225,12 +225,10 @@ .SS Error reporting
>  .IR errbuf ;
>  the error string is always null-terminated, and truncated to fit.
>  .SS Freeing
> -Supplying
>  .BR regfree ()
> -with a precompiled pattern buffer,
> -.IR preg ,
> -will free the memory allocated to the pattern buffer by the compiling
> -process,
> +invalidates the pattern buffer at

While this ("invalidates") is true, it omits the most important informati=
on:
it frees the object.  I think it's better to say that it frees (or
deallocates) the object and any memory allocated within it, since that
already implies invalidating it (due to
<https://port70.net/~nsz/c/c11/n1570.html#6.2.4p2> and
<https://port70.net/~nsz/c/c11/n1570.html#7.22.3p1>), and also tells why
it's necessary to call this function.  Otherwise, it's not clear why we
should call it.  Why would I want to invalidate a buffer?  We can call
memfrob(3) for that :p  Or for secure stuff, arc4random(3).

> +.IR *preg ,
> +which must have been initialized via
>  .BR regcomp ().
>  .SH RETURN VALUE
>  .BR regcomp ()

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------k0WokrosSP3ZZGYuLZE50iFd--

--------------4dyH00eH85Tbvsw8Eo624Pwh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBzE8ACgkQnowa+77/
2zKcXw/+PUZdmWly0ybc9PFD2fTRi33aw6Nedswi2tWsTYw11/FstiOCHmZhsGOU
ZYNJiZg2rOLIIS2eI6cpVvRQzh43b8td0mJr80KWo1gh9yXuSt0hA5WU4oSlwHbI
73p9zRx6l8HeKditQqp1YUjZxnu0/SVL9of6FsTIbRdnsqNuNxD3rLLOj8sYfvQ3
buRO72alC7fNFSLppw7xGJ3mJ+qmVjLKup84Sm7X70+SRhEnLqPI3yTaX9tJL20A
9ACFsYm8/D1G9I34v1cABR2L9ung2KkGEjvSDKN0Tp40r8lmGAt4l3uGmcU4zlBk
OenuCNy8c+0h4DursgvpUUrLY0V2c/PCOYnuseByrBf6RqMVzElJLwJSulpYdpRd
79WOMCnqwHmpzR0jnFm4sd0Yxehe5Miz7k+rq3/zD1R2YXQLvNOSq7DkxRXs2/A9
RrziYPLpVJnCH/U60FodPHzBR/XZQ4moKwLzif2LxJ+wfmLVLhaMrl0Ou+pbBKTc
prM5YFqUQtpm5Q8QQSTauGze0e4ZRh5Hndv2nR3h3b/BgW87tZRR2tohiFBIcgF8
GRz/na3f4q+zuFPruNi9ArIPuxGtpnaTLW2f1tryCD1kzxheFldouQvhiUcbPMh7
vwOg2mlT9F6SXLivEspBOOA4ms1k6IcsMsKpBxbF1uwSTlbJ8bc=
=Q/Su
-----END PGP SIGNATURE-----

--------------4dyH00eH85Tbvsw8Eo624Pwh--
