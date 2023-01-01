Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E416965AB9D
	for <lists+linux-man@lfdr.de>; Sun,  1 Jan 2023 21:54:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbjAAUyX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Jan 2023 15:54:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbjAAUyW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Jan 2023 15:54:22 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D482221B0
        for <linux-man@vger.kernel.org>; Sun,  1 Jan 2023 12:54:20 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m8-20020a05600c3b0800b003d96f801c48so16959342wms.0
        for <linux-man@vger.kernel.org>; Sun, 01 Jan 2023 12:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eotCrz33NhxtgO+iYmRxP0UkY4JGjCeB/8dzy5YxzpM=;
        b=W5zx0nH6Wm1G/5jVi7UUgL95lO8iEcy+AVI+3053w2Z9pX2A2jKTa3xzU5381cC4g0
         fn7oG1NS+Z9PFk5NdDr9kLOH++qt+TqfsKq/GlHnI+hS9k6+awDEtp4QvnzF8Md3CinJ
         dphJk87ab1gdGnWY4EjOWXjV6UBrIf+VV3qVX5iPmZs/e3hZf3KQm6i3t3pzvgfUmJY3
         gUJxjKFhFEDNHKsgdrIwUeQl+rAJCtnVKzUQYF09CpNPsHwX2RhpjIgLN/Z13AiN2YBY
         PEheQMBmhlRMe7JALSM/e1hDVgTdg0toUwUtU3oLmBmVn0LdOY1rCos4EZTArkzvXnYq
         s81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eotCrz33NhxtgO+iYmRxP0UkY4JGjCeB/8dzy5YxzpM=;
        b=B3Af3kzdEBDxAspP2azkmyzHYIAcGrVfElruvPZHXkpK65wHqyAUV53GBhokMXueCG
         xLIViRsI70csg81WszhZfaOyYUQKLv8rNaA2GF+5PgwglVximLKN5HLtudNwwMdbkWum
         o6T6MHEgsFlp2MNNISC5FpAA5EAHJmgHPC1tUIgiN60uYKEAmM1f84drl+ELuINwdxvc
         mhh4omuF3TSF3VMrZjBEka3Ml2PkVvOn9ZpVi2qii5al579ezQY51gMleH5lyDLEsgry
         rGXepcZZm13//QtuLH4YlFG0W70IvsjaX+UBiFIKSlDgy7tfkKXcu6qPZsUNnTG7hyHN
         /mcA==
X-Gm-Message-State: AFqh2kqIrj16yRFfZlwuGoRxMzDqbfc5h4YjG/s8yiScBOtb/kyH9PI4
        DeI9zyipeOSO88t8yWcjNLA=
X-Google-Smtp-Source: AMrXdXuqkTMAjeponl0dzcDiWmkPe0AsUTmWaeefL+YASxyViZwC2jTXRM9J+T2KGS5uMarDJONXOg==
X-Received: by 2002:a05:600c:3845:b0:3d1:caf1:3f56 with SMTP id s5-20020a05600c384500b003d1caf13f56mr31225162wmr.9.1672606459085;
        Sun, 01 Jan 2023 12:54:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d22-20020a1c7316000000b003d9862ec435sm22998168wmb.20.2023.01.01.12.54.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Jan 2023 12:54:18 -0800 (PST)
Message-ID: <2a759b15-c2ea-eda8-a6d2-e5f04b237da3@gmail.com>
Date:   Sun, 1 Jan 2023 21:54:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Tom Schwindl <schwindl@posteo.de>
Cc:     Alejandro Colomar <alx@kernel.org>,
        "Jason A. Donenfeld" <Jason@zx2c4.com>
References: <20230101204804.lbrme62ht75gtnyz@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230101204804.lbrme62ht75gtnyz@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tLjgVoNRQQt3IN2Sam4LpfX5"
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------tLjgVoNRQQt3IN2Sam4LpfX5
Content-Type: multipart/mixed; boundary="------------6VjyEz6IGgK0wvTbX4VaNHxS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org, Tom Schwindl <schwindl@posteo.de>
Cc: Alejandro Colomar <alx@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>
Message-ID: <2a759b15-c2ea-eda8-a6d2-e5f04b237da3@gmail.com>
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
References: <20230101204804.lbrme62ht75gtnyz@illithid>
In-Reply-To: <20230101204804.lbrme62ht75gtnyz@illithid>

