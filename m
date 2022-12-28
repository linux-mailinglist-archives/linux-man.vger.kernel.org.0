Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CA2D6586E1
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 22:03:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230406AbiL1VDp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 16:03:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230006AbiL1VDn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 16:03:43 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF699120AA
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:03:42 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso11992247wmp.3
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0xKWgLAQxHZGqa+qJ0bDKpch6cUYWtyjund+3X2my+0=;
        b=FTF05467xxVTxNsLymGAPopCNJmfju0uH1OVAbDdEyRnHI0pdT9+pf+bXbQx6U/hib
         L5qePb67E3vi9JGDoYH0r6Y0kq3ay3cOjdMs6/LoAQhi0PShkaROmBfEd8hh+pSYCnlM
         fK8crLGj6Ts8sS3+fTpkiEugrd7yTYPZKWzHyDlaZpFF2nzGcHQhTRNuzM8+Eu2pTstZ
         OVzYscbEe8sYQZA3193azbgJiY9KsGnouMdIFdLYvkntZUMrLbsfsd6h+3MyAlUP4nnM
         bBdIvjC3OnwstM/QK440vAMgwx7LkcGO/AcL5ALrLe/1t9XxJz9EStSBpKvGxQOco4yk
         UXGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0xKWgLAQxHZGqa+qJ0bDKpch6cUYWtyjund+3X2my+0=;
        b=RNgYSdfxtKl/zu48uPTC10TGb9VxF4CjaFzgt5nARCVBRBH+Rt1wkvv/nhcSm7bPmQ
         IDhxiK9AtxLq+UzQYzohT2EoA7+bFG4yYTVaBSQ7ojW7eiSnme8eZNcg0yWDTVo7EsIa
         5BosxCTKO/qejNHW1yu0RPFnuS2/ElEaK7VErhtfhviE2DHAmEldN0ijHU27DyjTop60
         Ra+dqtG8xMfefn1ccDKh26tyLWTDl0zv77vKQMqTFj+WS143iNvO6YTxJgdq/bWXIPSw
         c/NCNrMxmG7JmvkFcHgEoxZ+EYzf9VOc8q+q7HUqivX9TvRGKresHBFZRrEuLyN3ZJv4
         altA==
X-Gm-Message-State: AFqh2kruUDVA2oEHTnKE7WhI2XfeOgeIenlnmFxaYQe3QzR6uruUS2jm
        P7Jzm3zg3X6RhsnFAWFRplc=
X-Google-Smtp-Source: AMrXdXsLg4WMyH+sGshVryWNmw71A05YnGy7NfUmwdtwILOERdRX8V8fSAwTEALL5T1a4lxGc/dpLg==
X-Received: by 2002:a05:600c:17c6:b0:3d2:20ec:24be with SMTP id y6-20020a05600c17c600b003d220ec24bemr19179548wmo.38.1672261421466;
        Wed, 28 Dec 2022 13:03:41 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 19-20020a05600c021300b003c5571c27a1sm25304805wmi.32.2022.12.28.13.03.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 13:03:40 -0800 (PST)
Message-ID: <0c6b86cb-d471-2e35-89f3-840152c60aa2@gmail.com>
Date:   Wed, 28 Dec 2022 22:03:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Jonny Grant <jg@jguk.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Florian Weimer <fweimer@redhat.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
In-Reply-To: <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mids370VI9Mug4sPCYR2eIsY"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mids370VI9Mug4sPCYR2eIsY
Content-Type: multipart/mixed; boundary="------------onb0guP5Qm0lEB105i1B3zYO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jonny Grant <jg@jguk.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>,
 Florian Weimer <fweimer@redhat.com>
Message-ID: <0c6b86cb-d471-2e35-89f3-840152c60aa2@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
In-Reply-To: <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>

