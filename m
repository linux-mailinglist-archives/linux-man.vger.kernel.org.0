Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA6505EDE49
	for <lists+linux-man@lfdr.de>; Wed, 28 Sep 2022 15:56:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232702AbiI1N4i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Sep 2022 09:56:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234224AbiI1N4g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Sep 2022 09:56:36 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC42B56BB3
        for <linux-man@vger.kernel.org>; Wed, 28 Sep 2022 06:56:32 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id ay36so8598710wmb.0
        for <linux-man@vger.kernel.org>; Wed, 28 Sep 2022 06:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=VoyjaTELdZWPqIDFhb1bAjVM0jk9a6bXWXm7HAxvFqU=;
        b=UWKmNCMD3UGKBtWkRzVV/K6mDBnspAavb4Koq7ztpZwWY6AKL6cKqXAp3776l3yi7y
         KGSrCEBlm4Ya1Vpf6cRgxlqF5819Qucc1uQ+hkTQVGSWB1QBg5DB8SJxsp8u8l/BhWGG
         rCUMF0DJFWACMoEVaHCAq5bdWi9XAMSmY5i87aie/70yXv57ee3VBGt5GXPYsLRRTcs+
         S/Q5/8OGB54QDswI08iRBUg7rgvr+wukZ9uoAMfTPyvn17e1W1Yvo6g8zzrqdA95jsDS
         M36WC+TjojywxtsFFObd04+dXZC8q/AIF1vYclIzDwB9zL06HacTRH0gcGZ3rOT7w3R1
         D5Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=VoyjaTELdZWPqIDFhb1bAjVM0jk9a6bXWXm7HAxvFqU=;
        b=73qb9HTkRJm7u1b1HpRxnH4iPvpNwsAtn3t7gTrBrdvGiKMGTJHHHaGGseHvsUBVTT
         MxY/KFZ1RecXCQvfYq5dBUJpu3tAmXw6bBku+zLAfBko0Agqq3I4b/+N+yi4I2CIbUi8
         2SJTGjT8msGxp08MszGOYmWPea31oJMWeHDIJd1t0fpijzR/YcUfu/BGbgqj4bmHp4WB
         HKpv16lm3+487O5vt1+p2qYlWliHKJG3s1cQmbMTd20w1XYUAHYlM/LE1UuwhSCMC448
         dsocwMUOcBkCOP5/455mkDXGIWz17EVG3D/ZvhlYVJKdI0js2gRDtLV8d589gTntZq2Q
         Au6A==
X-Gm-Message-State: ACrzQf2rRw3hyrGI9CIITzp3d1rKQvkPL8wvyv4ttMJ73oaNDf+0q1Gu
        j4ZdTOSfXbHZ2kS26KQ0ELGZ4KLiynk=
X-Google-Smtp-Source: AMsMyM70L1g2vk0oVgEizsX6SeKZX4AFD3ozrN63mZR9n8VSZY1wtMe0JcKXpe2KKdW5JiJJaHkKbQ==
X-Received: by 2002:a05:600c:4fc9:b0:3b4:9a6c:9545 with SMTP id o9-20020a05600c4fc900b003b49a6c9545mr6759156wmq.142.1664373391087;
        Wed, 28 Sep 2022 06:56:31 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bk9-20020a0560001d8900b002252884cc91sm4262234wrb.43.2022.09.28.06.56.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 06:56:30 -0700 (PDT)
Message-ID: <cc7fc498-f068-9f62-967b-743805298ebb@gmail.com>
Date:   Wed, 28 Sep 2022 15:56:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: Is man-pages-posix redistributable?
Content-Language: en-US
To:     Christoph Erhardt <fedora@sicherha.de>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <3765026.aeNJFYEL58@delle> <22845672.EfDdHjke4D@delle>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <22845672.EfDdHjke4D@delle>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gFTQEkJeV7nWSiM1FvsyYjfk"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------gFTQEkJeV7nWSiM1FvsyYjfk
Content-Type: multipart/mixed; boundary="------------z3845QS8QQQykw2kbZ3JKBeh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Christoph Erhardt <fedora@sicherha.de>, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <cc7fc498-f068-9f62-967b-743805298ebb@gmail.com>
Subject: Re: Is man-pages-posix redistributable?
References: <3765026.aeNJFYEL58@delle> <22845672.EfDdHjke4D@delle>
In-Reply-To: <22845672.EfDdHjke4D@delle>

