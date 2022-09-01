Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E12675AA17E
	for <lists+linux-man@lfdr.de>; Thu,  1 Sep 2022 23:28:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233131AbiIAV2q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Sep 2022 17:28:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231447AbiIAV2p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Sep 2022 17:28:45 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBDBD78BF4
        for <linux-man@vger.kernel.org>; Thu,  1 Sep 2022 14:28:43 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id c7so17322717wrp.11
        for <linux-man@vger.kernel.org>; Thu, 01 Sep 2022 14:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=ni6fwVLD10BCHsSULnoXrFdG7/P42mFxyJAlZWZwf2o=;
        b=EzNGay/pL3T5zjZT4tEhcBZwTTBoXtMSbucs/pMrB2M4xU84rEMgUQMkvS87IMJGU5
         bgIpcaby62KwW7yy/ykIE7FjIoJjHL+RgvHBvg/hvALbmMVAo3QjahUnErCtuMMuVbFL
         RR/0+gKYmJLfRUi1d8vkp1tZ+UxerTU+x2ia0neQZWKBY+EEH3DZ3YvYensoHvCeJ4BI
         zIz3L6IjeQ/b354a2Jj31Jp+flGIruKYafDb5heJ+yFd4TTdiMY9FpMKogV9a4GFWhRH
         p/TV7Mh9YgiUNirwgYwxDoh4XoAgaX/5uFn/+elubNTnKfZp99/zfHs8IIpTUhYBfWIu
         NsZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=ni6fwVLD10BCHsSULnoXrFdG7/P42mFxyJAlZWZwf2o=;
        b=oEof/psHo4w/wbxufz22um3vVrdVynO/YtHApq7qfHkRrl6dmCqSEmAvOkDUp3XrSO
         BTypIvFNKCY80Jw1JzMzXXLGX/keCDzbLljhIIiqJxe39WbALUv5/6rVGjKS5c84Zbhy
         JlPk+uATsTRF190PWoLzArbfCbQSzdbi5Cg5NnPINM7TCdGrlWH7WhW6dysGx6SzP2gH
         0fmwrg/UraNMPt3lIRFOzr5cKTQhaZbxYdgJu5HoAKHQ9A2pq5Hzm7w/VvEWa4/d8dxY
         HknjkBMd/RO/rC+PwjenBDlxNgwX5Di739LcBn/iOlS0Vw2q1tF0GtvhYxmVuC8y+t9r
         mzwA==
X-Gm-Message-State: ACgBeo2IFrICrUE0W5pYypgCb55stRX9vMq7htjn01F4TcoiDqX+CqZN
        Glt8MjN7jbmEmU7gqF3DFKP567Gd5T8=
X-Google-Smtp-Source: AA6agR7kh2KalN1vc2ebn5x2GFnbLFppIxnplezLDmV5gO6Lly8/IBMTIWjx7oqQzRvdwq7RIH10FQ==
X-Received: by 2002:a5d:43c8:0:b0:225:80d6:229e with SMTP id v8-20020a5d43c8000000b0022580d6229emr15012478wrr.182.1662067722371;
        Thu, 01 Sep 2022 14:28:42 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bn5-20020a056000060500b00226d217c3e6sm16419123wrb.64.2022.09.01.14.28.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 14:28:41 -0700 (PDT)
Message-ID: <410872f8-2157-4f82-cbab-d4a141863a84@gmail.com>
Date:   Thu, 1 Sep 2022 23:28:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 1/4] ioctl_console.2: ffix
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1Hwa3nEytCM53z0etnfR3URz"
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
--------------1Hwa3nEytCM53z0etnfR3URz
Content-Type: multipart/mixed; boundary="------------K0cnG7Tgy8DbYJWOxyPw0ZVr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <410872f8-2157-4f82-cbab-d4a141863a84@gmail.com>
Subject: Re: [PATCH 1/4] ioctl_console.2: ffix
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>

