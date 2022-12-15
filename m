Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F35DA64D4A9
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 01:28:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiLOA2q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 19:28:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbiLOA2o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 19:28:44 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE3601E716
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:28:42 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id m5-20020a7bca45000000b003d2fbab35c6so339224wml.4
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8wFtdcwJ/8vwR/WEnkKn9hJZes4jLnRmrQgv0IW5gec=;
        b=c5lBav5ZYyUk7jRyMFZYAyBzK+gcBsvYCw3z37n4P34L58IYc+MjaTPsjJhnduuICr
         kYykoMhreH9Qcp5LCV4XUtP5NbKbl/YPexYNPznD5F8EhP0pKIV4TpF39rN9y9//+4HN
         OHOJWiHY2FugP4H6nfu7AMf5IgypztI9VeH1UOd0bmX+bcn5cyJARFxNM7Obf5Y08mqN
         FIHMrdhrBO/XN0/Soh5mCWyT0XCRB36VmNXRvDUGdGEKDEECXrzJLNGNQ58muJlQfmNL
         +0YDgi/DL0uLRFOml9JY+Un4FzEabci9+Q0HPabl577c2sdnUZHHIy4xWG68L8/7VzG5
         ++AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8wFtdcwJ/8vwR/WEnkKn9hJZes4jLnRmrQgv0IW5gec=;
        b=dtTtOUn/FT2MMgHJhNuN27OelcFX92+rerMV9Bc8cHhfovUbb0b0tnMdeInpdwgMFE
         fQysDYxIEvORhuLsWphJN+lbN1Dbs9r9NoffULr0d4AVclGzTTf0R21uiYJPHRw+eCUP
         Jxv/QC04z0isy/kIlAEc2mXsL53DIdNqkeTBleEUtQwCfrJLGrxvJs2MZDr2DoomgarJ
         WSnRrCL7Dm6S83NFCY8B4xu+7EaoajelU1qVVqWg0QCuvJ6IziunSLGzo/DQ5lUQZy0X
         cgGGQUXRns3cEucGxdXx6bQT+nD1rr1H1AzRoRcgCGbKYNNMj1L03nzmprPMwfFmYVIl
         lo2A==
X-Gm-Message-State: ANoB5pne3HhJvYxU0zMDv9bCkeElwgRBowuIpRtpHh2uo00b8HgbLhJp
        MfXD9z+1FXmWi85aO+zSVbGBVZQtaoA=
X-Google-Smtp-Source: AA0mqf74ZMKIXge2c4uFTsp3pVVu30DOYdiu72aNWlgAxk7TxKlw0u/tF8HYqkY6TkvpCUIp/KY4pQ==
X-Received: by 2002:a05:600c:4e0e:b0:3cf:b73f:c061 with SMTP id b14-20020a05600c4e0e00b003cfb73fc061mr19382411wmq.16.1671064121469;
        Wed, 14 Dec 2022 16:28:41 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k15-20020a05600c0b4f00b003a3170a7af9sm4063145wmr.4.2022.12.14.16.28.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 16:28:40 -0800 (PST)
Message-ID: <aed70aa6-8ef0-ac8f-4aab-a2911e72d95f@gmail.com>
Date:   Thu, 15 Dec 2022 01:28:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v5 4/5] stpncpy.3, strncpy.3: Document in a single page
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-5-alx@kernel.org>
In-Reply-To: <20221215002648.35111-5-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9HHr0IOCyJ1JRpI5FrdiAKLn"
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
--------------9HHr0IOCyJ1JRpI5FrdiAKLn
Content-Type: multipart/mixed; boundary="------------760g7ore08YwWWRDLV97zeT2";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, Jakub Wilk
 <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
 Iker Pedrosa <ipedrosa@redhat.com>, Andrew Pinski <pinskia@gmail.com>
Message-ID: <aed70aa6-8ef0-ac8f-4aab-a2911e72d95f@gmail.com>
Subject: Re: [PATCH v5 4/5] stpncpy.3, strncpy.3: Document in a single page
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-5-alx@kernel.org>
In-Reply-To: <20221215002648.35111-5-alx@kernel.org>

--------------760g7ore08YwWWRDLV97zeT2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

