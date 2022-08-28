Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85E7D5A3D54
	for <lists+linux-man@lfdr.de>; Sun, 28 Aug 2022 13:25:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbiH1LY4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Aug 2022 07:24:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229721AbiH1LYy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Aug 2022 07:24:54 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E4FF31DDC
        for <linux-man@vger.kernel.org>; Sun, 28 Aug 2022 04:24:43 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id m3-20020a05600c3b0300b003a5e0557150so5141995wms.0
        for <linux-man@vger.kernel.org>; Sun, 28 Aug 2022 04:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=HAaCRJ5BCZd9vZ75I7OIGWYWEkX8mLS0wLeLqDj3G6w=;
        b=aqJJagqAL8Ozp8vcS5OPoC+1/AsjLKyjB6N5CDeU0YpecAyMFTgSl5Ia1KqpScH1gA
         sygqlhnKfsL3tEkVwgNDQ5WPtMI3cvOo4T5uySU3uWYB/Vyz1oJIkbnDfuVfbBE8vP7B
         pM6EM32ekf+rkgAINAJPQIpZ0kwciJpsVcuhzPX0WmhxMvrzjfzOruZ/osCsA8n/nLeI
         Y0dgw3g+gYPo3qex8wLsIoK6cpPfFNuP40xP6V4xDHgTOyQHgX1kaVoxS8CIZ+9yQloR
         G3YTi3KhMTWgMq+Co3osclPM5kaTxYPflcoowUVtg6E27KCAjrSjgnrdaJH0f8DOVF6C
         qVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=HAaCRJ5BCZd9vZ75I7OIGWYWEkX8mLS0wLeLqDj3G6w=;
        b=efuhs44wuTyUuXGEqP9gf7bnNdlXZqXvvNXjQbEGXIv2p9AhKc+enQ6fQfOO7FwhUU
         Xkvcn9CQwPHitHzsh67Wv7HANlJee8IOTimHrJ6xZXJefWKWS6DEQ9/gWNrAonQkc+uM
         DAA9FEQa8rW54qHIFEJuj01ks2VHxYCQNPKJltTkcqo6QR4ZDkE7Y6+Js5AwIiFCYm9M
         E1jcX4+/W1mez7hmUFILgSRNzHZHo1z8aO/EifoYjYWSk94nzY2UhBr4ZDl2FK9AK4uM
         F9FyEnyeyRSmKcvQHCFKsGgWo1MqGYyfTHSBGNUzIX9xY3TdKP/QRMqjTc1FVnYNnI1E
         k/Tg==
X-Gm-Message-State: ACgBeo2C3QHzdikF5z/4kbcKJ4K1GA7tzMs5HsoiMuIIJQ8mI50F9N6a
        BF6svZCCcaHFBxC0cKFMdMXomdvuG2k=
X-Google-Smtp-Source: AA6agR6xGje9k6fjGmccpO81UihLFg8EuEY+Is54j15/TAMmDYpSUwxDsOBgitVeLv8DhARwStdbcw==
X-Received: by 2002:a05:600c:1e89:b0:3a6:38de:7024 with SMTP id be9-20020a05600c1e8900b003a638de7024mr4273278wmb.184.1661685881359;
        Sun, 28 Aug 2022 04:24:41 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f14-20020a05600c4e8e00b003a54d610e5fsm5719878wmq.26.2022.08.28.04.24.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Aug 2022 04:24:40 -0700 (PDT)
Message-ID: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
Date:   Sun, 28 Aug 2022 13:24:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
In-Reply-To: <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0sB7Z8QmncifA7Z2jPhNBD65"
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
--------------0sB7Z8QmncifA7Z2jPhNBD65
Content-Type: multipart/mixed; boundary="------------0ngRKG44nLsG10N2gTH5Rbi6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>
Message-ID: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
In-Reply-To: <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>

