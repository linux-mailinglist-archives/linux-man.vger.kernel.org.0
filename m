Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43C5E68F97A
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 22:09:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbjBHVJY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 16:09:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbjBHVJX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 16:09:23 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8239114204
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 13:09:21 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id bu23so2329834wrb.8
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 13:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x4GHJwe0u1WEWurvDh1XUidcOAkQhNRWfdwg3fngHmE=;
        b=k0mgBBqm0Spn9bRFzDsVl0MamsP3CwXbtWvkGoEE80NBxtCP9ozqOQVc/y9wQt5i5v
         9p1QT+QCSoWcWwVLrS+wDHJz4Yv6RQBy5Tfb6jxVOkCLYVCWUMyGcldY0bB6K/M/VFcA
         cfv4VbBe4nHNglF5Q3IsLOxPIWWOfQQn1GgUR/iit7oMWP/wOZp13slsva/DQ4in/51h
         Tv2g9rGCzOPCuCFDdM7bs4NfkEUMu28TPGV7uVpfgEgJ6hns5xvQ+Y2+cMdoy3hx8z3y
         MVSwqMf4CjWgYGFHDzv9r0CBjm1NC46cT9O8FBwzI1roPgDw6JSftQIWa8iaIheZRjbe
         0JVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=x4GHJwe0u1WEWurvDh1XUidcOAkQhNRWfdwg3fngHmE=;
        b=SjOx0NnBkJ9lS6LLQcMg0+AKG20FHemap3Ipz4BLZgTW03yfpO6niOx/fYEVcdlokU
         6Ka2Qenz2CNMwxPMygSoABe4QUUx0QnxsrOqnTCzxkn63v+FpKdaTApE739xzyorC8G6
         b6wfSWFMA9B0Db5KNXEWzEuC2AbNxhv0dTodYWczFyrsNZalOHA8vfVTL7pc850QsFVz
         xvsazMDAU0SunVdWFBpRYCnhQrRkHY7rA6RQzVCy9vFm3fDTi+ngajcaAAr4dm72n5L1
         HUDSLTpxinvFQ69OkxEtaz7lh17qzhbYtwrH4s2l8UNnLZKG9di+pxA7TKeeO/74DsAk
         pxGQ==
X-Gm-Message-State: AO0yUKWvNNKkN7sKv/8WZgVaabQQMgfg8TdneMczN1Kg+SNUEnhl1uvk
        s93y/ypPhXHaYvII1Q+5LMfbC9EzJEM=
X-Google-Smtp-Source: AK7set/SPl6O+TAECVKEgPjHUuvnjcEveapOz1jqO3rsFpb9myiH1XagyzW4SjUAiGiUZ2Bzv6onUA==
X-Received: by 2002:a5d:6209:0:b0:2c3:ed14:8323 with SMTP id y9-20020a5d6209000000b002c3ed148323mr8523220wru.38.1675890560056;
        Wed, 08 Feb 2023 13:09:20 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i6-20020adffc06000000b002c3e28d0343sm10465847wrr.85.2023.02.08.13.09.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 13:09:19 -0800 (PST)
Message-ID: <1192e6f0-83a6-b221-dc14-71ec73ad72cc@gmail.com>
Date:   Wed, 8 Feb 2023 22:09:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 09/11] man2/getrandom.2: change limit to use IEC
 multiple symbol
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <a3ffc66fdeafd35f95330307db043dcb4873c067.1675830945.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <a3ffc66fdeafd35f95330307db043dcb4873c067.1675830945.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------K2z3YTfKRpao8u2DtwdJC9Kq"
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
--------------K2z3YTfKRpao8u2DtwdJC9Kq
Content-Type: multipart/mixed; boundary="------------bxhC052WxIYqGzdmbFCgbiDO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <1192e6f0-83a6-b221-dc14-71ec73ad72cc@gmail.com>
Subject: Re: [PATCH v2 09/11] man2/getrandom.2: change limit to use IEC
 multiple symbol
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <a3ffc66fdeafd35f95330307db043dcb4873c067.1675830945.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <a3ffc66fdeafd35f95330307db043dcb4873c067.1675830945.git.Brian.Inglis@Shaw.ca>

--------------bxhC052WxIYqGzdmbFCgbiDO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/8/23 21:27, Brian Inglis wrote:

Patch applied.

Thanks,

Alex

> ---
>  man2/getrandom.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------bxhC052WxIYqGzdmbFCgbiDO--

--------------K2z3YTfKRpao8u2DtwdJC9Kq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPkD34ACgkQnowa+77/
2zKwbg//cda0Py30Ge31oKMidzZ5zkUzg0BAHxT0nvOoPzCvR1kUYq575uP70v/a
ti9r/Fxb84Ru9AKItFDcx5LSasL7eH0zA98lRHbu7QPaKUdTlPAy/HXDNR6kfgcY
SU9MRWIODFttu88DxtaNNW8AG98LDS0RHdUecTITUD4TQNbS/Hvta8y2Kj72fC0G
KgqbiwDBORHQs78wohGY9eXb1Yv/WKcb7eLeIUM0fZ5e2BQQpooaUJ75oNc561J1
rQWCd4PLxQpxNYPdrAahfH3dWt8So0RsSax0RCsmWEfIlTLsvF4m1Cc0qTRG4bXF
E4DTmu2lVKHlMCbXGBP9Qq5l/ezkJoQxOPp1r/XbFFX7zczVh/eElrcmWt/owBrL
FvQgUdTtkSk4sL66yglk4J3zIUZMhceXTCbo6mzCbDyfHZwT273FjmFf0crbRhht
8xIV6rxdykQiIyZFpNpTp7fYpFRccy5hzuQSj2aDsYWlispC5E+yuetSUQuFeA4q
xxtG9NhAVk3MyAlVrYfgszBVKuAwL1/3/c4QoQ4VCLBZiFJmQJTi+OPpEVj8cCni
6qca/dcZTgayDBrlx++2T+KuOsr7Z2K7XTM4Q12duYW/8D4d//MFvtlNCKo5YAgo
QAq/RNL2X5GoiwjpjY1Un9+935Mz06TjGizRXiEzLPBdOkWzRhU=
=Zmot
-----END PGP SIGNATURE-----

--------------K2z3YTfKRpao8u2DtwdJC9Kq--
