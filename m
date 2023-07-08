Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABFDB74BE78
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 18:36:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229593AbjGHQg2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 12:36:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHQg1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 12:36:27 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D59912A
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 09:36:27 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BF4B960D54
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 16:36:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4712AC433C8;
        Sat,  8 Jul 2023 16:36:24 +0000 (UTC)
Message-ID: <98c8b0c5-cc29-327c-b1d7-3e337ae55e9a@gmail.com>
Date:   Sat, 8 Jul 2023 18:36:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] epoll_event.3type: epoll_ctl is (2)
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <s2rztkgabrb5ljvukad42liu7fsaomsh5rafnsvtj6xux6uv37@niw3jfqv5dqd>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <s2rztkgabrb5ljvukad42liu7fsaomsh5rafnsvtj6xux6uv37@niw3jfqv5dqd>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tdE8dQezHEc0nVd2Y5uaIMYQ"
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
        FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,NML_ADSP_CUSTOM_MED,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------tdE8dQezHEc0nVd2Y5uaIMYQ
Content-Type: multipart/mixed; boundary="------------qGhxRXZJSD76uXzfkFlHCniN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <98c8b0c5-cc29-327c-b1d7-3e337ae55e9a@gmail.com>
Subject: Re: [PATCH] epoll_event.3type: epoll_ctl is (2)
References: <s2rztkgabrb5ljvukad42liu7fsaomsh5rafnsvtj6xux6uv37@niw3jfqv5dqd>
In-Reply-To: <s2rztkgabrb5ljvukad42liu7fsaomsh5rafnsvtj6xux6uv37@niw3jfqv5dqd>

--------------qGhxRXZJSD76uXzfkFlHCniN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8yOC8yMyAyMTowMywg0L3QsNCxIHdyb3RlOg0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVs
ZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0K
PiAtLS0NCg0KUGF0Y2ggYXBwbGllZC4gIFRoYW5rcywNCg0KQWxleA0KDQo+ICAgbWFuM3R5
cGUvZXBvbGxfZXZlbnQuM3R5cGUgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuM3R5cGUv
ZXBvbGxfZXZlbnQuM3R5cGUgYi9tYW4zdHlwZS9lcG9sbF9ldmVudC4zdHlwZQ0KPiBpbmRl
eCBlZmIyMjlmZDMuLjBkMzM1YzViMCAxMDA2NDQNCj4gLS0tIGEvbWFuM3R5cGUvZXBvbGxf
ZXZlbnQuM3R5cGUNCj4gKysrIGIvbWFuM3R5cGUvZXBvbGxfZXZlbnQuM3R5cGUNCj4gQEAg
LTUyLDQgKzUyLDQgQEAgLlNIIFNUQU5EQVJEUw0KPiAgIExpbnV4Lg0KPiAgIC5TSCBTRUUg
QUxTTw0KPiAgIC5CUiBlcG9sbF93YWl0ICgyKSwNCj4gLS5CUiBlcG9sbF9jdGwgKDcpDQo+
ICsuQlIgZXBvbGxfY3RsICgyKQ0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCkdQRyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkRE
OEQ1NzYzM0Q0NDFFMjVCQjUNCg0K

--------------qGhxRXZJSD76uXzfkFlHCniN--

--------------tdE8dQezHEc0nVd2Y5uaIMYQ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpkIYACgkQnowa+77/
2zIuqQ//YjICvZCiEjFvwml3TcY67x8CctCLYpCAjGBq7oZFCBNeY4Sm09lcVvtE
Axl5JbwUhEU3R/kTWSCrUtLLjVNqQf2CF0RUYuEOQy7+wh3QZ8Rh19x0qjsrHmkP
yqUQ8KVwBjQF7g76Wv08UVYBDu/PvBZ6QyY4C3ji9FVwJNxXeTKPnjVOPArs+jYj
8kMrO8cMLCgLR7oIEYMgRJ2tgLfI8zaduieALL3MLs3qw07BFXc58UGop7tFwppG
55lkfA5txM2jITnk6MHTvHJ8JY04SbMSuwrlPjLU70Le10gtWuZlMc5g7URBOBC8
hCt1wYBsHG+rbqLtvCrM1D9s5w7UKbC7W8MPXgvshV4+XRh9K91gulQ65RsJMAU4
b+QJzD52pWh9ZXowb1lnUxG5SkCAWgqYoYnhVPqNFPNLT5v5bdUeKOnAjjLYuH1E
NkqgHKb3fxKjfpfl/NXem4r1W77zA3Bezu7l461zQxczeY+CEZaUhTnj7pZfH/GZ
cUudTwPws5s52rUdJ0E79IrHKSwBrMtlzE+zWo99cZD6DFJthUq0QMWWvy5WjItg
i9NEz0zrJus1ijSopB6+1Nt9paLzlmHcLcsTpQm6D7eTz3TLUyOJOMEgZp7jQ3av
6MArxe/ODNdAVbDqRpBl21JqCVtwA8NTFEXpFR/yfWOPmFgg78s=
=WHzn
-----END PGP SIGNATURE-----

--------------tdE8dQezHEc0nVd2Y5uaIMYQ--
