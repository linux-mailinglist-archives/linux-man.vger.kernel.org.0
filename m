Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB6356D2B87
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 00:52:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231837AbjCaWwe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 18:52:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbjCaWwd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 18:52:33 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1830210F5
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:52:32 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id t17-20020a05600c451100b003edc906aeeaso4994086wmo.1
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680303150; x=1682895150;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fncJMFYCma2jfr0X8IhtpYBHRUCE33s4daLiWxYETTs=;
        b=IOTTkSN7ZO28cXIwi+NXCd5Q/ocKQFjYN5+S1T6HFXVsQ4/3OqOlZtaunDVpjbNFev
         IYDBM7DTHEKdBmUK46T/RLXSr2Z80w8n/rQaJg7SmA7Yd7umb1eq83o1MPA9CffKwEy4
         KtIf0crp2o0r2p87v28AIlxGAJ2zyZvbN1i8qgZxKI99APyplRZIIhZ2nbR2JMYVK027
         FJci5Y6kgttFH6yL9wPHPeeU6W9ICeruhzNkrCw0eA0RefH08Chfd3TPxt/9VkVnKrnU
         jXh9OGODwj5+ga2JxRK1WELJZOJZgtdmRC9oq4GS9LnwOBhBX7Q0d29vp7P0KtGSQ1Fz
         Ysfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680303150; x=1682895150;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fncJMFYCma2jfr0X8IhtpYBHRUCE33s4daLiWxYETTs=;
        b=G1Ww0ruLLsIovAFGlgOPfXyos08IVvTv5q7aRbDzpyEUZMz4boyTuTzRItt+vetEYB
         gWbCzccZZafomLL7mVaMYuzCQvMDMw7mwoEqDl8pI3u0MiqwpefnuB+BzavjfPyKSCId
         Y8ubws77OROzAuXwXL/A3m4yGaTGaeEO8FMOv3ENxMU9FZWsHIkD2O4jt5jpjRK64QMk
         qAFdAkxS45s5jYY3YXCaf9veEzeJbJ4zNj5Bavrl7YCbjknujoj6CejI5P+PMegnyhop
         2KC8MDptB/2iYxB+Erg20FcpaqNMlWMLrjOrRwCeEXxVuqc+oowKTV8MZ0NdoaE8NTiJ
         7lyQ==
X-Gm-Message-State: AO0yUKXwBVHYTpXFPyPk+AH9SND+HkhUzMF7wecHE+nniL15fBHQxGOw
        rsMEzp0o7oGleWEKG+zA7F2X3vtfKP0=
X-Google-Smtp-Source: AK7set/xSnnHz0igCVqpPv1AQiLtfFtn7MGcBGHmvyt8AwiOWEO405yew49Blomyh4zwSz8Jsydjkg==
X-Received: by 2002:a7b:c8c3:0:b0:3ed:711c:e8fe with SMTP id f3-20020a7bc8c3000000b003ed711ce8femr24205159wml.2.1680303150448;
        Fri, 31 Mar 2023 15:52:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q10-20020a056000136a00b002c6e8cb612fsm3217959wrz.92.2023.03.31.15.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 15:52:30 -0700 (PDT)
Message-ID: <ecf30c09-6342-ccaa-19e7-9a21122b092c@gmail.com>
Date:   Sat, 1 Apr 2023 00:52:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [patch] mount_setattr.2: ffix
Content-Language: en-US
To:     Patrick Reader <_@pxeger.com>, alx@kernel.org
Cc:     brauner@kernel.org, linux-man@vger.kernel.org
References: <0102018569cafe7a-7d1625ac-01bc-431b-8619-049763ed7283-000000@eu-west-1.amazonses.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0102018569cafe7a-7d1625ac-01bc-431b-8619-049763ed7283-000000@eu-west-1.amazonses.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vcQYnygzY8Ahue30oOGyJzdN"
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
--------------vcQYnygzY8Ahue30oOGyJzdN
Content-Type: multipart/mixed; boundary="------------K8aaLvq4O3N7ZeX9Vn63iC3B";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Patrick Reader <_@pxeger.com>, alx@kernel.org
Cc: brauner@kernel.org, linux-man@vger.kernel.org
Message-ID: <ecf30c09-6342-ccaa-19e7-9a21122b092c@gmail.com>
Subject: Re: [patch] mount_setattr.2: ffix
References: <0102018569cafe7a-7d1625ac-01bc-431b-8619-049763ed7283-000000@eu-west-1.amazonses.com>
In-Reply-To: <0102018569cafe7a-7d1625ac-01bc-431b-8619-049763ed7283-000000@eu-west-1.amazonses.com>

