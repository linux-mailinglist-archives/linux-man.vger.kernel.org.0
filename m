Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01DAA550D86
	for <lists+linux-man@lfdr.de>; Mon, 20 Jun 2022 01:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234362AbiFSXGT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Jun 2022 19:06:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233641AbiFSXGS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Jun 2022 19:06:18 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD2EB55BD
        for <linux-man@vger.kernel.org>; Sun, 19 Jun 2022 16:06:17 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id i81-20020a1c3b54000000b0039c76434147so6946387wma.1
        for <linux-man@vger.kernel.org>; Sun, 19 Jun 2022 16:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=92KgKole1tJ3NxgT2NfxiYe8kg+UieEI89tiQa647lY=;
        b=ZCJDu2NBDB5fPFLzgJ3wndP1AN1LSrnvr/6iVYqYJrHz1jCXtDYRPo7T+PLEath+ls
         xZbsOcyzC8krnNk3sKMLvJ01DAcTBLcSCzqzZ+MMyy/5zSJwnWvyBRKDIQ6hu/kE8nva
         57gPixkPK3u4rbTOJtyt2Z9FYlFst5ajhTgHElCiNmZYYD3yCKouZ+4CFIArM0yVVMia
         wIN36mO92E+DJT+pI1GZd/MPArlVRy4tVFButnQ9iEyyfPYLd7F9Pewr3eU9rZ6zuJ2N
         RxyZ+k6VN2vh4sTQd+V8WLekkt/rKLMhluAQB03paSeX6sbspflkjOukTufwEMh9rnMl
         lwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=92KgKole1tJ3NxgT2NfxiYe8kg+UieEI89tiQa647lY=;
        b=Pd0Uelnoc3KX2n7pC2sWGoDkXjUumNyzTAj33x6hzpOol5lL3lTFDzmgqEE6xIhtQg
         s7spkW3ETgceiIL04b56DgralrN1SpA9lXpl4x0p9Bt0lYwNaaq0oqBxfHctMeLIthQX
         Qcd7c1u7gsujpk+uGzEh6B0OQx8BBmqGEosEZlkWAdcLZ2Yd/C93uTD/UYRzFkg9Rho+
         wPyRKAWR/e7tayWJn7euqVMWxFnlKbk/xQGKGYfOB4Bs6X+/JJlpvgmKMFMJEmlKqDCy
         ODZcGae1sEb9kpPErgr+VFRpu7qq47ULYs/i8EaBZW8ilOuiRN5zXjP91/nmW0jUqgMK
         IYJg==
X-Gm-Message-State: AOAM530fkYVLTUo4JJ/d3+e/Ww5yyb+Cd4lxLNvxH8nwuURdg/Gm/1ci
        0DKm9qlA0OXNa//PJEAMVqjNlODQvAM=
X-Google-Smtp-Source: ABdhPJz6vabHPRNquFfE+MxJIM6lJapismaa8RfChH3RsJ0QjcsYxsthcUFw6dYSLi4zwmFK6rlNwQ==
X-Received: by 2002:a05:600c:1c17:b0:39c:54c0:82ad with SMTP id j23-20020a05600c1c1700b0039c54c082admr32074935wms.198.1655679976289;
        Sun, 19 Jun 2022 16:06:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p33-20020a05600c1da100b0039ef836d841sm6254172wms.42.2022.06.19.16.06.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jun 2022 16:06:15 -0700 (PDT)
Message-ID: <f4b9cfdd-7b5b-2b31-2c84-064fc2c3206b@gmail.com>
Date:   Mon, 20 Jun 2022 01:06:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] environ.7: align PWD with the standard
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220619195720.uxmfo5c4uvfohhij@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220619195720.uxmfo5c4uvfohhij@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qgKgSZ9zHwQ1kHHbufnnoXpy"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------qgKgSZ9zHwQ1kHHbufnnoXpy
Content-Type: multipart/mixed; boundary="------------zbtJgWs2tWCqAls0J2oF8BJo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <f4b9cfdd-7b5b-2b31-2c84-064fc2c3206b@gmail.com>
Subject: Re: [PATCH] environ.7: align PWD with the standard
References: <20220619195720.uxmfo5c4uvfohhij@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220619195720.uxmfo5c4uvfohhij@tarta.nabijaczleweli.xyz>

