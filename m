Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E491B6C552E
	for <lists+linux-man@lfdr.de>; Wed, 22 Mar 2023 20:49:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229645AbjCVTtp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Mar 2023 15:49:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbjCVTto (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Mar 2023 15:49:44 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 703E01A95E
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 12:49:43 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id j18-20020a05600c1c1200b003ee5157346cso2392010wms.1
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 12:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679514582;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+Y2Q1YjHD6fUVAclDt40VMp2SKbWeOenRwG9nArOblY=;
        b=c34XZOkfl+Lp0FrjQsfQHhW69zLwHhC6+tTzS2aKgzdrCyiMJ20PRWU3+PQlvxJox9
         E/zgi5Uqd5sBPiyjup/YyosCKXIDVN03LvLr6JSsisJSglb7YY361EYDvjSn3a3nyHJd
         EReYuOrjavhqZb2g7pvOUjHP0aZFTh/xjwVxPlG7y116qRqdZEfyh4HhMxdtQS/qUlqW
         fv1BQwB2l+9zbMnDyM/1T1Lr/Wj4VOkJCtSUHs+LJU8KX59d1nww6K+WrtFjGU+Ei/Wi
         ZadPgWoflDhYdCMmXpAZful9j4wSqFYTU6GF4zwLsn9qbBdmNPQFWM7TWU1vGAQqo+cu
         UujQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679514582;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Y2Q1YjHD6fUVAclDt40VMp2SKbWeOenRwG9nArOblY=;
        b=MMd3BkQ5jfKLVwokxq+y/46MHEkJB459Ntz/49kdYlRJVpAdmKJ5zTTOfpe5WdWAl/
         Ov85roXv3rl2Ox8lgfuDXTqcQQHj8JGkW6gqDxOi+CpYW/JIkvwm/Da9L0kqwzSteGiF
         pLpNAPZ2lcfYye3pTzvGJt0g+9nOJyMyusTJTJHbD71SapMZv4iNxM9szfZd9EMpWps7
         htPbtjmR+jAlDVI+oxnx3ZwARoMuiXoOUApr/DWZkGSOGxWN4v0DnKkAoCAk+tzsZx38
         25SLHd4MULI8LXQmZ9j5koutiPLM5poxO4+9rgcU9vor7K1xTe3my/tG/IbEJV+RllEj
         RAHA==
X-Gm-Message-State: AO0yUKVQCRXiRtLTiT+iqM3rHeYNKa7DSgpcVxpte4K9Wy+8j57PBk2/
        mvo+yt3hcIFtJpa0IFBNFOmUlVclZpg=
X-Google-Smtp-Source: AK7set8gdjAtO13JpIMKGbuzNJLBYGX/GzXIk54Vkw/WQG9d+SKy4SfCkZBYoEhSLLsEumas33khfQ==
X-Received: by 2002:a1c:f310:0:b0:3ed:551b:b78f with SMTP id q16-20020a1cf310000000b003ed551bb78fmr529637wmq.4.1679514581820;
        Wed, 22 Mar 2023 12:49:41 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id r10-20020a5d4e4a000000b002cf1c435afcsm14423257wrt.11.2023.03.22.12.49.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 12:49:41 -0700 (PDT)
Message-ID: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>
Date:   Wed, 22 Mar 2023 20:49:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Matt Jolly <Matt.Jolly@footclan.ninja>,
        Matt Jolly <Matt.Jolly@footclan.ninja>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Guillem Jover <guillem@hadrons.org>,
        Tom Schwindl <schwindl@posteo.de>, Sam James <sam@gentoo.org>,
        Marcos Fouces <marcos@debian.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: stdc: search function prototypes in ISO C documents
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------40ZQY3fRo8iPSxwKK5IlFQK4"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------40ZQY3fRo8iPSxwKK5IlFQK4
Content-Type: multipart/mixed; boundary="------------vpNW3pEEPyATYzhFJhhHMNqY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man <linux-man@vger.kernel.org>
Cc: Matt Jolly <Matt.Jolly@footclan.ninja>,
 Matt Jolly <Matt.Jolly@footclan.ninja>, Brian Inglis <Brian.Inglis@Shaw.ca>,
 Guillem Jover <guillem@hadrons.org>, Tom Schwindl <schwindl@posteo.de>,
 Sam James <sam@gentoo.org>, Marcos Fouces <marcos@debian.org>
Message-ID: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>
Subject: stdc: search function prototypes in ISO C documents

--------------vpNW3pEEPyATYzhFJhhHMNqY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Gidday!

I created a git repository for the stdc(1) script, and created a signed
tag v0.1 for it.

It's yet undocumented, but I plan to add a man page for it.  Anyway,
being a bash(1) script, I guess it's quite readable to anyone here.

Please suggest any improvements that you can think of =3D).

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------vpNW3pEEPyATYzhFJhhHMNqY--

--------------40ZQY3fRo8iPSxwKK5IlFQK4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQbW9MACgkQnowa+77/
2zK5bQ//e3jESYECIaAj1BmTunxyyGqYYDEmIWYTaKaO82ym6XLUjt0l05p9N5fX
r4J0gGdXSqX5cckjSbRooPJxqE9Byf9Gz0e3s79kXLfVOeSqFp0SAvMwmYkkN3zF
gmSSwJ80jLJ8BVS8z26qdvGcapcC7zneRsXwbfhgkkEewubPPhRcY0GbmT9hc8XD
Yezgf3t8ElbIbrhKhfcaYdC7GxPMt7ClbwXdxllPfdH6jgNEDsJEHNnF/q6jsw6V
QZ15kdEJrsdEPKDRye6csR/bTd2IdkhIGhqZ9OJGlaQxR74Plc4nvK8YMXNvfByc
D5ZFHKhcwn01swfLShWAqFGJXxec3bAy8E2w3+rSBe191cNfUvj0aoXfbcWG1RB3
IxpS0/9EVOIUWPpmGO5cbKalhmt38q0DTtQ15zm0hDsL+RGX8u+0e2FIHGsmAm/B
KBF5ScMIAJLNirz/bZT4eDJrGVV0A6ssOjQGFuvX0Sz2dbO+dyYgtgLaT+Ef+55w
g50E59CgAM7lp8VG6D3XA6Jc/c/1P2WQx58yqbdCpWW0HRZD2wMSaJw2QlJoPWF4
tymIcH/ktVXPiA3GOSw2JPBcQ6vgoFNlfeqegNXbq29KGhO226ETnegm7pieoNWJ
a3lF0iZkDhsiTr9IQcJlJsGgJ4yh8MMRzoh6sMFmlSBD8s98/rM=
=VWJE
-----END PGP SIGNATURE-----

--------------40ZQY3fRo8iPSxwKK5IlFQK4--