--------------z3845QS8QQQykw2kbZ3JKBeh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0b3BoLA0KDQpPbiA5LzI4LzIyIDEwOjE1LCBDaHJpc3RvcGggRXJoYXJkdCB3
cm90ZToNCj4gQW55b25lPw0KDQpTb3JyeSwgSSB3YXMgb24gdmFjYXRpb24uDQoNCj4gDQo+
IE15IHByZWZlcnJlZCBhbnN3ZXIgd291bGQgYmUgJ3lvdXIgcXVlc3Rpb24gaXMgc3R1cGlk
OyAqb2YgY291cnNlKiBtYW4tcGFnZXMtDQo+IHBvc2l4IGlzIHJlZGlzdHJpYnV0YWJsZScu
IFNvIGlmIHRoYXQgaXMgaW5kZWVkIHRoZSBjYXNlLCBwbGVhc2UgZG9uJ3QNCj4gaGVzaXRh
dGUgdG8gc2F5IHNvLiA7LSkNCg0KSSdkIGxpa2UgdG8sIGJ1dCBJIGNhbid0LiAgSSdtIG5v
dCBzdXJlIGlmIGl0J3MgdHJ1ZSwgYnV0IHRoZSBmYWN0IGlzIA0KdGhhdCBpdCdzIG5vdCBv
YnZpb3VzLg0KDQo+IA0KPiBUaGFua3MsDQo+IENocmlzdG9waA0KPiANCj4gT24gTW9uZGF5
LCAyOSBBdWd1c3QgMjAyMiAwODoxNDoyMiBDRVNUIENocmlzdG9waCBFcmhhcmR0IHdyb3Rl
Og0KPj4gSGkgbGlzdCwNCj4+DQo+PiBJIGhhdmUgYSBxdWVzdGlvbiByZWdhcmRpbmcgdGhl
IHJlZGlzdHJpYnV0aW9uIG9mIG1hbi1wYWdlcy1wb3NpeC4NCj4+IFByaW9yIHRvIHRoZSAy
MDE3LWEgcmVsZWFzZSwgdGhlIFBPU0lYX0NPUFlSSUdIVCBmaWxlIGNvbnRhaW5lZCB0aGUN
Cj4+IGZvbGxvd2luZw0KPj4gcGFyYWdyYXBoOg0KPj4+IFJlZGlzdHJpYnV0aW9uIG9mIHRo
aXMgbWF0ZXJpYWwgaXMgcGVybWl0dGVkIHNvIGxvbmcgYXMgdGhpcyBub3RpY2UgYW5kDQo+
Pj4gdGhlIGNvcnJlc3BvbmRpbmcgbm90aWNlcyB3aXRoaW4gZWFjaCBQT1NJWCBtYW51YWwg
cGFnZSBhcmUgcmV0YWluZWQgb24NCj4+PiBhbnkgZGlzdHJpYnV0aW9uLCBhbmQgdGhlIG5y
b2ZmIHNvdXJjZSBpcyBpbmNsdWRlZC4gTW9kaWZpY2F0aW9ucyB0bw0KPj4+IHRoZSB0ZXh0
IGFyZSBwZXJtaXR0ZWQgc28gbG9uZyBhcyBhbnkgY29uZmxpY3RzIHdpdGggdGhlIHN0YW5k
YXJkDQo+Pj4gYXJlIGNsZWFybHkgbWFya2VkIGFzIHN1Y2ggaW4gdGhlIHRleHQuDQo+Pg0K
Pj4gSW4gdGhlIDIwMTctYSByZWxlYXNlLCB0aGF0IHBhcmFncmFwaCBoYXMgZGlzYXBwZWFy
ZWQuIEkgd291bGQgbGlrZSB0bw0KPj4gY2xhcmlmeSB0aGUgaW1wbGljYXRpb25zIG9mIHRo
YXQgZm9yIGRvd25zdHJlYW0gZGlzdHJpYnV0aW9ucy4NCj4+DQo+PiBUaGUgRmVkb3JhIHBy
b2plY3QsIHdoaWNoIGlzIGtub3duIHRvIGJlIHZlcnkgc3RyaWN0IGFib3V0IGxpY2Vuc2lu
Zw0KPj4gY29uY2VybnMsIHNlZXMgdGhlIG5ldyBsaWNlbmNlIGFzIGltcGVybWlzc2libGUg
YW5kIGhhcyBkcm9wcGVkIHRoZSBQT1NJWA0KPj4gbWFuIHBhZ2VzIGFzIGEgY29uc2VxdWVu
Y2U6DQo+PiBodHRwczovL2J1Z3ppbGxhLnJlZGhhdC5jb20vc2hvd19idWcuY2dpP2lkPTIx
MTY4NTkNCj4+DQo+PiBOb3csIEZlZG9yYSdzIHF1YXNpLW9mZmljaWFsIHdheSBvZiBkZWFs
aW5nIHdpdGggc3VjaCBsaWNlbnNpbmcgaXNzdWVzIHdvdWxkDQo+PiBiZSB0byBhZGQgdGhl
IGl0ZW0gaW4gcXVlc3Rpb24gdG8gUlBNIEZ1c2lvbidzICdub25mcmVlJyBwYWNrYWdlDQo+
PiByZXBvc2l0b3J5LiBJIGhhdmUgb3BlbmVkIGFuIGluY2x1c2lvbiByZXF1ZXN0Og0KPj4g
aHR0cHM6Ly9idWd6aWxsYS5ycG1mdXNpb24ub3JnL3Nob3dfYnVnLmNnaT9pZD02Mzk2DQo+
Pg0KPj4gSG93ZXZlciwgdGhlIGRpc2N1c3Npb24gdGhlcmUgaGFzIHJhaXNlZCB0aGUgcXVl
c3Rpb24gd2hldGhlciB0aGUgY29udGVudHMNCj4+IG9mIG1hbi1wYWdlcy1wb3NpeCBhcmUg
cmVkaXN0cmlidXRhYmxlICphdCBhbGwqIC0gZ2l2ZW4gdGhhdCB0aGUgY2xhdXNlDQo+PiBt
ZW50aW9uaW5nIHJlZGlzdHJpYnV0aW9uIGhhcyB2YW5pc2hlZCBmcm9tIHRoZSBsaWNlbmNl
Lg0KPj4NCj4+IENvdWxkIHNvbWVvbmUgcGxlYXNlIGNsYXJpZnk/DQoNClRoZSBwZXJzb24g
d2hvIGNvdWxkIGNsYXJpZnkgdGhpcyBjZXJ0YWlubHkgaXMgTWljaGFlbCBLZXJyaXNrLiAg
SSdtIG5vdCANCnN1cmUgaWYgaGUgd2lsbCBoYXZlIHRoZSB0aW1lIHRvIHJlYWQgdGhpcywg
dGhvdWdoLg0KDQpJJ20gc29ycnkgSSBoYXZlIG5vIGlkZWEuICBQT1NJWCBpcyB0b28gY2xv
c2VkIGZvciBteSB0YXN0ZS4gIEkgdHJpZWQgDQpjb250YWN0aW5nIHRoZW0gYSBsb25nIHRp
bWUgYWdvIHJlZ2FyZGluZyB0aGlzLCBhbmQgSSByZWNlaXZlZCBubyANCmFuc3dlciwgYW5k
IHRoZWlyIHdlYnNpdGUgaXMgYSBsYWJ5cmludGggdG8gbWUuDQoNCkkgZW5jb3VyYWdlIHlv
dSB0byB0cnkgdG8gY29udGFjdCB0aGVtIHdpdGggdGhpcyBwcm9ibGVtLCBhbmQgYXNrIHRo
YXQgDQp0aGV5IGNsYXJpZnkgaXQsIGFuZCBpZiBwb3NzaWJsZSwgdGhhdCB0aGV5IHB1Ymxp
c2ggdGhlIHNvdXJjZSBjb2RlIA0KKGhvcGVmdWxseSB0aGUgcm9mZig3KSwgbm90IEhUTUwp
IHdpdGggd2hhdGV2ZXIgbGljZW5zZSB0aGV5IHdpc2gsIHNvIA0KdGhhdCBJIGNhbiBwaWNr
IGl0IGVhc2lseS4gIEknbSB3b3JyaWVkIHRoYXQgaWYgdGhleSBkb24ndCBkbywgSSB3b24n
dCANCmJlIGFibGUgdG8gcHJvdmlkZSBtYW51YWwgcGFnZXMgZm9yIHRoZSBuZXh0IHJldmlz
aW9uIG9mIFBPU0lYLCBpZiB0aGV5IA0KZG9uJ3QuDQoNCj4+DQo+PiBUaGFua3MgYSBsb3Qs
DQo+PiBDaHJpc3RvcGgNCj4gDQoNClRoYW5rIHlvdSwNCg0KQWxleA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------z3845QS8QQQykw2kbZ3JKBeh--

