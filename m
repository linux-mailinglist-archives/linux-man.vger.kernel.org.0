Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B26E4564959
	for <lists+linux-man@lfdr.de>; Sun,  3 Jul 2022 20:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbiGCSnv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 14:43:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229794AbiGCSnu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 14:43:50 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 560712713
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 11:43:49 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id cl1so10465364wrb.4
        for <linux-man@vger.kernel.org>; Sun, 03 Jul 2022 11:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=frtNi+1JSZ0/nPQkMgZ22eB/LKrnoKVOxH7FyI98nsA=;
        b=piOB7agTCKQ18uCPxQIh3ATfn8Hjykf4sJvn6zGuxnHrASRMplvMkw+SM/jCPV8/XL
         6/x9Ka0A9d3vgk2f2O7xAxhl9l6cfldSJr/0q8gnFxxzxODl21bN5X2aMN2KF+P0g9Wg
         w08Ub+9MN056CqYglvWZgfc82V4ndODUxnVKvGMmnmk+HyBjuXjUoY/YfizHWwxxFUE5
         JlxAo2vCzhtOzdchug3GcETAle1H4X5aD9gvCn3nAeyU/C3sdkCRZ4CT1Lh6ssZT/xrm
         J1UuivAnMfyljznkFLTUFckgRRZ844pq5GqXr2yAlOVxfLJRaJsmp2y5vEWiPwAfKg+s
         l0Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=frtNi+1JSZ0/nPQkMgZ22eB/LKrnoKVOxH7FyI98nsA=;
        b=qAuPSLAm/MWOOFvsNA0u1Lr0vWelfLdLHe/5Lb5hbHhadtZx2zt2oHrpNN0Azd0+oX
         GKcBFStf2zSmopAOWXeSneeCdLRbWu23I0b0LyWR/8EJWnjlGarOriX5ZzpfK52mkpIo
         Sxal9u4QPsNSY+BL2wq243iJQL440V5K6OLCmdhTJV5nUglK2L08YblCOQyf56wxO2zg
         cw3F/VXMyEVIFLCodtxCbBj0JnGqYz1P3Ve70+qtSGakyhQ+s1Qhx5sQXa4uucnOBtI/
         soygwwmbC/HLDb+vpVvxAqJyVlyMOUqdjPolEWJU4IPWalo4QtedUKrObaw7Ka6AN+M3
         R+bQ==
X-Gm-Message-State: AJIora8Ksw+W+/LoomCFlr9eaStY9MXK1J520d5WJpBzi3zummhy1fX+
        y/F2z+wA3WS8KVkkM3MK7VaDrPYgwEw=
X-Google-Smtp-Source: AGRyM1upzn8Jtd01YWtCK463eWgohhLW6BNrG9Wa20xMscQmHrL8PVmRMyOZBwVOf556sIP5GWgo2g==
X-Received: by 2002:a05:6000:1541:b0:21d:2ae1:a5dd with SMTP id 1-20020a056000154100b0021d2ae1a5ddmr23122024wry.621.1656873827780;
        Sun, 03 Jul 2022 11:43:47 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n18-20020a5d6612000000b0021bbf6687b1sm1464600wru.81.2022.07.03.11.43.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 11:43:47 -0700 (PDT)
Message-ID: <3da07635-62a6-6551-a62b-b13991462c59@gmail.com>
Date:   Sun, 3 Jul 2022 20:43:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] fallocate.2, getdents.2, rcmd.3, capabilities.7,
 feature_test_macros.7, ip.7, pipe.7, socket.7, tcp.7: wfix
Content-Language: en-US
To:     Jesse Rosenstock <jrosenstock@google.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Cc:     lnx-man <linux-man@vger.kernel.org>
References: <CAMZQ0rLCM_7-pabFTZNkheXZ+N6+YaLBDjJCGM3U+FYRaCBgfA@mail.gmail.com>
 <CACKs7VCQWcbK6+vPm1DGUOOG28yR9sgYE366DAT3y5hAAMMfBQ@mail.gmail.com>
 <CAMZQ0rKF-5tHkt2QCse0xEoETFYtHEXu1GVaMjcnBJfc3mxi4g@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAMZQ0rKF-5tHkt2QCse0xEoETFYtHEXu1GVaMjcnBJfc3mxi4g@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------sCl8GRgX70Z2RyYyJhrcF5Cx"
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
--------------sCl8GRgX70Z2RyYyJhrcF5Cx
Content-Type: multipart/mixed; boundary="------------CG8rSKCpsbachDHIXbSzZOm5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jesse Rosenstock <jrosenstock@google.com>,
 Stefan Puiu <stefan.puiu@gmail.com>
