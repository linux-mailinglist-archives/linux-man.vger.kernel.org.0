Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0954759A98C
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 01:35:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241023AbiHSXcu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 19:32:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240630AbiHSXcs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 19:32:48 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 884F211520C
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 16:32:43 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id ay39-20020a05600c1e2700b003a5503a80cfso3173411wmb.2
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 16:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=ggRRXvc0shWoGacC/KB5zZ5JDn6r0dzir/wOls8IFfo=;
        b=AFjG2sanWwnw2PqlHJ6eNq21jhO/4krziqxptdR08UcyEI7onydSDYJnuIwKL0NOrp
         1QWVkIfjT0N3hLivw7qZDyrzGmcpjU7nzjze981bS6nokOIm4bjZS+IDxHSh/SBDvMXo
         eWVygaXCR9gX7HOUUWUaWYkE71upjuBuabI0HXGQuvZp6Op7RlnF03jEEoDyztlour12
         RvfZNFDWm2uDQywESe7pQWofi9DRfKyJaTHyMJ4T0Tk+5KAfSzKnhNzZF9SULVuWqk0i
         Xgtsjzr87hComL5xVvhwImSBZyckvxLd/UEwjVB5sRB/SYGIJ7CX01Hd0pkB11edHyjw
         thqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=ggRRXvc0shWoGacC/KB5zZ5JDn6r0dzir/wOls8IFfo=;
        b=jZDducFGKJ813lXQ/uAYYtyR+wVLfVGWI3Xi4NkPa7qTb66ggVTupCRg0IdTl40GMl
         /XmqqZ6rJpSHE1rrXEoBYZ/6UCEjQkzUezsPeN8NnzFoaiF7FBekhJY9ISvR/SAAnv2J
         LT//DT/YbtXyO12pRU6Sd+J8mT/OZlANgkPQbBSf8OfHWhGE9XfeHB7NYCwGIRl8Ali7
         Go7oO4W1lNX5Xyd4looIavVQIePBUL1APqXwE9Xzw9ZirUjE0/wLZf/ZugtrtMd+W5s5
         W2LfA57pTx9+kbBT0MEv4JKyJOd39dwpvyugXDBtsPo8LV2P9rACDWbu8/G0s2CNhsYJ
         ILrg==
X-Gm-Message-State: ACgBeo1wc0zZjwpivnlKkf8Xh+L0Mudwmb/fIRl5/5ZTaEx2IaZLuKzX
        QQ4C9JUqeMnvk0a+0scNxQM+8rULegs=
X-Google-Smtp-Source: AA6agR4qS0PtErB0XLG1J6JFDUCPiWv1Lggs5p58+stc0n7yvpYCY9QsK6QkcifXpPruGRLAj4s/2w==
X-Received: by 2002:a1c:7407:0:b0:3a5:b81b:c5c5 with SMTP id p7-20020a1c7407000000b003a5b81bc5c5mr5857455wmc.144.1660951962473;
        Fri, 19 Aug 2022 16:32:42 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f14-20020a05600c154e00b003a32251c3f9sm12161835wmg.5.2022.08.19.16.32.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 16:32:42 -0700 (PDT)
Message-ID: <01016e92-be16-9a2c-6663-e2f552b7ba47@gmail.com>
Date:   Sat, 20 Aug 2022 01:32:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] build-src.mk: Fix appending -Wstrict-prototypes
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20220819182431.1612-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220819182431.1612-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IMdW8XjJy0y4yACspKJUYxej"
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
--------------IMdW8XjJy0y4yACspKJUYxej
Content-Type: multipart/mixed; boundary="------------INRK1cLHSpHL0fB6vQxK03Jt";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <01016e92-be16-9a2c-6663-e2f552b7ba47@gmail.com>
Subject: Re: [PATCH] build-src.mk: Fix appending -Wstrict-prototypes
References: <20220819182431.1612-1-jwilk@jwilk.net>
In-Reply-To: <20220819182431.1612-1-jwilk@jwilk.net>

