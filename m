Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2BE86180CD
	for <lists+linux-man@lfdr.de>; Thu,  3 Nov 2022 16:13:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231946AbiKCPNk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Nov 2022 11:13:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231875AbiKCPNi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Nov 2022 11:13:38 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD22255BC
        for <linux-man@vger.kernel.org>; Thu,  3 Nov 2022 08:13:36 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id j15so3266625wrq.3
        for <linux-man@vger.kernel.org>; Thu, 03 Nov 2022 08:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3L1WbB9yX1vF8bKrsIQAjcTtJBuXqsmLvuspzPK2Z2g=;
        b=p9jvYNjuMe73nc/I3yeAXYpBbTuK0Kilp+xmB/RVQMnnJVSRyAthBy6NhJSRfNasq1
         LrVLcNtrnklx0g6Zh8MWNN16sUdaE6uTtjhxmF4A+v/3cjYpZoRLiWvrnpU0tLB+7u3n
         /MFJhbtghQC1v54XvqN31p+yNA4oXBNTpdFt4etN6Eq2SkLBUZNFCzNkIGUvGm3/lakq
         UxdUAnhOTk9dR3OV4EjRxgzj08eUdZqAZWLyufJWhvCZFtUE0ZYH2/OA/Z8M5O4asyw8
         UKhq4dvPh8A9vgsQa0OUKubONc1A57i7WD+eBs7f5TYDMqLkqSlcNFtp7vyPVkzpwkFW
         d19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3L1WbB9yX1vF8bKrsIQAjcTtJBuXqsmLvuspzPK2Z2g=;
        b=6oM9xJOaCF8VtXv1q1Bz8K/Uij3TPDzBv+R4Nq+cSKxHHI0rMDYdoI7E86tML385vc
         /8m1TlJ14yiNl2PIPqet4CfNksfRiJPtFD17/9wufdXr92xm83ZXdjYOG8i9zbVRr/pM
         6qswrYe2WkoccYpuCKPv0PMIpQFaYCSpXgNXTDR42mnZ3KKz48CicTwi0zsM4EU3MARC
         AKZBsu34/hWMA2j5qmSGvoojt18G73pboPEgpXNzp3n9bjTXe28viYZpTV4L2SYiSA85
         i0G8b/hUAVeyuPLLmRTRPTaByPL1iDScYaeiIs4pY0GO+5UjjbVind1nHfD9y6Fha13N
         j+vQ==
X-Gm-Message-State: ACrzQf2l9IwWEqr5fucBntkZqkBuxMnB6kUSR1OGnG1kOidsI9ttrWs/
        TQRnbwnvZTiQg0KSYaAImUjtgwY6WEg=
X-Google-Smtp-Source: AMsMyM5kGrzZiiWiXyWIc9ux6viNJsSw7smDVcoF159MIChKlu+OaCtwNurc8dTGEUIZDpN65a3kBQ==
X-Received: by 2002:a5d:4f8d:0:b0:236:714b:29f0 with SMTP id d13-20020a5d4f8d000000b00236714b29f0mr18311336wru.145.1667488415261;
        Thu, 03 Nov 2022 08:13:35 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j13-20020a05600c190d00b003b47e8a5d22sm135813wmq.23.2022.11.03.08.13.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 08:13:34 -0700 (PDT)
Message-ID: <f7dc0e92-6775-1e1e-c43f-3b6d0a5fd8f6@gmail.com>
Date:   Thu, 3 Nov 2022 16:13:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: Report man-pages-6.01 bug
To:     1092615079 <1092615079@qq.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <tencent_A7B85DF7875B85CB9A7DDFB793F193852F07@qq.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <tencent_A7B85DF7875B85CB9A7DDFB793F193852F07@qq.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jffk0ertcca95WmX787p04Oq"
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
--------------jffk0ertcca95WmX787p04Oq
Content-Type: multipart/mixed; boundary="------------2skV5nHoovywf8k9E9A9cjNc";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: 1092615079 <1092615079@qq.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <f7dc0e92-6775-1e1e-c43f-3b6d0a5fd8f6@gmail.com>
Subject: Re: Report man-pages-6.01 bug
References: <tencent_A7B85DF7875B85CB9A7DDFB793F193852F07@qq.com>
In-Reply-To: <tencent_A7B85DF7875B85CB9A7DDFB793F193852F07@qq.com>

