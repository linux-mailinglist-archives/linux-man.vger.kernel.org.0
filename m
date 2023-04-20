Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED5306E925A
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 13:23:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234469AbjDTLXN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 07:23:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234475AbjDTLWy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 07:22:54 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A70AB44F
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:21:13 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id q5so1044640wmo.4
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681989668; x=1684581668;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hLlAsSkLO3OOlqD6jWB4NHq3lV1YLFHzuiGk7wWCYiM=;
        b=l4OqUT8+rR8q3/oZolvY9YchcfJTJJnUEf1UbQuhcmF9Y/wT6WRHUlLrVppvorRLI2
         ipgsDcGbPwfHLlUIl7OlYF80XPsW69I9Bvn7+LwMpGoXMXeP3E7qXucIdvw2ICdrpDrJ
         S/tUCPurkDldpiz/SshOvxJMCTmwdYu/oAcGeEvM4nvNowrte35OJEMng0RyrWr2rzkK
         19NGpYRDQoPIaKx0meXnwVGmwxrFUC4ScR7fgQLRUu1crJ0j9mx/S08dJ+UHIh5nhmpO
         VbKQy98b5s9M1efYINDftLCWaGWBAzMdqIe/4PKxcFLoMQ2IkWm7bnAaSGCgEY1Ll161
         Fxsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681989668; x=1684581668;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hLlAsSkLO3OOlqD6jWB4NHq3lV1YLFHzuiGk7wWCYiM=;
        b=SO0Vmab6318dhwHrFX324jOGOa/+q33EVBGTcp7NH0/p1ejJ+/r3Ohm55LmRRheRdl
         lE9QxdT/tdCdKtFTdmSfz2bBwK23giiu3onWMCGARZ+3j5xJ/w2+kbeOMGTeTS9zwpad
         NWyknTOw1rC6ri7sPzuaWGMX60bI2VxnyIDZdNsVBEZ0j4GYHUr/ouyy3/zIVdy7PAG6
         kDt5mUt67QeRZEyIZE9WBy7KPJt5XQdMts04Y3Dgm615GOqsuZTxZyitm2sFcUR4wp1f
         s5D+2SEpoGMaQW3V3CyyvPmhGVAw+u57j654QMjJSYAnj3HMDpcdssvWnC5FdPzkFvRQ
         bNdw==
X-Gm-Message-State: AAQBX9d3q22Zf3RZa3c8DdYreGRcQ7r2FGPboYDnFNLXsrZR3nFheg5s
        ZFbDWCJXUPWBG/vR3+FPlGEu+wsYF38=
X-Google-Smtp-Source: AKy350b3wRqqnh3tvXaP+SZ5bFHsND+B88U5izmR/EaACGwxZQB8RP4lf73z5gIEuDlH+4ULlILURw==
X-Received: by 2002:a1c:e917:0:b0:3f1:727d:77a4 with SMTP id q23-20020a1ce917000000b003f1727d77a4mr994472wmc.39.1681989668012;
        Thu, 20 Apr 2023 04:21:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q16-20020a7bce90000000b003f09d7b6e20sm1800297wmj.2.2023.04.20.04.21.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 04:21:07 -0700 (PDT)
Message-ID: <a2fd42e1-f08a-44bd-6dd6-d922abb493c0@gmail.com>
Date:   Thu, 20 Apr 2023 13:21:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 1/9] regex.3: note that pmatch is still used if
 REG_NOSUB if REG_STARTEND
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <3f514fc8ae3b38c20f693752d47c46e4fa3236f1.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <3f514fc8ae3b38c20f693752d47c46e4fa3236f1.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wu7x9wvDcAYCrWzlLkSXIeHw"
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
--------------wu7x9wvDcAYCrWzlLkSXIeHw
Content-Type: multipart/mixed; boundary="------------DqCXLkHB3gSEtH0UboNNE62J";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <a2fd42e1-f08a-44bd-6dd6-d922abb493c0@gmail.com>
Subject: Re: [PATCH v2 1/9] regex.3: note that pmatch is still used if
 REG_NOSUB if REG_STARTEND
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <3f514fc8ae3b38c20f693752d47c46e4fa3236f1.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <3f514fc8ae3b38c20f693752d47c46e4fa3236f1.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>

