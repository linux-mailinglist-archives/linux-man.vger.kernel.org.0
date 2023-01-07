Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5B4660ED4
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:35:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231835AbjAGMfc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:35:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjAGMfb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:35:31 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44278625EB
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:35:30 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id i17-20020a05600c355100b003d99434b1cfso2837639wmq.1
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RUOO2X7t3PetVxZuy1fsFRbvqOdYjDQPuS8+8kI8iQ4=;
        b=a1p2/aG87viag5xr/C09W8TrrROVRcoGA0BasMDhAK1UqioTf7Q839IJ5rhP+aRarL
         S18qM6vEVkkb+Ljff5IhCF7tMjDC7w45BIQh85east2dO7IdgdzgFf0OjqDtVFzfo9i+
         0NnjTyNOQFfRiYXWs09Q/gzisUl31z430QG5joUufr2cJcKXhqTaBreRMJ60rEinsCUM
         76MuMxlPldYxHpT4PcVvAOztdaHdC3CF25AN/XRkoo1Zy0IBqGuugr32TyKIzQr+c/bq
         KuJEVaBFe1JLmXF2Koq9sCljFv53DGh4xOZAwOecnDULfjNVlmORzHzvPV1sw71ToFzf
         1j2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RUOO2X7t3PetVxZuy1fsFRbvqOdYjDQPuS8+8kI8iQ4=;
        b=o/wBfVhkhFEuM+2LGCILBnPIMJGvbpy7C32Oxfc+Igcozjr5zqXLcfG6UfQPKmkMRh
         ee8aLs3kLdoh+zXvCDeJk/6Sz54hnOvDKMt7K+o7lbDIRNOGHiVWlFH3vEWjp9rlI/R0
         F9r7Z9G0DSuGR0ZJgHGPaCXkM9CLdhJDO6BX8HTraTG4r6lDmrSvdUd00wLEwK2ASA7Q
         mB46qGZNzx5l67AxNRyRndTxNIsFi1aKifP2KJWtExUErn3FOVx6OtlcvDWzvDpYujk1
         tu3Jdx39am3xN2uyRv0D8ruhQB+UJ5ocUtQYi9jtKRn7n2Fti4AgIDhQ8r+F+zkxMIIV
         hgLw==
X-Gm-Message-State: AFqh2krlDbL3sJIde/FOvZ6LQkpY6KGyVpTE/bPAmvYH4tEB7tQNzF9h
        lnodJm5seZAWqzlGzpIzumc=
X-Google-Smtp-Source: AMrXdXuoRIQ9t1I3cZHBDSDA1Xh/HMOlCTLCLw0nQg/1VkN2LRIog/wY2yeyrrqicBNw1mHTPcxfMA==
X-Received: by 2002:a05:600c:1d28:b0:3d2:1d51:246e with SMTP id l40-20020a05600c1d2800b003d21d51246emr45068134wms.9.1673094928872;
        Sat, 07 Jan 2023 04:35:28 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c18-20020a05600c0ad200b003d9c97d82f2sm5136685wmr.8.2023.01.07.04.35.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:35:28 -0800 (PST)
Message-ID: <4520c44e-9bef-1bd9-1cb5-3d1e7e8c2526@gmail.com>
Date:   Sat, 7 Jan 2023 13:35:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 07/10] intro.3: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095509.rh72usl2yif7gkx3@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107095509.rh72usl2yif7gkx3@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zL6qG4foi6CZ1XoWhRF50SkZ"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------zL6qG4foi6CZ1XoWhRF50SkZ
Content-Type: multipart/mixed; boundary="------------OB3dS83v9rswpt6OZphzt0ue";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <4520c44e-9bef-1bd9-1cb5-3d1e7e8c2526@gmail.com>
Subject: Re: [PATCH v4 07/10] intro.3: ffix
References: <20230107095509.rh72usl2yif7gkx3@illithid>
In-Reply-To: <20230107095509.rh72usl2yif7gkx3@illithid>

