Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1082A59ADBA
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 13:59:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbiHTL51 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Aug 2022 07:57:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345813AbiHTL50 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Aug 2022 07:57:26 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B4D2A1D6E
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 04:57:25 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id bs25so7915596wrb.2
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 04:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=0/vXhX8NxpQDkqYkRjRBoqEWuW3SAOmsbka5ZW33KVM=;
        b=PDRCxcV2EtHEKUXHKnP+xHhNdoteyUYavdzpLSqhQrr/MqbtoNgAfU4i7lJ5YkD0Bi
         BFGlPpacPeTDKEZvDX2UyW5exATAEFnt8JDIW/4cTnAmsEJZ7Kme2bgd3MlF9KJy6fTF
         hAIs2vq2yt3ptkFTk/fVGKDtaaP5a6YAl6Dzm1Y+tmyl7/efrtAKf1GNd0nANZu76Jg/
         v0FizeaE44lVnk+sxZsFujNd771edrw0Z1HjFCmnK+rWpWZ8r7tHypY9jjB5IlLlGc8R
         lqf2R/925wIMoYyqjH1X7zhon9+X4TKCk61OXoWh3wUthO5bAia1fQbgp2J75JOcBw+/
         fJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=0/vXhX8NxpQDkqYkRjRBoqEWuW3SAOmsbka5ZW33KVM=;
        b=XfBRqyNfxloiSoTUmFID3RwX64zURy3curIIHCsJtWnUrhUdX54FGKZp9cxgVBvVE0
         o643+Pxm0MfggprFoN9ayQBZu5ZHtF9Mj5ewqZxPlCzVczF8g0k2WN5EhriiKVyiRKPp
         Q6JiRjYhmgUZiY+FATX3rBTjae4d/1lr4JrhZUpFFO8MyJy4Sce1fvdBFEIqbDnmptXO
         GIdvabuxCFIULpRI5Th89XB9qzGS5pluIIFEsVHcUJlFUYceTQfnyQ4zSuTkbC50nBfF
         IzSWpQgQLBhDIPgCkTqIxK2y/57V/v0go3nVONkAol54ChV2/8BD9xRFglE35y1oG1P6
         QNeA==
X-Gm-Message-State: ACgBeo3FWP80NTW2z4zkzmmdeKPGJ9CEV2JPg7WLGfoXAdUU6JdY1wsg
        vcNL7xVQxZ73R7dYx9CCj7g=
X-Google-Smtp-Source: AA6agR7sYZAUSqAkpUMHj0g/M/nhIzFcWsN5kYw3xd2b0TByqDCqI1DLmJsrlEIPYhWvVJOP5tS+8A==
X-Received: by 2002:a5d:6b41:0:b0:223:981d:4c92 with SMTP id x1-20020a5d6b41000000b00223981d4c92mr6326495wrw.280.1660996643634;
        Sat, 20 Aug 2022 04:57:23 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j2-20020a5d4522000000b0022546ad3a77sm1737366wra.64.2022.08.20.04.57.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Aug 2022 04:57:22 -0700 (PDT)
Message-ID: <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
Date:   Sat, 20 Aug 2022 13:57:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220820054306.hejc3awpxvoajghf@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tQD7ihnNf0BCNeLjhsoEmb9W"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------tQD7ihnNf0BCNeLjhsoEmb9W
Content-Type: multipart/mixed; boundary="------------GhA5pQNaL3eKqMWzL05M1LHv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jakub Wilk <jwilk@jwilk.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
Subject: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
In-Reply-To: <20220820054306.hejc3awpxvoajghf@illithid>

