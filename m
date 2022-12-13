Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A66E564BDFA
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 21:36:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237048AbiLMUgM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 15:36:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237042AbiLMUgK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 15:36:10 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BDD7DF88
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 12:36:09 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id h12so16998840wrv.10
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 12:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=auN415Xv+u1vVgL/xYjcfBVE3KaoKrLcCwV9z3yYnJI=;
        b=j+DaQAzEjLndhxI2bpMJH5Z5EIwV6yhz6beW3RMtlb8nVHkZVEErlSthRjofMugNIX
         EYC7pj8Clgo1pbEwTrYzBpcyoKGy5mrzPp0I+E4+5Q6C/TOeIzSBYx2UdnrbF5YdyK+v
         PGhPycNmPAh2sUChwqLbM37gzOscE40H296KUXlKgp+r66E9qmyAwODOt354YECl9Qbe
         d5rtksAAeUrUO2vCaZA8Fkeg0nfsrnjaQU2UtOrAbPx0pds0ska3vlxzO2BsCZPgaKrD
         vuXzUqPj258jtZL0nzdUMEtS13RooJmNZS1vYJzsCPbsRJtDib7NDmkps6kF8L25ApAk
         VosQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=auN415Xv+u1vVgL/xYjcfBVE3KaoKrLcCwV9z3yYnJI=;
        b=7B6uWpolSkwC2m55bBhLe9pxhGlQNAz+oCSXksCsNe0PvJpkstlKh3TYjmbqF8Gg1l
         Wph62zBJ/d0iQNhG7Wnwf3zRWiJeui81nTSk66wfDdNowyyM9un4YvmlyTAt4d8hSIZS
         cu0Fjw5rLGttGxPYqZhMyDGEAJRdNcjFZcc/nU8Bo2ylDoEHzM6BQTK6tjdP2RhIszRJ
         xfj9qH50O9tpvkpwO+DnUyT7To3VRE4lYSAa7GztRKw2kGlyx/lVgpA6QRXQHwaxyPVX
         5sm2MLtOMKcFtho9Kg8vZdkENgy3Kv0EYTTZMBGL0xaa4Amzn0FfPNeNj9WXWOLqDNqa
         gVSA==
X-Gm-Message-State: ANoB5pmR8gmAFE35Y6b1kHwc3WsOIbCMVxkekPF989FlpmDZvV22Qzmz
        EfQhjyZ9GHJ5EjozE/aC9zk=
X-Google-Smtp-Source: AA0mqf6ZhOrq/XmC307IQlNIHoS+HFV9x9MSr/CS2RbyIhHvUf29rTWAawE4YlwW1mdFxFyuukxK0w==
X-Received: by 2002:a5d:6f1d:0:b0:242:67f2:9af7 with SMTP id ay29-20020a5d6f1d000000b0024267f29af7mr14321223wrb.69.1670963767866;
        Tue, 13 Dec 2022 12:36:07 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bp7-20020a5d5a87000000b00241bd7a7165sm706581wrb.82.2022.12.13.12.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 12:36:07 -0800 (PST)
Message-ID: <1257a2f5-7d2b-66e8-fa66-9c041604995b@gmail.com>
Date:   Tue, 13 Dec 2022 21:35:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Italics in SS (was: Issue in man page namespaces.7)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090713.GA512@Debian-50-lenny-64-minimal>
 <796a4611-9030-0d3a-e3e6-5b23ca66672b@gmail.com>
 <20221213173517.fhtj52pchamx6xof@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221213173517.fhtj52pchamx6xof@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NYrVLuk7GwfgayLU0Ly6DWES"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------NYrVLuk7GwfgayLU0Ly6DWES
Content-Type: multipart/mixed; boundary="------------32ODY5aEyLjUFfgEu30o25yG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff <groff@gnu.org>, Helge Kreutzmann <debian@helgefjell.de>,
 mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <1257a2f5-7d2b-66e8-fa66-9c041604995b@gmail.com>
