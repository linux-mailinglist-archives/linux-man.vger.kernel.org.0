Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 687C76772D7
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:43:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230150AbjAVVm6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:42:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230014AbjAVVm6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:42:58 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A6F217CF7
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:42:57 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id m15so7696106wms.4
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QILhUXb0xKoh1Y42T2lAGuJxYwU/o9xBfdQKoHE+MXo=;
        b=S7777ct4qJfcYGx5B2Zgky+D1CsGbbPMz1Kkx5zgRji+ggOZers/boMc9d9Ya29Afn
         pDOV+BAGlm2MB27OUAnDLkIea6K8MVicnhHRedrpRIhRt0Hh1ttpkmftG5r/BRcOCrun
         CWhXQJtWlx0P9iwZaKEc/JlhwTG2KJZz8jU0PGJLO4Qhc/s5nnclI0zzoix1C6bB/4Tl
         6GVRJcdkyAn2SKwuHLrt3cM3zDjyF4uFUzfbTZpDgGpCGziBydq0PjvqCEwKJoKhb3rP
         VyuP6dZStjJEzxFMAIdDzEnacexik2MfCaiw+bn78B+/4VmJDPx3MkMZC5Y+21yyFixf
         VCpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QILhUXb0xKoh1Y42T2lAGuJxYwU/o9xBfdQKoHE+MXo=;
        b=g0BMbiJR5x96aUdDyrwfUHizbT9m31s5tPrjJmLU33tDUnYMxgGYdHBnvX0+iw5cPu
         0sGF0hwDin3ge8eVbOUlU0CN5y3aJkJ8b9Sny7OaG7Ssq2tqHcFVUGxp1xs91ilUVN9a
         pOSqMuCUm1HmDPfZ5jvQs8NfAoe4AQrG+nTr8p4joEa3LgzXYA4ZC69vtNw0Ws/AtFfT
         SllJL0iSoiXgODzMLnaT2G+JiI19gyZs9VoYZ+zEKezDLTmCUEuzmv5EGWIO6PUhJ/fi
         Sqdg3trgMrHReCpaASJWLja4Sty1e/C8HELnfkjinkkBZhtNpiviKQF94YM2c+H+vsKq
         Wnfg==
X-Gm-Message-State: AFqh2krUdnQvRkk/n9K0/g3MtpbBe+Xpdzy/zSByWn+NEEeFvcP1O71u
        6VNtK3W30h8LGoIj492EvX4gYbsSNeQ=
X-Google-Smtp-Source: AMrXdXtvom3Nolx9xSppY/pNX5bvABfybiPRbEoUA9AUetGzzTo0CySLj28xB2zzJoLNRjG/kDtdRg==
X-Received: by 2002:a05:600c:4fcb:b0:3db:1919:41b5 with SMTP id o11-20020a05600c4fcb00b003db191941b5mr15792514wmq.21.1674423775693;
        Sun, 22 Jan 2023 13:42:55 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p7-20020a05600c468700b003db0bb81b6asm9430868wmo.1.2023.01.22.13.42.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 13:42:55 -0800 (PST)
Message-ID: <1d345ae5-88fe-bf2c-2f45-a7179a4b74ba@gmail.com>
Date:   Sun, 22 Jan 2023 22:42:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re:
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193117.GA28689@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193117.GA28689@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1m0kQThWHypTZ3zOR131pVF3"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------1m0kQThWHypTZ3zOR131pVF3
Content-Type: multipart/mixed; boundary="------------k0pL1mSjlNvmudYIeXBvF2QG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <1d345ae5-88fe-bf2c-2f45-a7179a4b74ba@gmail.com>
Subject: Re:
References: <20230122193117.GA28689@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193117.GA28689@Debian-50-lenny-64-minimal>

--------------k0pL1mSjlNvmudYIeXBvF2QG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KDQpF
bXB0eSByZXBvcnQuICBBbiBhY2NpZGVudD8gOikNCg0KQ2hlZXJzLA0KDQpBbGV4DQo+IA0K
DQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------k0pL1mSjlNvmudYIeXBvF2QG--

--------------1m0kQThWHypTZ3zOR131pVF3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNrd4ACgkQnowa+77/
2zJKsw/+LyiUG8NDbW/gurKPI23EoBDJmOsAsSI6lX5kOKX0WUFRP84lv2eamSK8
0PXhG8jsq4GOcq4yhSwwUl6qx0nSurkgf8ErqYCmvg2fTB8LdVfNcD3antqwtNG6
VSgvGamrUTUozKJZXL8gm8sAHEN0gHhj2s30aVtoJwws5Tew0HeGd4B7eq/GFGBz
7fsSEsuOrLx6rdUw0EYIup2YkXgmxXBKbn+9pNyIQZ5E6g5W4k03LGndm1OyA2vn
q/IQ8sVNPA8aWQ129PSIhCZP42Ntz+IZMamcar9OAmWuWIuFNt/SSVn3ZddKfLyy
ok8f6YUh/wHpatmsZC6Uj30oE6Unvg6lDKhXNK9BC7O7/abrpeThwNG3vY4GRbap
PZ0L28OVADzXSIY09BICPXHuhFvLRN/o2vUIID3kG8LwEMVtSpXIT7RwHp0w+yhM
z/n5ptSD1TEgFwmJBh7D2ia9R8fUurbRyTc8pa2hJLAocydUDA790Sa3iEnlJEgT
66Vza7+3sYfgLDxQJkH0l5QFHGXKkOzxMbz47ej7J2FNGncUTBpOBfspc5hD2/CV
Pzr83oWGB05Pyr4wz550eGyqcf1CPT7sxXTsrPxq1Y2wEbwA4NfGNfGH4ZMfMkYs
CwTw3IKFPK4xCJhdwwt6k6lNCRxE4nDav0BXX2F0pikMVq23dbQ=
=kles
-----END PGP SIGNATURE-----

--------------1m0kQThWHypTZ3zOR131pVF3--
