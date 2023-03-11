Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95A456B6206
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 00:23:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjCKXXZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 18:23:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCKXXY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 18:23:24 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A44C2F7A7
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:23:23 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id r18so8218311wrx.1
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678577002;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=26Hfeth2QdzBsA75/QqEj/A1RMxDcYd15BN6R0CMUNE=;
        b=VJJ16iky3YMIrrAnw0vlVh2PnpWsTMquuAHPHzPe+Go+mn6Mk65wazaZUsiN4sSOF1
         g8zWeA2MIsdjgphZF6aLoAYLzcOBjRYuMeUb7UElhAFa0adw3QzCocTaNNC19r5nor85
         PtsTAQx/lMsRjPRqmd09ssxS4wv6BUgMOSUDJ+ir3mD1o+izkefaeMi0egfYwFcYbbTj
         Fx/ofUsV8Gv7PGINsoFuls1UutfOdiBrBqDj7uSOvO7dfBGTjSEPlUwFin2Jj1Rz+hJS
         99PI1YSc7o6wuwNOIuJWutsKBu9ZsxEyVRU5NG7hCzAF8Gh2W5XfvMBU2qyb4fB/5aZH
         znSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678577002;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=26Hfeth2QdzBsA75/QqEj/A1RMxDcYd15BN6R0CMUNE=;
        b=04qloaLQ/vXh+g/rcAVWDlJr7T1NWbMZhfMwY68LRCcc5vXg5oF0oOCdV7Cd6rk0jx
         1XZ3iiKPeqFf+5Re5KRV2jPEcrAOyKX/DE995HSccKpH45Mq2pSNAVX1wCFEd3jD5bHl
         uOUe5uCiYxbLNWMXPnboJZKGecuhwceENZVmJXIyeSDGmbkcHP1gWeYj2izIYCVSbphB
         iqzCD1D/g0AE5uL7y6gpX+FwRS3f8iI/uGTjS1i5UkhADjM9g/9ZLvwJw4fcany3L/+H
         Vp0i+KutkJcvrRZC4L5KGJjAmO1Ty9jWfbzD4ZzrhYdWyayVjCZdwv3YDdYGHw7P7Vn8
         FYRQ==
X-Gm-Message-State: AO0yUKV5uer5EN+/TsoT5LrxX1391YU1Ct43kEg9ZHOmvZcDRhBKTydd
        pgprA/UBLIrMHn+rVJ43F1lP8P53AWs=
X-Google-Smtp-Source: AK7set/IXr8fOGLmkqGrxpeveBehYmf99fwnyQTU9nMGqiEX4kOiA5+1HroyVD1879S4HVVZIKbMzg==
X-Received: by 2002:adf:ee11:0:b0:2cb:76d4:42e3 with SMTP id y17-20020adfee11000000b002cb76d442e3mr20418263wrn.23.1678577002058;
        Sat, 11 Mar 2023 15:23:22 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u5-20020a5d4345000000b002c71dd1109fsm3488389wrr.47.2023.03.11.15.23.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:23:21 -0800 (PST)
Message-ID: <c36c21ee-8244-a6fe-7bfb-2f4a2b61c5fc@gmail.com>
Date:   Sun, 12 Mar 2023 00:23:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page wcsncpy.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171357.GA4888@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311171357.GA4888@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------57QWtszGq0BkWNTduSrJSXTI"
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
--------------57QWtszGq0BkWNTduSrJSXTI
Content-Type: multipart/mixed; boundary="------------GnSYLtQbP2gerPuto5SY6YJe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <c36c21ee-8244-a6fe-7bfb-2f4a2b61c5fc@gmail.com>
Subject: Re: Issue in man page wcsncpy.3
References: <20230311171357.GA4888@Debian-50-lenny-64-minimal>
In-Reply-To: <20230311171357.GA4888@Debian-50-lenny-64-minimal>

--------------GnSYLtQbP2gerPuto5SY6YJe
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/11/23 18:13, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    null wide characters =E2=86=92 NUL wide characters?

This is incorrect.  NUL is an ASCII character, which hasn't wide
characters.  It's correct as "null wide characters", a.k.a. L'\0'.

Cheers,

Alex

>=20
> "The B<wcsncpy>()  function is the wide-character equivalent of the "
> "B<strncpy>(3)  function.  It copies at most I<n> wide characters from =
the "
> "wide-character string pointed to by I<src>, including the terminating =
null "
> "wide character (L\\[aq]\\e0\\[aq]), to the array pointed to by I<dest>=
=2E  "
> "Exactly I<n> wide characters are written at I<dest>.  If the length "
> "I<wcslen(src)> is smaller than I<n>, the remaining wide characters in =
the "
> "array pointed to by I<dest> are filled with null wide characters.  If =
the "
> "length I<wcslen(src)> is greater than or equal to I<n>, the string poi=
nted "
> "to by I<dest> will not be terminated by a null wide character."

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------GnSYLtQbP2gerPuto5SY6YJe--

--------------57QWtszGq0BkWNTduSrJSXTI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNDWgACgkQnowa+77/
2zLuaA/+JN2YB/DsLuX6z6+Wh0Mkj6GndH0F0QrCvHv2SvmJZ40ipoTEKKi5TyB0
ia8zets3lP8pTC7kxRnDd3vC3PDbz3o2ov/xbvGa/5GBsVDUq9eBJMGyU7Mh4UkW
EZR1yj7C3hD5xkkkNfmqv0eXhUIWn9DOd+nzW+YSPrqZSCEQ69SzSbNzYmoW4qrn
mA/1KBncH5IlwX5m5EZp0bbMBsvt12rHgsOQwHu8iA8tA5VtZINXbrk/+cCNFqXv
NZXy1zQ6aRIp298GIEhqLwb6adg01xRqzHInuKH1zrwUyFmQxq5eT47dWaTMlf3r
el6rJBPWL4Fx3P1Cu3b7/iF7Cwh4w4Cwo3xjuDorcwTHo2RIkgShOVX4OQcGDKzA
fCCK7T773T9YKyd3yBetwRtEACLiF31bRfpR1+YSaSJywff1P2SarmM2XC9UdTPY
oiKsbE+SYKwEVJHYMcDWoMjNyo84ZG3bw+clpj5M47bAKBY+tm9+ijhYoCt5+eZa
kenZEWRfBIEA/vnM0smrLcQCg+46Iw83opRrXJG0fEGn8zWIMcsjS+Vd8YW4Mb6t
UwCY7LU3oOPJ8sxwTi59N3cwcBJqDbNm03MNO6ezMYUInT1cAetn3pGeaycb68TN
Mr4E+VRUOxYJveKLYTKcyWjZAWGanmOYgxhVe2e2uhOoMv3tne0=
=pqMf
-----END PGP SIGNATURE-----

--------------57QWtszGq0BkWNTduSrJSXTI--
