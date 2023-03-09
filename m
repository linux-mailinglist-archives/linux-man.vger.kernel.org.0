Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A6AF6B24EC
	for <lists+linux-man@lfdr.de>; Thu,  9 Mar 2023 14:07:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230509AbjCINH4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 08:07:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231171AbjCINHz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 08:07:55 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3F58B56FB
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 05:07:52 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id c18so1099457wmr.3
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 05:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678367271;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ACqBLpxlbj+r3ENAsldEtNsKhdqrRlwFIINEKFnUXdM=;
        b=UgKmXaDHtkRIQjSz0rLBvtDxT4HKQnn7OzXWAKQN8PMD04UFV592HO5DJirZdmLfye
         0HeUEvbSqUzXarpkWNUYl0lm9+3d7h7PCXEkjno3M6P8zDw3R689EydROGJOWZ6piReu
         rL2zQtS4BKTVzXoYZsTPVrfboefsb9N01KPZFiQzsE+NdTBqYg6Yy04Glknu9SJI7xk1
         DRAyVwujkwgb+XvJsYMRYii0x8NE8pP9+gXo0JVLTw1n5x+7/n9gdMGQ8u2r60NDFYzE
         3qmqnJ2B2vKUxIfhuXzoimuPOVziOS+7J9VZFUvaIj26kC846XmFVTuSacLtzhUGfBRJ
         YsCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678367271;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ACqBLpxlbj+r3ENAsldEtNsKhdqrRlwFIINEKFnUXdM=;
        b=izJimlto94i5bESnMNbGoWjgkAdZCkkUTO5vU7iEo3zFhc1YzOPDmzX4nDL4oFRRDl
         MSwxFlvapqz25vLEHJPOMTn243aV7bLsbS+IjPjcJ7PE5cZ5iOjkQhPJ+moqQeMiII6Q
         OH5uS1nMxIKRdkVVhN3E72riQbGZhhubBwS36o6/9CptWX1P30mj3RS26CuOo1A1jyRn
         fih2kuyOjFsmi2d5XVmp7TF+eTDuLqebT8ry4Ro+hiPOwWDHQsKd8UAQXODWlEv+6N48
         Pufs6MPP3+FCnP7hNdhUGaWi0pkx769YtfCuFk+3yW5mOrpwkPwGLteCEEavIcqCN60H
         hDoA==
X-Gm-Message-State: AO0yUKWvgVFbunOmVWHb384IQX6TqHXNF1+YU8N3pOJOG6fJHgJ+kA1X
        H91HVGe7IjbxdP9NWk7/xM4zMghS24c=
X-Google-Smtp-Source: AK7set9oCgx7ukrh+LiSIsgZ2MEMXQhwLtXhXwglL+oQU65Ko+suOu/Tb6w43di3YQyAUvzFh1kogQ==
X-Received: by 2002:a05:600c:358b:b0:3eb:37ce:4c39 with SMTP id p11-20020a05600c358b00b003eb37ce4c39mr19773995wmq.6.1678367271106;
        Thu, 09 Mar 2023 05:07:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s7-20020a05600c45c700b003dc434b39c7sm5967245wmo.0.2023.03.09.05.07.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 05:07:50 -0800 (PST)
Message-ID: <7fe40501-6548-db34-2c72-650d0112e1dd@gmail.com>
Date:   Thu, 9 Mar 2023 14:07:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] CONTRIBUTING: tfix
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>, alx@kernel.org
Cc:     linux-man@vger.kernel.org
References: <20230309073900.11503-1-schwindl@posteo.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230309073900.11503-1-schwindl@posteo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gu0kV9vZbeNBhJ8hFWp0M7i7"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------gu0kV9vZbeNBhJ8hFWp0M7i7
Content-Type: multipart/mixed; boundary="------------XaZYS61Bx63f8C0uoxkuV1qF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>, alx@kernel.org
Cc: linux-man@vger.kernel.org
Message-ID: <7fe40501-6548-db34-2c72-650d0112e1dd@gmail.com>
Subject: Re: [PATCH] CONTRIBUTING: tfix
References: <20230309073900.11503-1-schwindl@posteo.de>
In-Reply-To: <20230309073900.11503-1-schwindl@posteo.de>

--------------XaZYS61Bx63f8C0uoxkuV1qF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 3/9/23 08:39, Tom Schwindl wrote:
> Signed-off-by: Tom Schwindl <schwindl@posteo.de>

Patch applied.  Thanks.

> ---
> Hi all,
>=20
> as I'm not a native speaker, I wonder if the "be" is correct in this co=
ntext.
> I haven't changed it for now because it's likely that it's just me who =
thinks
> that this sounds awkward.

I don't know.  It sounds good to me, but I'm not native either.  Let's se=
e
if others manifest.  :)

Cheers,

Alex

>=20
> Kind Regards
> ---
>  CONTRIBUTING | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/CONTRIBUTING b/CONTRIBUTING
> index 3bb671eca417..45bc86a28a00 100644
> --- a/CONTRIBUTING
> +++ b/CONTRIBUTING
> @@ -14,7 +14,7 @@ Description
>             Cc: <linux-man@vger.kernel.org>
> =20
>         Please CC any relevant developers and mailing lists that may kn=
ow about
> -       or be interestend in the discussion.  If your email discusses a=
 feature
> +       or be interested in the discussion.  If your email discusses a =
feature
>         or change, and you know which developers added the feature or m=
ade the
>         change that your email discusses, please CC them on the email; =
with
>         luck they may review and comment on it.  If you don't know who =
the

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------XaZYS61Bx63f8C0uoxkuV1qF--

--------------gu0kV9vZbeNBhJ8hFWp0M7i7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQJ2h4ACgkQnowa+77/
2zKwDg/+Pifb7g80D9W8qtBSSOSOQLDbyUPA406ci56/0OlB1um5aPhJSjBrmF6C
WvlNugezosH5tT6hNvfiKaavJnHF6c2CfxOeAf/4WVWScdfnpcSRKuI74v30ix6w
f9uwt12B2W4XqcK4W2Yl7KcOlFLSjjUWjZv1W/lzRmr5AKSh5R395gmPJDSZ2uJt
KNHYKNZIvJAThkR3e3DEJAGnaVd79xVx4m8aGGPDs/CuEelA7wH3dDfM+tRr00yI
qlVcG4od5QnCThteEhG0FuLh9H+1m+nZmsA1Hm8P0jGkHqe2bj7NtxCCAg0ZHaDs
wSgdNmgDFYEu9e8apDjvISYHiyMpfReCa/lyq8qaOU2C79ZTeNqy1M31Ui8UeM9b
8RmZneqpD6Go5FU/ncu8qOG3ji55yU/I/m9XEq7pfL57m+ok/DqyE8qDezYv85ix
fizGcFFuGZtkEqMApkIaOBZFTTlULtUbalkZubzPCHe7FQB0Bt8xJ+5cfffDHSeD
nUlYt/odI9lc4ZSe2wjTkvxS+p+CYEOfq6aKWJMzKaSemJTzFabQsxxibLOBGIKt
wfimOsZz2c069h6nMYBB3uVj1DxFw7ENUN22OkmdyIZUDx3NK4mHqlsUQKIP4eFz
3Ujr3Nx5VS9wKVRepK+chUNwSbb6sC5huYHsXJ86NoOQpW2UZak=
=7eeI
-----END PGP SIGNATURE-----

--------------gu0kV9vZbeNBhJ8hFWp0M7i7--