--------------6VjyEz6IGgK0wvTbX4VaNHxS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiENCg0KT24gMS8xLzIzIDIxOjQ4LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBbZHJvcHBpbmcgbGliYy1hbHBoYSBkdWUgdG8gc2NvcGUgb2YgbXkgY29tbWVu
dHNdDQo+IA0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wMVQxNzoyNjoyOCswMTAw
LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gWy4uLl0NCj4+ICsuYWQgbA0KPj4gKy5u
aA0KPj4gKy5UUw0KPiBbLi4uXQ0KPj4gK1R7DQo+PiArLkJSIGFyYzRyYW5kb20gKCksDQo+
PiArLkJSIGFyYzRyYW5kb21fdW5pZm9ybSAoKSwNCj4+ICsuQlIgYXJjNHJhbmRvbV9idWYg
KCkNCj4+ICtUfQlUaHJlYWQgc2FmZXR5CU1ULVNhZmUNCj4+ICsuVEUNCj4+ICsuaHkNCj4+
ICsuYWQNCj4gDQo+IEkgd291bGQgY291bnNlbCBhZ2FpbnN0IHB1dHRpbmcgdGhlc2UgKnJv
ZmYgcmVxdWVzdHMgb3V0c2lkZSB0aGUgdGFibGUNCj4gZGVmaW5pdGlvbi4gIEkgdGhpbmsg
dGhhdCBoYXZpbmcgdGhlbSB3aGVyZSB5b3UgZG8gKDEpIG1pc2xlYWRzIHRoZQ0KPiByZWFk
ZXIvbWFpbnRhaW5lciBpbnRvIHRoaW5raW5nIHRoYXQgdGhleSBpbmZsdWVuY2UgaG93IHRh
YmxlIGVudHJpZXMgaW4NCj4gZ2VuZXJhbCBhcmUgdHlwZXNldCwgYW5kICgyKSB0aGV5IHJp
c2sgYmVpbmcgcmV0YWluZWQgaW4gdGhlIGV2ZW50IHRoZQ0KPiBtYW4gcGFnZSBpcyByZWZh
Y3RvcmVkIHRvIHN0b3AgdXNpbmcgYSB0YWJsZSBkZWZpbml0aW9uIHRvIHByZXNlbnQgdGhl
DQo+IG1hdGVyaWFsLg0KDQpUbyBiZSBob25lc3QsIHRibCgxKSBpcyBzdGlsbCBzb21ldGhp
bmcgSSBjYW4ndCB3cml0ZSB3aXRob3V0IGxvb2tpbmcgYXQgdGhlIA0KbWFudWFsLCBzbyB3
aGF0IEkgZW5kIHVwIGRvaW5nIG5vcm1hbGx5IGlzIGp1c3QgY29weSBhbiBleGlzdGluZyBv
bmUgYW5kIHRydXN0IA0KdGhhdCBpdCB3YXMgd3JpdHRlbiBjb3JyZWN0bHkuDQoNCkl0IHNl
ZW1zIEkgd2FzIGFzc3VtaW5nIHRvbyBtdWNoIDopDQoNCj4gDQo+IC0tYmVnaW4gc25pcC0t
DQo+ICAgICAgT3JkaW5hcmlseSwgYSB0YWJsZSBlbnRyeSBpcyB0eXBlc2V0IHJpZ2lkbHku
ICBJdCBpcyBub3QgZmlsbGVkLA0KPiAgICAgIGJyb2tlbiwgaHlwaGVuYXRlZCwgYWRqdXN0
ZWQsIG9yIHBvcHVsYXRlZCB3aXRoIGFkZGl0aW9uYWwgaW50ZXLigJANCj4gICAgICBzZW50
ZW5jZSBzcGFjZS4gIFsuLi5dIEluIGNvbnRyYXN0IHRvIGNvbnZlbnRpb25hbCByb2ZmIGlu
cHV0DQo+ICAgICAgKHdpdGhpbiBhIHBhcmFncmFwaCwgc2F5KSwgY2hhbmdlcyB0byB0ZXh0
IGZvcm1hdHRpbmcsIHN1Y2ggYXMgZm9udA0KPiAgICAgIHNlbGVjdGlvbiBvciB2ZXJ0aWNh
bCBzcGFjaW5nLCBkbyBub3QgcGVyc2lzdCBiZXR3ZWVuIGVudHJpZXMuDQo+ICAgIFsuLi5d
DQo+ICAgICAgVGV4dCBibG9ja3MgYXJlIGZvcm1hdHRlZCBhcyB3YXMgdGhlIHRleHQgcHJp
b3IgdG8gdGhlIHRhYmxlLA0KPiAgICAgIG1vZGlmaWVkIGJ5IGFwcGxpY2FibGUgY29sdW1u
IGRlc2NyaXB0b3JzLiAgU3BlY2lmaWNhbGx5LCB0aGUNCj4gICAgICBjbGFzc2lmaWVycyBB
LCBDLCBMLCBOLCBSLCBhbmQgUyBkZXRlcm1pbmUgYSB0ZXh0IGJsb2Nr4oCZcyBhbGlnbm1l
bnQNCj4gICAgICB3aXRoaW4gaXRzIGNlbGwsIGJ1dCBub3QgaXRzIGFkanVzdG1lbnQuICBB
ZGQgbmEgb3IgYWQgcmVxdWVzdHMgdG8NCj4gICAgICB0aGUgYmVnaW5uaW5nIG9mIGEgdGV4
dCBibG9jayB0byBhbHRlciBpdHMgYWRqdXN0bWVudCBkaXN0aW5jdGx5DQo+ICAgICAgZnJv
bSBvdGhlciB0ZXh0IGluIHRoZSBkb2N1bWVudC4gIEFzIHdpdGggb3RoZXIgdGFibGUgZW50
cmllcywgd2hlbg0KPiAgICAgIGEgdGV4dCBibG9jayBlbmRzLCBhbnkgYWx0ZXJhdGlvbnMg
dG8gZm9ybWF0dGluZyBwYXJhbWV0ZXJzIGFyZQ0KPiAgICAgIGRpc2NhcmRlZC4gIFRoZXkg
ZG8gbm90IGFmZmVjdCBzdWJzZXF1ZW50IHRhYmxlIGVudHJpZXMsIG5vdCBldmVuDQo+ICAg
ICAgb3RoZXIgdGV4dCBibG9ja3MuWzFdDQo+IC0tZW5kIHNuaXAtLQ0KPiANCj4gQWRtaXR0
ZWRseSwgaWYgeW91IGhhZCBhIHNpbmdsZSB0YWJsZSByZWdpb24gd2l0aCBhIGJ1bmNoIG9m
IHRleHQgYmxvY2tzDQo+IGluIGl0LCBpdCBpcyBtb3JlIGVjb25vbWljYWwgdG8gY2hhbmdl
IChhbmQgbGF0ZXIgcmVzdG9yZSkgdGhlDQo+IGZvcm1hdHRpbmcgb2YgInRoZSB0ZXh0IHBy
aW9yIHRvIHRoZSB0YWJsZSIsIHNvIHlvdSBkb24ndCBoYXZlIHRvIHdoYWNrDQo+IGVhY2gg
dGV4dCBibG9jayB3aXRoICIuYWQgbCIgYW5kICIubmgiIGluZGl2aWR1YWxseS4NCj4gDQo+
IEJ1dCBpbiB0aGlzIGNhc2UgeW91IGNhbiBtb3ZlIDIgbGluZXMgYW5kIGRyb3AgdHdvLCBz
aW5jZSB0aGUgY2hhbmdlZA0KPiBhbGlnbm1lbnQgYW5kIGF1dG9tYXRpYyBoeXBoZW5hdGlv
biBkaXNhYmxlbWVudCB3aWxsIGJlICJkaXNjYXJkZWQiLg0KPiANCj4+ICsuc3AgMQ0KPiAN
Cj4gV2hlbiB5b3UgdGhyb3cgdGhlIGdyb2ZmIDEuMjMuMCBzd2l0Y2ggYW5kIHN0YXJ0IHVz
aW5nIHRoZSBgTVJgIG1hY3JvLA0KPiB5b3UgY2FuIGdldCByaWQgb2YgdGhpcyB0b28uICBo
dHRwczovL3NhdmFubmFoLmdudS5vcmcvYnVncy8/NDkzOTANCg0KOikNCg0KPiANCj4+ICsu
U0ggU1RBTkRBUkRTDQo+PiArVGhlc2Ugbm9uc3RhbmRhcmQgZnVuY3Rpb25zIGFyZSBwcmVz
ZW50IGluIHNldmVyYWwgVW5peCBzeXN0ZW1zLg0KPj4NCj4+IEknbSBub3QgYSBuYXRpdmUg
c3BlYWtlciwgYnV0IEkgdGhpbmsgaXQgc2hvdWxkIGJlIHMvaW4vb24vLg0KPiANCj4gW2Eg
bmF0aXZlIEVuZ2xpc2ggc3BlYWtlciBoYXMgZW50ZXJlZCB0aGUgY2hhdF0NCj4gDQo+IE5l
aXRoZXIgd2lsbCBzb3VuZCB3cm9uZyB0byBtb3N0IGVhcnMuICBJIHRoaW5rICJvbiIgaXMg
YSBsaXR0bGUgbW9yZQ0KPiBpZGlvbWF0aWMsIGFzIHdlIHRlbmQgdG8gc3BlYWsgb2Ygb3Bl
cmF0aW5nIHN5c3RlbXMgYXMgc29tZSBraW5kIG9mDQo+IHBsYXRmb3JtIG9yIGZvdW5kYXRp
b24gdXBvbiB3aGljaCBvdGhlciBhY3Rpdml0aWVzIGFyZSBjb25kdWN0ZWQgb3INCj4gaW50
ZXJmYWNlcyBhcmUgY29uc3RydWN0ZWQuICBCdXQgd2UgYWxzbyBzcGVhayBvZiBhbiBPUyBh
cyBhbg0KPiBlbnZpcm9ubWVudCBpbiB3aGljaCB3ZSBjYXJyeSBvdXQgdGFza3MuICAoIkkg
dHJpZWQgZG9pbmcgZGV2ZWxvcG1lbnQgaW4NCj4gV2luZG93cy0taXQgd2FzIGhlbGwhIikg
IFdoZW4gc3BlYWtpbmcgb2YgYW4gZW50cnkgcG9pbnQgdG8gInRoZSBzeXN0ZW0iDQo+IChu
b3QgdG8gc2F5ICJ0aGUga2VybmVsIiksIEkgdGhpbmsgdGhlIGFyZ3VtZW50IGZvciAib24i
IGlzIHN0cm9uZ2VyLA0KPiBzaW5jZSB3ZSBhcmUgc3BlYWtpbmcgb2YgaXQgaW4gdGhhdCBw
bGF0Zm9ybS9mb3VuZGF0aW9uYWwgc2Vuc2UuICBJIHNlZQ0KPiB0aGlzIHVzYWdlIGluIG1h
bi1wYWdlcyg3KSBpdHNlbGYuWzJdDQoNClRoYW5rcyBmb3IgdGhlIGRldGFpbGVkIGV4cGxh
bmF0aW9uIQ0KDQo+IA0KPiBNb3JlIGltcG9ydGFudCwgSSB0aGluaywgd291bGQgYmUgdG8g
cGljayBvbmUgcGhyYXNpbmcgZm9yIHRoZSBMaW51eA0KPiBtYW4tcGFnZXMgYW5kIHVzZSBp
dCBjb25zaXN0ZW50bHkuDQoNCkkgc2hvdWxkIGRvIHRoYXQuICBJZiBJIG9ubHkgcmVtZW1i
ZXJlZCB0aGlzIGV2ZXJ5IHRpbWUgSSB3cml0ZS4uLiAgSSdsbCB0cnkgdG8uDQoNCj4gDQo+
IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCj4gDQo+IFsxXSBodHRwczovL2dpdC5zYXZhbm5haC5n
bnUub3JnL2NnaXQvZ3JvZmYuZ2l0L3RyZWUvc3JjL3ByZXByb2MvdGJsL3RibC4xLm1hbg0K
PiBbMl0gSSBhbHNvIHNlZSBib3RoICJUaGUgY29udmVudGlvbnMgZGVzY3JpYmVkIG9uIHRo
aXMgcGFnZSIgYW5kDQo+ICAgICAgIlRoZSBmaXJzdCBjb21tYW5kIGluIGEgbWFuIHBhZ2Ui
LCByZXZlYWxpbmcgdGhhdCBzbGlwcGFnZSBiZXR3ZWVuDQo+ICAgICAgdGhlc2UgcHJlcG9z
aXRpb25zIGlzIGNvbW1vbiBpbiBvdGhlciBjb250ZXh0cyBhcyB3ZWxsLiAgSSBuZXZlcg0K
PiAgICAgIG5vdGljZWQgdGhpcyB1bnRpbCBJIGxvb2tlZCBmb3IgaXQuDQoNCldoZW4gd2Ug
aGF2ZSBzb21lIHRpbWUsIHdlIGNvdWxkIGRvIHNvbWUgZ2xvYmFsIGxhbmd1YWdlIGNvbnNp
c3RlbmN5IGZpeGVzIGxpa2UgDQp0aGVzZS4gIEknbGwgbmVlZCBoZWxwIGZvciB0aGF0Lg0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------6VjyEz6IGgK0wvTbX4VaNHxS--

