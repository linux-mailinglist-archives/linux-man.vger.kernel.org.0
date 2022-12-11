Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A6D064955D
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 18:31:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbiLKRa7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 12:30:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiLKRa6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 12:30:58 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14A78D2C5
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:30:56 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so3285383wms.2
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SRrR47TQcGyovA2s5WDnZvOaoQi5hFc1W5kI6J/IWNg=;
        b=PA+KNp7m4LBQlr0eV7iP6D67lw0qUN53pYdpnURryGIl7Cz98+x1iUzFT020zgaYmB
         CPM/vwLPBx5/263F6rn/EFBAPr3mgbb8PoLVB0Jh3N9MUOfo7DPZInATFQsIIREkoPL9
         yYKUXz8nlbs2xClP2xRLvsm499+Mes4fKMzM+EXL3hgGw0bsPPV62uhGA/C3B3se8DPQ
         CH97BzY74Gl+IdNznPKJydljZTgKVYU9cdr1iGFWBf1zUqg5jF58uJiX9z6snwU6POJa
         xRQp2D28Smy+689j1Kbf9rGzIF6kGsgbUyG7CasWwQ637tlUaq0LMLuwIBaPb9cGUODw
         eJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SRrR47TQcGyovA2s5WDnZvOaoQi5hFc1W5kI6J/IWNg=;
        b=HH9zllI50CO3LwhjVLZX6rY9+SObP7H+i4+v8HIb7/2qbGcfCq8MzvcnaHnX7UfQre
         djz98/VKg+omTQ2Gyw+9ldtHhO3vmUZr6CqdyCWLIsaXkoajSmZiFzq80Y6cjccH4UXT
         hbTb07seo4JheuWom7HR5dkNjISgyKvBtw+ukviW0wisclHPlQaMEpatq6aBxC3gJlRf
         LjB+sm2cNvBRHGHGWsgsvksWRmT9DstgFjxpR6ZEpCYSHcbyRuEJCi27zbSShvP/Y8N2
         Bf2qY257zhA1Ty4pFeOWxPIroFazecFV3otb4Gnn95JsKncYLQ8ccaD3RgGfhPoVqVH+
         QA7A==
X-Gm-Message-State: ANoB5pk74YlO8i2HVLKoIh6D3e8wb/jg20/As+vhHc5H69np0TwDzrwj
        1vwGsMZMJN8VJObeO+pZfpU=
X-Google-Smtp-Source: AA0mqf7EcA84IQgd4ySY+HQRL84K+EpWsdWphJMcskOogGpFG86xr34aFjXmzLAQG/Zln1UZOnxZHw==
X-Received: by 2002:a05:600c:6549:b0:3cf:8b22:76b3 with SMTP id dn9-20020a05600c654900b003cf8b2276b3mr10403456wmb.0.1670779854552;
        Sun, 11 Dec 2022 09:30:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f10-20020a7bcd0a000000b003d01b84e9b2sm6308356wmj.27.2022.12.11.09.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 09:30:54 -0800 (PST)
Message-ID: <0fa096a6-184b-38b2-6e75-d17ab5bff7a0@gmail.com>
Date:   Sun, 11 Dec 2022 18:30:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: proc map_files entries require CAP_CHECKPOINT_RESTORE in init ns,
 not current
Content-Language: en-US
To:     Younes Manton <younes.m@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Adrian Reber <areber@redhat.com>, imachug@yandex.ru
References: <CAMVNhxTgTFTyqskFoqV1=yUQZRsfd4=rVy-HjkkZjTMhfGDQsw@mail.gmail.com>
 <691ce8fe-b141-6b62-27c9-81fb24ad1819@gmail.com>
 <CAMVNhxTOJ5QO1_UFxki72==zYYUVZpe+pXZBOodmisLwZNJFBA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAMVNhxTOJ5QO1_UFxki72==zYYUVZpe+pXZBOodmisLwZNJFBA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------i0aRcZYRy5ykm5DI1OhoDwg5"
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------i0aRcZYRy5ykm5DI1OhoDwg5
Content-Type: multipart/mixed; boundary="------------SjcCQo7Y0gjQ6JVgOwb7vZ4F";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Younes Manton <younes.m@gmail.com>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org,
 Adrian Reber <areber@redhat.com>, imachug@yandex.ru
