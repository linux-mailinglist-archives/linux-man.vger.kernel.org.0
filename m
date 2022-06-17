Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 611A654F8A2
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 15:53:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233259AbiFQNxd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 09:53:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382507AbiFQNx2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 09:53:28 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D537410550
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:53:26 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id g4so5849812wrh.11
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=v+dffu7Vl5EWAH2oj4t8ZJPSZEpJ2xXENJ5weMwvI/8=;
        b=Kg9kV3JbqonVp/XUkghRDhW00AAGJo1F4n2JkaAf683y6u67BJHs4N2PTABBVKgYz1
         6r1w+uvaSDFgopniMhrrV2kJ+8Q/yrNR/GKuX+gTBYbBWuyJx/sOUTrrkaenk8XDTibX
         soFyVzDHItXmaVGjbPtn06TkVdKoBNFEf4qtxZQe9Zo85s8TmaDHzERGiVlqUZV06d3+
         oK++BS9LQob0EQuqscq7N1MEkRRqE+EBD/04KZoGtkJeVI6MtJyD2os4JqVMaNLGgOqE
         zgMo9zEEJOE5kGXDqko4qGvmHynwZSXFAzOTQkot+WWCRu4wKVCQ/ekd42Pex9qaMNeJ
         xb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=v+dffu7Vl5EWAH2oj4t8ZJPSZEpJ2xXENJ5weMwvI/8=;
        b=BUV96k5DsvlM4uvLpnqlZojbcCDXlFiFrFV34SLZjuugJYrAM4lUXdmPXbR/P90aSS
         lmyIFMqwS2qhrDi7oTepxPin3DOsXFOsMswq/nD0G3bWxxlsbMaOiHhClm3V9Vn2MWBw
         8ZcPlv0ZXwZB+xvu1X8P2kvEoRhXUA2FcKS7i1wAkkLKmiRdAWz5I9uTqxQtPZK1TUU0
         hg1AVtCiDLP4J6hDbPIYvGzLV86JF3jNFOUQhE2Zku++fzDRm6WXNzZzk0GLo6h9lsc/
         iKdtgjmclVxf7SKPY1Wif9UL0BodWUq3QRLI97RdVY9Dx7Jhyp/xbTW/glHQWDZ7vtN1
         f7IQ==
X-Gm-Message-State: AJIora9fwb0mCxusuow8KaKE5BB/pkxCL3dG6uMc8POH0m1QYHr5Io8s
        lGYt5pRAoocI/yuwRsctwuc=
X-Google-Smtp-Source: AGRyM1sBgsQvHVYfXpuql1Pkx9erHp0u3C+ap6ZzbTt9UL5r0cfq9+87y2ymNleTjkje93Oe+EcxRw==
X-Received: by 2002:a5d:47a4:0:b0:218:5829:dced with SMTP id 4-20020a5d47a4000000b002185829dcedmr9498398wrb.56.1655474005396;
        Fri, 17 Jun 2022 06:53:25 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p124-20020a1c2982000000b0039c7dbafa7asm9306429wmp.19.2022.06.17.06.53.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 06:53:24 -0700 (PDT)
Message-ID: <b6c66d7a-4a1c-6a05-e609-eeb8d95f58fb@gmail.com>
Date:   Fri, 17 Jun 2022 15:53:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 2/2] fanotify.7, fanotify_init.2, fanotify_mark.2:
 Document FAN_RENAME
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
References: <20220617131158.1661235-1-amir73il@gmail.com>
 <20220617131158.1661235-3-amir73il@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220617131158.1661235-3-amir73il@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------g0PJZYIGVh09dmdwwJLX8Xxp"
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
--------------g0PJZYIGVh09dmdwwJLX8Xxp
Content-Type: multipart/mixed; boundary="------------CFDm2mtk742ocZ6gmA7TpZSs";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
 Matthew Bobrowski <repnop@google.com>, linux-man@vger.kernel.org
Message-ID: <b6c66d7a-4a1c-6a05-e609-eeb8d95f58fb@gmail.com>
Subject: Re: [PATCH 2/2] fanotify.7, fanotify_init.2, fanotify_mark.2:
 Document FAN_RENAME
References: <20220617131158.1661235-1-amir73il@gmail.com>
 <20220617131158.1661235-3-amir73il@gmail.com>
In-Reply-To: <20220617131158.1661235-3-amir73il@gmail.com>

