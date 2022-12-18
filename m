Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47DC764FE84
	for <lists+linux-man@lfdr.de>; Sun, 18 Dec 2022 12:01:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230321AbiLRLBv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Dec 2022 06:01:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230355AbiLRLBu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Dec 2022 06:01:50 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E3A865B0
        for <linux-man@vger.kernel.org>; Sun, 18 Dec 2022 03:01:49 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id m14so6270023wrh.7
        for <linux-man@vger.kernel.org>; Sun, 18 Dec 2022 03:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yUrPcO8tBgQk0+dQC5ITiA3IIy3Za7YwCYkyrhjzrIE=;
        b=GZqHU1qiYJ1caUMZvGbI89iGehpK/Js6902vTXXnm7IOnewsNXpWtxHtQPvKDbOmPj
         B4GggMEVLQfc05TCGU6xyeuE5QY39oXn4aJorfmBP0H2AhWF2bjBqTZjv/Y4cIE4OrDn
         wUQqR6Bkq6kRNPCB4634+7ZH1cxdVDSMpAgnNB29ie3XeA4dqh4Qxa/UtDZiciUxg36P
         K84e0tW5cUq7Rs2EuTYs5Hjat7V8HSqvpDV7NaCWU38jbO+ZVe/FEOCOoWIr7OrxeJqS
         glOaBjuO6LvpIg77/h8KNTDLnt2Ty1qegJm1KKuP7WHXpOScHaNBgTZD/aEAQlRfFJsD
         AKgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yUrPcO8tBgQk0+dQC5ITiA3IIy3Za7YwCYkyrhjzrIE=;
        b=zYB4saNecythfsOaD6wSMogxnlTrSMsz6CsgC9XVOy+iukPbpZBJWUzmxhKvNuEp6U
         xswwNXm8KzpDoEoMimNAv9YbH10/Y27dmH1tzibOg9ZeqCu1CagNlu3iDgpDEfcwDUaP
         ZYOam+TrODYHcrkXoqd6Dbw0aXI8JZNGcycwvpYK3uQJ0U/yEAxNx45wkrP2IMXcABcK
         pvYh9B+SXrUyYCoB4K7xTDKEUSNHQ2NTikQEIgNcYe7zUVm0Bwvq5i7XDdsNYp9HB4pP
         v4FkTUoD+NaLon1TQTubogyJ7fuyjSCr09gMXUMHKf6Go0zpT/EkRvEZPi68IDSsFnWw
         fG5w==
X-Gm-Message-State: ANoB5pn22FeAZHxWaLL3t7bME+tESdVYgr/Z1i8jEs1JMKZP+c9FQnzP
        ubKb4HNuMxxsGvG+qJhaVEsK//eqsuo=
X-Google-Smtp-Source: AA0mqf50K1mP30IS9iZP8thS18YVsNThjPUuXqUzVzAE7mjROczpr/+g2xAtCS7XXeaRbL3LM87LuA==
X-Received: by 2002:a5d:6f1d:0:b0:242:67f2:9af7 with SMTP id ay29-20020a5d6f1d000000b0024267f29af7mr25817107wrb.69.1671361307466;
        Sun, 18 Dec 2022 03:01:47 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y12-20020adffa4c000000b002258235bda3sm7014600wrr.61.2022.12.18.03.01.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Dec 2022 03:01:46 -0800 (PST)
Message-ID: <6373562d-e5dc-b4e8-5d10-15514dc292b7@gmail.com>
Date:   Sun, 18 Dec 2022 12:01:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [BUG] gropdf, tbl: Completely broken table
To:     Ralph Corderoy <ralph@inputplus.co.uk>, groff@gnu.org,
        linux-man@vger.kernel.org
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <20221218054944.CB0F32083C@orac.inputplus.co.uk>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221218054944.CB0F32083C@orac.inputplus.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7FGN0NvMVwcUN7Dd4i07C0Ot"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7FGN0NvMVwcUN7Dd4i07C0Ot
Content-Type: multipart/mixed; boundary="------------jpE4CYgxglpLh2RvvXIa6fsW";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ralph Corderoy <ralph@inputplus.co.uk>, groff@gnu.org,
 linux-man@vger.kernel.org
Message-ID: <6373562d-e5dc-b4e8-5d10-15514dc292b7@gmail.com>
Subject: Re: [BUG] gropdf, tbl: Completely broken table
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <20221218054944.CB0F32083C@orac.inputplus.co.uk>
In-Reply-To: <20221218054944.CB0F32083C@orac.inputplus.co.uk>

