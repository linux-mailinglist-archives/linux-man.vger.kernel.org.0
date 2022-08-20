Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4004F59ADF5
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 14:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345199AbiHTMlY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Aug 2022 08:41:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbiHTMlX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Aug 2022 08:41:23 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A561272EC2
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 05:41:14 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id k6-20020a05600c1c8600b003a54ecc62f6so3695678wms.5
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 05:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=n6dvOv+zgMBPOjBoJ/hP+nTLUKEjeVDKmXgEAsrXphs=;
        b=m4lcxdPP8Ozn3fhmZWDy5R4mcvOwi8Eb3AtoCJ5MhFwCiUWrjmjAZiErXijCuS1hV7
         dL5ntrBAbNe5qo1YRq7dN9v2FM3QlEkK1TH9eEBykAnZK3FEtj1vOUfBTkpiHivpvARp
         sNCp6eZbXX5HXcAfHAmm5mQ15pVYkh6GyxBk2EbqaaSgv9D8JYO5paEs/ooYjmZoq9Xu
         9G3q8y2v/oTXpjalrncgPZwNCYGW8l8+uDEM+G7S72B87UUnn9tWHCOG8jUKMQe3Y4qO
         9IrEHImeHcKqpN0sozMuom2lWwR6+8hG7GsyJ+k8XupnKSCvv0JSttbFIAkzrrcz7417
         S7Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=n6dvOv+zgMBPOjBoJ/hP+nTLUKEjeVDKmXgEAsrXphs=;
        b=MHoVv77pYWSnDKsPpVe460ih1AuwiNTbnGiFh9dn2u9eI2lq/MPoq21t0gzK+XRdkk
         pX3MfiMNqGjY1l7XaOyBrshVzFMpZ52WyIdniZtfZ5fsKspCQZlzRn8hRN8t1k7ClDBI
         uFGa7/Zcb/wrjiuyZXCoXWq1+HJo7RLbBmugkzu8frAwhGUi8QaXYAZj8+/D0Ib1YrCC
         f3wq/MXeIIHa4MGf8Rjzvm8a8K8b3NVJH1KyhVxUygpCS90Ed/tOkpofJogCkpFQoNG4
         jhe7IYQPjJ07OAppKaqf9RIQ0l9BKIkiR3Ro1um8Mu7PUMYe24rj1lCjWHn4TpkDh3fm
         4SjQ==
X-Gm-Message-State: ACgBeo1MfuhjpVYHkEPNpXN03THOsIjQbrvevzYm3Mx5t2nGIPYlStsx
        qDw41iZEvKrUhcNXZP7Tu2I=
X-Google-Smtp-Source: AA6agR4BwnvHWy/TfSC8C3bwOHENBWKEOzJgKrm5j2R1V4pcIwltPG6csijLtXScPL9LUKoyJBrDqA==
X-Received: by 2002:a05:600c:1f11:b0:3a5:3df9:4859 with SMTP id bd17-20020a05600c1f1100b003a53df94859mr10188396wmb.175.1660999273125;
        Sat, 20 Aug 2022 05:41:13 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c429100b003a54f1d007csm7828269wmc.10.2022.08.20.05.41.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Aug 2022 05:41:12 -0700 (PDT)
Message-ID: <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
Date:   Sat, 20 Aug 2022 14:40:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
 <20220820122003.qeldeox7hlcy6dw7@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220820122003.qeldeox7hlcy6dw7@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EaNQ6o7e7bXoWsbJlYJ52jpM"
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
--------------EaNQ6o7e7bXoWsbJlYJ52jpM
Content-Type: multipart/mixed; boundary="------------eB2Q1UFh22F9aXaf10vuDb8O";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Cc: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
 <20220820122003.qeldeox7hlcy6dw7@illithid>
In-Reply-To: <20220820122003.qeldeox7hlcy6dw7@illithid>

