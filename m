Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45271619DE5
	for <lists+linux-man@lfdr.de>; Fri,  4 Nov 2022 17:58:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232017AbiKDQ6S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Nov 2022 12:58:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231600AbiKDQ6L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Nov 2022 12:58:11 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8871C2936F
        for <linux-man@vger.kernel.org>; Fri,  4 Nov 2022 09:58:10 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id c3-20020a1c3503000000b003bd21e3dd7aso5813410wma.1
        for <linux-man@vger.kernel.org>; Fri, 04 Nov 2022 09:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KpMtn4anHpwUllKuSexod/z2k1RWjBYtzI0ZMByoxKU=;
        b=klfYhQpqERLTYXz3fY4JhPk30Byzk06aBL6U1ZMcjH5uiBmMZYtILkrlUrGizWcL5i
         8mN+lCDf9OIG0wMF5TMMU0CKvdIMEr8nM//e60Hiw8i9Aqs3t7N9pubj2sLw7ekhRgeq
         cqzSQTiDK1MQJUm7LbPOa/q0SaASbUG3QPjLMrZns8SyV234IgQKdsiIHx/mtCWbxYRp
         D6ReeDNYLBE1Rgax50CuTTZRcuPl1xCVA5d6xYqS4+sOlmZ19dY1gZxg4tRpFkszRQA6
         euL3LdZNCdyjwy8aBbSgqcxTQLJzbVUBpPu8We17dU2lKYlv2XRqB/b5s2X+1p7kCavg
         5hDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KpMtn4anHpwUllKuSexod/z2k1RWjBYtzI0ZMByoxKU=;
        b=C76iB/Kb62UsMTqE2urSmznfbqTauLCOTKwb6ttY4pYBZe/rJehky9X3cRqnFtnSPc
         Ee48fpmArULL+70UG0DhRhgHkeuHPqh1jEhkS3pSDkuvcc/FMkgUQ7GhEAqgZc3OxOdC
         ap+oVwTkv2pNCHLpJtMrM3ku8plWQA9rMfxqKKVsAlGG/JfCsG6MCWbFDP5p5UMm0qpi
         P2noedaYWuvEx4tvmsCSVrtwCGv/mcsG8JFh2wfHM/2ciMDnFRmuqG1aGpaejRuRnL4V
         o6BAmaxQ5m/c1xtYQ+86GcMb6k3fTOggLDhJmgfB1V1hton2a7vsWuep+BMzxF2B5POE
         inuA==
X-Gm-Message-State: ACrzQf2QLnzlpfwJOcQgLH2ohz732QwwcoG9XL1DcUV+OV9+pD8vXJxG
        H+k3oAjTIj1HmOxhQ8cI7p1cgMva24I=
X-Google-Smtp-Source: AMsMyM5WiIECM+SPifp8e+A4rB8BE4p+DNtakAWb3h80GtTTZlXO+JvZ31qNQYTHsUKidaQI9tyKUA==
X-Received: by 2002:a05:600c:1694:b0:3cf:56a9:fe64 with SMTP id k20-20020a05600c169400b003cf56a9fe64mr29345448wmn.112.1667581089095;
        Fri, 04 Nov 2022 09:58:09 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w8-20020adfd4c8000000b0023672104c24sm3816811wrk.74.2022.11.04.09.58.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 09:58:08 -0700 (PDT)
Message-ID: <787f1231-3370-dd8f-3353-e95ea293bbff@gmail.com>
Date:   Fri, 4 Nov 2022 17:58:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] nsswitch.conf.5: Current glibc reloads this configuration
 file
Content-Language: en-US
To:     Florian Weimer <fweimer@redhat.com>
References: <87mt96zmxs.fsf@oldenburg.str.redhat.com>
Cc:     linux-man@vger.kernel.org
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87mt96zmxs.fsf@oldenburg.str.redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GLZWDb0EiIjEXTrVXGVzmb0T"
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
--------------GLZWDb0EiIjEXTrVXGVzmb0T
Content-Type: multipart/mixed; boundary="------------k2zjOZW8Q8RY8VdhfBlsIbvJ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <787f1231-3370-dd8f-3353-e95ea293bbff@gmail.com>
Subject: Re: [PATCH] nsswitch.conf.5: Current glibc reloads this configuration
 file
References: <87mt96zmxs.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87mt96zmxs.fsf@oldenburg.str.redhat.com>