--------------jpE4CYgxglpLh2RvvXIa6fsW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUmFscGghDQoNCk9uIDEyLzE4LzIyIDA2OjQ5LCBSYWxwaCBDb3JkZXJveSB3cm90ZToN
Cj4gSGkgQnJhbmRlbiwNCj4gDQo+PiBUaGUgc3VmZml4ZXMoNykgcGFnZSwgd2hpY2ggSSd2
ZSBtYW5hZ2VkIHRvIG5ldmVyIHNlZSBpbiAyNSB5ZWFycyBhcyBhDQo+PiBHTlUvTGludXgg
dXNlciENCj4gDQo+IE1lIG5laXRoZXIuDQoNCk1lIG5laXRoZXIuICBJIGp1c3QgZm91bmQg
aXQgYmVjYXVzZSBpbiB0aGUgUERGIGl0IHdhcyBuZXh0IHRvIHN0YW5kYXJkcyg3KSwgDQpJ
SVJDLiA6KQ0KDQo+IA0KPiAgICAgICAgICAudGV4dCAgICAgICAg4pSCIHRleHQgZmlsZQ0K
PiAgICAgICAgICAudHh0ICAgICAgICAg4pSCIGVxdWl2YWxlbnQgdG8gLnRleHQNCj4gDQo+
IEkgZG9uJ3QgcmVjYWxsIHNlZWluZyAudGV4dCB1c2VkIGFzIGl0J3MgdGhlIGRlZmF1bHQg
b24gVW5peC4NCj4gLnR4dCBpcyBhbiBpbXBvcnQgZnJvbSBmb3JlaWduIGxhbmRzLg0KDQpJ
IHNvbWV0aW1lcyB1c2UgLnR4dCBmb3Igc29tZSBub3RlcyBvciBBU0NJSSBhcnQsIGp1c3Qg
dG8gcmVtaW5kIG15c2VsZiB3aGVuIEkgDQpzZWUgdGhlIGZpbGUgbW9udGhzIG9yIHllYXJz
IGFmdGVyIHRoYXQgaXQncyBqdXN0IHRleHQsIGFzIG9wcG9zZWQgdG8gZm9yIA0KZXhhbXBs
ZSBhIHNjcmlwdCwgZm9yIHdoaWNoIEkgZG9uJ3QgdXNlIGV4dGVuc2lvbnMuICBEaXJlY3Rv
cnkgb3JnYW5pemF0aW9uIA0Kd291bGQgYmUgbW9yZSB1c2VmdWwsIGJ1dCB3ZSBhbGwga25v
dyB0aGF0IHdoZW4geW91IHdyaXRlIHNvbWV0aGluZyBmYXN0IHN1Y2ggYXMgDQp0ZXh0IG5v
dGVzLCB5b3UgZG9uJ3QgYWx3YXlzIGZvbGxvdyB0aGUgYmVzdCBvcmdhbml6YXRpb24uLi4N
Cg0KPiANCj4gICAgICBCVUdTDQo+IAlUaGlzIGxpc3QgaXMgbm90IGV4aGF1c3RpdmUuDQo+
IA0KPiBKdXN0IGRlbGV0ZSB0aGUgcGFnZSBhbmQgYW55dGhpbmcgdGhhdCByZWZlcnMgdG8g
aXQuICBCdWcgZml4ZWQuDQo+IEVpdGhlciB0aGUgdXNlciBoYXMgdGhlIEludGVybmV0LCB3
aGljaCBpcyBleGhhdXN0aXZlLCBvciB0aGV5J3JlIHNhdnZ5DQo+IGVub3VnaCB0byB1c2Ug
YSBzeXN0ZW0gd2l0aG91dCB0aGUgSW50ZXJuZXQgYW5kIGRvbid0IG5lZWQgc3VmZml4ZXMo
NykuDQoNCkJ1dCBub3cgdGhhdCBJIGtub3cgaXQsIGl0J3MgYW4gaW50ZXJlc3RpbmcgdGhp
bmcgdG8ga25vdy4gIFdlYiBzZWFyY2ggZW5naW5lcyANCnNvbWV0aW1lcyAobW9yZSBvZnRl
biB0aGFuIG5vdCkgZGlzYXBwb2ludCBtZTsgZXNwZWNpYWxseSB0aG9zZSB0aGF0IGRvbid0
IHRyYWNrIA0KbWUuICBIYXZpbmcgdGhlIHBhZ2UgYXJvdW5kIGNhbiBiZSB1c2VmdWwuICBJ
J2xsIHRyeSB0byB1cGRhdGUgd2l0aCB3aGF0ZXZlciBuZXcgDQpleHRlbnNpb24gSSBtZWV0
IGFuZCBpcyBub3QgZG9jdW1lbnRlZC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------jpE4CYgxglpLh2RvvXIa6fsW--

--------------7FGN0NvMVwcUN7Dd4i07C0Ot
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOe8wsACgkQnowa+77/
2zLfNA//Uwa7sJ8oEHRWU1h8Xmwol3eeGx89+P1QSRrVSVDwiiQubAWzBxKLgl6m
y0d1S6cqFr92jvRzlaEG6hBSuiJtNqr0kESMz9+AYZzbQ1pAjswn8hF9Q8vniGyK
LAFFj7J0t0CpcOnmSNv0sCua8uJEE0/+NvSSjGoqKTFk3tlYONoHO5jzj7GK0Hb7
rso21I2m/vV3EtytgITJWKnNJYYBx0iuJLEXbPpfge4UXKHzm//MQf8vjmPfhEo7
Ehhy4Mzn723uORgnr6oFKrGjX581w74ZoHDD08HSwLX7mGk/VXva4l+2JPHmcM3K
pwPM/s9MQ5qUnXdL0tyLvsHrDU1IXDsFFS1mrsdYtuaSMmMWZJovhk/XwZUtwHgC
RFo9J3Tulvv75quloITl2hNAuTK+k10dnAZpx4eg6vs5yyeuVfhxyzQvl27HlqBn
TujN7Q+iAwvxva4JIl/h/BDD8XEQx4V5RFEYBvc5/teNcTXSUSZLpwqJBUjh4T7D
NVjGVuRjR9exI5NN9zXF67vtfa00aU3aL46PhEqE/8v2TtQqM0dNsdQGL3Oyc6Kf
8Iq5Bxk4WNGRk4tNB4zrKLk3hw67TCHP39fXVqmq1353D4sHpMcR8PGve05zYje6
pi8v08K5pKmSj4v3IfvysyeoxEhW4LTJ0tgcqO+AWEdvxGNqCj4=
=cOdL
-----END PGP SIGNATURE-----

--------------7FGN0NvMVwcUN7Dd4i07C0Ot--
