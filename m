Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1DA56031F2
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 20:04:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbiJRSEj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 14:04:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229917AbiJRSEj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 14:04:39 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C42E1C133
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 11:04:34 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id j16so24984462wrh.5
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 11:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oUGQbzO8rO29HlJ9REQowGj66Grbikege9PdB1pM5GY=;
        b=CjKKWuj38LBUORUDmY7bjUZnEcMod/kNsZpbRxger7iToJm5C1xyKF6jhB8gQIWWrE
         PnPhF1AEMd0jpidd1eTfKy6gVrN5qEFs5AHcYM3ZtJXqe/G59Smq3kmPSUoWfBiQ9Qbg
         5DUlMnJYW/8JPFCZzOl93W2/V/U9qDF6LMskL5Z23SYxhuHVwFCVGLqphHcEqu/VUkfo
         kO0v3aAopGECSaGnB0RT+8KpcM5OYbmoSO5GDysj4QSpksz0FVmgOfsJ4FXUb7rBsbEB
         09v0o+0iYRmglfDnqybIrBTMZB1aPs/rKvPlK85oNZQFA9ewEnVmSXr+chPNLO7WHjIV
         ICHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oUGQbzO8rO29HlJ9REQowGj66Grbikege9PdB1pM5GY=;
        b=XgJ72rJTsYeWhgE7kxUm66f4D4iiTaF23hJNKLjMPjPEs3eStkDuMIv8Z9BzVS6Vjl
         L8GQ0r7d3EPtRgir9l54C+e2blxHiWmcPfFQPDXDoeWU8NmxspfCNy97/uhpGVIRlNIw
         bk9+SFirxo3d/m0oYoi7PJmWF3vHxIQ9nW8+sFDVTfmVSYesYfIB+dpK2xHzlqP+Q3m3
         EJoqzBRn6Fmsv2SfCTObqWHNu8BFyNrNlY40K0H59eXpL3K/PfLAlGB1HWH8WvKKofzB
         ovTtytBtWgGLIaZl/7s/3MnzwGZnGCwCOyozm7CDv4F9q/JpiFZnE0qINU4gQ0JiDZK6
         yBBw==
X-Gm-Message-State: ACrzQf1fN+g/1OWndzbs0lqiS7BajDLuJoP38MK483lMVzC+sSV3lAjM
        BVYZF+qEjiHh36giV4uaPrw=
X-Google-Smtp-Source: AMsMyM5MN0xRgPbxAb6WZ+gxSDzORLIWu23JfE+NTx10vtnSHwSscAmnqSN5JfrBi7/cBTpbOpAkOA==
X-Received: by 2002:a5d:43ce:0:b0:22e:4acd:2153 with SMTP id v14-20020a5d43ce000000b0022e4acd2153mr2542477wrr.189.1666116272561;
        Tue, 18 Oct 2022 11:04:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c25-20020a7bc019000000b003c6b874a0dfsm17249546wmb.14.2022.10.18.11.04.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 11:04:32 -0700 (PDT)
Message-ID: <30f2b019-1dbd-dbb8-e6f5-a1c2c9f3a979@gmail.com>
Date:   Tue, 18 Oct 2022 20:04:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH man-pages 2/4] madvise.2: document reliable probe for
 advice support
To:     Zach O'Keefe <zokeefe@google.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
References: <20221017175523.2048887-1-zokeefe@google.com>
 <20221017175523.2048887-3-zokeefe@google.com>
 <2de9de5f-c82d-f2ce-26e3-b9fabd88a08c@gmail.com>
 <CAAa6QmQn-8sY2N7r4-rAHJbgdMdAkJUKQyGWfbief0bhdY4Csw@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAAa6QmQn-8sY2N7r4-rAHJbgdMdAkJUKQyGWfbief0bhdY4Csw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kLlqbWcHVRasSTgZHxtCpZr8"
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
--------------kLlqbWcHVRasSTgZHxtCpZr8
Content-Type: multipart/mixed; boundary="------------AS3yjHNwdWa8L51RuiFYN9id";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach O'Keefe <zokeefe@google.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, Yang Shi <shy828301@gmail.com>,
 linux-mm@kvack.org, linux-man@vger.kernel.org
