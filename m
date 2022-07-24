Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2B3257F5F8
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 18:17:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbiGXQR4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 12:17:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbiGXQRz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 12:17:55 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B03BBDFA9
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 09:17:53 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id r188-20020a1c44c5000000b003a34ac64bdfso1035259wma.1
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 09:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :content-language:from:in-reply-to;
        bh=vcRNfD4lGYXbSYZwtf/XUQqAsQ4W3KGFH8pX/PChhAM=;
        b=G8g77pb5O68d77VyTfD4HtYhN8w1Xrpifca2SzNzpVEdxmbZvBGghW6AWiwmgnmxCA
         uesnQ3mlb258AjGWlvaBrwwa7gdrK2mctw5ApJbcLuKOR8SCOeOKlE1SywiSZ6Md364n
         kfLM2CRX6+D5YoXud8cGgxxEI9sGWOGHxzsVVwN7ykATWQymAHHE+Xm2bay4DfmdZfHf
         RvjNN7djXtH1PGg6Hed6OPntezD1BDTuWIq8jw4oQvK4tsGXf3bEUREYwHiOLekzJxpa
         eXR/GarEv68zrl+Vw5ZxnEA50zTqXunxWchD3S4EESAvl1vmg82l929ykSM3JfgTJ/Q5
         IaOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:content-language:from:in-reply-to;
        bh=vcRNfD4lGYXbSYZwtf/XUQqAsQ4W3KGFH8pX/PChhAM=;
        b=X5LKSiRDYRhLHeBCyeNHU3F37vlPYhIoHe8WnrtsbPkCnDVPs0+WTZ/wXnhuqAOJTO
         K5q56eYnoAM1jvZuEQSFy4tkuvrQg+VuX6ile1/8nCOI3mFc0eVbWOdkXW83tIM4+H8Z
         wuZtp3If6tiQU+NN9xhXewOaElQweDVhPoOc72BHCwneSVD2octHLqWsJTG2x6KO9wbj
         AclXLvtaqNhTFgMgVZg9V+IpmHTKektxC74dTRjkO/6ewPK/hw0x47/gaS8nYDjKbgHv
         ytcZp/BS8QramDhL1B/ipafl4K4gmZvtS0ulzAU3HJPpE83H4XAPqEcESMJsPR/bMhnQ
         ZKWw==
X-Gm-Message-State: AJIora91AMC5vBAk1hR6FNrC4/Om4/fOmrdEeKXIGP6RqauL0KQb5+gA
        ak2tFfZnuKDumWvPCZc7xRw=
X-Google-Smtp-Source: AGRyM1s0O1+5Pky4RpXtmDDn5uYtb9/ipW8tR1FFQsr9XJgSHyKptwKRNLQtEUNQ2ItUvJ+M4+zrAg==
X-Received: by 2002:a05:600c:3b07:b0:3a3:1433:10b5 with SMTP id m7-20020a05600c3b0700b003a3143310b5mr5840031wms.129.1658679472173;
        Sun, 24 Jul 2022 09:17:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m6-20020a7bce06000000b003a35516ccc3sm2338851wmc.26.2022.07.24.09.17.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jul 2022 09:17:51 -0700 (PDT)
Message-ID: <9e8a291d-672f-baec-3980-ae265712bd7b@gmail.com>
Date:   Sun, 24 Jul 2022 18:17:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: man -M tcl (was: All caps .TH page title)
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Yt1dz0+xfRuyCcXo@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pjBX4VSO05cxBwBQzX0d01iO"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pjBX4VSO05cxBwBQzX0d01iO
Content-Type: multipart/mixed; boundary="------------RhUA9xoBNLCXtCKTQNx964N0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: g.branden.robinson@gmail.com, linux-man@vger.kernel.org, groff@gnu.org
Message-ID: <9e8a291d-672f-baec-3980-ae265712bd7b@gmail.com>
Subject: man -M tcl (was: All caps .TH page title)
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
In-Reply-To: <Yt1dz0+xfRuyCcXo@asta-kit.de>

