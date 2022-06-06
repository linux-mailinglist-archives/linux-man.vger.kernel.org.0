Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A898E53EE5A
	for <lists+linux-man@lfdr.de>; Mon,  6 Jun 2022 21:14:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbiFFTO2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jun 2022 15:14:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbiFFTO2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jun 2022 15:14:28 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21617103F
        for <linux-man@vger.kernel.org>; Mon,  6 Jun 2022 12:14:26 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id z9so1367940wmf.3
        for <linux-man@vger.kernel.org>; Mon, 06 Jun 2022 12:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=H+srC1Owd2V/pC5Ryp2KO93Sov9YIgsvEOVT+VOkGPU=;
        b=DYFVIxPW3FKkPUT7he7lkiSgmjbwQb4MihnYqkFKZTqEdAUW6aFf+nLfDtaVYtPBY4
         Ztvf2oRazIGF9w6uYyZY5BAM0XhdLg2t9Aan+osjMbtHUJGjhQyxksUNjti5+byayh99
         9NJXSyaO4kkHr3mS+mOKIq5oEaHisUNrWOTIaB3BIFYW2Fa9YfBc2I7uo+C5RWm+7SJR
         2IGdkXgAPRNJ3tWZWuRd+/JZBcxuGpzybl3LOThRpX1QTDXX/OtMSzpXV6uD7JoFE+w/
         LvX2uofN4ZAW3p8/bd3PSwrU9m44MsrE6LT5piefXWKMAlL0IO8fYiaTUiuFZYWV33yd
         AUsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=H+srC1Owd2V/pC5Ryp2KO93Sov9YIgsvEOVT+VOkGPU=;
        b=rBjdBlQ9lbaFFr4XRiBlVmLjPF9NXzmsNEuh6jBeD3n34vWRByyHgFPrvt1X/kebXG
         CnNlGBTBb2oyk1vkdxClrUQDfDpaC1p118/S2DO24Jr2eyRtavXKMQw7IGYEOChbtgrl
         SKA3QBMYEAJYQym/8YdUn65II7Di8B1J/y+jMQapFexhpOfmH8V8oS0BCi5ntgqe1n8d
         w7QOBEA3J0ECl3dgWf4pywHgIKrcSba0RRljaLZF1Y/z9p7bKpXXFOoiFFRj8+ghH+H/
         1bd7DOM79brgzFJzi3vhBkYZrnH7yoX0guqyHjOQPTx5oJQSkOJ597+76GUaRjLmFzGG
         uyMg==
X-Gm-Message-State: AOAM532dZUn+2MhqhpF/6y3XPuUZ2HTdI0Kk9ca8b6IOuI3rUG3louYZ
        1QBmzVIH5WYmb1QAeM3rBoM=
X-Google-Smtp-Source: ABdhPJyj4RLT0Evy5ibYRpJug+si8LudQ0HO7X1YNBH+8SaH7f6O7DOCvqKD9u00ewfuSsgqGJy8+g==
X-Received: by 2002:a7b:c116:0:b0:39c:494a:d4f7 with SMTP id w22-20020a7bc116000000b0039c494ad4f7mr11819759wmi.73.1654542864682;
        Mon, 06 Jun 2022 12:14:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g9-20020a05600c4ec900b0039c17452732sm24424407wmq.19.2022.06.06.12.14.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 12:14:23 -0700 (PDT)
Message-ID: <ab4bc63e-f497-d5e3-1a9a-f58e12f52b0c@gmail.com>
Date:   Mon, 6 Jun 2022 21:14:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH] lirc.4: document lirc changes in the kernel
Content-Language: en-US
To:     Sean Young <sean@mess.org>
Cc:     linux-man@vger.kernel.org
References: <Yos/9usw6be5l4jh@gofer.mess.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Yos/9usw6be5l4jh@gofer.mess.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------prfeSikYKisJd8K0z8kMOjYv"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------prfeSikYKisJd8K0z8kMOjYv
Content-Type: multipart/mixed; boundary="------------tY6dLjMK5ggeVKIAQKWH840C";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sean Young <sean@mess.org>
Cc: linux-man@vger.kernel.org
Message-ID: <ab4bc63e-f497-d5e3-1a9a-f58e12f52b0c@gmail.com>
Subject: Re: [PATCH] lirc.4: document lirc changes in the kernel
References: <Yos/9usw6be5l4jh@gofer.mess.org>
In-Reply-To: <Yos/9usw6be5l4jh@gofer.mess.org>

