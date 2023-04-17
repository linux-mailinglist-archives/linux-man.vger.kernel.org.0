Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFE8B6E500D
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 20:18:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229562AbjDQSSu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 14:18:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbjDQSSs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 14:18:48 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBF3CA8
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:18:47 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f09b4a1584so12108075e9.2
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681755526; x=1684347526;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kLu4sUbdSpC+3ZCOLOoNzLqzRyS8LiVwQcjdbh4x6S4=;
        b=VuZFvAbrJXb9WRV6VYRYYYSFHXbkRxPce3DBsRsqoTI4dFaOOE8jfMp9NI7trPrG25
         SfF+29qIPbhy4MIArDGBKnB3oc7NPE9JNH4yP01QMTNZKbAZeFyyuDEZyCXdEhE3cZt/
         BUT6QNJdmLwQ5uCqXsQ4IKpqDIVjjh0TecsHZfbOfhRlJrGt3Ip2OynfNT4EQZxrAibC
         Xiu/0VNvAx9g1gHD+syrSEuGsougKnUML9acx/ciHo3lGRTAjaGV8tVWV99+JpFVenmN
         1EZZgtYfH5/QdG96Ckxr8lzruxzXT9vg+grGPqhi1gV62kkLuZZBEWNfyE28sw9aTOBX
         3L3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681755526; x=1684347526;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kLu4sUbdSpC+3ZCOLOoNzLqzRyS8LiVwQcjdbh4x6S4=;
        b=C+oQlISF5tFUJEX6YbGxXRujeqgqP1rfTKXPt3p9vTRQqcz+Z0JTHtlLarZOp4P567
         MUun35RtvqK1P6FkR+obcEoiD1n8P/NklOiBwMuHcdpkgnxTu6HSDRcFWeCDkc7ZuQgf
         GSN25AuoXfLOM2I80M0ysGGYPxkjd+DD9FXdjrdBQIQSU/n/a8y8u9maE7ZVbY1PJFPM
         gGET1BtMAdTIFOxfJNtvL+TtcSj0IDNTA6gZdMTCKHINo9wqWMoU0U1e7U+M37Y1YfC8
         CBynVgEQCX7MuqdU9HyL0DOH83CtUcJeYbrgnl+WK2tAsX8+5TNfbNdiIMyGbFCpC4kA
         8aFQ==
X-Gm-Message-State: AAQBX9dbRhlz+yPeMpgAcTCpINbNeqWw5ysBZDXa6uevfOUc4nvjo7Uq
        7/ibNv7m8yQvpBQqiq79mIA=
X-Google-Smtp-Source: AKy350b10ENmXzYq2kcrrKLt0D2GsgHuI2eEXe4YMHESfH59XHIPAozI5tP/LSVT5OWfVbpH6iY5Kw==
X-Received: by 2002:adf:f785:0:b0:2f0:27cc:1e7 with SMTP id q5-20020adff785000000b002f027cc01e7mr6378388wrp.9.1681755525969;
        Mon, 17 Apr 2023 11:18:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id l11-20020a5d480b000000b002f2783ba25asm11042087wrq.65.2023.04.17.11.18.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 11:18:45 -0700 (PDT)
Message-ID: <e242a5f9-863f-c31b-6279-cc46dffd1032@gmail.com>
Date:   Mon, 17 Apr 2023 20:18:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 1/4] proc.5: Document exact /proc/PID/exe behavior on
 unlinked pathnames
Content-Language: en-US
To:     Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230416233552.283776-1-guillem@hadrons.org>
 <20230416233552.283776-2-guillem@hadrons.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230416233552.283776-2-guillem@hadrons.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vBHRK1aDn4Z158YHTGBKZ0KI"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------vBHRK1aDn4Z158YHTGBKZ0KI
Content-Type: multipart/mixed; boundary="------------R4SZQdybolAxnNkXVPrBAJ43";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Guillem Jover <guillem@hadrons.org>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <e242a5f9-863f-c31b-6279-cc46dffd1032@gmail.com>
Subject: Re: [PATCH 1/4] proc.5: Document exact /proc/PID/exe behavior on
 unlinked pathnames
References: <20230416233552.283776-1-guillem@hadrons.org>
 <20230416233552.283776-2-guillem@hadrons.org>
In-Reply-To: <20230416233552.283776-2-guillem@hadrons.org>

--------------R4SZQdybolAxnNkXVPrBAJ43
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Guillem,

On 4/17/23 01:35, Guillem Jover wrote:
> Add the space which gets appended before the "(deleted)" marker.
>=20
> Signed-off-by: Guillem Jover <guillem@hadrons.org>

Patch applied.

> ---
>  man5/proc.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index dc5397a22..1947957ad 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -634,7 +634,7 @@ to run another copy of the same executable that is =
being run by
>  process
>  .IR pid .
>  If the pathname has been unlinked, the symbolic link will contain the
> -string \[aq](deleted)\[aq] appended to the original pathname.
> +string \[aq] (deleted)\[aq] appended to the original pathname.

I used the unbreakable space instead: '\ '

Cheers,
Alex

>  .\" The following was still true as at kernel 2.6.13
>  In a multithreaded process, the contents of this symbolic link
>  are not available if the main thread has already terminated

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------R4SZQdybolAxnNkXVPrBAJ43--

--------------vBHRK1aDn4Z158YHTGBKZ0KI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ9jYQACgkQnowa+77/
2zIIxQ//Z4dZxnIJCV8+kM/9546GRi2Tyi32L8W/oSX+lBOJ8mRrqCqC+CRHgG34
DyCzlVAboiOH5T8k+TxaFTZY0ssd0jzr2xND5Xm6Mnh2j1C6ETzcDRyT95cnjkhq
LrKEpYWGxRYaxSMBW+eLmQ8GN/Lv88DKdEKrUMKpO/bqNgBqogq7v1kxW/12jz/i
i2cmlQPI6QZElb+zHsaf/+1yQRLSUeqZnRmG7bZ/JIimymd3ekWpKKFbEPNOPiK3
5JRMycd+3jAyvMUY4LizzaFM4IrCKjTsLah3YcFY7IdbUufJ7iq6L0q4eAx8ZZDw
z0GvZQdtvpcwjCOUtDSVuH6DQ0NAw/QrTo7yyz1mofErkYs4b4PyUSNbc/LgcfoG
4ltdSfbdxxbCJAykTNAqeqLmtMKWwcha7apGotM4AIiS4I8mTSniJzTgS06ND7VZ
L8g3AhpYsO48cRF+cqqMuwtr55gYQotsXZuEThy3MFx5vR3g//3aGdmbK8uQFY30
24zArV7uP9vNKempOl+qqSdxV48RVE96ZGL92HQ9ryeBIUtIrVlMtptTZ1C9fkaX
nkFnp4dN9PaV4ic46OKrnVkzWytu3T09qniPvXXWqeOF3kMCM4oYdFctlm6xVUEW
eRxkLsr3HQUpJUGL89zdjEKZZuUPfv7AgTPrn1mi3aDbb4/w/rg=
=cka2
-----END PGP SIGNATURE-----

--------------vBHRK1aDn4Z158YHTGBKZ0KI--
