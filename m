Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57951587BC6
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 13:47:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234078AbiHBLrK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 07:47:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233950AbiHBLrK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 07:47:10 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8EE81C100
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 04:47:08 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id bk11so7714996wrb.10
        for <linux-man@vger.kernel.org>; Tue, 02 Aug 2022 04:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=1uLfAuw59GUpQYIVuRwWaxCkDOCa0aESbayQfjo1NW0=;
        b=qrjAI25u84gDUGX10GFlzJHyuApsodvR6W1ugpT1fkOI98K4Q7A2pgGs+YcoGXsbnf
         bmqNDYvUN+LLdYh7RcIbYOgO1zbFT3wPSUkyxA6j+7aGx+Cwis2ADpSL+EAsUY7LQV1l
         8JOxepGWPxMdqqCEyx4uprjBJNZ8vMg/6cuI8OOABYuCXQI0xxwdDVObvYqIR8SXGUMT
         8cY76hG2Rf3FmvqrrmNXWonlMXf5YR6mQdTQyYQo7T2DyPMWjkQ3iqWSudjiW4BzJpRi
         Mk3j2xZvI4Ryhhtxf0rLsoGLVQq7BdGE2+7gH4J6Z+RIJ6MKOcOzcBAjE7Q91b6Pdgrz
         RiGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=1uLfAuw59GUpQYIVuRwWaxCkDOCa0aESbayQfjo1NW0=;
        b=5iG2kKzCJSu4YsFfAVxTfPhsIji3ekgxdblA/Wo+/RevHT5ACX5vmErcXO0/r0NEeh
         /Qu2XTYMhQB3Zclb3B0vty+nDrka1RwpjzGVwskDn2ToJpT/qn7mvQCEKKFUzA0eQM/z
         xSVLfIZAFAoWMO1zplgQZo3TxrQHP9W6Q3EqB4H6bUeSJruDL9ZDodGVQZRxsZL9DBaJ
         k4eNYYmS3f5sdgSJDtnJrFaoYrf0iytXU9Zkf/xAQ6O56lRfy8FncpOzhaZsShop2kLt
         Vy51tH8GrbxxvNHDT4cqbmwG13jcNGXWTLqXweSiOevWhMVA6mdtWGLPY4kT5ikiJnvx
         MHcw==
X-Gm-Message-State: ACgBeo2BVGolUuCgiuxTgNQRhnhInP3++JeHQxYP2GVV7+rkduyS9xWW
        YZGLDW+zIg+Upq4/kIM8vWlRuhU6w6Q=
X-Google-Smtp-Source: AA6agR447bIXuW7b4VpO9bx5dLhOpR3tJbePdxXvfkFU0+5AmLurwbEuedXOfErtPxYmHTjbov89fQ==
X-Received: by 2002:a05:6000:c1:b0:220:5c10:5c51 with SMTP id q1-20020a05600000c100b002205c105c51mr7922469wrx.668.1659440827411;
        Tue, 02 Aug 2022 04:47:07 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n186-20020a1ca4c3000000b003a2d87aea57sm22198082wme.10.2022.08.02.04.47.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 04:47:06 -0700 (PDT)
Message-ID: <95f02b3c-024b-b1d9-56d5-798990f63c66@gmail.com>
Date:   Tue, 2 Aug 2022 13:47:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: [PATCH 1/3] getaddrinfo_a.3: {ftp.us => mirrors}.kernel.org,
 likewise for IP
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------p7KJXO9qQfmFlOpPOkW1bDBc"
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
--------------p7KJXO9qQfmFlOpPOkW1bDBc
Content-Type: multipart/mixed; boundary="------------0EhCN55XgLLeFtIIIgIZIv6A";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <95f02b3c-024b-b1d9-56d5-798990f63c66@gmail.com>
Subject: Re: [PATCH 1/3] getaddrinfo_a.3: {ftp.us => mirrors}.kernel.org,
 likewise for IP
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>

