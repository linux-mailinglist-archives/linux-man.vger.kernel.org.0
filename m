Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C36E4673B6B
	for <lists+linux-man@lfdr.de>; Thu, 19 Jan 2023 15:13:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231570AbjASONV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 09:13:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231448AbjASOMs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 09:12:48 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DEF08103B
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 06:11:38 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id d4-20020a05600c3ac400b003db1de2aef0so1365851wms.2
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 06:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=z/MYhSq8tOlKbY8OGNb6YAuTxuTyZLHgUrX3xsjJVFw=;
        b=BRYApb2cjxry+RhyyJBc1YAOsS3AtIhVDuFsg3YhLFvwANwCo8LV7GUlG0ClpiCF4e
         Txh+4tn956s4nOr3HuOVG//5Iu5sHQ4eJBiEo6A1HZeV2si+uvNIavbWmFku6lD2WrWu
         b8INnWn+eRR8XfWuCz44E0DmszPzQ8GVEs810hUWOC8BqFwQzJHxyZCL5+n074H3piy9
         JnFHYYlCRjpPrHE2JQT66yNhWmcFuMa1KmfMo7KnAHMuTKXak64L2oKdEVqYuywE9bQs
         igRutEcYB/0jeY/rabSjpfQg4nCA1Sdg5pxxvFudF0Ernaz1vnvkRCMry0NaIzlYRX57
         8RYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z/MYhSq8tOlKbY8OGNb6YAuTxuTyZLHgUrX3xsjJVFw=;
        b=np1PhSnUKqwpOUIkt1eTsTlgRYpVqw7Pmbexxq1r18Gx1inuCR00wMceUPVNJkTdIY
         O4/86rWZE+bbiZRtVO5KqAfV4CDLNNzNNzJQeaN4gL1ug68LKrBqFEbQjJLxgE+1Im4H
         xWnYN7355bisq3qdyDMs4jeqdMi4edFZEntTXQsyEzteyNHGy0d2C4Rs2rwJkmPZYlen
         d/cWcuTcQtkg44PADy5DIOkWyr9YxL0VJl9eQp4oGuNoToWDTzj174MtsREQitrn+YDj
         gZqe21kwenyXc0HkDywaXR2CxHvBZ2Q879/0hn9wy3khGNPiidw/LfXE3shpKKk7DbIT
         3ySQ==
X-Gm-Message-State: AFqh2koMWDFaeKihgokuwkPcQX5N1Y3XrzGLECP8HwGAFwM4ikSRyBCY
        QFEryjD5UTXTBywa88T7RhZf37ZI35c=
X-Google-Smtp-Source: AMrXdXuPA2+udWx8f46tJT1JVb7g3YOJ+GjbDmMvbGVX5xacs6FTY4H4Qyv6yk23wpRwncvR3s0N6g==
X-Received: by 2002:a05:600c:255:b0:3da:f9b7:74c7 with SMTP id 21-20020a05600c025500b003daf9b774c7mr10088496wmj.13.1674137496528;
        Thu, 19 Jan 2023 06:11:36 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l27-20020a05600c2cdb00b003d99da8d30asm5368973wmc.46.2023.01.19.06.11.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 06:11:36 -0800 (PST)
Message-ID: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
Date:   Thu, 19 Jan 2023 15:11:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To:     GNU C Library <libc-alpha@sourceware.org>
Cc:     linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: struct sockaddr_storage
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lBJSQerwQbXzsVSqa0saK4vY"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------lBJSQerwQbXzsVSqa0saK4vY
Content-Type: multipart/mixed; boundary="------------RjaNNh7YsHcGzPbwDhtAk7zv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: GNU C Library <libc-alpha@sourceware.org>
Cc: linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
 Igor Sysoev <igor@sysoev.ru>
Message-ID: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
Subject: struct sockaddr_storage