--------------k2zjOZW8Q8RY8VdhfBlsIbvJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRmxvcmlhbiENCg0KT24gMTEvNC8yMiAxNzo0NywgRmxvcmlhbiBXZWltZXIgd3JvdGU6
DQo+IFRoZSBpbXBsZW1lbnRhdGlvbiBoYXBwZW5lZCBhY3Jvc3MgbXVsdGlwbGUgZ2xpYmMg
Y29tbWl0cywgYnV0IHRoZSB3b3JrDQo+IHdhcyBjb21wbGV0ZWQgZm9yIGdsaWJjIDIuMzMu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBGbG9yaWFuIFdlaW1lciA8ZndlaW1lckByZWRoYXQu
Y29tPg0KDQpUaGFua3MgZm9yIHRoZSBwYXRjaCENCg0KTWF5IEkgYXNrIHRoYXQgeW91IEND
IG1lIGluIHBhdGNoZXM/ICBJIHNvbWV0aW1lcyBtaXNzIHBhdGNoZXMgc2VudCBvbmx5IHRv
IHRoZSANCmxpc3QuICAoSWYgdGhlcmUgYXJlIGFueSBvdGhlciBwYXRjaGVzIGZyb20geW91
IHRoYXQgSSBpZ25vcmVkLCBwbGVhc2UgcGluZykuDQoNClNlZSBhIG1pbm9yIGZvcm1hdHRp
bmcgY29tbWVudCBiZWxvdy4NCg0KQlRXLCBJIHJlbWVtYmVyIHNvbWUgbW9udGggYWdvIGhh
dmluZyBmb2xsb3dlZCB0aGUgZGlzY3Vzc2lvbiBhYm91dCBhZGRpbmcgDQphcmM0cmFuZG9t
KDMpLiAgRGlkIHlvdSBmaW5hbGx5IGFkZCBpdD8gIElmIHNvLCB3b3VsZCBhbnkgb2YgeW91
IChnbGliYyANCnByb2dyYW1tZXJzKSBtaW5kIHNlbmRpbmcgYSBtYW51YWwgcGFnZT8NCg0K
VGhhbmtzIGEgbG90IQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gLS0tDQo+ICAgbWFu
NS9uc3N3aXRjaC5jb25mLjUgfCAxMiArKysrKysrLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L21hbjUvbnNzd2l0Y2guY29uZi41IGIvbWFuNS9uc3N3aXRjaC5jb25mLjUNCj4gaW5kZXgg
MDk4NTg1Y2YxLi43MDQ5NDU1YWQgMTAwNjQ0DQo+IC0tLSBhL21hbjUvbnNzd2l0Y2guY29u
Zi41DQo+ICsrKyBiL21hbjUvbnNzd2l0Y2guY29uZi41DQo+IEBAIC00MDIsMTEgKzQwMiwx
MyBAQCBmb3IgcmVzcGVjdGl2ZSBkYXRhYmFzZXM6DQo+ICAgLlBEDQo+ICAgLlJFDQo+ICAg
LlNIIE5PVEVTDQo+IC1XaXRoaW4gZWFjaCBwcm9jZXNzIHRoYXQgdXNlcw0KPiAtLkJSIG5z
c3dpdGNoLmNvbmYgLA0KPiAtdGhlIGVudGlyZSBmaWxlIGlzIHJlYWQgb25seSBvbmNlLg0K
PiAtSWYgdGhlIGZpbGUgaXMgbGF0ZXIgY2hhbmdlZCwgdGhlDQo+IC1wcm9jZXNzIHdpbGwg
Y29udGludWUgdXNpbmcgdGhlIG9sZCBjb25maWd1cmF0aW9uLg0KPiArU3RhcnRpbmcgd2l0
aCBnbGliYyAyLjMzLA0KPiArLlwiIGh0dHBzOi8vc291cmNld2FyZS5vcmcvYnVnemlsbGEv
c2hvd19idWcuY2dpP2lkPTEyNDU5DQo+ICsuQiBuc3N3aXRjaC5jb25mDQo+ICtpcyBhdXRv
bWF0aWNhbGx5IHJlbG9hZGVkIGlmIHRoZSBmaWxlIGlzIGNoYW5nZWQuICBJbiBlYXJsaWVy
DQo+ICt2ZXJzaW9ucywgdGhlIGVudGlyZSBmaWxlIHdhcyByZWFkIG9ubHkgb25jZSB3aXRo
aW4gZWFjaCBwcm9jZXNzLCBhbmQNCj4gK2lmIHRoZSBmaWxlIHdhcyBsYXRlciBjaGFuZ2Vk
LCB0aGUgcHJvY2VzcyB3b3VsZCBjb250aW51ZSB1c2luZyB0aGUNCj4gK29sZCBjb25maWd1
cmF0aW9uLg0KDQpXb3VsZCB5b3UgcGxlYXNlIHJlZm9ybWF0IHRvIHVzZSBzZW1hbnRpYyBs
aW5lIGJyZWFrcz8NCg0KbWFuLXBhZ2VzKDcpOg0KICAgIFVzZSBzZW1hbnRpYyBuZXdsaW5l
cw0KICAgICAgICBJbiAgdGhlICBzb3VyY2Ugb2YgYSBtYW51YWwgcGFnZSwgbmV3IHNlbnRl
bmNlcyBzaG91bGQgYmUNCiAgICAgICAgc3RhcnRlZCBvbiBuZXcgbGluZXMsIGxvbmcgc2Vu
dGVuY2VzIHNob3VsZCBiZSBzcGxpdCBpbnRvDQogICAgICAgIGxpbmVzIGF0IGNsYXVzZSBi
cmVha3MgKGNvbW1hcywgc2VtaWNvbG9ucywgIGNvbG9ucywgIGFuZA0KICAgICAgICBzbyBv
biksIGFuZCBsb25nIGNsYXVzZXMgc2hvdWxkIGJlIHNwbGl0IGF0IHBocmFzZSBib3VuZOKA
kA0KICAgICAgICBhcmllcy4gICBUaGlzICBjb252ZW50aW9uLCAgc29tZXRpbWVzICBrbm93
biBhcyAic2VtYW50aWMNCiAgICAgICAgbmV3bGluZXMiLCBtYWtlcyBpdCBlYXNpZXIgdG8g
c2VlIHRoZSBlZmZlY3Qgb2YgIHBhdGNoZXMsDQogICAgICAgIHdoaWNoIG9mdGVuIG9wZXJh
dGUgYXQgdGhlIGxldmVsIG9mIGluZGl2aWR1YWwgc2VudGVuY2VzLA0KICAgICAgICBjbGF1
c2VzLCBvciBwaHJhc2VzLg0KDQo+ICAgLlBQDQo+ICAgVHJhZGl0aW9uYWxseSwgdGhlcmUg
d2FzIG9ubHkgYSBzaW5nbGUgc291cmNlIGZvciBzZXJ2aWNlIGluZm9ybWF0aW9uLA0KPiAg
IG9mdGVuIGluIHRoZSBmb3JtIG9mIGEgc2luZ2xlIGNvbmZpZ3VyYXRpb24NCj4gDQo+IGJh
c2UtY29tbWl0OiBiMTA2Y2Q1YmY0M2ZlODA2MTAwYmI1MjY2Yjc4ZjkyYmFjOTBiNmUwDQo+
IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------k2zjOZW8Q8RY8VdhfBlsIbvJ--