Subject: Re: Italics in SS (was: Issue in man page namespaces.7)
References: <20221204090713.GA512@Debian-50-lenny-64-minimal>
 <796a4611-9030-0d3a-e3e6-5b23ca66672b@gmail.com>
 <20221213173517.fhtj52pchamx6xof@illithid>
In-Reply-To: <20221213173517.fhtj52pchamx6xof@illithid>

--------------32ODY5aEyLjUFfgEu30o25yG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTIvMTMvMjIgMTg6MzUsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+IEhpIEFsZXgsDQo+IA0KPiBbZmluYWxseSBnZXR0aW5nIHRvIHRoaXM7IG15
IGVtYWlsIHJlcGx5IHF1ZXVlIGlzIGFib3V0IDMgd2Vla3MgZGVlcF0NCj4gDQo+IEF0IDIw
MjItMTItMDRUMTM6MzQ6NDMrMDEwMCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBP
biAxMi80LzIyIDEwOjA3LCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IFdpdGhvdXQg
ZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPj4+DQo+Pj4gSXNzdWU6
ICAgIC9wcm9jL3N5cy91c2VyIOKGkiBJPC9wcm9jL3N5cy91c2VyPg0KPj4+DQo+Pj4gIlRo
ZSAvcHJvYy9zeXMvdXNlciBkaXJlY3RvcnkiDQo+Pg0KPj4gVGhhdCBpcyBhIHN1YnNlY3Rp
b24sIHdoaWNoIGlzIG9mIGNvdXJzZSBib2xkIGJ5IGRlZmF1bHQuICBJbiB0aGUgU1MNCj4+
IHRpdGxlLCB0aGVyZSdzIHRleHQgdGhhdCB3b3VsZCBiZSBmb3JtYXR0ZWQgaWYgaXQgYXBw
ZWFyZWQgZWxzZXdoZXJlDQo+PiBpbiB0aGUgcGFnZSwgYnV0IHdlIGRvbid0IGZvcm1hdCBp
dCBpbiBTUyB0aXRsZXMgKEknbSBndWVzc2luZyBmb3INCj4+IGxhemluZXNzIG9mIHVzaW5n
IHRoZSBkcmVhZGVkIFxmIGVzY2FwZSkuICBXb3VsZCB5b3UgcmVjb21tZW5kIHVzaW5nDQo+
PiBpdD8gIEkgdHJpZWQgaXQsIGFuZCBpdCBzaG93cyBpbiBib2xkK2l0YWxpY3MsDQo+IA0K
PiBLbm93IGhvdyBJIGNhbiB0ZWxsIHlvdSdyZSB1c2luZyBncm9mZiBHaXQ/ICA7LSkNCg0K
SHVoLCBJJ20gZ3Vlc3NpbmcgKGEpIGFuIGJ1ZyB0aGF0IGhhcyBiZWVuIGZpeGVkIHJlY2Vu
dGx5PyAgT3IgbWF5YmUgKGIpIG5vYm9keSANCnRvb2sgdGhlIGNhcmUgdG8gbWFrZSBpdCBh
dmFpbGFibGUsIGFuZCBvbGQgaW1wbGVtZW50YXRpb25zIHNpbXBseSBjb25zaWRlcmVkIA0K
dGhhdCBhcyBhIGNvcm5lciBjYXNlIHRoYXQgbm9ib2R5IHNob3VsZCB3YW50PyAgOikNCg0K
KGFmdGVyIHJlYWRpbmc6KSBIbW0sIGxvb2tzIGxpa2UgYSBjb21iaW5hdGlvbiBvZiBib3Ro
Lg0KDQo+IA0KPj4gd2hpY2ggaXMgb2theSB0byBteSB0YXN0ZSwgYW5kIGFsc28gaW5jcmVh
c2VzIGNvbnNpc3RlbmN5IG9mDQo+PiBmb3JtYXR0aW5nLCBzbyBJJ20gZmluZSB3aXRoIGl0
Lg0KPiANCj4gWWVzLiAgVGhpcyBpcyBhbiBleGNlcHRpb24gdG8gbXkgZ2VuZXJhbCBwcm9z
Y3JpcHRpb24gcmVnYXJkaW5nIHVzZSBvZg0KPiBgXGZgIGluIG1hbiBwYWdlcy4gIEl0IGlz
IHJhcmUgdGhhdCBhIHR5cGVmYWNlIGNoYW5nZSBpcyByZXF1aXJlZCBpbiBhDQo+IChzdWIp
c2VjdGlvbiBoZWFkaW5nLCBidXQgd2hlbiBpdCBpcywgaXQgc2hvdWxkIG5vdCBiZSBvbWl0
dGVkIHRvIGtlZXANCj4gdGhlIGRvY3VtZW50IHNvdXJjZSB0aWR5Lg0KPiANCj4gU3RyYW5n
ZSBhcyBpdCBtYXkgc291bmQsIHRoaXMgaXNzdWUgaXMgaW50ZXJ0d2luZWQgd2l0aCBzb21l
IG9mIHRoZQ0KPiB0cmlja2llc3QgYW5kIG1vc3QgZnJ1c3RyYXRpbmcgZGVzaWduIGZlYXR1
cmVzIChvciBnYXBzKSBvZiAqcm9mZiwgZ29pbmcNCj4gYmFjayB0byBPc3Nhbm5hIHRyb2Zm
IGluIHRoZSBtaWQtMTk3MHMgYW5kIGFsbCB0aGUgd2F5IHVwIHRvIGZhbmN5IFBERg0KPiBm
ZWF0dXJlcyB0b2RheS4NCj4gDQo+IFNvIHNldHRsZSBpbiBmb3IgeWV0IGFub3RoZXIgZ2ln
YW50aWMgZW1haWwsIGFuZCBJJ2xsIHRlbGwgeW91IGEgc3RvcnkuDQoNClttYXhpbWl6ZXMg
d2luZG93OyBpbmNyZWFzZXMgZm9udCBzaXplOyBzaXRzIGJhY2sgaW4gYSBtb3JlIHJlbGF4
ZWQgcG9zaXRpb24uLi5dDQoNCj4gDQo+IDEuICBncm9mZiAxLjIyLjQgYW5kIGVhcmxpZXIg
d2lsbCBfbm90XyBzaG93IGJvbGQtaXRhbGljcy4gIEkgdGF1Z2h0DQo+ICAgICAgZ3JvZmYg
R2l0IHRvIGRvIHRoaXMgYmVjYXVzZSB0aGUgbG9zcyBvZiBzdHJva2Ugd2VpZ2h0IHdoZW4N
Cj4gICAgICByZW5kZXJpbmcgdG8gUG9zdFNjcmlwdCBhbmQgUERGIHdhcyBpcnJpdGF0aW5n
Lg0KDQpbLi4uXQ0KDQo+IA0KPiA0LiAgVGhlIGFyZ3VtZW50ZnVsIHVzZSBvZiBgU0hgIGFu
ZCBgU1NgIGlzIG1vcmUgYW1lbmFibGUgdG8gZ3JlcHBpbmcuDQoNClN1cmUuDQoNCj4gDQo+
IDUuICBOb3QgYWxsIGlzIGpveSBhbmQgcm9zZXMuICBXaGVuIHlvdSBkbyB0aGluZ3MgbGlr
ZSBlbWJlZCBmb250DQo+ICAgICAgc2VsZWN0aW9uIGVzY2FwZSBzZXF1ZW5jZXMgaW4gYSBo
ZWFkaW5nLCBpbnRlcm5hbGx5IGdyb2ZmIGNyZWF0ZXMNCj4gICAgICBkYXRhIHN0cnVjdHVy
ZXMgY2FsbGVkICJub2RlcyIgdGhhdCBhcmUgbm90IHN0cmFpZ2h0Zm9yd2FyZGx5DQo+ICAg
ICAgZW5jb2RhYmxlIGluIHRoZSBkZXZpY2UgY29udHJvbCBlc2NhcGUgc2VxdWVuY2VzIHRo
YXQgYXJlIHVzZWQgdG8NCj4gICAgICBlbWJlZCAiUERGTWFyayIgZGF0YSBpbiB0aGUgZm9y
bWF0dGVkIGRvY3VtZW50LiAgSW4gdGhlIHBhc3QgdGhpcw0KPiAgICAgIGhhcyBsZWQgdG8g
d2hhdCBJIG5vbWluYXRlIGFzIGdyb2ZmJ3MgbW9zdCBob3JyaWJseSBpbnNjcnV0YWJsZQ0K
PiAgICAgIGRpYWdub3N0aWMgbWVzc2FnZS4NCg0KRG9lcyBpdCB0cnVuY2F0ZSBleHBlY3Rh
dGlvbnMgdG8gaGF2ZSBzaW5nbGUtdm9sdW1lIExpbnV4IG1hbi1wYWdlcyBpZiBJIHVzZSBc
Zj8NCg0KPiANCj4gICAgICAgIGNhbid0IHRyYW5zcGFyZW50bHkgb3V0cHV0IG5vZGUgYXQg
dG9wIGxldmVsDQo+IA0KPiAgICAgU28sIGxvbmcgc3Rvcnkgc2hvcnQgKHRvbyBsYXRlKSB3
aGF0IHdlIG5lZWQgaW4gZ3JvZmYgaXMgYSBiZXR0ZXINCj4gICAgIG1ldGhvZCBvZiAic2Fu
aXRpemluZyIgbm9kZSBsaXN0cywgc28gd2UgY2FuIHN0cmlwIHRoZW0gb2YgZXZlcnl0aGlu
Zw0KPiAgICAgYnV0IF9lbmNvZGVkIGNoYXJhY3RlcnNfIHN1aXRhYmxlIGZvciBoYW5kb2Zm
IHRvIGFuIG91dHB1dCBkZXZpY2UuDQo+ICAgICBncm9mZiBfYWxyZWFkeV8gaGFzIHR3byBy
ZXF1ZXN0cyBmb3IgdGhpcyBzb3J0IG9mIHRoaW5nLCBgdW5mb3JtYXRgDQo+ICAgICBhbmQg
YGFzY2lpZnlgLCBidXQgbXkgY3VycmVudCBhc3Nlc3NtZW50IGlzIHVuZm9ydHVuYXRlbHkg
dGhleSBkb24ndA0KPiAgICAgZG8gcHJlY2lzZWx5IHdoYXQgaXMgbmVlZGVkLg0KPiANCj4g
ICAgIFRoaXMgaW5jbHVkZXMgdGhlIHByb2JsZW0gb2YgZW1iZWRkaW5nIG5vbi1BU0NJSSBj
aGFyYWN0ZXJzIHRoYXQNCj4gICAgIGFwcGVhciBpbiAoc3ViKXNlY3Rpb24gaGVhZGluZ3Mu
ICBSaWdodCBub3cgdGhpcyBpcyBzaW1wbHkgbm90DQo+ICAgICBleHBlY3RlZCB0byB3b3Jr
LCB3aXRoIGEgc2ltaWxhciBkaWFnbm9zdGljIG1lc3NhZ2UuICBJIGhhdmVuJ3QgeWV0DQo+
ICAgICBmdWxseSBzb3J0ZWQgdGhlIGlzc3VlIG91dCAoUERGIGV4cGVydHMga25vdyB0aGlz
IHN0dWZmIGJldHRlciB0aGFuIEkNCj4gICAgIGRvKSwgYnV0IEkgdGhpbmsgaXQgaGFzIHRv
IGRvIHdpdGggbm9uLUFTQ0lJIGNoYXJhY3RlcnMgcmVxdWlyaW5nDQo+ICAgICBVVEYtMTYg
ZW5jb2RpbmcuICBncm9mZiBzaW1wbHkgZG9lc24ndCBrbm93IHRvIHByb2R1Y2UgVVRGLTE2
LWVuY29kZWQNCj4gICAgIGNoYXJhY3RlcnMuDQo+IA0KPiAgICAgTWF5YmUgd2UnbGwgZ2V0
IHRoYXQgc29ydGVkIG91dCBpbiBhIGNsZWFuIHdheSBmb3IgZ3JvZmYgMS4yNC4NCj4gDQo+
ICAgICBodHRwczovL3NhdmFubmFoLmdudS5vcmcvYnVncy9pbmRleC5waHA/NjMwNzQNCj4g
DQo+ICAgICBJbiB0aGUgbWVhbnRpbWUsIEkgaGF2ZSBzdGlmbGVkIHRoZXNlIHdhcm5pbmdz
LiAgQW55b25lIHdhbnRpbmcgdG8NCj4gICAgIHNlZSB0aGVtIGNhbiB0dXJuIHRoZW0gYmFj
ayBvbiB3aXRoIGFuIGVudmlyb25tZW50IHZhcmlhYmxlLA0KPiAgICAgR1JPRkZfRU5BQkxF
X1RSQU5TUEFSRU5DWV9XQVJOSU5HUy4gIFRoaXMgdmFyaWFibGUgaXMgdW5kb2N1bWVudGVk
DQo+ICAgICBiZWNhdXNlIEkgaG9wZSBpdCB3b24ndCBsaXZlIGxvbmcsIGFuZCBJIGZlZWwg
cHJldHR5IGNvbmZpZGVudCB0aGF0DQo+ICAgICB0aGUgb25seSBwZW9wbGUgd2hvIHdhbnQg
dG8gc2VlIG9yIGNhbiBkbyBhbnl0aGluZyBhYm91dCBzdWNoDQo+ICAgICB3YXJuaW5ncyBh
cmUgZGV2ZWxvcGVycyBvZiBncm9mZiBpdHNlbGYsIG9yIG9mIG1hY3JvIHBhY2thZ2VzLg0K
PiANCj4gNi4gVGhlIHByb2JsZW1zIGRpc2N1c3NlZCBpbiBwb2ludCAjNSB3b3VsZCBzdGls
bCBhZmZsaWN0IHVzIGV2ZW4gaWYgd2UNCj4gICAgIGNvbnRpbnVlZCB0byB1c2UgaW5wdXQg
dHJhcHMgZm9yIGBTSGAgYW5kIGBTU2AsIHNvIHJldGFpbmluZyB0aGF0DQo+ICAgICBwb2lu
dCBvZiBjb21wYXRpYmlsaXR5IHdvdWxkIHNlZW0gdG8gYnV5IHVzIGxpdHRsZS4NCj4gDQo+
IFNvLCBnbyBmb3J0aCB3aXRoDQo+IA0KPiAgICAuU1MgIlRoZSBcZltJXS9wcm9jL3N5cy91
c2VyXGZbXSBkaXJlY3RvcnkiDQo+IA0KPiBvcg0KPiANCj4gICAgLlNTICJUaGUgXGZJL3By
b2Mvc3lzL3VzZXJcZlAgZGlyZWN0b3J5Ig0KPiANCj4gaWYgeW91IHdhbnQgb2xkICpyb2Zm
IGNvbXBhdGliaWxpdHksIGFuZCBiZSBtZXJyeS4NCg0KSSdsbCBwaWNrIHRoZSBtZXJyeTsg
SSBkaWQgZW5vdWdoIHJhZGljYWwgc3R1ZmYgcmVjZW50bHksIGFuZCBuZWVkIHRvIGJhbGFu
Y2UgDQp0aGUga2FybWEuICA7KS4NCg0KQlRXLCBJJ20gcmVjb25zaWRlcmluZyBhZ2FpbiBy
ZWxlYXNpbmcuICBUaGUgcmV3cml0dGVuIHN0cmNweSgzKSBwYWdlIGlzIHNvb28gDQpuZWNl
c3NhcnkhICBTaGlwcGluZyBpdCBpbiBCb29rd29ybSB3b3VsZCBiZSBhIG5pY2UgZHJlYW0u
ICBBZnRlciBzb21lIA0KZGlzY3Vzc2lvbiB3aXRoIE1hcnRpbiBTZWJvciwgSSB0aGluayBJ
IG5lZWQgdG8gcmV3cml0ZSBzdHJsZW4oMykgdG9vLCBjb3ZlcmluZyANCnN0cm5sZW4oMykg
aW4gdGhlIHNhbWUgcGFnZS4NCg0KSSdsbCBpbnZpdGUgRG91ZyB0byBoYXZlIHNvbWUgcmV2
aWV3LiAgSSdtIGN1cmlvdXMgYWJvdXQgaGlzIG9waW5pb24uICBIZSANCnByb2JhYmx5IGhh
cyBzb21lIGluc2lnaHQgb2YgdGhlIGRlc2lnbiBvZiBzb21lIG9mIHRob3NlIGZ1bmN0aW9u
cyB0aGF0IHdlIGRvbid0Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gUmVnYXJkcywN
Cj4gQnJhbmRlbg0KPiANCj4gWzFdIGh0dHBzOi8vbGlzdHMuZ251Lm9yZy9hcmNoaXZlL2h0
bWwvZ3JvZmYvMjAyMi0wNi9tc2cwMDAyMC5odG1sDQo+IFsyXSBodHRwczovL2xpc3RzLmdu
dS5vcmcvYXJjaGl2ZS9odG1sL2dyb2ZmLzIwMjItMDcvbXNnMDAwMDIuaHRtbA0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------32ODY5aEyLjUFfgEu30o25yG--

