Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2B3A614FB8
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 17:52:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229961AbiKAQw2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 12:52:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbiKAQw1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 12:52:27 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DBC518B11
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 09:52:26 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id p16so3640599wmc.3
        for <linux-man@vger.kernel.org>; Tue, 01 Nov 2022 09:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wb03GiCDOlQpUJxRQWtK8pVhQPt9ftfY2uQFQmp72ys=;
        b=W7JlOl9kpPdbkcyNFJ9QZG1kk8brVQ7gLONvoICrq4OLre8/mdXuIBBRPw+XlEkU1/
         rpR3aoYu0hvXGZmIG9eL19KR7oCWWUFJZTz9YruSNg180Cue+3eZYWEik+qBeHuuReu7
         N5V1Ep2ajXYYz6+q+7Ws880793rqcS8N7PiOKk6wO5qR0semFhDkwXInw1UVlXIstJE9
         +/srl0Jh8yj6ExFpNz7ruWY20GDkJT4370BSDN0jjJbRPro5NFRBoTgC8lebKEzOh+m+
         L92U4VzaEIrXPSUhAXAo7JMEIIDm0JzuM6BV9q2zT7gWRNzRcYt2U2zWYY+6cg3Fv+4e
         j+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wb03GiCDOlQpUJxRQWtK8pVhQPt9ftfY2uQFQmp72ys=;
        b=L5oOrzIz+ruDtSyHXNLteDsFzHyuJ/padlSfgur5aavUsCRwi0LzSmbR0JBSVnjKkk
         QkIdTiVirA9rqzFakVCAAeqW6Y41WiKs5pj8YITZ98tyICywx+RlZDq+7kwE5iJRU66z
         EWPovFjusAWTxG0oG6BjkwSYdygEtkGyQGicBguamLBhBPGh6+sIGWgj6YpvuREr77lB
         kKOm3CWQgrfjfjhGrXIgCAbrZNIO+TrhIPW003TRdDegyLGR7Wy3NYd9Q2ZygGmTUe9c
         2lcIKXwAQJ3gr4OU8AXCclq/kR8FVTOf5+bsNUs2Ne0YOTafJf6e6c74kENJNloX3Y48
         KZrA==
X-Gm-Message-State: ACrzQf2BMqMOLH8McDne3DfsGVU2h9AXMfbOk3Wi7BUhrGSpPsBANzp3
        ILG5qxTLwl5M+iELbqj7bx0=
X-Google-Smtp-Source: AMsMyM47qy3Uu6xqQ+cUyv4+pV223+Squwrgd9f6M7Qp4XkTvOzDU0OvT5fKbjTfSd6Ms3bC55zx9w==
X-Received: by 2002:a05:600c:190c:b0:3cc:b6ab:7f3a with SMTP id j12-20020a05600c190c00b003ccb6ab7f3amr12896700wmq.4.1667321545176;
        Tue, 01 Nov 2022 09:52:25 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c4d8600b003b50428cf66sm10853148wmp.33.2022.11.01.09.52.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Nov 2022 09:52:21 -0700 (PDT)
Message-ID: <691ce8fe-b141-6b62-27c9-81fb24ad1819@gmail.com>
Date:   Tue, 1 Nov 2022 17:52:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: proc map_files entries require CAP_CHECKPOINT_RESTORE in init ns,
 not current
Content-Language: en-US
To:     Younes Manton <younes.m@gmail.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Adrian Reber <areber@redhat.com>,
        imachug@yandex.ru
References: <CAMVNhxTgTFTyqskFoqV1=yUQZRsfd4=rVy-HjkkZjTMhfGDQsw@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAMVNhxTgTFTyqskFoqV1=yUQZRsfd4=rVy-HjkkZjTMhfGDQsw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3BMZekD703FMvevEvUixbNxJ"
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------3BMZekD703FMvevEvUixbNxJ
Content-Type: multipart/mixed; boundary="------------fQqN8l0wD2IOxHlotlKotToI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Younes Manton <younes.m@gmail.com>, mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org, Adrian Reber <areber@redhat.com>,
 imachug@yandex.ru
Message-ID: <691ce8fe-b141-6b62-27c9-81fb24ad1819@gmail.com>
Subject: Re: proc map_files entries require CAP_CHECKPOINT_RESTORE in init ns,
 not current
References: <CAMVNhxTgTFTyqskFoqV1=yUQZRsfd4=rVy-HjkkZjTMhfGDQsw@mail.gmail.com>
In-Reply-To: <CAMVNhxTgTFTyqskFoqV1=yUQZRsfd4=rVy-HjkkZjTMhfGDQsw@mail.gmail.com>

