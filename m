Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60BB85BC4D1
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 10:55:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230035AbiISIzk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Sep 2022 04:55:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229931AbiISIzh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Sep 2022 04:55:37 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26072BC1A
        for <linux-man@vger.kernel.org>; Mon, 19 Sep 2022 01:55:36 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id i26so45817235lfp.11
        for <linux-man@vger.kernel.org>; Mon, 19 Sep 2022 01:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=m1MzYR6K4WH4D0lIFRSjkLxtcPC+kNCNoREKIqWfO/Q=;
        b=W3LpywpYbIgTACUIwDmgSOCVRRZvFuxxxSgVIkXxI211wUh9BYtsx1iNFJsE8gOIwF
         pgsBndpf+0uTj21vEh5l/ATQwG7bflZnDYBB4RZoqrlbnR/e2giat6Ej+AMU7fG+II1J
         3wP9w+ccgrNzlrrXMZfs1AiHuaAzBB/Ez/U9eYND3B0lswclocV3OYwWXXYZdcPkr/C4
         /zHrTOoZZkICWrL48S+ji+a9hCMAIwR87FxwhNTXze1bdjQQHVqLU/pU53JQMtJ4gWBx
         T4nn8ffmNfn3g8u1SouOTzuCoDEWjCZVUGBGCAIU3gUguPSwAlZ4WHqMyvdKisWsKO1d
         CJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=m1MzYR6K4WH4D0lIFRSjkLxtcPC+kNCNoREKIqWfO/Q=;
        b=10S5j9yLeeeTBs39zDRdtzyDRmDQkgQuG1XRmGk/xLjgovJ/Mm42dqamzYSUqZtMDI
         sIfiCPONnaCUth8FaEJCrX0A0SM2lfQNQmYVx5VOEJwwG48WxRdcUN69r0QTGp/qVPf8
         VCMG5h1mn04PiStHcengonmvd1Bl9L7YMATGOyZTJYNrkqd3p1hihZlw4L8WkseRJQo/
         buUwO1P5IjXBYHAGkS/Jbcol0A+iFddp1P3xK7Z7yhYV3ewDOzPW/H4cGMLbIvcPzg0U
         6aXPkTDp+xBi498aTILacmqJ5ITTj/295H9JN45L1O24OZ9/QQW8qk+AZAbUmNgmhpCn
         4j0Q==
X-Gm-Message-State: ACrzQf3b2Nr+Av1A/mFPkEn+lsCKN5b+07k/s8upve6DPJjHXufEXG3F
        Ut8rUTC0peyWHexi5koTN8WyS+pozVD9eQ==
X-Google-Smtp-Source: AMsMyM4QEpvHD017bb6uuuTxpvKSAFRAs/hOXjqTHRcj6wnlP+7cM/7F7Bqu4NH5OE6W9IgLtSpm8Q==
X-Received: by 2002:ac2:504f:0:b0:49f:ba4b:d10d with SMTP id a15-20020ac2504f000000b0049fba4bd10dmr684779lfm.414.1663577734316;
        Mon, 19 Sep 2022 01:55:34 -0700 (PDT)
Received: from [192.168.1.104] ([31.169.55.19])
        by smtp.gmail.com with ESMTPSA id m11-20020ac24acb000000b0049496855494sm5101926lfp.104.2022.09.19.01.55.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 01:55:33 -0700 (PDT)
Message-ID: <3ae80927-8f7c-1b8d-1764-ba19bf65c5b6@gmail.com>
Date:   Mon, 19 Sep 2022 10:55:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [RFC v2] register_printf_speficier.3, register_printf_modifier.3,
 register_printf_type.3: Add new manual page and links
Content-Language: en-US
To:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
Cc:     Walter Harms <wharms@bfs.de>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20220918221640.19942-1-alx.manpages@gmail.com>
 <20220918230901.24488-1-alx.manpages@gmail.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220918230901.24488-1-alx.manpages@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ZuTv1IUUHXqhjoG2L58R7Znn"
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ZuTv1IUUHXqhjoG2L58R7Znn
Content-Type: multipart/mixed; boundary="------------0Js0ImALKPvmsGFhKC5BSXOO";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Cc: Walter Harms <wharms@bfs.de>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <3ae80927-8f7c-1b8d-1764-ba19bf65c5b6@gmail.com>
Subject: Re: [RFC v2] register_printf_speficier.3, register_printf_modifier.3,
 register_printf_type.3: Add new manual page and links
