Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2DE15A022A
	for <lists+linux-man@lfdr.de>; Wed, 24 Aug 2022 21:37:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236829AbiHXThl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 15:37:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237446AbiHXThl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 15:37:41 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D4FC13D28
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 12:37:39 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id k17so9231058wmr.2
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 12:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=ZIEBHGQT3UpRD9jC4AKv4+wXtfDfgpjlSKDJ3drSWic=;
        b=ogjkNY/R61qiYxZUKD5Y7FNjwtfbNYxgjgxWJKbmatdEIiPOOIxUk6dOffFDT9s0aY
         pKGoyJgWcRk+pAtiJLZq7/VeoUEBewe0XVslzXZGH076sYCaegCd60y9UmBQLVeHYfo6
         ydakslpOGpx79Uw+Sz7hBK0PmD5QQ2CwOpZm2uEV8oQ8K3kAMRBTUSFp9OgsmS4UFiCt
         xyMfwuriEbRmorM2TPpan3+nUUu1AyO+iWIOY9BRpX+8Zgxg1b64gR9KQFJbtzE+u4Nd
         7E+h4WKD3m/1DVHm96K/0w6r5s/jG9BXFn1AXSPmqz4gB+eQMURy2cDBwlWHd6ISG616
         fe5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=ZIEBHGQT3UpRD9jC4AKv4+wXtfDfgpjlSKDJ3drSWic=;
        b=aHbPRqEs8UnBChc1389oGtppbfRqrLalLtpmtiFEerOmrzemBWKnOq7wNFByZ6v4Z3
         cBNRX0us4o1BG8FoJtUm0fSuawaw+mtLY8uVa/iekk/AMCuZpuTIJ2BmuZZTKWXb0eP4
         9wXEIe6xe0XRJ52+XeLkvHlbBz4SwqV4B9SwAcNRpsNPXeKirY5nWqsI694qFV5wc/ut
         DrtvxvHYYi7aymhgUzTrUayakztmLWJMESwbGpjjfCDPrdDNX2vD/z8JVNQ61JF+4jXA
         dE2rbqW3HzWStoD/aIwirHOQnyDA8wwFnTiCwCa8T/sYjZXclmALcYN+dQcdEQiLobuy
         FvZw==
X-Gm-Message-State: ACgBeo02o8wz9a0oPzc5UjCYPWj4O6e66iNb5QanMbnMm4ZTRokyT0FI
        BAFcKhxwnYfhiCQ1h1AXwFgKqgGuZeQ=
X-Google-Smtp-Source: AA6agR6eSlMDYPs+g14aqvMEU7B6kDF/16PK/y4NMOZ8zaqRbZ5zVxwa31xn8z96calzXV1RCmHuUA==
X-Received: by 2002:a7b:ca42:0:b0:3a6:9d:a444 with SMTP id m2-20020a7bca42000000b003a6009da444mr6332181wml.51.1661369857942;
        Wed, 24 Aug 2022 12:37:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q1-20020a056000136100b0021d80f53324sm18187220wrz.7.2022.08.24.12.37.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 12:37:37 -0700 (PDT)
Message-ID: <7dde2eee-9a72-88c7-1522-5a44602acfb8@gmail.com>
Date:   Wed, 24 Aug 2022 21:37:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
 <20220820122003.qeldeox7hlcy6dw7@illithid>
 <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
 <YwYmENPAprVbooAP@asta-kit.de>
 <9a202749-ab6a-e644-87e8-dc2b1d96e810@gmail.com>
 <YwZb8s7URld24bli@asta-kit.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YwZb8s7URld24bli@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ZLYVLTNsp0dLbVvjiV53DjtF"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ZLYVLTNsp0dLbVvjiV53DjtF
Content-Type: multipart/mixed; boundary="------------Lku1g1vSgo09BKwR6kfVOn0T";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: g.branden.robinson@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <7dde2eee-9a72-88c7-1522-5a44602acfb8@gmail.com>
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
References: <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
 <20220820122003.qeldeox7hlcy6dw7@illithid>
 <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
 <YwYmENPAprVbooAP@asta-kit.de>
 <9a202749-ab6a-e644-87e8-dc2b1d96e810@gmail.com>
 <YwZb8s7URld24bli@asta-kit.de>
In-Reply-To: <YwZb8s7URld24bli@asta-kit.de>

