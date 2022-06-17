Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A99E54F893
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 15:53:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381981AbiFQNvF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 09:51:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382512AbiFQNuu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 09:50:50 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AA2150469
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:50:44 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id l2-20020a05600c4f0200b0039c55c50482so4423487wmq.0
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=jvyyXeo0cdhjwjDjSJ4OhN1DVO9yQsU6yKli/2XvcmE=;
        b=LlCFl++nJZv4faCL300CKGdHztBRjRsGvhRsP7gRpvaNswVCMRB5ns/ITPutjS81Ne
         +LlHwbQrXQXxIkBqvf2Fpqg1cQoUtk8/JKuVRK/R6LQnaz4w8F0zHNfl5BSJbmlPTyXO
         AOznU3TB0yxRPCFAinOWkwPr5Hhgbs9Dg7UTifdKSXD9F3ZxWDGfD7DTcpWdJaa4AEhs
         JsPRuRKoPxHRGRW6+hqsi6sbCqrTIGX60rCltwy9k7pVuz6axlCb/PG0uRxkHLmo+ueM
         oJVhlv+s3+kdFN3Fzk+JfyYXw9xZq9V4IwgUtHX32m30umEXusRWPiXfLkjOxHY40PYm
         byrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=jvyyXeo0cdhjwjDjSJ4OhN1DVO9yQsU6yKli/2XvcmE=;
        b=qJiLK+HKIY6h0KbyOXyv6e5jKlO7hGMJrYWrbnf3DDdbtJcviYxjQ7RLO6UU6jZA/1
         v9mpvPmbibaIrbmJaPJwicHE3os6uf4pEIU0QmCubHk9NP9BP9ZTgnp9z0BYWqnA0yub
         poLXE6SON2gUbWaL4V2Za405HEecKskXU3QvghWjTbVTRdIxb/EVIVHW0P/nin7QnVlg
         lU27/1xLOw6pwvlkCB+QBPdpgOp1pJVz931OTN5/izA5ak+VnC8Jvl7Zwuouq7e1DRXK
         5JWf8qcg2uAsdXm9tIAjuG2NnVOpJF0Zazbp8BJA6e53YxgPAHOd/HtbmDHKozfXq0aP
         QYdA==
X-Gm-Message-State: AJIora9FcrQeQaU4VfXavyAHoHfCbi3SF0lpy/3fNg23OzQk9ATgkMEg
        r8OcaNFxpB4nNYTPl33T9Os=
X-Google-Smtp-Source: AGRyM1uGpeWb00AAk0AFGHmOzwSEUdRA/TEgj9e7V1SWrq44sJ2ZLhxMDhJGqvijza652ECG3DtE9g==
X-Received: by 2002:a05:600c:4f4f:b0:39c:6fb7:ee5e with SMTP id m15-20020a05600c4f4f00b0039c6fb7ee5emr10235776wmq.109.1655473842814;
        Fri, 17 Jun 2022 06:50:42 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y5-20020a7bcd85000000b0039c7c4a542csm5411320wmj.47.2022.06.17.06.50.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 06:50:42 -0700 (PDT)
Message-ID: <9423f202-fb7e-c400-56fe-52b334e334e5@gmail.com>
Date:   Fri, 17 Jun 2022 15:50:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_TARGET_FID
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
References: <20220617131158.1661235-1-amir73il@gmail.com>
 <20220617131158.1661235-2-amir73il@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220617131158.1661235-2-amir73il@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------X54TKBZHOvLUXY70RpEHyvYw"
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------X54TKBZHOvLUXY70RpEHyvYw
Content-Type: multipart/mixed; boundary="------------DY84LGLJr1HuH0X7Md25ENak";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
 Matthew Bobrowski <repnop@google.com>, linux-man@vger.kernel.org
Message-ID: <9423f202-fb7e-c400-56fe-52b334e334e5@gmail.com>
Subject: Re: [PATCH 1/2] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_TARGET_FID
References: <20220617131158.1661235-1-amir73il@gmail.com>
 <20220617131158.1661235-2-amir73il@gmail.com>
In-Reply-To: <20220617131158.1661235-2-amir73il@gmail.com>