--------------RjaNNh7YsHcGzPbwDhtAk7zv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCkkganVzdCByZWNlaXZlZCBhIHJlcG9ydCBhYm91dCBzdHJ1Y3Qgc29ja2FkZHJf
c3RvcmFnZSBpbiB0aGUgbWFuIHBhZ2VzLiAgSXQgDQpyZW1pbmRlZCBtZSBvZiBzb21lIGNv
bmNlcm4gSSd2ZSBhbHdheXMgaGFkIGFib3V0IGl0OiBpdCBkb2Vzbid0IHNlZW0gdG8gYmUg
YSANCnVzYWJsZSB0eXBlLg0KDQpJdCBoYXMgc29tZSBhbGlnbm1lbnQgcHJvbWlzZXMgdGhh
dCBtYWtlIGl0ICJqdXN0IHdvcmsiIG1vc3Qgb2YgdGhlIHRpbWUsIGJ1dCANCml0J3Mgc3Rp
bGwgYSBVQiBtaW5lLCBhY2NvcmRpbmcgdG8gSVNPIEMuDQoNCkFjY29yZGluZyB0byBzdHJp
Y3QgYWxpYXNpbmcgcnVsZXMsIGlmIHlvdSBkZWNsYXJlIGEgdmFyaWFibGUgb2YgdHlwZSAn
c3RydWN0IA0Kc29ja2FkZHJfc3RvcmFnZScsIHRoYXQncyB3aGF0IHlvdSBnZXQsIGFuZCB0
cnlpbmcgdG8gYWNjZXNzIGl0IGxhdGVyIGFzIHNvbWUgDQpvdGhlciBzb2NrYWRkcl84IGlz
IHNpbXBseSBub3QgbGVnYWwuICBUaGUgY29tcGlsZXIgbWF5IGFzc3VtZSB0aG9zZSBhY2Nl
c3NlcyANCmNhbid0IGhhcHBlbiwgYW5kIG9wdGltaXplIGFzIGl0IHBsZWFzZXMuDQoNClRo
YXQgbWVhbnMgdGhhdCBvbmUgbmVlZHMgdG8gZGVjbGFyZSBhIHVuaW9uIHdpdGggYWxsIHBv
c3NpYmxlIHNvY2thZGRyXyogdHlwZXMgDQp0aGF0IGFyZSBvZiBpbnRlcmVzdCwgc28gdGhh
dCBhY2Nlc3MgYXMgYW55IG9mIHRoZW0gaXMgbGF0ZXIgYWxsb3dlZCBieSB0aGUgDQpjb21w
aWxlciAob2YgY291cnNlLCB0aGUgdXNlciBzdGlsbCBuZWVkcyB0byBhY2Nlc3MgdGhlIGNv
cnJlY3Qgb25lLCBidXQgdGhhdCdzIA0Kb2YgY291cnNlKS4NCg0KSW4gdGhhdCB1bmlvbiwg
b25lIGNvdWxkIGFkZCBhIG1lbWJlciB0aGF0IGlzIG9mIHR5cGUgc29ja2FkZHJfc3RvcmFn
ZSBmb3IgDQpnZXR0aW5nIGEgbW9yZSBjb25zaXN0ZW50IHN0cnVjdHVyZSBzaXplIChmb3Ig
ZXhhbXBsZSwgaWYgc29tZSBtZW1iZXJzIGFyZSANCmNvbmRpdGlvbmFsIG9uIHByZXByb2Nl
c3NvciBzdHVmZiksIGJ1dCBJIGRvbid0IHNlZSBtdWNoIHZhbHVlIGluIHRoYXQuIA0KRXNw
ZWNpYWxseSwgZ2l2ZW4gdGhpcyBjb21tZW50IHRoYXQgSWdvciBTeXNvZXYgd3JvdGUgaW4g
TkdJTlggVW5pdCdzIHNvdXJjZSBjb2RlOg0KDQogICogc3RydWN0IHNvY2thZGRyX3N0b3Jh
Z2UgaXM6DQogICogICAgMTI4IGJ5dGVzIG9uIExpbnV4LCBGcmVlQlNELCBNYWNPU1gsIE5l
dEJTRDsNCiAgKiAgICAyNTYgYnl0ZXMgb24gU29sYXJpcywgT3BlbkJTRCwgYW5kIEhQLVVY
Ow0KICAqICAgMTI4OCBieXRlcyBvbiBBSVguDQogICoNCiAgKiBzdHJ1Y3Qgc29ja2FkZHJf
c3RvcmFnZSBpcyB0b28gbGFyZ2Ugb24gc29tZSBwbGF0Zm9ybXMNCiAgKiBvciBsZXNzIHRo
YW4gcmVhbCBtYXhpbXVtIHN0cnVjdCBzb2NrYWRkcl91biBsZW5ndGguDQoNCldoaWNoIG1h
a2VzIGl0IGV2ZW4gbW9yZSB1c2VsZXNzIGFzIGEgdHlwZS4NCg0KDQpTaG91bGQgd2Ugd2Fy
biBhYm91dCB1c2VzIG9mIHRoaXMgdHlwZT8gIFNob3VsZCB3ZSByZWNvbW1lbmQgYWdhaW5z
dCB1c2luZyBpdCBpbiANCnRoZSBtYW51YWwgcGFnZSwgc2luY2UgdGhlcmUncyBubyBsZWdp
dGltYXRlIHVzZXMgb2YgaXQ/DQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------RjaNNh7YsHcGzPbwDhtAk7zv--

--------------lBJSQerwQbXzsVSqa0saK4vY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPJT44ACgkQnowa+77/
2zKu1Q/7BppPO1DEaoPthjSr0y1B3T2pzihpRMw4xv4aEOpuHtXrXfFMK0Sd2J0g
rcbWOZIa+0JnuYb0uTAi3Y16K4win8qr4ibGqdtanC6s+h5Ciiv4H4DBSQIQ3o6R
i5MgxF9+rAOarZHGDboORdFZAeN93cPyWJ2POxb6TBbAtmjkbR0jzw1/NYg2T24s
uFxYm6jJszRCLMwm8GJQh50k7GuD0Rcw04jZdGyekwnTg/mFaW0HHB2xo1GhpWmX
g4XYgYb/6ziNR0gVMJLl+FGXofXMVr8mXDiLBBBXqFcuGzcXDF/dnJZMybpaex32
M3O0Yr1qo7QaJmUBbRph+4ozSirdyqzJuqrNdB2voHJkn+juMXOemRvLpDvnYwwx
1rtyjNNGUtnJpR8zcD5qRVg207eUMYnNdx7a6mYGtbbH8JCug2/VFK9AXr6gwf7G
NFs2Xf0Dl1PLaVXppxdjpMUgmxp1Z74sZDBihsLgDtr02oJgYyC8/CZmlA0+IkUM
Djv2NCsWqzgrMch6HU1fWqZud5cj81pSIhvQuwE3BddzEb0skqnVh1LvLiZbW8t3
yCQT1JJJD1k8zzTqlo4/KaOdKUtkTpHjrHKAAPb6YaOhjE0IVdOHtpPxnMWa1w/d
sdj/IqjKYX7DfbT5MADzvHeM9B0NRLU67dB0CE+/9Ii5QeL8jws=
=V73U
-----END PGP SIGNATURE-----

--------------lBJSQerwQbXzsVSqa0saK4vY--