Message-ID: <30f2b019-1dbd-dbb8-e6f5-a1c2c9f3a979@gmail.com>
Subject: Re: [PATCH man-pages 2/4] madvise.2: document reliable probe for
 advice support
References: <20221017175523.2048887-1-zokeefe@google.com>
 <20221017175523.2048887-3-zokeefe@google.com>
 <2de9de5f-c82d-f2ce-26e3-b9fabd88a08c@gmail.com>
 <CAAa6QmQn-8sY2N7r4-rAHJbgdMdAkJUKQyGWfbief0bhdY4Csw@mail.gmail.com>
In-Reply-To: <CAAa6QmQn-8sY2N7r4-rAHJbgdMdAkJUKQyGWfbief0bhdY4Csw@mail.gmail.com>

--------------AS3yjHNwdWa8L51RuiFYN9id
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGV5IFphY2ghDQoNCk9uIDEwLzE4LzIyIDE5OjUzLCBaYWNoIE8nS2VlZmUgd3JvdGU6DQo+
IEhleSBBbGV4LA0KPiANCj4+PiBkaWZmIC0tZ2l0IGEvbWFuMi9tYWR2aXNlLjIgYi9tYW4y
L21hZHZpc2UuMg0KPj4+IGluZGV4IGUxNGUwZjdmYi4uYWRmZTI0YzI0IDEwMDY0NA0KPj4+
IC0tLSBhL21hbjIvbWFkdmlzZS4yDQo+Pj4gKysrIGIvbWFuMi9tYWR2aXNlLjINCj4+PiBA
QCAtNzg5LDYgKzc4OSwxMyBAQCB0aGF0IGFyZSBub3QgbWFwcGVkLCB0aGUgTGludXggdmVy
c2lvbiBvZg0KPj4+ICAgIGlnbm9yZXMgdGhlbSBhbmQgYXBwbGllcyB0aGUgY2FsbCB0byB0
aGUgcmVzdCAoYnV0IHJldHVybnMNCj4+PiAgICAuQiBFTk9NRU0NCj4+PiAgICBmcm9tIHRo
ZSBzeXN0ZW0gY2FsbCwgYXMgaXQgc2hvdWxkKS4NCj4+PiArLlBQDQo+Pj4gKy5CUiBtYWR2
aXNlICgwLA0KPj4+ICswLA0KPj4+ICsuSVIgYWR2aWNlICkNCj4+DQo+PiBGb3IgZXhwcmVz
c2lvbnMsIHdlIGRvbid0IGZvbGxvdyB0aGUgc2FtZSBoaWdobGlnaHRpbmcgcnVsZXMgYXMg
aW4NCj4+IGlkZW50aWZpZXJzIGFuZCBtYW4tcGFnZSByZWZlcmVuY2VzLiAgSW5zdGVhZCB3
ZSB1c2UgYWxsIGl0YWxpY3MuICBTZWUNCj4+IG1hbi1wYWdlcyg3KToNCj4+DQo+PiAgICAg
ICAgICBFeHByZXNzaW9ucywgaWYgbm90IHdyaXR0ZW4gb24gYSBzZXBhcmF0ZSBpbmRlbnRl
ZCAgbGluZSwNCj4+ICAgICAgICAgIHNob3VsZCAgYmUgIHNwZWNpZmllZCBpbiBpdGFsaWNz
LiAgQWdhaW4sIHRoZSB1c2Ugb2Ygbm9u4oCQDQo+PiAgICAgICAgICBicmVha2luZyBzcGFj
ZXMgbWF5IGJlIGFwcHJvcHJpYXRlIGlmIHRoZSAgZXhwcmVzc2lvbiAgaXMNCj4+ICAgICAg
ICAgIGlubGluZWQgd2l0aCBub3JtYWwgdGV4dC4NCj4gDQo+IEp1c3QgdG8gY29uZmlybSwg
YnkgImV4cHJlc3Npb24iLCB5b3UgbWVhbiAibWFkdmlzZSgwLCAwLCBhZHZpY2UpIj8NCg0K
WWVzLCBJIG1lYW50IHRoYXQuDQoNCj4gSWYNCj4gc28sIHRvIGJlIGNvbnNpc3RlbnQgd2l0
aCB0aGUgb3RoZXIgbm90ZSwgcGVyaGFwcyBiZXN0IHRvIGJyZWFrIHRoaXMNCj4gaW50byBh
IHBocmFzZSBzdWNoIGFzOg0KPiANCj4gLS04PC0tLQ0KPiAuQlIgbWFkdmlzZSAoKQ0KPiBj
YWxsZWQgd2l0aCB6ZXJvIGZvciBib3RoDQo+IC5JUiBhZGRyDQo+IGFuZA0KPiAuSVIgbGVu
Z3RoDQo+IHdpbGwgcmV0dXJuIHplcm8gaWZmDQo+IC5JIGFkdmljZQ0KPiBpcyBzdXBwb3J0
ZWQgYnkgdGhlIGtlcm5lbCBhbmQgY2FuIGJlIHJlbGllZCBvbiB0byBwcm9iZSBmb3Igc3Vw
cG9ydC4NCj4gLS04PC0tLQ0KDQpJIHRoaW5rIHRoZSBDIGV4cHJlc3Npb24gd2FzIG1vcmUg
cmVhZGFibGUuDQoNCkNoZWVycywNCkFsZXgNCg0KPiANCj4gVGhhbmtzLA0KPiBaYWNoDQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------AS3yjHNwdWa8L51RuiFYN9id--

