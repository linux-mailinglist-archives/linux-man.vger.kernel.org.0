Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87071641F97
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:43:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbiLDUn3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:43:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDUn2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:43:28 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A59511C0B
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:43:27 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id h12so15821644wrv.10
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ETeEVObl8CO+YpNIf2csGepC2TJdm495kzL4IOrkn9E=;
        b=pO9KGLh6Aax8dgR+GdzwueB/YjdSXH9WmS5dxroq+Mz0KzZJKj/WjzEi/ji7sbyi4t
         Ms2c3qTugJ4ZFdH9tk0D4ZXe75daBym8QBeFKJfIDXKCVKgVb3zlKfFViKdG0FTbbuId
         Aw7aDOPuysJqCjSXpU8yEShSftsOBUZZL5kpOLNR3fDjR3g9jyDXsR+xGGw18AGBD8X4
         sMpQBxje6ALejmhUK3/V7MW2KOWw8ZBCTafaEdCxjTacb9XZvztn7cJSUW0zqtXavRLH
         QRlfZMGyy/OH8Lo/RrTOqWz0Utmg93qcUeqF5qlFqHtimhhpvK2V1g3GYQtAed5jN767
         /G8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ETeEVObl8CO+YpNIf2csGepC2TJdm495kzL4IOrkn9E=;
        b=3X7DwHR4GrThHn2Y69+Yzjyt1SNoRbXTjJuhTLTGXfXZEqfPEw60DpOCWfAqHNbjL5
         89Dkhzr0V2WV+XhCzCPY43Cs/chB3FfHB/zHqULRxVFA1VVwmj4Vj5xe8QKCrhP/9auX
         YkDA0j5s/ORFxLzMUSEc6dbC600ryvr3lk7ze3V+yijKyD7OKrImmz0MC7HJXl+OMV2j
         dBzEk+aO7xe+1FQM4qOymfz0cl5twBfbsr4eLlyVfhpiAUfOufpv2kJNNBBe9hfoCE5X
         eEYluOTl3uABoK/fxWR1b/V6ZWwqXeoTNl9p+2T2kbmCXvmiEhis44NWNnaJ6/vqUyQ8
         opjA==
X-Gm-Message-State: ANoB5pmLgq5P0UrydXYQv+fP5wzBoYNmBmcE/Evff+aWp0IFAhsPCPdN
        xz6wGt3ojoAUdduJN6+RsXI=
X-Google-Smtp-Source: AA0mqf79Bp0h0hJloJma1IQE3RcWt/1ENJCqu2zBupdDFCkgQduWoFbHjL38N54Hj1CVdpJ0ME/BhQ==
X-Received: by 2002:a5d:5e87:0:b0:241:e7a6:db08 with SMTP id ck7-20020a5d5e87000000b00241e7a6db08mr33508516wrb.349.1670186605868;
        Sun, 04 Dec 2022 12:43:25 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p17-20020a5d68d1000000b002420cfcd13dsm12259581wrw.105.2022.12.04.12.43.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:43:25 -0800 (PST)
Message-ID: <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
Date:   Sun, 4 Dec 2022 21:42:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page wcsncpy.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>,
        GNU C Library <libc-alpha@sourceware.org>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AxiE6SXutwrKmvfSU081jInc"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------AxiE6SXutwrKmvfSU081jInc
Content-Type: multipart/mixed; boundary="------------AdQHrWABI0n4gUKhsT0Cyb8R";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>,
 GNU C Library <libc-alpha@sourceware.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
Subject: Re: Issue in man page wcsncpy.3
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090724.GA1249@Debian-50-lenny-64-minimal>

