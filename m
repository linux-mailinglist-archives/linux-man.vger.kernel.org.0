Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB6E3652266
	for <lists+linux-man@lfdr.de>; Tue, 20 Dec 2022 15:24:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229943AbiLTOYV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Dec 2022 09:24:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230054AbiLTOXw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Dec 2022 09:23:52 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 744D61900A
        for <linux-man@vger.kernel.org>; Tue, 20 Dec 2022 06:23:31 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id m14so11876095wrh.7
        for <linux-man@vger.kernel.org>; Tue, 20 Dec 2022 06:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v6lTHQAu+bCC9hIooeuvMypV+lmnZKbs7GLDvs5ggYY=;
        b=TfI7YBghSXbTtCcp3o+vYVoI/MEyZXCUqn6qD14N90XGSDGtN7QUqVfPyn569ELDiF
         lv1mbdT/oJ4a2se0nJazDWgOOWENln22VszMBzuDfpCisTMgdc/UiGASmLX0ci2cAYHp
         Yw+Mt4SLNXRAUUuflCTMufefYueEfKHUlZRk37GP2mpm5SgjGUEXWDJioAPVuMd7n52d
         zA+m1KA/X0r6UB78xxns9sZ+9TpByo5I/VcoPo8U9yxlM5Oh+3P3BZbtSnN3dzo25NT7
         jGe8f9sfdrGLTJ00ablMOEhn4exJSInxkj3fNjeitU1gwmtwnMIX1ugOLPKRWSeQtjyh
         WGVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v6lTHQAu+bCC9hIooeuvMypV+lmnZKbs7GLDvs5ggYY=;
        b=TVh9do08mzUSiDCwZk/SkVcZy4gQ9tTl0SEyT5t+6P+4RWVqSnyWn/V+Rd656qDIyk
         vdt09P++L34cnEUd36/EyuIt37/Yk9j5Ba8oCR7eB1rKLUTRQzTFyeQpF2uDgYPvRQoU
         H4Pr/wSdidrOha5gQLZOMitGf1vqnsvT2DVbYCUyVt7Fp9VBp7Boci63FW+vKFmQtk9o
         cDKbmTHJmBbjB0yXWvk+jam0X3dVFnnjEtjmS4+stT0va69n9UBiEGP/+99n7D7bQQuY
         QqIbXXRvfAc8GcpUGVX0SlUFXQRBzj5LbWKBbyjhnd594Mr8inpNB9a1AyLmtRH6EXJ7
         2ZyQ==
X-Gm-Message-State: AFqh2krDRdjEvt06Xwx+Yhf1Qx1xle19m7lrGJTtLl2NwwZ4baSCAJVD
        DBM1BSfLce2qBa2Ov9cFBj4=
X-Google-Smtp-Source: AMrXdXuaSliNbF56odClWDpptpZh1ehBTBl+bEJdY7TpxR2qQqP8L6JoSagigVCJAR/TV5P3+R7GDA==
X-Received: by 2002:adf:dbc7:0:b0:256:ff7d:2347 with SMTP id e7-20020adfdbc7000000b00256ff7d2347mr1290520wrj.13.1671546209878;
        Tue, 20 Dec 2022 06:23:29 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l7-20020a5d5607000000b002420fe50322sm12883989wrv.91.2022.12.20.06.23.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 06:23:29 -0800 (PST)
Message-ID: <50501038-c095-103d-dd7e-3254ac5a9443@gmail.com>
Date:   Tue, 20 Dec 2022 15:23:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/2] suffixes.7: Drop diagnostic-suppressing hack
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20221220031801.ocnqc66lh23nxgz7@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221220031801.ocnqc66lh23nxgz7@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4mOaS07j32wpr0sfQOiphqBE"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------4mOaS07j32wpr0sfQOiphqBE
Content-Type: multipart/mixed; boundary="------------FBlWvn36lcNslQedAjKClvw6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <50501038-c095-103d-dd7e-3254ac5a9443@gmail.com>
Subject: Re: [PATCH 1/2] suffixes.7: Drop diagnostic-suppressing hack
References: <20221220031801.ocnqc66lh23nxgz7@illithid>
In-Reply-To: <20221220031801.ocnqc66lh23nxgz7@illithid>

