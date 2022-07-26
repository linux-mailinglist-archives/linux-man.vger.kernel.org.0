Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94703581542
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 16:30:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233921AbiGZOa0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 10:30:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239377AbiGZOaH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 10:30:07 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BEDF2B1A8
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 07:30:00 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h9so20453334wrm.0
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 07:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :content-language:from:in-reply-to;
        bh=klD3cM+fp78oPX6lQM3+mnpCjQVlMD1xodHD8oTkYWM=;
        b=WPx3Wb48GbeLNZg9yuFrFyS9EAtHf38XMgCVFGWr60Vhlln2MpFqCxcOcvBh6dyo1a
         tdUeiF9cs+PFoXaV5SSUKtnr+Spf9dUa4IhcPI/1V5+PmPb2D+ktzA8V4vqL/5rDc9i5
         +n6XCEbsnoaQDNLMLI2Jk9orRj3SD286++S7Ks4seW6cSUE8Q6my3FUYbaK8Jdoxwoyr
         aeRQHmjSzWfQNjtNYSkdnTFSH+zmgDiecJvPEPmlttXGVwgXynVSU1/hv/iBAZzMbdus
         KHpJ2/KI/w2HCvXTGu94i3kuY+61WaOQ51zYZGEFelGr4LnzVP8ijFjpAfH2vVh63oXB
         s1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:content-language:from:in-reply-to;
        bh=klD3cM+fp78oPX6lQM3+mnpCjQVlMD1xodHD8oTkYWM=;
        b=sGPrEu5RLTtOoXugmzXoCjA4YEAAX/sqob3DcijrDpnjPh+V7rUa882+kjkwGUz5z/
         S4dlVHwXOnN0uq9oN4T2f7XsOwZfg/LFStT6zndaPAeRvcLfUOswRU+u8x90v1YHvhse
         +I9/abu2Z2sedBt4U4kbfKdNSeRRvYBMQ4lIq7GMSbhHqOVWroglXbluFeRpxvWkqG7A
         QcveXLlgQlb+AZJ/4XKqqH/+L5A7YpW+QzLQb4+kshB/h7m5kmJ3C34x4kbxxYMxrBLE
         MwGGuWQ5TiMBasI8qEbZJHMzBFPiraWmK8FT7hvNnKhNsDdu5wjYZbUi0X+N3ZOjtr/p
         9sWA==
X-Gm-Message-State: AJIora9ZQH6pBitUWAsc6GmNBcem66giIKHhWUJ7bkMnFnHPMKMs1/s9
        Ho/cYnDPy36Wlk353wSqhKWpOibEGlQ=
X-Google-Smtp-Source: AGRyM1tvlXfFAZNX2w+mYvY9Jspj1a/jmLUeo6az7vtPMHiMOWE/v873b71afiXP4yh83vz/wlgFBQ==
X-Received: by 2002:adf:fc85:0:b0:21e:5922:1965 with SMTP id g5-20020adffc85000000b0021e59221965mr11543154wrr.299.1658845797585;
        Tue, 26 Jul 2022 07:29:57 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m20-20020a05600c4f5400b003976fbfbf00sm20140972wmq.30.2022.07.26.07.29.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 07:29:57 -0700 (PDT)
Message-ID: <7effe1a8-c1b4-5542-932a-7edf436036ce@gmail.com>
Date:   Tue, 26 Jul 2022 16:29:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] man-pages.7: Document CAVEATS section
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org
References: <20220726120817.100462-1-alx.manpages@gmail.com>
 <Yt/yMJuhXd+jH3sp@asta-kit.de>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Yt/yMJuhXd+jH3sp@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Xk5JnM5IpSjvCPqiUpj8hH0R"
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
--------------Xk5JnM5IpSjvCPqiUpj8hH0R
Content-Type: multipart/mixed; boundary="------------LX2Wwc23PX0vkimbgvTipzT1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org
Message-ID: <7effe1a8-c1b4-5542-932a-7edf436036ce@gmail.com>
Subject: Re: [PATCH] man-pages.7: Document CAVEATS section
References: <20220726120817.100462-1-alx.manpages@gmail.com>
 <Yt/yMJuhXd+jH3sp@asta-kit.de>
