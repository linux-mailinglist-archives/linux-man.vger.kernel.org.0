Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B16E4600BB8
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 11:58:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231531AbiJQJ6V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 05:58:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231508AbiJQJ6U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 05:58:20 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1320F50718
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 02:58:17 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id bu30so17627118wrb.8
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 02:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H39fCi72+6qnPlLAfPg4/WKulz32crcL5Wp80yGwqpo=;
        b=Kl3VSPtHd84dfDo5NY9vLCaAs/QjmPUMBEIye3H5tP6olsv3DI/4EKHrrUmGCZ5Olc
         FNm0XD0XsypcHfnt8K0RFg6WAYaMx3LKR5HNmu3t3jy+HSPUOiOecW10Rbi8OXNhuRGm
         TIjQyRMvPoH0GAcIr3Xx7NihDswo/pYDmZVFMHbwNvpOQzvm3FmeYSnJx76CK25L8GuT
         arLQEnbXe8EhS4DuIRtgVdFN6S3cLp3G4hZ16mY8A/AMTGifdI6QjfMoz1UZfk+5vuff
         wJFgUZyBMlBgHM4kGtQQpPOaNN9n8J1WnZcako0nyBjNEMhAi/qfvyQ82wQbnObdRNmL
         g3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H39fCi72+6qnPlLAfPg4/WKulz32crcL5Wp80yGwqpo=;
        b=FiiPFaY/gNP6qqZ1WE4niKvP4ymrR5Kyx7ydtVhnvdwqRT3yjmyN7um6toYO41/86B
         E3lhS+lSUDChGOZBqEm0C5nmaG+y+SnOqm1N5XhAN57hYqwdSLFSPumOBFJNa2JSPJxE
         ljQI0t5p+uMYPqEO62EMcp7a1tEl7FkVs2d1vqvXAGS5JDhmu2tyxXuj7SKTgF0H8bzS
         tVabF/VU+whE5pdco6Rmn0gE2flHG5+QzVxOc0eFsd4ZY7Nju4KytQh3C0BmzoprywCV
         kETrUbEO6vSGMgmAaqVt37yprYatDHg8XEpow644MICElcaeQAyVwJ0VKp79O6nFYzz7
         f9RA==
X-Gm-Message-State: ACrzQf2PiUCy/0NmHnl692FvZ+96Jg4lgTbaTB0QZvd22u1t3zC+oWWo
        b9/klAi2ydfkChQSjeEctwJA0zKGjJE=
X-Google-Smtp-Source: AMsMyM7rWCt3a2P0r99gp1ntyookGrQipVVug8Z2YTatMEC26Pqjoxd+yVF98+Dem3YmZ4CpXJ9xWg==
X-Received: by 2002:a5d:64e2:0:b0:22e:7060:b4a7 with SMTP id g2-20020a5d64e2000000b0022e7060b4a7mr5361376wri.129.1666000695992;
        Mon, 17 Oct 2022 02:58:15 -0700 (PDT)
Received: from [192.168.43.80] ([31.221.171.215])
        by smtp.gmail.com with ESMTPSA id o14-20020a05600c4fce00b003c6b67426b0sm15644440wmq.12.2022.10.17.02.58.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 02:58:15 -0700 (PDT)
Message-ID: <2b229c8d-9456-654a-d6a9-8b2727d8af41@gmail.com>
Date:   Mon, 17 Oct 2022 11:58:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] ascii.7: chase down History to earliest
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
Content-Language: en-US
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tjRtLhiihCZu3tye6C8vVygM"
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
--------------tjRtLhiihCZu3tye6C8vVygM
Content-Type: multipart/mixed; boundary="------------vLHZkvSdwELWZJ2II9w5bl1D";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <2b229c8d-9456-654a-d6a9-8b2727d8af41@gmail.com>
Subject: Re: [PATCH] ascii.7: chase down History to earliest
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
In-Reply-To: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>