--------------GhA5pQNaL3eKqMWzL05M1LHv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gOC8yMC8yMiAwNzo0MywgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gQXQgMjAyMi0wOC0xOVQyMDowMzoyMyswMjAwLCBKYWt1YiBXaWxrIHdyb3Rl
Og0KPj4gKiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwu
Y29tPiwgMjAyMC0wOS0zMCAyMDoxMjoNCj4+PiArXChidSBEbyBJIGV2ZXIgbmVlZCB0byB1
c2UgYW4gZW1wdHkgbWFjcm8gYXJndW1lbnQgKCIiKT8NCj4+PiArUHJvYmFibHkgbm90Lg0K
Pj4NCj4+IEZXSVcsIG1hbi1wYWdlcyg3KSBzYXlzIGl0J3MgT0sgdG8gdXNlIGVtcHR5IHN0
cmluZyBmb3IgdGhlIDR0aA0KPj4gYXJndW1lbnQgb2YgLlRIOg0KPj4NCj4+ICJGb3IgbGli
cmFyeSBjYWxscyB0aGF0IGFyZSBwYXJ0IG9mIGdsaWJjIG9yIG9uZSBvZiB0aGUgb3RoZXIg
Y29tbW9uDQo+PiBHTlUgbGlicmFyaWVzLCBqdXN0IHVzZSBHTlUgQyBMaWJyYXJ5LCBHTlUs
IG9yIGFuIGVtcHR5IHN0cmluZy4iDQo+Pg0KPj4gVGhlcmUgdXNlZCB0byBiZSBhIGxvdCBv
ZiBzdWNoIC5USCBjYWxsczsgbm93IHRoZXJlJ3Mgb25seSBhIGZldyBsZWZ0Og0KPiANCj4g
SW4gbXkgb3BpbmlvbiBpdCB3b3VsZCBiZW5lZml0IHJlYWRlcnMgb2YgdGhlIExpbnV4IG1h
bi1wYWdlcyBpZiB0aGUNCj4gZm91cnRoIGFyZ3VtZW50IHRvIGBUSGAgd2VyZSB3aGF0IGl0
IGlzIGluIG1hbnkgb3RoZXIgbWFuIHBhZ2VzOiBhbg0KPiBpZGVudGlmaWVyIGZvciB0aGUg
bmFtZSBhbmQgdmVyc2lvbiBudW1iZXIgb2YgdGhlIHJlbGVhc2Ugb3JpZ2luYXRpbmcNCj4g
dGhlbS4gIEluIGV2ZXJ5IHBhZ2UgaXQgd291bGQgYmUgY2xlYXIgd2hhdCB2ZXJzaW9uIG9m
IHRoZSBtYW4tcGFnZXMgd2FzDQo+IGJlaW5nIHZpZXdlZC4gIExpdHRsZSBzb3BoaXN0aWNh
dGlvbiB3b3VsZCBiZSBkZW1hbmRlZCBvZiB0aGUgdXNlciB0bw0KPiBjaGVjayB0aGUgV2Vi
IHRvIGRldGVybWluZSB0aGUgcmVsYXRpdmUgYWdlIG9mIHRoZSBwYWdlcywgaW5kZXBlbmRl
bnRseQ0KPiBvZiB0aGUgbW9kaWZpY2F0aW9uIGRhdGUgb2YgdGhlIHBhcnRpY3VsYXIgcGFn
ZS4gIFN1Y2ggdXNhZ2Ugd291bGQgYmUNCj4gY29uZ3J1ZW50IHdpdGggdGhlIGFyZ3VtZW50
J3MgcHVycG9zZSBpbiBBVCZUIGFuZCBCU0QgVW5peCwgd2hlcmUgdGhpcw0KPiBkYXR1bSB3
YXMgIjd0aCBFZGl0aW9uIiwgIlN5c3RlbSBJSUkiLCBvciAiNC4yIEJlcmtlbGV5IERpc3Ry
aWJ1dGlvbiIsDQo+IG9yIHNpbWlsYXIuDQoNCkkgdGhvdWdodCBhYm91dCBpdCBpbiB0aGUg
cGFzdC4uLiAgVGhhdCBmaWVsZCB3YXMgdGhlIG9ubHkgdGhpbmcgdGhhdCANCnNhaWQgd2hl
cmUgYSBmdW5jdGlvbiBjYW1lIGZyb20uICBJZiB3ZSByZW1vdmVkIEdOVSAob3Igc29tZXRo
aW5nIGVsc2UpLCANCmhvdyB3b3VsZCBzb21lb25lIGtub3cgd2hlcmUgZG9lcyB0aGUgZnVu
Y3Rpb24gb3Igd2hhdGV2ZXIgY29tZXMgZnJvbT8/DQoNCkkgZ3Vlc3MgdGhhdCdzIGFsc28g
d2h5IHRoZSBjb2xvcGhvbiB3YXMgYXBwZW5kZWQgdG8gdGhlIHBhZ2VzIGJ5IA0KTWljaGFl
bC4gIFNpbmNlIHdlIGNvdWxkbid0IHVzZSB0aGUgNHRoIGZpZWxkIGZvciB0aGF0LCB3ZSBo
YWQgdG8gaGF2ZSBhIA0KQ09MT1BIT04gc2VjdGlvbi4NCg0KSG93ZXZlciwgdGhlIGFkZGl0
aW9uIG9mIHRoZSBMSUJSQVJZIHNlY3Rpb24gc2VlbXMgdG8gZml4IHRoaXMgaXNzdWUsIA0K
YW5kIHNvIG5vdyB3ZSBoYXZlIGFuIGV2ZW4gbW9yZSBwcmVjaXNlIHdheSB0byBkZXRlcm1p
bmUgd2hlcmUgYSBnaXZlbiANCmZ1bmN0aW9uIGNvbWVzIGZyb20gKGluY2x1ZGluZyB0aGUg
bGlicmFyeSBmaWxlIG5hbWUsIGFuZCB0aGUgbGlua2VyIA0Kb3B0aW9uKS4NCg0KVGhpcyBn
aXZlcyBtZSBhbm90aGVyIGFyZ3VtZW50IGZvciB0aG9zZSB3aG8gZG9uJ3QgbGlrZSB0byBo
YXZlIGEgDQpMSUJSQVJZIHNlY3Rpb24gZm9yIGxpYmMgc3R1ZmYgKHNpbmNlIC1sYyBpcyB1
bm5lY2Vzc2FyeSksIGFuZCBjb25zaWRlciANCml0IG5vaXNlLg0KDQo+IA0KPiBGdXJ0aGVy
LCBhcyB0aGUgbGliYy1yZWxhdGVkIG1hbiBwYWdlcyBpbiB0aGlzIHByb2plY3QgZXhwYW5k
IGNvdmVyYWdlDQo+IHRvIG90aGVyIGxpYmNzIHRoYW4gR05VJ3MsIHRoZSBhbHRlcm5hdGl2
ZXMgdG8gdGhlIGVtcHR5IHN0cmluZw0KPiBwcm9mZXJyZWQgaW4gbWFuLXBhZ2VzKDcpIHNl
ZW0gbGVzcyBhbmQgbGVzcyBhcHByb3ByaWF0ZS4NCg0KQWdyZWUuICBMSUJSQVJZIHNlZW1z
IG11Y2ggbW9yZSBhcHByb3ByaWF0ZSBmb3IgdGhhdCBwdXJwb3NlLg0KDQpBbmQgdGhpcyBo
ZWxwcyByZW1vdmUgdGhlIENPTE9QSE9OIHNlY3Rpb24gKG9yIGF0IGxlYXN0LCB3ZSBkb24n
dCBuZWVkIA0KdG8gYXV0b2dlbmVyYXRlIGl0LCBzaW5jZSB0aGUgdmVyc2lvbiBudW1iZXIg
bm93IGNvbWVzIGluIC5USCwgYW5kIHRoZSANCkNPTE9QSE9OIGlzIHN0YXRpYzsgc28gSSBj
YW4gZXZlbiBtb3ZlIGl0IHRvIGEgc21hbGxlciBSRVBPUlRJTkcgQlVHUyANCnNlY3Rpb24p
Lg0KDQo+IA0KPj4gJCBncmVwIC1yICdbLl1USCAuKiIiJyBtYW4qLw0KPj4gbWFuNy9wb3Np
eG9wdGlvbnMuNzouVEggUE9TSVhPUFRJT05TIDcgMjAyMS0wOC0yNyAiIiAiTGludXggUHJv
Z3JhbW1lcidzIE1hbnVhbCINCj4+IG1hbjcvYnBmLWhlbHBlcnMuNzouVEggQlBGLUhFTFBF
UlMgNyAiIiAiIiAiIg0KPj4gbWFuOC96ZHVtcC44Oi5USCBaRFVNUCA4IDIwMjAtMDQtMjcg
IiIgIkxpbnV4IFN5c3RlbSBBZG1pbmlzdHJhdGlvbiINCj4+IG1hbjgvemljLjg6LlRIIFpJ
QyA4IDIwMjAtMDgtMTMgIiIgIkxpbnV4IFN5c3RlbSBBZG1pbmlzdHJhdGlvbiINCj4gDQo+
IFRoZSByZXBsYWNlbWVudCBmaWZ0aCBhcmd1bWVudHMgYWJvdmUgc2VlbSBwb2ludGxlc3Ms
IGFuZCBpbiB0aGUgY2FzZSBvZg0KPiBicGYtaGVscGVycyg3KSwgZG93bnJpZ2h0IHVuaGVs
cGZ1bC4NCj4gDQo+ICAgICAgICAgLlRIIHRpdGxlIHNlY3Rpb24gW2Zvb3RlcuKAkG1pZGRs
ZV0gW2Zvb3RlcuKAkGluc2lkZV0gW2hlYWRlcuKAkG1pZGRsZV0NCj4gWy4uLl0NCj4gICAg
ICAgICAgICAgICAgSWYgc2VjdGlvbiBpcyBhIHNpbXBsZSBpbnRlZ2VyIGJldHdlZW4gMSBh
bmQgOQ0KPiAgICAgICAgICAgICAgICAoaW5jbHVzaXZlKSwgdGhlcmUgaXMgbm8gbmVlZCB0
byBzcGVjaWZ5IGhlYWRlcuKAkG1pZGRsZTsNCj4gICAgICAgICAgICAgICAgYW4udG1hYyB3
aWxsIHN1cHBseSB0ZXh0IGZvciBpdC4NCj4gDQo+IEhvd2V2ZXIsIEkgcmVhbGl6ZSB0aGF0
IGJwZi1oZWxwZXJzKDcpIGlzIGdlbmVyYXRlZCBmcm9tIGFub3RoZXIgZm9ybWF0LA0KPiBh
bmQgc28gY29kZSB3b3VsZCBoYXZlIHRvIGJlIHdyaXR0ZW4gdG8gbW9yZSB1c2VmdWxseSBw
b3B1bGF0ZSAyIG9mIHRoZQ0KPiAzIGJsYW5rIGZpZWxkcy4gIChJIHdvdWxkIGxlYXZlIHRo
ZSB0aGlyZCB1bnNwZWNpZmllZCBpbnN0ZWFkIG9mIG1ha2luZw0KPiBpdCBleHBsaWNpdGx5
IGVtcHR5LikNCg0KRm9yIHRoZSBkYXRlLCBJIGFscmVhZHkgcmVwb3J0ZWQgYSBidWcgdG8g
cnN0Mm1hbigxKS4gIEZvciB0aGUgNHRoIA0KZmllbGQsIEkgZ3Vlc3Mgd2Ugc2hvdWxkIHNw
ZWNpZnkgTGludXgga2VybmVsIGFuZCB2ZXJzaW9uIChzbyBJIHNob3VsZCANCnBhdGNoIHRo
ZSBrZXJuZWwgdG8gcGFzcyB0aGF0IGluZm8gdG8gdXMpLg0KDQoNCk5vdyB0aGF0IEknbSBj
b252aW5jZWQgdG8gZml4IHRoZSA0dGggYXJndW1lbnQgYXMgc29tZXRoaW5nIGxpa2UgIkxp
bnV4IA0KbWFuLXBhZ2VzIDUuMTMiIGZvciBhbGwgcGFnZXMsIEknZCBsaWtlIHlvdSB0byBo
ZWxwIG9uIHRoaXMuDQoNClRoZSBzY3JpcHQgZm9yIHJlcGxhY2luZyB0aGVtIGFsbCB3YXMg
ZWFzeS4gIEkgcHJvZHVjZWQgdGhlIGZvbGxvd2luZyANCnRlbXBvcmFyeSBjb21taXQgaW4g
bXkgdHJlZToNCg0KICAgICBBbGwgcGFnZXM6IFJlcGxhY2UgdGhlIDR0aCBhcmd1bWVudCB0
byAuVEggYnkgIkxpbnV4IG1hbi1wYWdlcyANCjx2ZXJzaW9uPiINCg0KICAgICBTY3JpcHRl
ZCBjaGFuZ2U6DQoNCiAgICAgJCBmaW5kIG1hbiogLXR5cGUgZiBcDQogICAgICAgfHhhcmdz
IHNlZCAtaSAnL14uVEggL3MvXCguVEggXCtbXiBdXCsgXCtbXiBdXCsgXCtbXiBdXCtcKSAN
ClwrIlteIl1cKyIvXDEgIkxpbnV4IG1hbi1wYWdlcyA1LjEzIi8nDQoNCiAgICAgJCBmaW5k
IG1hbiogLXR5cGUgZiBcDQogICAgICAgfHhhcmdzIHNlZCAtaSAnL14uVEggL3MvXCguVEgg
XCtbXiBdXCsgXCtbXiBdXCsgXCtbXiBdXCtcKSBcK1teIiANCl1cKy9cMSAiTGludXggbWFu
LXBhZ2VzIDUuMTMiLycNCg0KICAgICBTaWduZWQtb2ZmLWJ5OiBBbGVqYW5kcm8gQ29sb21h
ciA8YWx4Lm1hbnBhZ2VzQGdtYWlsLmNvbT4NCg0KDQpOb3csIHdlIHNob3VsZCBkZWNpZGUg
d2hhdCB0byBwdXQgZXhhY3RseSBpbiB0aGF0IGZpZWxkLCBhbmQgd2hlbi9ob3cgdG8gDQpn
ZW5lcmF0ZSBpdC4NCg0KVGhlIHByb2plY3QgbmFtZSwgSSB0aGluayBpdCdzIGNsZWFyIHRo
YXQgaXQgc2hvdWxkIGJlICJMaW51eCBtYW4tcGFnZXMiIA0KKGFyZSB0aGVyZSBhbnkgdm9p
Y2VzIGFnYWluc3Q/KS4gIEFzIHRoZSB2ZXJzaW9uLCBmb3IgcmVsZWFzZXMgaXQgYWxzbyAN
CnNlZW1zIGNsZWFyOiB0aGUgdmVyc2lvbiBudW1iZXI7IGJ1dCB3aGF0IGFib3V0IHVucmVs
ZWFzZWQgcGFnZXM/c2hvdWxkIA0KSSB3cml0ZSBhIGdlbmVyaWMgcGxhY2Vob2xkZXI/ICBP
ciBtYXliZSBrZWVwIHRoZSBsYXN0IHZlcnNpb24gbnVtYmVyPyANCk9yIG1heWJlIHB1dCB0
aGUgZXhwZWN0ZWQgbmV4dCB2ZXJzaW9uIG51bWJlciAodGhhdCdzIHJpc2t5KS4gIE9yIHB1
dCANCnRoZSBnaXQgdmVyc2lvbiAoaS5lLiwgbWFuLXBhZ2VzLTUuMTktcmMxLTE3My1nNjYy
MDg5OGQzKT8gIFRoZSBnaXQgDQp2ZXJzaW9uIHdvdWxkIGJlIHRoZSBtb3N0IHByZWNpc2Us
IGJ1dCBpdCdzIGFsc28gdGhlIG1vc3QgY29tcGxleCB0byBkbzogDQpJJ2QgbmVlZCB0byBt
b2RpZnkgdGhlIF9pbnN0YWxsZWRfIHBhZ2VzLCBzaW5jZSBvZiBjb3Vyc2UgSSdtIG5vdCBn
b2luZyANCnRvIGVkaXQgdGhlIG9yaWdpbmFsIHBhZ2VzIHdpdGggdGhhdCBpbmZvLg0KDQpD
aGVlcnMsDQoNCkFsZXgNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------GhA5pQNaL3eKqMWzL05M1LHv--