--------------RhUA9xoBNLCXtCKTQNx964N0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gNy8yNC8yMiAxNjo1NywgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNClsu
Li5dDQo+PiBJJ20gbm90IGhhcHB5IHdpdGggdGhpcyBhcHByb2FjaC4gIEkgZG9uJ3Qgd2Fu
dCB0byBiZSB0eXBpbmcgcGF0aHMgZm9yDQo+PiBzeXN0ZW0gc3R1ZmYgKHlvdXIgL3Vzci9s
b2NhbCBpcyAvdXNyIGluIEdOVS9MaW51eCBzeXN0ZW1zOw0KPiANCj4gVGhlbiB1c2UgYW4g
YWxpYXMgbGlrZQ0KPiANCj4gICAgYWxpYXMgdGNsbWFuPSdtYW4gLU0gL3Vzci9sb2NhbC9s
aWIvdGNsL3RjbDguNS9tYW4vJw0KPiANCj4gSXQncyBub3QgbGlrZSB1c2VycyBhcmUgbm9y
bWFsbHkgdXNpbmcgZG96ZW5zIG9mIGRpZmZlcmVudCBsYW5ndWFnZXMNCj4gYXQgdGhlIHNh
bWUgdGltZSwgbm9yIGlzIHRoZSBudW1iZXIgb2YgbGFuZ3VhZ2VzIHRoYXQgcHJvdmlkZSBh
DQo+IGNvbGxlY3Rpb24gb2YgbWFudWFsIHBhZ2VzIHZlcnkgc2lnbmlmaWNhbnQuICBTbyB0
aGVyZSBpc24ndCBhbnkNCj4gcmVhbC13b3JsZCBwcm9ibGVtIHRoYXQgbmVlZHMgc29sdmlu
Zy4NCj4gDQo+IEkgZXZlbiBjb25zaWRlcmVkIHN1cHBvcnRpbmcgYWxpYXNlcyBmb3IgbWFu
cGF0aCBkaXJlY3Rvcmllcw0KPiBpbiBtYW4uY29uZig1KSwgc29tZXRoaW5nIGxpa2UgYmVp
bmcgYWJsZSB0byBzYXkNCj4gDQo+ICAgIGFsaWFzIHRjbCAvdXNyL2xvY2FsL2xpYi90Y2wv
dGNsOC41L21hbi8NCj4gDQo+IGluIC9ldGMvbWFuLmNvbmYgYW5kIHRoZW4gYmVpbmcgYWJs
ZSB0byBzYXkNCj4gDQo+ICAgIG1hbiAtTSB0Y2wgb3Blbg0KDQpOb3cgd2UncmUgdGFsa2lu
Zy4gIEkndmUgbG9uZyBtaXNzZWQgc3VjaCBhIHRoaW5nLg0KTGV0J3MgcGxlYXNlIGRpc2N1
c3MgaXQuDQoNCkkgd29uZGVyZWQgZm9yIGEgbG9uZyB0aW1lIHdoYXQgaGFwcGVucyBpZiB5
b3UgY3JlYXRlIHN1YmRpcnMgd2l0aGluIGEgDQptYW4/IHNlY3Rpb24uICBIb3cgZG8gbWFu
KDEpcyBoYW5kbGUgPC91c3Ivc2hhcmUvbWFuL21hbjMvcHl0aG9uL2Zvby4zPj8NCg0KV291
bGQgeW91ciAtTSByZXF1aXJlIHRoYXQgdGhlIHBhZ2VzIGxpdmUgaW4gYSBzZXBhcmF0ZSBw
YXRoPyAgT3IgY291bGQgDQppdCBzdXBwb3J0IHN1YnBhdGhzPw0KDQo+IA0KPiBEaXNjbGFp
bWVyOiB0aGUgYWJvdmUgaXMgbm90IGEgZmluaXNoZWQgZGVzaWduLCBqdXN0IGEgcHJlbGlt
aW5hcnkNCj4gaWRlYS4gIEJ1dCBpJ20gdmVyeSBjZXJ0YWluIHRoYXQgLU0gb3Igc29tZXRo
aW5nIGRlcml2ZWQgZnJvbSAtTQ0KPiBpcyB0aGUgdG9vbCBmb3IgdGhlIGpvYiBhbmQgLXMg
b3Igc29tZXRoaW5nIGRlcml2ZWQgZnJvbSAtcyBpcyBub3QuDQo+IEJlY2F1c2Ugd2hlbiB5
b3Ugd2FudCBhIHB5dGhvbiBtYW51YWwgcGFnZSwgeW91IG1vc3QgZGVmaW5pdGVseSB3YW50
DQo+ICJQeXRob24gb25seSIgYW5kIGl0IHNlcnZlcyBubyBwdXJwb3NlIHdoYXRzb2V2ZXIg
dG8gc2VhcmNoIHRocm91Z2gNCj4gdmFyaW91cyB0cmVlcyBhbmQgdmFyaW91cyBzZWN0aW9u
cywgYW5kIGxlYXN0IG9mIGFsbCB0byBiYWRseSBkZXNpZ24NCj4gYSBzdHJpbmctYmFzZWQg
Y29tcG9zaXRlIGRhdGEgdHlwZSBsaWtlICJudW1iZXJfbGFuZ3VhZ2UiOiB0aGF0IGNhdXNl
cw0KPiBhbGwgdGhlIGFtYmlndWl0eSBhbmQgY29uZnVzaW9uIHlvdSBhcmUgYWxyZWFkeSBk
aXNjdXNzaW5nLCBhbmQNCj4gaXQgaXMgZXJyb3ItcHJvbmUgYW5kIGZyYWdpbGUgaW4gdGhl
IHBhcnNlciBvbiB0b3Agb2YgdGhhdC4NCj4gDQo+IEFsc28sIHRoZSBjb25jZXB0IG9mICJm
b3Igd2hpY2ggbGFuZ3VhZ2UiIGFuZCB0aGUgY29uY2VwdCBvZiBzZWN0aW9ucw0KPiBhcmUg
b3J0aG9nbmFsLiAgQSBwcm9ncmFtbWluZyBsYW5nYXVnZSBzeXN0ZW0gdXN1YWxseSBwcm92
aWRlcw0KPiB1dGlsaXR5IHByb2dyYW1zICgxKSwgbGlicmFyeSBmdW5jdGlvbnMgKDMpLCBm
aWxlIGZvcm1hdHMoNSksDQo+IGFkbWluaXN0cmF0aW9uIHRvb2xzICg4KSwgYW5kIHNvIG9u
Lg0KDQpBZ3JlZS4NCg0KPiANCj4gVGhlIHJlYXNvbiBpIGRpZG4ndCBwdXJzdWUgdGhlIG1h
bi5jb25mKDUpIGFsaWFzIGlkZWEgc28gZmFyIGlzIHRoYXQNCj4gdGhlIHByYWN0aWNhbCBu
ZWVkIGZvciBpdCBpcyB2ZXJ5IGxpbWl0ZWQuICBObyBvbmUgZXZlciBhc2tlZCBtZSBmb3IN
Cj4gaXQgYXMgZmFyIGFzIGkgcmVjYWxsLCBzaGVsbCBhbGlhc2VzIGRvIHRoZSBqb2IganVz
dCBmaW5lLiA+DQo+IA0KPj4gSWYgeW91IHdhbnQgdG8gc2VhcmNoIHBhZ2VzIGluIHNlY3Rp
b24gM3R5cGUsIGBtYW4gLXMzdHlwZSByZWdleGAuDQo+PiBIb3dldmVyLCBoYXZpbmcgc29t
ZSBwYWdlcyBpbiBzdWJzZWN0aW9ucyBvZiAzLCBhbmQgb3RoZXJzIGluIHRoZSBtYWluIDMN
Cj4+IHNlY3Rpb24sIGlzIGdvb2QgZm9yIHBhZ2VzIGluIHN1YnNlY3Rpb25zLCBidXQgYmFk
IGZvciBwYWdlcyBpbiB0aGUgbWFpbg0KPj4gc2VjdGlvbiAoYG1hbiAtczMgcmVnZXhgIHdv
dWxkIHNob3cgYWxsIG9mIHRoZSBzdWJzZWN0aW9ucycgcGFnZXMpLg0KPj4gVGhhdCBoYXMg
YSBzaW1wbGUgc29sdXRpb246IG1vdmUgbGliYyBwYWdlcyB0byBtYW4zYyAoYW5kIGxpYm0g
dG8gbWFuM20sDQo+PiAuLi4pLiAgU2luY2UgYG1hbiAzIHByaW50ZmAgd2lsbCBjb250aW51
ZSB3b3JraW5nIGlmIHRoaXMgY2hhbmdlIGlzDQo+PiBkb25lLCBpdCBkb2Vzbid0IHNlZW0g
dG8gaGF2ZSBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSBpc3N1ZXMuDQo+IA0KPiBXaGlsZSB0
aGUgZWZmZWN0IG9uIHRoZSBlbmQgdXNlciBpcyBpbmRlZWQgbGltaXRlZCwgeW91IGFyZSBw
cm9wb3NpbmcNCj4gYSBtYXNzaXZlIGZpbGUgc3lzdGVtIHJlc2h1ZmZsZSBoZXJlIHRoYXQg
c2VlbXMgc29tZXdoYXQgaW4gc2VhcmNoIG9mDQo+IGEgcHJvYmxlbSBpdCB3YW50cyB0byBz
b2x2ZS4gIFllcywgc3lzdGVtcyBkbyBleGlzdCB0aGF0IHRyYWRpdGlvbmFsbHkNCj4gdXNl
IGxvdHMgb2Ygc2VjdGlvbiBzdWZmaXhlcywgc28gaXQgKmlzKiB2aXRhbCB0aGF0IG1hbigx
KSBpbXBsZW1lbnRhdGlvbnMNCj4gc3VwcG9ydCBzdWNoIHN1ZmZpeGVzLiAgQnV0IGkgY2xh
aW0gdGhhdCBldmVuIGluIFNvbGFyaXMsIHRob3NlIHN1ZmZpeGVzDQo+IHNlcnZlIGxpdHRs
ZSBwcmFjdGljYWwgcHVycG9zZSBhbmQgdXNlcnMgYXJlIGJlc3Qgb2ZmIHNpbXBseSBpZ25v
cmluZw0KPiB0aGVtLg0KDQpJIGRvIHdhbnQgdG8gZG9jdW1lbnQgdHlwZXMgKGV2ZW4gaWYg
SSBoYWQgdG8gZG9jdW1lbnQgdGhlbSBpbiBmdW5jdGlvbiANCnBhZ2VzLCBJJ2QgYWRkIGxp
bmsgcGFnZXMgd2l0aCB0aGUgbmFtZSBvZiB0aGUgdHlwZSwgZm9yIHJlYXNvbnMgYWxyZWFk
eSANCnN0YXRlZCBpbiBzZXZlcmFsIG90aGVyIHRocmVhZHMpLg0KDQpUeXBlcyBhcmUgYmV0
dGVyIGRvY3VtZW50ZWQgc3RhbmRhbG9uZSwgSU1PLCBhbHNvIGZvciByZWFzb25zIEkgZGV0
YWlsZWQgDQppbiBzZXZlcmFsIG90aGVyIHRocmVhZHMuDQoNCkFuZCwgYXMgYWxzbyBkaXNj
dXNzZWQgaW4gc2V2ZXJhbCB0aHJlYWRzLCBoYXZpbmcgdHlwZSBwYWdlcyBpbiBtYW4zIGlz
IA0KcHJvYmxlbWF0aWMgKGNvbGxpc2lvbnMsIGFtYmlndWl0eSAoZG9lcyBmb28oMykgcmVm
ZXIgdG8gYSBmdW5jdGlvbiBvciBhIA0KdHlwZT8gZm9vKDN0eXBlKSBkb2VzIGNlcnRhaW5s
eSByZWZlciB0byBhIHR5cGU7IGFuZCBmb28oM1tjXSkgc2hvdWxkIA0KY2VydGFpbmx5IHJl
ZmVyIHRvIGEgZnVuY3Rpb24pLg0KDQoNCg0KPiANCj4+IEFsc28sIHlvdSBjYW4gcHV0IHVu
aW1wb3J0YW50IHN1YnNlY3Rpb25zIGF0IHRoZSBlbmQgb2YgdGhlIHNlYXJjaA0KPj4gbGlz
dCwgdG8gbm90IGhpZGUgb3RoZXIgbW9yZSBpbXBvcnRhbnQgcGFnZXMuDQo+IA0KPiBJbiAq
QlNELCBzdXBwb3J0IGZvciBjaGFuZ2luZyB0aGUgc2VhcmNoIGxpc3Qgd2FzIGRlbGV0ZWQg
eWVhcnMgYWdvLg0KPiBUaGF0IGZlYXR1cmUgd2FzIGFuIGV4YW1wbGUgb2Ygb3ZlcmVuZ2lu
ZWVyaW5nIGFuZCB1c2VsZXNzIGNvbXBsaWNhdGlvbi4NCj4gSSBkb24ndCByZWNhbGwgZXZl
biBvbmUgc2luZ2xlIGNvbXBsYWludCBmcm9tIGEgdXNlciB3aG8gd2FudGVkIHRoZQ0KPiBm
ZWF0dXJlIGJhY2sgb3IgZXhwbGFpbmVkIHdoYXQgdGhleSB3ZXJlIHVzaW5nIGl0IGZvci4g
IE5vdCBvbmUNCj4gcGVyc29uIG5lZWRpbmcgaXQgaW4gb3ZlciBoYWxmIGEgZGVjYWRlIHNp
bmNlIGl0IHdhcyBkZWxldGVkLi4uDQoNCk9rYXkuDQoNCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Ci0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFy
LmVzLz4NCg==

