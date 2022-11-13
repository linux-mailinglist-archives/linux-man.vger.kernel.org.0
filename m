Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99C14627084
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 17:29:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233792AbiKMQ3C (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 11:29:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232676AbiKMQ3B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 11:29:01 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2843DB8A
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 08:29:00 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id v7so5825282wmn.0
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 08:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hUJLJP5LttpDg5k12uW6H4VOhczcoFjssOKsNfBdIzY=;
        b=VWo0ViSUGEPnjFMCukITkxiaHKLAIRlV85Rb5nZumSKg2XqfM60KeoQSiW2U0Oot1z
         lLJi702dNiFEyya9XHSNNuxBKgTuLag36RvINPyaBIC9huJqnRGhi/yTug0iGVrS4jX/
         0CGtwrkyNgU30mBNgn1kkn75ggvSs6ohf2ZKpf+InPrjh5NXRVZis+XqBcBPiy6byvT2
         rChL6EiI6g9cdSL0VG5ce8gJ8rVIWhFZ77nW5rP+LcqsZ2jbFWrBec6soXhZiPzYIBPw
         Vrsxtv9jKQllMrxUISb8VpDvTVo19/nuwEN5cAnXpiprUlfX+FPPtA96VM2qwxp8sEbl
         KS6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hUJLJP5LttpDg5k12uW6H4VOhczcoFjssOKsNfBdIzY=;
        b=2+6qq5parQHhjUBq6lOUMxsucfbr5PCatrxCWo9Y6xeP5RCmoHMvVG044sAWZlRdDI
         B8znDis91ROH7OPKLy6QCCfQSQmKx0DW7gzHIG7tAAUcMJ7OJDBL4MK1HFS9SDv662iB
         M10suIC/UTJKb0EY/LYF7D7njJJNcSakGnelmtlKvt7UzeBKd4uOR0wuTEJMeAIsqb8y
         7Iujsb2V1OYxIIrxaPzmP95QW+/wsWXSb/6Fd20N98aB/DNHXxVvDv9K7JAryU6Tz73G
         9lphwgMH6NEE3kR343Vwf7ep4bfzz7G4Ti1cOB8HxFcFbkPn7tynHjGVO5xbZxkQVIkt
         KMgA==
X-Gm-Message-State: ANoB5pm5ziPLF6AUTLQyv+QbFZeSTG5xDHA3lDJFFgNDWIib1dxPQzA8
        jggRc/XQT0Vzj4JJUl/PkGg=
X-Google-Smtp-Source: AA0mqf6tSdlT5eQANYAQ1O4NnPVXD2RwmPv5Bibvc2NpD6SZYMVz8xelf9sQEQ7vxVKOk8M+ROJm1A==
X-Received: by 2002:a1c:5406:0:b0:3cf:66a2:d440 with SMTP id i6-20020a1c5406000000b003cf66a2d440mr5949825wmb.108.1668356938560;
        Sun, 13 Nov 2022 08:28:58 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bh9-20020a05600005c900b0022e36c1113fsm7317619wrb.13.2022.11.13.08.28.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 08:28:57 -0800 (PST)
Message-ID: <9560a2e4-0234-d07e-2d7a-302015318771@gmail.com>
Date:   Sun, 13 Nov 2022 17:28:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Martin Uecker <uecker@tugraz.at>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
In-Reply-To: <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wJfk6sTxbA29vqFyfDLlXUBz"
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
--------------wJfk6sTxbA29vqFyfDLlXUBz
Content-Type: multipart/mixed; boundary="------------FRsVruZLHPsBCBSxQpO0mBG9";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <9560a2e4-0234-d07e-2d7a-302015318771@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
In-Reply-To: <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>

--------------FRsVruZLHPsBCBSxQpO0mBG9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

U1lOT1BTSVM6DQoNCnVuYXJ5LW9wZXJhdG9yOiAgLiBpZGVudGlmaWVyDQoNCg0KREVTQ1JJ
UFRJT046DQoNCi0gIEl0IGlzIG5vdCBhbiBsdmFsdWUuDQoNCiAgICAtICBUaGlzIG1lYW5z
IHNpemVvZigpIGFuZCBfTGVuZ3Rob2YoKSBjYW5ub3QgYmUgYXBwbGllZCB0byB0aGVtLg0K
ICAgIC0gIFRoaXMgcHJldmVudHMgYW1iaWd1aXR5IHdpdGggYSBkZXNpZ25hdG9yIGluIGFu
IGluaXRpYWxpemVyLWxpc3Qgd2l0aGluIGEgDQpuZXN0ZWQgYnJhY2VkLWluaXRpYWxpemVy
Lg0KDQotICBUaGUgdHlwZSBvZiBhIC5pZGVudGlmaWVyIGlzIGFsd2F5cyBhbiBpbmNvbXBs
ZXRlIHR5cGUuDQoNCiAgICAtICBUaGlzIHByZXZlbnRzIGNpcmN1bGFyIGRlcGVuZGVuY2ll
cyBpbnZvbHZpbmcgc2l6ZW9mKCkgb3IgX0xlbmd0aG9mKCkuDQoNCi0gIFNoYWRvd2luZyBy
dWxlcyBhcHBseS4NCg0KICAgIC0gIFRoaXMgcHJldmVudHMgYW1iaWd1aXR5Lg0KDQoNCkVY
QU1QTEVTOg0KDQoNCi0gIFZhbGlkIGV4YW1wbGVzIChsaWJjKToNCg0KICAgICAgICBpbnQN
CiAgICAgICAgc3RybmNtcChjb25zdCBjaGFyIHMxWy5uXSwNCiAgICAgICAgICAgICAgICBj
b25zdCBjaGFyIHMyWy5uXSwNCiAgICAgICAgICAgICAgICBzaXplX3Qgbik7DQoNCiAgICAg
ICAgaW50DQogICAgICAgIGNhY2hlZmx1c2godm9pZCBhZGRyWy5uYnl0ZXNdLA0KICAgICAg
ICAgICAgICAgICAgIGludCBuYnl0ZXMsDQogICAgICAgICAgICAgICAgICAgaW50IGNhY2hl
KTsNCg0KICAgICAgICBsb25nDQogICAgICAgIG1iaW5kKHZvaWQgYWRkclsubGVuXSwNCiAg
ICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBsZW4sDQogICAgICAgICAgICAgIGludCBtb2Rl
LA0KICAgICAgICAgICAgICBjb25zdCB1bnNpZ25lZCBsb25nIG5vZGVtYXNrWygubWF4bm9k
ZSArIFVMT05HX1dJRFRIIOKAkCAxKQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIC8gVUxPTkdfV0lEVEhdLA0KICAgICAgICAgICAgICB1bnNpZ25lZCBs
b25nIG1heG5vZGUsIHVuc2lnbmVkIGludCBmbGFncyk7DQoNCiAgICAgICAgdm9pZCAqDQog
ICAgICAgIGJzZWFyY2goY29uc3Qgdm9pZCBrZXlbLnNpemVdLA0KICAgICAgICAgICAgICAg
IGNvbnN0IHZvaWQgYmFzZVsuc2l6ZSAqIC5ubWVtYl0sDQogICAgICAgICAgICAgICAgc2l6
ZV90IG5tZW1iLA0KICAgICAgICAgICAgICAgIHNpemVfdCBzaXplLA0KICAgICAgICAgICAg
ICAgIGludCAoKmNvbXBhcikoY29uc3Qgdm9pZCBbLnNpemVdLCBjb25zdCB2b2lkIFsuc2l6
ZV0pKTsNCg0KLSAgVmFsaWQgZXhhbXBsZXMgKG15IG93bik6DQoNCiAgICAgICAgdm9pZA0K
ICAgICAgICB1c3RyMnN0cihjaGFyIGRzdFtyZXN0cmljdCAubGVuICsgMV0sDQogICAgICAg
ICAgICAgICAgIGNvbnN0IGNoYXIgc3JjW3Jlc3RyaWN0IC5sZW5dLA0KICAgICAgICAgICAg
ICAgICBzaXplX3QgbGVuKTsNCg0KICAgICAgICBjaGFyICoNCiAgICAgICAgc3RwZWNweShj
aGFyIGRzdFsuZW5kIC0gLmRzdCArIDFdLA0KICAgICAgICAgICAgICAgIGNoYXIgKnJlc3Ry
aWN0IHNyYywNCiAgICAgICAgICAgICAgICBjaGFyIGVuZFsxXSk7DQoNCi0gIFZhbGlkIGV4
YW1wbGVzIChmcm9tIHRoaXMgdGhyZWFkKToNCg0KICAgIC0NCiAgICAgICAgc3RydWN0IHMg
eyBpbnQgYTsgfTsNCiAgICAgICAgdm9pZCBmKGludCBhLCBpbnQgYlsoKHN0cnVjdCBzKSB7
IC5hID0gMSB9KS5hXSk7DQoNCiAgICAgICAgRXhwbGFuYXRpb246DQogICAgICAgIC0gIEJl
Y2F1c2Ugb2Ygc2hhZG93aW5nIHJ1bGVzLCAuYT0xIHJlZmVycyB0byB0aGUgc3RydWN0IG1l
bWJlci4NCiAgICAgICAgICAgLSAgQWxzbywgaWYgLmEgcmVmZXJyZWQgdG8gdGhlIHBhcmFt
ZXRlciwgaXQgd291bGQgYmUgYW4gcnZhbHVlLCBzbyANCml0IHdvdWxkbid0IGJlIHZhbGlk
IHRvIGFzc2lnbiB0byBpdC4NCiAgICAgICAgLSAgKC4uLikuYSByZWZlcnMgdG8gdGhlIHN0
cnVjdCBtZW1iZXIgdG9vLCBzaW5jZSBvdGhlcndpc2UgYW4gcnZhbHVlIGlzIA0Kbm90IGV4
cGVjdGVkIHRoZXJlLg0KDQogICAgLQ0KICAgICAgICB2b2lkIGZvbyhzdHJ1Y3QgYmFyIHsg
aW50IHg7IGNoYXIgY1sueF0gfSBhLCBpbnQgeCk7DQoNCiAgICAgICAgRXhwbGFuYXRpb246
DQogICAgICAgIC0gIEJlY2F1c2Ugb2Ygc2hhZG93aW5nIHJ1bGVzLCBbLnhdIHJlZmVycyB0
byB0aGUgc3RydWN0IG1lbWJlci4NCg0KICAgIC0NCiAgICAgICAgc3RydWN0IGJhciB7IGlu
dCB5OyB9Ow0KICAgICAgICB2b2lkIGZvbyhjaGFyIHBbKChzdHJ1Y3QgYmFyKXsgLnkgPSAu
eCB9KS55XSwgaW50IHgpOw0KDQogICAgICAgIEV4cGxhbmF0aW9uOg0KICAgICAgICAtICAu
eCB1bmFtYmlndW91c2x5IHJlZmVycyB0byB0aGUgcGFyYW1ldGVyLg0KDQotICBVbmRlZmlu
ZWQgYmVoYXZpb3I6DQoNCiAgICAtDQogICAgICAgIHN0cnVjdCBiYXIgeyBpbnQgeTsgfTsN
CiAgICAgICAgdm9pZCBmb28oY2hhciBwWygoc3RydWN0IGJhcil7IC55ID0gLnkgfSkueV0s
IGludCB5KTsNCg0KICAgICAgICBFeHBsYW5hdGlvbjoNCiAgICAgICAgLSAgQmVjYXVzZSBv
ZiBzaGFkb3dpbmcgcnVsZXMsID0ueSByZWZlcnMgdG8gdGhlIHN0cnVjdCBtZW1iZXIuDQog
ICAgICAgIC0gIC55PS55IG1lYW5zIGluaXRpYWxpemUgdGhlIG1lbWJlciB3aXRoIGl0c2Vs
ZiAodW5pbml0aWFsaXplZCB1c2UpLg0KICAgICAgICAtICAoLi4uKS55IHJlZmVycyB0byB0
aGUgc3RydWN0IG1lbWJlciwgc2luY2Ugb3RoZXJ3aXNlIGFuIHJ2YWx1ZSBpcyBub3QgDQpl
eHBlY3RlZCB0aGVyZS4NCg0KLSAgQ29uc3RyYWludCB2aW9sYXRpb25zOg0KDQogICAgLQ0K
ICAgICAgICB2b2lkIGZvbyhjaGFyICgqYSlbc2l6ZW9mICouYl0sIGNoYXIgKCpiKVtzaXpl
b2YgKi5hXSk7DQoNCiAgICAgICAgRXhwbGFuYXRpb246DQogICAgICAgIC0gIHNpemVvZigq
LmIpOiBDYW5ub3QgZ2V0IHNpemUgb2YgaW5jb21wbGV0ZSB0eXBlLg0KICAgICAgICAtICBz
aXplb2YoKi5hKTogQ2Fubm90IGdldCBzaXplIG9mIGluY29tcGxldGUgdHlwZS4NCg0KICAg
IC0NCiAgICAgICAgdm9pZCBmKHNpemVfdCBzLCBpbnQgYVtzaXplb2YoMSkgPSAxXSk7DQoN
CiAgICAgICAgRXhwbGFuYXRpb246DQogICAgICAgIC0gIENhbm5vdCBhc3NpZ24gdG8gcnZh
bHVlLg0KDQogICAgLQ0KICAgICAgICB2b2lkIGYoc2l6ZV90IHMsIGludCBhWy5zID0gMV0p
Ow0KDQogICAgICAgIEV4cGxhbmF0aW9uOg0KICAgICAgICAtICBDYW5ub3QgYXNzaWduIHRv
IHJ2YWx1ZS4NCg0KICAgIC0NCiAgICAgICAgdm9pZCBmKHNpemVfdCBzLCBpbnQgYVtzaXpl
b2YoLnMpXSk7DQoNCiAgICAgICAgRXhwbGFuYXRpb246DQogICAgICAgIC0gIHNpemVvZigu
cyk6IENhbm5vdCBnZXQgc2l6ZSBvZiBpbmNvbXBsZXRlIHR5cGUuDQoNCg0KRG9lcyB0aGlz
IGlkZWEgbWFrZSBzZW5zZSB0byB5b3U/DQoNCg0KQ2hlZXJzLA0KQWxleA0KLS0gDQo8aHR0
cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------FRsVruZLHPsBCBSxQpO0mBG9--

--------------wJfk6sTxbA29vqFyfDLlXUBz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNxG0gACgkQnowa+77/
2zInQQ/7Bk1EtHRSWK20KRfbqxLFcRA0jPzqYkU/2lLijZv2BGyILXTs8hUKRm1B
kElPWr4kyCT70oufFxqJ4GplVpIeu10qNhNNtsYCNOiy7KRZ8ksoEmk50gOCJyEj
YVYxYS1ZhxM4fISSMZQL0nFqxphQIFPTlCLeLjD4/yFe7Uu/dCXRjAirIQo18U9J
1jDIRBC96oUmfBPhErB2Kzfe/usOyY4j93/ujnEG54qm8+wXrLL8AtSdRNGLIoDG
e1Qrmaaii/Mxq0Fz00iFBR81UfTE94r/KR7woaRK2r/xV6DL4NO5NgNnxl8gD36Y
CNdH2d5FqepXLuBgLpE+Jk0Er6q9FvhHAPRflPQO/sB1Z9QSePvNTQRgJ3YvtF2A
mgDsC+qZUlTxAfcx71nMuwhpBkpBRn8O5bzENd9TEbAdfTj4Rw9c6XyD64Kou1va
kCtJrLkuz2JqILRDIJUyCivb3Z9U1Atw7qm3C4xeEUDA6afvnd4g9H+60BmvmVPh
WpIrp3EiLFCaU88bDsDHzWsKuzrk63K34ESw/sguDLPHTuuBF5YsEYsLP1ruH2Mo
G5QG5IpE460pAqfwfRhzWQcM54vNX3T+feqQahPHAfqjm8Ogg9431wY98l/d8Kwk
8pSwFOm3uv59rcqtzT7vH37TboIw6fYgFdXSAzdM6ooeWtdKB1E=
=ozJm
-----END PGP SIGNATURE-----

--------------wJfk6sTxbA29vqFyfDLlXUBz--