Message-ID: <0fa096a6-184b-38b2-6e75-d17ab5bff7a0@gmail.com>
Subject: Re: proc map_files entries require CAP_CHECKPOINT_RESTORE in init ns,
 not current
References: <CAMVNhxTgTFTyqskFoqV1=yUQZRsfd4=rVy-HjkkZjTMhfGDQsw@mail.gmail.com>
 <691ce8fe-b141-6b62-27c9-81fb24ad1819@gmail.com>
 <CAMVNhxTOJ5QO1_UFxki72==zYYUVZpe+pXZBOodmisLwZNJFBA@mail.gmail.com>
In-Reply-To: <CAMVNhxTOJ5QO1_UFxki72==zYYUVZpe+pXZBOodmisLwZNJFBA@mail.gmail.com>

--------------SjcCQo7Y0gjQ6JVgOwb7vZ4F
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWW91bmVzLA0KDQpTb3JyeSBmb3IgdGhlIGRlbGF5IGluIHJlcGx5aW5nIQ0KDQpPbiAx
MS8zLzIyIDE1OjExLCBZb3VuZXMgTWFudG9uIHdyb3RlOg0KPiBPbiBUdWUsIE5vdiAxLCAy
MDIyIGF0IDEyOjUyIFBNIEFsZWphbmRybyBDb2xvbWFyDQo+IDxhbHgubWFucGFnZXNAZ21h
aWwuY29tPiB3cm90ZToNCj4+DQo+PiBIaSBZb3VuZXMsDQo+Pg0KPj4gT24gMTEvMS8yMiAx
Nzo0OSwgWW91bmVzIE1hbnRvbiB3cm90ZToNCj4+PiBIaSwNCj4+Pg0KPj4+IGltYWNodWdA
eWFuZGV4LnJ1IHRlc3RpbmcgQ1JJVSBub3RpY2VkIHRoYXQgdGhlIGRvY3VtZW50YXRpb24g
Zm9yDQo+Pj4gcHJvYydzIG1hcF9maWxlcyBkaXJlY3Rvcnkgd2l0aCByZXNwZWN0IHRvIENB
UF9DSEVDS1BPSU5UX1JFU1RPUkUgYW5kDQo+Pj4gbmFtZXNwYWNlcyBhcHBlYXJzIHRvIGJl
IHdyb25nLiBUaGUgdGV4dCByZWFkczoNCj4+Pg0KPj4+PiBzaW5jZSBMaW51eCA1LjksIHRo
ZSByZWFkaW5nIHByb2Nlc3MgbXVzdCBoYXZlDQo+Pj4+IGVpdGhlciBDQVBfU1lTX0FETUlO
IG9yIENBUF9DSEVDS1BPSU5UX1JFU1RPUkUgaW4gdGhlIHVzZXINCj4+Pj4gbmFtZXNwYWNl
IHdoZXJlIGl0IHJlc2lkZXMuDQo+Pj4NCj4+PiBUaGUgcmVwb3J0ZXIgbm90ZWQgdGhhdCB0
aGUgdXNlciBhY3R1YWxseSBuZWVkcyB0aGUgY2FwYWJpbGl0aWVzIGluDQo+Pj4gdGhlIGlu
aXRpYWwgdXNlciBuYW1lc3BhY2UsIG5vdCBpbiB0aGUgbmFtZXNwYWNlIHRoZSBwcm9jZXNz
IHJlc2lkZXMNCj4+PiBpbi4gQXMgZmFyIGFzIEkgY2FuIHRlbGwgdGhpcyBhcHBlYXJzIHRv
IGJlIHRoZSBjYXNlLg0KPj4+DQo+Pj4gVGhlIHRleHQgd2FzIGludHJvZHVjZWQgaW4gMTY3
Zjk0YjcwNzE0OGJjZDQ2ZmUzOWM3ZDRlYmZhZGE5ZWVkODhmNg0KPj4+IGFuZCByZWZlcnMg
dG8ga2VybmVsIGNvbW1pdCAxMjg4NmY4YWIxMGNlNmEwOWFmMWQ5MjUzNWQ0OWM4MWFhYTIx
NWE4Lg0KPj4+DQo+Pj4gVGhlIGNvZGUgYW5kIG1lc3NhZ2UgaW4gdGhlIGtlcm5lbCBjb21t
aXQgcmVmZXIgdG8gdGhlIGluaXRpYWwgdXNlciBuYW1lc3BhY2UuDQo+Pg0KPj4gQ291bGQg
eW91IHBsZWFzZSB3cml0ZSBhIHNtYWxsIHByb2dyYW0gYW5kIHNoZWxsIHNlc3Npb24gdGhh
dCBkZW1vbnN0cmF0ZXMNCj4+IGVpdGhlciBiZWhhdmlvcj8NCj4+DQo+Pg0KPj4gVGhhbmtz
LA0KPj4NCj4+IEFsZXgNCj4+DQo+PiAtLQ0KPj4gPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNv
bG9tYXIuZXMvPg0KPiANCj4gSGksIHNlZSBiZWxvdzoNCj4gDQo+ICQgdW5hbWUgLXINCj4g
NS4xNS4wLTUyLWdlbmVyaWMNCj4gDQo+ICQgLi90ZXN0LnNoDQo+ICsgbWFrZSBybWYNCj4g
Y2Mgcm1mLmMgLW8gcm1mDQo+ICsgc3VkbyBzZXRjYXAgY2FwX2NoZWNrcG9pbnRfcmVzdG9y
ZS1laXAgLi9ybWYNCj4gKyAuL3JtZg0KPiAxOTU4MjogPQ0KPiBDYW4ndCByZWFkIG1hcF9m
aWxlcy8gZW50cnk6IE9wZXJhdGlvbiBub3QgcGVybWl0dGVkDQo+ICsgc3VkbyBzZXRjYXAg
Y2FwX2NoZWNrcG9pbnRfcmVzdG9yZStlaXAgLi9ybWYNCj4gKyAuL3JtZg0KPiAxOTU4ODog
Y2FwX2NoZWNrcG9pbnRfcmVzdG9yZT1lcA0KPiArIHVuc2hhcmUgLS11c2VyIC4vcm1mDQo+
IDE5NTkxOiBjYXBfY2hlY2twb2ludF9yZXN0b3JlPWVwDQo+IENhbid0IHJlYWQgbWFwX2Zp
bGVzLyBlbnRyeTogT3BlcmF0aW9uIG5vdCBwZXJtaXR0ZWQNCj4gDQo+ICQgY2F0IHJtZi5j
DQo+ICNpbmNsdWRlIDxzdGRsaWIuaD4NCj4gI2luY2x1ZGUgPHN0ZGlvLmg+DQo+ICNpbmNs
dWRlIDxzdHJpbmcuaD4NCj4gI2luY2x1ZGUgPHN5cy90eXBlcy5oPg0KPiAjaW5jbHVkZSA8
ZGlyZW50Lmg+DQo+ICNpbmNsdWRlIDxzeXMvc3RhdC5oPg0KPiAjaW5jbHVkZSA8dW5pc3Rk
Lmg+DQo+IA0KPiBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpDQo+IHsNCj4gICAg
ICBESVIgKm1mZDsNCj4gICAgICBzdHJ1Y3QgZGlyZW50ICptZmU7DQo+ICAgICAgc3RydWN0
IHN0YXQgbWZzdGF0Ow0KPiAgICAgIGludCByZXQ7DQo+IA0KPiAgICAgIHN5c3RlbSgiZ2V0
cGNhcHMgJFBQSUQiKTsNCj4gDQo+ICAgICAgY2hkaXIoIi9wcm9jL3NlbGYvbWFwX2ZpbGVz
Iik7DQo+ICAgICAgbWZkID0gb3BlbmRpcigiLiIpOw0KPiAgICAgIGRvIHsNCj4gICAgICAg
ICAgbWZlID0gcmVhZGRpcihtZmQpOw0KPiAgICAgIH0gd2hpbGUgKCFzdHJjbXAobWZlLT5k
X25hbWUsICIuIikgfHwgIXN0cmNtcChtZmUtPmRfbmFtZSwgIi4uIikpOw0KPiAgICAgIGlm
IChyZXQgPSBzdGF0KG1mZS0+ZF9uYW1lLCAmbWZzdGF0KSkNCj4gICAgICAgICAgcGVycm9y
KCJDYW4ndCByZWFkIG1hcF9maWxlcy8gZW50cnkiKTsNCj4gICAgICBjbG9zZWRpcihtZmQp
Ow0KPiANCj4gICAgICByZXR1cm4gcmV0Ow0KPiB9DQoNClRoYW5rcyENCg0KV291bGQgeW91
IHBsZWFzZSBzZW5kIGEgcGF0Y2ggdG8gdGhlIG1hbnVhbCBwYWdlPyAgWW91IGNhbiBjaGVj
ayANCjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFu
LXBhZ2VzLmdpdC90cmVlL0NPTlRSSUJVVElORz4gDQpmb3IgZGV0YWlscyBvbiBob3cgdG8g
ZG8gdGhhdCwgb3IgYXNrIG1lIGZvciBoZWxwIGlmIHlvdSBuZWVkLg0KDQpJZGVhbGx5LCBh
bGwgb2YgdGhlIGRldGFpbHMgaW5jbHVkaW5nIHRoZSBleGFtcGxlIHByb2dyYW0gdGhhdCB5
b3UgYWxyZWFkeSANCnNoYXJlZCBzaG91bGQgZ28gaW50byB0aGUgY29tbWl0IG1lc3NhZ2Ug
KG9yIGF0IGxlYXN0IHRoZSBtb3N0IGJhc2ljIGRldGFpbHMgYW5kIA0KYSBsaW5rIHRvIHRo
ZSBtYWlsaW5nIGxpc3QgYXJjaGl2ZSBmb3IgbW9yZSkuDQoNCkNoZWVycywNCg0KQWxleA0K
DQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------SjcCQo7Y0gjQ6JVgOwb7vZ4F--

