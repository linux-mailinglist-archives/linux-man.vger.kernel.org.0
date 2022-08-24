Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC86E59FDD4
	for <lists+linux-man@lfdr.de>; Wed, 24 Aug 2022 17:05:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237302AbiHXPFK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 11:05:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237392AbiHXPFJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 11:05:09 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F00F80B69
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 08:05:07 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id a4so21159194wrq.1
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 08:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=ascXMn30SBFu/rILoUHjhvGmVeI3bAlc3boRGlK7LGY=;
        b=U2bKAx07ZnJHFDiMxiq1PhdPUAb9GEvtTAsQbTutWCsjBpy5yTBwMmjSTBeC0zbKDm
         m95LswdBCP56xpjbea4kTewAyPNheaVqOaH4gUVkbvRZmVedaBBtpMcUyAIg+nP59zYQ
         NlNRVZpab0mj3GjtRDyCsRNBZO/TkcIJAkAlzauBeOESuT2HlrRbE+9qb+UugqI5xmI4
         +RwUa5FG7WyP7RCS/syDsLU3uU9Gi+zQH/d+0g1snFuXd/7Zs6tjKExSUslrllUMjQ5+
         7HlxFm7z7I5kHdEXL6EQefj4ARNtlgFZQ76M7OPc1kknZcuEn12TodZZpI60YnJo5yXr
         saJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=ascXMn30SBFu/rILoUHjhvGmVeI3bAlc3boRGlK7LGY=;
        b=FyqMvQAgA5XFjcLDe8ycEHc5xTj27aWphbye2lO/KGzy7F2JPvFS3L38iRf6+4rm4L
         njhcwapFFJZBvKUltkSBXuMB08GBvnSqhyqatjTiSABOdqCpOnk/HbfFLSixs2jGc+p6
         5497WvF1hHgi1QWsFB49OrJzwewxDPjVdjIu3fokJvjeDCO9ie4vFkN5pK62ZMuqWOff
         nGu01nd4BZhkaZY4MWvbevgWUs5CPGNfHqNZdXLJy6swS0cR4ztqOjMcz6P/Y10pPUW6
         ZrR7GuHddurSXfojW+43iHH3ckwxN2W5rpatlc1zxLjSRto4gdCBowUIFqOw7Jn9ANvj
         Z3Eg==
X-Gm-Message-State: ACgBeo2UcbYI9VeGkmEOYv1IYc4HlTvClbfV/ZO584Mx5e6JoW5C9DeH
        +Uigc1FdXAHM6PaXpk1fB84=
X-Google-Smtp-Source: AA6agR7ZyEg3A17KUl1XnSsNiSqTKKHfcjJWmnbnOoAZWRLjqI6J3zaF6NYWw8KODRWa7fA94MF7Yg==
X-Received: by 2002:a5d:4a43:0:b0:225:385d:db05 with SMTP id v3-20020a5d4a43000000b00225385ddb05mr13161662wrs.504.1661353505766;
        Wed, 24 Aug 2022 08:05:05 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o34-20020a05600c33a200b003a5dbdea6a8sm2304126wmp.27.2022.08.24.08.05.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 08:05:05 -0700 (PDT)
Message-ID: <9a202749-ab6a-e644-87e8-dc2b1d96e810@gmail.com>
Date:   Wed, 24 Aug 2022 17:04:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
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
 <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
 <YwYmENPAprVbooAP@asta-kit.de>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YwYmENPAprVbooAP@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------eZ4sjPiYBHG6lxuLfjN0GYBF"
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
--------------eZ4sjPiYBHG6lxuLfjN0GYBF
Content-Type: multipart/mixed; boundary="------------vAALgcLkVHjsEyZqk0zgYews";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: g.branden.robinson@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <9a202749-ab6a-e644-87e8-dc2b1d96e810@gmail.com>
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
 <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
 <YwYmENPAprVbooAP@asta-kit.de>
In-Reply-To: <YwYmENPAprVbooAP@asta-kit.de>

