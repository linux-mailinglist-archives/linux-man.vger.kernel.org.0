Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B19F54686D
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 16:35:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349323AbiFJOfk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 10:35:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244770AbiFJOfg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 10:35:36 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C502719C38
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 07:35:34 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id v14so10544667wra.5
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 07:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=qkWRvuAhyCr5BNnYYnK3ZqvCe6ZzylkDxUyegRNG+to=;
        b=WspL5eCx6jkR0DtGpBJ6CoLAwDUXFSDAKniPzzjQbwyOwuo3gg2yb/hBmFBxpOcig1
         oZLEKpZOPxl7GB9Zgg0l/Azb5q4JfhWZpgnoTjA7opyKY8uaIh7ogKNzUSJzGDKMx26C
         BY3+Xre5GQZ6fHfJJ2Z7munim0PGrOWBJrtciXM8JhonhNCL2WBJoC1MumBeCnVGbd+u
         rk47ZgQf8XfyX5u3VdANAVWaplByFi5ezUJ43nhvhNMhZgoBTiL5K3AXkFZ5RWmVMuoM
         II8C++OWpTLDPeMXCg9nqZKoxUt78s5p2vy5u46BADcvM6EpO8b/1fgYfri0Ta3ysZ25
         hnbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=qkWRvuAhyCr5BNnYYnK3ZqvCe6ZzylkDxUyegRNG+to=;
        b=Ykl4ih12SVbJzcQvGyazugyyUl0ILgxhmMcwAAbVIC8bdZSFXVcvImoXK5KSOsQmsM
         IHpYjmk1wXvZqGnJn++GK/+Wd7JNwo8/EFigC8vmUNsf7LvQibUpbPoPEOhB8+C4021s
         OQNZmx/3QVAx9bSbsrzhZTI30oaSL9+CuHkiE9YkrvPYPdE3hGgN2w5sSAfkuNcACtmi
         gz50WTo7PyfuahrBPM1sRcx+PCkRVL3A2YqUrOOAcecBx0LtLvCgZO1eO8AxG/QYF2ML
         tPK6gBa5a8NNk/qG9XPe3GLkb/sOR8MEQ7sAqFcWpXkX1tLYUYt42j5PQ/JO6uztR3fu
         R7Mg==
X-Gm-Message-State: AOAM532jUFEgN2wwCa+20cUxFFRGYUsk3auDuSUxM1Mw9K7zqalhVbBY
        K/2M6f5tZFAn2ZipATnrCGE=
X-Google-Smtp-Source: ABdhPJwZ3aeXU4KlZ6OBLuGOtCjiQx4MM0Bb5kGIK+OX6cEecS746+AIfjh8A2xcqrpR1vxOUGNiVQ==
X-Received: by 2002:a05:6000:1a8b:b0:219:af0c:ddf8 with SMTP id f11-20020a0560001a8b00b00219af0cddf8mr10377675wry.142.1654871733118;
        Fri, 10 Jun 2022 07:35:33 -0700 (PDT)
Received: from [192.168.42.187] ([77.107.214.69])
        by smtp.gmail.com with ESMTPSA id h9-20020a5d4309000000b002102af52a2csm34770816wrq.9.2022.06.10.07.35.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jun 2022 07:35:32 -0700 (PDT)
Message-ID: <45b5297a-6a9f-cda7-4f3c-8412836580fb@gmail.com>
Date:   Fri, 10 Jun 2022 16:38:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
Content-Language: en-US
To:     Peter Xu <peterx@redhat.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20220610105141.16649-1-alx.manpages@gmail.com>
 <YqNNTQvSqYUBfC9m@xz-m1.local>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YqNNTQvSqYUBfC9m@xz-m1.local>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mTZyuDRC2PObOBupTeGK605G"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mTZyuDRC2PObOBupTeGK605G
Content-Type: multipart/mixed; boundary="------------4P1M90KRy0qxAemKQw8f2Z0M";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Peter Xu <peterx@redhat.com>,
 "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <45b5297a-6a9f-cda7-4f3c-8412836580fb@gmail.com>
Subject: Re: [PATCH] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
References: <20220610105141.16649-1-alx.manpages@gmail.com>
 <YqNNTQvSqYUBfC9m@xz-m1.local>
In-Reply-To: <YqNNTQvSqYUBfC9m@xz-m1.local>

