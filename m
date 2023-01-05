Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 389F465E271
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 02:21:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229560AbjAEBV4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 20:21:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjAEBVz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 20:21:55 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D693D2F783
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 17:21:53 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id co23so34785610wrb.4
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 17:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E7/twJ5Wm7BBqAgxbDUeS+yl0963ZCBc2eOckv2ZJMs=;
        b=OcrsRUcHVxHW2eHP+V4uVZ6G5Bsz5uUsHzdW2SOe18BFSbWSM/x+XDUtfR1bLvsLoT
         LFkNAt1YUnKSCYE45TixGZkiT99T55AL4RyL2RHBP3wkzSuwydOtWYmFpS7zqYsnq1KA
         GMJBgeTcv16WUSOEz41uTU6EyINlIWL7ZhWEShuO4n/XKOCJw6hNhtwW77PH/6m/L6Oi
         clwVaKuqVziDzULN9K+R0NIS5xO/wiODoXd2DpjbW7prxeI91AEievjghKYhYKNLndeW
         eAH6XUq4iraUmssyBjOrHFllLtvwa4oomLjH3VI1TyPEZ2WLF7XPHQi6drv/CQ98+Ul4
         eDyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E7/twJ5Wm7BBqAgxbDUeS+yl0963ZCBc2eOckv2ZJMs=;
        b=xo1URcb8cPBVk6jFKbNkJdWyVSTULFDYihC+QlY3xqt0GxL/tL10hikfc0mrArLIRQ
         cs21t9vdze6s1GP5aBUdtiE2vH45C9LE+YOCF7sJ7OvSByhki/6a3I2tjMBpNE/NpoNU
         PSa13FVGPt5YtpGgVC6YgGhLqOVpz6+R//rgNke4VGJN8BvwJ9AWh2gVxVynPkIhNR1U
         ZnBgTd6zR7TeYda2M4aIK89Pt1jQgdbxsWBEx7Q/N2H9qcnS+Ed0HUaoy7BQboon6AUt
         HCIZrfX/kiKsJCu7mchIgO0PCgGNWts8tiiCj83rbDxMlMffcS2BNyTGKkq9rxcurXN9
         W4vw==
X-Gm-Message-State: AFqh2kpwpPcO7NXbqC3R5RJRX47poInkuJHqTgYc/f58doQCfqqVmHBR
        yMEaTMq+1SeWBa6mRiRJ5uI=
X-Google-Smtp-Source: AMrXdXu0J/N28M56jck9eBqYIoae8oj0y3/scrHATT43W9WyPjgnaNt2YCTSLbX8J36NMc84t5O4nw==
X-Received: by 2002:a5d:610c:0:b0:298:4baf:ac90 with SMTP id v12-20020a5d610c000000b002984bafac90mr7364733wrt.57.1672881712244;
        Wed, 04 Jan 2023 17:21:52 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s8-20020a5d5108000000b0028f2fdadde2sm16309932wrt.34.2023.01.04.17.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 17:21:51 -0800 (PST)
Message-ID: <add81cf2-b221-7d9d-709b-3be74b12a364@gmail.com>
Date:   Thu, 5 Jan 2023 02:21:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230104073807.gcohk253vopp4ii3@illithid>
 <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
 <20230104155512.klkmu62oaz7ore5a@illithid>
 <529c2d78-395f-b0e6-a114-e214335d4472@gmail.com>
 <20230104191118.xs7jwtjcqz6fhbbx@illithid>
 <afd3a0d3-9bf4-2687-4f62-2ebd62398447@gmail.com>
 <20230104205942.uc6klfjzf5fe2zij@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230104205942.uc6klfjzf5fe2zij@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------STzGr9T80wAs71Eoo0Ot3HI5"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------STzGr9T80wAs71Eoo0Ot3HI5
Content-Type: multipart/mixed; boundary="------------uD6oICrSvq9NXrhbPIjxY7ZS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <add81cf2-b221-7d9d-709b-3be74b12a364@gmail.com>
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
References: <20230104073807.gcohk253vopp4ii3@illithid>
 <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
 <20230104155512.klkmu62oaz7ore5a@illithid>
 <529c2d78-395f-b0e6-a114-e214335d4472@gmail.com>
 <20230104191118.xs7jwtjcqz6fhbbx@illithid>
 <afd3a0d3-9bf4-2687-4f62-2ebd62398447@gmail.com>
 <20230104205942.uc6klfjzf5fe2zij@illithid>