Rm9ybWF0dGVkIHN0cG5jcHkoMyk6DQoNCnN0cG5jcHkoMykgICAgICAgICAgICAgICAgIExp
YnJhcnkgRnVuY3Rpb25zIE1hbnVhbCAgICAgICAgICAgICAgICAgc3RwbmNweSgzKQ0KDQpO
QU1FDQogICAgICAgIHN0cG5jcHksICBzdHJuY3B5ICAtIHplcm8gYSBmaXhlZOKAkHdpZHRo
IGJ1ZmZlciBhbmQgY29weSBhIHN0cmluZyBpbnRvIGENCiAgICAgICAgY2hhcmFjdGVyIHNl
cXVlbmNlIHdpdGggdHJ1bmNhdGlvbiBhbmQgemVybyB0aGUgcmVzdCBvZiBpdA0KDQpMSUJS
QVJZDQogICAgICAgIFN0YW5kYXJkIEMgbGlicmFyeSAobGliYywgLWxjKQ0KDQpTWU5PUFNJ
Uw0KICAgICAgICAjaW5jbHVkZSA8c3RyaW5nLmg+DQoNCiAgICAgICAgY2hhciAqc3RwbmNw
eShjaGFyIGRzdFtyZXN0cmljdCAuc3pdLCBjb25zdCBjaGFyICpyZXN0cmljdCBzcmMsDQog
ICAgICAgICAgICAgICAgICAgICAgIHNpemVfdCBzeik7DQogICAgICAgIGNoYXIgKnN0cm5j
cHkoY2hhciBkc3RbcmVzdHJpY3QgLnN6XSwgY29uc3QgY2hhciAqcmVzdHJpY3Qgc3JjLA0K
ICAgICAgICAgICAgICAgICAgICAgICBzaXplX3Qgc3opOw0KDQogICAgRmVhdHVyZSBUZXN0
IE1hY3JvIFJlcXVpcmVtZW50cyBmb3IgZ2xpYmMgKHNlZSBmZWF0dXJlX3Rlc3RfbWFjcm9z
KDcpKToNCg0KICAgICAgICBzdHBuY3B5KCk6DQogICAgICAgICAgICBTaW5jZSBnbGliYyAy
LjEwOg0KICAgICAgICAgICAgICAgIF9QT1NJWF9DX1NPVVJDRSA+PSAyMDA4MDlMDQogICAg
ICAgICAgICBCZWZvcmUgZ2xpYmMgMi4xMDoNCiAgICAgICAgICAgICAgICBfR05VX1NPVVJD
RQ0KDQpERVNDUklQVElPTg0KICAgICAgICBUaGVzZSBmdW5jdGlvbnMgY29weSB0aGUgc3Ry
aW5nIHBvaW50ZWQgdG8gYnkgc3JjICBpbnRvICBhICBudWxs4oCQcGFkZGVkDQogICAgICAg
IGNoYXJhY3RlciBzZXF1ZW5jZSBhdCB0aGUgZml4ZWTigJB3aWR0aCBidWZmZXIgcG9pbnRl
ciB0byBieSBkc3QuICBJZiB0aGUNCiAgICAgICAgZGVzdGluYXRpb24gYnVmZmVyLCBsaW1p
dGVkIGJ5IGl0cyBzaXplLCBpc27igJl0IGxhcmdlIGVub3VnaCB0byBob2xkIHRoZQ0KICAg
ICAgICBjb3B5LCAgdGhlIHJlc3VsdGluZyBjaGFyYWN0ZXIgc2VxdWVuY2UgaXMgdHJ1bmNh
dGVkLiAgVGhleSBvbmx5IGRpZmZlcg0KICAgICAgICBpbiB0aGUgcmV0dXJuIHZhbHVlLg0K
DQogICAgICAgIEFuIGltcGxlbWVudGF0aW9uIG9mIHRoZXNlIGZ1bmN0aW9ucyBtaWdodCBi
ZToNCg0KICAgICAgICAgICAgY2hhciAqDQogICAgICAgICAgICBzdHBuY3B5KGNoYXIgKnJl
c3RyaWN0IGRzdCwgY29uc3QgY2hhciAqcmVzdHJpY3Qgc3JjLCBzaXplX3Qgc3opDQogICAg
ICAgICAgICB7DQogICAgICAgICAgICAgICAgYnplcm8oZHN0LCBzeik7DQogICAgICAgICAg
ICAgICAgcmV0dXJuIG1lbXBjcHkoZHN0LCBzcmMsIHN0cm5sZW4oc3JjLCBzeikpOw0KICAg
ICAgICAgICAgfQ0KDQogICAgICAgICAgICBjaGFyICoNCiAgICAgICAgICAgIHN0cm5jcHko
Y2hhciAqcmVzdHJpY3QgZHN0LCBjb25zdCBjaGFyICpyZXN0cmljdCBzcmMsIHNpemVfdCBz
eikNCiAgICAgICAgICAgIHsNCiAgICAgICAgICAgICAgICBzdHBuY3B5KGRzdCwgc3JjLCBz
eik7DQogICAgICAgICAgICAgICAgcmV0dXJuIGRzdDsNCiAgICAgICAgICAgIH0NCg0KUkVU
VVJOIFZBTFVFDQogICAgICAgIHN0cG5jcHkoKQ0KICAgICAgICAgICAgICAgcmV0dXJucyBh
IHBvaW50ZXIgdG8gb25lIGFmdGVyIHRoZSBsYXN0IGNoYXJhY3RlciBpbiB0aGUgIGRlc3Rp
4oCQDQogICAgICAgICAgICAgICBuYXRpb24gY2hhcmFjdGVyIHNlcXVlbmNlLg0KDQogICAg
ICAgIHN0cm5jcHkoKQ0KICAgICAgICAgICAgICAgcmV0dXJucyBkc3QuDQoNCkFUVFJJQlVU
RVMNCiAgICAgICAgRm9yICBhbiAgZXhwbGFuYXRpb24gIG9mICB0aGUgIHRlcm1zICB1c2Vk
IGluIHRoaXMgc2VjdGlvbiwgc2VlIGF0dHJpYuKAkA0KICAgICAgICB1dGVzKDcpLg0KICAg
ICAgICDilIzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKzilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilKzilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilJANCiAgICAgICAg4pSCSW50ZXJmYWNlICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICDilIIgQXR0cmlidXRlICAgICDilIIgVmFsdWUgICDilIINCiAgICAgICAg4pSc
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS84pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pS84pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSkDQog
ICAgICAgIOKUgnN0cG5jcHkoKSwgc3RybmNweSgpICAgICAgICAgICAgICAgICAgICAgICAg
4pSCIFRocmVhZCBzYWZldHkg4pSCIE1U4oCQU2FmZSDilIINCiAgICAgICAg4pSU4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSYDQoNClNUQU5E
QVJEUw0KICAgICAgICBzdHBuY3B5KCkNCiAgICAgICAgICAgICAgIFBPU0lYLjHigJAyMDA4
Lg0KDQogICAgICAgIHN0cm5jcHkoKQ0KICAgICAgICAgICAgICAgUE9TSVguMeKAkDIwMDEs
IFBPU0lYLjHigJAyMDA4LCBDODksIEM5OSwgU1ZyNCwgNC4zQlNELg0KDQpDQVZFQVRTDQog
ICAgICAgIFRoZSBuYW1lIG9mIHRoZXNlIGZ1bmN0aW9ucyBpcyBjb25mdXNpbmcuICBUaGVz
ZSAgZnVuY3Rpb25zICBwcm9kdWNlICBhDQogICAgICAgIG51bGzigJBwYWRkZWQgY2hhcmFj
dGVyIHNlcXVlbmNlLCBub3QgYSBzdHJpbmcgKHNlZSBzdHJpbmdfY29weSg3KSkuDQoNCiAg
ICAgICAgVHJ1bmNhdGlvbiAgc2hvdWxkICBiZSAgZGV0ZXJtaW5lZCBieSBjb21wYXJpbmcg
dGhlIGxlbmd0aCBvZiB0aGUgaW5wdXQNCiAgICAgICAgc3RyaW5nIHdpdGggdGhlIHNpemUg
b2YgdGhlIGRlc3RpbmF0aW9uIGJ1ZmZlci4NCg0KICAgICAgICBJZiB5b3XigJlyZSBnb2lu
ZyB0byB1c2UgdGhpcyBmdW5jdGlvbiBpbiBjaGFpbmVkIGNhbGxzLCBpdCB3b3VsZCBiZSB1
c2XigJANCiAgICAgICAgZnVsIHRvIGRldmVsb3AgYSBzaW1pbGFyIGZ1bmN0aW9uIHRoYXQg
YWNjZXB0cyBhIHBvaW50ZXIgIHRvICBvbmUgIHBhc3QNCiAgICAgICAgdGhlIGVuZCBvZiB0
aGUgZGVzdGluYXRpb24gYnVmZmVyIGluc3RlYWQgb2YgaXRzIHNpemUuDQoNCkVYQU1QTEVT
DQogICAgICAgICNpbmNsdWRlIDxlcnIuaD4NCiAgICAgICAgI2luY2x1ZGUgPHN0ZGlvLmg+
DQogICAgICAgICNpbmNsdWRlIDxzdGRsaWIuaD4NCiAgICAgICAgI2luY2x1ZGUgPHN0cmlu
Zy5oPg0KDQogICAgICAgIGludA0KICAgICAgICBtYWluKHZvaWQpDQogICAgICAgIHsNCiAg
ICAgICAgICAgIGNoYXIgICAgKmVuZDsNCiAgICAgICAgICAgIGNoYXIgICAgYnVmMVsyMF07
DQogICAgICAgICAgICBjaGFyICAgIGJ1ZjJbMjBdOw0KICAgICAgICAgICAgc2l6ZV90ICBs
ZW47DQoNCiAgICAgICAgICAgIGlmIChzaXplb2YoYnVmMSkgPCBzdHJsZW4oIkhlbGxvIHdv
cmxkISIpKQ0KICAgICAgICAgICAgICAgIHdhcm54KCJzdHBuY3B5OiB0cnVuY2F0aW5nIGNo
YXJhY3RlciBzZXF1ZW5jZSIpOw0KICAgICAgICAgICAgZW5kID0gc3RwbmNweShidWYxLCAi
SGVsbG8gd29ybGQhIiwgc2l6ZW9mKGJ1ZjEpKTsNCiAgICAgICAgICAgIGxlbiA9IGVuZCAt
IGJ1ZjE7DQoNCiAgICAgICAgICAgIHByaW50ZigiW2xlbiA9ICV6dV06ICIsIGxlbik7DQog
ICAgICAgICAgICBwcmludGYoIiUuKnNcbiIsIChpbnQpIGxlbiwgYnVmMSk7ICAvLyAiSGVs
bG8gd29ybGQhIg0KDQogICAgICAgICAgICBpZiAoc2l6ZW9mKGJ1ZjIpIDwgc3RybGVuKCJI
ZWxsbyB3b3JsZCEiKSkNCiAgICAgICAgICAgICAgICB3YXJueCgic3RybmNweTogdHJ1bmNh
dGluZyBjaGFyYWN0ZXIgc2VxdWVuY2UiKTsNCiAgICAgICAgICAgIHN0cm5jcHkoYnVmMiwg
IkhlbGxvIHdvcmxkISIsIHNpemVvZihidWYpKTsNCiAgICAgICAgICAgIGxlbiA9IHN0cm5s
ZW4oYnVmMiwgc2l6ZW9mKGJ1ZjIpKTsNCg0KICAgICAgICAgICAgcHJpbnRmKCJbbGVuID0g
JXp1XTogIiwgbGVuKTsNCiAgICAgICAgICAgIHByaW50ZigiJS4qc1xuIiwgKGludCkgbGVu
LCBidWYyKTsgIC8vICJIZWxsbyB3b3JsZCEiDQoNCiAgICAgICAgICAgIGV4aXQoRVhJVF9T
VUNDRVNTKTsNCiAgICAgICAgfQ0KDQpTRUUgQUxTTw0KICAgICAgICB3Y3BuY3B5KDMpLCBz
dHJpbmdfY29weSg3KQ0KDQpMaW51eCBtYW7igJBwYWdlcyAodW5yZWxlYXNlZCkgICAgICAg
IChkYXRlKSAgICAgICAgICAgICAgICAgICAgICAgICAgc3RwbmNweSgzKQ0KDQotLSANCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------760g7ore08YwWWRDLV97zeT2--

