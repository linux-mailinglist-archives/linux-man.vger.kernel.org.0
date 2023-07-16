Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60893754CF4
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 02:59:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbjGPA7U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 20:59:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjGPA7T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 20:59:19 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B281271E
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 17:59:18 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3128fcd58f3so3501441f8f.1
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 17:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689469157; x=1692061157;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wN1knKvWwM1skue9LV24Y/880mWYg2FHqXU88PCzpm4=;
        b=Ah/virRmjPQLIvaC4nbPfRzOs3raF1gVioOxW9SnDkkcpKF82hVvPiMkZBPC2nK/SQ
         I30L3ANAMSFfr6ZYnt6p0jcQNgPv73sUK1uXAt7tHXkFzOGHMQ8MleMLTYs35gUCRMTM
         KkyMIYlINX+0hNJjcnJ4J7FeFKVkwtWn5AuX1K4kXOxzCO4/bhuzx5C3J1UmjKRtgaat
         f5wlvSBqnU9zu6UxIv3pG5Ks9ZtV1ItLovJAuaLkgM8Cs6TSrIEwOIvtOEVW4k6Ojn2R
         G1eo+TWUE1dpb5+UF2qdiH0Mc8n0KJMcGWiyCBIwSJj2meSrMPZYyPapD6Uhi5XG4TuD
         D54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689469157; x=1692061157;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wN1knKvWwM1skue9LV24Y/880mWYg2FHqXU88PCzpm4=;
        b=jd/eibhG/fzB3D6ro3+GmwvdPmF0h2Zbe0O10IcT6rm9YnESp8mlgvFv7DBAOFJNPx
         OfMecNSBm4GG8oqqao1LGmX5OnercXYERhW//DfLjd2Fp6WT2gvPGkJB9RXLKvapgKX9
         lEe7dfLSE1uFCCSqXr6mLMd0w6eOXLaU1FPrPl5KsFiW7xOIqIi2KWlw3WUIc/KHUt5K
         k5ZJMyLSEYRLpBftSxW+ikLUkdAVPY72xedhreh9x03Y+FNoDNCXCpcvibqVu2WkU5Qz
         QkR8ayefmycgzKD46lpGnqvK10ugtBUiWJ89KsYHhQdWS5/sNDoZbzw0nI6iHpSb47UF
         DJhQ==
X-Gm-Message-State: ABy/qLYzviXYMxBBxa1ORAKlqlJaaRpTd97+Yy4l04kTXDFNovutFsle
        gpmc308RNroj36wrtlR8ukMN2TqeVHY=
X-Google-Smtp-Source: APBJJlGmNZSnJc4coHwyD3CBbmL4krsp0W2bEoVLnnJj7XauP6L85uXaqDmgj1tCmPl/xZkTAhsU7w==
X-Received: by 2002:a5d:6792:0:b0:316:efb9:ffd with SMTP id v18-20020a5d6792000000b00316efb90ffdmr4867109wru.1.1689469156777;
        Sat, 15 Jul 2023 17:59:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.40.43])
        by smtp.gmail.com with ESMTPSA id n8-20020a5d6b88000000b003141e9e2f81sm15166222wrx.4.2023.07.15.17.59.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Jul 2023 17:59:16 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx.manpages@gmail.com>
Message-ID: <6d635c03-3e05-a8d6-4578-5704867c6d86@gmail.com>
Date:   Sun, 16 Jul 2023 02:59:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Reply-To: alx@kernel.org
Subject: Re: [PATCH] crypt.3: The library is "libcrypt", not "libcrypto"
Content-Language: en-US
To:     Xi Ruoyao <xry111@xry111.site>
Cc:     linux-man@vger.kernel.org
References: <20230715184118.1580451-1-xry111@xry111.site>
In-Reply-To: <20230715184118.1580451-1-xry111@xry111.site>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------faDQ00bc8qIO4gxAJmE7F6fh"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------faDQ00bc8qIO4gxAJmE7F6fh
Content-Type: multipart/mixed; boundary="------------GD0Iu0wLObep4IPK6QcKGoJQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
Reply-To: alx@kernel.org
To: Xi Ruoyao <xry111@xry111.site>
Cc: linux-man@vger.kernel.org
Message-ID: <6d635c03-3e05-a8d6-4578-5704867c6d86@gmail.com>
Subject: Re: [PATCH] crypt.3: The library is "libcrypt", not "libcrypto"
References: <20230715184118.1580451-1-xry111@xry111.site>
In-Reply-To: <20230715184118.1580451-1-xry111@xry111.site>