--------------2skV5nHoovywf8k9E9A9cjNc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCk9uIDExLzMvMjIgMDk6MDEsIDEwOTI2MTUwNzkgd3JvdGU6DQo+IERlYXIg
RGV2bG9wZXIsDQo+ICDCoCBJbiB0aGUgRVhBTVBMRVMgb2Ygc2htX29wZW4gaW4gbWFuLXBh
Z2VzLTYuMDEgc2VjdGlvbiAzLMKgIGkgdGhpbmsgdGhlwqB1c2FnZSANCj4gb2YgdmFyaWFi
bGUgc2htcCBpbiB0aGXCoGNvZGUgb2YgcHNobV91Y2FzZV9ib3VuY2UuYyBtYXliZSBoYXMg
YSBjbGVyaWNhbCBlcnJvciANCj4gd2l0aCBhIHJlZHVuZGFudCBhY3Rpb27CoCBhYm91dMKg
YWRkcmVzcyBhY2Nlc3NpbmcgLCBwbGVhc2Ugc2VlOg0KDQpJIGRvbid0IGhhdmUgbXVjaCBl
eHBlcmllbmNlIHVzaW5nIG1tYXAoMikuICBDb3VsZCB5b3UgcGxlYXNlIGRldGFpbCB3aHkg
eW91IA0KdGhpbmsgdGhpcyBpcyBpbmNvcnJlY3QsIGFuZCBob3BlZnVsbHkgcHJvcG9zZSBh
IHBhdGNoPw0KDQpZb3UgbWF5IHdhbnQgdG8gcmVhZCB0aGlzIGZvciBwcmVwYXJpbmcgYSBw
YXRjaDoNCjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9tYW4tcGFnZXMv
bWFuLXBhZ2VzLmdpdC90cmVlL0NPTlRSSUJVVElORz4NCg0KVGhhbmtzLA0KQWxleA0KDQo+
IA0KPiAvKiBwc2htX3VjYXNlX2JvdW5jZS5jDQo+IA0KPiAgwqAgwqBMaWNlbnNlZCB1bmRl
ciBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSB2MiBvciBsYXRlci4NCj4gKi8NCj4gI2lu
Y2x1ZGUgPGN0eXBlLmg+DQo+IA0KPiAjaW5jbHVkZSAicHNobV91Y2FzZS5oIg0KPiANCj4g
aW50DQo+IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkNCj4gew0KPiAgwqAgwqAgaW50
wqAgwqAgwqAgwqAgwqAgwqAgZmQ7DQo+ICDCoCDCoCBjaGFywqAgwqAgwqAgwqAgwqAgwqAq
c2htcGF0aDsNCj4gc3RydWN0IHNobWJ1ZsKgICpzaG1wOw0KPiANCj4gIMKgIMKgIGlmIChh
cmdjICE9IDIpIHsNCj4gIMKgIMKgIMKgIMKgIGZwcmludGYoc3RkZXJyLCAiVXNhZ2U6ICVz
IC9zaG1cLXBhdGhcZW4iLCBhcmd2WzBdKTsNCj4gIMKgIMKgIMKgIMKgIGV4aXQoRVhJVF9G
QUlMVVJFKTsNCj4gIMKgIMKgIH0NCj4gDQo+ICDCoCDCoCBzaG1wYXRoID0gYXJndlsxXTsN
Cj4gDQo+ICDCoCDCoCAvKiBDcmVhdGUgc2hhcmVkIG1lbW9yeSBvYmplY3QgYW5kIHNldCBp
dHMgc2l6ZSB0byB0aGUgc2l6ZQ0KPiAgwqAgwqAgwqAgwqBvZiBvdXIgc3RydWN0dXJlLiAq
Lw0KPiANCj4gIMKgIMKgIGZkID0gc2htX29wZW4oc2htcGF0aCwgT19DUkVBVCB8IE9fRVhD
TCB8IE9fUkRXUiwgMDYwMCk7DQo+ICDCoCDCoCBpZiAoZmQgPT0gXC0xKQ0KPiAgwqAgwqAg
wqAgwqAgZXJyRXhpdCgic2htX29wZW4iKTsNCj4gDQo+ICDCoCDCoCBpZiAoZnRydW5jYXRl
KGZkLCBzaXplb2Yoc3RydWN0IHNobWJ1ZikpID09IFwtMSkNCj4gIMKgIMKgIMKgIMKgIGVy
ckV4aXQoImZ0cnVuY2F0ZSIpOw0KPiANCj4gIMKgIMKgIC8qIE1hcCB0aGUgb2JqZWN0IGlu
dG8gdGhlIGNhbGxlclwoYXFzIGFkZHJlc3Mgc3BhY2UuICovDQo+IA0KPiAqc2htcCA9IG1t
YXAoTlVMTCwgc2l6ZW9mKCpzaG1wKSwgUFJPVF9SRUFEIHwgUFJPVF9XUklURSwNCj4gIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgTUFQX1NIQVJFRCwgZmQsIDApOw0KPiAgwqAgwqAg
aWYgKHNobXAgPT0gTUFQX0ZBSUxFRCkNCj4gIMKgIMKgIMKgIMKgIGVyckV4aXQoIm1tYXAi
KTsNCj4gDQo+IA0KPiAgwqAgwqAgdGhhbmtzIGZvciB5b3VywqBjb250cmlidXRpb24gYWdh
aW4uDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------2skV5nHoovywf8k9E9A9cjNc--

