Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E4DE5AA184
	for <lists+linux-man@lfdr.de>; Thu,  1 Sep 2022 23:31:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231447AbiIAVb0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Sep 2022 17:31:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232879AbiIAVbY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Sep 2022 17:31:24 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E5E8696DF
        for <linux-man@vger.kernel.org>; Thu,  1 Sep 2022 14:31:23 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id m16so23963501wru.9
        for <linux-man@vger.kernel.org>; Thu, 01 Sep 2022 14:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=ccwMPq9HgeLhW44rg+lheJmytk6Ia5Zm5z/Q4359Ss4=;
        b=KLX6MdnR+aPPDSecMOH1nQ+/iypj/1Iho5fI1cfszSp7YtEnD7JCLcPsznGJodbHiy
         gIxM975x7makoqUmWapqLy2xjd7IFJl99yayLz2Pyp6eFQtgqbElGprabBOi93u1WYfa
         Rw7yXlCK50YYy/HaH23p4EyoVzPcY92aCodaNONxgpnbJKBPW7hQV+QV3gdxgPFtJc22
         x19WtTaxkACUoTt2JfMyIMYGqVhfdmR65IR5yk8FpSUEAa5YK5WKjKaUDKAQdPdfWOHp
         JJhCBdJiSnIUJPWuarUa6zh9N5CJqgrD5Lmhp2eCLoCV2iZuhVbj7PPZLt9z8VSgNWov
         x2ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=ccwMPq9HgeLhW44rg+lheJmytk6Ia5Zm5z/Q4359Ss4=;
        b=ivyqSKh1WPoB6LzRwr0J6a+Jbc8kvNT8uX1rRFkm9JczNsa9GEBi0Bc1L5RAR4Ez02
         bPwTX8i06iVCZu+b4vOr2SnGnhfH40NNGTOOyqRhAA2Nu1TraIu2CLnP3WGrdYjOsDbC
         +VAToSBkfeaslmioc6OddUJTzIGxDBNS6GM+o1AaQrr0dkBXgOIHpGPC6xzs7lc5hxMi
         r6Yh84rfAHv7tOVmp9B04Ef2OTwCVCKdxu+XEpSyjUE1G9FwdalURpP8crMZurBV2g3j
         CSawSCq0cY78nIA+eXKYXS+T2FEIXqLOONxMfIllUxE9nMsuL4w7MNqzSBa5kLBZhyHf
         pCAw==
X-Gm-Message-State: ACgBeo0s5eJvADznnFljjmldBW+gSfRbb9r1wFcUlOVGIAkqE60moXEc
        l7gvzOidFCUlkmpDsPbfzhs=
X-Google-Smtp-Source: AA6agR75oA+yoBzusLopnh0ijxGf12XXw8MV/PyhrPSZzgvcyjYZliKOPMr27y6HHzSSakAPZ+0zow==
X-Received: by 2002:a5d:5048:0:b0:226:df3b:72f4 with SMTP id h8-20020a5d5048000000b00226df3b72f4mr10067890wrt.205.1662067881683;
        Thu, 01 Sep 2022 14:31:21 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v22-20020a7bcb56000000b003a5ad7f6de2sm237797wmj.15.2022.09.01.14.31.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 14:31:21 -0700 (PDT)
Message-ID: <cf671ecb-1ae1-af7d-39b5-ef7334a16466@gmail.com>
Date:   Thu, 1 Sep 2022 23:31:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] hosts.5: Use "example.org" as example domain
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20220831134128.7177-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220831134128.7177-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------i6HR0F3rfHEaipTg1Zh6WYBC"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------i6HR0F3rfHEaipTg1Zh6WYBC
Content-Type: multipart/mixed; boundary="------------Se6gCeK4mmiDA90X7y15AtBc";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <cf671ecb-1ae1-af7d-39b5-ef7334a16466@gmail.com>
Subject: Re: [PATCH] hosts.5: Use "example.org" as example domain
References: <20220831134128.7177-1-jwilk@jwilk.net>
In-Reply-To: <20220831134128.7177-1-jwilk@jwilk.net>