--------------GLZWDb0EiIjEXTrVXGVzmb0T
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNlRJkACgkQnowa+77/
2zIYew//Sg6+xilDoCCXEOxFsVFdtW5ZUa1rdXZG9HVVpvwfYJtQTt6cHG5+cO/4
uEgAUcomR6iBMs6FiPAvflq1HJe4Q6v6sizVVUgjaHXNoTKoc8TXvYgKw3sXrdSk
R8HaSRpLWyZpZmiAlEVKDw/5nRwHfMH+0JaNhnFp0SKKInkSHLw6AiyG2Hj39CcJ
ep658cxVrqao7rN0aOggg9u70obeBP1lNPmssmySSmtifshD05c/hWoOBXZnOKl9
bF3J1xvjO+q6uGAmYQIXs3QL7p8SloSJ7cxKsxhEcpk0kAGS5g86ZszPc4PI5Chw
vHgkYZPGLHhUFhkVVtmGTidzcHWe8Y9xJZyO7Gn4HgCvF8Vlvp/vFXD/cq/RbA+I
zj1LO6SIvAJjaEFQqIYBGU/vyrkJh2JsqwBCAVjkeChwd2Gofu7RCTcSTHszOac5
eZ0noYPuUMf8uTHYO6As7ccQeFv+Rw5SUWvpEyoebjohP4HDnirV/rJIA3c6WZcy
HpvngdUUckZgOlRWh9w3lqSsvm1q5MINaxWo49oLwpbXNPp9Q59E1u3O5hSmTkHv
p5ZB+N8700scHyVBiN1T5bqZ6p1g/T7B4cmmAGZyv3QJTiKspS6OV39JotRYJeXo
5zY1Crzo5mXCOK9gP3ETs3t+CBFUFKRvAMO5sSGlLlnDw3toyFE=
=rXPS
-----END PGP SIGNATURE-----

--------------GLZWDb0EiIjEXTrVXGVzmb0T--