--------------K0cnG7Tgy8DbYJWOxyPw0ZVr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDkvMS8yMiAxNTozNSwg0L3QsNCxIHdyb3RlOg0KPiBTZXBhcmF0ZSBUSU9D
TElOVVggZnJvbSBzdWJjb2RlOiB0aGV5J3JlIHNlcGFyYXRlIHZhcmlhYmxlcw0KPiANCj4g
U2lnbmVkLW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5h
YmlqYWN6bGV3ZWxpLnh5ej4NCg0KUGF0Y2ggMS80IGFwcGxpZWQuICBTaW5jZSB0aGVyZSdz
IGZlZWRiYWNrIGFib3V0IGEgZmV3IG90aGVycyBpbmNsdWRpbmcgDQoyLzQsIEknbGwgd2Fp
dCBmb3IgdGhlIG90aGVycy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFu
Mi9pb2N0bF9jb25zb2xlLjIgfCAyMiArKysrKysrKysrKy0tLS0tLS0tLS0tDQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL21hbjIvaW9jdGxfY29uc29sZS4yIGIvbWFuMi9pb2N0bF9jb25zb2xl
LjINCj4gaW5kZXggMjhlYWFkZTgzLi45MzJiZTRlMTAgMTAwNjQ0DQo+IC0tLSBhL21hbjIv
aW9jdGxfY29uc29sZS4yDQo+ICsrKyBiL21hbjIvaW9jdGxfY29uc29sZS4yDQo+IEBAIC02
NjQsNyArNjY0LDcgQEAgcmVmZXJyZWQgdG8gaGVyZSBhcyB0aGUNCj4gICAuSVIgc3ViY29k
ZSAuDQo+ICAgVGhlc2UgYXJlIGxlZ2FsIG9ubHkgZm9yIHRoZSBzdXBlcnVzZXIgb3IgdGhl
IG93bmVyIG9mIHRoZSBjdXJyZW50IHRlcm1pbmFsLg0KPiAgIC5UUA0KPiAtLkIgIlRJT0NM
SU5VWCwgc3ViY29kZT0wIg0KPiArLkJSIFRJT0NMSU5VWCAiLCAiIHN1YmNvZGU9MA0KPiAg
IER1bXAgdGhlIHNjcmVlbi4NCj4gICBEaXNhcHBlYXJlZCBpbiBMaW51eCAxLjEuOTIuDQo+
ICAgKFdpdGgga2VybmVsIDEuMS45MiBvciBsYXRlciwgcmVhZCBmcm9tDQo+IEBAIC02NzMs
MTEgKzY3MywxMSBAQCBvcg0KPiAgIC5JIC9kZXYvdmNzYU4NCj4gICBpbnN0ZWFkLikNCj4g
ICAuVFANCj4gLS5CICJUSU9DTElOVVgsIHN1YmNvZGU9MSINCj4gKy5CUiBUSU9DTElOVVgg
IiwgIiBzdWJjb2RlPTENCj4gICBHZXQgdGFzayBpbmZvcm1hdGlvbi4NCj4gICBEaXNhcHBl
YXJlZCBpbiBMaW51eCAxLjEuOTIuDQo+ICAgLlRQDQo+IC0uQiAiVElPQ0xJTlVYLCBzdWJj
b2RlPTIiDQo+ICsuQlIgVElPQ0xJTlVYICIsICIgc3ViY29kZT0yDQo+ICAgU2V0IHNlbGVj
dGlvbi4NCj4gICAuSSBhcmdwDQo+ICAgcG9pbnRzIHRvIGENCj4gQEAgLTcxMCwzNSArNzEw
LDM1IEBAIFRoZSBpbmRpY2F0ZWQgc2NyZWVuIGNoYXJhY3RlcnMgYXJlIGhpZ2hsaWdodGVk
IGFuZCBzYXZlZA0KPiAgIGluIHRoZSBzdGF0aWMgYXJyYXkgc2VsX2J1ZmZlciBpbg0KPiAg
IC5JUiBkZXZpY2VzL2NoYXIvY29uc29sZS5jIC4NCj4gICAuVFANCj4gLS5CICJUSU9DTElO
VVgsIHN1YmNvZGU9MyINCj4gKy5CUiBUSU9DTElOVVggIiwgIiBzdWJjb2RlPTMNCj4gICBQ
YXN0ZSBzZWxlY3Rpb24uDQo+ICAgVGhlIGNoYXJhY3RlcnMgaW4gdGhlIHNlbGVjdGlvbiBi
dWZmZXIgYXJlDQo+ICAgd3JpdHRlbiB0bw0KPiAgIC5JUiBmZCAuDQo+ICAgLlRQDQo+IC0u
QiAiVElPQ0xJTlVYLCBzdWJjb2RlPTQiDQo+ICsuQlIgVElPQ0xJTlVYICIsICIgc3ViY29k
ZT00DQo+ICAgVW5ibGFuayB0aGUgc2NyZWVuLg0KPiAgIC5UUA0KPiAtLkIgIlRJT0NMSU5V
WCwgc3ViY29kZT01Ig0KPiArLkJSIFRJT0NMSU5VWCAiLCAiIHN1YmNvZGU9NQ0KPiAgIFNl
dHMgY29udGVudHMgb2YgYSAyNTYtYml0IGxvb2sgdXAgdGFibGUgZGVmaW5pbmcgY2hhcmFj
dGVycyBpbiBhICJ3b3JkIiwNCj4gICBmb3Igd29yZC1ieS13b3JkIHNlbGVjdGlvbi4NCj4g
ICAoU2luY2UgTGludXggMS4xLjMyLikNCj4gICAuVFANCj4gLS5CICJUSU9DTElOVVgsIHN1
YmNvZGU9NiINCj4gKy5CUiBUSU9DTElOVVggIiwgIiBzdWJjb2RlPTYNCj4gICAuSSBhcmdw
DQo+ICAgcG9pbnRzIHRvIGEgY2hhciB3aGljaCBpcyBzZXQgdG8gdGhlIHZhbHVlIG9mIHRo
ZSBrZXJuZWwNCj4gICB2YXJpYWJsZQ0KPiAgIC5JUiBzaGlmdF9zdGF0ZSAuDQo+ICAgKFNp
bmNlIExpbnV4IDEuMS4zMi4pDQo+ICAgLlRQDQo+IC0uQiAiVElPQ0xJTlVYLCBzdWJjb2Rl
PTciDQo+ICsuQlIgVElPQ0xJTlVYICIsICIgc3ViY29kZT03DQo+ICAgLkkgYXJncA0KPiAg
IHBvaW50cyB0byBhIGNoYXIgd2hpY2ggaXMgc2V0IHRvIHRoZSB2YWx1ZSBvZiB0aGUga2Vy
bmVsDQo+ICAgdmFyaWFibGUNCj4gICAuSVIgcmVwb3J0X21vdXNlIC4NCj4gICAoU2luY2Ug
TGludXggMS4xLjMzLikNCj4gICAuVFANCj4gLS5CICJUSU9DTElOVVgsIHN1YmNvZGU9OCIN
Cj4gKy5CUiBUSU9DTElOVVggIiwgIiBzdWJjb2RlPTgNCj4gICBEdW1wIHNjcmVlbiB3aWR0
aCBhbmQgaGVpZ2h0LCBjdXJzb3IgcG9zaXRpb24sIGFuZCBhbGwgdGhlDQo+ICAgY2hhcmFj
dGVyLWF0dHJpYnV0ZSBwYWlycy4NCj4gICAoS2VybmVscyAxLjEuNjcgdGhyb3VnaCAxLjEu
OTEgb25seS4NCj4gQEAgLTc0Niw3ICs3NDYsNyBAQCBXaXRoIGtlcm5lbCAxLjEuOTIgb3Ig
bGF0ZXIsIHJlYWQgZnJvbQ0KPiAgIC5JIC9kZXYvdmNzYSoNCj4gICBpbnN0ZWFkLikNCj4g
ICAuVFANCj4gLS5CICJUSU9DTElOVVgsIHN1YmNvZGU9OSINCj4gKy5CUiBUSU9DTElOVVgg
IiwgIiBzdWJjb2RlPTkNCj4gICBSZXN0b3JlIHNjcmVlbiB3aWR0aCBhbmQgaGVpZ2h0LCBj
dXJzb3IgcG9zaXRpb24sIGFuZCBhbGwgdGhlDQo+ICAgY2hhcmFjdGVyLWF0dHJpYnV0ZSBw
YWlycy4NCj4gICAoS2VybmVscyAxLjEuNjcgdGhyb3VnaCAxLjEuOTEgb25seS4NCj4gQEAg
LTc1NCw3ICs3NTQsNyBAQCBXaXRoIGtlcm5lbCAxLjEuOTIgb3IgbGF0ZXIsIHdyaXRlIHRv
DQo+ICAgLkkgL2Rldi92Y3NhKg0KPiAgIGluc3RlYWQuKQ0KPiAgIC5UUA0KPiAtLkIgIlRJ
T0NMSU5VWCwgc3ViY29kZT0xMCINCj4gKy5CUiBUSU9DTElOVVggIiwgIiBzdWJjb2RlPTEw
DQo+ICAgSGFuZGxlcyB0aGUgUG93ZXIgU2F2aW5nDQo+ICAgZmVhdHVyZSBvZiB0aGUgbmV3
IGdlbmVyYXRpb24gb2YgbW9uaXRvcnMuDQo+ICAgVkVTQSBzY3JlZW4gYmxhbmtpbmcgbW9k
ZSBpcyBzZXQgdG8NCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------K0cnG7Tgy8DbYJWOxyPw0ZVr--