--------------0ngRKG44nLsG10N2gTH5Rbi6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOC8yNy8yMiAyMDozOCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IA0KPiAgwqDC
oMKgIHZvaWQgKm1lbWNweSh2b2lkIGRlc3RbcmVzdHJpY3Qgbl0sIGNvbnN0IHZvaWQgc3Jj
W3Jlc3RyaWN0IG5dLA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6
ZV90IG4pOw0KPiANCj4gIMKgwqDCoCB2b2lkICptZW1jcHkodm9pZCAqcmVzdHJpY3QgZGVz
dCwgY29uc3Qgdm9pZCAqcmVzdHJpY3Qgc3JjLA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc2l6ZV90IG4pOw0KPiANCj4gIMKgwqDCoCB2b2lkICptZW1jcHkodm9p
ZCAqZGVzdCwgY29uc3Qgdm9pZCAqc3JjLCBzaXplX3Qgbik7DQo+IA0KPiAgwqDCoMKgIHZv
aWQgKm1lbWNweSh2b2lkICpkZXN0LCB2b2lkICpzcmMsIHNpemVfdCBuKTsNCj4gDQo+ICDC
oMKgwqAgdm9pZCAqbWVtY3B5KHZvaWQgKiwgdm9pZCAqLCBzaXplX3QpOw0KDQpCVFcsIEkg
Zm9yZ290IGFib3V0ICdub3JldHVybicsIHByb2JhYmx5IGJlY2F1c2UgbWVtY3B5KDMpIGRv
ZXNuJ3QgdXNlIA0KaXQsIGJ1dCBpdCdzIGFub3RoZXIgbGF5ZXIgb2YgaW5mb3JtYXRpb24g
d2hpY2ggYWxzbyBhZGRzIGEgYml0IG9mIA0Kbm9pc2UsIGJ1dCBpcyBhbHNvIHVzZWZ1bCB0
byBrbm93LiAgVGhlIExpbnV4IG1hbi1wYWdlcyB1c2UgaXQgKHNlZSANCmV4aXQoMykpOyBJ
IGFkZGVkIHRoYXQgbW9yZSBvciBsZXNzIGF0IHRoZSBzYW1lIHRpbWUgSSBhZGRlZCByZXN0
cmljdC4NCg0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5k
cm8tY29sb21hci5lcy8+DQo=

--------------0ngRKG44nLsG10N2gTH5Rbi6--

--------------0sB7Z8QmncifA7Z2jPhNBD65
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMLUHcACgkQnowa+77/
2zJZAg//SHtQVaC8ZmhgXamvUmMARysGomMq4sj0zwHM+1gATA6tIxTUJw8rLiV0
l3Yq795ev27ZsWfBlOlxg2qQfuGZfgNwnR9FibF9H6v3pCF7pIe86J4RS/bq+E/T
eOFnbGkqC+H4U4FNc2CzKuXyQCj9AIpS4nlJ816Lyph1XIXZgzX7QCcI7y0AYqtP
QDKq0z8uksUe5EDwAxY6kb7zoNGlKH/CzSxEf/Yxd2ntSvS+eiihHwMd0I2pyxHX
3mSrbTXdx1yZRoiq7eucrUfvAOWGPp9KmRwTxYyi7rojfm4fwdMQaKZjtUP7tMOt
in8hljtvhIf2WL5HABwWFnBooJqfr2a1c6tW25t9XXBZnmHE0fvFVWB8ouf/23dx
FhxMpQ/LjtcIiMXGulVOfZtpebHWg+o4V9DYELaF4V2GTh9CvK5yBgOj5QCfe+5i
RuquNXA+qOg94B6+exNsweV1XFTivq+2/+GFegXX4nAhVatITcO4qbnUwPbCupNk
9fTKTDV2Jtm+0WTwXT8WeiDHWwyorn/c8bGdf94aLjPweTs1DcKWomJ8HXlRNxy6
3cF+wNbZhvIprL5r/ik9bKP7KGnGglKlmFtzEPyjgSU3RBL7g7TrTq3vbz3eUbjf
0NlvkT7I2UXKLxURZtkhmpUOefYIJrp65V+M9lILLId9MR/E5Cg=
=ZxEN
-----END PGP SIGNATURE-----

--------------0sB7Z8QmncifA7Z2jPhNBD65--