References: <20220918221640.19942-1-alx.manpages@gmail.com>
 <20220918230901.24488-1-alx.manpages@gmail.com>
In-Reply-To: <20220918230901.24488-1-alx.manpages@gmail.com>

--------------0Js0ImALKPvmsGFhKC5BSXOO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOS8xOS8yMiAwMTowOSwgQWxleCBDb2xvbWFyIHdyb3RlOg0KPiBTdWdnZXN0ZWQtYnk6
IFdhbHRlciBIYXJtcyA8d2hhcm1zQGJmcy5kZT4NCj4gU2lnbmVkLW9mZi1ieTogQWxleCBD
b2xvbWFyIDxhbHgubWFucGFnZXNAZ21haWwuY29tPg0KPiAtLS0NCj4gDQo+IHYyOg0KPiAN
Cj4gICAtIGJ1ZyBhYm91dCBwYWRkaW5nIHplcm9zIGZpeGVkLiAgQnV0IFVCIGFib3V0ICds
JywgJ2xsJyAoYW5kICdqJywgJ3onKSBub3QuDQo+IA0KPiANCg0KSSBmb3VuZCB0aGUgcmVh
c29uIG9mIHRoZSBidWcuICBJdCBzZWVtcyBJIGRpZG4ndCBjb3JyZWN0bHkgdW5kZXJzdGFu
ZCANCnByaW50Zl9hcmdpbmZvX3NpemVfZnVudGlvbiAoYXMgSSBzdXNwZWN0ZWQpLiAgSSBo
YWQgdG8gT1IgDQpQQV9GTEFHX0xPTkdbX0xPTkddLiAgTm93IGl0IHdvcmtzIGZpbmUuICBJ
J2xsIHVwZGF0ZSB0aGUgcGFnZSwgYW5kIHNlbmQgDQppdCBsYXRlci4NCg0KQ2hlZXJzLA0K
DQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQo=


--------------0Js0ImALKPvmsGFhKC5BSXOO--

--------------ZuTv1IUUHXqhjoG2L58R7Znn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMoLn0ACgkQnowa+77/
2zI+whAAjFZz/rdtKJJQA6eUo+HJq8gYCatTTEDVClkOaJMO9+LLlVPa244R9Jge
PVtrid7THvwuiDYvmYFKwusy1kFVlaVj36ZxQYhfvR3K360KX3A7QnCX8GHqTL+Y
vTOcFJVDh5dYudf/wapo0Fjtw2ad0PIB3x/uf6lv2VzyTZUZ7+AuXVRp+jeX2L47
U+vdmKwmMJ4jAGRnScwrDCYIsXNALGyrYplpqkfRi6g3PMAxzmrGkFdHb7co/DN2
V+ALCyAQ+/jeDtJhgfGmKF7O14ocGT/XQXNE0Tnxaolmet39oQv87ojFSI6bvXtJ
ehp+y4vItUXHEQuC1gAKuaqKVaV94MkkQAek78yW9OCR4Z3cSfY377nfKM3RBZG+
3GTWEtKGRq4Qr81gCaEEypRSaLiwU27B3yGY0NBXxCcbwRZxvuqZ4CodNSZIFulR
WE6qjD4ej5LN3jZWVX7AkeJ+g+u3j1rGRPbjaQD/E4CQDiT9MBhx4cbINj9C8bQj
IW/VieyEhyKQagP+BiPPj58GvQNvdVLipKBM8E1fzSYoR9zAsD1H79R5pmGvep0R
v4uaH9rFZdzBqqh/dsmEXJ+QQ+Dny3mT/sEspWLNT4brg7D4+DMYVJ382P2wWM75
tAmtP5n4WWIHVerj3xeqML3gjYUd3LqYMHyzRHO3657zJ6AbY3Y=
=g4hh
-----END PGP SIGNATURE-----

--------------ZuTv1IUUHXqhjoG2L58R7Znn--