--------------1Hwa3nEytCM53z0etnfR3URz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMRJAEACgkQnowa+77/
2zJkQA//VeK4ucUQt0Qa8vRFlwl2GXl+rOUkiC9M7wrpT335lCKS0pIBXuk7qgTE
cvjznD8o5Tt+9+jjHAUrKN6NJXI26XzAl9ozUIeo+65YEbi8i3Rx7XQtQ8KK8Nr9
KF1nBotsyj6SROM1Zacf8Sge6HkueYwOXhxTPOIfAW1i85Ihab1Vy/W0qDASdN92
87HGzYQKpxUzs5FwSEqSYNfrxNDAtUSLk1iJ0WsSbwCTE9obx8jXaq2ZJb173XXs
hPdaDrtxQAgd1LLkEpzemQ4q8NqQzx41wR3Hl5oILbPvX4UNlpFlnMb8kR2WZYJT
7vXUTlHnTJmAbNfu5hla1nChXnmxs9wGc43IcNvqIDNeZxg/qop83GSCwjngLIWK
6J/gpTzmrg1iQ1tSDoWiVPz/dCWF9GCulmOM856PVxAwDkXkH4HHySTeaULh96pX
RMTQ/jGwx9lpwjYKKRbw5qYjRoVBJ8ZBc4oQmOYOqghEQ0zGd+cs2rc87tUl6a9R
xBisNGEVEdLYR9c10alS4AfGzwRFcTu1CrogitcJbmBmAN3ajmeMM5Qfx8tn3D4v
nkuFxIV4WpyJREtnlJ7Qpv3gusXCmoYFkO758bS5nNuIXOSBNCbos/SLWhc0etKw
p2c33beEJVOWFluO/dOEZAihgsjHbgl1h655FocGRe/3Pi/kDB8=
=R3tp
-----END PGP SIGNATURE-----

--------------1Hwa3nEytCM53z0etnfR3URz--