--------------RhUA9xoBNLCXtCKTQNx964N0--

--------------pjBX4VSO05cxBwBQzX0d01iO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLdcKQACgkQnowa+77/
2zJKbQ//Q9mlaPF/+Z02v7/buE/Sbgi7SfAF3oHOPO7aedPYjksYfv+tTTO0KD/j
EZICif4WkuiyS3LVhVMK5VHwnlpXPw5g7Sm9jrERji8QTM3QhOSay4NHTKjIu026
jmwCcaO7JhP1qN69U2XImZmw2tGatT976zNDYysb/Ahh7dd1AHKuNG7qH55Nm246
7WY6b1U2YAop0o1EahqgUIBr3q6o/5h6TOpWdSXl6havJ9SthkMTjXTQ4260fTLl
7iW7cj8aAhuBObPvT8pLkFx7p2N6DHzBWvVoYTFeOYIvB62bkztRbfgtaDaMQ7NK
4idUJppdGXyNCE4HpO1YqUmVN045zlfq4CGGalNzShcTTAARHXAfJLt/EL+mpa3I
veuZzsv3cZvplRlRLeRCuQzCE+VKD/s63/pD8b7DSifFpDJBwGe1YKkwFPvbDTQc
EGG+gFt0ClVvK7L5t8ExkwCNtu/fEZgPUMSazeU+l3Z0yAKWFl9ti+No+o5nPYMR
F29+MXT9+IAwi5Tw9ZNcTopjrgG++0xlZHNq3wjLmm+geclBxTiEhlu2fM75PEMJ
eYXB6azLNnoH8LMHg+vLwaJPZtBvIOF2/j2D5q/YOEsq2BhfMGV4l8OVGhx6kiXC
8rY54v7b0rWB7MOTqFDjWBPHrey97oT4JMct9thqlNT46hii/jQ=
=SaqZ
-----END PGP SIGNATURE-----

--------------pjBX4VSO05cxBwBQzX0d01iO--