--------------Se6gCeK4mmiDA90X7y15AtBc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIhDQoNCk9uIDgvMzEvMjIgMTU6NDEsIEpha3ViIFdpbGsgd3JvdGU6DQo+IFNp
Z25lZC1vZmYtYnk6IEpha3ViIFdpbGsgPGp3aWxrQGp3aWxrLm5ldD4NCg0KUGF0Y2ggYXBw
bGllZC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuNS9ob3N0cy41IHwg
NiArKystLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjUvaG9zdHMuNSBiL21hbjUvaG9zdHMu
NQ0KPiBpbmRleCA1NzVlOTRhZTIuLmI1YWM3ZThmNCAxMDA2NDQNCj4gLS0tIGEvbWFuNS9o
b3N0cy41DQo+ICsrKyBiL21hbjUvaG9zdHMuNQ0KPiBAQCAtOTYsOSArOTYsOSBAQCBJIGp1
c3QgZm91bmQgdGhyZWUsIGZyb20gOTIsDQo+ICAgMTI3LjAuMC4xICAgICAgIGxvY2FsaG9z
dA0KPiAgIA0KPiAgICMgMTI3LjAuMS4xIGlzIG9mdGVuIHVzZWQgZm9yIHRoZSBGUUROIG9m
IHRoZSBtYWNoaW5lDQo+IC0xMjcuMC4xLjEgICAgICAgdGhpc2hvc3QubXlkb21haW4ub3Jn
ICB0aGlzaG9zdA0KPiAtMTkyLjE2OC4xLjEwICAgIGZvby5teWRvbWFpbi5vcmcgICAgICAg
Zm9vDQo+IC0xOTIuMTY4LjEuMTMgICAgYmFyLm15ZG9tYWluLm9yZyAgICAgICBiYXINCj4g
KzEyNy4wLjEuMSAgICAgICB0aGlzaG9zdC5leGFtcGxlLm9yZyAgIHRoaXNob3N0DQo+ICsx
OTIuMTY4LjEuMTAgICAgZm9vLmV4YW1wbGUub3JnICAgICAgICBmb28NCj4gKzE5Mi4xNjgu
MS4xMyAgICBiYXIuZXhhbXBsZS5vcmcgICAgICAgIGJhcg0KPiAgIDE0Ni44Mi4xMzguNyAg
ICBtYXN0ZXIuZGViaWFuLm9yZyAgICAgIG1hc3Rlcg0KPiAgIDIwOS4yMzcuMjI2LjkwICB3
d3cub3BlbnNvdXJjZS5vcmcNCj4gICANCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------Se6gCeK4mmiDA90X7y15AtBc--

--------------i6HR0F3rfHEaipTg1Zh6WYBC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMRJKgACgkQnowa+77/
2zKNWg/9Gv0G8dDhH/4Oc8omL1bKidatuuGD1/+0nk/69t+2C0HK697eY1Z4j2pd
TSrHSDV7BncpcHTyTNWk7LgekmZmZlWib3CYcXyhTMEMK+C9vGfOa49Ya/OyOtyF
ekVDVCXJ6/g3Km3Q2rdJCe5l3Dapt8IsiyRj1/KySP+GAj/szSSFjmesM57tLFKD
7XNnXQ5xEqY1RwzHetVaUW5MbwwGD5fv5Pp5ahWMW213p1ET21lBrLvTorejqH8/
ECuGZLLcVOKxPCWfPwgjO4tvccBX7jsjwrzTznV2yhiPAkDjZLMz8n/8/GsNtlsS
povZRpqA9Vqs7To1onDtTzRaaB3xdAi/eO2kFB829UMZw77kJXxSReGf7CFVeS62
MIlLKzcEEtX0JA3PzTaMEiC3Y6e4dNg/gN48pwbP3L/ht2EBpyQf1+uv6OUc6Pk5
HX6l0lt72bkaKRO0LsIWwFBbdQT0BlFW8TgzP7IIusWXzloHpiV8okqrGXiYu5ZQ
kXgvjLFTiIKtWC7T/+iK5aKTbFq/3lMmVlyPldCk2PFLvwI64urMe0aTPzY3zhi/
lRg1RtX4MeCEoH/LtjHzXcDXdXZUfA7Yy7LyYbKXHPYmRUNBN2dVSDeovNWs4l9y
XpjetMQ7EFf6U23KB0ib3hjNG3hgFKmgxVvsLtf/P88in5lWwPk=
=FXYV
-----END PGP SIGNATURE-----

--------------i6HR0F3rfHEaipTg1Zh6WYBC--