--------------DY84LGLJr1HuH0X7Md25ENak
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8xNy8yMiAxNToxMSwgQW1pciBHb2xkc3RlaW4gd3JvdGU6DQo+IEZBTl9SRVBPUlRf
VEFSR0VUX0ZJRCBhZGRzIGFuIGluZm9ybWF0aW9uIHJlY29yZCBhYm91dCB0aGUgY2hpbGQN
Cj4gdG8gZGlyZWN0b3J5IGVudHJ5IG1vZGlmaWNhdGlvbiBldmVudHMgKGNyZWF0ZS9kZWxl
dGUvbW92ZSkuDQo+IA0KPiBUaGlzIGZsYWcgYWxzbyBhZGRzIHNhbml0eSBjaGVja3MgdGhh
dCBkaXJlY3RvcnkgbW9kaWZpY2F0aW9uIGV2ZW50cw0KPiAoY3JlYXRlLGRlbGV0ZSxtb3Zl
ZCkgY2Fubm90IGJlIHNldCBpbiBtYXNrIG9mIGEgbm9uLWRpciBpbm9kZSBtYXJrLg0KPiAN
Cj4gUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQm9icm93c2tpIDxyZXBub3BAZ29vZ2xlLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogQW1pciBHb2xkc3RlaW4gPGFtaXI3M2lsQGdtYWlsLmNvbT4N
Cg0KSGkgQW1pciwNCg0KUGxlYXNlIHNlZSBzb21lIGNvbW1lbnQgYmVsb3cuDQoNClRoYW5r
cywNCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1hbjIvZmFub3RpZnlfaW5pdC4yIHwgNDAgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQ0KPiAgIG1hbjIvZmFub3Rp
ZnlfbWFyay4yIHwgIDcgKysrKysrKw0KPiAgIG1hbjcvZmFub3RpZnkuNyAgICAgIHwgMjcg
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tDQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCA1NyBp
bnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4y
L2Zhbm90aWZ5X2luaXQuMiBiL21hbjIvZmFub3RpZnlfaW5pdC4yDQo+IGluZGV4IDlhYmVj
NWZjYS4uYWM0ZDNhMzA1IDEwMDY0NA0KPiAtLS0gYS9tYW4yL2Zhbm90aWZ5X2luaXQuMg0K
PiArKysgYi9tYW4yL2Zhbm90aWZ5X2luaXQuMg0KPiBAQCAtMTgyLDkgKzE4MiwxMSBAQCBh
bmQNCj4gICAuQlIgRkFOX01PVkVfU0VMRiAuDQo+ICAgQWxsIHRoZSBldmVudHMgYWJvdmUg
cmVxdWlyZSBhbiBmYW5vdGlmeSBncm91cCB0aGF0IGlkZW50aWZpZXMgZmlsZXN5c3RlbQ0K
PiAgIG9iamVjdHMgYnkgZmlsZSBoYW5kbGVzLg0KPiAtTm90ZSB0aGF0IGZvciB0aGUgZGly
ZWN0b3J5IGVudHJ5IG1vZGlmaWNhdGlvbiBldmVudHMgdGhlIHJlcG9ydGVkIGZpbGUgaGFu
ZGxlDQo+IC1pZGVudGlmaWVzIHRoZSBtb2RpZmllZCBkaXJlY3RvcnkgYW5kIG5vdCB0aGUg
Y3JlYXRlZC9kZWxldGVkL21vdmVkIGNoaWxkDQo+IC1vYmplY3QuDQo+ICtOb3RlIHRoYXQg
d2l0aG91dCB0aGUgZmxhZw0KPiArLkJSIEZBTl9SRVBPUlRfVEFSR0VUX0ZJRCAsDQo+ICtm
b3IgdGhlIGRpcmVjdG9yeSBlbnRyeSBtb2RpZmljYXRpb24gZXZlbnRzLA0KPiArdGhlcmUg
aXMgYW4gaW5mb3JhbXRpb24gcmVjb3JkIHRoYXQgaWRlbnRpZmllcyB0aGUgbW9kaWZpZWQg
ZGlyZWN0b3J5DQo+ICthbmQgbm90IHRoZSBjcmVhdGVkL2RlbGV0ZWQvbW92ZWQgY2hpbGQg
b2JqZWN0Lg0KPiAgIFRoZSB1c2Ugb2YNCj4gICAuQiBGQU5fQ0xBU1NfQ09OVEVOVA0KPiAg
IG9yDQo+IEBAIC0yODIsNiArMjg0LDM4IEBAIGZvciBhZGRpdGlvbmFsIGRldGFpbHMuDQo+
ICAgLkIgRkFOX1JFUE9SVF9ERklEX05BTUUNCj4gICBUaGlzIGlzIGEgc3lub255bSBmb3IN
Cj4gICAuUkIgKCBGQU5fUkVQT1JUX0RJUl9GSUQgfCBGQU5fUkVQT1JUX05BTUUgKS4NCj4g
Ky5UUA0KPiArLkJSIEZBTl9SRVBPUlRfVEFSR0VUX0ZJRCAiIChzaW5jZSBMaW51eCA1LjE3
KSINCj4gKy5cIiBjb21taXQgZDYxZmQ2NTBlOWQyMDZhNzFmZGE3ODlmMDJhMWNlZDRiMTk5
NDRjNA0KPiArRXZlbnRzIGZvciBmYW5vdGlmeSBncm91cHMgaW5pdGlhbGl6ZWQgd2l0aCB0
aGlzIGZsYWcNCj4gK3dpbGwgY29udGFpbiBhZGRpdGlvbmFsIGluZm9ybWF0aW9uIGFib3V0
IHRoZSBjaGlsZA0KPiArY29ycmVsYXRlZCB3aXRoIGRpcmVjdG9yeSBlbnRyeSBtb2RpZmlj
YXRpb24gZXZlbnRzLg0KPiArVGhpcyBmbGFnIG11c3QgYmUgcHJvdmlkZWQgaW4gY29uanVu
Y3Rpb24gd2l0aCB0aGUgZmxhZ3MNCj4gKy5CUiBGQU5fUkVQT1JUX0ZJRCAsDQo+ICsuQiBG
QU5fUkVQT1JUX0RJUl9GSUQNCj4gK2FuZA0KPiArLkJSIEZBTl9SRVBPUlRfTkFNRSAuDQo+
ICtvciBlbHNlIHRoZSBlcnJvcg0KPiArLkIgRUlOVkFMDQo+ICt3aWxsIGJlIHJldHVybmVk
Lg0KPiArRm9yIHRoZSBkaXJlY3RvcnkgZW50cnkgbW9kaWZpY2F0aW9uIGV2ZW50cw0KPiAr
LkJSIEZBTl9DUkVBVEUgLA0KPiArLkJSIEZBTl9ERUxFVEUgLA0KPiArYW5kDQo+ICsuQlIg
RkFOX01PVkUgLA0KPiArYW4gYWRkaXRpb25hbCByZWNvcmQgb2YgdHlwZQ0KPiArLkJSIEZB
Tl9FVkVOVF9JTkZPX1RZUEVfRklEICwNCj4gK2lzIHJlcG9ydGVkIGluIGFkZGl0aW9uIHRv
IHRoZSBpbmZvcm1hdGlvbiByZWNvcmQgb2YgdHlwZQ0KPiArLkIgRkFOX0VWRU5UX0lORk9f
VFlQRV9ERklEDQo+ICtvcg0KPiArLkJSIEZBTl9FVkVOVF9JTkZPX1RZUEVfREZJRF9OQU1F
IC4NCj4gK1RoZSBhZGRpdGlvbmFsIHJlY29yZCBpbmNsdWRlcyBhIGZpbGUgaGFuZGxlDQo+
ICt0aGF0IGlkZW50aWZpZXMgdGhlIGZpbGVzeXN0ZW0gY2hpbGQgb2JqZWN0DQo+ICt0aGF0
IHRoZSBkaXJlY3RvcnkgZW50cnkgaXMgcmVmZXJyaW5nIHRvLg0KPiArLlRQDQo+ICsuQiBG
QU5fUkVQT1JUX0RGSURfTkFNRV9UQVJHRVQNCj4gK1RoaXMgaXMgYSBzeW5vbnltIGZvcg0K
PiArLlJCICggRkFOX1JFUE9SVF9ERklEX05BTUUgfCBGQU5fUkVQT1JUX0ZJRCB8IEZBTl9S
RVBPUlRfVEFSR0VUX0ZJRCApLg0KPiAgIC5QUA0KPiAgIC5UUA0KPiAgIC5CUiBGQU5fUkVQ
T1JUX1BJREZEICIgKHNpbmNlIExpbnV4IDUuMTUpIg0KPiBkaWZmIC0tZ2l0IGEvbWFuMi9m
YW5vdGlmeV9tYXJrLjIgYi9tYW4yL2Zhbm90aWZ5X21hcmsuMg0KPiBpbmRleCAzZGM1Mzhi
N2YuLmViYjMyN2JkZCAxMDA2NDQNCj4gLS0tIGEvbWFuMi9mYW5vdGlmeV9tYXJrLjINCj4g
KysrIGIvbWFuMi9mYW5vdGlmeV9tYXJrLjINCj4gQEAgLTQ3Miw2ICs0NzIsMTMgQEAgYW5k
DQo+ICAgYW5kDQo+ICAgLkkgcGF0aG5hbWUNCj4gICBkbyBub3Qgc3BlY2lmeSBhIGRpcmVj
dG9yeS4NCj4gK0ZvciBhbiBmYW5vdGlmeSBncm91cCB0aGF0IHdhcyBpbml0aWFsaXplZCB3
aXRoIGZsYWcNCj4gKy5CUiBGQU5fUkVQT1JUX1RBUkdFVF9GSUQgLA0KPiArdGhpcyBlcnJv
ciB3aWxsIGFsc28gYmUgcmV0dXJuZWQgd2hlbiB0cnlpbmcgdG8gc2V0IGRpcmVjdG9yeSBl
bnRyeSBtb2RpZmljYXRpb24NCj4gK2V2ZW50cyAoZS5nLiwNCg0KbWFuLXBhZ2VzKDcpOg0K
ICAgIFVzZSBzZW1hbnRpYyBuZXdsaW5lcw0KICAgICAgICBJbiB0aGUgc291cmNlIG9mIGEg
bWFudWFsIHBhZ2UsIG5ldyBzZW50ZW5jZXMgIHNob3VsZCAgYmUNCiAgICAgICAgc3RhcnRl
ZCBvbiBuZXcgbGluZXMsIGxvbmcgc2VudGVuY2VzIHNob3VsZCBiZSBzcGxpdCBpbnRvDQog
ICAgICAgIGxpbmVzICBhdCAgY2xhdXNlIGJyZWFrcyAoY29tbWFzLCBzZW1pY29sb25zLCBj
b2xvbnMsIGFuZA0KICAgICAgICBzbyBvbiksIGFuZCBsb25nIGNsYXVzZXMgc2hvdWxkIGJl
IHNwbGl0IGF0IHBocmFzZSBib3VuZOKAkA0KICAgICAgICBhcmllcy4gIFRoaXMgY29udmVu
dGlvbiwgIHNvbWV0aW1lcyAga25vd24gIGFzICAic2VtYW50aWMNCiAgICAgICAgbmV3bGlu
ZXMiLCAgbWFrZXMgaXQgZWFzaWVyIHRvIHNlZSB0aGUgZWZmZWN0IG9mIHBhdGNoZXMsDQog
ICAgICAgIHdoaWNoIG9mdGVuIG9wZXJhdGUgYXQgdGhlIGxldmVsIG9mIGluZGl2aWR1YWwg
c2VudGVuY2VzLA0KICAgICAgICBjbGF1c2VzLCBvciBwaHJhc2VzLg0KDQoNCkl0IG9ubHkg
YXBwbGllcyB0byB0aGUgMiBsaW5lcyBhYm92ZS4gIFRoZSByZXN0IG9mIHRoZSBwYXRjaCBs
b29rcyBnb29kLg0KDQo+ICsuQlIgRkFOX0NSRUFURSAsDQo+ICsuQlIgRkFOX0RFTEVURSAp
DQo+ICtpbiB0aGUgbWFzayBvZiBhIG5vbiBkaXJlY3RvcnkgaW5vZGUgbWFyay4NCj4gICAu
VFANCj4gICAuQiBFT1BOT1RTVVBQDQo+ICAgVGhlIG9iamVjdCBpbmRpY2F0ZWQgYnkNCj4g
ZGlmZiAtLWdpdCBhL21hbjcvZmFub3RpZnkuNyBiL21hbjcvZmFub3RpZnkuNw0KPiBpbmRl
eCBmNGQzOTE2MDMuLjVmMmMwMTQwOCAxMDA2NDQNCj4gLS0tIGEvbWFuNy9mYW5vdGlmeS43
DQo+ICsrKyBiL21hbjcvZmFub3RpZnkuNw0KPiBAQCAtMTcxLDE0ICsxNzEsMTQgQEAgYWxv
bmdzaWRlIHRoZSBnZW5lcmljDQo+ICAgc3RydWN0dXJlLg0KPiAgIEZvciBleGFtcGxlLA0K
PiAgIGlmIGEgbm90aWZpY2F0aW9uIGdyb3VwIGlzIGluaXRpYWxpemVkIHdpdGgNCj4gLS5C
IEZBTl9SRVBPUlRfRklEDQo+ICsuQiBGQU5fUkVQT1JUX1RBUkdFVF9GSUQNCj4gICBhbmQN
Cj4gICAuQlIgRkFOX1JFUE9SVF9QSURGRCAsDQo+IC10aGVuIGFuIGV2ZW50IGxpc3RlbmVy
IHNob3VsZCBhbHNvIGV4cGVjdCB0byByZWNlaXZlIGJvdGgNCj4gK3RoZW4gYW4gZXZlbnQg
bGlzdGVuZXIgc2hvdWxkIGV4cGVjdCB0byByZWNlaXZlIHVwIHRvIHR3bw0KPiAgIC5JIGZh
bm90aWZ5X2V2ZW50X2luZm9fZmlkDQo+IC1hbmQNCj4gK2luZm9ybWF0aW9uIHJlY29yZHMg
YW5kIG9uZQ0KPiAgIC5JIGZhbm90aWZ5X2V2ZW50X2luZm9fcGlkZmQNCj4gLXN0cnVjdHVy
ZXMgYWxvbmdzaWRlIHRoZSBnZW5lcmljDQo+ICtpbmZvcm1hdGlvbiByZWNvcmQgYWxvbmdz
aWRlIHRoZSBnZW5lcmljDQo+ICAgLkkgZmFub3RpZnlfZXZlbnRfbWV0YWRhdGENCj4gICBz
dHJ1Y3R1cmUuDQo+ICAgSW1wb3J0YW50bHksDQo+IEBAIC01NTIsNyArNTUyLDE1IEBAIGlk
ZW50aWZ5aW5nIGEgcGFyZW50IGRpcmVjdG9yeSBvYmplY3QsIGFuZCBvbmUgd2l0aA0KPiAg
IC5JIGluZm9fdHlwZQ0KPiAgIGZpZWxkIHZhbHVlIG9mDQo+ICAgLkJSIEZBTl9FVkVOVF9J
TkZPX1RZUEVfRklEICwNCj4gLWlkZW50aWZ5aW5nIGEgbm9uLWRpcmVjdG9yeSBvYmplY3Qu
DQo+ICtpZGVudGlmeWluZyBhIGNoaWxkIG9iamVjdC4NCj4gK05vdGUgdGhhdCBmb3IgdGhl
IGRpcmVjdG9yeSBlbnRyeSBtb2RpZmljYXRpb24gZXZlbnRzDQo+ICsuQlIgRkFOX0NSRUFU
RSAsDQo+ICsuQlIgRkFOX0RFTEVURSAsDQo+ICthbmQNCj4gKy5CUiBGQU5fTU9WRSAsDQo+
ICthbiBpbmZvcm1hdGlvbiByZWNvcmQgaWRlbnRpZnlpbmcgdGhlIGNyZWF0ZWQvZGVsZXRl
ZC9tb3ZlZCBjaGlsZCBvYmplY3QNCj4gK2lzIHJlcG9ydGVkIG9ubHkgaWYgYW4gZmFub3Rp
ZnkgZ3JvdXAgd2FzIGluaXRpYWxpemVkIHdpdGggdGhlIGZsYWcNCj4gKy5CUiBGQU5fUkVQ
T1JUX1RBUkdFVF9GSUQuDQo+ICAgLlRQDQo+ICAgLkkgZnNpZA0KPiAgIFRoaXMgaXMgYSB1
bmlxdWUgaWRlbnRpZmllciBvZiB0aGUgZmlsZXN5c3RlbSBjb250YWluaW5nIHRoZSBvYmpl
Y3QNCj4gQEAgLTU3MiwxNSArNTgwLDYgQEAgZmlsZXN5c3RlbSBhcyByZXR1cm5lZCBieQ0K
PiAgIEl0IGNhbiBiZSB1c2VkIHRvIHVuaXF1ZWx5IGlkZW50aWZ5IGEgZmlsZSBvbiBhIGZp
bGVzeXN0ZW0gYW5kIGNhbiBiZQ0KPiAgIHBhc3NlZCBhcyBhbiBhcmd1bWVudCB0bw0KPiAg
IC5CUiBvcGVuX2J5X2hhbmRsZV9hdCAoMikuDQo+IC1Ob3RlIHRoYXQgZm9yIHRoZSBkaXJl
Y3RvcnkgZW50cnkgbW9kaWZpY2F0aW9uIGV2ZW50cw0KPiAtLkJSIEZBTl9DUkVBVEUgLA0K
PiAtLkJSIEZBTl9ERUxFVEUgLA0KPiAtYW5kDQo+IC0uQlIgRkFOX01PVkUgLA0KPiAtdGhl
DQo+IC0uSSBmaWxlX2hhbmRsZQ0KPiAtaWRlbnRpZmllcyB0aGUgbW9kaWZpZWQgZGlyZWN0
b3J5IGFuZCBub3QgdGhlIGNyZWF0ZWQvZGVsZXRlZC9tb3ZlZCBjaGlsZA0KPiAtb2JqZWN0
Lg0KPiAgIElmIHRoZSB2YWx1ZSBvZg0KPiAgIC5JIGluZm9fdHlwZQ0KPiAgIGZpZWxkIGlz
DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------DY84LGLJr1HuH0X7Md25ENak--

