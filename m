Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D01A4759F23
	for <lists+linux-man@lfdr.de>; Wed, 19 Jul 2023 22:00:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229983AbjGSUAJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Jul 2023 16:00:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230136AbjGSUAI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Jul 2023 16:00:08 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D4C4B3
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 13:00:03 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f122ff663eso12072613e87.2
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 13:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689796801; x=1692388801;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0G79/w1qdobQR3kD+/MU1h1HINewK5gwZ2l62MM3Nw0=;
        b=HcqpckfGb6QsSju9g/wZwaTLYnwZx2y6tHJa7ncgQB2UOq22oFyfeH4u8Ht+MJXGkl
         j+1vpac/LKGOQb1ZIldGsAy50ovtjQ7zvEnqXQKl9ZpGowpFRY43ooe5TO6EbzknRMUM
         dd8z377qgzgLiahLDk6F5NhKry1wSDoxqoPoXNNjP+rvUfB7rjnuDgEObgb7toU4RGUI
         Efjy7vUslsE/ngBGxZdGtBb09+K7jVLkC3jkFhBXbFohH8fXJZLw8yNxOLAN2dDz/Le2
         Cf/bsTVx8Gh90VohZDtryVz/tcbY5YrRcZLHNpP4S2m8gmc6ZAekbJMQfkIvURQ/wrGf
         9jYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689796801; x=1692388801;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0G79/w1qdobQR3kD+/MU1h1HINewK5gwZ2l62MM3Nw0=;
        b=X8zWzGhPXN8S1B/zOhFso5H0ar30rHU3rNo8+53Jtym1G6yz4+eLaQT7m8MF6XqIv4
         VDi2R4l0BymQZBZnaiuWWnTftB4W745ofVsI14/+lJXd2E9GDcaMjmH6HdQw9EzlZS09
         d++//deI+vLb3AVGgNZumxGAjNPWtGK1al0kEhETDZ6TR/QF243M6b+aysdobaxlxjPD
         UXDE0BWTt3ZystSjZbXLH8Hv7EcFxaDQiG6h1CEw1WrFVBESb9T0fbPpy2Dv9iXIOgJN
         dbP7kGTwJPxaUz+7Xn9g+vPkHDS8QaovNrNBJZ8SiNxO2OJJROjXv99OedRFR8gOeW/j
         wgFg==
X-Gm-Message-State: ABy/qLYH4TZpCrX3lUxFvNJlPB85A5FvagwuWB1a8+PSetf1di+A4yZX
        smw4RrIzJ+4/GkOK72ElZc+PC2UeSmI=
X-Google-Smtp-Source: APBJJlFM0SdxH7t0WzcJLOgKiU9mtJPdKV3mXYg34uU9qBHlMICX0o3yO6Gvu1riaCMZXfn9YaHqxg==
X-Received: by 2002:a05:6512:1109:b0:4fb:8987:734e with SMTP id l9-20020a056512110900b004fb8987734emr639802lfg.68.1689796800908;
        Wed, 19 Jul 2023 13:00:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.40.43])
        by smtp.gmail.com with ESMTPSA id q19-20020a056000137300b003143d80d11dsm6064059wrz.112.2023.07.19.12.59.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 13:00:00 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx.manpages@gmail.com>
Message-ID: <eabfcdbb-3035-5593-8ed0-d9a0349b948a@gmail.com>
Date:   Wed, 19 Jul 2023 21:59:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Reply-To: alx@kernel.org
Subject: Re: [PATCH] man5/tmpfs.5: fix typo in reference to
 CONFIG_TRANSPARENT_HUGEPAGE
Content-Language: en-US
To:     John Hubbard <jhubbard@nvidia.com>,
        Mike Frysinger <vapier@gentoo.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-mm@kvack.org,
        Vahid Noormofidi <vnoormof@nvidia.com>,
        Matthew Wilcox <willy@infradead.org>,
        "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Carsten Grohmann <carstengrohmann@gmx.de>
References: <20230719020533.1608867-1-jhubbard@nvidia.com>
In-Reply-To: <20230719020533.1608867-1-jhubbard@nvidia.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SrNZ6HrFC71mfqK5nLGqRZ1F"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------SrNZ6HrFC71mfqK5nLGqRZ1F
Content-Type: multipart/mixed; boundary="------------hwGjoCf8g5Z87cHfZwLaT6QO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
Reply-To: alx@kernel.org
To: John Hubbard <jhubbard@nvidia.com>, Mike Frysinger <vapier@gentoo.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org,
 linux-mm@kvack.org, Vahid Noormofidi <vnoormof@nvidia.com>,
 Matthew Wilcox <willy@infradead.org>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Carsten Grohmann <carstengrohmann@gmx.de>