--------------FBlWvn36lcNslQedAjKClvw6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTIvMjAvMjIgMDQ6MTgsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+IFRoZSBleHRlbnNpb24gb2YgdGhlIHBhZ2UgbGVuZ3RoIGlzIHdvcmthcm91
bmQgZm9yDQo+IDxodHRwczovL3NhdmFubmFoLmdudS5vcmcvYnVncy8/NjM0NDk+LCB3aGlj
aCBpcyBhIHZlcnkgb2xkIGdyb2ZmIGJ1ZywNCj4gcG9zc2liaWx5IGRhdGluZyBiYWNrIHRv
IGdyb2ZmIDEuMDAgb3IgYmV5b25kLiAgSXQgaXMgZml4ZWQgaW4gZ3JvZmYNCj4gR2l0LiAg
QnV0IHdhaXRpbmcgZm9yIGEgZ3JvZmYgcmVsZWFzZSBpcyBub3QgbmVjZXNzYXJ5OyBtYW4t
ZGIgbWFuKDEpDQo+IG5vd2FkYXlzIGNvbmNlYWxzIGRpYWdub3N0aWMgbWVzc2FnZXMgZnJv
bSB0aGUgZm9ybWF0dGVyIGFuZCBvdXRwdXQNCj4gZHJpdmVycy4NCg0KUGF0Y2ggc2V0IGFw
cGxpZWQuICBUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW43L3N1ZmZpeGVzLjcg
fCAzIC0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL21hbjcvc3VmZml4ZXMuNyBiL21hbjcvc3VmZml4ZXMuNw0KPiBpbmRleCBi
N2RhMjZjMTMuLjg5YjljZGUyYyAxMDA2NDQNCj4gLS0tIGEvbWFuNy9zdWZmaXhlcy43DQo+
ICsrKyBiL21hbjcvc3VmZml4ZXMuNw0KPiBAQCAtMTMsOSArMTMsNiBAQA0KPiAgIC5cIiBN
b2RpZmllZCBUaHUgTm92IDE2IDIzOjI4OjI1IDIwMDAgYnkgRGF2aWQgQS4gV2hlZWxlcg0K
PiAgIC5cIiAgICA8ZHdoZWVsZXJAZHdoZWVsZXIuY29tPg0KPiAgIC5cIg0KPiAtLlwiICJu
cm9mZiIgKCJtYW4iKSAob3IgInRibCIpIG5lZWRzIGEgbG9uZyBwYWdlIHRvIGF2b2lkIHdh
cm5pbmdzDQo+IC0uXCIgZnJvbSAiZ3JvdHR5IiAoYXQgaW1hZ2luZWQgcGFnZSBicmVha3Mp
LiAgQnVnIGluIGdyb3R0eT8NCj4gLS5pZiBuIC5wbCAxMDAwdg0KPiAgIC5USCBTVUZGSVhF
UyA3IChkYXRlKSAiTGludXggbWFuLXBhZ2VzICh1bnJlbGVhc2VkKSINCj4gICAuU0ggTkFN
RQ0KPiAgIHN1ZmZpeGVzIFwtIGxpc3Qgb2YgZmlsZSBzdWZmaXhlcw0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------FBlWvn36lcNslQedAjKClvw6--

--------------4mOaS07j32wpr0sfQOiphqBE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOhxVEACgkQnowa+77/
2zKARw/9Eg6ARWL/9ko2hQpvB24SLQlHOBYL14aoYws8eyJAbjE8A4LDSfL44kWK
JDOLGF50d7VNble0B3iztClNPFfggvMCefJuH5aq+canOOxxXbzXlvFxzEybwV5t
dIFcfMZ9K4y4recUeErx3u6GoIiSlxu+zHJjkejHFNtswOLFUanJuNOPfQSKXfpc
memCM3fA/4MaqC8FlMCm9dXOsU+PK8kjmDeNOUp10hwVc1l+MX1aG51p36tYpbH0
2+6HIGtuD9e6BM7/QxvVaHWEP/yfJtxsObUQuvp7mu+EaK43ZOjlyh+9j6IV+prl
QNeRkpoYzBZGw77Lqe93XGN2l2xIT8LBFff6ZPkGK2KrLTOaboUFvK6Z4R/2jOTx
cmU+kW81MX0qMK35KS7+dpB4w3nyAagbys4r88yLFcU3NTIgXvfyaRipF6/21+sY
xTR+0nFXG3LPGLOPfUAVOMp6AqGNmdfJJXkAGp1Rk0VhXNyk/E0g7493uYgns48a
6FrfHCkRfAxo1TJM2AYRPB4fQAb30pbsYFguZKHTzmYDf7sfa7+r5l9eZmbv52v9
btUvF+OYChgFtEvfUFUcLO0hbc1kK9GyMc25plskviGAzrytjUPLrsDEwtQ6fm78
wz+Do1GpAmfvLaF0Z2Qx9AYtOKNiT0WQkTz4MhkG3OkNLTWePgo=
=qtXL
-----END PGP SIGNATURE-----

--------------4mOaS07j32wpr0sfQOiphqBE--