--------------Lku1g1vSgo09BKwR6kfVOn0T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gOC8yNC8yMiAxOToxMiwgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNCj4g
SGkgQWxlamFuZHJvLA0KPiANCj4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24gV2VkLCBB
dWcgMjQsIDIwMjIgYXQgMDU6MDQ6NTdQTSArMDIwMDoNCj4+IE9uIDgvMjQvMjIgMTU6MjIs
IEluZ28gU2Nod2FyemUgd3JvdGU6DQo+Pj4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24g
U2F0LCBBdWcgMjAsIDIwMjIgYXQgMDI6NDA6NThQTSArMDIwMDoNCj4gDQo+Pj4+IFNob3Vs
ZCBJIGtlZXAgdGhlIHN0YXRpYyBwYXJ0IG9mIHRoZSBDT0xPUEhPTiBpbiBhIFJFUE9SVElO
RyBCVUdTIHNlY3Rpb24/DQo+IA0KPj4+IEkgZG8gbm90IHRoaW5rIGEgbWFudWFsIHBhZ2Ug
c2hvdWxkIGluY2x1ZGUgKmFueSogYm9pbGVycGxhdGUgdGV4dC4NCj4+PiBUZXh0IHRoYXQg
aXMgdGhlIHNhbWUgZXZlcnl3aGVyZSBpcyBub3RoaW5nIGJ1dCBhIGRpc3RyYWN0aW9uDQo+
Pj4gYW5kIGEgd2FzdGUgb2Ygc2NyZWVuIHJlYWwgZXN0YXRlLg0KPiANCj4+IEFncmVlLiAg
SSB3YXMgaGVzaXRhbnQgb2YgcmVtb3ZpbmcgdGhhdCwgd2hpY2ggbXRrIGFkZGVkIGEgbG9u
ZyB0aW1lDQo+PiBhZ28sIHNpbmNlIGhlIGNsYWltZWQgYW4gaW1wb3J0YW50IGltcHJvdmVt
ZW50IGluIGF3YXJlbmVzcyBvZiB0aGUNCj4+IGV4aXN0ZW5jZSBvZiB0aGUgcHJvamVjdC4g
IEJ1dCBJIHByZWZlciB1c2luZyByZXBvcnRidWcoMSkgYW5kIGRwa2coMSkNCj4+IG9yIGFw
dCg4KSAob3IgZXF1aXZhbGVudCBpbiBvdGhlciBkaXN0cm9zKSB0byBmaW5kIG91dCBob3cg
dG8gcmVwb3J0IGJ1Z3MuDQo+IA0KPiBIdW0uICBJbnRlcmVzdGluZyBhc3BlY3QuICBNYXli
ZSBNaWNoZWFsIGhhZCBhIHBvaW50IHRoYXQgYWR2ZXJ0aXNpbmcNCj4gdGhlIExpbnV4IG1h
bi1wYWdlcyBwcm9qZWN0IC0gZXZlbiBpbiBzdWNoIGFuIGFnZ3Jlc3NpdmUgd2F5IC0gaGFk
IHNvbWUNCj4gdmFsdWUgaW4gdGhlIGVhcmx5IGRheXMuICBJJ20gbm90IGFuIGV4cGVydCBp
biBMaW51eCBoaXN0b3J5LCBidXQgaQ0KPiBiZWxpZXZlIHVzZSBvZiBtYW51YWwgcGFnZXMg
d2FzIGluaXRpYWxseSBtdWNoIGxlc3MgY29tbW9uIGluIExpbnV4LQ0KPiBiYXNlZCBvcGVy
YXRpbmcgc3lzdGVtcyBjb21wYXJlZCB0byBBVCZUIFVOSVgsIG90aGVyIGNvbW1lcmNpYWwg
VU5JWA0KPiBzeXN0ZW1zLCBhbmQgQlNELiAgQWxzbywgZHVlIHRvIHRoZSBmcmFnbWVudGF0
aW9uIG9mIExpbnV4LWJhc2VkDQo+IG9wZXJhdGluZyBzeXN0ZW1zIGludG8gTGludXggKHRo
ZSBrZXJuZWwpLCBHTlUgKHRoZSBtb3N0IGltcG9ydGFudA0KPiBwYXJ0cyBvZiB1c2VybGFu
ZCksIGFuZCBzb2Z0d2FyZSBmcm9tIG1hbnkgdGhpcmQtcGFydHkgc291cmNlcywNCj4gYSBz
aW5nbGUsIHVuaWZvcm0gY29ycHVzIG9mIG1hbnVhbCBwYWdlcyB3YXMgc2xvd2VyIHRvIGRl
dmVsb3AgZm9yDQo+IExpbnV4IHRoYW4sIGZvciBleGFtcGxlLCBpbiBCU0QuDQo+IA0KPiBC
dXQgbm93YWRheXMsIGkgd291bGQgbm8gbG9uZ2VyIHN1YnNjcmliZSB0byBzdWNoIGEgdGhl
b3J5LCBpdCBzZWVtcw0KPiB0byBtZSB0aGF0IHRpbWVzIGhhdmUgY2hhbmdlZCBpbiB0aGlz
IHJlc3BlY3QuICBEZWJpYW4gaGFzIGZvc3RlcmVkDQo+IHNvbWUgcHJvZ3Jlc3MgaW4gd3Jp
dGluZyBtaXNzaW5nIG1hbnVhbCBwYWdlcy4gIFdlYiBzaXRlcyBsaWtlDQo+IG1hbnBhZ2Vz
LmRlYmlhbi5vcmcgYW5kIGV2ZW4gbWFuLmFyY2hsaW51eC5vcmcgbm93IHByb3ZpZGUgbW9y
ZQ0KPiBjb21wcmVoZW5zaXZlIGNvbGxlY3Rpb25zIG9mIG1hbnVhbCBwYWdlcyB0aGFuIGV2
ZW4gQlNEcyBkby4NCj4gQW5kIHN1Y2ggc2l0ZXMgdXN1YWxseSBjbGVhcmx5IGlkZW50aWZ5
IHBhY2thZ2UgbmFtZXMsIG11Y2ggcmVkdWNpbmcNCj4gdGhlIGVmZmVjdHMgb2YgdGhlIGNv
bmNlcHR1YWwgZnJhZ21lbnRhdGlvbi4gIFNvIGkgZXhwZWN0IG1hbnkgbW9yZQ0KPiBMaW51
eCB1c2VycyBhcmUgbm93IGF3YXJlIG9mIHRoZSBtYW4tcGFnZXMgcHJvamVjdCB0aGFuIHVz
ZWQgdG8gYmUsDQo+IGFuZCBldmVuIHRob3NlIHdobyBhcmVuJ3QgeWV0IGFyZSBsaWtlbHkg
dG8gZmluZCBvdXQgb25jZSB0aGV5IG5lZWQgdG8uDQoNClJlbW92ZWQ6IA0KPGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L2Nv
bW1pdC8/aWQ9OGMzMDUyYjAzMjI1ODBlYmE2MmRlOTFmMDRiYTY1N2Y3ZGZlMzYwZT4NCg0K
dGhpcyB0aW1lIGl0IHNlZW1zIHlvdXIgbmFtZSBhbmQgZW1haWwgYXJlIGNvcnJlY3QgOikN
Cg0KPiANCj4+IEdyZWcgS0ggZXhwcmVzc2VkIGNvbmNlcm4gYWJvdXQgdGhlIGNvcHlyaWdo
dCBvZiB0aGUgZXhhbXBsZSBwcm9ncmFtcw0KPj4gc29tZSB0aW1lIGFnby4gIEhlIGFza2Vk
IHdoYXQgbGljZW5zZSBhcHBsaWVzIHRvIHRoZW0sIGFuZCBob3cgc2hvdWxkIGENCj4+IHVz
ZXIga25vdywgdGhhdCBpcywgaXMgYSB1c2VyIGFsbG93ZWQgdG8gY3JlYXRlIGRlcml2ZWQg
cHJvZ3JhbXMgZnJvbQ0KPj4gdGhvc2UgZXhhbXBsZXM/ICBTaG91bGQgd2Ugc3RhdGUgdGhl
aXIgbGljZW5zZSBpbiBhIEMgY29tbWVudCB3aXRoaW4gdGhlDQo+PiBleGFtcGxlIHByb2dy
YW0/ICBPciBqdXN0IGFzc3VtZSB0aGF0IGl0J3MgYSBtZWFuaW5nbGVzcyBwcm9ncmFtIGFu
ZA0KPj4gdGhhdCBhbnlvbmUgY2FuIGp1c3QgY29weSBpdCBpbmRpc2NyaW1pbmF0ZWx5IGJl
Y2F1c2UsIHdobyBjYXJlcyBhYm91dA0KPj4gc3VjaCBhIHRpbnkgaW5zaWduaWZpY2FudCBw
aWVjZSBvZiBjb2RlPw0KPiANCj4gVGhhdCBpcyBhbiBpbnRlcmVzdGluZyBxdWVzdGlvbiwg
dG9vLiAgSSBiZWxpZXZlIGl0IG5ldmVyIG9jY3VycmVkDQo+IHRvIG1lIGJlY2F1c2UgRVhB
TVBMRVMgaW4gT3BlbkJTRCBtYW51YWwgcGFnZXMgYXJlIHR5cGljYWxseSBrZXB0IHNvDQo+
IHNob3J0IGFuZCBzaW1wbGUgdGhhdCB0aGV5IG9ubHkgZGVtb25zdHJhdGUgd2VsbC1lc3Rh
Ymxpc2hlZCBhc3BlY3RzDQo+IG9mIHByaW9yIGFydCBhbmQgZG8gbm90IHJlYWxseSBpbnZv
bHZlIGFueSBjcmVhdGl2ZSBhY3QgYnkgdGhlIGF1dGhvcg0KPiBvZiB0aGUgbWFudWFsIHBh
Z2VzLCBoZW5jZSBvYnZpb3VzbHkgYmVpbmcgaW4gaW4gdGhlIHB1YmxpYyBkb21haW4NCj4g
aW4gdGhlIGZpcnN0IHBsYWNlLg0KPiANCj4gQnV0IGluIHRoZSBMaW51eCBtYW4tcGFnZXMg
cHJvamVjdCwgeW91IGhhdmUgbWFueSBsb25nIGFuZCBjb21wbGV4DQo+IHByb2dyYW1zIGJl
bG93IEVYQU1QTEVTLCBzb21lIG9mIHdoaWNoIGNlcnRhaW5seSBwYXNzIHRoZSB0ZXN0IG9m
DQo+IG9yaWdpbmFsaXR5LCBoZW5jZSBiZWluZyBwcm90ZWN0ZWQgYnkgQ29weXJpZ2h0IGxh
dy4NCj4gDQo+IE5vdyBvYnZpb3VzbHksIHVubGVzcyBvdGhlcndpc2Ugc3RhdGVkLCBzdWNo
IGV4YW1wbGVzIGFyZSBjb3ZlcmVkDQo+IGJ5IHRoZSBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogYXQgdGhlIHRvcCBvZiB0aGUgZmlsZS4gIEZvciBwYWdlcw0KPiBsaWNlbnNlZCB1bmRl
ciB0aGUgQlNEIG9yIE1JVCBsaWNlbnNlcywgZXZlcnl0aGluZyBpcyBvYnZpb3VzbHkNCj4g
ZmluZSwgYW55b25lIGNhbiB1c2Ugc3VjaCBleGFtcGxlIGNvZGUgaW4gYW55IHByb2plY3Qu
ICBGb3IgcGFnZXMNCj4gdW5kZXIgR1BMIGxpY2Vuc2VzLCB0aGUgc2l0dWF0aW9uIGlzIGFs
c28gdG9sZXJhYmxlOiB3aGlsZSBCU0QNCj4gcHJvamVjdHMgY2Fubm90IHVzZSB0aGVzZSBl
eGFtcGxlLCBhdCBsZWFzdCBHUEwgcHJvamVjdHMgY2FuLCB3aGljaA0KPiBmZWVscyBsaWtl
IHRoZSBtYWluIHB1cnBvc2Ugb2YgYSBMaW51eCBwcm9qZWN0LiAgSSBzZW5zZSBhIHJlYWwN
Cj4gcHJvYmxlbSB3aXRoIEVYQU1QTEVTIGluIExpbnV4LW1hbi1wYWdlcy1jb3B5bGVmdCBw
YWdlcyB0aG91Z2g6DQo+IFRob3NlIGNhbiAqbmVpdGhlciogYmUgdXNlZCBpbiBCU0QgcHJv
amVjdHMgKm5vciogaW4gR1BMIHByb2plY3RzDQo+IGFzIGZhciBhcyBpIGNhbiBzZWUuDQo+
IA0KPiBNYXliZSBpdCB3b3VsZCBiZSB3b3J0aCBmaW5kaW5nIHRoZSBhdXRob3JzIG9mIHNp
Z25pZmljYW50IGV4YW1wbGVzDQo+IGluIExpbnV4LW1hbi1wYWdlcy1jb3B5bGVmdCBwYWdl
cyBhbmQgZ2V0dGluZyB0aGVpciBwZXJtaXNzaW9uDQo+IHRvIGFkZCBhIGxpbmUgbGlrZQ0K
PiANCj4gICAgLyogVGhpcyBleGFtcGxlIGNvZGUgaXMgcmVsZWFzZWQgaW50byB0aGUgcHVi
bGljIGRvbWFpbi4gKi8NCj4gDQo+IGF0IHRoZSB0b3Agb2Ygc3VjaCBleGFtcGxlcywgbWF5
YmUgdG9nZXRoZXIgd2l0aCBhIHJvZmYoNykgY29tbWVudA0KPiBsaWtlDQo+IA0KPiAgICAu
XCIgVGhpcyBleGFtcGxlIGNvZGUgd2FzIHdyaXR0ZW4gYnkgQWxpY2UgYW5kIEJvYiBpbiAy
MDE1Lg0KPiANCj4gQW55dGhpbmcgbW9yZSBjb21wbGljYXRlZCwgbGlrZSByZWZlcmluZyB0
byBHUEwtMisgd291bGQgc2VlbSBsaWtlDQo+IG92ZXJraWxsIHRvIG1lLg0KDQpJJ2xsIGRv
IHRoYXQgKFBEKSB3aXRoIGFsbCBvZiBteSBleGFtcGxlcywgYW5kIHdpbGwgYWxzbyByZXF1
ZXN0IGEgDQpjb21tZW50IHN0YXRpbmcgZWl0aGVyIFBEIG9yIGEgc3BlY2lmaWMgbGljZW5z
ZSBmb3IgY29udHJpYnV0aW9ucyB0byANCkVYQU1QTEVTLiAgRm9yIGV4aXN0aW5nIGV4YW1w
bGVzLCBzaW5jZSBtb3N0IGNvbWUgZnJvbSBNaWNoYWVsLCBJJ2xsIA0Kd2FpdCB1bnRpbCBo
ZSBjb21lcyBiYWNrIHNvbWUgZGF5LCBpZiBoZSBkb2VzLi4uICBPdGhlcndpc2UsIEknbGwg
anVzdCANCmRvIG5vdGhpbmcgdW50aWwgc29tZW9uZSBhc2tzIGZvciBhIGxpY2Vuc2UgZm9y
IGEgc3BlY2lmaWMgcGllY2Ugb2YgDQpjb2RlLCBhbmQgdGhlbiBhc2sgdGhlIHNwZWNpZmlj
IGF1dGhvci4NCg0KPiANCj4+Pj4gQVVUSE9SUywNCg0KWy4uLl0NCg0KPiBJIHRoaW5rIGl0
J3MgYSBjYXNlLWJ5LWNhc2UgZGVjaXNpb246IGlzIHRoZXJlIGNsZWFyIGVub3VnaCBhbmQN
Cj4gc2lnbmlmaWNhbnQgZW5vdWdoIGF1dGhvcnNoaXAgb2YgdGhlIGluaXRpYWwgdmVyc2lv
biwgb3Igd2FzIGl0DQo+IGEgY2FzdCBvZiBtYW55IHJpZ2h0IGZyb20gdGhlIHN0YXJ0Pw0K
DQpGb3Igbm93LCBzaW5jZSBtdGsgd2FzIGFnYWluc3QgdGhhdCBzZWN0aW9uLCBJJ2xsIGtl
ZXAgdGhhdCB0cmVuZC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IFlvdXJzLA0KPiAg
ICBJbmdvDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------Lku1g1vSgo09BKwR6kfVOn0T--

