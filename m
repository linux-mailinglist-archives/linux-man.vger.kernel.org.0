Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E990F641CA9
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 12:36:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230015AbiLDLgv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 06:36:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230062AbiLDLgs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 06:36:48 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CCD7167C2
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 03:36:46 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id m14so14647975wrh.7
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 03:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aW59UYfewBwTCHn1vKnQ6QQ/n5rLP/RpcQWZO7v7No4=;
        b=jeuhdIXNxrKHarhirUMFLsjOTkHmvsmjB5SP9C45qm02qxAFs6E8J0pFR+gex4kK0G
         mqDlWX+huAiEYyj7xHMnlAOvdeGbDu6oUMB2ZnWQAYp/jahIcVcyBjvLHgUwhMzCUGCD
         5FSgpNXAViSSY761xNxRiFWm1I2cbx9UsN2TfHrwRFab1wY+3yILkJnRLfqW7YY4SsfH
         HXrven0dOy4ppEwwGBN0XEnZveKfX6ioZoG36yd05tCKlpW1zlJOhDNSxftD+7d0I7/z
         NtfHmAWaZgdWLEzhAnfdsBB9gP0CWrBavJ8UlkXhrBAuoMyBV9Pzyu+yNhsPoxeAQdX+
         +0wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aW59UYfewBwTCHn1vKnQ6QQ/n5rLP/RpcQWZO7v7No4=;
        b=s9K4jJOAap0ENnNHr+8FnqjoyrxGNnRYdN+2Mh6yvQOaUe5pqT0FpDYuwwFr12OEoR
         UGWbnLz5t+9iln1gdpwbjCzNqW3MZIGT/GiFGV5bWVhJ5gpPTWM/gSP6FlYu5zHv9d9S
         9EYqODIjqNZsYQjlFVaA2KGmyvF/qIlZVj6HYKmCjwJ/Ng8caDXS/2rrnLCLSjJicqdD
         WiLbWVTOkN/LKN2rcMzxtRCCEQ6V60VXJFzfj1/BJ8maipaSRzKSSYwxXmkTg+u260DQ
         o2Kh3SfKJ+ImpCTfyh07GYHcgyyYlOqCoTvqN6NLhWcw3e+BjLPcOGhYMUVwIxNJlcgl
         7dMQ==
X-Gm-Message-State: ANoB5pnIe53vb9Ifrp8pnWZ+wpiDKsAynmi3qnFfXwZkFCzenuYocD05
        q1NP3QURPuSS4c+uOUWDl10=
X-Google-Smtp-Source: AA0mqf7AhUzafOZ22DBB20xKI5TGl3lqdiN7wKwlXwW87HNU4m0kKp3i7JZre3H4JZbAzH2guhwPxw==
X-Received: by 2002:adf:f504:0:b0:241:fcf8:be17 with SMTP id q4-20020adff504000000b00241fcf8be17mr29557726wro.629.1670153804994;
        Sun, 04 Dec 2022 03:36:44 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id fn7-20020a05600c688700b003c6b70a4d69sm14028677wmb.42.2022.12.04.03.36.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 03:36:44 -0800 (PST)
Message-ID: <8078a573-3b7e-293c-0cf7-f05e68e91a88@gmail.com>
Date:   Sun, 4 Dec 2022 12:36:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page filesystems.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090708.GA32635@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090708.GA32635@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------h95z08BraknKNIJHLeuS4SB2"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------h95z08BraknKNIJHLeuS4SB2
Content-Type: multipart/mixed; boundary="------------OuyMn8bUvOpQHA6xsjScXFaS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <8078a573-3b7e-293c-0cf7-f05e68e91a88@gmail.com>
Subject: Re: Issue in man page filesystems.5
References: <20221204090708.GA32635@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090708.GA32635@Debian-50-lenny-64-minimal>

--------------OuyMn8bUvOpQHA6xsjScXFaS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIFJldmlld2VyIHNheXMgdGhhdCBSZWlzZXJGUywgWEZTLCBleHQ0IGFuZCBCdHJmcyBh
cmUgZmFzdGVyDQo+IA0KPiAiaXMgdGhlIGhpZ2ggcGVyZm9ybWFuY2UgZGlzayBmaWxlc3lz
dGVtIHVzZWQgYnkgTGludXggZm9yIGZpeGVkIGRpc2tzIGFzIg0KPiAid2VsbCBhcyByZW1v
dmFibGUgbWVkaWEuICBUaGUgc2Vjb25kIGV4dGVuZGVkIGZpbGVzeXN0ZW0gd2FzIGRlc2ln
bmVkIGFzIGFuIg0KPiAiZXh0ZW5zaW9uIG9mIHRoZSBleHRlbmRlZCBmaWxlc3lzdGVtIChC
PGV4dD4pLiAgU2VlIEI8ZXh0Mj4oNSkuIg0KDQpGaXhlZC4gIFRoYW5rcy4NCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------OuyMn8bUvOpQHA6xsjScXFaS--

--------------h95z08BraknKNIJHLeuS4SB2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMhksACgkQnowa+77/
2zLQPA/+NnTc2rKpYwL/ljANzYksLmXoLgDvGBZ/FiJfrCWNt1piU9QrOyIdtaKr
2+/Y2aInqs17kUZ/7j/99bk2Kq7drdc8APgdoUOvBqb7Fm/4nFGyRwxuyNhAFpgj
sg52Bqro19y9P9UfYxteSnCXWbFDBBhgNOXYeXJlz9FnFvrLa4sENnibACLpEyW/
Lwu3+yEVwTyZyvqk3TcXGkIsWSV5zNH0q9LMMJP8Ci9KX4H2Ilp/FraBg6VnP7V7
hDOEMWQdKSo8LbxG4RzhWYs2v+2fSRt+1ihuiqxSc04U/4DclNJFaUVtIwJB4Jz7
jvY5mlBY/eEz6NoFyh+CbWxoq5I+eF0MxvkfG+HNZfcZ6/+dp+EE39Ja7M2AXAQE
gptnrTQn9r8QDIWSvmeogUR20PIkqWmuVZ0ewJv9ucZtbBl9skk4bkqepkDr6B6l
8CZB0fOrEwZWiQwH0e8Q9qLLHBq5mOaDA10WryP994Ygh4YU0lbdbiN6e0TZPVG+
wKwZJQMhsbuo0Dqh3137B/L8YWtLZqTtaQFPXxI0CHe4UwNZw4yb+G78XhfmU6iE
5eWmynYsuOhIrHBmM58JeFwjtezF4Olb1Bdbm1BJnTQwChjNXPRMEoNDbJv+6y73
MjOrk6Tpyw2x7Ylph1CqQJE4VcwzTVtgfATTBv2ptbX30lNNiNI=
=XJtL
-----END PGP SIGNATURE-----

--------------h95z08BraknKNIJHLeuS4SB2--