Cc: lnx-man <linux-man@vger.kernel.org>
Message-ID: <3da07635-62a6-6551-a62b-b13991462c59@gmail.com>
Subject: Re: [PATCH] fallocate.2, getdents.2, rcmd.3, capabilities.7,
 feature_test_macros.7, ip.7, pipe.7, socket.7, tcp.7: wfix
References: <CAMZQ0rLCM_7-pabFTZNkheXZ+N6+YaLBDjJCGM3U+FYRaCBgfA@mail.gmail.com>
 <CACKs7VCQWcbK6+vPm1DGUOOG28yR9sgYE366DAT3y5hAAMMfBQ@mail.gmail.com>
 <CAMZQ0rKF-5tHkt2QCse0xEoETFYtHEXu1GVaMjcnBJfc3mxi4g@mail.gmail.com>
In-Reply-To: <CAMZQ0rKF-5tHkt2QCse0xEoETFYtHEXu1GVaMjcnBJfc3mxi4g@mail.gmail.com>

--------------CG8rSKCpsbachDHIXbSzZOm5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU3RlZmFuLCBKZXNzZSwNCg0KT24gNi8yNy8yMiAxMzowMywgSmVzc2UgUm9zZW5zdG9j
ayB3cm90ZToNCj4gT24gU2F0LCBKdW4gMjUsIDIwMjIgYXQgMTE6MTggQU0gU3RlZmFuIFB1
aXUgPHN0ZWZhbi5wdWl1QGdtYWlsLmNvbT4gd3JvdGU6DQo+PiBPbiBGcmksIEp1biAyNCwg
MjAyMiBhdCA2OjE5IFBNIEplc3NlIFJvc2Vuc3RvY2sgPGptckBnb29nbGUuY29tPiB3cm90
ZToNCj4+PiBkaWZmIC0tZ2l0IGEvbWFuMy9yY21kLjMgYi9tYW4zL3JjbWQuMw0KPj4+IGlu
ZGV4IGIyZjA2YzAxZC4uNDY0NjBkM2U2IDEwMDY0NA0KPj4+IC0tLSBhL21hbjMvcmNtZC4z
DQo+Pj4gKysrIGIvbWFuMy9yY21kLjMNCj4+PiBAQCAtMzE1LDcgKzMxNSw3IEBAIGFuZCBh
cmUgbm90IHByZXNlbnQgb24gYXMgd2lkZSBhIHJhbmdlIG9mIHN5c3RlbXMuDQo+Pj4gICAu
QlIgaXJ1c2Vyb2sgKCkNCj4+PiAgIGFuZA0KPj4+ICAgLkJSIGlydXNlcm9rX2FmICgpDQo+
Pj4gLWFyZSBkZWNsYXJlZCBpbiBnbGliYyBoZWFkZXJzIG9ubHkgc2luY2UgdmVyc2lvbiAy
LjEyLg0KPj4+ICthcmUgd2VyZSBtaXNzaW5nIGZyb20gZ2xpYmMgaGVhZGVycyBiZWZvcmUg
dmVyc2lvbiAyLjEyLg0KPj4NCj4+IHdlcmUgbWlzc2luZz8gT3IgbWF5YmUsIHRvIGJlIGNv
bnNpc3RlbnQgd2l0aCB0aGUgcmVzdCBvZiB0aGUgcGF0Y2gsDQo+PiB5b3UgY291bGQgc2F5
ICJ3ZXJlIGFkZGVkIGluIGdsaWJjIGhlYWRlcnMgaW4gdmVyc2lvbiAyLjEyIj8NCj4gDQo+
IFRoaXMgb25lIGlzIGluIHRoZSAiQlVHUyIgc2VjdGlvbiwgd2hpY2ggaXMgd2h5IGl0J3Mg
d29yZGVkIGRpZmZlcmVudGx5Lg0KPiANCj4gSSBkb24ndCB3YW50IHRvIHNheSBpdCdzIGEg
YnVnIHRoYXQgaXQgd2FzIGFkZGVkOyB0aGUgYnVnIGlzIHRoYXQgaXQNCj4gd2FzIG1pc3Np
bmcuDQo+IA0KPiBJJ3ZlIGZpeGVkIHRoZSB0eXBvIHRob3VnaC4NCj4gDQo+Pj4gZGlmZiAt
LWdpdCBhL21hbjcvcGlwZS43IGIvbWFuNy9waXBlLjcNCj4+PiBpbmRleCBiZjkzY2FmYmYu
LmI3MDRiYmVlMCAxMDA2NDQNCj4+PiAtLS0gYS9tYW43L3BpcGUuNw0KPj4+ICsrKyBiL21h
bjcvcGlwZS43DQo+Pj4gQEAgLTMzMSw3ICszMzEsNyBAQCBUaGUgdGFyZ2V0IGZvciBkZWxp
dmVyeSBvZiBzaWduYWxzIG11c3QgYmUgc2V0IHVzaW5nIHRoZQ0KPj4+ICAgY29tbWFuZC4N
Cj4+PiAgIE9uIExpbnV4LA0KPj4+ICAgLkIgT19BU1lOQw0KPj4+IC1pcyBzdXBwb3J0ZWQg
Zm9yIHBpcGVzIGFuZCBGSUZPcyBvbmx5IHNpbmNlIGtlcm5lbCAyLjYuDQo+Pj4gK3N1cHBv
cnRlZCBmb3IgcGlwZXMgYW5kIEZJRk9zIHdhcyBhZGRlZCBpbiBrZXJuZWwgMi42Lg0KPj4N
Cj4+ICJzdXBwb3J0IGZvciBwaXBlcyI/DQo+IA0KPiBGaXhlZCwgc29ycnkgYWJvdXQgdGhh
dC4NCj4gDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiBSZXdyaXRlIHBv
dGVudGlhbGx5IGFtYmlndW91cyAib25seSBzaW5jZSIgdG8gc29tZXRoaW5nIG1vcmUgZXhw
bGljaXQsDQo+IHN1Y2ggYXMgInN1cHBvcnQgd2FzIGFkZGVkIGluIi4NCj4gDQo+IEEgY29u
dGludWF0aW9uIG9mOg0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tYW4vYTA2
NDEzZjAtYzg3ZC1mODBlLWNiM2EtZTI3MjU4ZmJjZDU5QGdtYWlsLmNvbS9ULyN0DQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBKZXNzZSBSb3NlbnN0b2NrIDxqbXJAZ29vZ2xlLmNvbT4NCg0K
VGhhbmtzIGZvciB0aGUgd29yZGluZyBmaXgsIEplc3NlISAgSXQgbG9va3MgdmVyeSBnb29k
IHRvIG1lIDopDQpEb2VzIGl0IGxvb2sgZ29vZCB0byB5b3Ugbm93LCBTdGVmYW4/DQpJJ2xs
IHdhaXQgdG8gYXBwbHkgaXQgaW4gY2FzZSB5b3Ugd2FudCB0byBhZGQgYSByZXZpZXcgdGFn
LCBTdGVmYW4uDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1hbjIvZmFsbG9j
YXRlLjIgICAgICAgICAgIHwgMiArLQ0KPiAgIG1hbjIvZ2V0ZGVudHMuMiAgICAgICAgICAg
IHwgNCArKy0tDQo+ICAgbWFuMy9yY21kLjMgICAgICAgICAgICAgICAgfCAyICstDQo+ICAg
bWFuNy9jYXBhYmlsaXRpZXMuNyAgICAgICAgfCAyICstDQo+ICAgbWFuNy9mZWF0dXJlX3Rl
c3RfbWFjcm9zLjcgfCAyICstDQo+ICAgbWFuNy9pcC43ICAgICAgICAgICAgICAgICAgfCAy
ICstDQo+ICAgbWFuNy9waXBlLjcgICAgICAgICAgICAgICAgfCAyICstDQo+ICAgbWFuNy9z
b2NrZXQuNyAgICAgICAgICAgICAgfCA0ICsrLS0NCj4gICBtYW43L3RjcC43ICAgICAgICAg
ICAgICAgICB8IDQgKystLQ0KPiAgIDkgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygr
KSwgMTIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMi9mYWxsb2NhdGUu
MiBiL21hbjIvZmFsbG9jYXRlLjINCj4gaW5kZXggYjRjYjM1MTZmLi4wYTE1YTJmNDcgMTAw
NjQ0DQo+IC0tLSBhL21hbjIvZmFsbG9jYXRlLjINCj4gKysrIGIvbWFuMi9mYWxsb2NhdGUu
Mg0KPiBAQCAtNDcwLDcgKzQ3MCw3IEBAIGlzIGF2YWlsYWJsZSBvbiBMaW51eCBzaW5jZSBr
ZXJuZWwgMi42LjIzLg0KPiAgIFN1cHBvcnQgaXMgcHJvdmlkZWQgYnkgZ2xpYmMgc2luY2Ug
dmVyc2lvbiAyLjEwLg0KPiAgIFRoZQ0KPiAgIC5CUiBGQUxMT0NfRkxfKg0KPiAtZmxhZ3Mg
YXJlIGRlZmluZWQgaW4gZ2xpYmMgaGVhZGVycyBvbmx5IHNpbmNlIHZlcnNpb24gMi4xOC4N
Cj4gK2ZsYWdzIHdlcmUgYWRkZWQgdG8gZ2xpYmMgaGVhZGVycyBpbiB2ZXJzaW9uIDIuMTgu
DQo+ICAgLlwiIFNlZSBodHRwOi8vc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcu
Y2dpP2lkPTE0OTY0DQo+ICAgLlNIIENPTkZPUk1JTkcgVE8NCj4gICAuQlIgZmFsbG9jYXRl
ICgpDQo+IGRpZmYgLS1naXQgYS9tYW4yL2dldGRlbnRzLjIgYi9tYW4yL2dldGRlbnRzLjIN
Cj4gaW5kZXggODIwMWMzMzEwLi4zY2IzZWZjNDkgMTAwNjQ0DQo+IC0tLSBhL21hbjIvZ2V0
ZGVudHMuMg0KPiArKysgYi9tYW4yL2dldGRlbnRzLjINCj4gQEAgLTkxLDggKzkxLDggQEAg
c3RydWN0IGxpbnV4X2RpcmVudCB7DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9m
ZnNldG9mKHN0cnVjdCBsaW51eF9kaXJlbnQsIGRfbmFtZSkpICovDQo+ICAgICAgIC8qDQo+
ICAgICAgIGNoYXIgICAgICAgICAgIHBhZDsgICAgICAgLy8gWmVybyBwYWRkaW5nIGJ5dGUN
Cj4gLSAgICBjaGFyICAgICAgICAgICBkX3R5cGU7ICAgIC8vIEZpbGUgdHlwZSAob25seSBz
aW5jZSBMaW51eA0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gMi42LjQp
OyBvZmZzZXQgaXMgKGRfcmVjbGVuIFwtIDEpDQo+ICsgICAgY2hhciAgICAgICAgICAgZF90
eXBlOyAgICAvLyBGaWxlIHR5cGUgKGFkZGVkIGluIExpbnV4IDIuNi40KTsNCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC8vIG9mZnNldCBpcyAoZF9yZWNsZW4gXC0gMSkN
Cj4gICAgICAgKi8NCj4gICB9DQo+ICAgLkVFDQo+IGRpZmYgLS1naXQgYS9tYW4zL3JjbWQu
MyBiL21hbjMvcmNtZC4zDQo+IGluZGV4IGIyZjA2YzAxZC4uNjBiNTRiNWQyIDEwMDY0NA0K
PiAtLS0gYS9tYW4zL3JjbWQuMw0KPiArKysgYi9tYW4zL3JjbWQuMw0KPiBAQCAtMzE1LDcg
KzMxNSw3IEBAIGFuZCBhcmUgbm90IHByZXNlbnQgb24gYXMgd2lkZSBhIHJhbmdlIG9mIHN5
c3RlbXMuDQo+ICAgLkJSIGlydXNlcm9rICgpDQo+ICAgYW5kDQo+ICAgLkJSIGlydXNlcm9r
X2FmICgpDQo+IC1hcmUgZGVjbGFyZWQgaW4gZ2xpYmMgaGVhZGVycyBvbmx5IHNpbmNlIHZl
cnNpb24gMi4xMi4NCj4gK3dlcmUgbWlzc2luZyBmcm9tIGdsaWJjIGhlYWRlcnMgYmVmb3Jl
IHZlcnNpb24gMi4xMi4NCj4gICAuXCIgQnVnIGZpbGVkIDI1IE5vdiAyMDA3Og0KPiAgIC5c
IiBodHRwOi8vc291cmNlcy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD01
Mzk5DQo+ICAgLlNIIFNFRSBBTFNPDQo+IGRpZmYgLS1naXQgYS9tYW43L2NhcGFiaWxpdGll
cy43IGIvbWFuNy9jYXBhYmlsaXRpZXMuNw0KPiBpbmRleCBjNjU1MjQ0OTYuLmU4MThmYTll
MiAxMDA2NDQNCj4gLS0tIGEvbWFuNy9jYXBhYmlsaXRpZXMuNw0KPiArKysgYi9tYW43L2Nh
cGFiaWxpdGllcy43DQo+IEBAIC0xMjE4LDcgKzEyMTgsNyBAQCBkZW5vdGVzIGEgZmlsZSBj
YXBhYmlsaXR5IHNldA0KPiAgIE5vdGUgdGhlIGZvbGxvd2luZyBkZXRhaWxzIHJlbGF0aW5n
IHRvIHRoZSBhYm92ZSBjYXBhYmlsaXR5DQo+ICAgdHJhbnNmb3JtYXRpb24gcnVsZXM6DQo+
ICAgLklQICogMw0KPiAtVGhlIGFtYmllbnQgY2FwYWJpbGl0eSBzZXQgaXMgcHJlc2VudCBv
bmx5IHNpbmNlIExpbnV4IDQuMy4NCj4gK1RoZSBhbWJpZW50IGNhcGFiaWxpdHkgc2V0IHdh
cyBhZGRlZCBpbiBMaW51eCA0LjMuDQo+ICAgV2hlbiBkZXRlcm1pbmluZyB0aGUgdHJhbnNm
b3JtYXRpb24gb2YgdGhlIGFtYmllbnQgc2V0IGR1cmluZw0KPiAgIC5CUiBleGVjdmUgKDIp
LA0KPiAgIGEgcHJpdmlsZWdlZCBmaWxlIGlzIG9uZSB0aGF0IGhhcyBjYXBhYmlsaXRpZXMg
b3INCj4gZGlmZiAtLWdpdCBhL21hbjcvZmVhdHVyZV90ZXN0X21hY3Jvcy43IGIvbWFuNy9m
ZWF0dXJlX3Rlc3RfbWFjcm9zLjcNCj4gaW5kZXggNzczNjJlZDIzLi44ZmJkMjZjODIgMTAw
NjQ0DQo+IC0tLSBhL21hbjcvZmVhdHVyZV90ZXN0X21hY3Jvcy43DQo+ICsrKyBiL21hbjcv
ZmVhdHVyZV90ZXN0X21hY3Jvcy43DQo+IEBAIC0yMzcsNyArMjM3LDcgQEAgZGVmaW5pdGlv
bnMgZm9yIFBPU0lYLjItMTk5Mi4NCj4gICAuSVAgXChidQ0KPiAgIFRoZSB2YWx1ZSAxOTkz
MDlMIG9yIGdyZWF0ZXIgYWRkaXRpb25hbGx5IGV4cG9zZXMNCj4gICBkZWZpbml0aW9ucyBm
b3IgUE9TSVguMWIgKHJlYWwtdGltZSBleHRlbnNpb25zKS4NCj4gLS5cIiAxOTk1MDZMIGZ1
bmN0aW9uYWxpdHkgaXMgYXZhaWxhYmxlIG9ubHkgc2luY2UgZ2xpYmMgMi4xDQo+ICsuXCIg
MTk5NTA2TCBmdW5jdGlvbmFsaXR5IHdhcyBhZGRlZCBpbiBnbGliYyAyLjENCj4gICAuSVAg
XChidQ0KPiAgIFRoZSB2YWx1ZSAxOTk1MDZMIG9yIGdyZWF0ZXIgYWRkaXRpb25hbGx5IGV4
cG9zZXMNCj4gICBkZWZpbml0aW9ucyBmb3IgUE9TSVguMWMgKHRocmVhZHMpLg0KPiBkaWZm
IC0tZ2l0IGEvbWFuNy9pcC43IGIvbWFuNy9pcC43DQo+IGluZGV4IDdlZWUyODExZS4uZTYw
Yjc3M2E3IDEwMDY0NA0KPiAtLS0gYS9tYW43L2lwLjcNCj4gKysrIGIvbWFuNy9pcC43DQo+
IEBAIC0zMDEsNyArMzAxLDcgQEAgZ3JvdXAsIG9yIDAgdG8gaW5kaWNhdGUgYW55IGludGVy
ZmFjZS4NCj4gICAuSVANCj4gICBUaGUNCj4gICAuSSBpcF9tcmVxbg0KPiAtc3RydWN0dXJl
IGlzIGF2YWlsYWJsZSBvbmx5IHNpbmNlIExpbnV4IDIuMi4NCj4gK3N0cnVjdHVyZSB3YXMg
YWRkZWQgaW4gTGludXggMi4yLg0KPiAgIEZvciBjb21wYXRpYmlsaXR5LCB0aGUgb2xkDQo+
ICAgLkkgaXBfbXJlcQ0KPiAgIHN0cnVjdHVyZSAocHJlc2VudCBzaW5jZSBMaW51eCAxLjIp
IGlzIHN0aWxsIHN1cHBvcnRlZDsNCj4gZGlmZiAtLWdpdCBhL21hbjcvcGlwZS43IGIvbWFu
Ny9waXBlLjcNCj4gaW5kZXggYmY5M2NhZmJmLi41OWIzNTE3N2MgMTAwNjQ0DQo+IC0tLSBh
L21hbjcvcGlwZS43DQo+ICsrKyBiL21hbjcvcGlwZS43DQo+IEBAIC0zMzEsNyArMzMxLDcg
QEAgVGhlIHRhcmdldCBmb3IgZGVsaXZlcnkgb2Ygc2lnbmFscyBtdXN0IGJlIHNldCB1c2lu
ZyB0aGUNCj4gICBjb21tYW5kLg0KPiAgIE9uIExpbnV4LA0KPiAgIC5CIE9fQVNZTkMNCj4g
LWlzIHN1cHBvcnRlZCBmb3IgcGlwZXMgYW5kIEZJRk9zIG9ubHkgc2luY2Uga2VybmVsIDIu
Ni4NCj4gK3N1cHBvcnQgZm9yIHBpcGVzIGFuZCBGSUZPcyB3YXMgYWRkZWQgaW4ga2VybmVs
IDIuNi4NCj4gICAuU1MgUG9ydGFiaWxpdHkgbm90ZXMNCj4gICBPbiBzb21lIHN5c3RlbXMg
KGJ1dCBub3QgTGludXgpLCBwaXBlcyBhcmUgYmlkaXJlY3Rpb25hbDoNCj4gICBkYXRhIGNh
biBiZSB0cmFuc21pdHRlZCBpbiBib3RoIGRpcmVjdGlvbnMgYmV0d2VlbiB0aGUgcGlwZSBl
bmRzLg0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9zb2NrZXQuNyBiL21hbjcvc29ja2V0LjcNCj4g
aW5kZXggNjc3MzYyMTRhLi4xNWI3NjM1NDMgMTAwNjQ0DQo+IC0tLSBhL21hbjcvc29ja2V0
LjcNCj4gKysrIGIvbWFuNy9zb2NrZXQuNw0KPiBAQCAtNzgxLDkgKzc4MSw5IEBAIGlzIG5v
dCBjaGFuZ2VhYmxlIG9uIExpbnV4DQo+ICAgLlJCICggc2V0c29ja29wdCAoMikNCj4gICBm
YWlscyB3aXRoIHRoZSBlcnJvcg0KPiAgIC5CUiBFTk9QUk9UT09QVCApLg0KPiArU3VwcG9y
dCBmb3IgY2hhbmdpbmcNCj4gICAuQiBTT19SQ1ZMT1dBVA0KPiAtaXMgY2hhbmdlYWJsZQ0K
PiAtb25seSBzaW5jZSBMaW51eCAyLjQuDQo+ICt3YXMgYWRkZWQgaW4gTGludXggMi40Lg0K
PiAgIC5JUA0KPiAgIEJlZm9yZSBMaW51eCAyLjYuMjgNCj4gICAuXCIgVGVzdGVkIG9uIGtl
cm5lbCAyLjYuMTQgLS0gbXRrLCAzMCBOb3YgMDUNCj4gZGlmZiAtLWdpdCBhL21hbjcvdGNw
LjcgYi9tYW43L3RjcC43DQo+IGluZGV4IDBhN2M2MWEzNy4uNGFhYWViNmJlIDEwMDY0NA0K
PiAtLS0gYS9tYW43L3RjcC43DQo+ICsrKyBiL21hbjcvdGNwLjcNCj4gQEAgLTEwNDYsOSAr
MTA0Niw5IEBAIEFzIGN1cnJlbnRseSBpbXBsZW1lbnRlZCwgdGhlcmUgaXMgYSAyMDANCj4g
bWlsbGlzZWNvbmQgY2VpbGluZyBvbiB0aGUgdGltZQ0KPiAgIGZvciB3aGljaCBvdXRwdXQg
aXMgY29ya2VkIGJ5DQo+ICAgLkJSIFRDUF9DT1JLIC4NCj4gICBJZiB0aGlzIGNlaWxpbmcg
aXMgcmVhY2hlZCwgdGhlbiBxdWV1ZWQgZGF0YSBpcyBhdXRvbWF0aWNhbGx5IHRyYW5zbWl0
dGVkLg0KPiAtVGhpcyBvcHRpb24gY2FuIGJlIGNvbWJpbmVkIHdpdGgNCj4gK1N1cHBvcnQg
Zm9yIGNvbWJpbmluZyB0aGlzIG9wdGlvbiB3aXRoDQo+ICAgLkIgVENQX05PREVMQVkNCj4g
LW9ubHkgc2luY2UgTGludXggMi41LjcxLg0KPiArd2FzIGFkZGVkIGluIExpbnV4IDIuNS43
MS4NCj4gICBUaGlzIG9wdGlvbiBzaG91bGQgbm90IGJlIHVzZWQgaW4gY29kZSBpbnRlbmRl
ZCB0byBiZSBwb3J0YWJsZS4NCj4gICAuVFANCj4gICAuQlIgVENQX0RFRkVSX0FDQ0VQVCAi
IChzaW5jZSBMaW51eCAyLjQpIg0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------CG8rSKCpsbachDHIXbSzZOm5--