--------------0EhCN55XgLLeFtIIIgIZIv6A
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA4LzIvMjIgMDM6MTEsINC90LDQsSB3cm90ZToNCj4gZnRwLnVz
Lmtlcm5lbC5vcmcgRUFJX05PTkFNRXM6IHR1cm4gaXQgaW50byBtaXJyb3JzLmtlcm5lbC5v
cmcsDQo+IGJlY2F1c2UgdGhlIGN1cnJlbnQgdGV4dCB1c2VzIDIxNi4xNjUuMTI5LjEzOSB3
aGljaCBpcyBtLmsubw0KDQphbHhAYXN1czU3NzU6fiQgd3RmIGlzIG1rbw0KR2VlLi4uICBJ
IGRvbid0IGtub3cgd2hhdCBta28gbWVhbnMuLi4NCmFseEBhc3VzNTc3NTp+JCB3dGYgaXMg
bS5rLm8NCkdlZS4uLiAgSSBkb24ndCBrbm93IHdoYXQgbS5rLm8gbWVhbnMuLi4NCg0KPiAN
Cj4gTWFrZSB0aGUgYWRkcmVzcyBjb25zaXN0ZW50IGJldHdlZW4gMTI4LjMwLjIuMzYNCj4g
KHNvbWUgYWRkcmVzcyBpbiBNSVQgc3BhY2UpIGFuZCAyMTYuMTY1LjEyOS4xMzkgKHZhbGlk
LCBjdXJyZW50KQ0KDQpJcyB0aGF0IElQIGFkZHJlc3Mgc3RpbGwgYSB2YWxpZCBtaXJyb3I/
ICBJIGRpZG4ndCBjaGVjaywgYnV0IGl0IHdvdWxkIA0KYmUgbmljZSB0byBtYWtlIHN1cmUg
aXQgaXMuDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVs
ZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0K
PiAtLS0NCj4gICBtYW4zL2dldGFkZHJpbmZvX2EuMyB8IDEyICsrKysrKy0tLS0tLQ0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvbWFuMy9nZXRhZGRyaW5mb19hLjMgYi9tYW4zL2dldGFkZHJpbmZv
X2EuMw0KPiBpbmRleCBlNDc4NzRmNWIuLjI1OWU3ZTQwZSAxMDA2NDQNCj4gLS0tIGEvbWFu
My9nZXRhZGRyaW5mb19hLjMNCj4gKysrIGIvbWFuMy9nZXRhZGRyaW5mb19hLjMNCj4gQEAg
LTMyMyw4ICszMjMsOCBAQCBUaGUgcHJvZ3JhbSBtaWdodCBiZSB1c2VkIGxpa2UgdGhpczoN
Cj4gICAuUFANCj4gICAuaW4gKzRuDQo+ICAgLkVYDQo+IC0kIFxmQi4vYS5vdXQgZnRwLnVz
Lmtlcm5lbC5vcmcgZW5vZW50LmxpbnV4Zm91bmRhdGlvbi5vcmcgZ251LmN6XGZQDQo+IC1m
dHAudXMua2VybmVsLm9yZzogMTI4LjMwLjIuMzYNCj4gKyQgXGZCLi9hLm91dCBtaXJyb3Jz
Lmtlcm5lbC5vcmcgZW5vZW50LmxpbnV4Zm91bmRhdGlvbi5vcmcgZ251LmN6XGZQDQo+ICtt
aXJyb3JzLmtlcm5lbC5vcmc6IDIxNi4xNjUuMTI5LjEzOQ0KPiAgIGVub2VudC5saW51eGZv
dW5kYXRpb24ub3JnOiBOYW1lIG9yIHNlcnZpY2Ugbm90IGtub3duDQo+ICAgZ251LmN6OiA4
Ny4yMzYuMTk3LjEzDQo+ICAgLkVFDQo+IEBAIC00MDMsMTcgKzQwMywxNyBAQCBBbiBleGFt
cGxlIHNlc3Npb24gbWlnaHQgbG9vayBsaWtlIHRoaXM6DQo+ICAgLmluICs0bg0KPiAgIC5F
WA0KPiAgICQgXGZCLi9hLm91dFxmUA0KPiAtPiBhIGZ0cC51cy5rZXJuZWwub3JnIGVub2Vu
dC5saW51eGZvdW5kYXRpb24ub3JnIGdudS5jeg0KPiArPiBhIG1pcnJvcnMua2VybmVsLm9y
ZyBlbm9lbnQubGludXhmb3VuZGF0aW9uLm9yZyBnbnUuY3oNCj4gICA+IGMgMg0KPiAgIFsy
XSBnbnUuY3o6IFJlcXVlc3Qgbm90IGNhbmNlbGVkDQo+ICAgPiB3IDAgMQ0KPiAtWzAwXSBm
dHAudXMua2VybmVsLm9yZzogRmluaXNoZWQNCj4gK1swMF0gbWlycm9ycy5rZXJuZWwub3Jn
OiBGaW5pc2hlZA0KPiAgID4gbA0KPiAtWzAwXSBmdHAudXMua2VybmVsLm9yZzogMjE2LjE2
NS4xMjkuMTM5DQo+ICtbMDBdIG1pcnJvcnMua2VybmVsLm9yZzogMjE2LjE2NS4xMjkuMTM5
DQo+ICAgWzAxXSBlbm9lbnQubGludXhmb3VuZGF0aW9uLm9yZzogUHJvY2Vzc2luZyByZXF1
ZXN0IGluIHByb2dyZXNzDQo+ICAgWzAyXSBnbnUuY3o6IDg3LjIzNi4xOTcuMTMNCj4gICA+
IGwNCj4gLVswMF0gZnRwLnVzLmtlcm5lbC5vcmc6IDIxNi4xNjUuMTI5LjEzOQ0KPiArWzAw
XSBtaXJyb3JzLmtlcm5lbC5vcmc6IDIxNi4xNjUuMTI5LjEzOQ0KPiAgIFswMV0gZW5vZW50
LmxpbnV4Zm91bmRhdGlvbi5vcmc6IE5hbWUgb3Igc2VydmljZSBub3Qga25vd24NCj4gICBb
MDJdIGdudS5jejogODcuMjM2LjE5Ny4xMw0KPiAgIC5FRQ0KDQotLSANCkFsZWphbmRybyBD
b2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------0EhCN55XgLLeFtIIIgIZIv6A--