--------------zbtJgWs2tWCqAls0J2oF8BJo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxIQ0KDQpPbiA2LzE5LzIyIDIxOjU3LCDQvdCw0LEgd3JvdGU6DQo+IEBAIC0x
NTgsOCArMTU4LDEyIEBAIHVzZWQgYnkNCj4gICB0byBmaW5kIG1hbnVhbCBwYWdlcywgYW5k
IHNvIG9uLg0KPiAgIC5UUA0KPiAgIC5CIFBXRA0KPiAtVGhlIGN1cnJlbnQgd29ya2luZyBk
aXJlY3RvcnkuDQo+IC1TZXQgYnkgc29tZSBzaGVsbHMuDQo+ICtBYnNvbHV0ZSBwYXRoIHRv
IHRoZSBjdXJyZW50IHdvcmtpbmcgZGlyZWN0b3J5Lg0KPiArUGFydGlhbGx5IGNhbm9uaWNh
bCAobm8NCg0KQ291bGQgeW91IHBsZWFzZSByZXdvcmsgdGhlIHBocmFzZSB0byBoYXZlIGEg
dmVyYiwgb3IgbWF5YmUgYmUgYSANCmNvbnRpbnVhdGlvbiBvZiB0aGUgcHJldmlvdXMgb25l
IHdpdGggYSAnOycgYW5kIGxvd2VyY2FzZSBzdGFydD8NCg0KVGhhbmtzLA0KDQpBbGV4DQoN
Cj4gKy5JIC4NCj4gK29yDQo+ICsuSSAuLg0KPiArY29tcG9uZW50cykuDQo+ICAgLlRQDQo+
ICAgLkIgU0hFTEwNCj4gICBUaGUgYWJzb2x1dGUgcGF0aG5hbWUgb2YgdGhlIHVzZXIncyBs
b2dpbiBzaGVsbC4NCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------zbtJgWs2tWCqAls0J2oF8BJo--

--------------qgKgSZ9zHwQ1kHHbufnnoXpy
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKvq94ACgkQnowa+77/
2zKrlw//SkYjGo6e6iiSfmO73ZGXtf1gJRbqWbS+bX2L9k3aa5gByaoubbD0uVyD
8O+ZMMqON6te1bjRhlpwud/y122PnerE4ChVzkBerAcZPn3L7eUf3tTskTGSwiV3
WqWTt3hBMof+QKkjixAmNwL6W7QhEJaiBxIJw2QjgeVyCjEebP+dUYnw2FYmMkOd
hcu1FoUw6rqAuW7e1P649lHDWS1wQfeWRU7nqVx0r4pAWtwVVvqRDAAyIu4gg+F1
0/1HDTPz+JiFVRRyh1+eV8qpohdYjmlm8rjobMvo/5U+MUhJvqzm1gpI4nTZGI3g
QKm0rymm/T9r0D4nL/bKSoOJUbEjPnDcS7RnkX4tD3+GAMtz5UCNFyw+1xuHEYMU
T4uQbaUHFzFt5X2WOEehVD9bgoCb5oXzHXKvWWQuJ1WwzFQP3BwWC2S47V2fAwJT
GPpxhuk4tLs8x8nBd1xei/H/HrC4GAz5RRpcsKV2tcg7jdPGRMXjmJmvrpKAn7od
/R642CUPvv7TAnBorc29N0FUW23gGhCtFSK+jSw0KhajVnO3xVy1obJ4LoGpg6Rr
px30mE1hlLWViKnMNyghk3YDtEf/8Wsgk3XoYGMJizd2YR0ALTnR6a/jaRelfAD5
yD8Rr07WPRC8I3X3QMm6mtJPHPi1y54MnF8Hkx6KDT6RIcTtq0c=
=EMUg
-----END PGP SIGNATURE-----

--------------qgKgSZ9zHwQ1kHHbufnnoXpy--