--------------onb0guP5Qm0lEB105i1B3zYO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9ubnksDQoNCk9uIDEyLzI4LzIyIDIxOjU2LCBBbGVqYW5kcm8gQ29sb21hciB3cm90
ZToNCj4gSGkgSm9ubnksDQo+IA0KPiBPbiAxMi8yOC8yMiAyMTo1MSwgSm9ubnkgR3JhbnQg
d3JvdGU6DQo+PiBZb3UncmUgY29tcGxldGVseSByaWdodC4gSXQncyBhIHJlYWwgaXNzdWUg
aWYgc29mdHdhcmUgc3RhcnRzIG11bHRpcGxlIHRpbWVzIA0KPj4gcGVyIHNlY29uZCwgb3Ig
ZXhlY3V0ZXMgaW4gbGVzcyB0aGFuIG9uZSBzZWNvbmQgYW5kIHRoZW4gcnVucyBhZ2Fpbi4g
T3VyIA0KPj4gc29mdHdhcmUgYWx3YXlzIHJ1bnMgZm9yIGF0IGxlYXN0IG1pbnV0ZXMsIG1h
eWJlIGFub3RoZXIgY29kZSBzdWdnZXN0aW9uIGZvciBhIA0KPj4gc2VlZCB3b3VsZCBiZSBn
b29kIGluc3RlYWQsIGxpa2UgYXJjNHJhbmRvbS4gSSBkbyBsaWtlIHRoYXQgcmFuZCgpIG9m
ZmVycyBhIA0KPj4gcmVwcm9kdWNpYmxlIHNlcXVlbmNlLCB1c2VmdWwgd2hlbiBpbiBzb21l
IG90aGVyIHNvZnR3YXJlIHdlIGxvZ2dlZCB0aGUgc2VlZCANCj4+IHZhbHVlIHVzZWQuIHJh
bmRvbS40IC0gL2Rldi9yYW5kb20gd291bGQgYmUgYSBiZXR0ZXIgc2VlZCB0aGFuIHRpbWUo
TlVMTCkgaWYgDQo+PiBydW5uaW5nIHRoZSBwcm9ncmFtIG11bHRpcGxlIHRpbWVzIHBlciBz
ZWNvbmQuIEFueXdheSwgcmFuZCgpIGlzIG9ubHkgDQo+PiBwc2V1ZG8tcmFuZG9tLCB1dGls
aXNpbmcgL2Rldi9yYW5kb20gd291bGQgYmUgcmVhbGx5IG11Y2ggbW9yZSByYW5kb20sIGFu
ZCBJIA0KPj4gbGlrZSB0aGF0IHRoZSBzZWVkIGlzIHNhdmVkIGJldHdlZW4gcmVib290cy4N
Cj4gDQo+IEFoaCwgSSBkaWRuJ3QgY29ubmVjdCB0aGUgZG90cyB0aGUgb3RoZXIgZGF5IcKg
IFdlIGRvbid0IG5lZWQgdG8gd2FpdCBmb3IgZ2xpYmMuIA0KPiBsaWJic2QgYWxyZWFkeSBw
cm92aWRlcyBhcmM0cmFuZG9tIG9uIEdOVS9MaW51eCBzeXN0ZW1zLCBzbyBJIGNhbiBhbHJl
YWR5IA0KPiByZWNvbW1lbmQgdXNpbmcgYXJjNHJhbmRvbSB0byBzZWVkIHNyYW5kKDMpLg0K
PiANCj4gSSdsbCBwcmVwYXJlIGEgcGF0Y2guLi4NCj4gDQoNCkkgd2lsbCBwcm9iYWJseSBh
cHBseSB0aGUgZm9sbG93aW5nIHBhdGNoLiAgRG8geW91IGhhdmUgYW55IGNvbW1lbnRzPyAg
RG9lcyBpdCANCnByb3ZpZGUgdGhlIGluZm9ybWF0aW9uIHlvdSB3YW50ZWQgdG8gYWRkPw0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KZGlmZiAtLWdpdCBhL21hbjMvcmFuZC4zIGIvbWFuMy9y
YW5kLjMNCmluZGV4IDU3MjQ3MTc0OS4uMzUwYTg3NWQ4IDEwMDY0NA0KLS0tIGEvbWFuMy9y
YW5kLjMNCisrKyBiL21hbjMvcmFuZC4zDQpAQCAtMTkwLDYgKzE5MCw5IEBAIC5TSCBFWEFN
UExFUw0KICBwc2V1ZG8tcmFuZG9tIHNlcXVlbmNlIHByb2R1Y2VkIGJ5DQogIC5CUiByYW5k
ICgpDQogIHdoZW4gZ2l2ZW4gYSBwYXJ0aWN1bGFyIHNlZWQuDQorV2hlbiB0aGUgc2VlZCBp
cw0KKy5JUiBcLTEgLA0KK3RoZSBwcm9ncmFtIHVzZXMgYSByYW5kb20gc2VlZC4NCiAgLlBQ
DQogIC5pbiArNG4NCiAgLlwiIFNSQyBCRUdJTiAocmFuZC5jKQ0KQEAgLTIxMSw3ICsyMTQs
MTEgQEAgLlNIIEVYQU1QTEVTDQogICAgICBzZWVkID0gYXRvaShhcmd2WzFdKTsNCiAgICAg
IG5sb29wcyA9IGF0b2koYXJndlsyXSk7DQoNCi0gICAgc3JhbmQoc2VlZCk7DQorICAgIGlm
IChzZWVkID09IC0xKQ0KKyAgICAgICAgc3JhbmQoc3JjNHJhbmRvbSgpKTsNCisgICAgZWxz
ZQ0KKyAgICAgICAgc3JhbmQoc2VlZCk7DQorDQogICAgICBmb3IgKHVuc2lnbmVkIGludCBq
ID0gMDsgaiA8IG5sb29wczsgaisrKSB7DQogICAgICAgICAgciA9ICByYW5kKCk7DQogICAg
ICAgICAgcHJpbnRmKCIlZFxlbiIsIHIpOw0KQEAgLTIyMyw1ICsyMzAsNiBAQCAuU0ggRVhB
TVBMRVMNCiAgLlwiIFNSQyBFTkQNCiAgLmluDQogIC5TSCBTRUUgQUxTTw0KKy5CUiBhcmM0
cmFuZG9tICgzYnNkKSwNCiAgLkJSIGRyYW5kNDggKDMpLA0KICAuQlIgcmFuZG9tICgzKQ0K
DQoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------onb0guP5Qm0lEB105i1B3zYO--

