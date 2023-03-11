Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2FD96B5C90
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 15:03:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjCKOD0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 09:03:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229455AbjCKODZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 09:03:25 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 541832B62F
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 06:03:23 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id j3so5165591wms.2
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 06:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678543402;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0x6ir7d3tCMefHxImwIVBtRbt+gSonuTO8X6YDsNl8Y=;
        b=BQG6s3yKxpDVwNcOSymnWJQLQHrywJITdb9qoPhUDa4HJhxjbXkUS/8cTeZa25ySc8
         /t82CwvQmSFmVowBkneiBCAMZu+S3GNt8yVCsVQkm+CrrBTBP9/M76cBx5Qy20nhklXW
         0c0oYkxYmFG9Ecdz4aLde31ydSfC7ZrYsLo3IkgwffLa884BNOJJUi16Y8vv3aiCoe4t
         aA26XeWs8MgW6Hx/Mua1El3LInPO32tRI/bAaJmXxbYoM0L7jQUeZJG38NNmbbd5bkYu
         TVBd0ypVNtJsLUdmCIzHmFOhos/3T4JpA6EBKQ7WrMi+BTWkS28RzzuOF4YIS91X87Lb
         JmHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678543402;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0x6ir7d3tCMefHxImwIVBtRbt+gSonuTO8X6YDsNl8Y=;
        b=IiRje1yl36Ynbnr8Q8rxY/lgIvGsFrt5ZW2QJVmZz5nNddmVyE3dTpv0CA2NbCgZum
         NV8EiFTuV3PmlvfV2Tvq1IMPY6mBXk/GqTn2U3kkmuBnZHWfnSb327uIfhvIsg9YWIqN
         TES1SB9HCuEK8TrMDIi55EnhMEOC3RZFLXVTuPXxyeXEHUxvMXqdtdtYyLZy763SrBc2
         lM2UNVDC1Yalx/8DGLjxAOyZioRqenruDVWHj0kYrei0r2Kli4YttkX8+YAf+Kk062v8
         /BWi1MUB65Ff6dBtsUsqGGAlp4FkNOgxWheEnGD6hfBu09egIZA+gETZKRGs5ph95koW
         Hwvw==
X-Gm-Message-State: AO0yUKXo10z/ZBTvDs6qV4MEFl68wBPfTblY33caRIYPPAvKkEVdFhh1
        MvBAH/S8c7BVimIc58ILKQE=
X-Google-Smtp-Source: AK7set+MVNvrLcPee8xaKcc4S9ExN9zXQ0it5mbf5Zp+qyqMSx9lJPEDdiOPKYroDAfh45pL0UbaPA==
X-Received: by 2002:a05:600c:384f:b0:3eb:2b79:a40 with SMTP id s15-20020a05600c384f00b003eb2b790a40mr5590738wmr.20.1678543401785;
        Sat, 11 Mar 2023 06:03:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id y22-20020a7bcd96000000b003ecc64edf7esm1659263wmj.39.2023.03.11.06.03.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 06:03:21 -0800 (PST)
Message-ID: <c1a84495-0335-f8f6-c3b0-f4de30112b14@gmail.com>
Date:   Sat, 11 Mar 2023 15:03:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] ldconfig.8: tfix
Content-Language: en-US
To:     Samanta Navarro <ferivoz@riseup.net>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20230311115954.yg5v3asurx7idr2e@localhost>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311115954.yg5v3asurx7idr2e@localhost>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------aSzimdeEglx6H8xehAfiWR05"
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
--------------aSzimdeEglx6H8xehAfiWR05
Content-Type: multipart/mixed; boundary="------------iaVndOWseainXYUMRlL5dxqh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Samanta Navarro <ferivoz@riseup.net>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com
Message-ID: <c1a84495-0335-f8f6-c3b0-f4de30112b14@gmail.com>
Subject: Re: [PATCH] ldconfig.8: tfix
References: <20230311115954.yg5v3asurx7idr2e@localhost>
In-Reply-To: <20230311115954.yg5v3asurx7idr2e@localhost>

--------------iaVndOWseainXYUMRlL5dxqh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hola Samanta,

On 3/11/23 12:59, Samanta Navarro wrote:
> Typo found with codespell.
>=20
> Signed-off-by: Samanta Navarro <ferivoz@riseup.net>

Patch applied.  Thanks,

Alex

> ---
>  man8/ldconfig.8 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
> index 36b891dab..2f974ad7d 100644
> --- a/man8/ldconfig.8
> +++ b/man8/ldconfig.8
> @@ -130,7 +130,7 @@ Ignore auxiliary cache file.
>  .TP
>  .B \-l
>  (Since glibc 2.2)
> -Interpret each operand as a libary name and configure its links.
> +Interpret each operand as a library name and configure its links.
>  Intended for use only by experts.
>  .TP
>  .B \-n

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------iaVndOWseainXYUMRlL5dxqh--

--------------aSzimdeEglx6H8xehAfiWR05
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQMiiIACgkQnowa+77/
2zJv/Q//Wz5A5953j1zBaZ0JX+OmY4sv23f4OzNNY+J9rZlJrIe3O1JM6EWmuRLw
BSJO7Q/xi1FP9bqOekcc1ZQSyty0S6ROCHF1KayBvEPOieKRkUFtZfF0SqZba1+g
OjYIelHgHxiidqpFDSJ5/uh6YDtBHeQ6AlJCIZaaE2UedT34HGQpirDcfoCnT8Mn
YyUaEJyIuutpMRBIlnmjTqhskK1TpxHZ7fAtQzC6n9Th+DwvqaQlKjmJNYpWXiRp
d6OpNUuS+PcnWd/Hw1j6c9Biv0qzAcp9nADi0+/FgCd52iJg9Im5dk533dqBbRRn
1Cerh1vAHzqn5oblNYq0BPYn1lmHFQZG1/0a1FiJbgxpmiNnYZeAOZ5OTiT0e7je
OpOXONWUJYRZ4VZyOFHDlGXYVLYi/+DgMy0Rh35jqdMnLL932WghKiof4E8ZGtbx
Cz2yAVghndCX+8Vt+MZCpwlNjIj4VbSp0/fSg0k6guC8vLt1jXtOgjo7RChh5y/D
RzLRtBdPWt10AAXRXLyMug+4CZd10X04uRIz2ol0M08SDtAT7vXTsjLamcaSwHOe
ijy3LzyXQLpFHTz2mQW7H9okNilfjf9G8jXHERpTgcK5GAc2Sef6aI8toKLZKYvp
txcHnpJrqUMdhnKCasPv+YarhJB+yan/gYp09LN1yRMWiBbPUR4=
=hxpl
-----END PGP SIGNATURE-----

--------------aSzimdeEglx6H8xehAfiWR05--