In-Reply-To: <20230104205942.uc6klfjzf5fe2zij@illithid>

--------------uD6oICrSvq9NXrhbPIjxY7ZS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS80LzIzIDIxOjU5LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wNFQyMToxNTowMCswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+PiBUaGF0J3MgdHJ1ZS4gIEJ1dCB3aGF0IGlz
IF9ub3RfIHRydWUgaXMgdGhhdCB5b3UgZG9uJ3QgaGF2ZSBhDQo+Pj4gbWluaW11bSBleHBl
Y3RlZCB0ZXJtaW5hbCB3aWR0aC4gIFlvdSBkbywgeW91IGp1c3QgbWlnaHQgbm90IGtub3cN
Cj4+PiB3aGF0IGl0IGlzIGFuZCBpdCBtYXkgbm90IGV2ZW4gaGF2ZSBiZWVuIGNvbnNjaW91
c2x5IGNob3Nlbi4NCj4+DQo+PiBJIGhhdmVuJ3QgY29uc2Npb3VzbHkgY2hvc2VuIGl0LCBi
dXQgSSBvZnRlbiB1c2UgNjYtY29sIHRlcm1pbmFscywNCj4+IGVzcGVjaWFsbHkgd2hlbiBJ
IHBsYW4gdG8gcGFzdGUgdGV4dCBpbnRvIGFuIGVtYWlsLg0KPiANCj4gV2VsbCwgYnkgInlv
dSIgSSBtZWFuIGluIHlvdXIgY2FwYWNpdHkgYXMgTGludXggbWFuLXBhZ2VzIG1haW50YWlu
ZXIuDQo+IA0KPiBUaGVyZSBpcyBzb21lIHRocmVzaG9sZCBvZiB0ZXJtaW5hbCB3aWR0aCBp
biB0aGUgY29ycHVzIG9mIHBhZ2VzIGJlbG93DQo+IHdoaWNoIHRoaW5ncyBzdGFydCB0byBs
b29rIHJlYWxseSBob3JyaWJsZS4NCj4gDQo+IE1heWJlIHlvdSdkIGxpa2UgbXkgc2hlbGwg
d3JhcHBlciBmb3IgbWFuKDEpLg0KPiANCj4gICAgICAjIFZpZXcgYSBtYW4gcGFnZSBidXQg
cmVwb3J0IGFsbCB3YXJuaW5ncy4NCj4gICAgICBtYW4gKCkgew0KPiAgICAgICAgICBpZiBj
b21tYW5kIG1hbiAiJEAiDQo+ICAgICAgICAgIHRoZW4NCj4gICAgICAgICAgICAgIGNvbW1h
bmQgbWFuIC0td2FybmluZ3M9dyAiJEAiID4vZGV2L251bGwNCj4gICAgICAgICAgZmkNCj4g
ICAgICB9DQo+IA0KPiBJdCBzaG93cyBtZSB0aGUgZm9ybWF0dGVyJ3Mgd2FybmluZ3MgX2Fm
dGVyXyB0aGUgcGFnZSBpcyByZW5kZXJlZC4NCg0KSG1tbSwgeWVzLCBJJ2xsIGdldCB0aGF0
IG9uZSENCg0KWy4uLl0NCg0KPj4gSSBtZWFuIHNvbWV0aGluZyBsaWtlIFxYXCVmb29iYXIs
IHNvIHRoYXQgdGhlIFxYICJjYW5jZWxzIiB0aGUgXCUuDQo+PiBOb3QgbWFudWFsbHkgaW5z
ZXJ0aW5nIGJyZWFrIHBvaW50cy4gIFNvLCBpbWFnaW5pbmcgYSB3b3JsZCBpbiB3aGljaA0K
Pj4gaHlwaGVuYXRpb24gd2FzIGRpc2FibGVkIF9vbmx5XyB3aXRoaW4gZm9udC1zZWxlY3Rp
b24gbWFjcm9zLCBJIGNvdWxkDQo+PiBzcGVjaWZ5IHRoYXQgYSB3b3JkIGlzIGZpbmUgdG8g
YmUgaHlwaGVuYXRlZCBsaWtlIHRoaXM6DQo+Pg0KPj4gLkIgXFhpZG9udGNhcmVpZnRoaXNp
c2h5cGhlbmF0ZWQNCj4gDQo+IEhtbSwgbm8sIHRoZXJlIGlzIG5vICpyb2ZmIGVzY2FwZSBz
ZXF1ZW5jZSBmb3IgImFwcGx5IGF1dG9tYXRpYw0KPiBoeXBoZW5hdGlvbiB0byB0aGUgZm9s
bG93aW5nIHdvcmQiLg0KPiANCj4gQnV0IHlvdXIgaHlwb3RoZXRpY2FsIGlzIGFscmVhZHkg
YSBjb3VudGVyZmFjdHVhbC4gIE1hY3JvcyBsaWtlIC5CDQo+IF9hbHJlYWR5XyBkb24ndCBk
aXNhYmxlIGh5cGhlbmF0aW9uLiAgU28gaXQgc2VlbXMgdG8gbWUgbGlrZSB5b3UncmUNCj4g
cHJvcG9zaW5nIHNlY29uZC1vcmRlciBtYWNoaW5lcnkgdG8gZ2V0IHlvdXJzZWxmIG91dCBv
ZiB0aGUgYmluZCB5b3UncmUNCj4gY3JlYXRpbmcgd2l0aCB5b3VyIGZpcnN0LW9yZGVyIGRl
bWFuZCB0byBtYWtlIHRoZSBmb250IG1hY3JvcyBkaXNhYmxlDQo+IGh5cGhlbmF0aW9uLg0K
PiANCj4gSXQgcmVhbGx5IHNlZW1zIGJldHRlciB0byBtZSB0byBsZWF2ZSB0aGUgZm9udCBt
YWNyb3MgYWxvbmUgYW5kIGhhdmUNCj4gYSBzZW1hbnRpYyB0YWdnaW5nIGZhY2lsaXR5IGZv
ciB0aG9zZSB0aGluZ3MgeW91IHJlYWxseSBkb24ndCB3YW50DQo+IGh5cGhlbmF0ZWQuDQo+
IA0KPiBPciwgcHJvY2VlZCBhcyB0aGUgZ3JvZmYgbWFuIHBhZ2VzIGhhdmUgdG8gZGF0ZSwg
c3RpY2sgdG8gdGhlIGZvbnQNCj4gc2VsZWN0aW9uIG1hY3JvcyBhcyB0aGV5IGFyZSwgYW5k
IHVzZSBcJSB3aXRoIHRoZW0uDQo+IA0KPiBNb3N0IG9mIHRoZSA5NCBwcmludGFibGUgQmFz
aWMgTGF0aW4gY2hhcmFjdGVycyBhbHJlYWR5IGhhdmUgbWVhbmluZw0KPiBhcyAqcm9mZiBl
c2NhcGUgc2VxdWVuY2VzIHdoZW4gcHJlY2VkZWQgYnkgYW4gZXNjYXBlIGNoYXJhY3Rlci4g
IFRoZQ0KPiBzY2FyY2UgbmFtZSBzcGFjZSB0aGF0IHJlbWFpbnMgbXVzdCBiZSBvY2N1cGll
ZCBvbmx5IHdpdGggZ3JlYXQNCj4gY29uc2lkZXJhdGlvbi4gIERhdmUgS2VtcGVyIGFuZCBJ
IGhhdmUga2lja2VkIGFyb3VuZCBpZGVhcyBmb3IgYW4NCj4gImV4dGVuc2lvbiIgY2hhcmFj
dGVyIGZvciBlc2NhcGUgc2VxdWVuY2VzIHRvIHN1cm1vdW50IHRoaXMgcHJvYmxlbS4gIFw8
DQo+IGlzIGF2YWlsYWJsZSwgYW5kIGRlc3BpdGUgZ2l2aW5nIG1lIG5pZ2h0bWFyZSBtZW1v
cmllcyBvZiBIVE1MLCBpdCBtaWdodA0KPiBiZSB0aGUgYmVzdCBjaG9pY2UgYW1vbmcgd2hh
dCByZW1haW5zLlsxXQ0KPiANCj4+PiBMaWtlIGNoYW5nZXMgaW4gbGV0dGVyY2FzZSwgdGhp
cyBpcyBfaW5mb3JtYXRpb25fLg0KPj4NCj4+IEkgZG9uJ3QgYXJndWUgYWdhaW5zdCB0aGF0
LCBidXQgaWYgdGhlcmUgd2FzIGEgd2F5IHRvIHJldHVybiB0aGF0DQo+PiBpbmZvcm1hdGlv
biBleHBsaWNpdGx5LCB3ZSB3b3VsZG4ndCBiZSBsb29zaW5nIGl0Lg0KPiANCj4gQXMgbm90
ZWQgYWJvdmUsIEkgdGhpbmsgYSBnb29kIHdheSB0byBhY2hpZXZlIHRoYXQgaXMgYnkgbm90
IGRpc2NhcmRpbmcNCj4gaXQgc3VjaCB0aGF0IGl0IG5lZWRzIHJlY292ZXJ5IGxhdGVyLg0K
PiANCj4+IE9oLCBJIGRvIGNvbXBsYWluIGEgbG90OyBob3dldmVyLCBJIGRvbid0IGV4cHJl
c3MgaXQgdG9vIG11Y2ggaW4gdGhlDQo+PiBmb3JtIG9mIGJ1ZyByZXBvcnRzLCBzaW5jZSBJ
IGRvbid0IGJlbGlldmUgaXQncyB0aGUgZmF1bHQgb2YgdGhlDQo+PiB3cml0ZXIsIGJ1dCBy
YXRoZXIgbGFjayBvZiBzdXBwb3J0IGZyb20gZ3JvZmYoMSkuDQo+IA0KPiBJIGRvbid0IHRo
aW5rIGdyb2ZmIGlzIG1pc3Npbmcgc3VwcG9ydCBmb3IgYW55dGhpbmcgeW91IHdhbnQgaGVy
ZTsgd2UNCj4gaGF2ZSBhIGRpc2FncmVlbWVudCBvdmVyIHRoZSBkZXNpZ24gb2YgdGhlIG1h
big3KSBwYWNrYWdlLg0KDQpZZXMsIHRoYXQgbWlnaHQgYmUgYW5vdGhlciB3YXkgdG8gcGhy
YXNlIGl0OyBwcm9iYWJseSBhIG1vcmUgYWNjdXJhdGUgb25lLg0KDQpTbywgeW91IGRlZmVu
ZCBoeXBoZW5hdGlvbiB3aXRoaW4gLkkgYW5kIC5CIGJlY2F1c2UgdGhleSBhcmUgbm90IHNl
bWFudGljIG1hY3Jvcy4NCg0KQnV0LCBvZiBjb3Vyc2UsIGJ5IHByZXNlbnRpbmcgYSB3b3Jk
IGRpZmZlcmVudGx5LCB5b3UncmUgaW1wbHlpbmcgdGhhdCBpdCdzIG1vcmUgDQppbXBvcnRh
bnQgdGhhbiB0aGUgc3Vycm91bmRpbmcgd29yZHMuICBBbmQgc2luY2Ugd2UgdHJ5IHRvIGF2
b2lkIG92ZXJ1c2Ugb2YgDQpwcmVzZW50YXRpb25hbCBtYWNyb3MsIHRoaXMgaW1wb3J0YW5j
ZSBzaG91bGQgYmUgc29tZXdoYXQgY29uc2lzdGVudC4NCg0KSWYgYSB3b3JkIGlzIG1vcmUg
aW1wb3J0YW50IHRoYW4gdGhlIG90aGVycywgaXQgaXMgdmVyeSBsaWtlbHkgdGhhdCByZWFk
ZXJzIHdpbGwgDQp0cnkgdG8gc2VhcmNoIGZvciBpdCBtb3JlIG9mdGVuIChmb3Igd2hpY2gg
aHlwaGVuYXRpb24gaXMgYSBiaWcgcHJvYmxlbSBpbiBsZXNzKDEpKS4NCg0KSXQgYWxzbyBt
YWtlcyBzZW5zZSB0byBub3QgaHlwaGVuYXRlIGl0IHNvIHRoYXQgaXQgc3RhbmRzIG1vcmUg
cmVhZGFibGUuDQoNCklzbid0IGl0IGFuIGV4Y2VwdGlvbiB3aGVuIHlvdSBkb24ndCBtaW5k
IGh5cGhlbmF0aW5nIGEgQiBvciBJIHdvcmQsIHJhdGhlciB0aGFuIA0KYSBydWxlPw0KDQpE
byB5b3UgaGF2ZSBhbnkgc3RhdGlzdGljcz8gIENvdWxkIHlvdSBnZXQgYW4gYXBwcm94aW1h
dGUgcmF0aW8gb2Ygd29yZHMgd2hlcmUgDQp5b3UgZG9uJ3QgbWluZCBhdCBhbGwgaHlwaGVu
YXRpbmcsIGNvbXBhcmVkIHRvIHRob3NlIHdoZXJlIHlvdSBkb24ndCB3YW50IA0KaHlwaGVu
YXRpb24/DQoNClNvbWV0aGluZyBsaWtlIG9mIGNvdXJzZSByZXN0cmljdGVkIHRvIEIgb3Ig
SSB3b3Jkcyk6DQoNCgkgICAgICAgICAgICAgICAgICAgICAgIHdvcmRzIHRoYXQgY2FuIGh5
cGhlbmF0ZQ0KICAgICAgICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiAgICAgICAgIHdvcmRzIHRo
YXQgY2FuJ3QgaHlwaGVuYXRlICArICB3LiB0aGF0IHVzZSBcJSAgKyAgdy4gdGhhdCBjYW4g
aHlwaGVuYXRlDQoNCkNvdWxkIHlvdSBnZXQgdGhhdCBmcm9tIGdyb2ZmJ3MgcGFnZXM/ICBJ
IGV4cGVjdCB0aG9zZSB3aWxsIGJlIHRoZSBtb3N0IA0KY29uc2lzdGVudCBvbmVzIGluIHVz
ZSBvZiBcJS4NCg0KSSBleHBlY3QgdGhhdCB0byBiZSBsZXNzIHRoYW4gMC4xOyBwcm9iYWJs
eSBldmVuIGJlbG93IDAuMDEuICBJc24ndCB0aGF0IGEgZ29vZCANCmhpbnQgdGhhdCBpdCB3
b3VsZCBiZSBiZXR0ZXIgdG8gZmxpcCB0aGUgZGVmYXVsdCB0aGVyZT8NCg0KWy4uLl0NCg0K
Pj4NCj4+IE15IHByb2JsZW0gaXMgbm90IGFib3V0IHBhc3RpbmcgdGV4dC4gIFRoYXQncyB2
ZXJ5IG1pbm9yLiAgTXkgcHJvYmxlbQ0KPj4gaXMgZmluZGluZyB0ZXh0Lg0KPiANCj4gWWVz
LCBJJ3ZlIHNlZW4gbWFueSBwZW9wbGUgY29tcGxhaW4gYWJvdXQgdGhpcywganVzdGlmaWFi
bHksIG92ZXIgdGhlDQo+IHllYXJzLiAgV2hlbiBwZW9wbGUgbGVhdmUgaHlwaGVuYXRpb24g
ZW5hYmxlZCBhbmQgdHJ5IGZ1bGwtdGV4dCBzZWFyY2hlcw0KPiBvZiBtYW4gcGFnZXMsIG9m
dGVuIGluc2lkZSBsZXNzKDEpLCB0aGV5IGdldCBmcnVzdHJhdGVkIGJ5IHRoZSBicm9rZW4N
Cj4gd29yZHMuDQo+IA0KDQpZZWFoLCBmb3IgZnVsbC10ZXh0IHNlYXJjaGVzLCBJIGNkKDEp
IGludG8gdGhlIG1hbi1wYWdlcyBkaXIgYW5kIHNlYXJjaCBpbiB0aGUgDQpzb3VyY2UgOiku
DQoNClsuLi5dDQoNCj4gDQo+IEkgaGF2ZSBvbmx5IHR3byByZWNvbW1lbmRhdGlvbnMuDQo+
IA0KPiAxLiAgRGlzYWJsZSBoeXBoZW5hdGlvbiBpbiB5b3VyIG1hbi5sb2NhbDsgb3INCg0K
SSB0cnkgdG8gYXZvaWQgY3VzdG9tIGNvbmZpZ3VyYXRpb24gZmlsZXMuICBUaGF0IGhhcyBz
ZXZlcmFsIGFkdmFudGFnZXM7IG9uZSBvZiANCnRoZW0gaW4gdGhlIGNhc2Ugb2YgbWFudWFs
IHBhZ2VzIGlzIG5vdGljaW5nIHdoZW4gaW5leHBlcnQgdXNlcnMgd2lsbCBmaW5kIHRoZW0g
DQpsZXNzIHVzZWZ1bCB0aGFuIEkgd2lsbC4NCg0KPiAyLiAgQmFjayBteSBwbGF5IGZvciBz
ZW1hbnRpYyB0YWdnaW5nIGluIG1hbig3KS4gIDstKQ0KDQo6KQ0KDQo+IA0KPj4+IEkgdGhp
bmsgbWFya2luZyBicmVhayBwb2ludHMsIGh5cGhlbmF0ZWQgYW5kIG90aGVyd2lzZSAoYXMg
d2l0aA0KPj4+IFVSTHMpLCBpcyB0aGUgb3Bwb3NpdGUgb2YgbGF6aW5lc3MuICBJdCBpcyBh
IGxldmVsIG9mIGZhc3RpZGlvdXNuZXNzDQo+Pj4gSSBkb24ndCBhY3R1YWxseSBleHBlY3Qg
b2YgbWFueSBtYW4oNykgd3JpdGVycyBhcGFydCBmcm9tIG15c2VsZi4NCj4+DQo+PiBJIHdv
dWxkIHdhbnQgdG8gdXNlIFw6LiAgV2hhdCBJIHdhbnQgaXMgYSB0b29sIHdoaWNoIHJlLWVu
YWJsZXMgdGhlDQo+PiBkZWZhdWx0IGh5cGhlbmF0aW9uIHBvaW50cyBhZnRlciB0aGV5IGhh
dmUgYmVlbiBjYW5jZWxsZWQuDQo+IA0KPiBJIHN1Ym1pdCBhZ2FpbjogaWYgeW91IGRvbid0
IGNhbmNlbCB0aGVtIGluIHRoZSBmaXJzdCBwbGFjZSwgdGhleSBkb24ndA0KPiBoYXZlIHRv
IGJlIHJlY29uc3RydWN0ZWQuDQo+IA0KPj4gSSB3b3VsZC4gIEkgd291bGRuJ3QgYmUgYWJs
ZSB0byBjb3VudCBob3cgbWFueSB0aW1lcyBJJ3ZlIHRyaWVkIHRvDQo+PiBzZWFyY2ggZm9y
IHN1Y2ggYSBrZXl3b3JkLCBhbmQgaXQgd2FzIGh5cGhlbmF0ZWQuDQo+IA0KPiBTZW1hbnRp
YyB0YWdzIHdvdWxkIHNvbHZlIHRoaXMgcHJvYmxlbS4NCj4gDQo+IFJlZ2FyZHMsDQo+IEJy
YW5kZW4NCj4gDQo+IFsxXSBXaGF0J3MgYXZhaWxhYmxlPw0KPiANCj4gICAgICBcKyBcMSBc
MiBcMyBcNCBcNSBcNiBcNyBcOCBcOSBcOyBcPCBcPSBcPiBcQA0KPiAgICAgIFxHIFxpIFxJ
IFxqIFxKIFxQIFxUIFxVIFxXIFx5IFxdDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0K

