Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CA6367728C
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:07:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229795AbjAVVHL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:07:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229880AbjAVVHK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:07:10 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39F8D1F930
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:07:09 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id d4-20020a05600c3ac400b003db1de2aef0so7233608wms.2
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SFKCpS7pimdRkJA1Ezt4AIvnMZprckfT+diB02kid3k=;
        b=M3/YbhK2vlXuO+gvIUhMHlUG/R9l4AEFtV8EIUBkPlQrHwsy6pnjfdAfoBnTa5iy7v
         O7aoymSxRRUVhbFFSaPFCxnm2oIy1wSoTIK1h7N0ri4vbzHT05xUMJQk+4JXoCdCykuh
         dUwIuK9iObyRcXBHRRhtgp/zvIoKtWi5n/V5yXaiqw/sVQOEAt6lZ+6hROr3QLNXLwWd
         clN5J/MW5YCHcmRwcBKoaw/M68lMhBR1JtXipxKtjRnXFcx51qMDhJy9SqNchuTmqAiP
         JSBHbXrNB8u2QdBAFD0F1QD4oZWF43baeJwcFuWIEOI0lJUtfzyxS3iBzt9+XfwvpuaZ
         ABAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SFKCpS7pimdRkJA1Ezt4AIvnMZprckfT+diB02kid3k=;
        b=qKOjOBkBP8sKiCakUJ47wBSoKAIj/d9WhrNCapcPwWSkx8vz0kAVvoDhEpIeZbulwv
         NR2/YLLE2wrJ+iSAPtz7EzyTJRqYvAzMeS4GpMWjpQbIEksxjAc+yFralKmoHKOevQWi
         YOnzzR7L76stucxVAjP7fh9Zh2IkL6DyTJVupCbAX9+9ndyz32bZgV/hdOcX/FIj07G8
         hkwYedLcYa3vVXzrLcfN4N3q+eGK9eW9eAMck/qGF5n+bUtmBWT7SladiVC7avzVJZne
         LvW8b3JujGcFPBelG3vvQUV1k5OfvGfTwTE9RqOYE4KivN6TM1kjQ69P9aHBG2IqsOfK
         askQ==
X-Gm-Message-State: AFqh2kqSZSp6AWyYhFC+pIsayuq/7CaXe3SoXlm3iO3UCr3f/G6IOne2
        6JH39E9NwyhVu4aPhFsViCXptTZaRS8=
X-Google-Smtp-Source: AMrXdXvpjW6hCMPIiDUAXz3hxqnMP3Okzu4EsJYKXMtks5B5p1ZyHSAZ9y5lTgCIObuSDkwF01f0bg==
X-Received: by 2002:a05:600c:539a:b0:3db:419:8d3b with SMTP id hg26-20020a05600c539a00b003db04198d3bmr21637209wmb.39.1674421627824;
        Sun, 22 Jan 2023 13:07:07 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id he11-20020a05600c540b00b003d9b89a39b2sm8737054wmb.10.2023.01.22.13.07.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 13:07:07 -0800 (PST)
Message-ID: <738d3e81-48f5-4d52-4d73-fcb74833b526@gmail.com>
Date:   Sun, 22 Jan 2023 22:07:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page string.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193130.GA29111@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193130.GA29111@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ed4SAqip6w184LhrDU09OH10"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Ed4SAqip6w184LhrDU09OH10
Content-Type: multipart/mixed; boundary="------------s3K0fUbm8Nm5N3Ne4UMTcGhd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <738d3e81-48f5-4d52-4d73-fcb74833b526@gmail.com>
Subject: Re: Issue in man page string.3
References: <20230122193130.GA29111@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193130.GA29111@Debian-50-lenny-64-minimal>

--------------s3K0fUbm8Nm5N3Ne4UMTcGhd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIEk8ZHN0PiDihpIgSTxkZXN0Pg0KDQpGaXhlZC4NCg0KVGhhbmtzLA0K
DQpBbGV4DQo+IA0KPiAiQjxzaXplX3Qgc3RyeGZybShjaGFyID5JPGRzdD5CPFtyZXN0cmlj
dCAuPkk8bj5CPF0sIGNvbnN0IGNoYXIgPkk8c3JjPkI8W3Jlc3RyaWN0IC4+STxuPkI8XSw+
XG4iDQo+ICJCPCAgICAgICAgc2l6ZV90ID5JPG4+QjwpOz5cbiINCg0KLS0gDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------s3K0fUbm8Nm5N3Ne4UMTcGhd--

--------------Ed4SAqip6w184LhrDU09OH10
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNpXoACgkQnowa+77/
2zI4pA//V/dv0X6qwX5TlHTv0LjbLZwYDsgc2ivb/4tBmI6f0zSEwaPMp2MW0alq
8TUfvq06R2rqyTE8KY91AGmGM18cYQxR/BcroRbjG5diZNpJdjSTBKoudcGvQhfe
u8vrfFyvRJaPZGDbhamEMirmzczgiY9ceq7u0TWvkpZlz8PR244iiGcCINl+SgUO
322xQa36nPstyC91CTqn3OHcoGooweW3C2LGOp2nvRg8oN5Z8ney7V/PeOUrqGg/
8zBsN1vPU9PeObnwhsOcK6jZw9gqyFuShFATYb1FxBcirGSrfaF1m9e7DFEi/Q6L
p/VMlDB2aL9wf3yfkaokUw8ieJF2FNQYDBN02295/3Qwy0jVTTvRhJIcNx2N1n9P
8kTULCY3LpP+CZLs5dVeq5IQxjML7zDbwx4h8X6wCVD/wzBHidpRMBWOVs/kmPae
WoWzDC3Bs7VH88f13QT1VB/K3ucoMYKsNGsRJn5HWRpiOTNRjMqe/lFEYONH1nv9
Pf3jQMBtHu9SJb7ERIRihRUpm2J0VyAb8EI2pJnOGa1Lge9ad3QSmWxqc6cwkxQ5
XxaNXrZMEeNoS+HbtKziVaCLcs1D8O/UPDfldWnWAjdj2eUtN6QZrrP5tcK/4QQs
QxYse7hDYSLYurYUgo+IcPb/3u1rwRkhLsofOfSuQY/ivVJ2C1o=
=wCCS
-----END PGP SIGNATURE-----

--------------Ed4SAqip6w184LhrDU09OH10--