In-Reply-To: <Yt/yMJuhXd+jH3sp@asta-kit.de>

--------------LX2Wwc23PX0vkimbgvTipzT1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gNy8yNi8yMiAxNTo1NCwgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNCj4g
SGkgQWxlamFuZHJvLA0KPiANCj4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24gVHVlLCBK
dWwgMjYsIDIwMjIgYXQgMDI6MDg6MThQTSArMDIwMDoNCj4gDQo+PiBDQVZFQVRTIGlzIGFu
IGludGVyZXN0aW5nIHNlY3Rpb24gZnJvbSBPcGVuQlNELg0KPiANCj4gSXQgaXMgbm8gZG91
YnQgbmljZSB3aGVuIGNyZWRpdCBpcyBnaXZlbiB0byBPcGVuQlNELA0KPiBidXQgaW4gdGhp
cyBjYXNlLCBpdCBoYXBwZW5zIHRvIGJlIHVuZGVzZXJ2ZWQuICA7LSkNCj4gDQo+IEkgc2Vl
IHRoZSBmb2xsb3dpbmcgZWFybHkgdXNlcyBvZiAiLlNIIENBVkVBVFMiOg0KPiANCj4gICAq
IDQuMkJTRCBleGVjdmUoMiksIHJlbGVhc2VkIFNlcHRlbWJlciAxOTgzLCBhdXRob3IgdW5r
bm93bg0KPiAgICogNC4zQlNELVRhaG9lIHBhdGNoKDEpLCByZWxlYXNlZCBKdW5lIDE5ODgs
IGF1dGhvcjogTGFycnkgV2FsbA0KPiAgICogNC4zQlNELVJlbm8gYW1kKDgpLCByZWxlYXNl
ZCBKdW5lIDE5OTAsIGF1dGhvcjogSmFuLVNpbW9uIFBlbmRyeQ0KPiAgICogNC40QlNEIHN0
cmZ0aW1lKDMpLCByZWxlYXNlZCBKdW5lIDE5OTMsIGF1dGhvcjogQXJub2xkIFJvYmJpbnMN
Cj4gICAqIDQuNEJTRCBnemlwKDEpLCByZWxlYXNlZCBKdW5lIDE5OTMsIGF1dGhvciAodW5z
dXJlKSBKZWFuLWxvdXAgR2FpbGx5ID8NCj4gICAqIDQuNEJTRCBtb3VudF9rZXJuZnMoOCks
IHJlbGVhc2VkIEp1bmUgMTk5MywgYXV0aG9yOiBKYW4tU2ltb24gUGVuZHJ5DQo+IA0KPiBU
aGUgZmlyc3QgaW5zdGFuY2Ugb2YgIi5TaCBDQVZFQVRTIiBpIGZvdW5kIGlzOg0KPiANCj4g
ICAqIDQuNEJTRC1MaXRlMSByZWFscGF0aCgzKSwgcmVsZWFzZWQgQXByaWwgMTk5NCwgYXV0
aG9yIEtlaXRoIEJvc3RpYw0KPiANCj4gSXQgZG9lc24ndCBsb29rIGFzIGlmIHRoZSBVQyBD
U1JHIHVzZWQgQ0FWRUFUUyBpbiBhZGRpdGlvbmFsIGZpbGVzLg0KPiANCj4gU3RhbmRhcmRp
emF0aW9uIHdhcyBkZWNpZGVkIGluIE5ldEJTRCBkdXJpbmcgYSBkaXNjdXNzaW9uDQo+IG9u
IDx0ZWNoLXVzZXJsZXZlbEBuZXRic2Qub3JnPiBsZWFkaW5nIHRvIHRoaXMgY29tbWl0Og0K
PiANCj4gICAgL3NyYy9zaGFyZS9taXNjL21kb2MudGVtcGxhdGUgcmV2aXNpb24gMS42DQo+
ICAgIGRhdGU6IDIwMDItMDctMTAgMDk6NDU6MTggKzAwMDA7ICBhdXRob3I6IHlhbXQ7ICBz
dGF0ZTogRXhwOyAgbGluZXM6ICsyIC0xOw0KPiAgICBhZGQgQ0FWRUFUUyBzZWN0aW9uLiBk
aXNjdXNzZWQgb24gdGVjaC11c2VybGV2ZWwuDQo+IA0KPiBUaGUgbG9naW4gbmFtZSAieWFt
dCIgYmVsb25ncyB0byBZQU1BTU9UTyBUYWthc2hpLg0KPiANCj4gSXQgd2FzIHRoZW4gcXVp
Y2tseSBwaWNrZWQgdXAgaW4gT3BlbkJTRCBieSBKYXNvbiBNY0ludHlyZS4NCj4gDQo+IFNv
IHRoZSBzZWN0aW9uIGhhcyBhIHRyYWRpdGlvbiBvZiBhbG1vc3QgNDAgeWVhcnMgYW5kIGhh
cyBiZWVuDQo+IHN0YW5kYXJkaXplZCBpbiAqQlNEIGZvciBhYm91dCB0d28gZGVjYWRlcywg
ZXZlbiB0aG91Z2ggaXQgd2FzDQo+IG5vdCBvcmlnaW5hbGx5IGEgQlNEIGludmVudGlvbi4N
Cg0KV2Fzbid0IGl0IGEgQlNEIGludmVudGlvbj8gIFRoZSBzb3VyY2VzIHlvdSBtZW50aW9u
ZWQgc2VlbSB0byBzYXkgaXQgaXMuDQoNCldvdWxkIGl0IGJlIGNvcnJlY3QgdG8gc2F5ICIu
Li4gc2VjdGlvbiBmcm9tIHRoZSBCU0RzIj8NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0K
QWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4N
Cg==