--------------AdQHrWABI0n4gUKhsT0Cyb8R
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsIGdsaWJjIGRldmVsb3BlcnMsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdl
IEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dp
bmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6ICAgIElzIHRoZSAiTCIgaW4gdGhlIGJyYWNr
ZXQgKGZvciB0aGUgTlVMTCBjaGFyYWN0ZXIpIGNvcnJlY3Q/DQo+IA0KPiAiVGhlIEI8d2Nz
bmNweT4oKSAgZnVuY3Rpb24gaXMgdGhlIHdpZGUtY2hhcmFjdGVyIGVxdWl2YWxlbnQgb2Yg
dGhlIg0KPiAiQjxzdHJuY3B5PigzKSAgZnVuY3Rpb24uICBJdCBjb3BpZXMgYXQgbW9zdCBJ
PG4+IHdpZGUgY2hhcmFjdGVycyBmcm9tIHRoZSINCj4gIndpZGUtY2hhcmFjdGVyIHN0cmlu
ZyBwb2ludGVkIHRvIGJ5IEk8c3JjPiwgaW5jbHVkaW5nIHRoZSB0ZXJtaW5hdGluZyBudWxs
Ig0KPiAid2lkZSBjaGFyYWN0ZXIgKExcXChhcVxcZTBcXChhcSksIHRvIHRoZSBhcnJheSBw
b2ludGVkIHRvIGJ5IEk8ZGVzdD4uIg0KPiAiRXhhY3RseSBJPG4+IHdpZGUgY2hhcmFjdGVy
cyBhcmUgd3JpdHRlbiBhdCBJPGRlc3Q+LiAgSWYgdGhlIGxlbmd0aCINCj4gIkk8d2NzbGVu
KHNyYyk+IGlzIHNtYWxsZXIgdGhhbiBJPG4+LCB0aGUgcmVtYWluaW5nIHdpZGUgY2hhcmFj
dGVycyBpbiB0aGUiDQo+ICJhcnJheSBwb2ludGVkIHRvIGJ5IEk8ZGVzdD4gYXJlIGZpbGxl
ZCB3aXRoIG51bGwgd2lkZSBjaGFyYWN0ZXJzLiAgSWYgdGhlIg0KPiAibGVuZ3RoIEk8d2Nz
bGVuKHNyYyk+IGlzIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byBJPG4+LCB0aGUgc3RyaW5n
IHBvaW50ZWQiDQo+ICJ0byBieSBJPGRlc3Q+IHdpbGwgbm90IGJlIHRlcm1pbmF0ZWQgYnkg
YSBudWxsIHdpZGUgY2hhcmFjdGVyLiINCg0KQXMgYW4gdW5yZWxhdGVkIG5vdGUuICBJJ3Zl
IGhhZCB0aGlzIHJ1bm5pbmcgaW4gbXkgbWluZCBmb3Igc29tZSB0aW1lLi4uIHlvdXIgDQp2
YXJpb3VzIGJ1ZyByZXBvcnRzIGZvciBzdHJuY3B5KDMpIGFuZCBzaW1pbGFyIHdpZGUgY2hh
cmFjdGVyIGZ1bmN0aW9ucyBoYXZlIA0KdHJpZ2dlcmVkIHRob3NlIHRob3VndHMuDQoNCkkn
bSBnb2luZyB0byBtYXJrIHN0cm5jcHkoMykgYW5kIHNpbWlsYXIgZnVuY3Rpb25zIGFzIGRl
cHJlY2F0ZWQsIGV2ZW4gaWYgbm8gDQpsaWJjIG9yIHN0YW5kYXJkIGhhcyBkb25lIHNvLiAg
VGhlcmUncyB3aWRlIGFncmVlbWVudCAoYXQgbGVhc3QgaW4gc29tZSANCmNvbW11bml0aWVz
KSB0aGF0IHN0cm5jcHkoMykgX2lzIGV2aWxfLiAgVGhlcmUncyBzaW1wbHkgbm8gdXNlIGZv
ciBpdC4NCg0KSSBwcm9wb3NlIHRoYXQgZ2xpYmMgYWxzbyBtYXJrcyBpdCBhcyBkZXByZWNh
dGVkLg0KDQpJJ3ZlIHdvcmtlZCBmb3IgYSBmZXcgbW9udGhzIG9uIGltcHJvdmluZyBzdHJp
bmcgaGFuZGxpbmcgaW4gdmFyaW91cyBwcm9qZWN0czogDQpzaGFkb3ctdXRpbHMgPGh0dHBz
Oi8vZ2l0aHViLmNvbS9zaGFkb3ctbWFpbnQvc2hhZG93L3B1bGwvNTY5PiwgYW5kIGluIG5n
aW54IA0KVW5pdC4gIEkndmUgY29tZSB0byB0aGUgZm9sbG93aW5nIGd1aWRlbGluZXMgZm9y
IHVzaW5nIHN0cmluZ3M6DQoNCi0gIHN0cmxjcHkoMyk6ICBDb3B5IGZyb20gc3RyaW5nIHRv
IHN0cmluZywgZGV0ZWN0aW5nIHRydW5jYXRpb24NCi0gIHN0cnNjcHkoOSk6ICBDb3B5IGZy
b20gdW50cnVzdGVkIHN0cmluZyB0byBzdHJpbmcsIGRldGVjdGluZyBicm9rZW4gb25lcw0K
LSAgdXN0cjJzdHIoKTogIENvcHkgZnJvbSB1bnRlcm1pbmF0ZWQgc3RyaW5nIHRvIHN0cmlu
Zw0KICAgIC0gIERlZmluaXRpb246IA0KPGh0dHBzOi8vZ2l0aHViLmNvbS9zaGFkb3ctbWFp
bnQvc2hhZG93L3B1bGwvNTY5L2ZpbGVzI2RpZmYtYTJiOGY4NTY4YWQwMjVjMmFlYjRjNjRk
MzUxMGY0MmQ4NzRlOWVmMGE2NGE4OWMyZGQ3NTBhYTkzYWFiY2Q5Nz4NCg0KLSAgc3RwZWNw
eSgpOiAgQ29weSBmcm9tIHN0cmluZyB0byBzdHJpbmcsIHdpdGggZWFzeSAmIHNhZmUgY29u
Y2F0ZW5hdGlvbiwgYW5kIA0KcmVwb3J0aW5nIHRydW5jYXRpb24gYXQgdGhlIGVuZCBvZiB0
aGUgY2hhaW4gY2FsbC4NCiAgICAtICBEZWZpbml0aW9uOiA8aHR0cHM6Ly9zb2Z0d2FyZS5j
b2RpZGFjdC5jb20vcG9zdHMvMjg1OTQ2LzI4NzUyMiNhbnN3ZXItMjg3NTIyPg0KDQotICB1
c3RyMnN0cGUoKTogIENvbWJpbmF0aW9uIG9mIHVzdHIyc3RyKCkgYW5kIHN0cGVjcHkoKS4N
CiAgICAtICBEZWZpbml0aW9uOiAgTm90IHlldCBwdWJsaWMNCg0KDQpBbmQgYWxzbywgbWVt
Y3B5KCksIG1lbXBjcHkoKSwgb3IgbWVtY2NweSgpIGNhbiBiZSB1c2VkIGZvciBjb3B5aW5n
IHVudGVybWluYXRlZCANCnN0cmluZ3MuDQoNCkJ1dCBJIGRvbid0IHNlZSBhbnkgc2NlbmFy
aW8gd2hlcmUgc3RybmNweSgpIGlzIHRoZSByaWdodCBmdW5jdGlvbiB0byBjYWxsLiAgQW5k
IA0KdGhlIG5hbWUgaXMgY2VydGFpbmx5IG5vdCB0ZWxsaW5nIHRoYXQgZWl0aGVyLg0KDQoN
CkNoZWVycywNCg0KQWxleA0KDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------AdQHrWABI0n4gUKhsT0Cyb8R--

