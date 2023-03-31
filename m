Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 425796D2B2E
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 00:15:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233186AbjCaWPp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 18:15:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233242AbjCaWPk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 18:15:40 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C1C022933
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:15:13 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id u11-20020a05600c19cb00b003edcc414997so14774771wmq.3
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680300901; x=1682892901;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=svSqQST1Pql5maI+CSmlxC700IJM9S0ZkhtcvVe+430=;
        b=U4a4JiCVGsEErSL7okyjqOjcIqosFaO97yk9aE3ubIv/iXn1o0mlyf91wRuyWhIIzM
         wTzt646YRGdVuAKNVmpovX9C0+x+il8ndaJI/EqMhj+xhMSm4ScLFokHdKhQP2rt6r6Z
         VJMuYUT8LPD+lordILtURLOeqSy4gWZySBvFkGD+qokkddg9Z25l8jr/dmg6dM1cK9Kd
         y567v7W6ahaHKD7uPNGwE+rcFenx1z4xEYze5PNV0kR16T8EVXm36Ja98rvVg7q0uLJw
         dUwRq7zamGTrAisAgk6+iAZd87umzEenOPrivG7+T8hsuePsrfzu1EcWuMq306/vgdl3
         DtkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680300901; x=1682892901;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=svSqQST1Pql5maI+CSmlxC700IJM9S0ZkhtcvVe+430=;
        b=To1KnlozvPw2UnqrQvY5AcMaoVqcXWbPuFj1bcAfekXxJo4sKTXrISCpTfLeffdIEt
         Q4nuR/oUOGt9mkHYnWH9Lqno4BSLuxW2j5d8B4rsIBwynvbbxMa1UDABaveXujEitgFD
         XNgcMZEd/KJtdMCIajvIQmMnyVSVAcnfgmmt5wDHtzrmh0IyHiIefDZNinWbsNP42ReL
         oDX+sEti9GShLpHLrFQGNHzwBv8uX5mnZ2d4RkhZ4qgjAmFCP7XtpUFJoaE3JD3ii/Fd
         uUIAzZGIYwahr8BKr1k5Sr9sYv7ctqJSr/sy+PJE7ejr7NOsO2Voe2T8C9Tav+epdEkH
         je7w==
X-Gm-Message-State: AO0yUKWgpY3UEZrvtzzI0MwuTpGkuwHLDsuZwa8IiW3DJjkMf53WoLj7
        Jt8HE/zar2qcuhrh6rh1Kzw=
X-Google-Smtp-Source: AK7set8NTFIlHNCG7ufZPiBLh6y6xPekIVybmeY3gBKJgh6rPnO2dsIBy1RmlUTXiShf/ekBZUiOPQ==
X-Received: by 2002:a1c:4c0d:0:b0:3eb:2e32:72c3 with SMTP id z13-20020a1c4c0d000000b003eb2e3272c3mr22745837wmf.22.1680300900661;
        Fri, 31 Mar 2023 15:15:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c351000b003f046ad52efsm2425455wmq.31.2023.03.31.15.14.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 15:15:00 -0700 (PDT)
Message-ID: <87fa6318-d368-d2e8-f828-dcc6cddcce36@gmail.com>
Date:   Sat, 1 Apr 2023 00:14:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] sysctl.7: create as .so man5/proc.5
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pRwU7O4BAwQ4Ezudbuxkq0xv"
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
--------------pRwU7O4BAwQ4Ezudbuxkq0xv
Content-Type: multipart/mixed; boundary="------------dOgdK90iY0eHnvF5eYbquQ5J";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <87fa6318-d368-d2e8-f828-dcc6cddcce36@gmail.com>
Subject: Re: [PATCH 2/2] sysctl.7: create as .so man5/proc.5
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>

--------------dOgdK90iY0eHnvF5eYbquQ5J
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/1/23 00:04, =D0=BD=D0=B0=D0=B1 wrote:
> This way "whatis sysctl" shows the list of sysctls and documentation,
> in addition to the syscall and program. Indeed, the latter two aren't
> all that useful without the former.

I wonder if proc.5 should be split.  To me, it's a huge page where
it's hard to find what you want, unless you already know what to look
for.  I haven't had to use it often, which is why I didn't care enough
to do it myself, but if anyone thinks it's a good idea, this is an
invitation to do it :)

Cheers,
Alex

>=20
> Not a single concrete file, and it's more of an interface =3D> goes in =
7.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man7/sysctl.7 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man7/sysctl.7
>=20
> diff --git a/man7/sysctl.7 b/man7/sysctl.7
> new file mode 100644
> index 000000000..d8be74ac8
> --- /dev/null
> +++ b/man7/sysctl.7
> @@ -0,0 +1 @@
> +.so man5/proc.5

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------dOgdK90iY0eHnvF5eYbquQ5J--

--------------pRwU7O4BAwQ4Ezudbuxkq0xv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnW2MACgkQnowa+77/
2zJLVxAAifoe+gjyZHfgGVMhJbVUv8QrO4LjKEKYhdBex8FRjGyX6pX/43jqNW5q
qKbSl6tDAD/NV6ef+jmPhGHUFPXPt2hQK5b3Jaw43fvozgzxi5XNPst2hkq77VZS
g8Gvt5mMXnJhqJCzpdDH6/DHZwW04Zslbxe1Ha/k6lf4/JnAkznyFlbNCaz0DFJW
1fBuhrAuqVJKm4pIP8FmbzMgj1ZhnYranvFDirIN5OWQ3irT/SgFyM6vjibZUQvk
fRLx4fbycvDMSwuOigLAaDCaORqbUdHTZYQh4nvEinh5PTBFqbM8Qv8c7qLkZKIg
OKgVHveKAIAFikMv/NoiRjcGB9E3hdkmyQl6LmwrOwrt4BdwfcOKwu37xSrljvAA
+O59QSNcSFsvoGM7OHbLizlADapkD4/KrnqMH87JKlkwsHHFuwi837/Wl0gohNRd
zfSQ1kiXGwpYgMxFlGsPbPvws0cKsIbrqJra1J1DUWNPxkc/CpCOBYibJOG+7/NE
koWKf6DNoJM0zonaZyLS9vYTHPa+V+Rnxn0A5dB47mu2UvaIYPiZgiSBV0xR7JVo
/VY8eSxueUnLGfte31yc9b2SNdn4NSFkC+gzCxzMVdkwZtiFsyeZO8lW8QpUp8xq
h3skD22LNp1B28avx1qnTaKh+NslQq/LM+X3bfvPkCWi/9IYxxQ=
=ZRbd
-----END PGP SIGNATURE-----

--------------pRwU7O4BAwQ4Ezudbuxkq0xv--