--------------vLHZkvSdwELWZJ2II9w5bl1D
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDEwLzE3LzIyIDAzOjIyLCDQvdCw0LEgd3JvdGU6DQo+IENmLiwgd2VsbCwg
dGhlIFVOSVggUHJvZ3JhbW1lcidzIE1hbnVhbDoNCj4gICAgaHR0cHM6Ly93d3cudHVocy5v
cmcvQXJjaGl2ZS9EaXN0cmlidXRpb25zL1Jlc2VhcmNoL0Rlbm5pc192MS9VTklYX1Byb2dy
YW1tZXJzTWFudWFsX05vdjcxLnBkZg0KPiBQREYgcGFnZSAxOTE7IHllcywgdGhlIHR5cG9n
cmFwaGljYWwgY29udmVudGlvbiBoZXJlIGlzIGluc2FuZSwgYW5kDQo+IHRoZSBjb250ZW1w
cmFyeS1jb3JyZWN0IHdheSB0byByZWZlciB0byB0aGlzIHBhZ2UgZnJvbSB3aXRoaW4gdGhl
IG1hbnVhbA0KPiB3b3VsZCBiZSAvanVzdC8gIi9ldGMvYXNjaWkiLCBidXQsIGdpdmVuIHRo
ZSBjb250ZXh0LCAiL2V0Yy9hc2NpaSAoVklJKSINCj4gbWFrZXMgdGhlIG1vc3Qgc2Vuc2Ug
dG8gbWUNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlhIFppZW1pYcWEc2thIDxuYWJp
amFjemxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQo+IC0tLQ0KPiAgIG1hbjcvYXNjaWku
NyB8IDQgKy0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW43L2FzY2lpLjcgYi9tYW43L2FzY2lp
LjcNCj4gaW5kZXggMWJiYTdiYmFhLi43MWU4OTM4NGIgMTAwNjQ0DQo+IC0tLSBhL21hbjcv
YXNjaWkuNw0KPiArKysgYi9tYW43L2FzY2lpLjcNCj4gQEAgLTEzNCw5ICsxMzQsNyBAQCBG
OiAvID8gTyBfIG8gREVMDQo+ICAgLmZpDQo+ICAgLlNIIE5PVEVTDQo+ICAgLlNTIEhpc3Rv
cnkNCj4gLUFuDQo+IC0uQiBhc2NpaQ0KPiAtbWFudWFsIHBhZ2UgYXBwZWFyZWQgaW4gVmVy
c2lvbiA3IG9mIEFUJlQgVU5JWC4NCj4gKy9ldGMvYXNjaWkgKFZJSSkgYXBwZWFycyBpbiB0
aGUgVU5JWCBQcm9ncmFtbWVyJ3MgTWFudWFsLg0KDQpJIHdvbmRlciBpZiAnLkJSIC9ldGMv
YXNjaWkgKDcpJyB3b3VsZG4ndCBiZSBiZXR0ZXIuDQoNCkFsc28sIHNob3VsZG4ndCB3ZSBj
bGFyaWZ5IHRoZSBWZXJzaW9uIDcgb2YgdGhlIFVOSVggUHJvZ3JhbW1lcidzIA0KTWFudWFs
PyAgT3Igd2FzIGl0IG9ubHkgY2FsbGVkIHRoYXQgd2F5IGluIFY3PyAgSSBpZ25vcmUgbXVj
aCBvZiBoaXN0b3J5IA0KYWJvdXQgdGhvc2UgdGltZXMsIGJ1dCBJIGd1ZXNzIG9sZGVyIHZl
cnNpb25zIGFsc28gdXNlZCB0aGUgZXhhY3Qgc2FtZSANCnRpdGxlLCByaWdodD8NCg0KTWF5
YmUgc29tZXRoaW5nIGxpa2U6DQoNCi5CUiAvZXRjL2FzY2lpICg3KQ0KYXBwZWFycyBpbiB0
aGUgVU5JWCBQcm9ncmFtbWVyJ3MgTWFudWFsIGluIFZlcnNpb24gNy4NCg0KSSBkb24ndCBr
bm93IGlmIHdlIHJlZmVyIHRvIHRoYXQgdGhpbmcgaW4gb3RoZXIgcGFnZXMuICBJZiBzbywg
aXQgbWlnaHQgDQpiZSBpbnRlcmVzdGluZyB0byBjaGVjayB0aGUgc3ludGF4IHVzZWQgdGhl
cmUgZm9yIGNvbnNpc3RlbmN5Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAgIC5QUA0KPiAg
IE9uIG9sZGVyIHRlcm1pbmFscywgdGhlIHVuZGVyc2NvcmUgY29kZSBpcyBkaXNwbGF5ZWQg
YXMgYSBsZWZ0IGFycm93LA0KPiAgIGNhbGxlZCBiYWNrYXJyb3csIHRoZSBjYXJldCBpcyBk
aXNwbGF5ZWQgYXMgYW4gdXAtYXJyb3cgYW5kIHRoZSB2ZXJ0aWNhbA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg0K

--------------vLHZkvSdwELWZJ2II9w5bl1D--

--------------tjRtLhiihCZu3tye6C8vVygM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNNJy4ACgkQnowa+77/
2zL+Mg/+IaAgK54AYgzJ+pdX90ta7Vog477/xnepbOQYN6JHWdO1+UTk7kZYMhw4
lbu+kG3qP+1YdN3EIyniH7+jbk6NWyq/zLxZGY0w9aMeqdrAXLc0xZZArtOuGKR9
xk0sBM4RYIocHOslyMsJDqv+HJeg+bLgJov8KE3LR+/4JqZTfLkmQ23E/Gmru+G3
lJIct+jNym4Lx5yY+E7Vowr8T3AFnPRKYlQuH0EZCe0iwvK8uI6mW01BGOoiYtGJ
ay8wtbrIysICj0P+F53XYtXTqBnJ2e7DclNzexJ2MpOGZs9EDhR2ZFpkEJkBN/sc
VuVvzqde0o43uU01cqUNQm7DsyZ0r1IDcREMIFQXFGzK+rq7v+HCZf56LnyOXt2O
mespuUxhA72j4YwkaU4sFlxYCGbP0n+511wLje1/pxIeppTFDAYaM8ejHBBYn9b/
32uEijLgnnPYH3+xQFwnVZ++M9lwq9zCIgPfLgNHGtMcyKfuHTlKJAmGGsxls/j1
Y1PetPDjkH4byetT0/3/T1CwSr8/tYv8uRs4eQMi4KNaTKinxc7JFIAd8PtOKU+l
UAZNpOkudg7nLQELvYewW8D+7J4afL1EzxpUXYMJ6GS5t8cos7xnco001rnn9o8Z
R8uhhCh6QOqOWGFlZ6L0ZNSZqnDxdJ9R0lmWBRduWf3cI8WoSTo=
=ZFos
-----END PGP SIGNATURE-----

--------------tjRtLhiihCZu3tye6C8vVygM--
