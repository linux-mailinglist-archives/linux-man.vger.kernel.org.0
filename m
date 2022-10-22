Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0791260903E
	for <lists+linux-man@lfdr.de>; Sun, 23 Oct 2022 00:12:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229853AbiJVWMf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Oct 2022 18:12:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiJVWMe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Oct 2022 18:12:34 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E45A3786D6
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 15:12:32 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id k8so1369449wrh.1
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 15:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uz1m3ZsxJ4dzJsQJ3wm7l6nEdhmIPrsX9DrkKjNiWbU=;
        b=KpmoL6EFU5EkZa+6RP4INhlVqvlRFyIPmBELbi3PyrF5EsvsyFKI98rSG06lD4X3xc
         SHxWoh3XojRkA77xGwQBnQqCnWXUXXYCfo3xnHe3bCQsmxDsI4FBJqVnqDflZ9jFxtQ2
         EmJNOqHJ90PaPFqbxWDh2LI4fnx0V5MQSZBwdnD8A2aqUAWGUrpH8JV/B9RSX06LbKIR
         QZLO71nax6/Hcyt1F4ZSzlJj8PkwInJKsitAqsp8CxFyNZchtkOeTBNXpLwvYu2Mpcno
         AECzS3BsbdS7lL+gudAHjWeX6/PZHi0LvtHt/VINccoC517RX5VSWA9gmCjzEZNUhWVg
         hlUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Uz1m3ZsxJ4dzJsQJ3wm7l6nEdhmIPrsX9DrkKjNiWbU=;
        b=3XorGcXEgM2FqPC3JiHfQrpv0lMJCrvhUjiLkJ/7240W620T/Hh2Nsoe3OnqHYYFtv
         9qigPjDLMpDKgM0gzQHX2b4esrvaKjI10ey9oA5OBZrEd63Fm6BAdwQJmEDVnG/V6Iy/
         pg+xcfIXxhGYxvQJg5WeI7XEigY3IXlgV1f07YGHGFgk23wxLWThEdhUrLDTcRO6yqKu
         Zpb4Ura7PVIT7e5xj8KTByYlh1eipZZ3pFN6+fhmUfo8FNEUPlsPxMmWpRwOzje071x5
         PsZXvrC0vfVskVaBvP/z6w1ye7FwbLf6U15O5z52paChF0SAD4m7fHfMIuTuwJmglsip
         B2Dw==
X-Gm-Message-State: ACrzQf2uoeCZLklRkf4oNVWZagzSKBLhHusD8A4Nbqml23fE5rhkBk1j
        L17rVVZuujus6cLPx2JWsEJckC4pzMg=
X-Google-Smtp-Source: AMsMyM69SskpYXYuPHppAjOsbhABfwK4puxcKGJzKtxlvNdc/1WoBCeDAco6KSZPEvAH+CCdDjZkyg==
X-Received: by 2002:adf:f58b:0:b0:22e:3c4:cf83 with SMTP id f11-20020adff58b000000b0022e03c4cf83mr17127230wro.379.1666476751464;
        Sat, 22 Oct 2022 15:12:31 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x5-20020a5d6505000000b0023655e51c33sm2531485wru.4.2022.10.22.15.12.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 15:12:31 -0700 (PDT)
Message-ID: <ac0d2675-828b-6cb7-5a03-352eda0aa81b@gmail.com>
Date:   Sun, 23 Oct 2022 00:12:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: bulleted list conventions
Content-Language: en-US
To:     linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
References: <Y1Q2wbahzVSvLPyw@vapier> <Y1Q6C/tCSfbrUxdG@vapier>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y1Q6C/tCSfbrUxdG@vapier>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------naEqes1PR0YeILwfdB2nzYqR"
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
--------------naEqes1PR0YeILwfdB2nzYqR
Content-Type: multipart/mixed; boundary="------------32g0hN1vT7FudA7b0ZfWbMFE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
Message-ID: <ac0d2675-828b-6cb7-5a03-352eda0aa81b@gmail.com>
Subject: Re: bulleted list conventions
References: <Y1Q2wbahzVSvLPyw@vapier> <Y1Q6C/tCSfbrUxdG@vapier>
In-Reply-To: <Y1Q6C/tCSfbrUxdG@vapier>