--------------mids370VI9Mug4sPCYR2eIsY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOsrysACgkQnowa+77/
2zJvNw//TBJ85BMsMjkeh/hccbgogT599sECP7Ier3ZHCw1nQ508XHqdMDCh4SZf
QPYn+QR5GL2M4XxvC/qi2QNn9tIdKch4BeB4AvK9EIGuvPnQB8iW2bJRtQqHylu0
4oac0fEcvhU8V2GaeU6u/v6G/icRu8AKWGnghiHbEn5ZrJsdRrlNb+okS/LZyATX
l8NUj5BGYUyJBd6N0dRb0SitH+0h0wSqUija1XXIwmy6kaSvQNizmK+PMdDrElG6
8n1fLRewiCMmqd1KEFyTSX0s8LMpAr87gQdL67gVpC0gegsKYxaQqcZTrD4+uXoA
ya3w4375u45/8zjkjPmSdA7z2V8mrHhw0UEFqJI9oBPmhsi0GMCgaR7BJfBbTo/n
rnKr2HmRgOjYgJYYh9LUTAUWiZM0E5QVuQC7i9HbEulsfKY9VNMkliALKNKeuQa7
vv9Gh2gS5oF7H8ZJ+xcyP62rZhq6xIQHLHfcgFBgT2yGh7cThrjyHyKCnzuZW6vL
1SkyPxw1x/jTD0bPCknme+fgWRKeHilWdfgR1Vz6iJQfJAI9shp38FpCzEiPsL1P
VgVn6vyFnlNWrUyUvdBBa0Qr2ESF/fyPnpFG8ll3eVkKvydmrPxKmRrAj8NGDJqM
DeZwUs2gdCsRW3RBblPzN2CAuQQIcpjYBzuBTn74yjq/VHmsYtg=
=PsIE
-----END PGP SIGNATURE-----

--------------mids370VI9Mug4sPCYR2eIsY--