--------------sCl8GRgX70Z2RyYyJhrcF5Cx
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLB42EACgkQnowa+77/
2zIxaw//ahJP6k+ZwL/nd5gMqoQHDFSMQda4bRMIQ3HuC6xEIYg9jRLndKVlRnW4
nLTxkP3nZKI1Pn026SoQebxeX0psO/8sf0/e68lMrlvxk+YGF4avm2p3sqptAjJh
rfm49lP0/VxFSMbxnBqlf5sQtd55bdBdKmIGOTuu6LrwxyRs1JFYbTDMlzkWshXt
aYSr47fpogflJSYgfFE9cP+0neChvXfGMuNKOBrS5j/bA9fFgqOv+3PqWoCzbroH
SoZX85nVclSzGjQpx8NkcWdjoUC4bQha+lZ7bncRzcoruPvXzfRXdwKnIKX7A/IV
HtoX+Z4qwp1oVu3BsDOkdIj4lkRN4zhm+pThBvVALUjoG7pczNRHaocMB8rYJXPW
knhg+4z3zFNs7eUxFGxOpId8+qHuwEzr+dX7y5+cgcmErG9M2C6H7lrb3mlN2lk6
9ncYSGpiQOBDWjAV1Q/KuvmcVv7W3ICT97C58nXVmO4epiH+lDTstGCOvVIGhGkm
C6K6s2H6VCQ2//1jnaofPht2r9FzzKy6E3ku9eBV0zVzt3BknX+jbdbKw/5ieM3f
lWssMdYoKxtWzZxKlCtxuDM1J98QzmXBxIsHPa/+qm+UFf1JUtHrpN5tDbNtnjK3
1NBWTR/0g+czH51B346Vu+9tKzGhjsqkmQx/IiEv5C+/8eGsnOI=
=KWN5
-----END PGP SIGNATURE-----

--------------sCl8GRgX70Z2RyYyJhrcF5Cx--
