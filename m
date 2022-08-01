Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4E19586B6D
	for <lists+linux-man@lfdr.de>; Mon,  1 Aug 2022 14:56:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235046AbiHAM4i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Aug 2022 08:56:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235345AbiHAM4B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Aug 2022 08:56:01 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84FD813E97
        for <linux-man@vger.kernel.org>; Mon,  1 Aug 2022 05:54:03 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id a11so5735253wmq.3
        for <linux-man@vger.kernel.org>; Mon, 01 Aug 2022 05:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=1WycUQBbOnmiEt3HNsY/wFRgKCvSIwwWSpJkXGfu6Ow=;
        b=UXQoZhRLDq+C9Gh3N7cFzyIC7o6xCzYWtK5iBl1kvjRKgQjyutOaAjbJmYdPUvebdF
         LO8+LILdPSe8D27yBDevuvDMF9CIo2Xw2UrdOLIoNFe/78GUeCKtFN4WTkLjHs6yvOUL
         wFaft8gGJgC8kCGZeutZ0TrVs/FP1zJJc0EUq+hl5lM/JACYIlScKLw6JQOcgp9ByzJA
         0882hjZ0WoDv8jOE7gQXAPVS3gSDRVKbbiYgIn9w3KDAfkRL/qBHIx6PJCJ8oOIejd/y
         ZBT9gXrDohF3zFWsaqnBaQktOC6tMUtZBo6HD0l3HlLC5PTtSZAPATPFwrVfjcSY0j/0
         xzaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=1WycUQBbOnmiEt3HNsY/wFRgKCvSIwwWSpJkXGfu6Ow=;
        b=GzOHlUkGRyNtRL0L53IBSO3rt85VY0s+4NSmwr2ScVnL+dUMQzwjkG3DNjwJ+y4To4
         jYFcEhMvf76mFsD1ApAofbTGAAXRXjSBT28B36kQJ7SXb01EcSXWKKaLVbhC4iDbFcVv
         1Nt0UCP+fAUghze14kQOFaAwvNNumcaE1g/4f8OPQteoe21cdypdrK0F+v4Qm87DSMrH
         lMo8GHK447e9pf5vMVv2YSJaDjCDMgjPHMaJONFPVDYJRgWpu/Cd1sAnsy/BSkwiOfPB
         gcX43oOUlJveMDygAaYTp6BnVG1i2ckciqtyp2wWh1M24dAZvndOlPfVFFiSbt008G3T
         x0Ww==
X-Gm-Message-State: AJIora8muM5H6pFJ2h+V/9xPPLtc7fj+OZ2vdS36zwL0u8bPDRPtOGmq
        e0eceYfPn9bHsln0JKd0iqI=
X-Google-Smtp-Source: AGRyM1sGT9dZQrnTPfeO0ae5RyYwlsJbPrchpF4XJ4h8mVQOMsI/DLXSYc0C7wWimp9oUY545O6HPg==
X-Received: by 2002:a05:600c:4ecf:b0:3a3:3819:bea with SMTP id g15-20020a05600c4ecf00b003a338190beamr11292261wmq.4.1659358442017;
        Mon, 01 Aug 2022 05:54:02 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b17-20020a05600c4e1100b003a331c6bffdsm15088037wmq.47.2022.08.01.05.54.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Aug 2022 05:54:01 -0700 (PDT)
Message-ID: <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
Date:   Mon, 1 Aug 2022 14:53:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] getline.3: wfix.
To:     enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
Content-Language: en-US
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yE3Kkc3HedmFF7pqPGTXdvYW"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yE3Kkc3HedmFF7pqPGTXdvYW
Content-Type: multipart/mixed; boundary="------------ZHvvJ8R93rhzyIQdzU2tOajb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
Subject: Re: [PATCH] getline.3: wfix.
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
In-Reply-To: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>