--------------ZLYVLTNsp0dLbVvjiV53DjtF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMGffkACgkQnowa+77/
2zJqzw//XbU2iqgofBF/WKY4iI2WfhCtgNJ34dKHpJEp8FueqB4xsBibPCe8BnzC
WBhOEyNfr9z+OZco048dgapOk+dDrvghKK3PQdlW0bzKNlkCaKoAjHgVCie94rnu
3Dw130P3u6h/7Jghg6+6+uTTR1CP6Sa+dZlc88yH7b4cnMkKBncQiptMOd8fayzJ
tAvNtPEEPLqsOgwTSFllElwx1t9VfV7p6wKlNCBpXzKR5iBLI2Sh/TqNsd7T+5rf
VaP5lOY4AYhuSo4lmoIcGlLDLDOPqzjff48xtMrWaD7O9lgap8JmnZlc4/JvllTU
TkCcF+zd/C2bD5w8nMQsGUCghWAyXj9gy2Nr+EpR0HavcjpVZt8RjGGW/+OiOAeA
TMdJDNhB5cBDn71U4CWQ/1sX9Y/UtiLVXhl/i9pQeDZuKxs6hemJvsqxibh4GkIJ
cvECgLz5iKUPDjyIVQ2SSySCdOHMFcZM/DygGVXxdD4LXwRvr4DpDKH5STTP/gdI
VkPk4Ig1APOwXpBmZ5kCS9Vh7yF0/1WLiStgqoxTIArH2reLDF8iB/U8Dt4FMrod
iziqVHoGgVOXsQb8+488m/mmvaR52PElcmI7KG4y3Q7LL9Y8H6J3W82xCn92IAp1
EVS4JSGJvOisGmjE0NqqasbJaHJzDEmZCGXPP4f1y7lkDpWGHVE=
=yDFD
-----END PGP SIGNATURE-----

--------------ZLYVLTNsp0dLbVvjiV53DjtF--