--------------32g0hN1vT7FudA7b0ZfWbMFE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlrZSENCg0KT24gMTAvMjIvMjIgMjA6NDQsIE1pa2UgRnJ5c2luZ2VyIHdyb3RlOg0K
PiBPbiAyMyBPY3QgMjAyMiAwMDoxNSwgTWlrZSBGcnlzaW5nZXIgd3JvdGU6DQo+PiBtYW4t
cGFnZXMoNykgaXMgc2lsZW50IG9uIGhvdyB0byBoYW5kbGVkIGxpc3RzLiAgdGhlIG9ubHkg
cmVmZXJlbmNlIGkgY2FuIHNlZQ0KPj4gaXMgaW4gYW4gYXNpZGUgaW4gYW4gdW5yZWxhdGVk
IHNlY3Rpb246DQo+PiAgICAgICAgIFdoZW4gZW51bWVyYXRpbmcgYSBsaXN0IG9mIGVycm9y
IGNvZGVzLCB0aGUgY29kZXMgYXJlIGluIGJvbGQNCj4+ICAgICAgICAgKHRoaXMgbGlzdCB1
c3VhbGx5IHVzZXMgdGhlIC5UUCBtYWNybykuDQo+Pg0KPj4gZ2xhbmNpbmcgdGhyb3VnaCBl
eGlzdGluZyBtYW4gcGFnZXMsIGl0IHNlZW1zIHRoYXQgYC5JUGAgaXMgdGhlIGFuc3dlci4g
IGJ1dA0KPj4gYmV5b25kIHRoYXQsIHdlIG9ubHkgaGF2ZSBjaGFvcy4gIGNhbiB3ZSBwaWNr
ICYgZG9jdW1lbnQgYSBzdGFuZGFyZCBoZXJlID8NCj4+DQo+PiBmb3IgbnVtYmVyZWQgbGlz
dHMsIHRoZSB0YWdzIGFyZSBtYW51YWxseSBtYWludGFpbmVkLCBidXQgdXNlIGEgZmV3IGRp
ZmYNCj4+IHN0eWxlcyBsaWtlOg0KPj4gCS5JUCAxDQo+PiAJLklQIDEuDQo+PiAJLklQIDEp
DQo+PiAJLklQICgxKQ0KPj4gCS5JUCBbMV0NCj4+IAkuSVAgMToNCj4+DQo+PiB0aGVyZSdz
IGFsc28gYWx0ZXJuYXRpdmUgbGlzdHMgdGhhdCB1c2UgYSBmZXcgZGlmZiBzdHlsZXM6DQo+
PiAJLklQIGEpDQo+PiAJLklQIChhKQ0KPj4NCj4+IGZvciB1bm9yZGVyZWQgbGlzdHMsIHRo
ZXJlJ3MgYSBjb3VwbGUgb2YgZGlmZiBidWxsZXQgcG9pbnQgc3R5bGVzOg0KPj4gCSoNCj4+
IAlcKGJ1DQo+PiAJXC0NCj4+IAlvDQo+PiAJKw0KPj4gdGhlICogZm9ybSBzZWVtcyB0byBi
ZSB0aGUgbW9zdCBkb21pbmF0ZSwgYnV0IFwoYnUgc2hvd3MgdXAgYSBnb29kIGFtb3VudC4N
Cj4+ICogaXMgYSBiaXQgZWFzaWVyIHRvIHR5cGUsIGJ1dCBcKGJ1IHJlbmRlcnMgIm1vcmUg
Y29ycmVjdGx5IiA/ICAqc2hydWcqDQo+Pg0KPj4gZmluYWxseSB0aGVyZSdzIHRoZSBtYXR0
ZXIgb2YgaW5kZW50YXRpb24gbGV2ZWwuICAzIHNlZW1zIHRvIGJlIHRoZSBtb3N0DQo+PiBj
b21tb24sIGJ1dCB0aGVyZSdzIGEgaGVhbHRoeSBhbW91bnQgb2YgMiBpbiB0aGVyZSB0b28u
DQo+PiAJLklQICogMw0KPj4gCS5JUCAqIDINCg0KWWVhaCwgdGhpcyBoYXMgYmVlbiBvbmUg
b2YgdGhlIGdyZWF0ZXN0IGluY29uc2lzdGVuY2llcyBvZiB0aGUgbWFuLXBhZ2VzOyBzbyAN
Cm11Y2ggdGhhdCBJIGhhdmVuJ3QgeWV0IGRhcmVkIHRvIHRyeSBhbiBmaXggaXQuICBCdXQg
SSdkIGxpa2UgdG8gc2VlIGl0IGZpeGVkIA0Kc29tZSBkYXkuDQoNCj4gDQo+IGhtbSwgaXQg
bG9va3MgbGlrZSBncm9mZiBhbHJlZHkgZG9jdW1lbnRzIHRoZSBhbnN3ZXIuDQo+IGh0dHBz
Oi8vbWFuNy5vcmcvbGludXgvbWFuLXBhZ2VzL21hbjcvZ3JvZmZfbWFuX3N0eWxlLjcuaHRt
bA0KPj4gVHdvIGNvbnZlbmllbnQgdXNlcyBmb3IgLklQIGFyZQ0KPj4gICAoMikgdG8gc2V0
IGEgcGFyYWdyYXBoIHdpdGggYSBzaG9ydCB0YWcgdGhhdCBpcyBub3QNCj4+ICAgICAgIHNl
bWFudGljYWxseSBpbXBvcnRhbnQsIHN1Y2ggYXMgYSBidWxsZXQNCj4+ICAgICAgICjigKIp
4oCUb2J0YWluZWQgd2l0aCB0aGUgXChidSBzcGVjaWFsIGNoYXJhY3Rlcg0KPj4gICAgICAg
ZXNjYXBlIHNlcXVlbmNl4oCUb3IgbGlzdCBlbnVtZXJhdG9yLCBhcyBzZWVuIGluDQo+PiAg
ICAgICB0aGlzIHZlcnkgcGFyYWdyYXBoLg0KDQpIbW0sIEkgd2FzIGdvaW5nIHRvIHN1Z2dl
c3QgZXhhY3RseSB0aGlzLCB3aXRob3V0IGtub3dpbmcgZ3JvZmYgc3VnZ2VzdGVkIGl0IDop
DQoNCkkgbGlrZSBpdCBiZWNhdXNlIGl0IHVzZXMgYSBzeW1ib2wgdGhhdCdzIG5vcm1hbGx5
IG5vdCB1c2VkIGluIGNvZGUsIHNvIGl0IGNhbid0IA0KYmUgY29uZnVzZWQsIGFuZCBhbHNv
IHRoZSAzLXNwYWNlIGluZGVudCBhcyBpdCBjbGVhcmx5IHNlcGFyYXRlcyB0aGUgYnVsbGV0
IGZyb20gDQp0aGUgcGFyYWdyYXBoIHRleHQsIHdoaWxlIHN0aWxsIGJlaW5nIG1pbmltYWwu
DQoNCj4gDQo+IHNpbmNlIG1hbi1wYWdlcyg3KSBtYWtlcyBubyByZWZlcmVuY2UgdG8gZ3Jv
ZmZfbWFuX3N0eWxlKDcpLCBhbmQgb25seSBhIHNpbmdsZQ0KPiByZWZlcmVuY2UgdG8gZ3Jv
ZmZfbWFuKDcpIGZvciBzeW50YXggb24gYSBzcGVjaWZpYyBtYWNybywgY2FuIHdlIGRvY3Vt
ZW50IHRoaXMNCj4gaW4gdGhlIG1hbi1wYWdlcyg3KSBwYWdlIGV4cGxpY2l0bHkgPw0KDQpT
dXJlLCB3b3VsZCB5b3UgbWluZCBzdWdnZXN0aW5nIGEgcGF0Y2g/DQoNCg0KPiAqIHVzZSAu
SVANCj4gKiB1c2UgKDEpIGFuZCAoYSkgc3R5bGUNCg0KV2UgZGlzY3Vzc2VkIGFib3V0IHRo
aXMgaW4gdGhlIG1haWxpbmcgbGlzdCBzb21lIHRpbWUgYWdvLiAgV2UgY29uY2x1ZGVkIHRo
YXQgDQp0aGVyZSBzaG91bGQgYmUgMyBkaWZmZXJlbnQgdHlwZXMgb2YgbGlzdHM6DQoNCi0g
IE9yZGVyZWQgbGlzdHMuICBUaGV5IHJlcHJlc2VudCBvcmRlcmVkIHN0ZXBzLCBhbmQgdXNl
IG51bWJlcnMuDQotICBBbHRlcm5hdGl2ZXMuICBUaGV5IHJlcHJlc2VudCBleGNsdXNpdmUg
YWx0ZXJuYXRpdmVzLCBhbmQgdXNlIGxldHRlcnMuDQotICBCdWxsZXQgbGlzdHMuICBMaXN0
cyB0aGF0IGRvbid0IGZhbGwgaW4gdGhlIHByZXZpb3VzIG9uZXM7IHVzZSBhIGJ1bGxldC4N
Cg0KPiAqIHVzZSBcKGJ1IGZvciBidWxsZXQgbGlzdHMNCj4gKiB1c2UgaW5kZW50IG9mIDMN
Cg0KTEdUTS4NCg0KPiAqIChhcyBhIHRpcCkgdXNlIC5SUyAmIC5SRSBmb3IgaW5kZW50ZWQg
bGlzdHMNCg0KUlMvUkUgYXJlIGZvciBpbmRlbnRlZCBzdHVmZiwgYmUgaXQgYSBsaXN0IG9y
IG5vdC4gIEknbSBub3Qgc3VyZSBpZiBpdCdzIA0KbmVjZXNzYXJ5IHRvIGFkZCBpdCBleHBs
aWNpdGx5LiAgQnV0IGlmIHlvdSB0aGluayBpdCBpcywgaXQgY291bGQgbWFrZSBzZW5zZS4N
Cg0KPiAtbWlrZQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KUC5TLjogUGxlYXNlIGVtYWlsIG1l
IHRvbyA6KQ0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------32g0hN1vT7FudA7b0ZfWbMFE--