--------------DqCXLkHB3gSEtH0UboNNE62J
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/20/23 01:23, =D0=BD=D0=B0=D0=B1 wrote:
> In the regexec() signature
>   regmatch_t pmatch[restrict .nmatch],
> is a simplification. It's actually
>   regmatch_t pmatch[restrict
>     ((.preg->flags & REG_NOSUB) ? 0 : .nmatch) ?:
>      !!(.eflags & REG_STARTEND)],
>=20
> But speccing that would be insane.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks!  BTW, I capitalized the subject, as is house
practice of using proper English sentences for the subject (after the
page prefix), with the exception of not using the trailing period
(which I know Branden disapproves :p).

Cheers,
Alex

> ---
> By the end, I think I get to a regex(3) that I don't dread opening
> (and that has all the info I'd want. who knew there was re_nsub?)!
>=20
> The main issues here are (a) it's full of standardese, entire paragraph=
s
> lifted from POSIX, or very close to that, and the POSIX dialect is
> hostile to human life^W^Wbeing effectively used and (b) what reads like=

> 30 years of people adding stuff without having read any other part of
> the document. Almost everything repeats at least once.
>=20
> Funny moments outlined as they come in the messages.
>=20
>  man3/regex.3 | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index e8fed5147..d77aac2e7 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -80,9 +80,11 @@ The
>  .I nmatch
>  and
>  .I pmatch
> -arguments to
>  .BR regexec ()
> -are ignored if the pattern buffer supplied was compiled with this flag=
 set.
> +arguments will be ignored for this purpose (but
> +.I pmatch
> +may still be used for
> +.BR REG_STARTEND ).
>  .TP
>  .B REG_NEWLINE
>  Match-any-character operators don't match a newline.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------DqCXLkHB3gSEtH0UboNNE62J--

--------------wu7x9wvDcAYCrWzlLkSXIeHw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBICIACgkQnowa+77/
2zJiqg//drdKbicEZU4Q5IlK8aJL7vJTCfwS5wR4B6t/xMcvx8eOpsMoMsO5/P1T
M6jGM0WjFwreBSPjr5E3C2UyAq7k2ysnu6BKE9uL+PgqzHT65wxgnASGG0yc6wap
445p8BJ+z6dIXrGvJaCbD+B7lyJTlmBym3pQ9GIzRXfd0eYJzAjkEjkcgkVy+yEU
E9bPt7HUgMo8j5EWXe/kiezzvzdU6c8P0yR7ow2+aOj+X828IOGiN/C/ccdJ1UFn
NtbJA1IrN4FssfGQB+cpx8t1vIGv1ZbcMdX55lCZOSfLYUTZVyCZRnrhb8k2tJuE
8Ywjx6EqQI+aJxH7iSDAUsTEUVDUU+PLyEk27VUafwwaDyQxSJ7xbAH/k3IQ+2q3
tQgKyN8d4OY7mtns7DWGJQeXlRifVVBDOE6rYdFPaaNxcvmMT5+cRxS5mJPaZzFx
ZgIsCJO+lWU0U93WkPMC/8KVQDU4gxlVjHMibPGpW/zqR1MfmJHoPHlpYQAUpbwW
bXR8uLKpYSvOIUW2BbNxwmgEGiai9aN6p67Jly/rmtYCvrP4PM3SnvS4k5DKQfC4
qMUlNrAKww9Uuom5QPId7LDbdXrsuq/1bE6w4T35xcLZJcaEtf3YET6IZFv4n3Mn
C57sU1ZqpNxBJ3GJE+lTH7ScxYWGjOs9GW3L2zqUE8L1kHTFqus=
=UMMZ
-----END PGP SIGNATURE-----

--------------wu7x9wvDcAYCrWzlLkSXIeHw--