Message-ID: <eabfcdbb-3035-5593-8ed0-d9a0349b948a@gmail.com>
Subject: Re: [PATCH] man5/tmpfs.5: fix typo in reference to
 CONFIG_TRANSPARENT_HUGEPAGE
References: <20230719020533.1608867-1-jhubbard@nvidia.com>
In-Reply-To: <20230719020533.1608867-1-jhubbard@nvidia.com>

--------------hwGjoCf8g5Z87cHfZwLaT6QO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 2023-07-19 04:05, John Hubbard wrote:
> In commit 462a385e9a2 ("tmpfs.5: Document current mount options"), ther=
e
> is a reference to CONFIG_TRANSPARENT_HUGE_PAGECACHE. However, that
> option was removed from the kernel via commit 396bcc5299c2 ("mm: remove=

> CONFIG_TRANSPARENT_HUGE_PAGECACHE"), a couple of years later.
>=20
> The net effect is that CONFIG_TRANSPARENT_HUGEPAGE is now used in all
> the remaining places in the kernel where
> CONFIG_TRANSPARENT_HUGE_PAGECACHE had previously been used.
>=20
> This has caused some minor confusion at the man page level, though. So
> let's fix it by updating the man page to also refer to
> CONFIG_TRANSPARENT_HUGEPAGE.
>=20
> Reported-by: Vahid Noormofidi <vnoormof@nvidia.com>
> Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
> Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Carsten Grohmann <carstengrohmann@gmx.de>
> Cc: Signed-off-by: Mike Frysinger <vapier@gentoo.org>

Accident here :-)

> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> ---
>  man5/tmpfs.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man5/tmpfs.5 b/man5/tmpfs.5
> index 09d955898..cdd5f2fd8 100644
> --- a/man5/tmpfs.5
> +++ b/man5/tmpfs.5
> @@ -115,7 +115,7 @@ Set the initial user ID of the root directory.
>  .BR huge "=3D\fIhuge_option\fR (since Linux 4.7.0)"
>  .\" commit 5a6e75f8110c97e2a5488894d4e922187e6cb343
>  Set the huge table memory allocation policy for all files in this inst=
ance (if
> -.B CONFIG_TRANSPARENT_HUGE_PAGECACHE
> +.B CONFIG_TRANSPARENT_HUGEPAGE
>  is enabled).
>  .IP
>  The
>=20
> base-commit: c654cde5ec9e9fa975d5d041aa069489ab12a4ce

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------hwGjoCf8g5Z87cHfZwLaT6QO--

--------------SrNZ6HrFC71mfqK5nLGqRZ1F
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS4QL4ACgkQnowa+77/
2zJWUA/+Ie0GwyQy6ahp8DMWtvVHqWmToWllc6a0phOxzuUsaqgYlWLPtgIaQFNC
L1srKUB0jQD7KypsUaalTwsFrknxbrg058wSa+TULhhaDz568MTLDLRh4GEyJuKi
zSYC2TvkoHMsJEDXM2Ed44nrUYl/Jmx2R2Ozt4d9UugxZJoEHBQ7yCYUiocW1iF1
WMMBhCh2y+WkYInGyVIjZKxmjmmaJmG9oRYkLK3Erq/3O+Dwtq68Ssz9W64Cridn
vktaAs+TBgJOVyp3m7Oj7vgPYs7JjnTp0vSJ6/ZMOi0LgLyXe3TRnAN5H8HNE0Ax
47SRY7fH9TURVQH++AiQrscas7X4SsdMkDly0MZ3JaXm7US8xhdQt+kyMw1+2XDO
/G6bfbzMJ/EWEg+SUK6juiIhoVC8g97lRFZT0ptyHxu7LeYkFd4pjqyd2AgPnCVf
JyAdsCPUVpSr138HU8l27/oLUk7Lq3WwMlbWye0rR713P5H3VrQ1l9LPkYeZ3esm
Mdr/INobs27u+4mh1uFK27rkN5feHGLhlnJ28JPS+gabKZm8mfEBlExgb2ehDm/E
HgOuuk5L+Fj5R8Vf5eDSTVmItv1LSkNdfw7j2OzVCMqZmolVhQhqhp86uO+HxL4x
Xgs/cFY3WVougmJxdpTG9e0UFS9SCS5DY+uG2z4tsr90v7s2z1w=
=Yxmd
-----END PGP SIGNATURE-----

--------------SrNZ6HrFC71mfqK5nLGqRZ1F--