--------------CFDm2mtk742ocZ6gmA7TpZSs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8xNy8yMiAxNToxMSwgQW1pciBHb2xkc3RlaW4gd3JvdGU6DQo+IEZBTl9SRU5BTUUg
aXMgYSBuZXcgZXZlbnQgdHlwZSB0aGF0IGluY2x1ZGVzIGluZm9ybWF0aW9uIGFib3V0DQo+
IGJvdGggb2xkIGFuZCBuZXcgZGlyZWN0b3J5IGVudHJpZXMuDQo+IA0KPiBJdCBpcyBhIHN1
Y2Nlc3NvciBvZiB0aGUgdHdvIHNlcGFyYXRlIEZBTl9NT1ZFRF9UTy9GUk9NIGV2ZW50cywN
Cj4gYnV0IHRob3NlIGV2ZW50IHR5cGVzIGFyZSBzdGlsbCBzdXBwb3J0ZWQuDQo+IA0KPiBS
ZXZpZXdlZC1ieTogTWF0dGhldyBCb2Jyb3dza2kgPHJlcG5vcEBnb29nbGUuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBBbWlyIEdvbGRzdGVpbiA8YW1pcjczaWxAZ21haWwuY29tPg0KDQpQ
bGVhc2UsIGFsc28gY2hlY2sgc29tZSBtaW5vciBjb21tZW50cyBiZWxvdyBmb3IgdGhpcyBw
YXRjaC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuMi9mYW5vdGlmeV9p
bml0LjIgfCAyMSArKysrKysrKysrKysrKysrKy0tLS0NCj4gICBtYW4yL2Zhbm90aWZ5X21h
cmsuMiB8IDE2ICsrKysrKysrKysrKysrKysNCj4gICBtYW43L2Zhbm90aWZ5LjcgICAgICB8
ICA0ICsrKysNCj4gICAzIGZpbGVzIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMi9mYW5vdGlmeV9pbml0LjIgYi9t
YW4yL2Zhbm90aWZ5X2luaXQuMg0KPiBpbmRleCBhYzRkM2EzMDUuLmJmODdmMzk0YiAxMDA2
NDQNCj4gLS0tIGEvbWFuMi9mYW5vdGlmeV9pbml0LjINCj4gKysrIGIvbWFuMi9mYW5vdGlm
eV9pbml0LjINCj4gQEAgLTE3Myw2ICsxNzMsNyBAQCBBZGRpdGlvbmFsbHksIGl0IG1heSBi
ZSB1c2VkIGZvciBhcHBsaWNhdGlvbnMgbW9uaXRvcmluZyBhIGRpcmVjdG9yeSBvciBhDQo+
ICAgZmlsZXN5c3RlbSB0aGF0IGFyZSBpbnRlcmVzdGVkIGluIHRoZSBkaXJlY3RvcnkgZW50
cnkgbW9kaWZpY2F0aW9uIGV2ZW50cw0KPiAgIC5CUiBGQU5fQ1JFQVRFICwNCj4gICAuQlIg
RkFOX0RFTEVURSAsDQo+ICsuQlIgRkFOX1JFTkFNRSAsDQo+ICAgYW5kDQo+ICAgLkJSIEZB
Tl9NT1ZFICwNCg0KU2VlIGJlbG93Lg0KDQo+ICAgb3IgaW4gZXZlbnRzIHN1Y2ggYXMNCj4g
QEAgLTI1Nyw2ICsyNTgsMTUgQEAgRm9yIHRoZSBkaXJlY3RvcnkgZW50cnkgbW9kaWZpY2F0
aW9uIGV2ZW50cw0KPiAgIGFuZA0KPiAgIC5CUiBGQU5fTU9WRSAsDQo+ICAgdGhlIHJlcG9y
dGVkIG5hbWUgaXMgdGhhdCBvZiB0aGUgY3JlYXRlZC9kZWxldGVkL21vdmVkIGRpcmVjdG9y
eSBlbnRyeS4NCj4gK1RoZSBldmVudA0KPiArLkIgRkFOX1JFTkFNRQ0KDQpXaHkgZG9lcyBS
RU5BTUUgYXBwZWFyIHNvbWV0aW1lcyBhZnRlciBhbmQgc29tZXRpbWVzIGJlZm9yZSBNT1ZF
Pw0KDQo+ICttYXkgY29udGFpbiB0d28gaW5mb3JtYXRpb24gcmVjb3Jkcy4NCj4gK09uZSBv
ZiB0eXBlDQo+ICsuQiBGQU5fRVZFTlRfSU5GT19UWVBFX09MRF9ERklEX05BTUUNCj4gK2lk
ZW50aWZ5aW5nIHRoZSBvbGQgZGlyZWN0b3J5IGVudHJ5LA0KPiArYW5kIGFub3RoZXIgb2Yg
dHlwZQ0KPiArLkIgRkFOX0VWRU5UX0lORk9fVFlQRV9ORVdfREZJRF9OQU1FDQo+ICtpZGVu
dGlmeWluZyB0aGUgbmV3IGRpcmVjdG9yeSBlbnRyeS4NCj4gICBGb3Igb3RoZXIgZXZlbnRz
IHRoYXQgb2NjdXIgb24gYSBkaXJlY3Rvcnkgb2JqZWN0LCB0aGUgcmVwb3J0ZWQgZmlsZSBo
YW5kbGUNCj4gICBpcyB0aGF0IG9mIHRoZSBkaXJlY3Rvcnkgb2JqZWN0IGl0c2VsZiBhbmQg
dGhlIHJlcG9ydGVkIG5hbWUgaXMgJy4nLg0KPiAgIEZvciBvdGhlciBldmVudHMgdGhhdCBv
Y2N1ciBvbiBhIG5vbi1kaXJlY3Rvcnkgb2JqZWN0LCB0aGUgcmVwb3J0ZWQgZmlsZSBoYW5k
bGUNCj4gQEAgLTMwMSwxNCArMzExLDE3IEBAIHdpbGwgYmUgcmV0dXJuZWQuDQo+ICAgRm9y
IHRoZSBkaXJlY3RvcnkgZW50cnkgbW9kaWZpY2F0aW9uIGV2ZW50cw0KPiAgIC5CUiBGQU5f
Q1JFQVRFICwNCj4gICAuQlIgRkFOX0RFTEVURSAsDQo+ICsuQlIgRkFOX1JFTkFNRSAsDQo+
ICAgYW5kDQo+ICAgLkJSIEZBTl9NT1ZFICwNCg0KU2VlIGFib3ZlLiAgVGhlcmUgYXJlIG1v
cmUgY2FzZXMgYmVsb3cuICBQbGVhc2UgY2hlY2sgYWxsIG9mIHRoZW0sIGFuZCANCnRyeSB0
byBiZSBjb25zaXN0ZW50LCBpZiBubyBvdGhlciBtb3JlIGltcG9ydGFudCByZWFzb24gYXBw
bGllcy4NCg0KPiAgIGFuIGFkZGl0aW9uYWwgcmVjb3JkIG9mIHR5cGUNCj4gICAuQlIgRkFO
X0VWRU5UX0lORk9fVFlQRV9GSUQgLA0KPiAtaXMgcmVwb3J0ZWQgaW4gYWRkaXRpb24gdG8g
dGhlIGluZm9ybWF0aW9uIHJlY29yZCBvZiB0eXBlDQo+IC0uQiBGQU5fRVZFTlRfSU5GT19U
WVBFX0RGSUQNCj4gLW9yDQo+IC0uQlIgRkFOX0VWRU5UX0lORk9fVFlQRV9ERklEX05BTUUg
Lg0KPiAraXMgcmVwb3J0ZWQgaW4gYWRkaXRpb24gdG8gdGhlIGluZm9ybWF0aW9uIHJlY29y
ZHMgb2YgdHlwZQ0KPiArLkJSIEZBTl9FVkVOVF9JTkZPX1RZUEVfREZJRCAsDQo+ICsuQlIg
RkFOX0VWRU5UX0lORk9fVFlQRV9ERklEX05BTUUgLA0KPiArLkJSIEZBTl9FVkVOVF9JTkZP
X1RZUEVfT0xEX0RGSURfTkFNRSAsDQo+ICthbmQNCj4gKy5CUiBGQU5fRVZFTlRfSU5GT19U
WVBFX05FV19ERklEX05BTUUgLg0KPiAgIFRoZSBhZGRpdGlvbmFsIHJlY29yZCBpbmNsdWRl
cyBhIGZpbGUgaGFuZGxlDQo+ICAgdGhhdCBpZGVudGlmaWVzIHRoZSBmaWxlc3lzdGVtIGNo
aWxkIG9iamVjdA0KPiAgIHRoYXQgdGhlIGRpcmVjdG9yeSBlbnRyeSBpcyByZWZlcnJpbmcg
dG8uDQo+IGRpZmYgLS1naXQgYS9tYW4yL2Zhbm90aWZ5X21hcmsuMiBiL21hbjIvZmFub3Rp
ZnlfbWFyay4yDQo+IGluZGV4IGViYjMyN2JkZC4uZWI4MjMyNWI2IDEwMDY0NA0KPiAtLS0g
YS9tYW4yL2Zhbm90aWZ5X21hcmsuMg0KPiArKysgYi9tYW4yL2Zhbm90aWZ5X21hcmsuMg0K
PiBAQCAtMjQwLDYgKzI0MCwxOSBAQCBkaXJlY3RvcnkuDQo+ICAgQW4gZmFub3RpZnkgZ3Jv
dXAgdGhhdCBpZGVudGlmaWVzIGZpbGVzeXN0ZW0gb2JqZWN0cyBieSBmaWxlIGhhbmRsZXMN
Cj4gICBpcyByZXF1aXJlZC4NCj4gICAuVFANCj4gKy5CUiBGQU5fUkVOQU1FICIgKHNpbmNl
IExpbnV4IDUuMTcpIg0KPiArLlwiIGNvbW1pdCA4Y2MzYjFjY2Q5MzBmZTY5NzFlMTUyN2Yw
YzRmMWJkYzhjYjU2MDI2DQo+ICtUaGlzIGV2ZW50IGNvbnRhaW5zIHRoZSBzYW1lIGluZm9y
bWF0aW9uIHByb3ZpZGVkIGJ5IGV2ZW50cw0KPiArLkIgRkFOX01PVkVEX0ZST00NCj4gK2Fu
ZA0KPiArLkJSIEZBTl9NT1ZFRF9UTyAsDQo+ICtob3dldmVyIGlzIHJlcHJlc2VudGVkIGJ5
IGEgc2luZ2xlIGV2ZW50IHdpdGggdXAgdG8gdHdvIGluZm9ybWF0aW9uIHJlY29yZHMuDQo+
ICtBbiBmYW5vdGlmeSBncm91cCB0aGF0IGlkZW50aWZpZXMgZmlsZXN5c3RlbSBvYmplY3Rz
IGJ5IGZpbGUgaGFuZGxlcw0KPiAraXMgcmVxdWlyZWQuDQo+ICtJZiB0aGUgZmlsZXN5c3Rl
bSBvYmplY3QgdG8gYmUgbWFya2VkIGlzIG5vdCBhIGRpcmVjdG9yeSwgdGhlIGVycm9yDQo+
ICsuQiBFTk9URElSDQo+ICtzaGFsbCBiZSByYWlzZWQuDQo+ICsuVFANCj4gICAuQlIgRkFO
X01PVkVfU0VMRiAiIChzaW5jZSBMaW51eCA1LjEpIg0KPiAgIC5cIiBjb21taXQgMjM1MzI4
ZDFmYTQyNTFjNmRjYjMyMzUxMjE5YmI1NTNhNTg4MzhkMg0KPiAgIENyZWF0ZSBhbiBldmVu
dCB3aGVuIGEgbWFya2VkIGZpbGUgb3IgZGlyZWN0b3J5IGl0c2VsZiBoYXMgYmVlbiBtb3Zl
ZC4NCj4gQEAgLTQ3Miw2ICs0ODUsOSBAQCBhbmQNCj4gICBhbmQNCj4gICAuSSBwYXRobmFt
ZQ0KPiAgIGRvIG5vdCBzcGVjaWZ5IGEgZGlyZWN0b3J5Lg0KPiArVGhpcyBlcnJvciB3aWxs
IGFsc28gYmUgcmV0dXJuZWQgd2hlbiB0cnlpbmcgdG8gc2V0IHRoZSBldmVudA0KPiArLkIg
RkFOX1JFTkFNRQ0KPiAraW4gdGhlIG1hc2sgb2YgYSBub24gZGlyZWN0b3J5IGlub2RlIG1h
cmsuDQo+ICAgRm9yIGFuIGZhbm90aWZ5IGdyb3VwIHRoYXQgd2FzIGluaXRpYWxpemVkIHdp
dGggZmxhZw0KPiAgIC5CUiBGQU5fUkVQT1JUX1RBUkdFVF9GSUQgLA0KPiAgIHRoaXMgZXJy
b3Igd2lsbCBhbHNvIGJlIHJldHVybmVkIHdoZW4gdHJ5aW5nIHRvIHNldCBkaXJlY3Rvcnkg
ZW50cnkgbW9kaWZpY2F0aW9uDQo+IGRpZmYgLS1naXQgYS9tYW43L2Zhbm90aWZ5LjcgYi9t
YW43L2Zhbm90aWZ5LjcNCj4gaW5kZXggNWYyYzAxNDA4Li5lMDg1MDgzMzcgMTAwNjQ0DQo+
IC0tLSBhL21hbjcvZmFub3RpZnkuNw0KPiArKysgYi9tYW43L2Zhbm90aWZ5LjcNCj4gQEAg
LTM5MSw2ICszOTEsOSBAQCBBIHdhdGNoZWQgZmlsZSBvciBkaXJlY3Rvcnkgd2FzIGRlbGV0
ZWQuDQo+ICAgLkIgRkFOX0ZTX0VSUk9SDQo+ICAgQSBmaWxlc3lzdGVtIGVycm9yIHdhcyBk
ZXRlY3RlZC4NCj4gICAuVFANCj4gKy5CIEZBTl9SRU5BTUUNCj4gK0EgZmlsZSBvciBkaXJl
Y3RvcnkgaGFzIGJlZW4gbW92ZWQgdG8gb3IgZnJvbSBhIHdhdGNoZWQgcGFyZW50IGRpcmVj
dG9yeS4NCj4gKy5UUA0KPiAgIC5CIEZBTl9NT1ZFRF9GUk9NDQo+ICAgQSBmaWxlIG9yIGRp
cmVjdG9yeSBoYXMgYmVlbiBtb3ZlZCBmcm9tIGEgd2F0Y2hlZCBwYXJlbnQgZGlyZWN0b3J5
Lg0KPiAgIC5UUA0KPiBAQCAtNTU2LDYgKzU1OSw3IEBAIGlkZW50aWZ5aW5nIGEgY2hpbGQg
b2JqZWN0Lg0KPiAgIE5vdGUgdGhhdCBmb3IgdGhlIGRpcmVjdG9yeSBlbnRyeSBtb2RpZmlj
YXRpb24gZXZlbnRzDQo+ICAgLkJSIEZBTl9DUkVBVEUgLA0KPiAgIC5CUiBGQU5fREVMRVRF
ICwNCj4gKy5CUiBGQU5fUkVOQU1FICwNCj4gICBhbmQNCj4gICAuQlIgRkFOX01PVkUgLA0K
PiAgIGFuIGluZm9ybWF0aW9uIHJlY29yZCBpZGVudGlmeWluZyB0aGUgY3JlYXRlZC9kZWxl
dGVkL21vdmVkIGNoaWxkIG9iamVjdA0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0
cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------CFDm2mtk742ocZ6gmA7TpZSs--