--------------X54TKBZHOvLUXY70RpEHyvYw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKshrAACgkQnowa+77/
2zLaTA/9E7gurJIcaqPs0x8IqRAlSs2uIFZUWYUjSsnfvwGHdo0Ngc/eRPh4cATE
MWlwqBSYMA/ogRv2bJQGEm7pOC1g5ACRCW2MoWJVdCIxZq+6eSDdjyhpNh4MjiMo
55LRHBoCpSbs54g66YKIUrJVfKfY0ZBsYrxCVnzDsmAv4KeQ23iWPkm15ppxWjHl
wRibO3T0TsEczZ2w8GBBiClLHr+TSWMdeP6k/bIEKljt88IuxmRE7JdGXtxlcEqp
4YJGysM26ffCFrbWa6irhuylm8QSawIigzuBp55W3OvN1qfiEpznjkzm29U1jsGs
4uSvhZkTCBbPiluu/r/cIViR0HVPbMdzxzZtUmcIlIdT2ORPrJN2PHJ0fh3HFy/w
G50GSKBh3Trh7unyoa7VCazF/+okRrKDkGRkRIaNI61WztUO2L/UTJnz5MxLmxpv
N2QSU+5Dv1o+RmNPWR9jOxyDLMUeBx26sRqPwCm2cjttnmaVmpu89Ddm0WnQQiR6
NXQhtyYMyFctIdCUTFvXpxUT2IQCUWXV85gIg3t3Rwh05TrW0nm9H6F5EGEYV+xy
SqFeP28VI480AQ0TgVS0R37PrFd8yumtKkfdjTo5t6apudXkIlV+AnXDHn+6LoqY
TqUZhSaEUwJnxm7v7tOdtIdHhwYk5CKBvrH2ATQMeTzS6M7BbLg=
=1BNy
-----END PGP SIGNATURE-----

--------------X54TKBZHOvLUXY70RpEHyvYw--
