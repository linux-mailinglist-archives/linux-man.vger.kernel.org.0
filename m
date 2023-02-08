Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0DC768F978
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 22:07:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbjBHVG7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 16:06:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbjBHVG7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 16:06:59 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F37D233D5
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 13:06:56 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id l21-20020a05600c1d1500b003dfe462b7e4so3168236wms.0
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 13:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5/msekqrGG/K89q9HeckdpaECZpR4jkXqyxwxUQJoRw=;
        b=lqvU/0//IKLzIvGtQ8XlL+a6MwVgsTHnJxj+R66FK08RHeBQ3wGpRBlMAU693KJ4Ft
         qYbK+HPYzFOC1mblopkPz01n6Qi8HIagU73B3XYXi4jo9dK3Gkm22QZuZPGFPSaPU3tc
         uFigKULz+48NeC4Q9Dgm0sPX6H9dkbhKtNngWtUf1THqzd5d7xhzSySyXR8zwrHDt+Lg
         TkIISIqrQgEjmbWiYNr9pd/S+ZL3HtdYUJpSm3O8TsUnvXeEqdQ02epnGBjBlslMkNWd
         GjvIOLwey25yCwfwKWPaOkJciSXCcDM0DNxdLw6m0mAkQsPUo1zDFu69Wh2Hc/4UytDk
         jkwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5/msekqrGG/K89q9HeckdpaECZpR4jkXqyxwxUQJoRw=;
        b=tbGd6Ck2C7zLLkqd4tnbmJqDjvloXS4OMi8onWNrZ/s4c3wCo4lyDC36+exAk0Rc2R
         kvv+m4PeTNY9YFgTQBYqBCPqA3W0lY23Ba58JIN6dGdcirLCiL2CJKt6IAgvfrrP5MZZ
         Pog9Z+NjlLgAz3UZzBL9oq3YwoEil5D1Z3Utb1tYHJryALuYkkWDZvRREldewbKU3GuM
         TygVMHtZIVN61xlhQEGfNjOpCqsd76EbfxgITF6ciOq5ATB1uullwYp76fOhNuezUDdA
         FTQZuQhgHfpa7c6e6nP6YsPPCFYzoc0TN3LBo6BikhlR7RPSpyhMI9sF7qoU3hGy2U4p
         y9fg==
X-Gm-Message-State: AO0yUKVYo9nSCr8sGi+W4SvClgCeSHuSo5QHWDCKegZ/242zhbwDGrNp
        aoYBRr1Cqc7exmHfS0ZrAXz01W1aitc=
X-Google-Smtp-Source: AK7set9+szw3mKBwoHSd25h1ximTdEyWwZCHRWjoMZFi8pSRUN1lvZZY5hzV1g1f0zArbc89ouwEpA==
X-Received: by 2002:a05:600c:18a0:b0:3df:3bd6:63e5 with SMTP id x32-20020a05600c18a000b003df3bd663e5mr7557779wmp.12.1675890414911;
        Wed, 08 Feb 2023 13:06:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h14-20020a05600c2cae00b003dc42d48defsm3189304wmc.6.2023.02.08.13.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 13:06:54 -0800 (PST)
Message-ID: <80562970-7dd2-ac70-5171-502e313c6c7e@gmail.com>
Date:   Wed, 8 Feb 2023 22:06:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 05/11] man2/reboot.2: show BCD dates in hex not decimal
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <08e4941481849760a959720e07fb09630af1f8e5.1675830945.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <08e4941481849760a959720e07fb09630af1f8e5.1675830945.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nZZGitQYwCKYdhddgjSerbPc"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------nZZGitQYwCKYdhddgjSerbPc
Content-Type: multipart/mixed; boundary="------------Ey5YFXbaQL684m6sHVQV3xUt";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <80562970-7dd2-ac70-5171-502e313c6c7e@gmail.com>
Subject: Re: [PATCH v2 05/11] man2/reboot.2: show BCD dates in hex not decimal
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <08e4941481849760a959720e07fb09630af1f8e5.1675830945.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <08e4941481849760a959720e07fb09630af1f8e5.1675830945.git.Brian.Inglis@Shaw.ca>

--------------Ey5YFXbaQL684m6sHVQV3xUt
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/8/23 21:27, Brian Inglis wrote:

Patch applied.

Thanks,

Alex

> ---
>  man2/reboot.2 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Ey5YFXbaQL684m6sHVQV3xUt--

--------------nZZGitQYwCKYdhddgjSerbPc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPkDu0ACgkQnowa+77/
2zJqdg/9FnqAgVPmtZ8nzMcHoNpEkY3u2+Igc9xhPQ8dJLub+avCDL2+01b1+hvj
0hLLjS4/j/wxSjBlnwvo0EPiOAyDcro+7/ajMKnze70cSSFXSnKitHEO5NZEtjdq
ej+GoKwyouP992SKHnMrOnvbevtkdRiluWSkksCHN8aH9wMIbbv0OCyUoViCZSGu
Uz20shbP1zt8tBgZT35DHRYla893Upt7giIFi08pKD88ejV/B3M5sFFYQmDL01xU
yE/jsSFWG/3gnn42THNAveJ+l5EyYY9dgS7/admrL8JIX3xSd0CbU2vorCpcSQ1g
+ATUEcpMpKVpcWGaPa9M4bTjVCufALPxJYtBMyeFg3sOqjd73734djqcNl0YEmpb
/R77X018sn26GPTVh2zkBfsRgXMWND3boHJpXdngp4VKs479spCp8ryljYiK92+D
ZPnU3FWcaobrBNWgoHuwJ1ZfT18BKwFXh2Oilkl0IiOe/mMvLm5AcsMp5zF/v/OB
P3W2mcrCWq5CkGJimdpaZxz9CGVitLF7SPG2ht4Ui72iTW8XWxKOvyuP7SFVmYt9
27D5RpYeX5Zzwsvt/pxZtJaBr+z90p5KcacmEzgNv8sSdWilGGDufURk+E5a7vh8
1Ue0xBlv8InS4Cbn+13+g4fD+PIFaCCxUcPSlX0I7aeh+FyN4XI=
=rFP3
-----END PGP SIGNATURE-----

--------------nZZGitQYwCKYdhddgjSerbPc--
