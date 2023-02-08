Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BA1268F93F
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:58:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232383AbjBHU6L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:58:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232357AbjBHU5f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:57:35 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87E5148A02
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:57:30 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id j25so14610723wrc.4
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 12:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y48njpU7/RqbfNkuHn6pbO7Tl6nKLNjdLAsWy6Bn3es=;
        b=M6PNPLqE4ETq47CbrZat5J+ByPDZGs69Gm/xb46kG5fXXzSfHWS4iVypxpeiaJxQRG
         KwSmOkqtg5boIIHYeElIU5cv1xS6pJlVQaxAhoZCdkZmqd21SwX9zFqvM9TVT9D1PHGc
         dXvtDuRpBkrsg9DYN3d4Now4omMNYVge2MvPdNUSzpzjOW+W5FjdTomd5A3qMfH/7CoP
         SveWG/H9gdPIN/RpFgEFNhcuMAf+g4R8mZKBdspLuC9niCumMgdiKYleoryVT1r8eTWn
         yTnrtMvI7v67c78LNqTVhNLZnm0pyy+jVsZoUIwOxQmLDPQcw5Gubao3wlqZJc8a12jC
         W15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y48njpU7/RqbfNkuHn6pbO7Tl6nKLNjdLAsWy6Bn3es=;
        b=teCzYCwOlGiUiMxBFBIs8jqVsLbRPwoCo+yCv6rTRfeEVb+YNQCkiwre8Yrj9CrK6i
         3bxn7/IzjnfxCvBlk8IN5o9CfW9TiimcL4vPueMj+XMNu462xe+00r8EVLhMUg0NPl4c
         FkKYaQiHhfBlM0MiJG4Zd4FrtFIRZJSWTqmQYZRjgGuSwGaAdMn0fZwHjtbjLV/rXlij
         ZkRKX+vmTqENNjNtqo6khcSz234X8v7ApKPe2syWPglKhLSEmjEKgqN1SzjBiBn9UXug
         w0Cx2xNLNgepH5s371gdNXiyL0x8hUWEaJ7tt+n29GxiNoofkn62ZPsSaOP0VjUbMieK
         fIbA==
X-Gm-Message-State: AO0yUKV9wKZzhFhz+swipgWawmy3GoDIy0XWq0L4aMU7Kvv/u0qEwtAs
        UyPrn7b5ThJstX4mBseV7eD5Y68S/34=
X-Google-Smtp-Source: AK7set+thtxN8ihNG+fQwyAIr9FgqLLLkfjeUZIH/nN1ggx72eSyXKbJLMAK0ntpNBsJc0Ufcd/yEA==
X-Received: by 2002:adf:f9cc:0:b0:2c3:f6ff:292c with SMTP id w12-20020adff9cc000000b002c3f6ff292cmr6098491wrr.55.1675889848796;
        Wed, 08 Feb 2023 12:57:28 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r15-20020a5d694f000000b002c3e1e6eda0sm10977338wrw.99.2023.02.08.12.57.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 12:57:28 -0800 (PST)
Message-ID: <67269ce4-ef61-d927-1659-0b310b8e5fb4@gmail.com>
Date:   Wed, 8 Feb 2023 21:57:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 01/11] man2/shmget.2: fix limit units prefix symbol
 from SI to IEC
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675830945.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675830945.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kZGfd0DCuRiD1EGrcDEe5DUz"
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
--------------kZGfd0DCuRiD1EGrcDEe5DUz
Content-Type: multipart/mixed; boundary="------------DtiJpZ0mGGqNLVgBLfAc8nzC";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <67269ce4-ef61-d927-1659-0b310b8e5fb4@gmail.com>
Subject: Re: [PATCH v2 01/11] man2/shmget.2: fix limit units prefix symbol
 from SI to IEC
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675830945.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675830945.git.Brian.Inglis@Shaw.ca>

--------------DtiJpZ0mGGqNLVgBLfAc8nzC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 2/8/23 21:27, Brian Inglis wrote:

Patch applied.

Thanks,

Alex

> ---
>  man2/shmget.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------DtiJpZ0mGGqNLVgBLfAc8nzC--

--------------kZGfd0DCuRiD1EGrcDEe5DUz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPkDLcACgkQnowa+77/
2zJQGQ/9GzrEF9YHRBQFFcugu68ZqOBdIzRnF0q8fkl1pU9idM3LIGJUt35LhJUu
mQLSKPCBu+R0X/F4LAcMvk8DOBXOACLyAqTW1S704GhFOIt8MWQtfebgZRn7fsn7
2BaMDtKV+7yqQUEevMd5WdbUikLnFMIpapPQVS/xHzAkhdmfDodIaJm7kTdeVt8c
i2Atk6e5FE1spC96iRs2mLGdNApdYvJ/ZsIzpcmdV1JdciAfCdDDUIW3HQvmk4Xc
nTFdsWttL+G2drL+7Aw0wSOoR55qz/CAZ8Y9CWS0a9IW3pqrk1tZPiPBKfG8+bDH
OTPXkK7mO3BbSU6WD43zq+d+Dj4an5UAe9Vpxwbv2cwJSH8p/b/iWH16N7H0/cwW
dMWE8AtpQse+VjSH4B3XGQoRkQtBhCzjyDiSA2SSlyMfg7RRfw+HV/5Ran2Edt03
Mog4nNWQ8eGLAjk5DaI1AFTP0re7a5+CDwYZv+fuoTxrpBkh7l3RDHBqQk9DSdzJ
lPq0dilX+EMY/4ScjFaMPX490NTD6mWIkXohMuCFubSKNDbUyUA5fXoVpON5Mb3j
VSku+O7utQJeVlhZYxwXy73wd6DhQBVaNundL/AV80SsmY1kMGcXtCjwNvV9I+Bm
JWB/e/sGs+ztbdxghX65deDDGSiKbTlBR2ziRklVDDY/Q5Pkthw=
=HCH5
-----END PGP SIGNATURE-----

--------------kZGfd0DCuRiD1EGrcDEe5DUz--