--------------p7KJXO9qQfmFlOpPOkW1bDBc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLpDrkACgkQnowa+77/
2zKpxw/+IIBGDQ6W9gQxxOdwk2n4M2MXwJifwrlt0yHgEytvp+WfnU0Jcj464qPw
mvSl/A5c0fjWgIwtxWm9jtN4Uj1TKMoSJ/wC4/BpZGwyPq1DTP1dACdv5rb/UzXs
ladwwVviX17AcRlWtPfgVI9DCA5suvT1wdAnWdhlK+S0UBn/RY+LSb1D1IJzUwrU
kTdap5IDISMSfSrkGF0c+aQ/epedNBSXxcSU8R7sAerlGz77l/N4YsasqeVMTjuq
A15/4LOxaLtiZbACoB300C3lvbvBapnbnHw5H/ytZXgQ7F6NwhQwkwMduDU5RTyp
s85c3xBBnwn4u/cmHB/WoYQ1oiVcTlAXCCyT+wYorSJj2RkTpwXPPkWIj2sDXsNZ
QnMyfbWyqfqLtoyMsukGrZIXFLxH/JX/1/gGwI2ahgfzS/Pwu1DXkHygroIcMba3
Uwo/GrfC5BqLL5/laKis0dgPy0LiOGCrnVNkmbte+NHJkieDQTC0YTgbuUkYKDLw
BD+XQ1IJaOb2GeUw8rxNScLv4V0MLPCnNqTzo9cILlRdh7Ff85Aa/3WFHJvAxg1k
XIRDOTPuKpVFZGVvgkwoqGPJ9OhO+N1jb+vRl2U4HW83m088NZnCR/j3t/c/BZIF
06NVIeXmrfKR0PVQW45MkE799jSbQoMi++dK5utguZ6qgO44f4A=
=+0sx
-----END PGP SIGNATURE-----

--------------p7KJXO9qQfmFlOpPOkW1bDBc--