--------------tY6dLjMK5ggeVKIAQKWH840C
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2VhbiwNCg0KT24gNS8yMy8yMiAxMDowNCwgU2VhbiBZb3VuZyB3cm90ZToNCj4gTGlu
dXggNS4xNyBtYWtlcyBMSVJDX1NFVF9SRUNfVElNRU9VVF9SRVBPUlRTIGFuIG5vLW9wIGFu
ZCA1LjE4DQo+IGludHJvZHVjZXMgTElSQ19PVkVSRkxPVy4gQWxzbyBzb21lIHJld29yZGlu
ZyB0byBjbGFyaWZ5Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogU2VhbiBZb3VuZyA8c2VhbkBt
ZXNzLm9yZz4NCg0KQ291bGQgeW91IHBsZWFzZSBwcm92aWRlIHNvbWUga2VybmVsIGNvbW1p
dHMgdGhhdCBzaG93IHRoZXNlIGNoYW5nZXM/DQpJdCB3b3VsZCBiZSBuaWNlIHRvIGJlIGFi
bGUgdG8gZWFzaWx5IGNoZWNrLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBt
YW40L2xpcmMuNCB8IDUxICsrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAy
NiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW40L2xpcmMuNCBiL21hbjQv
bGlyYy40DQo+IGluZGV4IDhiYzhhOTVjZi4uZWIzYzhkMTQxIDEwMDY0NA0KPiAtLS0gYS9t
YW40L2xpcmMuNA0KPiArKysgYi9tYW40L2xpcmMuNA0KPiBAQCAtNDcsOCArNDcsNiBAQCBP
dGhlciBoYXJkd2FyZSBwcm92aWRlcyBhIHN0cmVhbSBvZiBwdWxzZS9zcGFjZSBkdXJhdGlv
bnMuDQo+ICAgU3VjaCBkcml2ZXJzIHdvcmsgaW4NCj4gICAuQlIgTElSQ19NT0RFX01PREUy
DQo+ICAgbW9kZS4NCj4gLVNvbWV0aW1lcywgdGhpcyBraW5kIG9mIGhhcmR3YXJlIGFsc28g
c3VwcG9ydHMNCj4gLXNlbmRpbmcgSVIgZGF0YS4NCj4gICBTdWNoIGhhcmR3YXJlIGNhbiBi
ZSB1c2VkIHdpdGggKGFsbW9zdCkgYW55IGtpbmQgb2YgcmVtb3RlLg0KPiAgIFRoaXMgdHlw
ZSBvZiBoYXJkd2FyZSBjYW4gYWxzbyBiZSB1c2VkIGluDQo+ICAgLkJSIExJUkNfTU9ERV9T
Q0FOQ09ERQ0KPiBAQCAtNTgsNiArNTYsOCBAQCBUaGVzZSBkZWNvZGVycyBjYW4gYmUgd3Jp
dHRlbiBpbiBleHRlbmRlZCBCUEYgKHNlZQ0KPiAgIGFuZCBhdHRhY2hlZCB0byB0aGUNCj4g
ICAuQiBsaXJjDQo+ICAgZGV2aWNlLg0KPiArU29tZXRpbWVzLCB0aGlzIGtpbmQgb2YgaGFy
ZHdhcmUgYWxzbyBzdXBwb3J0cw0KPiArc2VuZGluZyBJUiBkYXRhLg0KPiAgIC5QUA0KPiAg
IFRoZSBcZkJMSVJDX0dFVF9GRUFUVVJFU1xmUiBpb2N0bCAoc2VlIGJlbG93KSBhbGxvd3Mg
cHJvYmluZyBmb3Igd2hldGhlcg0KPiAgIHJlY2VpdmluZyBhbmQgc2VuZGluZyBpcyBzdXBw
b3J0ZWQsIGFuZCBpbiB3aGljaCBtb2RlcywgYW1vbmdzdCBvdGhlcg0KPiBAQCAtNjgsNiAr
NjgsMTEgQEAgSW4gdGhlIFxmQkxJUkNfTU9ERV9NT0RFMiBtb2RlXGZSLCB0aGUgZGF0YSBy
ZXR1cm5lZCBieQ0KPiAgIC5CUiByZWFkICgyKQ0KPiAgIHByb3ZpZGVzIDMyLWJpdCB2YWx1
ZXMgcmVwcmVzZW50aW5nIGEgc3BhY2Ugb3IgYSBwdWxzZSBkdXJhdGlvbi4NCj4gICBUaGUg
dGltZSBvZiB0aGUgZHVyYXRpb24gKG1pY3Jvc2Vjb25kcykgaXMgZW5jb2RlZCBpbiB0aGUg
bG93ZXIgMjQgYml0cy4NCj4gK1B1bHNlIChhbHNvIGtub3duIGFzIGZsYXNoKSBpbmRpY2F0
ZXMgYSBkdXJhdGlvbiBvZiBpbmZyYXJlZCBsaWdodCBiZWluZw0KPiArZGV0ZWN0ZWQsIGFu
ZCBzcGFjZSAoYWxzbyBrbm93biBhcyBnYXApIGluZGljYXRlcyBhIGR1cmF0aW9uIHdpdGgg
bm8gaW5mcmFyZWQuDQo+ICtJZiB0aGUgZHVyYXRpb24gb2Ygc3BhY2UgZXhjZWVkcyB0aGUg
aW5hY3Rpdml0eSB0aW1lb3V0LA0KPiArYSBzcGVjaWFsIHRpbWVvdXQgcGFja2FnZSBpcyBk
ZWxpdmVyZWQsIHdoaWNoIG1hcmtzIHRoZSBlbmQgb2YNCj4gK2EgbWVzc2FnZS4NCj4gICBU
aGUgdXBwZXIgOCBiaXRzIGluZGljYXRlIHRoZSB0eXBlIG9mIHBhY2thZ2U6DQo+ICAgLlRQ
IDQNCj4gICAuQlIgTElSQ19NT0RFMl9TUEFDRQ0KPiBAQCAtODcsNiArOTIsMTAgQEAgVGhl
IHBhY2thZ2UgcmVmbGVjdHMgYSB0aW1lb3V0OyBzZWUgdGhlDQo+ICAgLkIgTElSQ19TRVRf
UkVDX1RJTUVPVVRfUkVQT1JUUw0KPiAgIGlvY3RsLg0KPiAgIC5cIg0KPiArLlRQIDQNCj4g
Ky5CUiBMSVJDX01PREUyX09WRVJGTE9XDQo+ICtUaGUgSVIgcmVjZWl2ZXIgZW5jb3VudGVy
ZWQgYW4gb3ZlcmZsb3csIGFuZCBhcyBhIHJlc3VsdCBkYXRhIGlzIG1pc3NpbmcNCj4gKyhz
aW5jZSBMaW51eCA1LjE4KS4NCj4gICAuU1MgUmVhZGluZyBpbnB1dCB3aXRoIHRoZSBMSVJD
X01PREVfU0NBTkNPREUgbW9kZQ0KPiAgIEluIHRoZSBcZkJMSVJDX01PREVfU0NBTkNPREVc
ZlINCj4gICBtb2RlLCB0aGUgZGF0YSByZXR1cm5lZCBieQ0KPiBAQCAtMTIyLDMwICsxMzEs
MTcgQEAgVGhlIHByb3RvY29sIG9yIHNjYW5jb2RlIGlzIGludmFsaWQsIG9yIHRoZQ0KPiAg
IC5CIGxpcmMNCj4gICBkZXZpY2UgY2Fubm90IHRyYW5zbWl0Lg0KPiAgIC5TSCBJT0NUTCBD
T01NQU5EUw0KPiAtVGhlIExJUkMgZGV2aWNlJ3MgaW9jdGwgZGVmaW5pdGlvbiBpcyBib3Vu
ZCBieSB0aGUgaW9jdGwgZnVuY3Rpb24NCj4gLWRlZmluaXRpb24gb2YNCj4gLS5JUiAic3Ry
dWN0IGZpbGVfb3BlcmF0aW9ucyIgLA0KPiAtbGVhdmluZyB1cyB3aXRoIGFuDQo+IC0uSVIg
InVuc2lnbmVkIGludCINCj4gLWZvciB0aGUgaW9jdGwgY29tbWFuZCBhbmQgYW4NCj4gLS5J
UiAidW5zaWduZWQgbG9uZyINCj4gLWZvciB0aGUgYXJndW1lbnQuDQo+IC1Gb3IgdGhlIHB1
cnBvc2VzIG9mIGlvY3RsIHBvcnRhYmlsaXR5IGFjcm9zcyAzMi1iaXQgYW5kIDY0LWJpdCBh
cmNoaXRlY3R1cmVzLA0KPiAtdGhlc2UgdmFsdWVzIGFyZSBjYXBwZWQgdG8gdGhlaXIgMzIt
Yml0IHNpemVzLg0KPiAtLlBQDQo+ICAgLm5mDQo+ICAgI2luY2x1ZGUgPGxpbnV4L2xpcmMu
aD4gICAgLyogQnV0IHNlZSBCVUdTICovDQo+IC1pbnQgaW9jdGwoaW50IGZkLCBpbnQgY21k
LCAuLi4pOw0KPiArDQo+ICtpbnQgaW9jdGwoaW50IGZkLCBpbnQgY21kLCBpbnQgKnZhbCk7
DQo+ICAgLmZpDQo+ICAgLlBQDQo+IC1UaGUgZm9sbG93aW5nIGlvY3RscyBjYW4gYmUgdXNl
ZCB0byBwcm9iZSBvciBjaGFuZ2Ugc3BlY2lmaWMNCj4gK1RoZSBmb2xsb3dpbmcgXGZCaW9j
dGxcZlIoMikgb3BlcmF0aW9ucyBhcmUgcHJvdmlkZWQgYnkgdGhlDQo+ICsuQiBsaXJjDQo+
ICtjaGFyYWN0ZXIgZGV2aWNlIHRvIHByb2JlIG9yIGNoYW5nZSBzcGVjaWZpYw0KPiAgIC5C
IGxpcmMNCj4gICBoYXJkd2FyZSBzZXR0aW5ncy4NCj4gLU1hbnkgcmVxdWlyZSBhIHRoaXJk
IGFyZ3VtZW50LCB1c3VhbGx5IGFuDQo+IC0uSVIgaW50ICwNCj4gLXJlZmVycmVkIHRvIGJl
bG93IGFzDQo+IC0uSVIgdmFsIC4NCj4gLS5cIg0KPiAgIC5TUyBBbHdheXMgU3VwcG9ydGVk
IENvbW1hbmRzDQo+ICAgXGZJL2Rldi9saXJjKlxmUiBkZXZpY2VzIGFsd2F5cyBzdXBwb3J0
IHRoZSBmb2xsb3dpbmcgY29tbWFuZHM6DQo+ICAgLlRQIDQNCj4gQEAgLTI4MCwxNiArMjc2
LDE5IEBAIGlzIDApIHRpbWVvdXQgcGFja2FnZXMgaW4NCj4gICBUaGUgYmVoYXZpb3Igb2Yg
dGhpcyBvcGVyYXRpb24gaGFzIHZhcmllZCBhY3Jvc3Mga2VybmVsIHZlcnNpb25zOg0KPiAg
IC5SUw0KPiAgIC5JUCAqIDMNCj4gLVNpbmNlIExpbnV4IDQuMTY6IGVhY2ggdGltZSB0aGUN
Cj4gLS5CIGxpcmMgZGV2aWNlIGlzIG9wZW5lZCwNCj4gLXRpbWVvdXQgcmVwb3J0cyBhcmUg
YnkgZGVmYXVsdCBlbmFibGVkIGZvciB0aGUgcmVzdWx0aW5nIGZpbGUgZGVzY3JpcHRvci4N
Cj4gLVRoZQ0KPiArU2luY2UgTGludXggNS4xNzogdGltZW91dCBwYWNrYWdlcyBhcmUgYWx3
YXlzIGVuYWJsZWQgYW5kIHRoaXMgaW9jdGwNCj4gK2lzIGEgbm8tb3AuDQo+ICsuSVAgKg0K
PiArU2luY2UgTGludXggNC4xNjogdGltZW91dCBwYWNrYWdlcyBhcmUgZW5hYmxlZCBieSBk
ZWZhdWx0Lg0KPiArRWFjaCB0aW1lIHRoZQ0KPiArLkIgbGlyYw0KPiArZGV2aWNlIGlzIG9w
ZW5lZCwgdGhlDQo+ICAgLkIgTElSQ19TRVRfUkVDX1RJTUVPVVQNCj4gICBvcGVyYXRpb24g
Y2FuIGJlIHVzZWQgdG8gZGlzYWJsZSAoYW5kLCBpZiBkZXNpcmVkLCB0byBsYXRlciByZS1l
bmFibGUpDQo+ICAgdGhlIHRpbWVvdXQgb24gdGhlIGZpbGUgZGVzY3JpcHRvci4NCj4gICAu
SVAgKg0KPiAgIEluIExpbnV4IDQuMTUgYW5kIGVhcmxpZXI6DQo+IC10aW1lb3V0IHJlcG9y
dHMgYXJlIGRpc2FibGVkIGJ5IGRlZmF1bHQsIGFuZCBlbmFibGluZyB0aGVtICh2aWENCj4g
K3RpbWVvdXQgcGFja2FnZXMgYXJlIGRpc2FibGVkIGJ5IGRlZmF1bHQsIGFuZCBlbmFibGlu
ZyB0aGVtICh2aWENCj4gICAuQlIgTElSQ19TRVRfUkVDX1RJTUVPVVQgKQ0KPiAgIG9uIGFu
eSBmaWxlIGRlc2NyaXB0b3IgYXNzb2NpYXRlZCB3aXRoIHRoZQ0KPiAgIC5CIGxpcmMNCj4g
QEAgLTQzNCw0ICs0MzMsNCBAQCBVc2VycyBvZiBvbGRlciBrZXJuZWxzIGNvdWxkIHVzZSB0
aGUgZmlsZSBidW5kbGVkIGluDQo+ICAgLlNIIFNFRSBBTFNPDQo+ICAgXGZCaXJcLWN0bFxm
UCgxKSwgXGZCbGlyY2RcZlAoOCksXCBcZkJicGZcZlAoMikNCj4gICAuUFANCj4gLWh0dHBz
Oi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L21lZGlhL3VhcGkvcmMvbGlyYy1k
ZXYuaHRtbA0KPiAraHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvdXNl
cnNwYWNlLWFwaS9tZWRpYS9yYy9saXJjLWRldi5odG1sDQoNCi0tIA0KQWxlamFuZHJvIENv
bG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------tY6dLjMK5ggeVKIAQKWH840C--

