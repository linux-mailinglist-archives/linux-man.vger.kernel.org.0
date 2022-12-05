Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B45AA64291B
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 14:17:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231793AbiLENRH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 08:17:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232139AbiLENQy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 08:16:54 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A55511B9EC
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 05:16:50 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 125-20020a1c0283000000b003d076ee89d6so9048999wmc.0
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 05:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=333gzjW0pV4ZSD6hSVKEFvg/QPlPKnRkVgA/39D3878=;
        b=C8SkXLIj75bs8VGR2kQZ3qtAXtV4LIHAaLkjK2v/bQ8aafxuOxFnfOXHOXlXdYQhK+
         OyVcrLixbaVlx4lpeSkoVKDAcWOsgDFAOwNT5i3J8BQ2ALFkEK37WJNcevKTybG48hTP
         4ypAbwGcPi7QgLFfXpKICG8zE8kgFcV995SIqHBa2+QgOsV/O9LvuwwaFCSRIL2rQkNy
         Ple//phjWGh6+/uHBLBoAOG2yzsC2UbdMEH2wEUDBc+0bYXOwpvKAa4NPfKMK/fH9CJl
         fb0IrvCCo3wtnaZbKTW2FC7CXyGQHUVIAt0uVnw0d1zt9Xb0VV336A5XJ67KaPkvMPwJ
         Ncfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=333gzjW0pV4ZSD6hSVKEFvg/QPlPKnRkVgA/39D3878=;
        b=hgRwWf4AdtvlNYUmGyItKYlnCnkuBCZcjVgR8STa9z6GYJ68OFzuMWROoud323iq8k
         XT7RB5I8KfSVB+pMGfi9s6Y5v4z6zdCz93DZrti81L8XyiezoO20KVigivQ6ZAwPh7C2
         h4wcgMA4LKo1s2IJQnYX8v/RGsuCKHFZiV7MsH0VEF/wKpQWy/1qO9ylT+CIgr5dVEID
         41GbvcIv1IeP2pfddBZxMuYGl2mf+9UGLO/sYt3JO02QLFtEiB1EoR4N/g6Ub68oH4uc
         fL1LftAgomAxw6t4SYXGvtR56m0JaUB752HCkFFLZDyZhSREOMBDDJA7NyORyYxWJExw
         /n0A==
X-Gm-Message-State: ANoB5plAiu4V4Ue7GBQp3YlXvSApPsxPB+mHccP9Tuaxs7ZOQv9/gwev
        j03yo5vCQ7ScL+uOrrUU/Rc=
X-Google-Smtp-Source: AA0mqf6ADPhxnAKWMrHj4WysSotEw7FnK1dFzAuLax9QbY9CVRmBfBJhigG3cECXgvOjW36OfO3Gng==
X-Received: by 2002:a05:600c:a4d:b0:3d1:bd81:b1bf with SMTP id c13-20020a05600c0a4d00b003d1bd81b1bfmr4670868wmq.90.1670246209163;
        Mon, 05 Dec 2022 05:16:49 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l7-20020a5d4107000000b00242246c2f7csm14290155wrp.101.2022.12.05.05.16.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 05:16:48 -0800 (PST)
Message-ID: <177e2a0a-00fe-476b-f6ab-ecc7961a8667@gmail.com>
Date:   Mon, 5 Dec 2022 14:16:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page filesystems.5
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
References: <20221204090709.GA32662@Debian-50-lenny-64-minimal>
 <bb033e53-d8d7-dc26-72cd-012066047d0a@gmail.com>
 <20221205125444.nn3n43svv2he6gdg@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221205125444.nn3n43svv2he6gdg@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qlCQg0SBTWKGBDpjZrtJ90ec"
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
--------------qlCQg0SBTWKGBDpjZrtJ90ec
Content-Type: multipart/mixed; boundary="------------Cb41UP7R4iAti06OGUZrS4EO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Helge Kreutzmann <debian@helgefjell.de>,
 =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <177e2a0a-00fe-476b-f6ab-ecc7961a8667@gmail.com>
Subject: Re: Issue in man page filesystems.5
References: <20221204090709.GA32662@Debian-50-lenny-64-minimal>
 <bb033e53-d8d7-dc26-72cd-012066047d0a@gmail.com>
 <20221205125444.nn3n43svv2he6gdg@jwilk.net>
