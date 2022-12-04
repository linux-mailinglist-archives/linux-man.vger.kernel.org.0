Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37558642019
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 23:44:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbiLDWou (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 17:44:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229970AbiLDWot (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 17:44:49 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8E7D13DCA
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 14:44:48 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id ay27-20020a05600c1e1b00b003d070f4060bso8702873wmb.2
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 14:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUk0Emqd6KCM3w3vs1pj3KkV2kAgH0jfisbjyw672Vs=;
        b=iwvlY958/2xBQ4CHx9KjM1dg47+9v6gxC8IDhRVgD0lmuXV7+0oHo4RBmM6u2MyB3W
         uNl2NpfnDgrytie9EL9gJaov7YAZe6itet3ZBoRBYY/aEo3uuN83nDuBxVnwW4KURT3z
         de1eP5JYKQirR1aF3AyJ5Vd7vwMBTMXX7tuH/JS8BDLx2Nk6NB7Zkjs5MWuoAl0Gy1k7
         jhqev+5WRUxOtKyw5ruqqAuQ4lI3tguJ7dyQwMgAdVyPQO07Ultwesg5yLU6XVICRheU
         3C9CyIdkuZIvUScg8dCd+eZvFffE5TQSDQexKjFHwPXMqs0ioThvoQ57Jzas/6tE0jv9
         wq4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OUk0Emqd6KCM3w3vs1pj3KkV2kAgH0jfisbjyw672Vs=;
        b=jVg73ahQL+9He6Muo1B0+3RE3zI0gxxA7DlEa8TgpuSTkCBE+De7AAUymGMLIdVmvS
         MlmuQLEZcD59oZmYtxzBJMmJUDq6Z9M3WiSHItBBSwDHm3NTu9ZnDzc44bHY1IvT7BGS
         95wprXPN1tSNq3AUyutVx7iZHc1pAed3j6a2IhNDeskVETjTnnXCloPydZuGq4BBTH96
         yeWK9syjUbrqdq6n15hEHmgZM2JSLFrx4KloEo7EhaHjRHt6zBzpcxzuyZ745Z4lrN3K
         3yUsaTSZGNVAZ/Ak+/OeY2htBccz2rPDfYYth2z39ghrgi/rFhVofkRBLVTOmNDgocHn
         AHhw==
X-Gm-Message-State: ANoB5plU2ni97Hce0vzN8k0VPTNckjCDhYLsKcQyPu4ZTrZCQGFK9UY5
        y2R4MDaOLkJ2wsgogtrosEg=
X-Google-Smtp-Source: AA0mqf7aqKx4QK8z2o0Nr527XKx2Ai1Avj/XrU9hoXkq4WN98cUHpeP+Y9GIsOVU/FYvnG8LxjliZQ==
X-Received: by 2002:a05:600c:288:b0:3cf:758f:161f with SMTP id 8-20020a05600c028800b003cf758f161fmr54769778wmk.54.1670193886703;
        Sun, 04 Dec 2022 14:44:46 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o12-20020a5d670c000000b002424b695f7esm6134485wru.46.2022.12.04.14.44.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 14:44:46 -0800 (PST)
Message-ID: <806e7561-7e27-3f22-080c-7304c168874e@gmail.com>
Date:   Sun, 4 Dec 2022 23:44:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page wcsncpy.3
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>,
        GNU C Library <libc-alpha@sourceware.org>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
In-Reply-To: <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------byCN6DAtrNhPIKhmKMcajRvF"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------byCN6DAtrNhPIKhmKMcajRvF
Content-Type: multipart/mixed; boundary="------------X3QC2J0pxhoTvISSRZZmch8z";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>,
 GNU C Library <libc-alpha@sourceware.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <806e7561-7e27-3f22-080c-7304c168874e@gmail.com>
Subject: Re: Issue in man page wcsncpy.3
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
In-Reply-To: <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>

--------------X3QC2J0pxhoTvISSRZZmch8z
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDEyLzQvMjIgMjE6NDIsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBB
cyBhbiB1bnJlbGF0ZWQgbm90ZS7CoCBJJ3ZlIGhhZCB0aGlzIHJ1bm5pbmcgaW4gbXkgbWlu
ZCBmb3Igc29tZSB0aW1lLi4uIHlvdXIgDQo+IHZhcmlvdXMgYnVnIHJlcG9ydHMgZm9yIHN0
cm5jcHkoMykgYW5kIHNpbWlsYXIgd2lkZSBjaGFyYWN0ZXIgZnVuY3Rpb25zIGhhdmUgDQo+
IHRyaWdnZXJlZCB0aG9zZSB0aG91Z3RzLg0KPiANCj4gSSdtIGdvaW5nIHRvIG1hcmsgc3Ry
bmNweSgzKSBhbmQgc2ltaWxhciBmdW5jdGlvbnMgYXMgZGVwcmVjYXRlZCwgZXZlbiBpZiBu
byANCj4gbGliYyBvciBzdGFuZGFyZCBoYXMgZG9uZSBzby7CoCBUaGVyZSdzIHdpZGUgYWdy
ZWVtZW50IChhdCBsZWFzdCBpbiBzb21lIA0KPiBjb21tdW5pdGllcykgdGhhdCBzdHJuY3B5
KDMpIF9pcyBldmlsXy7CoCBUaGVyZSdzIHNpbXBseSBubyB1c2UgZm9yIGl0Lg0KPiANCj4g
SSBwcm9wb3NlIHRoYXQgZ2xpYmMgYWxzbyBtYXJrcyBpdCBhcyBkZXByZWNhdGVkLg0KPiAN
Cj4gSSd2ZSB3b3JrZWQgZm9yIGEgZmV3IG1vbnRocyBvbiBpbXByb3Zpbmcgc3RyaW5nIGhh
bmRsaW5nIGluIHZhcmlvdXMgcHJvamVjdHM6IA0KPiBzaGFkb3ctdXRpbHMgPGh0dHBzOi8v
Z2l0aHViLmNvbS9zaGFkb3ctbWFpbnQvc2hhZG93L3B1bGwvNTY5PiwgYW5kIGluIG5naW54
IA0KPiBVbml0LsKgIEkndmUgY29tZSB0byB0aGUgZm9sbG93aW5nIGd1aWRlbGluZXMgZm9y
IHVzaW5nIHN0cmluZ3M6DQo+IA0KPiAtwqAgc3RybGNweSgzKTrCoCBDb3B5IGZyb20gc3Ry
aW5nIHRvIHN0cmluZywgZGV0ZWN0aW5nIHRydW5jYXRpb24NCj4gLcKgIHN0cnNjcHkoOSk6
wqAgQ29weSBmcm9tIHVudHJ1c3RlZCBzdHJpbmcgdG8gc3RyaW5nLCBkZXRlY3RpbmcgYnJv
a2VuIG9uZXMNCj4gLcKgIHVzdHIyc3RyKCk6wqAgQ29weSBmcm9tIHVudGVybWluYXRlZCBz
dHJpbmcgdG8gc3RyaW5nDQo+ICDCoMKgIC3CoCBEZWZpbml0aW9uOiANCj4gPGh0dHBzOi8v
Z2l0aHViLmNvbS9zaGFkb3ctbWFpbnQvc2hhZG93L3B1bGwvNTY5L2ZpbGVzI2RpZmYtYTJi
OGY4NTY4YWQwMjVjMmFlYjRjNjRkMzUxMGY0MmQ4NzRlOWVmMGE2NGE4OWMyZGQ3NTBhYTkz
YWFiY2Q5Nz4NCj4gDQo+IC3CoCBzdHBlY3B5KCk6wqAgQ29weSBmcm9tIHN0cmluZyB0byBz
dHJpbmcsIHdpdGggZWFzeSAmIHNhZmUgY29uY2F0ZW5hdGlvbiwgYW5kIA0KPiByZXBvcnRp
bmcgdHJ1bmNhdGlvbiBhdCB0aGUgZW5kIG9mIHRoZSBjaGFpbiBjYWxsLg0KPiAgwqDCoCAt
wqAgRGVmaW5pdGlvbjogDQo+IDxodHRwczovL3NvZnR3YXJlLmNvZGlkYWN0LmNvbS9wb3N0
cy8yODU5NDYvMjg3NTIyI2Fuc3dlci0yODc1MjI+DQo+IA0KPiAtwqAgdXN0cjJzdHBlKCk6
wqAgQ29tYmluYXRpb24gb2YgdXN0cjJzdHIoKSBhbmQgc3RwZWNweSgpLg0KPiAgwqDCoCAt
wqAgRGVmaW5pdGlvbjrCoCBOb3QgeWV0IHB1YmxpYw0KPiANCj4gDQo+IEFuZCBhbHNvLCBt
ZW1jcHkoKSwgbWVtcGNweSgpLCBvciBtZW1jY3B5KCkgY2FuIGJlIHVzZWQgZm9yIGNvcHlp
bmcgdW50ZXJtaW5hdGVkIA0KPiBzdHJpbmdzLg0KPiANCj4gQnV0IEkgZG9uJ3Qgc2VlIGFu
eSBzY2VuYXJpbyB3aGVyZSBzdHJuY3B5KCkgaXMgdGhlIHJpZ2h0IGZ1bmN0aW9uIHRvIGNh
bGwuwqAgQW5kIA0KPiB0aGUgbmFtZSBpcyBjZXJ0YWlubHkgbm90IHRlbGxpbmcgdGhhdCBl
aXRoZXIuDQoNCkkgZGlkIHNvbWUgaW5pdGlhbCB3b3JrLCB0byBzcGxpdCBzdHJjcHkoMykg
YW5kIHN0cm5jcHkoMykgbWFudWFsIHBhZ2VzLCBhbmQgDQpjbGVhcmx5IGRvY3VtZW50IHRo
ZSBvbmx5IHB1cnBvc2UgZm9yIHdoaWNoIHN0cm5jcHkoMykgc2VlbXMgdG8gYmUgdXNlZnVs
IChvciBhdCANCmxlYXN0LCBub3QgcGxhaW4gd3JvbmcpOiBjb3B5aW5nIGEgc3RyaW5nIGlu
dG8gYSBmaXhlZC13aWR0aCBidWZmZXIsIGFuZCANCmVuc3VyaW5nIHRoYXQgbm8gZ2FyYmFn
ZSBpcyBsZWFrZWQuDQoNCkhvd2V2ZXIsIGV2ZW4gZm9yIHRoYXQgbmljaGUgdXNlLWNhc2Us
IGl0IGhhcyBpc3N1ZXM6IGl0IGNhbid0IHJlcG9ydCB0cnVuY2F0aW9uLg0KDQpDb25zaWRl
ciBhIHRyaXZpYWwgaW1wbGVtZW50YXRpb24gb2Ygc3RybmNweSgzKToNCg0KICAgICAgICAg
ICAgY2hhciAqDQogICAgICAgICAgICBzdHJuY3B5KGNoYXIgKmRlc3QsIGNvbnN0IGNoYXIg
KnNyYywgc2l6ZV90IG4pDQogICAgICAgICAgICB7DQogICAgICAgICAgICAgICAgYnplcm8o
ZGVzdCwgbik7DQogICAgICAgICAgICAgICAgbWVtY2NweShkZXN0LCBzcmMsICdcMCcsIG4p
Ow0KDQogICAgICAgICAgICAgICAgcmV0dXJuIGRlc3Q7DQogICAgICAgICAgICB9DQoNCkFz
IHRoaXMgaW1wbGVtZW50YXRpb24gaGludHMsIHRoaXMgZnVuY3Rpb24gaXMgb25seSB1c2Vm
dWwgd2hlbiB5b3UgZG8gd2FudCB0byANCmFwcGx5IHRob3NlIHR3byBjYWxscyBpbiB0aGF0
IG9yZGVyLiAgVGhlcmUgYXJlIGZldyB1c2UgY2FzZXMgZm9yIHRoYXQsIGJ1dCBub3QgDQpp
bmV4aXN0ZW50LCBva2F5LiAgSG93ZXZlcjoNCg0KKDEpICBIYXZpbmcgdGhlIDIgc2VwYXJh
dGUgY2FsbHMgaXMgcHJvYmFibHkgYmV0dGVyIGZvciBzZWxmIGRvY3VtZW50YXRpb24gdGhh
biANCnN0cm5jcHkoMyksIGVzcGVjaWFsbHkgc2luY2Ugc3RybmNweSgzKSBoYXMgYmVlbiBt
aXN1c2VkIGV4dGVuc2l2ZWx5LiAgSG93ZXZlciwgDQppZiBhIHByb2plY3QgY29ycmVjdGx5
IGRvY3VtZW50cyBpdHMgdXNlIG9mIHN0cm5jcHkoMyksIGl0IG1pZ2h0IGJlIGZpbmUsIGFu
ZCANCmxlc3MgY29kZS4NCg0KKDIpICBzdHJuY3B5KDMpIGNhbid0IGRldGVjdCB0cnVuY2F0
aW9uLiAgc3RybmNweSgzKSBoYXMgYmVlbiBtaXNkZXNpZ25lZCwgYW5kIA0KdGhpcyByZXB1
cnBvc2UgaXMgbm90IGdyZWF0Lg0KDQooMykgIEl0cyBuYW1lIGlzIG5vdCBhdCBhbGwgdGVs
bGluZyB3aGF0IGl0IGRvZXMuDQoNCg0KV2hpY2ggaXMgd2h5IEkgdGhpbmsgd2Ugc2hvdWxk
IGRlcHJlY2F0ZSBpdC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------X3QC2J0pxhoTvISSRZZmch8z--

--------------byCN6DAtrNhPIKhmKMcajRvF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONItYACgkQnowa+77/
2zIc2A/9Fj2MuO9Dl5eTmENWTrRqsbFO3VSW2MPnUcJ5Vu/VYTo2c9JhFp4eweD9
DHX5+f9oUw+NbW0RhhylZJmzrxtx1HX71d1nUzXsROk+2pXCA90j6cuCKZzIsr2b
CRO9hUeZt6lf8WyMdWD28Nu5fUzAOmW3lH/65YHVQcxs3Sc7p7qGa9t34tyqZwgx
2cqct39M2Gw+jsVdZ167tsGZHV36DMFQOkBzJinzqWzBvUw7wOeOhUKN9JNQVY3i
hSjkQn18hL+JEJMj6mRTY/NMvyz6vkqhKrsYl9zou7TxKwt9s6CsZQYUhq5znUiS
jMwVfnI0mD5XR0jPoYJiiRekpuCC9v3KbilWfWQmMx+eAB1EW6B/FZFORxObj3LK
LPEGlj+/sFH8NfbFILPVVb+0gXwXBwjDUkifXS2OSpl40R5TVFomjQ99+UlcoMaA
1elZww2WJM7hBCNICUHSvWJ8ssiPatrogIFsJ7407xqJcg/8EF4TrvxLmh6MyAO9
6WfcrseymYiO0BPRhzElbOrojAMmk92asrAopk5LhmMcx4DMHjgB237ADnkIAviM
lFB6r5k+kJSJz9YLl4SN8tkQp1drmIhOllfwaC0hg6chLujcie5bpIlnKOvs7mwE
h6Hdv0IVZOgJFth/TBJc99BsnfUll75aNC12RPUhHi/ed/g/l+8=
=E+ws
-----END PGP SIGNATURE-----

--------------byCN6DAtrNhPIKhmKMcajRvF--