--------------eB2Q1UFh22F9aXaf10vuDb8O
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gOC8yMC8yMiAxNDoyMCwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gSGkgQWxleCENCj4gDQo+IEF0IDIwMjItMDgtMjBUMTM6NTc6MTUrMDIwMCwg
QWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IFttaWdyYXRpbmcgYFRIYCA0dGggYXJndW1l
bnQgdG8gc29tZXRoaW5nIGxpa2UgIkxpbnV4IG1hbi1wYWdlcyA1LjEzIl0NCg0KWy4uLl0N
Cg0KPj4NCj4+IEFncmVlLiAgTElCUkFSWSBzZWVtcyBtdWNoIG1vcmUgYXBwcm9wcmlhdGUg
Zm9yIHRoYXQgcHVycG9zZS4NCj4gDQo+IFllcy4gIEkgZW5kb3JzZSB0aGUgYWJvdmUgcmVh
c29uaW5nLg0KDQpHcmVhdC4gIEknbGwgZ2V0IHJpZCBvZiB0aGUgc2NyaXB0cyBmb3IgYXBw
ZW5kaW5nIGEgQ09MT1BIT04uDQoNClNob3VsZCBJIGtlZXAgdGhlIHN0YXRpYyBwYXJ0IG9m
IHRoZSBDT0xPUEhPTiBpbiBhIFJFUE9SVElORyBCVUdTIHNlY3Rpb24/DQoNCkFuZCBhbiBl
dmVuIG1vcmUgZ2VuZXJhbCBxdWVzdGlvbj8gIFNob3VsZCBhIG1hbnVhbCBwYWdlIHN0YXRl
IHRoZSANCkNPUFlSSUdIVCwgQVVUSE9SUywgYW5kIFJFUE9SVElORyBCVUdTIG9mIHRoZSBz
b2Z0d2FyZSBpdCBkb2N1bWVudHMsIG9yIA0Kb2YgdGhlIHBhZ2UgaXRzZWxmLCBvciBib3Ro
Pw0KDQpJbmdvLCBJJ20gYWxzbyBpbnRlcmVzdGVkIGluIGhlYXJpbmcgeW91IGFib3V0IHRo
aXMuDQoNCj4gDQo+PiBGb3IgdGhlIGRhdGUsIEkgYWxyZWFkeSByZXBvcnRlZCBhIGJ1ZyB0
byByc3QybWFuKDEpLiAgRm9yIHRoZSA0dGgNCj4+IGZpZWxkLCBJIGd1ZXNzIHdlIHNob3Vs
ZCBzcGVjaWZ5IExpbnV4IGtlcm5lbCBhbmQgdmVyc2lvbiAoc28gSSBzaG91bGQNCj4+IHBh
dGNoIHRoZSBrZXJuZWwgdG8gcGFzcyB0aGF0IGluZm8gdG8gdXMpLg0KPiANCj4gTWF5YmUg
dGhlIGdsb3J5IG9mIHNlZWluZyAiTGludXggNi4wIiBpbiB0aGUgZm9vdGVyIG9mIHRoZSBi
cGYtaGVscGVycw0KPiBtYW4gcGFnZSB3aWxsIGluc3BpcmUgbW9yZSBrZXJuZWwgZGV2ZWxv
cGVycyB0byBmb2xsb3cgdGhhdCBwYWdlJ3MNCj4gZXhhbXBsZS4NCg0KVGhhdCBjb3VsZCBo
ZWxwISA6KQ0KDQpNYXliZSB3ZSB3aWxsIHNlZSBhIGZ1dHVyZSBtYW45IHNlY3Rpb24sIGV2
ZW4gaWYgYXV0b2dlbmVyYXRlZC4NCg0KPiANCj4+IE5vdyB0aGF0IEknbSBjb252aW5jZWQg
dG8gZml4IHRoZSA0dGggYXJndW1lbnQgYXMgc29tZXRoaW5nIGxpa2UgIkxpbnV4DQo+PiBt
YW4tcGFnZXMgNS4xMyIgZm9yIGFsbCBwYWdlcywgSSdkIGxpa2UgeW91IHRvIGhlbHAgb24g
dGhpcy4NCj4+DQo+PiBUaGUgc2NyaXB0IGZvciByZXBsYWNpbmcgdGhlbSBhbGwgd2FzIGVh
c3kuICBJIHByb2R1Y2VkIHRoZSBmb2xsb3dpbmcNCj4+IHRlbXBvcmFyeSBjb21taXQgaW4g
bXkgdHJlZToNCj4+DQo+PiAgICAgIEFsbCBwYWdlczogUmVwbGFjZSB0aGUgNHRoIGFyZ3Vt
ZW50IHRvIC5USCBieSAiTGludXggbWFuLXBhZ2VzDQo+PiA8dmVyc2lvbj4iDQo+Pg0KPj4g
ICAgICBTY3JpcHRlZCBjaGFuZ2U6DQo+Pg0KPj4gICAgICAkIGZpbmQgbWFuKiAtdHlwZSBm
IFwNCj4+ICAgICAgICB8eGFyZ3Mgc2VkIC1pICcvXi5USCAvcy9cKC5USCBcK1teIF1cKyBc
K1teIF1cKyBcK1teIF1cK1wpDQo+PiBcKyJbXiJdXCsiL1wxICJMaW51eCBtYW4tcGFnZXMg
NS4xMyIvJw0KPj4NCj4+ICAgICAgJCBmaW5kIG1hbiogLXR5cGUgZiBcDQo+PiAgICAgICAg
fHhhcmdzIHNlZCAtaSAnL14uVEggL3MvXCguVEggXCtbXiBdXCsgXCtbXiBdXCsgXCtbXiBd
XCtcKSBcK1teIg0KPj4gXVwrL1wxICJMaW51eCBtYW4tcGFnZXMgNS4xMyIvJw0KPj4NCj4+
ICAgICAgU2lnbmVkLW9mZi1ieTogQWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0Bn
bWFpbC5jb20+DQo+IA0KPiBMb29rcyByZWFzb25hYmxlIHRvIG1lLCBhdCBhIGdsYWNlLg0K
PiANCj4+IE5vdywgd2Ugc2hvdWxkIGRlY2lkZSB3aGF0IHRvIHB1dCBleGFjdGx5IGluIHRo
YXQgZmllbGQsIGFuZCB3aGVuL2hvdyB0bw0KPj4gZ2VuZXJhdGUgaXQuDQo+Pg0KPj4gVGhl
IHByb2plY3QgbmFtZSwgSSB0aGluayBpdCdzIGNsZWFyIHRoYXQgaXQgc2hvdWxkIGJlICJM
aW51eCBtYW4tcGFnZXMiDQo+PiAoYXJlIHRoZXJlIGFueSB2b2ljZXMgYWdhaW5zdD8pLg0K
PiANCj4gWW91J3ZlIGdvdCBhIGxpY2Vuc2UgbmFtZWQgZm9yIHlvdSBpbiBTUERYIG5vdy0t
eW91J3JlIHN0dWNrIHdpdGggaXQuIDspDQoNCjspDQoNCj4gDQo+PiBBcyB0aGUgdmVyc2lv
biwgZm9yIHJlbGVhc2VzIGl0IGFsc28gc2VlbXMgY2xlYXI6IHRoZSB2ZXJzaW9uIG51bWJl
cjsNCj4+IGJ1dCB3aGF0IGFib3V0IHVucmVsZWFzZWQgcGFnZXM/c2hvdWxkIEkgd3JpdGUg
YSBnZW5lcmljIHBsYWNlaG9sZGVyPw0KPj4gT3IgbWF5YmUga2VlcCB0aGUgbGFzdCB2ZXJz
aW9uIG51bWJlcj8gT3IgbWF5YmUgcHV0IHRoZSBleHBlY3RlZCBuZXh0DQo+PiB2ZXJzaW9u
IG51bWJlciAodGhhdCdzIHJpc2t5KS4gIE9yIHB1dCB0aGUgZ2l0IHZlcnNpb24gKGkuZS4s
DQo+PiBtYW4tcGFnZXMtNS4xOS1yYzEtMTczLWc2NjIwODk4ZDMpPyAgVGhlIGdpdCB2ZXJz
aW9uIHdvdWxkIGJlIHRoZSBtb3N0DQo+PiBwcmVjaXNlLCBidXQgaXQncyBhbHNvIHRoZSBt
b3N0IGNvbXBsZXggdG8gZG86IEknZCBuZWVkIHRvIG1vZGlmeSB0aGUNCj4+IF9pbnN0YWxs
ZWRfIHBhZ2VzLCBzaW5jZSBvZiBjb3Vyc2UgSSdtIG5vdCBnb2luZyB0byBlZGl0IHRoZSBv
cmlnaW5hbA0KPj4gcGFnZXMgd2l0aCB0aGF0IGluZm8uDQo+IA0KPiBJIHdvdWxkIGFkZCAi
IChpbiBwcmVwYXJhdGlvbikiIHRvIHRoZSBzdHJpbmcsIGFuZCBoYXZlIHRoZSBzY3JpcHQg
dGhhdA0KPiBmaW5hbGl6ZXMgYSByZWxlYXNlIHN0cmlwIHRoYXQgb3V0Lg0KDQpJJ2xsIHVz
ZSAiTGludXggbWFuLXBhZ2VzICh1bnJlbGVhc2VkKSIgZm9yIHRoZSByZXBvIHBhZ2VzLCBq
dXN0IHRvIGJlIA0KbW9yZSBzaW1pbGFyIHRvIERlYmlhbidzIGNoYW5nZWxvZyBmb3JtYXQu
ICBJIGRvbid0IGxpa2UgaW52ZW50aW5nIHN0dWZmIA0KaWYgSSBkb24ndCBuZWVkIHRvLiAg
RG9lcyBpdCBtYWtlIHNlbnNlIHRvIHlvdT8NCg0KSGF2aW5nIGEgZml4ZWQgc3RyaW5nIHRo
ZXJlIHdpbGwgYmUgZ29vZCwgc2luY2UgdGhhdCB3YXkgSSB3b24ndCBkaXN0dXJiIA0KdGhl
IHNjcmlwdCB1cGRhdGluZyB0aGUgbGFzdC1tb2RpZmllZCBkYXRlLg0KDQo+IA0KPiBCdXQg
ZXZlbiBpZiB5b3UgZ28gd2l0aCB0aGUgZ2FycnVsb3VzIG91dHB1dCBvZiAiZ2l0IGRlc2Ny
aWJlIiwgSSBoYXZlDQo+IGdvb2QgbmV3cy4gIEluIGdyb2ZmIDEuMjMsIG92ZXJsb25nIGhl
YWRlciBhbmQgZm9vdGVyIG1hdGVyaWFsIGlzDQo+IGFiYnJldmlhdGVkIHdpdGggYW4gZWxs
aXBzaXMuICAoVGhpcyB3YXMgYW4gZWR1Y2F0aW9uYWwgZXhwZXJpZW5jZSBpbg0KPiBzdHJp
bmcgcHJvY2Vzc2luZyB3aXRoIGdyb2ZmLikNCg0KRG9uJ3QgeW91IGxpa2UgZ2l0LWRlc2Ny
aWJlKDEpPyAgSSBsaWtlIGl0LiAgSSdsbCBjaGVjayBpZiBpdCBmaXRzIGEgDQpub3JtYWwg
dGVybWluYWwsIGFuZCBpZiBzbywgSSB0aGluayBJJ2xsIHVzZSBpdC4gIElmIG5vdCwgSSds
bCB0aGluayANCmFib3V0IGl0IGEgYml0IG1vcmUuDQoNCg0KU28sIEknbGwgaGF2ZSB0aGUg
TWFrZWZpbGUgcHJvZHVjZSB0aGlzIHN0dWZmLCBmb3IgYm90aCBgbWFrZSBpbnN0YWxsYCAN
CmFuZCBgbWFrZSBkaXN0YCwgYW5kIGl0IHdpbGwgYmUgcHJvZHVjZWQgaW4gZ2VuZXJhdGVk
IHBhZ2VzLCBidXQgbmV2ZXIgDQptb2RpZnkgcmVwbyBvbmVzLg0KDQpDaGVlcnMsDQoNCkFs
ZXgNCg0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8t
Y29sb21hci5lcy8+DQo=