--------------4P1M90KRy0qxAemKQw8f2Z0M
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUGV0ZXIgYW5kIEJyYW5kZW4sDQoNCk9uIDYvMTAvMjIgMTU6NTUsIFBldGVyIFh1IHdy
b3RlOg0KPiBUaGFua3MgZm9yIGFkZGluZyB0aGlzIQ0KPiANCj4gVGhlcmUncyBhIGxpdHRs
ZSBiaXQgb2YgYSBwaXR5IHRob3VnaCBvbiB0aGF0IHRoZSBQREYgdmVyc2lvbiB3aWxsIElN
SE8NCj4gbG9vc2Ugb25lIHZlcnkgaW1wb3J0YW50IGFzcGVjdCBvZiBiZWluZyBhbiBsaXZl
IGV4YW1wbGUgb2YgaG93IHRvIGRvDQo+IHNlbWFudGljcyBuZXdsaW5lcyBpdHNlbGYuICBQ
ZXJzb25hbGx5IGFmdGVyIEkgcmVhZCB0aGUgZm9ybWF0IEkgZG9uJ3QgZXZlbg0KPiBuZWVk
IHRvIHJlYWQgdGhlIGdyb2ZmIG1hbiBwYWdlIGJlY2F1c2UgdGhlIGV4YW1wbGUgaXMgdGhl
IGJlc3QgdG8gZGVzY3JpYmUNCj4gdGhhdCB0aGlzIHJ1bGUgbWVhbnMuDQo+IA0KPiBJIG1l
YW50IHRoZSBwb3NzaWJpbGl0eSB0byBxdW90ZSB0aGUgdGhpbmcgYmVoaW5kIGdlbmVyYXRl
ZCBQREYganVzdCBhcyB5b3UNCj4gZGlkIGluIHRoZSBjb21taXQgbWVzc2FnZToNCj4gDQo+
IC0tLTg8LS0tDQo+IEJyaWFuIFcuIEtlcm5pZ2hhbiwgMTk3NCBbVU5JWCBGb3IgQmVnaW5u
ZXJzXToNCj4gDQo+IFsNCj4gSGludHMgZm9yIFByZXBhcmluZyBEb2N1bWVudHMNCj4gDQo+
IE1vc3QgZG9jdW1lbnRzIGdvIHRocm91Z2ggc2V2ZXJhbCB2ZXJzaW9ucw0KPiAoYWx3YXlz
IG1vcmUgdGhhbiB5b3UgZXhwZWN0ZWQpDQo+IGJlZm9yZSB0aGV5IGFyZSBmaW5hbGx5IGZp
bmlzaGVkLg0KPiBBY2NvcmRpbmdseSwNCj4geW91IHNob3VsZCBkbyB3aGF0ZXZlciBwb3Nz
aWJsZQ0KPiB0byBtYWtlIHRoZSBqb2Igb2YgY2hhbmdpbmcgdGhlbSBlYXN5Lg0KPiANCj4g
Rmlyc3QsDQo+IHdoZW4geW91IGRvIHRoZSBwdXJlbHkgbWVjaGFuaWNhbCBvcGVyYXRpb25z
IG9mIHR5cGluZywNCj4gdHlwZSBzbyBzdWJzZXF1ZW50IGVkaXRpbmcgd2lsbCBiZSBlYXN5
Lg0KPiBTdGFydCBlYWNoIHNlbnRlbmNlIG9uIGEgbmV3IGxpbmUuDQo+IE1ha2UgbGluZXMg
c2hvcnQsDQo+IGFuZCBicmVhayBsaW5lcyBhdCBuYXR1cmFsIHBsYWNlcywNCj4gc3VjaCBh
cyBhZnRlciBjb21tYXMgYW5kIHNlbWljb2xvbnMsDQo+IHJhdGhlciB0aGFuIHJhbmRvbWx5
Lg0KPiBTaW5jZSBtb3N0IHBlb3BsZSBjaGFuZ2UgZG9jdW1lbnRzDQo+IGJ5IHJld3JpdGlu
ZyBwaHJhc2VzIGFuZA0KPiBhZGRpbmcsIGRlbGV0aW5nIGFuZCByZWFycmFuZ2luZyBzZW50
ZW5jZXMsDQo+IHRoZXNlIHByZWNhdXRpb25zIHNpbXBsaWZ5IGFueSBlZGl0aW5nIHlvdSBo
YXZlIHRvIGRvIGxhdGVyLg0KPiBdDQo+IC0tLTg8LS0tDQo+IA0KPiBTbyBJIHdhcyB3b25k
ZXJpbmcgd2hldGhlciB0aGlzIHNlY3Rpb24gKGFsb25nIHdpdGggaXRzIG5ld2xpbmUgZm9y
bWF0cywNCj4gd2hpY2ggaXMgSU1ITyBldmVuIG1vcmUgaGVscGZ1bCkgY2FuIGJlIHF1b3Rl
ZCBhbHRvZ2V0aGVyLCBiZWNhdXNlIGJvdGggdGhlDQo+IGNvbnRlbnQgYW5kIGZvcm1hdCBj
b3VsZCBoZWxwIHRoZSByZWFkZXIgaW4gdGhpcyBjYXNlLg0KDQpTdXJlLCBJIHdhcyB0aGlu
a2luZyBvZiBhZGRpbmcgdGhhdCB0byBtYW4tcGFnZXMoNyk6OkVYQU1QTEVTIGFmdGVyIHlv
dXIgDQpjb21tZW50LiAgQnV0IEkgZGlkbid0IGtub3cgaG93IHRvIHByb3Blcmx5IHF1b3Rl
IGl0LCBzbyBJIHdhaXRlZCB0byBzZWUgDQpCcmFuZGVuJ3MgZ3JlYXQgYWR2aXNlIGZpcnN0
IDopDQoNCkJyYW5kZW4sIG1pZ2h0IHlvdSB3YW50IHRvIHNlbmQgYSBwYXRjaCB5b3Vyc2Vs
Zi4gIEkgaGF2ZSBubyBpZGVhIG9mIGhvdyANCnRvIGNvcnJlY3RseSBxdW90ZSBzb21lb25l
IDovDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBUaGFua3MsDQo+IA0KDQoNCi0tIA0K
QWxlamFuZHJvIENvbG9tYXINCkxpbnV4IG1hbi1wYWdlcyBjb21haW50YWluZXI7IGh0dHA6
Ly93d3cua2VybmVsLm9yZy9kb2MvbWFuLXBhZ2VzLw0KaHR0cDovL3d3dy5hbGVqYW5kcm8t
Y29sb21hci5lcy8NCg==