--------------tQD7ihnNf0BCNeLjhsoEmb9W
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMAzBsACgkQnowa+77/
2zK25BAAg7Ox1GMCEOtJyIxyZ8twJwCUkZTOdG78rlEye5LJLmIJXZZ/GCheDLh3
tuLpj8oTs88EYe7j8oRk9nVgDqhGrpR4rIa9ZvNmaOKMQG9OhKIdbJI6T8y3qn0P
r94cji7d4nK+d4oN0bxOj4ntjtNcAeN+vGWCuFN9pAFSaW3nwobtDTIQnC9ErrRy
p+NG4FRihSj7OBo6SpC9k4nOG2+92eTZUm5u1EhCef7NLTTsb/snWWwpKy+jpSzI
8lrRUJ7KYx+ZZGCR4hjSbNyqJrCLmq9iRUxk4THSr3iNwMlRvpUG8IbHANTBw9S8
oj+r2nK2iDUeEdsGGiLs8oWXTzMTeW9YbugfN0aDaFNRFROU2Jwvj2dquS9iKESt
/Q4LMldeF8cUWWhPth9/KrDh4x5GImoQiRghHox3ESgs3XfY6p9ULBRB++7Cwq/r
GgPVhK6oRi4dBnXhb9OgFXhqkMMabOf11222RhMBODFJbCHggaO3mNvWJqlKlwBk
bIxjc+tB2Ni4hFa1UgsffwXyD9YHPDDjrKeAxLl1BxLG5/IdiC/H3CbPFUZtPm7e
if9TmXE9t4IHGH08OhrmFWGTF1DGGhV/bMDNOSmUQtFFb7jMhlxWPGgG7rLlWCHc
dJoHMPfQfdJD60z74RweBGbZsj4TCb+bWPvu9AJAXq7zm4+L+GA=
=HCp9
-----END PGP SIGNATURE-----

--------------tQD7ihnNf0BCNeLjhsoEmb9W--