--------------i0aRcZYRy5ykm5DI1OhoDwg5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOWE80ACgkQnowa+77/
2zKkHBAAocIIy1dSMgKnL3gQQzbpKrij9U/3IrLY0egUq6/fqJaa5+EQzzxSqvxu
rOCwBP1IC+aQCiaEjYnZcrIBUlcAuZTsjT7twZZPjFrxP8mZCdRGDLu6UdpvZHkk
G1G86U86353TrztOR6kpW9oi3bhXfgJ6seCIEW9oS1b7xigG9BbWua65GQI22wf3
SO9NM7C/qddwBlubQR0d5FJevnDGFPEXBn9Pf6DjgmDNzJLZY+ONypMtC3hIgCNc
a4Jz4tD2Lt2iNd275k/UsBeWVWTNNiyFxraznauKK9lQ0h4Jtcojy8jbnCt2w9Uw
PvhnDWw82WKOEscoaj6CVJpVaiMjk//JBuoOabZ26fFny0FU4M2fa5/0sOsp4V/z
uwvqQO1bgfBboNYp1ZNvvSfAC4haoAL1/eoY3S7AMpvHhJOUZFguOSWkzCv3ZAwt
RYxjWkgRQxLFDtWtznZN2wbVO270tdP2/GAqBMv1pGa6YVVQhuybEP6w6AYLeW2N
cBpdNyjFUk6OISKh8FFajfn5mVBoFl9lGazolNQtDeJiph44FPhRN+NWY52WGIpF
4lKRXnsGDVPchmPOcO82bO1yGHzF/ZhvqzfTJLOmlbIixurf1BPIO/B0wvCvMqv4
ByKkbQ8Cr5CIvdvdYNuKO2/MXbVX5psWORJ1z/Z1b2A/xt39/KQ=
=2Ieu
-----END PGP SIGNATURE-----

--------------i0aRcZYRy5ykm5DI1OhoDwg5--