--------------tLjgVoNRQQt3IN2Sam4LpfX5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOx8vIACgkQnowa+77/
2zJ1rxAAp/8Pbqa4myLmrwxNi2kn70kgd/enfgq5kMKVFJfHPFDuWnWlU7lSBKXb
CJNJj9Ibf02eIq9j0fusV96Y35IX/VtCkM8soyj12YmdrqBlFXZ16sfYwUj+Cc9s
H/bIp7btshlT9UB3RTJN+WOiXjSETB0bz7iJe54ykEOOe/9GcFy78VgHSIc1bxcY
ari5+xvit1fQ0BLaVaYqvqCQBRFwiWVajT6pQrsaSdPBuc0S2Uzt96wXKF+ACb67
q4MRikNEnBICwkzca5rO5LwhX27YanIw3miF2ROZSbrorjt8lsvnPXiHaPDC5dum
VlOIuakJp1RX3C9KK3Ll9AMrrreNbj3p3rG3dnn2+8AVqB/OhKlXR8RhaaHjgnWo
1Em/QMTWpBT5Q7Jl6OLsv6yBfKbmp+Ezit/s8K7W5sK8SWk2GTISsr0UqbVNDCZM
CmYRIHROvlifSqPEEyf7L36/i3aehRNc/awzBnNMuLuy/K98FWaV3mQuxArEey21
2v1FjX7vDlrYlgOKgRXMLGFrxXdh9evn3I0dkpOyzaJJ8UM+Jx2SMJUi6pG5Ih2g
viGkOun+c5iCRV7VXz06F0gvyDtZzAypVKydiLxtFMX6hW91Ecda1GQ/ewPu4Qrg
7NkNi3e7y3OIlKBsXhdvdLX9AkhDpUD2VTuf63wswMlclaUI8BA=
=IZBb
-----END PGP SIGNATURE-----

--------------tLjgVoNRQQt3IN2Sam4LpfX5--