--------------fQqN8l0wD2IOxHlotlKotToI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWW91bmVzLA0KDQpPbiAxMS8xLzIyIDE3OjQ5LCBZb3VuZXMgTWFudG9uIHdyb3RlOg0K
PiBIaSwNCj4gDQo+IGltYWNodWdAeWFuZGV4LnJ1IHRlc3RpbmcgQ1JJVSBub3RpY2VkIHRo
YXQgdGhlIGRvY3VtZW50YXRpb24gZm9yDQo+IHByb2MncyBtYXBfZmlsZXMgZGlyZWN0b3J5
IHdpdGggcmVzcGVjdCB0byBDQVBfQ0hFQ0tQT0lOVF9SRVNUT1JFIGFuZA0KPiBuYW1lc3Bh
Y2VzIGFwcGVhcnMgdG8gYmUgd3JvbmcuIFRoZSB0ZXh0IHJlYWRzOg0KPiANCj4+IHNpbmNl
IExpbnV4IDUuOSwgdGhlIHJlYWRpbmcgcHJvY2VzcyBtdXN0IGhhdmUNCj4+IGVpdGhlciBD
QVBfU1lTX0FETUlOIG9yIENBUF9DSEVDS1BPSU5UX1JFU1RPUkUgaW4gdGhlIHVzZXINCj4+
IG5hbWVzcGFjZSB3aGVyZSBpdCByZXNpZGVzLg0KPiANCj4gVGhlIHJlcG9ydGVyIG5vdGVk
IHRoYXQgdGhlIHVzZXIgYWN0dWFsbHkgbmVlZHMgdGhlIGNhcGFiaWxpdGllcyBpbg0KPiB0
aGUgaW5pdGlhbCB1c2VyIG5hbWVzcGFjZSwgbm90IGluIHRoZSBuYW1lc3BhY2UgdGhlIHBy
b2Nlc3MgcmVzaWRlcw0KPiBpbi4gQXMgZmFyIGFzIEkgY2FuIHRlbGwgdGhpcyBhcHBlYXJz
IHRvIGJlIHRoZSBjYXNlLg0KPiANCj4gVGhlIHRleHQgd2FzIGludHJvZHVjZWQgaW4gMTY3
Zjk0YjcwNzE0OGJjZDQ2ZmUzOWM3ZDRlYmZhZGE5ZWVkODhmNg0KPiBhbmQgcmVmZXJzIHRv
IGtlcm5lbCBjb21taXQgMTI4ODZmOGFiMTBjZTZhMDlhZjFkOTI1MzVkNDljODFhYWEyMTVh
OC4NCj4gDQo+IFRoZSBjb2RlIGFuZCBtZXNzYWdlIGluIHRoZSBrZXJuZWwgY29tbWl0IHJl
ZmVyIHRvIHRoZSBpbml0aWFsIHVzZXIgbmFtZXNwYWNlLg0KDQpDb3VsZCB5b3UgcGxlYXNl
IHdyaXRlIGEgc21hbGwgcHJvZ3JhbSBhbmQgc2hlbGwgc2Vzc2lvbiB0aGF0IGRlbW9uc3Ry
YXRlcyANCmVpdGhlciBiZWhhdmlvcj8NCg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------fQqN8l0wD2IOxHlotlKotToI--

--------------3BMZekD703FMvevEvUixbNxJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNhTsIACgkQnowa+77/
2zJkfA//WMAVWg+GQ1E31Cv6oYjqE2V2fUM1zGdRMo7IC6gQKRhWRJUUoInea9CQ
HLVTWot7iqIoL6SWDkjlBk7sGeAbURtf4Z3zcD3NOsDpdLNPJkzxqik7ujM725RF
QamdMCRTiVru/e5ngaCj+CEObRyJwrYBUxscJgL/aLFSNSQ/K7AYVQdvZGujxkh4
7U1/Y4HLgpOwZ67WG0iqvxoIpDTRusbar0WFsJ4e75oXA/Ue3KKme7BwuPh41Lqc
DEf02Z/EQb9tNJilflkU0uoyM2CwkC7tig3D4O2R27W9mMaLVzSxzpCT/C1TQ1GL
zhcwCO/GGi1QZNspUQPvGhKovqiceK2EoXzDnWX0Ze7Fr9s+ciP1Pqra9vuS2uGp
vIFCFr+lleWRP+Co5zHB7pTYNLBqSpgl+2HamKJnydwQiM5vrNvQM3Fs5MpXlbQj
2MTs8jdO6dynaa/RcUdXm9ddmOqo0w5hoDkSvwH3Hi9UzAmo4S9/pNHWvS2G7+vx
81kr/KcplyF4ULKI/k4ApHx9kpHtBGOMhaBB+czwTsziqmgvi9oK9mH4gFO7VwRv
CtzPtsjwwVlxEZSuII2IRfhZvlpM2Pm8Z3zX5mIP8btw2+ouvm/3gdEZOzc4aIit
NbVd1kCIp/b0fiqUOY2cDMZ7xFCIZC23i3+BN0LHUszSdXZsbhE=
=SBMj
-----END PGP SIGNATURE-----

--------------3BMZekD703FMvevEvUixbNxJ--
