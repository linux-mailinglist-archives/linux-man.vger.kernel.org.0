Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3C367224A4
	for <lists+linux-man@lfdr.de>; Mon,  5 Jun 2023 13:33:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231322AbjFELdb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jun 2023 07:33:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232398AbjFELd1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jun 2023 07:33:27 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F00ED1B3
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 04:33:20 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f61d79b0f2so2183287e87.3
        for <linux-man@vger.kernel.org>; Mon, 05 Jun 2023 04:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685964799; x=1688556799;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fHGXsKOKVRYY2/9WOAInJo5WGx5t6ymg6eYIvq0mjjo=;
        b=ES8NvUgbmkuYVeU/qy3w2qKB+xGF5z8aR4m73A6F+oExubJAw4QPwHng81QJp8O9NU
         xEZH3qlA4UY2sApixQYLpxjYur0dLnim0hhlZAfK9V0NEBRGgvy07uUf6rJJxEO9b+mt
         24QqWIp0zkib7b7hrbzzFFB45QBFIQFRWg0ePFoDgxmFJHsvQWw7WktpuZ+tphXnXXo8
         a0Jfq1UY3f0Lz2YAUiCrfk36uhp+znmdJowlHcZbhQJeJfZJJVNKn+2PKaAXofOq80UA
         nubHE6jzeP6q73Umgu5c2dDFeKbCf3tX6Evb1TOQ/Grw1rqmxlv7nuRC9IhcebF5PUOB
         NlYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685964799; x=1688556799;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fHGXsKOKVRYY2/9WOAInJo5WGx5t6ymg6eYIvq0mjjo=;
        b=Nf6lHDeE65b96CsuHhSsQW8Mpum3ZoE8z56oi2xe9nZrGutiVEhGKJ+rB+Gtez0Gsn
         WKrAhfQCcs7DkqLgF94iiqFzSyW9iJPWZB7nClwuIAk8WsTeAkKygfL8zkiKaOIbtVlp
         XcHvs4gf/5WjDRSgze9kP4K6m2csbcG630oOoW8FDtDN6/WhsJSjvwItAj/azPysoYJv
         p+7FC2sUlVW4CPwGcTcpdxGBfZCDQcLgYmc2o5yiPWIw80TJz4TgbREjo0pcygttJN5l
         JAl7jpjcgV1UltYPzwnJWW40Bl9xMEzyF2PhKPxHij/f02j6YSok6uO2KqeAV5QnpYdT
         2nGA==
X-Gm-Message-State: AC+VfDzOiVghGjNxYyMpbMns9wI7YP7hgnEixRnmZxkcGOUSlCmzSLTj
        /GdMJA+Tw3rGckfmduE6Fjs=
X-Google-Smtp-Source: ACHHUZ5D2JEYTeC2wUHrlPXqcn7HvArIaUR7ARjMQb4to7Hb0CXZmIOflPAr3n0X949sDnD9IFMAFQ==
X-Received: by 2002:ac2:4357:0:b0:4f3:b883:fc4e with SMTP id o23-20020ac24357000000b004f3b883fc4emr4902099lfl.43.1685964798870;
        Mon, 05 Jun 2023 04:33:18 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t8-20020a1c7708000000b003f6038faa19sm14036712wmi.19.2023.06.05.04.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 04:33:18 -0700 (PDT)
Message-ID: <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
Date:   Mon, 5 Jun 2023 13:33:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
Content-Language: en-US
To:     Yedidyah Bar David <didi@redhat.com>
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------06sTGJM5nkDbQCAsOipMs5rE"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------06sTGJM5nkDbQCAsOipMs5rE
Content-Type: multipart/mixed; boundary="------------bZk3AnxYfNC0yMM70wSU52ZG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Yedidyah Bar David <didi@redhat.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Message-ID: <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
In-Reply-To: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>

--------------bZk3AnxYfNC0yMM70wSU52ZG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Yedidyah,

On 6/5/23 13:17, Yedidyah Bar David wrote:
> Clarify that the behavior of these functions is undefined if c is
> neither in the unsigned char range nor EOF.
>=20
> I copied the added text from toupper.3.
>=20
> In practice, calling them on out-of-range values - tested with recent
> glibc/gcc - is simply reading from random process memory - meaning, you=

> either get some garbage, if the memory was readable, or a segmentation
> fault. See also:
>=20
> https://stackoverflow.com/questions/65514890/glibcs-isalpha-function-an=
d-the-en-us-utf-8-locale
>=20
> Signed-off-by: Yedidyah Bar David <didi@redhat.com>

This is already covered by the NOTES section, isn't it?  BTW, I'll
rename that section to CAVEATS.

Thanks,
Alex

> ---
>  man3/isalpha.3 | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/man3/isalpha.3 b/man3/isalpha.3
> index 443c2aa09..8ad997c29 100644
> --- a/man3/isalpha.3
> +++ b/man3/isalpha.3
> @@ -145,6 +145,15 @@ is the special locale object
>  .BR duplocale (3))
>  or is not a valid locale object handle.
>  .PP
> +If
> +.I c
> +is neither an
> +.I "unsigned char"
> +value nor
> +.BR EOF ,
> +the behavior of these functions
> +is undefined.
> +.PP
>  The list below explains the operation of the functions without
>  the "_l" suffix;
>  the functions with the "_l" suffix differ only in using the locale obj=
ect
> --
> 2.31.1
>=20
> Best regards,
> --
> Didi
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------bZk3AnxYfNC0yMM70wSU52ZG--

--------------06sTGJM5nkDbQCAsOipMs5rE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR9x/YACgkQnowa+77/
2zINWA//V9ONnYzxRh6P5gXtP3zNtqEgHIRK33qCbxkqTdoJXFeOQmy+GkhjuTnC
dKoSrF+0rdeGGVXB7nzCZnFrPsIzmo4JJZD4XWUUpUTajxtZrxGGU1LdkAGF7bJT
t7maipLLYmfyDnAQqJ5DJk++yGRfYwXgnsl552OG6BEtvDvTCftzujPyAwau1tWy
UxC16Dc//FYIFv/bnycshznMmga5lGT0MvhOAThdU5WWFsN256LHnUpMZLWFG8/X
TX9sziyQUmjstOqidyJRYABZmNB78q+58PnuFPFU0f7doEcmcp1gQr/Zfx/iEYt7
rjI6y2I29cYtlDW5MRClVfBKHTQA8B7ro9lXfkmvxKNspgLnCBb1RS0b5Cj0Acc1
kS/Vb8C7TG+9fkYZkfgPNJGmRJp21/nG9txI00m6sTMdLR1B0nWMI9oBvQfUKKFf
oXD2KI5OERkiqY5OJxfILxhHCijmEx5I7D0PhPLBHmmqhBf/O9x20n0y21TyVPxc
g8hQOY5fU1nYSJAApcj3gQWd6EsPtu3Ij9SNtwI1Mc/IBpy9YxHE/3Ajjp3yrl+n
4duJ5HpL30VkfiGgAFlBgCK0tXmS3dJoRNxrN13XiHtqPfO45f71avlai+5MohNm
5wa8AS5mH+RROJKThaYGxhHZSRsh5aV4KNCZsKk9yNia1SrjCxo=
=Sbl0
-----END PGP SIGNATURE-----

--------------06sTGJM5nkDbQCAsOipMs5rE--