In-Reply-To: <20221205125444.nn3n43svv2he6gdg@jwilk.net>

--------------Cb41UP7R4iAti06OGUZrS4EO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIhDQoNCk9uIDEyLzUvMjIgMTM6NTQsIEpha3ViIFdpbGsgd3JvdGU6DQo+ICog
QWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+LCAyMDIyLTEyLTA0
IDEyOjM5Og0KPj4+IElzc3VlOsKgwqDCoCBXaW5kb3dzIGZvciBXb3JrZ3JvdXBzIG91dGRh
dGVkPyAxOCBZZWFycyBhZ28hDQo+Pj4NCj4+PiAiaXMgYSBuZXR3b3JrIGZpbGVzeXN0ZW0g
dGhhdCBzdXBwb3J0cyB0aGUgU01CIHByb3RvY29sLCB1c2VkIGJ5IFdpbmRvd3MgZm9yIg0K
Pj4+ICJXb3JrZ3JvdXBzLCBXaW5kb3dzIE5ULCBhbmQgTGFuIE1hbmFnZXIuwqAgU2VlIEU8
LlVSIGh0dHBzOi8vd3d3LnNhbWJhLm9yZ1xcOi8iDQo+Pj4gInNhbWJhXFw6L3NtYmZzLz4g
RTwuVUUgLj4iDQo+Pg0KPj4gSSBuZXZlciB1c2VkICdzbWInIHNvIHBsZWFzZSBzdWdnZXN0
IHdoYXQgYXJlIG5vd2FkYXlzIHVzZXMgb2YgdGhlIGZpbGUgc3lzdGVtIA0KPj4gdG8gcmVw
bGFjZSB0aGUgb2xkIHRleHQuDQo+IA0KPiBJJ2QganVzdCBzYXkgIldpbmRvd3MiIHdpdGhv
dXQgbWVudGlvbmluZyBhbnkgcGFydGljdWxhciB2ZXJzaW9ucy4NCg0KRml4ZWQuICBUaGFu
ayB5b3UgYm90aC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQoNCi0tIA0KPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------Cb41UP7R4iAti06OGUZrS4EO--

--------------qlCQg0SBTWKGBDpjZrtJ90ec
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmON7zcACgkQnowa+77/
2zKe+g/+NsrMwOGGJcnmJiOOJOBYSek2ii2Cik1yHupCmJkFZVFbRJdCS14Ctu/z
vE8Z05VpVpZeOD9OvMDm1ZLb9X/Y8GMHmPKYtcYL8wFLDOrt8Sc5C3HDEqEEcTwx
DIIJun5ABMnYY8UfSfEoaj1oEmjDMVOht1fgdALtL7QSwox7GrE6wZx8ODD3MS8x
AYhPbsPiDv3wbDJJlsbYslVRpsGkH+cT8plsLOBIo9Ef0sysBnDcBR4jgkMarMIA
izpPjJSyxx/X4kfgvuTIW3TAeQjbH0Wnd9RGJfvpVYKziLiGnKZhTa0RNrfrZuM9
wPkfHNNYoNGmMFaozRuOdZw3bWPaMJwZxR0BIMeE7KzWyfckh9NQiLBusuSVNLoI
PIuO3FNGUsJv1wMQokcR+/UX3tchgc3/lNrZdTIeyYDAoTbWzHLRrIQlQ24KWHQG
FuvlmRI8bPi+ofwQ6Hxsr9c1H60bp0yf+U6ktjHCpEMWqyOIr3YwVdPRnHCRomDU
DPjXEPZBX3LtOfXvhezL+6XV2ddwm0w+3uc20cvjWgSiiE2ujifCXgD/6egqgEC4
7tOU0GM8P1LvHeE9MK5ENAkIDXcUo22cqt5fw8mFSkYes4VX1Am7iXc4rCpMjycZ
L0Uxmpuq1t0wTHkxy+vpOgNsBv6YiZXrIgjBV/eweICAByhmXHU=
=rWi3
-----END PGP SIGNATURE-----

--------------qlCQg0SBTWKGBDpjZrtJ90ec--
