Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8E6457B2FA
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 10:30:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240496AbiGTIak (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jul 2022 04:30:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240577AbiGTIab (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jul 2022 04:30:31 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C9825C36C
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 01:30:29 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id b21-20020a05600c4e1500b003a32bc8612fso290114wmq.3
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 01:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=noTFSBxKNhCm7bh7L/RgdPXoL9dObgeg2BVjzD3FwkI=;
        b=nrOdaZuAmVaVE5PwmTTMfnJ6VK+spXC+VmI3a1uonGkLwOUCQcNa1iBEj+aptCfTlo
         xT7IpzypXfU0xjKBgCw8E0J2ib82eqB+21ecOkHxZBUM8fdKGHduUCG7L9qiH8FVsmLY
         Uk036IfMHYEXk+TsSd6RL1jpQDmQ+DBBVj+s0nyWnL4ORmkAyQ8mDxoAmqpJk6kL+rlS
         Fs033MMFL7qkC5bBGOhBbonG31PgKJK8QteLVZk1tncvyW7Hj5xtsgqLtUUV1shRS+05
         mtUI1nAqWwig8BZalcdECT09vffyzKr7JBO1UXat1j27KyT5KdoqRvrJnPkCvDQz9tsD
         Bw2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=noTFSBxKNhCm7bh7L/RgdPXoL9dObgeg2BVjzD3FwkI=;
        b=dqUSFse434ifsrwBa531vW2PyzewkULpmeS5yi7IRHcntT8Qhx9SJ5fWpgfrLhB0tG
         /Xx+GV5WErdYHVO33vzlFRiA6rexeSvkABzpOi6xnnFaaXD3M75xo2QXtSLlNBlEHDpq
         eBYWOoLSK6Cw8riPTCWcW3SZst6AIlp+8pSXu/dj8kLpdSzJs5Sx8jeU7Qe/VpzHw13b
         qF2JlVYsyo0VLZk4+70GtYFQ9UgETXm/oPYmP8a/s4xlL4tTXrGDPF+Q3oAsh1GiEnE8
         1Aw/IpVcmhi/6UEsChw520h+kE3hTW480MNWBTjkTX/gjQH4Mx72857fo+6KRnY9XS2e
         0BRA==
X-Gm-Message-State: AJIora+Q+ycrAtXzGz88eKnM+fUrUOyjxMFYqHzH14KxTkcxGW/WRMXD
        gyA5iq/tLaG7MkB1biaXHJKS2o4H3TU=
X-Google-Smtp-Source: AGRyM1vvtEgdjvI1Oj/FbT5xSPqt9dOlYQNr+8T9Dn0RhgzOKZnGGBOzm1LiDRg4Enhd68eWqvb3sA==
X-Received: by 2002:a7b:c30d:0:b0:3a1:861a:b9bc with SMTP id k13-20020a7bc30d000000b003a1861ab9bcmr2720336wmj.97.1658305827644;
        Wed, 20 Jul 2022 01:30:27 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a8-20020a056000100800b0021db2dcd0aasm17754400wrx.108.2022.07.20.01.30.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 01:30:27 -0700 (PDT)
Message-ID: <6e5af7e6-6cf9-ef64-6cc9-128065ecfe49@gmail.com>
Date:   Wed, 20 Jul 2022 10:30:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v4 2/2] ctime.3: remove struct tm vestigia
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
 <8e3832e8b0f0c674f0f22682c46d8cebb8122091.1658270131.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <8e3832e8b0f0c674f0f22682c46d8cebb8122091.1658270131.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Y1XxW7PYZcXq0qrPnUinGCrM"
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
--------------Y1XxW7PYZcXq0qrPnUinGCrM
Content-Type: multipart/mixed; boundary="------------ztvekX4TfgtL0R3zFFlRDv5E";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <6e5af7e6-6cf9-ef64-6cc9-128065ecfe49@gmail.com>
Subject: Re: [PATCH v4 2/2] ctime.3: remove struct tm vestigia
References: <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
 <8e3832e8b0f0c674f0f22682c46d8cebb8122091.1658270131.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <8e3832e8b0f0c674f0f22682c46d8cebb8122091.1658270131.git.nabijaczleweli@nabijaczleweli.xyz>

--------------ztvekX4TfgtL0R3zFFlRDv5E
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxIQ0KDQpPbiA3LzIwLzIyIDAwOjM2LCDQvdCw0LEgd3JvdGU6DQo+IHN0cnVj
dCB0bSBub3cgbGl2ZXMgaW4gdG0uM3R5cGUsIGFuZCB3ZSBkZXNjcmliZSBib3RoIG9mIHRo
ZXNlIGZpZWxkcywNCj4gaW4gZGV0YWlsIGFuZCBjb3JyZWN0bHksIHRoZXJlaW4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlhIFppZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBu
YWJpamFjemxld2VsaS54eXo+DQoNCkdyZWF0IGpvYiEgIFBhdGNoIHNldCBhcHBsaWVkIQ0K
DQpUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW4zL2N0aW1lLjMgfCAxNSAtLS0t
LS0tLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMTUgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvbWFuMy9jdGltZS4zIGIvbWFuMy9jdGltZS4zDQo+IGluZGV4IGQy
MjhiZGMyMS4uNjBlZTQ0MThkIDEwMDY0NA0KPiAtLS0gYS9tYW4zL2N0aW1lLjMNCj4gKysr
IGIvbWFuMy9jdGltZS4zDQo+IEBAIC0zNTYsMjEgKzM1Niw2IEBAIEluIG1hbnkgaW1wbGVt
ZW50YXRpb25zLCBpbmNsdWRpbmcgZ2xpYmMsIGEgMCBpbg0KPiAgIC5JIHRtX21kYXkNCj4g
ICBpcyBpbnRlcnByZXRlZCBhcyBtZWFuaW5nIHRoZSBsYXN0IGRheSBvZiB0aGUgcHJlY2Vk
aW5nIG1vbnRoLg0KPiAgIC5QUA0KPiAtVGhlIGdsaWJjIHZlcnNpb24gb2YgXGZJc3RydWN0
IHRtXGZQIGhhcyBhZGRpdGlvbmFsIGZpZWxkcw0KPiAtLlBQDQo+IC0uaW4gKzRuDQo+IC0u
RVgNCj4gLWxvbmcgdG1fZ210b2ZmOyAgICAgICAgICAgLyogU2Vjb25kcyBlYXN0IG9mIFVU
QyAqLw0KPiAtY29uc3QgY2hhciAqdG1fem9uZTsgICAgICAvKiBUaW1lem9uZSBhYmJyZXZp
YXRpb24gKi8NCj4gLS5FRQ0KPiAtLmluDQo+IC0uUFANCj4gLWRlZmluZWQgd2hlbg0KPiAt
LkIgX0JTRF9TT1VSQ0UNCj4gLXdhcyBzZXQgYmVmb3JlIGluY2x1ZGluZw0KPiAtLklSIDx0
aW1lLmg+IC4NCj4gLVRoaXMgaXMgYSBCU0QgZXh0ZW5zaW9uLCBwcmVzZW50IGluIDQuM0JT
RC1SZW5vLg0KPiAtLlBQDQo+ICAgQWNjb3JkaW5nIHRvIFBPU0lYLjEtMjAwMSwNCj4gICAu
QlIgbG9jYWx0aW1lICgpDQo+ICAgaXMgcmVxdWlyZWQgdG8gYmVoYXZlIGFzIHRob3VnaA0K
DQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------ztvekX4TfgtL0R3zFFlRDv5E--

--------------Y1XxW7PYZcXq0qrPnUinGCrM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLXvSIACgkQnowa+77/
2zKQnw/+Nh7972Dnhxa2JMSYkZd2tyBQihhplcV8+b5D2mOnd42ROU+DPmw8pKXO
A4AJa3SoiE+rNnKZEmyYvlfJb8YTs3m6YTQfstAoglY83hX/mK0ijwZ1n4Nxthsf
lZj4NZjY5i1+sio9PjFcqwjO/++t5fUN6v1UF9SpmhkKw+WJznJn0jsJ45EeGtOg
ttHkJwcqKJmCCASPAuay60IKAEmDSh2X/RtIktLxWupOtXvEcgtLslAudp007tBU
3dfVoY5UCby49zaRFHTWxRlqy3IUJcsZDnRST/Rdc2ImdetwXpfFukYmhZ7VjD1X
CkGjuA6eyZgS/jo63iDSP+DgPLPBgCRa9jcJ2wSbV/2gdr05O9BLmUnBDbEIc7jE
5eLS3eNius/GVMPtxb54yxhKkyWoyw2q+QTtBNM1XbcirYKXcyEjwHOD0pC0Dqh/
JclGh8O1COLmWE6CKIkTwRzpXKeRbRPfI0T0RvLUpsaWFXJnZxphd3YIJWDNNPQI
Cd3a5rbnrctiHKh1Vis1SWlYQLNfphzTz5+i9oITEAlW5Cs/4OR+0Yjw9D5A6aa5
0GzLdyB2n1XQU0jntiz+v/yG1xSSiIvA7NKn3gl8QzibKSTYv16RO8a/qh0Rta75
/g2XiQ2MG29UmFasQjLRyFj/3KkdoiQ7tXZtjJuK/W/Us3fQaoQ=
=2XJy
-----END PGP SIGNATURE-----

--------------Y1XxW7PYZcXq0qrPnUinGCrM--