--------------vAALgcLkVHjsEyZqk0zgYews
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KT24gOC8yNC8yMiAxNToyMiwgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNCj4g
SGkgQWxlamFuZHJvLA0KPiANCj4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24gU2F0LCBB
dWcgMjAsIDIwMjIgYXQgMDI6NDA6NThQTSArMDIwMDoNCj4gDQo+PiBTaG91bGQgSSBrZWVw
IHRoZSBzdGF0aWMgcGFydCBvZiB0aGUgQ09MT1BIT04gaW4gYSBSRVBPUlRJTkcgQlVHUyBz
ZWN0aW9uPw0KPiANCj4gSSBkbyBub3QgdGhpbmsgYSBtYW51YWwgcGFnZSBzaG91bGQgaW5j
bHVkZSAqYW55KiBib2lsZXJwbGF0ZSB0ZXh0Lg0KPiBUZXh0IHRoYXQgaXMgdGhlIHNhbWUg
ZXZlcnl3aGVyZSBpcyBub3RoaW5nIGJ1dCBhIGRpc3RyYWN0aW9uDQo+IGFuZCBhIHdhc3Rl
IG9mIHNjcmVlbiByZWFsIGVzdGF0ZS4NCg0KQWdyZWUuICBJIHdhcyBoZXNpdGFudCBvZiBy
ZW1vdmluZyB0aGF0LCB3aGljaCBtdGsgYWRkZWQgYSBsb25nIHRpbWUgDQphZ28sIHNpbmNl
IGhlIGNsYWltZWQgYW4gaW1wb3J0YW50IGltcHJvdmVtZW50IGluIGF3YXJlbmVzcyBvZiB0
aGUgDQpleGlzdGVuY2Ugb2YgdGhlIHByb2plY3QuICBCdXQgSSBwcmVmZXIgdXNpbmcgcmVw
b3J0YnVnKDEpIGFuZCBkcGtnKDEpIA0Kb3IgYXB0KDgpIChvciBlcXVpdmFsZW50IGluIG90
aGVyIGRpc3Ryb3MpIHRvIGZpbmQgb3V0IGhvdyB0byByZXBvcnQgYnVncy4NCg0KPiANCj4+
IEFuZCBhbiBldmVuIG1vcmUgZ2VuZXJhbCBxdWVzdGlvbj8gIFNob3VsZCBhIG1hbnVhbCBw
YWdlIHN0YXRlIHRoZQ0KPj4gQ09QWVJJR0hULA0KPiANCj4gTm8sIGl0IHNob3VsZCAqbm90
KiBzdGF0ZSBhbnkgQ29weXJpZ2h0IGluIHRoZSAqZm9ybWF0dGVkKiB0ZXh0Lg0KPiBFdmVy
eSBmaWxlIHNob3VsZCBjb250YWluIGEgQ29weXJpZ2h0IGFuZCBsaWNlbnNlIGhlYWRlciBh
dCB0aGUgdG9wDQo+IGFzIGEgY29tbWVudCB0aG91Z2g6IGluIGEgbWFudWFsIHBhZ2UgZmls
ZSwgLlwiIHN0YXRpbmcgdGhlIENveXByaWdodA0KPiBhbmQgbGljZW5zZSBvZiB0aGF0IHBh
cnRpY3VsYXIgbWFudWFsIHBhZ2UsIGluIGEgcHJvZ3JhbSBzb3VyY2UgZmlsZSwNCj4gLyog
Ki8gc3RhdGluZyB0aGUgQ295cHJpZ2h0IGFuZCBsaWNlbnNlIG9mIHRoYXQgcGFydGljdWxh
ciBzb3VyY2UgZmlsZS4NCj4gDQo+IE1hbnVhbCBwYWdlcyBhcmUgZm9yIHVzZXJzIHdobyB3
YW50IHRvIHVzZSB0aGUgcHJvZ3JhbSBvciBmdW5jdGlvbi4NCj4gRm9yIG1lcmVseSB1c2lu
ZyBpdCwgdGhleSBkbyBub3QgbmVlZCB0byBjb25zaWRlciAqYW55KiBDb3B5cmlnaHQgb3IN
Cj4gbGljZW5zZSwgYXQgbGVhc3QgYXMgbG9uZyBhcyBpdCBpcyBtb3JlIG9yIGxlc3MgZnJl
ZSBzb2Z0d2FyZS4NCg0KR3JlZyBLSCBleHByZXNzZWQgY29uY2VybiBhYm91dCB0aGUgY29w
eXJpZ2h0IG9mIHRoZSBleGFtcGxlIHByb2dyYW1zIA0Kc29tZSB0aW1lIGFnby4gIEhlIGFz
a2VkIHdoYXQgbGljZW5zZSBhcHBsaWVzIHRvIHRoZW0sIGFuZCBob3cgc2hvdWxkIGEgDQp1
c2VyIGtub3csIHRoYXQgaXMsIGlzIGEgdXNlciBhbGxvd2VkIHRvIGNyZWF0ZSBkZXJpdmVk
IHByb2dyYW1zIGZyb20gDQp0aG9zZSBleGFtcGxlcz8gIFNob3VsZCB3ZSBzdGF0ZSB0aGVp
ciBsaWNlbnNlIGluIGEgQyBjb21tZW50IHdpdGhpbiB0aGUgDQpleGFtcGxlIHByb2dyYW0/
ICBPciBqdXN0IGFzc3VtZSB0aGF0IGl0J3MgYSBtZWFuaW5nbGVzcyBwcm9ncmFtIGFuZCAN
CnRoYXQgYW55b25lIGNhbiBqdXN0IGNvcHkgaXQgaW5kaXNjcmltaW5hdGVseSBiZWNhdXNl
LCB3aG8gY2FyZXMgYWJvdXQgDQpzdWNoIGEgdGlueSBpbnNpZ25pZmljYW50IHBpZWNlIG9m
IGNvZGU/DQoNCj4gDQo+IFN0YXRpbmcgdGhlIENvcHlyaWdodCBhbmQgbGljZW5zZSBtYXR0
ZXJzIGZvciBwYWNrYWdlcnMgYW5kIGZvcg0KPiBkZXZlbG9wZXJzIG9yIGNvbXBhbmllcyB3
aG8gY29uc2lkZXIgY29weWluZyBwYXJ0cyBvZiBmaWxlcyBmb3IgdGhlaXINCj4gb3duIHBy
b2plY3RzLCBhbmQgdGhvc2UgcGVvcGxlIGFyZSB1c2VkIHRvIGxvb2tpbmcgYXQgc291cmNl
IGZpbGVzLg0KPiANCj4+IEFVVEhPUlMsDQo+IA0KPiBNZW50aW9uaW5nIHRoZSBtYWluIEFV
VEhPUlMgb2YgdGhlIG9yaWdpbmFsIGltcGxlbWVudGF0aW9uIG9mIHRoZSBwcm9ncmFtIC0N
Cj4gZm9yIGV4YW1wbGUsIFJvYmVydCBNb3JyaXMgYW5kIExvcmluZGEgQ2hlcnJ5IGZvciBi
YygxKSAtIGFuZCBhbHNvDQo+IG1lbnRpb25pbmcgdGhlIG1haW4gQVVUSE9SUyBvZiB5b3Vy
IGN1cnJlbnQgaW1wbGVtZW50YXRpb24sIGlmIGl0DQo+IHdhcyByZXdyaXR0ZW4gZnJvbSBz
Y3JhdGNoLCBzZWVtcyBtb3N0IGltcG9ydGFudCB0byBtZS4NCg0KSSBndWVzcyBpbiB0aGUg
TGludXggbWFuLXBhZ2VzIHRoYXQgbWVhbnMganVzdCBkb24ndCB1c2UgaXQgYXQgYWxsLiAN
Ck9yaWdpbmFsIGF1dGhvcnMgb2YgTGludXggYW5kIEdOVSBhcmUgTGludXggYW5kIFJNUyBh
bmQgdGhhdCdzIHdlbGwgDQprbm93bi4gIEN1cnJlbnQgYXV0aG9yIG9mIGFueSBnaXZlbiBm
ZWF0dXJlIGlzIHByb2JhYmx5IGEgY29tYmluYXRpb24gb2YgDQp0aG91c2FuZHMgb2YgcGVv
cGxlLg0KDQo+IA0KPiBNZW50aW9uaW5nIHRoZSBBVVRIT1JTIG9mIHRoZSBtYW51YWwgcGFn
ZSBzZWVtcyBtdWNoIGxlc3MgcmVsZXZhbnQNCj4gdG8gbWUsIGFuZCBpdCBpcyB1c3VhbGx5
IG9taXR0ZWQuICBNZW50aW9uaW5nIHRoZW0gaXMgbm90IHdyb25nLCB0aG91Z2gsDQo+IGFu
ZCBpdCBzb21lIGNhc2VzLCBpdCBjYW4gYmUgaW50ZXJlc3RpbmcuICBGb3IgZXhhbXBsZSwg
c29tZSBwcm9ncmFtcw0KPiB1c2VkIHRvIGJlIG5vdG9yaW91cyBmb3Igbm90IGhhdmluZyBh
bnkgbWFudWFsIHBhZ2Ugd2hhdHNvZXZlciB1bnRpbA0KPiBzb21lIERlYmlhbiBkZXZlbG9w
ZXJzIC0gd2hvIHdlcmUgbm90IGV2ZW4gYXNzb2NpYXRlZCB3aXRoIHRoZSBwcm9qZWN0cw0K
PiBtYWludGFpbmluZyB0aG9zZSBwcm9ncmFtcyAtIHRvb2sgcGl0eSBhbmQgd3JvdGUgYSBt
YW51YWwgcGFnZS4NCj4gQ3JlZGl0aW5nIHRob3NlIGJyYXZlIHNvdWxzIGZlZWxzIGZhaXIg
dG8gbWUsIGp1c3QgYXMgYW4gZXhhbXBsZS4NCj4gDQo+IElmIHlvdSBtZW50aW9uIHBlb3Bs
ZSB3aG8gd3JvdGUgdGhlIG1hbnVhbCBidXQgZGlkIG5vdCBjb250cmlidXRlDQo+IHNpZ25p
ZmljYW50bHkgdG8gdGhlIHByb2dyYW0gaXRzZWxmLCBiZSBleHBsaWNpdCB0aGF0IHRoZXkg
d3JvdGUNCj4gdGhlIG1hbnVhbCBwYWdlLg0KPiANCj4+IGFuZCBSRVBPUlRJTkcgQlVHUyBv
ZiB0aGUgc29mdHdhcmUgaXQgZG9jdW1lbnRzLCBvcg0KPj4gb2YgdGhlIHBhZ2UgaXRzZWxm
LCBvciBib3RoPw0KPiANCj4gQW55IFJFUE9SVElORyBCVUdTIHNlY3Rpb24gZmVlbHMgbGlr
ZSBhIGJhZCBpZGVhIHRvIG1lIC0gc2VlIGFib3ZlDQo+IHJlZ2FyZGluZyBib2lsZXJwbGF0
ZSB0ZXh0Lg0KPiANCj4gQmVzaWRlcywgaWYgYSB1c2VyIGlzIHVuYWJsZSB0byB1c2Ugd2hh
dGV2ZXIgcGFja2FnZSBtYW5hZ2VyIHRoZXkNCj4gaGF2ZSwgaW5zcGVjdCB3aGljaCBwYWNr
YWdlIHRoZSBwcm9ncmFtIHRoZXkgYXJlIHVzaW5nIChhbmQgaXRzDQo+IG1hbnVhbCBwYWdl
KSBiZWxvbmcgdG8sIGFuZCBpbnNwZWN0IHRoZSBwcm9qZWN0IHdlYnNpdGUgaG93IHRvDQo+
IHByb3Blcmx5IHJlcG9ydCBhIGJ1Zywgd291bGQgeW91IHJlYWxseSBleHBlY3QgYSB1c2Vm
dWwgYnVnIHJlcG9ydD8NCj4gSSBjZXJ0YWlubHkgd291bGRuJ3QuICBTbyBub3QgaGF2aW5n
IGEgUkVQT1JUSU5HIEJVR1Mgc2VjdGlvbg0KPiB3aWxsIGRpc2NvdXJhZ2Ugb25seSBleHRy
ZW1lbHkgY2x1ZWxlc3MgdXNlcnMsIHdoZXJlYXMgaGF2aW5nIG9uZQ0KPiB3aWxsIGxpa2Vs
eSBhbm5veSBhbnlvbmUgb2YgZXZlbiBtaW5pbWFsIGNvbXBldGVuY2UuDQo+IA0KPiBPbiB0
b3Agb2YgdGhhdCwgaSBoYXZlIG9mdGVuIHNlZW4gYnVnIHJlcG9ydGluZyBpbnN0cnVjdGlv
bnMgaW4NCj4gbWFudWFsIHBhZ2VzIHRoYXQgd2VyZSBsaXRlcmFsbHkgc2V2ZXJhbCBkZWNh
ZGVzIG91dCBvZiBkYXRlLA0KPiB1cCB0byBhbmQgaW5jbHVkaW5nIGFkdmVydGlzaW5nIGJh
bmcgcGF0aCBtYWlsIGFkZHJlc3Nlcy4NCj4gSSBndWVzcyB5b3Ugd291bGQgbm90IGxpa2Ug
ZW5kaW5nIHVwIGluIHRoYXQgdHJhcCwgcmlnaHQ/DQoNCll1cCENCg0KU28sIEknbGwganVz
dCBkcm9wIHRoZSBDT0xPUEhPTiBzZWN0aW9uIHdpdGhvdXQgcmVwbGFjZW1lbnQuDQoNCkNo
ZWVycywNCg0KQWxleA0KDQo+IA0KPiBZb3VycywNCj4gICAgSW5nbw0KDQotLSANCkFsZWph
bmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------vAALgcLkVHjsEyZqk0zgYews--