--------------naEqes1PR0YeILwfdB2nzYqR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNUarUACgkQnowa+77/
2zL2uA/+OYpGCCzaCvxq2hGA9iVMk2p7XjJiSlZTH4XpfOMUScDRJs63m6QaOucv
Dy0EFLkmf2xc9gJBfg8Mgs2Fb7z+EQGO9EpZz07JupcoNYcXiplX3OyfRQpwwhSJ
xMqSmc61ghGx3ZeM3/N/sDwXSn+ihwhIYDBqSR0W/It/qY0o4JiS/Y+WLtbjtS2C
MJY7dES9ABxHBew9DL+u9ly8UKD/S2GKEj5avEO8XFrBK7AWf6oQ14aHPt2LIGXG
Hrv2RUkAJwNf0M8XdHkc1Mf3RBhovj3VqjIgY1M5IWCf1c/Cw3Yc3tfRYyIa6SUz
9oM/Fl71wHMCAy0Ng73RiIXebum9mINXhDkCFpl9GyczN5Xi31UL5JGiu7DhtpeA
pzLqdK2Q57KBgFjvU4tC3S/rbt+awG7OdZ+LHkqPNlftYu7gc5H590kIznutyPMd
iGYKo3ILHzYgQ5Om5oVb4q0hMlzHQZwU4S/VKdG8XWPnNdX+SxXU/q0IviBMXEhI
kRAqM6AAUho5Mc+V8sVZsvAb3Aeml4RryZba8DrS2f7XJfCMZq86t/k40Kkxx9NK
Ode3tcB9fgKgns8RYrxXYXvv3oBRK1L+ckpwPQuZZww9dcNSQaiUAA5OecAEM2TZ
UAa8tU7OdYqw/TmF/XM86yC0oMeISmorApc977c/M2m8AvJfHdc=
=a7qp
-----END PGP SIGNATURE-----

--------------naEqes1PR0YeILwfdB2nzYqR--