--------------AxiE6SXutwrKmvfSU081jInc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONBlIACgkQnowa+77/
2zINEA/9H9F0OuoWmp11oBvPjND/nJKOC8dnMpQLxdQmtYy5PZKxaV/o+TRIYoun
QQih3ZjcQqp2zKyMxybhyhnKpbKXzDE3SqqEJ1HZCCEpZFwLVjq5tsS9KWy/b2W1
i5pfcHZZlhLl3DZHxPBwse1gugshqVoSA/P3Lhr3wMCEcb/ttBBqvkOsN9nYp4aE
AxpmHMDym/q3Yer5k3WQii04eMcj/+WPZEViA9VhYI06BZnlCZbgWcewF35w+IQM
Xz1+tAyX2cRUUBC8he+/2Xm13m0jeIMwDZLvmYm87OQNfgE1olYuAL7DRRnGjDjb
yGPJi2ZwRCB0gq735m38IJvJC91h12OiLlkIqAXhx9wjpVtMNWpjuhgBU3sXQqMC
LaFu7GX3clZFrdpTHR5N7M0QSUCCCcuo6s63YA/LxA4skFlCY3mcOOFRk/nyI58f
guVVGV/D0eZ1R49oS+pLY8NodZaOuN2I1puL3I2utYfjfFf805V32PxL/Se2Mpwb
/A8J1coAexiMUBQQKgULHoRrF1wPCyi5SOZQA25FamY19rdh/UCo8D6r0pmkias8
uGV8OiUiMC38guI5oUSaBocxIU7ebksoXLS9ts0m9pOd/bWwW8NO2DtyQRYDHYri
cCEHIx3PBD45cPl33J8DF0W8UF1x5GIDM+UJ88kht3YDXjE6ZcQ=
=pE2i
-----END PGP SIGNATURE-----

--------------AxiE6SXutwrKmvfSU081jInc--
