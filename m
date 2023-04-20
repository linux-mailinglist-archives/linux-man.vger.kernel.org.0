Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 695F36E925F
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 13:24:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231978AbjDTLY4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 07:24:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234137AbjDTLYl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 07:24:41 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1C46AF39
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:23:18 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id a8-20020a05600c348800b003f17ddb04e3so946197wmq.2
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 04:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681989796; x=1684581796;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CxxUG2Yw1Nific1JJCaxOgzr4pnhh8Q9Bc70PpqQK2U=;
        b=L9GMNnPXK8Oq6CU5stV87GhDxqmcJcjdwMcMad1wi1cmjdid23P54XZWlaJ65ytxnk
         2OZsJLSKbImvlM/4Pqh/XxYmL+MZXm87X7wRXxl5oFhOVUE6qnwdoirFxMsnuAril8Ha
         kSdwDYSs3T1yMdq8FARp8Sl0p9YWZ9zHJptACj6rDPGRFOZP3VRUoxqWn3zDqg2Jc17I
         C34tcZTkWiZYzb6BpezA2b3+6zoxq8DfAMROhyr9hSaopPhsK/DpfbxPi5TtK1mM+P/H
         /Y901C1VhHNVg56LMuk8qWnuBNOUiv0IbVd3ob7cw+g2XUI6fcshTUVAUJnlhC8Y8WGI
         dJGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681989796; x=1684581796;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CxxUG2Yw1Nific1JJCaxOgzr4pnhh8Q9Bc70PpqQK2U=;
        b=SeVPgMgw8VewDLD0OqYbUq6gCmiUav5WgqnNNWENj+EOO9Bzn60IYTDaP52uko+LX4
         YXA/MpNtVv7NA06PBHXZCbBiI0D9VQB3lwtQFlP+faiPp9mzWccbj3rxEanRh7NL8mva
         I1e1N3WLNurcv9Zh71lw40NHFAr6erC6xwwbsR7KaH7B3jlIYBJbTud//yW82/udG85k
         UOUc2sxU0ergoOHX2h30s0JxsqvCVWBKHhPxvI5aZCPk2vJNSGZeS8mPNkHN9wbhaIJp
         UppCPseyQLT5KDtM/iEY4HBQNG8ijUuSqrDiGDwrmHe4ZFbTvHKjhsTG8jKOvb7Dlpj6
         qesw==
X-Gm-Message-State: AAQBX9dM7sqayldvvJg99LdDOeGpeieAJXVjau52/puSGwxsCS1Qa6Oy
        ucDhbG6XqNKYTWa1Ipl+YFVoiwqYoEI=
X-Google-Smtp-Source: AKy350bSlPDibWtdn2x2N4paxkfsUpbEaJhWYJwjlKCMaDrtea5NUc/EcMbLEhuv5QvWNi4RdJQUtQ==
X-Received: by 2002:a1c:750c:0:b0:3ed:9ce3:4a39 with SMTP id o12-20020a1c750c000000b003ed9ce34a39mr1072719wmc.26.1681989796337;
        Thu, 20 Apr 2023 04:23:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t13-20020a7bc3cd000000b003f173c566b5sm1767807wmj.5.2023.04.20.04.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 04:23:15 -0700 (PDT)
Message-ID: <578c8cfc-e194-ce23-74c6-b79ced03deb1@gmail.com>
Date:   Thu, 20 Apr 2023 13:23:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 3/9] regex.3: ffix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <eb0bff3196509aff18b57f0fbb242df02d9c00e2.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <eb0bff3196509aff18b57f0fbb242df02d9c00e2.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Gb3q66tOjLxnOzA1f0oZ7TJ8"
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
--------------Gb3q66tOjLxnOzA1f0oZ7TJ8
Content-Type: multipart/mixed; boundary="------------1sCHjscEyvQ08W0kFWmxA2Bk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <578c8cfc-e194-ce23-74c6-b79ced03deb1@gmail.com>
Subject: Re: [PATCH v2 3/9] regex.3: ffix
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <eb0bff3196509aff18b57f0fbb242df02d9c00e2.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <eb0bff3196509aff18b57f0fbb242df02d9c00e2.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>

--------------1sCHjscEyvQ08W0kFWmxA2Bk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/20/23 01:23, =D0=BD=D0=B0=D0=B1 wrote:
> We never bold POSIX, not even anywhere else on this page.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks,

Alex

> ---
>  man3/regex.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 74f19945d..5aaf42caa 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -61,11 +61,11 @@ of zero or more of the following:
>  .TP
>  .B REG_EXTENDED
>  Use
> -.B POSIX
> +POSIX
>  Extended Regular Expression syntax when interpreting
>  .IR regex .
>  If not set,
> -.B POSIX
> +POSIX
>  Basic Regular Expression syntax is used.
>  .TP
>  .B REG_ICASE

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------1sCHjscEyvQ08W0kFWmxA2Bk--

--------------Gb3q66tOjLxnOzA1f0oZ7TJ8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRBIKIACgkQnowa+77/
2zJssw//bAlTXoVjKIPVhJxQeHvkWgCF13V76Cz8dP5TB2S6TFmSEcP9idA9Id47
NEYqoHn/y7zJm6t5T44Ob9Ugv9yZY8S9OLGkoiv2KeN1k8LBPeh/+xQ3Hn+RnaUN
VTnyJFRN92o7+Wl2QYza1YZrTSiQrV2L+HN+vGaSA35w1yO+eRQysF50bAEFN80D
KAmFbBB3cx3hsNqdxxfhSgNC0sB33GFnHMtpLpU1Gy4S29T1zVDUrqixOVYEwCOP
Xv8ObIzGm+iGvV5nlk/OpI3dP381SWCqN4lZUjAsA36rw5bH4LkNGp3kDGSsy1v2
t2cyC6yoyzTrxWiwpDfc7FF20FK/IYX4Jdk0KdzAB5VVLKvKgBGlcRs6/1xwYYrn
1eKktYN5UAjR7TbM0AKaSS7/59zU3TkoYpqczsi0ylUE/E6UAw2GQTON/rC9cegO
HNr8DhP2WcfDAnPVBzR7C/Hqp36zKDnGn0gNI1pyvR1sDroXOB1mGd2/6dovJr/f
zDA6Fuuo752h+uz9R0gfTw/hAKNrE0Z/eBl4YyBgWVipEuK1zDJILXe0e3/lEZNh
Lh/wM3qLolmKv4Q5AjHRhnld2cOB8xp3Dglk413ZYbcHW9ksgZrZWN0wo6b36gFb
2liOpTvXl4i/mGJgkFMFq/+nutL7oQOuWqWI8DOnyHLXbmdjI2E=
=1ozC
-----END PGP SIGNATURE-----

--------------Gb3q66tOjLxnOzA1f0oZ7TJ8--