--------------prfeSikYKisJd8K0z8kMOjYv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKeUg4ACgkQnowa+77/
2zK0oQ/+M3brjQggRYYZ8h0egXe5FsAFd1UUYzeGcz0RE+TgGNQxqs/vaEyVFAyx
/Q86ML4pGaFrOz9V/E7AchBg+FnHKG69SbuOKCHOYMNAXf8Eyft70xuEkaFuXPHN
VjfuD0remwxkJVzHav52MOOxZue0YDS0B7OEmR8EhQBXiUYLi30PLbj+3MG1v8Be
XJwaQnE4oHeyYk1pw3R9ehlZxyUiJng9UTcyOc04y0ETV1WeIAiOn8kSXAJSU6LH
QYZO/XILQ56bMk0cmw0iOo0pKKKvaz6Lq+1H4qnFZzarZSjyTMBxsngvF8scv+iM
Hbxk9f+kTso9B+DQoyUnYgzCDSXLJgVoZowSgkabxYaRGtxC15e/E4wqhIMwJs6n
dkInnJaGiCefr4CnfWDbD4pNzXFGtoGwfVjupK8BmS8nThoFh5XzGkPCFeumFzl6
V57KF1l5Vl1nvpIj/s7rJVc9auysdLnRbcUIalL5IC76W/bglUWnU4kA5CeGutaJ
zJxsWQ5Xb+NIP30ualu36e70qKNfLQL7+AI97WrhKzfw2oK+yz9EMsozOYU1MEAg
8Z3wqrk2bP5pSvG0R58BO8TJqrtJD+JLR/qiGPZ4tm8bP/epcizZPF1as9DJMSP5
EIm0a7LQBCv3+DWnHqMlv/iqk53h1U/DQ1Lid/jurg+IN3t6PpA=
=VI2C
-----END PGP SIGNATURE-----

--------------prfeSikYKisJd8K0z8kMOjYv--