--------------9HHr0IOCyJ1JRpI5FrdiAKLn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaajcACgkQnowa+77/
2zLrNhAAjo/cJwdjsrmb+NQCi8gFfVpFHJYvd5Bd7sL1Y8kFudc9cR3u7k+DXPV5
oJu9WdE/eWdB/E1nTTU4T6nniUj+2RECA15G4l7TJ7DUuZLlAMIDjPVKQpI1gvmQ
lU7OvA83O8ktMp80SoTC1HRJ77dkvheveZDNP/KhVY7mpIHHCIkZjyXVG7YvjO/P
PxpdbBHVzh+Y2KOQH+fUoUQLrIB8rcXMtiWGmibEkNn+nil0yR5g3yghIbz8mz2Z
PhAm51OMtmrDnvDmrvy6XOlfE7tEu1nDKwlspae7ouOs1CpFxSC2EQ3Ud+4CTCC3
QLbTI9Bvo3OiJ8aKL8UUE7d0KP1brbS6ez9KahPve93o41kXodNOCxyoqegbu9FL
18wEi6Ocwst3Zqzm/7jZfNw1fWuxwIQsRuygFDQJlNoaN0n0drzgx2XIV+85qrOM
1mAbmQvuK43aYaTl1F8uL2zhhKuXx6yFFo4BT6Kqq+1xlW/mxM4+M2LxG0fAyHtY
Ij5VrV2t3AC2SIGtJtGWkVv0cteaoRlYjiy4K8jtzTxTFRF02mB21MRMgcyFvgmW
Ik+VXKLpXtvhWbBwn9gYyHWujA/B/m/+ON/7fkymyb8GTnDDHi0P/OCGCxuYu4gL
kG6kDZm6MRPvktFGhzbDjJCJBAJSjh96RtINfqPwiVaUFyazIU0=
=Oi9M
-----END PGP SIGNATURE-----

--------------9HHr0IOCyJ1JRpI5FrdiAKLn--