--------------ZHvvJ8R93rhzyIQdzU2tOajb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgZW5oLA0KDQpPbiA3LzI5LzIyIDIyOjIyLCBlbmggd3JvdGU6DQo+IENsYXJpZnkgaW4g
dGhlIFJFVFVSTiBWQUxVRSBzZWN0aW9uIHRoYXQgaXQncyBuZWNlc3NhcnkgdG8gZnJlZSB0
aGUNCj4gYnVmZmVyLCBzaW5jZSBhdCBsZWFzdCBvbmUgcGVyc29uIG1pc3NlZCB0aGlzIHVw
IGF0IHRoZSBzdGFydCBvZiB0aGUNCj4gREVTQ1JJUFRJT04uDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+DQo+IC0tLQ0KPiAgIG1hbjMv
Z2V0bGluZS4zIHwgNCArKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygr
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMvZ2V0bGluZS4zIGIvbWFuMy9nZXRsaW5lLjMN
Cj4gaW5kZXggOGI3MzU3ODI1Li5iYWQzMDk1NmMgMTAwNjQ0DQo+IC0tLSBhL21hbjMvZ2V0
bGluZS4zDQo+ICsrKyBiL21hbjMvZ2V0bGluZS4zDQo+IEBAIC05OSw2ICs5OSwxMCBAQCBj
b25kaXRpb24pLg0KPiAgIEluIHRoZSBldmVudCBvZiBhIGZhaWx1cmUsDQo+ICAgLkkgZXJy
bm8NCj4gICBpcyBzZXQgdG8gaW5kaWNhdGUgdGhlIGVycm9yLg0KDQouUFANCg0KU2luY2Ug
dGhlIGFkZGVkIHRleHQgaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgcHJldmlvdXMsIGxl
dCdzIHNlcGFyYXRlIA0KdGhlbSBpbnRvIHNlcGFyYXRlIHBhcmFncmFwaHMuDQoNCj4gK0lm
DQo+ICsuSSAiKmxpbmVwdHIiDQoNCkFzIEJyYW5kZW4gc2FpZCwgcGxlYXNlIHJlbW92ZSB0
aGUgdW5uZWNlc3NhcnkgcXVvdGVzLg0KDQo+ICt3YXMgc2V0IHRvIE5VTEwgYmVmb3JlIHRo
ZSBjYWxsLCB0aGVuIHRoZSBidWZmZXIgc2hvdWxkIGJlIGZyZWVkIGJ5IHRoZQ0KPiArdXNl
ciBwcm9ncmFtIGV2ZW4gb24gZmFpbHVyZS4NCj4gICAuU0ggRVJST1JTDQo+ICAgLlRQDQo+
ICAgLkIgRUlOVkFMDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCkFsZWphbmRybyBDb2xv
bWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------ZHvvJ8R93rhzyIQdzU2tOajb--

--------------yE3Kkc3HedmFF7pqPGTXdvYW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLnzNgACgkQnowa+77/
2zJqSw//YecAc9MF8sERYbEXVJDWlrEibFmHE27iorNe3xjbXGgqzUZ4MdJ/A4iG
Kjp11Khprc3F0T2JdIlqCz0Lonarzk446MycrFzScnTaBDINmzAjv+nPJMT1IH1P
W63zf66+fy3p8oz+LWiwEGQ7ZwIJz1qgBxg3RDdG9IQZg4oq03/ZFwoiQ6AGiKcV
wMq4IxxQNwN8LZSZ/7SVMQTYRuicJUWqT/LKqCL8+9C+XeMverF8JM1MFn6UspQR
ts+udVq5/IvUZTbpcZzvf9HeWuf/TeRXOgGrZNkLrCprICjZ4AlBmXGh+l9hwhqb
qpmVGbrqtx2CSFAX3J24YJt9nqv7uvhuTsuGYgc2zRwgAW/YPlzD0C7EE0c9BfWA
AWJE51C6oGif0rY7qGTl4MYz0zD9b6JNqeKA/MIaRgkLuMK6rccDQhsiKC+WAgm4
B9XXwIG43vxdxN43rpPn25YzzSQWPla0U+QUVT8hA83MzHBd4YjLaa5bwvsyT69O
x7Mkzo3+ugNxGF4zabakuN/yi6ojg+YcsAzipDHXCWM4D0MdJBTQU4COqh5VUPyS
id834384bmz9vhlT9Iu1t4y1kRhUhSfcmXS42UoxtEyx40QzDRl31P/ydqxJNk8P
lKE0Xon5v6B7W5c5eixBxOJr3IvAN/E5kx57XSjKmCfKOxyqiy8=
=A5U0
-----END PGP SIGNATURE-----

--------------yE3Kkc3HedmFF7pqPGTXdvYW--