--------------GD0Iu0wLObep4IPK6QcKGoJQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Xi!

On 2023-07-15 20:41, Xi Ruoyao wrote:
> libcrypt is the password hashing library, and libcrypto is a completely=

> different library (OpenSSL cryptography library).

Thanks!  My mistake.

>=20
> Signed-off-by: Xi Ruoyao <xry111@xry111.site>
> ---
>  man3/crypt.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/crypt.3 b/man3/crypt.3
> index 1f3e4792e..ad14cb4f7 100644
> --- a/man3/crypt.3
> +++ b/man3/crypt.3
> @@ -20,7 +20,7 @@
>  crypt, crypt_r \- password and data encryption
>  .SH LIBRARY
>  Encryption and decryption library

Is the above line accurate, or should we improve it?

> -.RI ( libcrypto ", " \-lcrypto )
> +.RI ( libcrypt ", " \-lcrypt )

I see that another page probably also needs to be fixed.
Would you mind fixing it too,if appropriate, in this patch?

$ grep -rn libcrypt
man3/encrypt.3:17:.RI ( libcrypto ", " \-lcrypto )
man3/crypt.3:23:.RI ( libcrypto ", " \-lcrypto )

Cheers,
Alex


>  .SH SYNOPSIS
>  .nf
>  .B #include <unistd.h>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------GD0Iu0wLObep4IPK6QcKGoJQ--

--------------faDQ00bc8qIO4gxAJmE7F6fh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzQOIACgkQnowa+77/
2zJnNw//cBEZ7cDOFab5tKU4y8/uSDKwrThFjENWXRpasqCXYHFiJ8Ics8Y/URvE
ofZWAJ+rURdHF6cArP7gL3GzDAaBzCkUVIGRU2lbDxCyw/br00dxJQSlehHUXnjd
zhkKjO7a7tD+bU+BoHjLSg+tYKdxq6KAa/eI1wptHp6HkD+yGK1y0nxe1b6tb723
5ZRXkNBUu6GIegFC5eXqjeLG5eOQ5o3kjVW5JOVDcKUnSKxsEL6QqnVXoZr2a/EE
MdHBEA4nYe7qclpEZvh6KMs8bGvteLOP27nh8IxXXYUcNO6oPEH67V44Y73CLieh
mlS0H4oEDFPOTloSu5/sbnffNeU7z+2on9DuYrH/MXJuILTIlC4vGFEtBZfJo5pL
o1yN7Uvo0feuFsRR+Bd7pTSK3SEKxKOzLmbhk+iyAKq4ktPFlSZSxk2LiIAhaHYa
T1EVHTB5vyBeyMpjxXwX/rTd176KYsWgt7edlFoZELh8WTMcxhADnTpk0LUpTDb1
UXjk7G/T9FGl2F7Dw8DFXUCGXBVfXanMxTYghJHkz4FC3Mh2DSq0jOK8o0w6ddiR
CeBtsFefEDmDIYPY1WMzDhxqfMuFYGwLL7B+zDz3yni3myIuo9RlYSI0w8ZFRsnE
bddeHL1Mo/bYGvwHfI2ZKlR0pcTbv2VzK5By+UNAuxja7R5VKOk=
=1nVp
-----END PGP SIGNATURE-----

--------------faDQ00bc8qIO4gxAJmE7F6fh--