--------------kLlqbWcHVRasSTgZHxtCpZr8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNO6qgACgkQnowa+77/
2zK+Rw//Q5xxTNhKMvLv4sxYrvES6Eud788OBr0Kqs5aJ5zXUdZaQZggVNb3ab4t
AhVs0vyiclMaHzz/sfAbSBJFBvWKQSwK9yqvPtMQg24/fbIqPu3wGWKt+HSMU45E
A0dyMImIoQ9oXrCgMQcrCpgetYcJE7aGqOmH9DE+xlWpH++UrUc+W/Fn9gfcZDs9
VJ6UaMnblF7RDdSeitq5A/MEopmnmpxi2z8CiomOTQODvppdaMMPgQRmwIxpXf77
13Tmlzcv3s9mmh0vIOmR+vAaqopitXTgFPVZGW4u8iA+qZp1HOxGRtncsNgM10UV
83EnNP0osAIqXAAnOgB64iySdfiBKaAQmJII+6hvmvU8BKa3M7LxETpBledEXKEL
YvB3sJkcJReagDdIvZh7/KlL4fYwCrrW70qqbQFuOguM0aZ/B/SK0KsAg0hP1SlP
Ng153zfDyzVQXngU53xbEDXhcg7kUws3OCpg5oWpX38e/7wZ0YjYr0txc+Mvsdsa
QFwrzV/6lXQ1oaA7gxDYBMDnVyZHxnY2Cnrz0uGtpeloLGlOBh/R3waT6EZlUZoH
BljMHKuGed8PFZaWgukJf+93sdTqT4RVus55OdVg8kZ+ofjaB/IvOYvVMSKDGYnh
BVqMSHCKAbNqNbUNxryw22CaJ5k6o/nAfdMFWIV9stlAsQbWpWI=
=3ymL
-----END PGP SIGNATURE-----

--------------kLlqbWcHVRasSTgZHxtCpZr8--