--------------NYrVLuk7GwfgayLU0Ly6DWES
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOY4i8ACgkQnowa+77/
2zIKrxAAkcOa8xzMPnI8qMnFbacjiToAreSZAb7JKOyAglndbK6V2hUduPf4pe6t
5H4jie7KOXKPzWuFFBYZkmD6V8KaC8aqEnhikuSlnuVnrCGIqOjBxa8pwh+PqgMM
C3iv/2Lg+kF8UXd1YRo92WgodX//gjYo60IOgizemsgMacnpKDhC/xbKpSvqtH8i
Q6moiDlMVI/GwPe2aOrSyUfl0i6xPi/BGJAGBHzsrVPtCdzChKdokfunxpo38Jaj
Zk9RWyd5do8/IpJ0evO5nzdwk/Z4Ba6L1QtFVQNBp85UYTMr6lmi60wDxh2yoomo
7r/8IrJNkKZ5OOZfb8gaxopwy1vR4TaoKFfqqvT8u2PHszBGFbDfubdI9t9UqF0Y
lhxSlp5Mx6pynd7IZLVIhOMmME/1cZPCpUb/v96Gx2QZthgepTxkKKbTWwgR/Vgs
PtBqXabmkGAEjzee0Gotr38rDXIew6yol8CZsidPuOIR4zbY5wVtQxJ4NZsgl6De
NeW3mM9ajqP3F5OurGVT/3ByvJQnpkd0DN7m0xsWOdbCfmpuzWH2qfQDyEkdXsAf
QxvxMFtYLxSMUcw6dA6Q9mBCPwQ0Mf0oQEhst+yhYj9M7mGpF0I0oAVhs8AlBThX
bb4B7/I8hRPlftQokajwNimdNE3YiB944Vwf5yRzkr3S28d6Bzo=
=hOqP
-----END PGP SIGNATURE-----

--------------NYrVLuk7GwfgayLU0Ly6DWES--