--------------eB2Q1UFh22F9aXaf10vuDb8O--

--------------EaNQ6o7e7bXoWsbJlYJ52jpM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMA1loACgkQnowa+77/
2zLSig/+LB/QkndWVgt+SRnjoLtNL7yWDn8LrlzX3MPQxt9WJudH9Ach261Bamml
nI23TWeBcCpcSKXbDxFHWY31tOZegMYZevMvg5ZOrwUH6/Oi52CPKQ29NrCWbozZ
sXcgjLe8sjYhIYqT5wbNmVA0ewK7WsW/WqCbza6FQ3xms61oe7uGiWAgo5w0OMkN
HVqir04iTElMieqRdGueygNLmyj7fJTs0Eipzjtlaal8TATkkQ/wFlzG13FeU1k/
BbUmeZv/Oyf7VckUjvwOnH/90LtwHuvi5GpcYUZxhFcGnya2lKROmdEMuXChAY23
L0CoBgd/Pi7YLl+Sy+yrHNQjZYaeu+CizOWXmXc8sqOn25uk9p3ceOaELHdN0csy
IFiHLmQYWkeecBrUhdxsS/ZWQ6OCRXmFz1LT5AvIUtur0Tc4PvL8LcD3hQl2ivGF
He+ldfWYv0sRdN0INSTBVnVsUMSdO9BHexuJQyH90vhu9yJPUoKyGKOh/hTWtkNG
E5A3uuj9sCG8YLfNpdzEVzCA+OU+Rce4TjuYXAJa2/gcIc/cWI/6mAERuYTsv2a1
JaMcVpB/1UIyv9hBIRCOHg3pRkBRq5Cqf8Mb0o0i6Qt6L6YNr28+R1N0FEQfqdOp
OngZJPjYPLgR7LCm6rQzcaSzSk2zLOSFZiaVSPJ7zaWD+3rFVn8=
=n62p
-----END PGP SIGNATURE-----

--------------EaNQ6o7e7bXoWsbJlYJ52jpM--