--------------LX2Wwc23PX0vkimbgvTipzT1--

--------------Xk5JnM5IpSjvCPqiUpj8hH0R
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLf+l0ACgkQnowa+77/
2zK60hAAob/QsR+OrqYyogEP8D7MbVOAkQYB7keFbwZHlyBf5G5i9QRo+JQujHJ3
zYF30MihX3BfLngDC9HTpe8qYgjGfrM+uy3z9hZvO9DkoLPmqQdtgx1PgWir/gLY
08ozwePqZrWRc13whBTtOiMBrOTigrFLS1rURcIaIqBukHo/rtKxwbzz+xGxGPVC
tfTFoREUVSDc01zgZop7eEt0pmuzTpoKFuusWFhUPLEzKwPK/RIznG5L96m6RwNb
4Gg5HGv4X4BFkAmvkGQbmOifUpbWgqfGNelMHztARmv5zLuy8pHiapy3xkHwY+TL
1JpurFNk3DB16VqN22wGrj5gLOS1IwkV3ll0E1rJsmdsbJY/nn69WaMj5uIB1cc7
Ab0mvFiFX6+RRUfAfUbpaCBkbBJuFAc4vsw4v5czAkxiIeQTTZJ47UNyjMyc5lAb
BH/9dV4TVq1z/AMmPLrhySewvRavzVwji1aeUFz+Z7EugxxuO00gKqOCSfhkHbQN
N6K8a38wShaR6qvwuEjvAD4R44+6qaDIG1TtVsHkghmq9tQl+zodGcq9TmvjOdtm
R84J9Rc3odmY9sDL9h6dVAJpOiH9Ba6qsm0kdqilJ1TJ4XCD/c5nm6mTtvWz3geM
nuTkl8E3bJ690BU6/1xJwfM0FBUqVvGTABRXET+u1k/7OFyxDrs=
=ptVi
-----END PGP SIGNATURE-----

--------------Xk5JnM5IpSjvCPqiUpj8hH0R--