--------------uD6oICrSvq9NXrhbPIjxY7ZS--

--------------STzGr9T80wAs71Eoo0Ot3HI5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO2JicACgkQnowa+77/
2zKzwg/7BzDSpxmjgLObur9wo0uGd0x3jusG+JAYbIDwE/r+jyBsKI2xu3xhmC/b
vpUBRyXJbTiMhaF4p/BZ0izvLtvimpZB6DlGaV7vFBlt0uKp/QLKOtBFeZB2Op+l
KKVyUsTrmfK5cuwYcy4gtTnY0R14gSmi/vdcYmH74ksYpXXcR5qp25MODzgJZ7FP
nvcVpui5UydTZvus5ESm/CC8136DZeXFk4tXl07lAE+1RQ8oq8/0HxV2SNJAuK7R
O/7rBqi865Y7knHa+Ps+uRwXeBYUWW8PYuYGodeP8Tb4wJxnTNvhxaSIDLVZuBOj
2bRCfzxwhjW/4NSSvmy2JmtfDiAbJseTIIyCSROdlRg6tzmmGSq0BrALO1coQfD1
+DlYR62OGiopx2RarGlbHMOvnREWj8TViAzTMx86Az8fDAS48o6ftB0tsyS33tx9
jDYMLCXhgOQL7E1BvMUSvut6nnIlsoQQUG+WSTpcsSty3O5vsvfX7++A6QLQ/usT
IMWaKa5evFwGOXBk2liF3b0ixDWnriipSpxyB7UfGfMwG6LJ6TndAkiUNTpY/1Mh
aQEvFgpfDCzjgkqU9wFz5dFX2WJNWLin+3ypQYwu9RDYvn/30aVDDWlbrgn89rtN
tP4+dHwtLC06FiynOcxEevheNf7+Ox7Z67SL4z6zsUIxg2n5r3I=
=tn/B
-----END PGP SIGNATURE-----

--------------STzGr9T80wAs71Eoo0Ot3HI5--