--------------INRK1cLHSpHL0fB6vQxK03Jt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDgvMTkvMjIgMjA6MjQsIEpha3ViIFdpbGsgd3JvdGU6DQo+IFNp
Z25lZC1vZmYtYnk6IEpha3ViIFdpbGsgPGp3aWxrQGp3aWxrLm5ldD4NCg0KUGF0Y2ggYXBw
bGllZC4NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbGliL2J1aWxkLXNyYy5t
ayB8IDIgKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9saWIvYnVpbGQtc3JjLm1rIGIvbGliL2J1aWxk
LXNyYy5taw0KPiBpbmRleCA1MDJiOGM1MzEuLmFiM2M3NDFkOSAxMDA2NDQNCj4gLS0tIGEv
bGliL2J1aWxkLXNyYy5taw0KPiArKysgYi9saWIvYnVpbGQtc3JjLm1rDQo+IEBAIC0yMSw3
ICsyMSw3IEBAIENQUEZMQUdTICAgICAgICAgOj0gJChERUZBVUxUX0NQUEZMQUdTKSAkKEVY
VFJBX0NQUEZMQUdTKQ0KPiAgIERFRkFVTFRfQ0ZMQUdTIDo9IC1zdGQ9Z251MTcNCj4gICBE
RUZBVUxUX0NGTEFHUyArPSAtV2FsbA0KPiAgIERFRkFVTFRfQ0ZMQUdTICs9IC1XZXh0cmEN
Cj4gLURFQUZVTFRfQ0ZMQUdTICs9IC1Xc3RyaWN0LXByb3RvdHlwZXMNCj4gK0RFRkFVTFRf
Q0ZMQUdTICs9IC1Xc3RyaWN0LXByb3RvdHlwZXMNCj4gICBERUZBVUxUX0NGTEFHUyArPSAt
V2Vycm9yDQo+ICAgREVGQVVMVF9DRkxBR1MgKz0gLVduby1lcnJvcj11bnVzZWQtcGFyYW1l
dGVyDQo+ICAgREVGQVVMVF9DRkxBR1MgKz0gLVduby1lcnJvcj1zaWduLWNvbXBhcmUNCg0K
LS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------INRK1cLHSpHL0fB6vQxK03Jt--

--------------IMdW8XjJy0y4yACspKJUYxej
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMAHZkACgkQnowa+77/
2zL+eg/+O+a+6t+8D+SM98w5GiTXAuo3Obn1Xs7ZfzeWbwewkc7zMyfaZq5afr2V
iT7v7jCTVSsSYMSNV8Djz8qNdq8IsYdIjjS6ThFT1ND4w3UIoX1PaNZYCmZm+m/R
LvyrPGtdqx98FxDht/SkpZpFzDEhY9usK+0TmTk8fPz4qlG82j5q84blkRGBvTsC
7uMF7ZYEinpPnVCPXeMSmSM+fNtaext73ULjIfD7Yc5h+wo5UPETxJ+E69m0Hp6O
raxfpc53nRCYdwAqf1al9+Tn5pM32aAq3BvmtiOd8ryLeqG8GWCndLFoeiSpGPnV
BNkwmQAc39h9PNzqBERO6WEZOzQNn9YtEwfqWAmySjkQlHqwApRjqEydF0y0d1tA
iF0z07fc1pAyjLI1G6HI8ZSJ1/10UcMbE9uebZYx0xJrrNKdtCJEOtutS4Xm4dTt
S+pKoCOAze4Lyu2mgfZ8MhWxdoSvNWkuCXR3E44QRB4ybfF9OqdBhQCORpPZq+ES
Ebrwf0OhdTAOdu4GjLXtyDGENV1l34aYZooKaI2p3OqrX5PM/BHoqKbllEdVkCF4
Ppf/iDmeLUoJeFRaNyqY9nE54TEsnhtF7Wfe+hSW+0tDVf2ULz4XysAPUGNX7vA4
/pUaLJGIbIzyHbuqJrJFr7mD1SbJSi80j0+Mpw3IIboE9hUqaw0=
=jUca
-----END PGP SIGNATURE-----

--------------IMdW8XjJy0y4yACspKJUYxej--