--------------K8aaLvq4O3N7ZeX9Vn63iC3B
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Patrick,

On 12/31/22 21:06, Patrick Reader wrote:
> The bullet-point seems to have been inserted in the wrong place origina=
lly.
>=20
> Signed-off-by: Patrick Reader <_@pxeger.com>

Patch applied.

Thanks,
Alex

> ---
>  =C2=A0man2/mount_setattr.2 | 6 +++---
>  =C2=A01 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
> index cfa1a6e5a..b344cc543 100644
> --- a/man2/mount_setattr.2
> +++ b/man2/mount_setattr.2
> @@ -678,12 +678,12 @@ Currently, the following filesystems support=20
> ID-mapped mounts:
>  =C2=A0The mount must not already be ID-mapped.
>  =C2=A0This also implies that the ID mapping of a mount cannot be alter=
ed.
>  =C2=A0.IP \(bu
> +The mount must not have any writers.
> +.\" commit 1bbcd277a53e08d619ffeec56c5c9287f2bf42f
> +.IP \(bu
>  =C2=A0The mount must be a detached mount;
>  =C2=A0that is,
>  =C2=A0it must have been created by calling
> -.IP \(bu
> -The mount must not have any writers.
> -.\" commit 1bbcd277a53e08d619ffeec56c5c9287f2bf42f
>  =C2=A0.BR open_tree (2)
>  =C2=A0with the
>  =C2=A0.B OPEN_TREE_CLONE

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------K8aaLvq4O3N7ZeX9Vn63iC3B--

--------------vcQYnygzY8Ahue30oOGyJzdN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnZCwACgkQnowa+77/
2zLHZg//fVmJmPqy8e1kqbJ1LCkb5KmX65Q9QETUxo2/Xy880xZjgNlIe743vJCE
XDuBgU/d/iU3jziHuVXj44UvDE3khEU0EmcNIbWrT3jjUhvGCsnJyxjRNMxuG9o6
K3lET0DhwxC8LY9lly5vrKv0UhzhcYXoa+0nm76MajA+Y0qPiw/PY5JNQVQTZ034
u0A6laPgH/auftvUfgxdqmvqfieM3/qzdKoV8/0oXfc/H6QeWBHqz3SjgjHmTnL7
mta9pzjuUPQ7cGqDGKwIavCjEnhpSX0W1I5sNHR+sZlXP73QwvXO/76/ViMSUm9L
S5w7GG9JpQPViLGqGWfqKPOQTFfo9ZUs+9fG+0zxIOpo7Ce/tcmCqXCkgO3GiWLm
+KCKi0RrtrBYLOie+775BwkRZjWbrcKV1sZsxavBlsX9xSWMGU0NqzrRg/dizpfr
6TwndT26PBgquGr/uWFQGNTol8rvKS7JIih9L6yczyhGkq+Gig4r46Id5h9yr1vP
2p4TZqnBfDaPS09c1boGzJimfS36SZsPrK1QeCaSoRUmGiNlk/WwOklZAXSFVEvf
95mYEPiG8p7FzEqX/iJu4R71ADP524JbT/xzO6DCs7MpPc6EPS3KaMONucHL6OS3
869LZhnGJav9CJZ4SRUwD1XZuk/+lwe/O0t3GGucWWk3QXP+vGw=
=W4dp
-----END PGP SIGNATURE-----

--------------vcQYnygzY8Ahue30oOGyJzdN--
