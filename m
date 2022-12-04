Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E52BE641FA1
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:51:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230370AbiLDUvH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:51:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230108AbiLDUvE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:51:04 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7E7112608
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:51:01 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id w15so15885209wrl.9
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=waoMdj70ih21HAER9O/QhJMuxhljI1VV2yq6gFSiMzc=;
        b=Ws99O15Es7J5hpxdstrl5tjvF7AMEplGR/CZipNOKoQKTbdiXjzG/tVHcyqCzME/PS
         VmLdcX0J7MuAKlt3QsuxD/jrDzrHsH27Hs0X1yH+EIAHjjc0DQ1OAarJLTnDC19boFUn
         7AI4AkMaoRmVo/+IDyqO6Z+9Xr/aGrG0JDavRBOubuEuwZH7OKAy1RLJajzCDVaI/1hi
         Nw7Bl2Nl1Yw3Q4juWgQFXlO3Lknnik4glMT4mknkuOCzSSqXCBHhxxZypl56Y923jC5D
         awdtllzKj6iHviYFouBX5JUxjsnvDfSpjvXxuxdpJvixh/4JxPyaElrzc40y0Cty4UAH
         kMEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=waoMdj70ih21HAER9O/QhJMuxhljI1VV2yq6gFSiMzc=;
        b=bkVI0nYfOBLlWg/1Xwp5hkxhV6Oj8UzIJ7RobpS1W6O5ttP8J5tcV6F23h+DNVfzfd
         YbhQ7M8OfjEjLZCWVqb50O6Jdb3iM4bpZ4womt9xKVZQxJfbZA7Zd1YGDsQgBorVrTk5
         flWoPncJtGLQxaCTMrVhRloDyl9lhjrNGwE2LixIHxsc4GulJ6xnLBTHxvkgPh5s4qB0
         u4A+41YejV+XKxtwazOlsqIDDhtuEJscKLw13BCDOSBYTMsPDHLkqMlXWywQh/nLqhtM
         1qwZVa6PAEdmjG3VWMR5uvod88wkjtilHoE6ynE+3C/wvrGFD/HMt86GAeL5Vpu9fQd2
         h2gA==
X-Gm-Message-State: ANoB5pl0kfgWYnvqbdE6j5A3DdqEpLu8S4wXvgRke2qMjMVMHlGBdKy8
        B2HlfuWAKvWhJFmUwX7EILg=
X-Google-Smtp-Source: AA0mqf6m4zbAhZ1zEbYWU5m6Bf2KXjJZtzT6f416MTitslwlWyEJ+iXOZ+cDdpBldZyEXaJTw861rw==
X-Received: by 2002:a5d:6947:0:b0:242:17a5:ee80 with SMTP id r7-20020a5d6947000000b0024217a5ee80mr19863070wrw.628.1670187060186;
        Sun, 04 Dec 2022 12:51:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n36-20020a05600c502400b003cf6c2f9513sm15885917wmr.2.2022.12.04.12.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:50:59 -0800 (PST)
Message-ID: <e656c0fd-6441-0817-952c-221e9e8d0097@gmail.com>
Date:   Sun, 4 Dec 2022 21:50:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page wcsspn.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090725.GA1274@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090725.GA1274@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vNSN3cM7oxDClvq4HrTZHTL8"
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
--------------vNSN3cM7oxDClvq4HrTZHTL8
Content-Type: multipart/mixed; boundary="------------4fSkZc4eFqZRUl0YME1Poq1p";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <e656c0fd-6441-0817-952c-221e9e8d0097@gmail.com>
Subject: Re: Issue in man page wcsspn.3
References: <20221204090725.GA1274@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090725.GA1274@Debian-50-lenny-64-minimal>

--------------4fSkZc4eFqZRUl0YME1Poq1p
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIFRoaXMgZG9lcyBub3QgbWF0Y2ggdGhlIGRlc2NyaXB0aW9uIGJlbG93DQo+IA0KPiAi
d2Nzc3BuIC0gYWR2YW5jZSBpbiBhIHdpZGUtY2hhcmFjdGVyIHN0cmluZywgc2tpcHBpbmcg
YW55IG9mIGEgc2V0IG9mIHdpZGUiDQo+ICJjaGFyYWN0ZXJzIg0KDQpGaXhlZC4gIFRoYW5r
cy4vDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------4fSkZc4eFqZRUl0YME1Poq1p--

--------------vNSN3cM7oxDClvq4HrTZHTL8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONCDIACgkQnowa+77/
2zL/Pg/8Cgvo3cdRKMjRZH6gk0160UCLMnCbG6SvGluV1+qIroD8RzbcIs2z6TV1
hvrA9liCimM4VJ0gNQc79oImsjIyknDM9Ni/X/UzlRO7fxjZD6G6CE9SKH9B1HvL
jdi/7TNCU7MM2M9TUBY5UhRF/B32b7se2tI2Gi3s7odh7Y5K2mMaJjuhBsEtmx7A
grnR9JYz3I1BUhdWE6lDWMmdUPOFLEJhPGWf+rcm+26MAA8KZWpsEKR0ipDSMgMf
x/JQtJLskSaP13PofXEroyGommsamKaUs/qjRk2MGaS6sb0+dxuP7XEZX5nv1LUR
JUqB2XSM/zSayPq5mjpwE+kP8x7gOcHwy8GIuGpNjXYEhzntSOgqQoWVYQz1mmLE
A68JcMOJ4r1eyrG9jUejlZxA5gK/ZXtXp3Em+kdfbPr1bMX1F76Jv9sTa2uJj+4c
TRym7YeNrti/+BJE1LDbGgXfSoSnn9hSWebI86PjOoQRFrFirDdCzuzz8rbgg1tN
0JK/W/xqGuDp3U5XCoLQBKq4maMulby2g6D3pOeHqsyCQBlDaVv6Y6xXt1AjfSRx
mauqnN34xwJR9OExkHP0PjfBq1n5yV6YscrCcRuFSO3aI86WPA8Olho7QlSRf31A
xvDAhiaDO31oEiac9RhtqtW0M3yPUgDr6oIYrAPhjzQ2eSRLBW8=
=29GC
-----END PGP SIGNATURE-----

--------------vNSN3cM7oxDClvq4HrTZHTL8--