--------------OB3dS83v9rswpt6OZphzt0ue
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNy8yMyAxMDo1NSwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3cm90ZToNCj4gU2V0
ICJmZWF0dXJlIHRlc3QgbWFjcm9zIiBpbiBpdGFsaWNzIHdoZW4gaW50cm9kdWNpbmcgaXQg
YXMgYSB0ZWNobmljYWwNCj4gdGVybS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEcuIEJyYW5k
ZW4gUm9iaW5zb24gPGcuYnJhbmRlbi5yb2JpbnNvbkBnbWFpbC5jb20+DQoNClBhdGNoIGFw
cGxpZWQuICBUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW4zL2ludHJvLjMgfCA0
ICsrKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMy9pbnRyby4zIGIvbWFuMy9pbnRyby4zDQo+
IGluZGV4IDE3NThjY2FmOC4uZDZkOTFmNmJkIDEwMDY0NA0KPiAtLS0gYS9tYW4zL2ludHJv
LjMNCj4gKysrIGIvbWFuMy9pbnRyby4zDQo+IEBAIC0zNiw3ICszNiw5IEBAIHRoZSBwcm9n
cmFtbWVyIG11c3QgZGVmaW5lIGEgZmVhdHVyZSB0ZXN0IG1hY3JvIGluIG9yZGVyIHRvIG9i
dGFpbg0KPiAgIHRoZSBkZWNsYXJhdGlvbiBvZiBhIGZ1bmN0aW9uIGZyb20gdGhlIGhlYWRl
ciBmaWxlIHNwZWNpZmllZA0KPiAgIGluIHRoZSBtYW4gcGFnZSBTWU5PUFNJUyBzZWN0aW9u
Lg0KPiAgIChXaGVyZSByZXF1aXJlZCwNCj4gLXRoZXNlIGZlYXR1cmUgdGVzdCBtYWNyb3Mg
bXVzdCBiZSBkZWZpbmVkIGJlZm9yZSBpbmNsdWRpbmcNCj4gK3RoZXNlDQo+ICsuSSBmZWF0
dXJlIHRlc3QgbWFjcm9zDQo+ICttdXN0IGJlIGRlZmluZWQgYmVmb3JlIGluY2x1ZGluZw0K
PiAgIC5JIGFueQ0KPiAgIGhlYWRlciBmaWxlcy4pDQo+ICAgSW4gc3VjaCBjYXNlcywNCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------OB3dS83v9rswpt6OZphzt0ue--

--------------zL6qG4foi6CZ1XoWhRF50SkZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5Zw8ACgkQnowa+77/
2zKhMw//RG/5xO5wK26DErLA9QPud2NqC/JabOV1ONGyAf+QH9FkZTHdcJwCDn7J
aTHMm5Yy0mbzYn3EkdA8blD92ViYSTzO6gAuSkrOde1uBZ+gj2z5++qWwk5n5Wh/
qEMxW/Vu2xsZnC4uqxC1XvH3H/BKvCHS+Bp0QNTQEnLaCgGqYwiZh/hYLjCQKKtg
PoKgK37h8MkvUckJI0amd1rnqOBtSvzHYGBM1DSEHdo79hPqi0tQaqRQy/a7fqaG
Jk9o8Wz+yyU00nhZMto9w4WxkUXKgWa+ZyXmxw4m1M0h0gWB2uKfOf8SsSG6y1O0
mEx31JnLWcDXSQDGxFIu52q6KfWmC+jiPRiuZcAx12SJrKPzeMalRY8aOHAysl33
EagBwAiF3jKhVaID0OrGzBVf6Q7Z3FADTQ2rYe6eQBPLmVu6xkrX17we1Mh43t0v
jwL6R2tVc0XBkNPk/344TpTUVlM2riwaKlSAdOmb0YGq0VoekkSEp6zu/rOSzuM4
yjagAqfRoATRL0bmYK2d1PsJDZNRPzWDgm42+PfdYIQFPBUUR7nw5X9vxfY/2CPc
iY4wJ/hXFa6lPU0jJPEpkZA+1OUgF2oaTcTFwB2G7u6kDwWkoewFUsAbKYmmyaDe
pbr7GiBLulvA75cGP7kOcfENcL1rNFPeSvrrK/7n4bA68lvRHdU=
=rZzW
-----END PGP SIGNATURE-----

--------------zL6qG4foi6CZ1XoWhRF50SkZ--