--------------gFTQEkJeV7nWSiM1FvsyYjfk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmM0Uo0ACgkQnowa+77/
2zKlcg//SwmOH8eNATwVsT+uQwYfUiWSulYUFpyYWJIJjlH+13qRthCZXjU5K16l
3A39Eugi8uWluARn7wFZjN0SSTPHV4Hr05qin65CXd9GrquaxwmBhsxvtBI3HM+v
uGC1hkFqDWQV+OJCPU8h5GDJiEY+A6Hd8adjzGhP8QyV/6e5X4U0p6ZAsYGZCaUK
/pwJ+54cem1zHbLe0FuBazGCh2wEE5iOY7kNARn1uQLeF4rR0LwXTbQJ+1dvvOIv
RbfgGp9RqyhJBSWNFR2mQmwiPQXhZofNkzJPd5yNVijcZoylYAFfmuLxYIHHpGCf
JZVbhD0NrrksMc6bJc6d0Xzu55ndl4q/847OIoHLqYc5xwUGh7vP4gqiFDyeVP8w
JTz4L36uXXuSyEXMwhrIaA6TbNc58369z9nRuNQL1plclfCzrXsvaKkEKEC6zbb6
y1Wb6L/2wKzktETStmrXGu64zkLx/Uhb4nKH4EAsN/eZq52MTlSXOCyfSa1JHEeI
Kv5p2k6FiC3uVTfo9R0gC1Sj9dge6nNKAgPmOg8RRtebHkRCfFvXWS4HKqIkQQWk
J78de14VeQ9Ljv+CdnhZ8xPXdGrJG7hdIAMadk/7NuVrotwRUHEYAMCHov07FI5W
d6NcM4HPyiGWIGJqcV1eo75t4lovXzoU9IgFcs0BK6ZgbUF1A6Y=
=R0A2
-----END PGP SIGNATURE-----

--------------gFTQEkJeV7nWSiM1FvsyYjfk--