--------------jffk0ertcca95WmX787p04Oq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNj2okACgkQnowa+77/
2zKLxA//S66H4szKrIvqx4EBTTJ8gXAQfNjvgX4GNEJpckqxHc4EZ61fc1l5p3F6
vxy7RO5XZGXkByyqHDNW9GKLzxCjmlepQgFR4uf6IFSBJ3Fxzj4blkxBTrVwV8Sg
vDd8HmIvtW+CJIzO+LouaRKueZuDZ9tg9LHWB26s7+ykGFzRFCBll8ykHZtiuZo5
UXFd8Hz+9FGYytPdxuUMRLVNmW9KvulEV3yiWLzFXh2cqmbg8JC/YzDcm692pFMS
plU1Bo7GjroEWYXjwnWMeR+jp7rw8Z9ZDcAUNqWyOGWqKlFbKLEKFXUt9nwv8HUu
j7WmzjuDnrdmU1Te9Fx8Q9WRBbiLhxadl3wQUfrZF/Ty18GwjM0mg2VXfQcTaEkp
Ve7/WK+SlJL8B0sFMtz1KVLb+bHGM9l2g4txbbAPNmsi31hMmLSRxaVsTb7Qj++u
zmTu6k359sSbAfYDli98Aj2eTzCf7R8n0MiTUWyU3GBWDzBKkRmBODmWiNlr3ZO0
brUdxw467Y2XktUxHz/q+sFdj6It8fUFBORp6BVWV3F1Zvd7mCZUzt9XJmzEVkXg
qzNOfW9bx1ojPuLzftdGARQoSlikgwiN6FhulU4ZiZUZlP5UvFxh+fwQmQ8pFnWB
tz7tS9iDxFBo8K31eOWJ0H7J4SIUEstpTRAiusu9jnhU9d9ESO8=
=ZpBX
-----END PGP SIGNATURE-----

--------------jffk0ertcca95WmX787p04Oq--
