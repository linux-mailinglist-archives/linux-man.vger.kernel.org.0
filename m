Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AB0D660ABC
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 01:26:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbjAGA0D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 19:26:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229751AbjAGA0B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 19:26:01 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B58A777F2
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 16:26:00 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id fm16-20020a05600c0c1000b003d96fb976efso4708076wmb.3
        for <linux-man@vger.kernel.org>; Fri, 06 Jan 2023 16:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ltUilnP9U0bNNXdMcQ8maZilSX60zPsqacQBf2QYZBg=;
        b=qeYNgkpZI3F40rQN1VzFO2vYzpvIR40SHhejvS+xTWPauo06lzRIehDVW5BZdwGNnq
         1TLcFNv96WHnmFBU/C43kKpPhwbHdv0Ta4qKW6//IKPdd2qHVVIZj6BsL2A55R537Y7D
         4QRD3XkN+qT342ybG28AS+nGGjBQZP9uYyVT0mW+GY+oLN3FhxRMtwbbDeI+onqVvQ+t
         KQbAICe3NOmvWTljj+4xIm8+i9hkuhfJcCrbqKtg/q++TV6kZ1BUF01WT7myX5CCXFeN
         eJ42zXekg1e8ZulXK88uN4pVwigG5Z9N6+GtPw4gxtIXnyyQhxJhYXKfI6lN44OuMtB7
         XKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ltUilnP9U0bNNXdMcQ8maZilSX60zPsqacQBf2QYZBg=;
        b=olXfQd+FuCaR1zGfQfjPctfznU+L1vJQwuMz4mZ+65C2qSucRbyZeWAde58AhzTmZa
         CG7pf67QsVo2BrznvjEQ8yznPgRBBOV3ghXFf8TGfX2IBhsa9z3CBSUOlxvQ5CLTjmw0
         p7Lr1zVSjFSWypUf7XjmE41L93AqvHzzDgrCkW+LWzvgcEF2a0hBMRj5hpQwjsy70S+L
         Hi8oPTDHqtbcczRcRhLyu4U28DQ3VXch+JMM18H/b1ojj9TJgUVsFjNVH5DWzFg2bXDj
         w0Kn8qhSk+XwpoivVYSVfRG1ROsV6yrmFhDj9Bd1oQ85AE8AETNECRpbHq8xosl5pK1f
         E4Dw==
X-Gm-Message-State: AFqh2koQbg3D/YP5URJC+uVoQKFJ8bn+gvuQ3aesSnLoKeNzA3NdeJ6I
        0oNtZ7IVjsHg9fo9jjSzReo=
X-Google-Smtp-Source: AMrXdXsjykIPDn08AeAdPfJEdXJyrE7OT8sI/JPljkQuuHpwUqmd8h3rZhI9eFnGk7Elxx54q6So8g==
X-Received: by 2002:a05:600c:1c01:b0:3d0:80e1:5995 with SMTP id j1-20020a05600c1c0100b003d080e15995mr42127519wms.24.1673051158801;
        Fri, 06 Jan 2023 16:25:58 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o9-20020a05600c510900b003c6f8d30e40sm9010356wms.31.2023.01.06.16.25.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 16:25:58 -0800 (PST)
Message-ID: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
Date:   Sat, 7 Jan 2023 01:25:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Manual page sections shouting
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8YaT2H0Lepu8m0tTsqtCmzDk"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8YaT2H0Lepu8m0tTsqtCmzDk
Content-Type: multipart/mixed; boundary="------------3PZ7dUcFSftuPaRJWjcS80Zj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Message-ID: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
Subject: Manual page sections shouting

--------------3PZ7dUcFSftuPaRJWjcS80Zj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KSSBhZ3JlZSB3aXRoIHlvdSB0aGF0IEknZCBwcmVmZXIgdGhhdCBz
ZWN0aW9uIGhlYWRpbmdzIGRpZG4ndCBzaG91dCBhdCB0aGUgDQpyZWFkZXIuICBIb3dldmVy
LCBJJ3ZlIHdhaXRlZCB0byBkbyBzdWNoIGEgY2hhbmdlLCBiZWNhdXNlIEknbSBub3Qgc3Vy
ZSBhYm91dCANCml0LiAgVGhlcmUncyBhIGdvb2QgdGhpbmcgYWJvdXQgaGF2aW5nIHRoZW0g
aW4gdXBwZXJjYXNlOiByZWZlcmVuY2VzIHRvIHRoZW0gYXJlIA0KYWxzbyBpbiB1cHBlcmNh
c2UsIGFuZCB0aGF0IG1ha2VzIGl0IGVhc3kgdG8gZ3JlcCBmb3IgdGhlbSAoSSBuZWVkIHRv
IGRvIHRoYXQgDQpmcm9tIHRpbWUgdG8gdGltZSkuDQoNCkRvIHlvdSBoYXZlIGFueSBvcGlu
aW9uIG9uIHRoYXQ/DQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------3PZ7dUcFSftuPaRJWjcS80Zj--

--------------8YaT2H0Lepu8m0tTsqtCmzDk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO4vA4ACgkQnowa+77/
2zJSxA//WvG5hQibRyFbuh3zWNma0d2fGvJC1K1WkHbVPJ2I1v2HZDKjOWxl680J
gmnuXSx6ZqgkAK5dIy0rYA6f7JazrmFHC8emgleWzYyoKVK2vduvIcFXXs+dIZne
krC4UIsT4ths48vA5xpE/Vat5oGUk7VY+2nE5M3c6MTd+6t6juePfsrASAfBDfuE
MxPUzdV3cCYgaPRrsTiZZzVh44U1mmLLIO8BnvhdagIP7c1wLRrNLCCVVA3AY937
EWXRQm3tfacdSBkVJhMK4YqLM7swnsiBH8YQS5p8w4f6x6GwT18uTX2UZYzqVlZm
tKy6o8qtKboFX+q0Hx8RWJNM8BDtzuBnS6aaA6buNt6uymFxjVf4F5RgdKbBr96B
InjxKOIAfe1TrQge9vfQQLBHNrTBWAmBQSbuE7w9v0ndCKI04QgNQ4AYxcou5nm+
Yw45FdG6G4CBpG1m2ktaouXacs731swXFLMMsMfEkAaEV/jlrwXbS/pl7JH5VKVl
1moC5WvOWxK9gs5QYcixB5BNjnhcHYhD0yx0aUKlxGemSHJDdj2FhJGx+xeIrN45
qC8x9FuGntcHupbGJrB0pbs4q5ethzKAzUfz0zMIYB0MeEMW4+PGbM7UYxpc8V1E
nI38+wVG/g7ApTz4/XFpd+D/HtNmRacT/dhKC7U8wSdfrl57Lf0=
=aPU8
-----END PGP SIGNATURE-----

--------------8YaT2H0Lepu8m0tTsqtCmzDk--
