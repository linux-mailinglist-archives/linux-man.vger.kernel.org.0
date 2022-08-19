Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 938B859A99C
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 01:52:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243493AbiHSXur (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 19:50:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243963AbiHSXum (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 19:50:42 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46B3D108B32
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 16:50:41 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id bq11so194477wrb.12
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 16:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=6AKFlby0lqRXeui7cs8MTDWvbg31wzy5KacRgL1ih1c=;
        b=Z5XzZkYA1hVOzn1VHu+RmJStBgnSFBdz29NaEW6OA7kTxgdZnz+7MIfAvJ5sbHsv86
         Fj0M8hpd0hAgwfT66ovx7isKWvD0prqQK9MobQHMWh4hQrZ6g0KMyVlugG3rKaGnHP20
         ja1B+HeIMhHGSGN9FiC+ufXjbkn1cq2fN1I344rwWHrRIug4PiMbacxniWI0EZH4MNqc
         0FR7jtjfVwzs4EDYiCGqDuTB0WS6CAZUmzEuBfV9orino78abMXpNI8pG+VSupfsBXWx
         8iYcR49YGdGTdR8ndJOO1iarUXiJbKz02bhnajxjVW6znqI5BbzxuszLXOaJi80OoHj6
         UKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=6AKFlby0lqRXeui7cs8MTDWvbg31wzy5KacRgL1ih1c=;
        b=wjxhBop2xG3vOAsI0+bFTWgcmO6nUQIFsSlVgWQtbKE4/bIcW35cVRVZafeaRyPSx8
         vJhiQj5MJiQZGn14Kf8agoIdBYmO0etBknsA+GY3qS2x3c+pfVKVY1g3lP5TC2KsdqtZ
         XuLzSJD8Wre94spHfwDDTMAZSHSRF1f4QZRBjSQdQAG7edk0Lhl77gMTT/BcFOQ3wMJA
         ePMixv+NOYWtA4pQl2NrhA9ej6l6DSVOK5y27ql3H/d/pwa+x11GGgGnOwCEeJSoiqp0
         gQqyxGWwsR8nKzZQjZxhUDtEHNTFD9S+Cd5LjBATBW2+5imvIy3Zz3f708lPkWBFbOm1
         yCww==
X-Gm-Message-State: ACgBeo2IZcDE3+g/ItpGUdC+qhg79c2p3pYFlD3KCjuXv6w/e4ZUUAVc
        FeUHk17eNMdOBf8i03zLIeo=
X-Google-Smtp-Source: AA6agR6PbnzG0YqiwrLeyOADBKYXSpvqiTdbjF0Zu6M5VDNbVId1ZvrYPMpzNLgck4XFUa0ItrOqfw==
X-Received: by 2002:a05:6000:1f0a:b0:225:3bbd:c5e6 with SMTP id bv10-20020a0560001f0a00b002253bbdc5e6mr2311247wrb.126.1660953039717;
        Fri, 19 Aug 2022 16:50:39 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b18-20020adff912000000b00224f7c1328dsm5211029wrr.67.2022.08.19.16.50.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 16:50:39 -0700 (PDT)
Message-ID: <f18330a6-cbb1-c7cd-8e30-a79fe9203bcc@gmail.com>
Date:   Sat, 20 Aug 2022 01:50:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] drop spurious t comment header
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20200723215333.13779-1-vapier@gentoo.org>
 <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
 <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
 <20220819202103.potxyqmj5axhjzye@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220819202103.potxyqmj5axhjzye@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MIsSSAeWqf0024jIcDN54MN0"
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
--------------MIsSSAeWqf0024jIcDN54MN0
Content-Type: multipart/mixed; boundary="------------CJ7F0IZvSYQE068o0T0YAdCL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <f18330a6-cbb1-c7cd-8e30-a79fe9203bcc@gmail.com>
Subject: Re: [PATCH] drop spurious t comment header
References: <20200723215333.13779-1-vapier@gentoo.org>
 <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
 <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
 <20220819202103.potxyqmj5axhjzye@jwilk.net>
In-Reply-To: <20220819202103.potxyqmj5axhjzye@jwilk.net>

--------------CJ7F0IZvSYQE068o0T0YAdCL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDgvMTkvMjIgMjI6MjEsIEpha3ViIFdpbGsgd3JvdGU6DQo+ICog
TWljaGFlbCBLZXJyaXNrIDxtdGsubWFucGFnZXNAZ21haWwuY29tPiwgMjAyMC0wNy0yNCAx
MjoxMzoNCj4+IEZvciAxNSB5ZWFycyBvciBhdCBsZWFzdCwgSSd2ZSBub3QgcGFpZCBhbnkg
YXR0ZW50aW9uIHRvIGFkZGluZyB0aGUgDQo+PiAndCcgY29tbWVudHMgd2hlbiBJIGFkZGVk
IHRhYmxlcyB0byBwYWdlcywgYW5kIEkgZG8gcmVjYWxsIGFueW9uZSANCj4+IHJlcG9ydGlu
ZyBpbGwgZWZmZWN0cy4gU28sIEknbSBpbmNsaW5lZCB0byBhcHBseSBNaWtlJ3MgcGF0Y2gs
IGJ1dCANCj4+IHdpbGwgaG9sZCBvZmYgYSBtb21lbnQsIGluIGNhc2UgdGhlcmUncyBvdGhl
ciBmZWVkYmFjay4NCj4gDQo+IEknbSBhIGJpdCBsYXRlLCBidXQuLi4NCj4gDQo+IExpbnRp
YW4sIHRoZSBEZWJpYW4gcGFja2FnZSBjaGVja2VyLCBzZXRzIHRoZSBNQU5ST0ZGU0VRIGVu
dmlyb25tZW50IA0KPiB2YXJpYWJsZSB0byBlbXB0eSBzdHJpbmcgYXMgYSBzcGVlZCBvcHRp
bWl6YXRpb24uIFRoaXMgdHVybnMgb2ZmIGxvYWRpbmcgDQo+IHByZXByb2Nlc3NvcnMgdGhh
dCB3ZXJlbid0IGV4cGxpY2l0bHkgZGVjbGFyZWQgaW4gdGhlIHNvdXJjZS4gVGhlIGxhY2sg
DQo+IG9mICdcIiBjb21tZW50cyBjYW4gY2F1c2UgZmFsc2UgcG9zaXRpdmVzIChhbmQgbWF5
YmUgYWxzbyBmYWxzZSANCj4gbmVnYXRpdmVzPykgaW4gTGludGlhbi4NCj4gDQo+IFRoZSB1
c2Ugb2YgJE1BTlJPRkZTRVEgZm9yIExpbnRpYW4gd2FzIHByb3Bvc2VkIGhlcmU6IA0KPiBo
dHRwczovL2J1Z3MuZGViaWFuLm9yZy82Nzc4NzQNCj4gDQo+IEJld2FyZSB0aGF0IHRoZSBt
YW4oMSkgbWFuIHBhZ2UgZG9lcyBub3QgY29ycmVjdGx5IGV4cGxhaW4gd2hhdCANCj4gJE1B
TlJPRkZTRVEgZG9lczogaHR0cHM6Ly9idWdzLmRlYmlhbi5vcmcvOTcxMDA5DQoNCklmIHdl
IGNhbiBoYXZlIGEgdGVzdCB0aGF0IG1ha2VzIHN1cmUgdGhlIGNvbW1lbnQgaXMgYWNjdXJh
dGUsIEkgDQp3b3VsZG4ndCBtaW5kIHJlaW50cm9kdWNpbmcgaXQuICBJZiB5b3Ugd291bGQg
bGlrZSB0byBhZGQgYSBsaW50LSogDQp0YXJnZXQgdGhhdCB0ZXN0cyBwYWdlcyB0byBjaGVj
ayB0aGF0IHRoZXkgaGF2ZSB0aGUgY29tbWVudCBpZmYgdGhleSANCm5lZWQgaXQsIEknbGwg
YWNjZXB0IGl0Lg0KDQpJIGd1ZXNzIHRoYXQgbWF5IGJlIGFza2luZyB0b28gbXVjaCB3b3Jr
LiAgTWF5YmUgc2hvd2luZyBob3cgdG8gcmVsaWFibHkgDQp0ZXN0IGl0IGZvciBhIHBhZ2Ug
d291bGQgYmUgZW5vdWdoIChJIGNvdWxkIHRyYW5zZm9ybSBpdCBpbnRvIGEgTWFrZWZpbGUg
DQp0ZXN0KS4gIEkgY2FuIHRoaW5rIG9mIGEgc21hbGwgc2goMSkgc2NyaXB0IHRoYXQgY291
bGQgZG8gaXQsIGJ1dCBpcyANCnRoZXJlIGFueSB0b29sIHRoYXQgYWxyZWFkeSBkb2VzIGl0
Pw0KDQpDaGVlcnMsDQoNCkFsZXgNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------CJ7F0IZvSYQE068o0T0YAdCL--

--------------MIsSSAeWqf0024jIcDN54MN0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMAIcYACgkQnowa+77/
2zJKgw//XOdpuI+L75ZABWn3IKNHemBpd1wAenVF8cFXE92GcYURJTwh4GGsiXpB
X9/lQ6JT0oMVW+jxreyD8ckCfGj2YtomMQPf22+c+6Ty+CH1ecxfnHfO0SzUqUW+
pcQTr8wSgd31oif3cVb4oQEyoK54b7Xq4Wr2F9ci/vCxhG1arH/m0eOGpvyvf3QY
i9XwpBPpxjecjA1h4H/p0uAPHn8JKc/IydffTx3sY4+/sUw4uc5Sg+2H9wCfKElI
0QlHA8GhOTFPXyoKcKGWD7gISz8ulIb+4RDr7X7hAV4WLgP9VDBxiAoz0OC2Ba8/
KzVwy9TmkjhGDIbhEiNgARW33YiIZ+1Jan79ou0D8d3Y0ljqz46GYdyeTSi+lo+H
+AjLBBosAWXMIHqigX9qt1rH7nhmEmZY7kJHpgwahlho64zkguhWnwtr0Eamv21c
oc0heKVxP67FPJVm/JD2vdpDta3M6kCbT10U2mvOKmW46vqQDU3DAXKpmIcZBfLk
yLPDMsw343gEXZ54PwEtcvingpD1n4qlAOAL2U+ebbiwkCLGvSDlx/vdRsNaPemh
HFhPfD9jA10pAJLgeY9yIQHMIRrxKin2zOY2UHQPa7ZloNl1F8RFumm8TUNTxpty
TKKG6xB1GmAg3W6Gh7lIkP2YdC998w1RrU3vTxbY3RBvLTYHgwc=
=RC4h
-----END PGP SIGNATURE-----

--------------MIsSSAeWqf0024jIcDN54MN0--