--------------4P1M90KRy0qxAemKQw8f2Z0M--

--------------mTZyuDRC2PObOBupTeGK605G
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKjV2YACgkQnowa+77/
2zLNdA/+NTB5y8ULt2xSmwxUdFYUmDIdbwuXhxm+g6miyJkSANtaaP1lPsvAj/au
ETtLRaxjeK8l3ISa1SyPavvphBisvi771GM7P3leB+Ou5+hLspr4sYYwsm6uv6KA
lGJvwsiQ9DqbLe6wdkTfcKPtZW90L+f907Gx8639i5yk3Ye1j7AOryyUpag3ncx5
xxW1ODcbqI9NRj7zH4h1WeL05ut/IlUa7o04Vj3rsKuyrcbY6R0T9OI7KchlECbd
1OrD83BxGWnffInGhuYWjuAYSrFuGMnI7Fsf3oJwXacWdNPcDcrUFyNHR4at5Xrc
oDOWDyX89DoHQWEYzia6mNm69j5XPFqxf1DZyTdFNhI5t7uBlB7LG6vMc8U2TScz
4Mq1r8FOYY95bIyuJaJZHbnJBJzicJzCsh7PYyayXblP59khTMRNeqWLu64+QPln
PD6SKwDKZbMaVoUkaQesMXghYnyguR5CCavZslci0fqZQ6zgc0JSTocVdEPonDbN
sWIRJRSgBwyaRmV97GrJW9PRTE+nTtoREPd/3qvRU0swm+J3eKbnmsb63Mhhm99N
eBkPaJuQz6VDUi9YFBdvlTjxztcoio5KsRUSn0KZi74Jd3zCqIH+/LaJQ5ChEfnL
O+Jls0N1FKg/shl7H2qQ+iVYRCWVZiJjfa8HizgXUfjcxZHn4Ec=
=Ff/a
-----END PGP SIGNATURE-----

--------------mTZyuDRC2PObOBupTeGK605G--