--------------eZ4sjPiYBHG6lxuLfjN0GYBF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMGPhkACgkQnowa+77/
2zLK6w/9HcwtgHnYGzvHjGR7n9a9owh1hIsCxkCqoMdRyIMuNOuEhQ2dkXbd0PRd
S7brWVgoYy3KLJtQA68vJjwNtYS0yEbRUXFPz5V4Yfje4WajLcFsb26eeXzYMUYI
tdBS7vKsxedktTbmzh46ZPHZcS9qVYdbAueoFAgVM8wyZTWwQ1+I7U2ssoVaQWfI
Q6dWraGNtdloYOFKPOxDKRHPRWUP1yhbCdhrPmEQw1UBTY0CRTuT/CPRquAfDt/G
uhib41RlLBsz2w0jXRVhp5hvjskCEF8vBeMC8jijsFct9YEt7Gb1Eu50jwuNjPl1
Y11nc23prBRw4tbI5Ajg2Ew1w5LDb9KNn3y7InIb8drNPnNJ3Oe2PFKfFaThZJO2
z3P7iM8G8uC+amrBXKPo29sFRgGzIB2j9NnLxqAM4mWmcA+739I+/UP956v8yL53
cSECMu+ao0PJxpOc7wWJHY22YHWhzKKtwnxVzBJ6nuFMTiVPkQUibKZ0FL6e5D5Q
2/Hc5CdjUp1XkyKp74iWF+PgcM2LAZI3fyPAOSnwrC3Q1MD5dKv+Hzd8Y0aynCsx
foU2/iReSvgMgn9tZseDaqZrZ8tU9dVFnzw1IWSpctAu+itlpG25tLsJyrW2S0Zu
wMS9CnSidF+kM0mAE8mv3xnLNwPKNe5SZ6TQQl7cd9GP0cWM+UM=
=owZH
-----END PGP SIGNATURE-----

--------------eZ4sjPiYBHG6lxuLfjN0GYBF--