--------------g0PJZYIGVh09dmdwwJLX8Xxp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKsh1IACgkQnowa+77/
2zJ9yQ/+KTI6+gtzIN/bl8Amw3oOCp5LvoYTJzBzvvyb8YsrQQKCUxXxb5OKF7W+
0f7M/TGFC1gnPAZ7Srk5+XhZLqFWC+z8+vHj74MriQX8Fmdt/Jzk96R3JBcQ/3FG
MYwmj21eDnbxNLGKaNcG/vDRhprTK/JQkTVPR4BEzmoV3Keajs2tpoWvF+/BX6sD
jHZAUZX5QDKzb0flJL4Y6CH2/TncLomv6OPgRjdghTRHoS+zGVupDVukKZ1pZEYs
Ykn1cqyCzvQWgq6z4j3494nvk1zitGPizsHXZRp/RBXl5s3ARsgtQ+17RYHdw21D
43/dTCqBcRBZjmWgdOEFNwGslPInwiRX51sDxW8bN+zk0U+Qm7+4Axi9GIMcVwX0
i+Ow/Sf88fxocORfsnJXSDC9i2JrJ4UU+pK1BjhwYB4BMAgYeC5e1MkXXrQVenEp
1VA0PjzRSgqHoPGR+dQVMZLyBpjNr8S3U17/KHnPG8n9dmjMR3+7agv/4EyS0geC
ElKJ2R5jf31RlO/rNqiau7lHUK22Ge3IhoENSr/dDeDHsmjcX90ff94ZDK9R2EgZ
A3SVXmeZX/006AhsBBIIhWbFc7YKrsW8lfneIp+1h6x2mDAewqHOFSGDE9s5mHb7
FcjHpkMb6AMkgmqju+9MEvmKet+5WlCmXaN4XZnANQfH6MYLohE=
=muXX
-----END PGP SIGNATURE-----

--------------g0PJZYIGVh09dmdwwJLX8Xxp--
