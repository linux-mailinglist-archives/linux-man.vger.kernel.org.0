Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3335B584FAA
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 13:43:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbiG2LnP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 07:43:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236083AbiG2LnL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 07:43:11 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D415787C2B
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:43:09 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id v3so4740167wrp.0
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 04:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=/0tv1UmYiKptYrysjwSBAMH51mRFD+P2iMVs2hQ4Wns=;
        b=V2BiQkWZQ8+bhn/B/yNH6wyJqkcPiyF5sJlCypDsb3702/FZx3oRxYgrusrPJr7vEJ
         6sHdREPc7DKPqWRQEwEFi6CImFsyKVUT4pT/JEfDQcU3d0S9rnTkOLIHXq7DiWDBVAEg
         mYtcQsquWxYMV89IeMcCLrB9ufHa6rvQ1CynImJpeNoDikz995Q6HBFizljInJKpRbj+
         fO9Hi/WAp6IYgqsAAiP311b7vvLyGP93bP3ixoOuGsDYBudauBiea+NE7S2+P9pvwr07
         ip00QvuQXrM3waNtb2BDbK7Tia91OP0vgviufGU5g2FrNpNiDHz3VaqTVAX8vMHvoLFM
         7IaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=/0tv1UmYiKptYrysjwSBAMH51mRFD+P2iMVs2hQ4Wns=;
        b=ZwCRodnGm+1J8OFPyXzVYLJ36bly5c9T+S8y3gpDHq6YciGTc7MOpV/z9W5vSZp12F
         ytbZLW+ihpmnU/0NQQ1fR65FZPHTcggGi1BCM0276OEPC6QrFIKdUfYXEAQqSlWqquqm
         XezF6qNzbfIo66rIjPK0mls3vQuRvKey/4e2r0gHqJzQB59F2+fmHVYixDV+fYtIMjU6
         4vzqQN6BIuNSJfsYMYhoNqwaosEgv4YeQ5+3yI+IcAO6udR9l0/TN4fBLD6D1XCXGpu3
         9+JlraHMfenEElyD/h7ZdEkM7dfFWbCSOFBhp99HKncks1R18vEIr6V5S3iXgra9/HpK
         djyw==
X-Gm-Message-State: ACgBeo2ZCr6CM5xN2qYuqZrahPJIx3mqgedlS//Pv44MA0q6o7Xae0jA
        T5FPju+3qX8Xt+JBq6HiZR4=
X-Google-Smtp-Source: AA6agR7OiWpdnuCmtwzIOXWbKo5SiHKnGjrQbPdOou3RDNrGZX26zAajZJoxaa2wnXMI5O6cFuTf1g==
X-Received: by 2002:a5d:4d12:0:b0:21e:e5a8:5969 with SMTP id z18-20020a5d4d12000000b0021ee5a85969mr2092772wrt.446.1659094989307;
        Fri, 29 Jul 2022 04:43:09 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l18-20020a7bc452000000b003a2e655f2e6sm4200103wmi.21.2022.07.29.04.43.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 04:43:08 -0700 (PDT)
Message-ID: <039d4b94-ae90-c131-9291-1d957292989c@gmail.com>
Date:   Fri, 29 Jul 2022 13:43:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: BSD and GPL (was: All caps .TH page title)
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>, g.branden.robinson@gmail.com
Cc:     linux-man@vger.kernel.org, groff@gnu.org
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de> <20220724154447.us3vsmicaw52v4j6@illithid>
 <YuFiT79dQz+nDgmO@asta-kit.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YuFiT79dQz+nDgmO@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------p5VDos70etNJsdpk1NpMgZV2"
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
--------------p5VDos70etNJsdpk1NpMgZV2
Content-Type: multipart/mixed; boundary="------------vLDQIXtTYdjZOV51uplIuLYr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>, g.branden.robinson@gmail.com
Cc: linux-man@vger.kernel.org, groff@gnu.org
Message-ID: <039d4b94-ae90-c131-9291-1d957292989c@gmail.com>
Subject: BSD and GPL (was: All caps .TH page title)
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de> <20220724154447.us3vsmicaw52v4j6@illithid>
 <YuFiT79dQz+nDgmO@asta-kit.de>
In-Reply-To: <YuFiT79dQz+nDgmO@asta-kit.de>

--------------vLDQIXtTYdjZOV51uplIuLYr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbyBhbmQgQnJhbmRlbiwNCg0KT24gNy8yNy8yMiAxODowNSwgSW5nbyBTY2h3YXJ6
ZSB3cm90ZToNCj4gWy4uLl0NCj4+IFVuZGVyIHRoaXMgdW1icmVsbGEsIHRoZSBMaW51eCBr
ZXJuZWwgaXMgZWZmZWN0aXZlbHkgdW5kZXIgdGhlIEJTRA0KPj4gbGljZW5zZS4NCj4gDQo+
IEV4Y2VwdCB0aGF0IGZyZWUgc29mdHdhcmUgcHJvamVjdHMgY2Fubm90IGNvcHkgZnJvbSBp
dCAtIHRoYXQncw0KPiBxdWl0ZSBhIGJpZyBCVVQgc2luY2UgYWxsb3dpbmcgKmV2ZXJ5Ym9k
eSogdG8gY29weSB0aGUgY29kZSBmb3INCj4gYW55IHB1cnBvc2UgaXMgdGhlIGNlbnRyYWwg
aWRlYSBvZiB0aGUgQlNEIGxpY2Vuc2UuICA7LSkNCj4gDQo+IFsuLi5dDQo+PiBUaGUgQlNE
IGNhbXAgZGlkIHVsdGltYXRlbHkgd2luIHRoZSBjb3B5bGVmdCBhcmd1bWVudCBhZnRlciBh
bGwuDQo+IA0KPiBJJ20gbm90IHNvIHN1cmUgYWJvdXQgdGhhdC4gIFRoZSBpZGVhIG9mIHRo
ZSBCU0QgbGljZW5zZSBpcyB0bw0KPiBhbGxvdyBhbGwgdXNlcyB0aGF0IGNhbiBiZSBsaWNl
bnNlZCB0byBvdGhlcnMgYWNjb3JkaW5nIHRvIHRoZSBCZXJuZQ0KPiBDb252ZW50aW9uLCBy
ZXRhaW5pbmcgb25seSB0aG9zZSByaWdodHMgLSBlc3NlbnRpYWxseSB0aGUgbW9yYWwgcmln
aHRzLA0KPiBsaWtlIGJlaW5nIGtub3duIGFzIHRoZSBhdXRob3IsIGFuZCBhYnVzZSBvZiB0
aGUgV29ya3MgZm9yIHNsYW5kZXJpbmcNCj4gdGhlIGF1dGhvciBiZWluZyBwcm9oaWJpdGVk
IC0gdGhhdCBhcmUgaW5hbGllbmFibGUgaW4gdGhlIGZpcnN0IHBsYWNlDQo+IGFjY29yZGlu
ZyB0byB0aGUgQmVybmUgQ29udmVudGlvbi4NCj4gDQo+IEV2ZW4gaWYgaW4gZWZmZWN0LCB0
aGUgQ29weWxlZnQgYXNwZWN0IG9mIHRoZSBHUEwgaXMgbm90IHVzdWFsbHkNCj4gZW5mb3Jj
ZWQgYWdhaW5zdCBGb3VuZGF0aW9uIG1lbWJlcnMsIEdQTCBjb2RlIGlzIGZhciBmcm9tIGFz
IGZyZWUNCj4gYXMgdGhlIEJlcm5lIENvbnZlbnRpb24gd291bGQgcGVybWl0IGl0IHRvIGJl
LCBhbmQgZmFyIGZyb20gYXMgZnJlZQ0KPiBhcyBpZiBpdCB3ZXJlIHVuZGVyIGEgQlNEIGxp
Y2Vuc2UuDQo+IA0KPiBTbyBlc3NlbnRpYWxseSwgeW91IHNheSB0aGF0IGluIHByYWN0aWNl
LCB0aGUgR1BMIGZhaWxzIHRvIGF0dGFpbg0KPiB0aGUgZ29hbHMgUk1TIGRlc2lnbmVkIGl0
IGZvciwgYW5kIGkgc2F5IHRoYXQgYWxsIHRoZSBzYW1lLCBpdCBoYXMNCj4gc29tZSBzZXJp
b3VzIGFuZCAoaG9wZWZ1bGx5KSB1bmludGVuZGVkIGRldHJpbWVudGFsIHNpZGUgZWZmZWN0
cy4NCj4gDQo+IEkgY2FuJ3Qgc2F5IGknbSB0b28gaGFwcHkgd2l0aCB0aGF0Lg0KPiBJIGNl
cnRhaW5seSBkb24ndCByZWdhcmQgaXQgYXMgYSB3aW4uDQo+IEl0IGxvb2tzIG1vcmUgbGlr
ZSBhIGxvc2UtbG9zZSBzaXR1YXRpb24gdG8gbWUuDQo+IA0KPiBCdXQgaSBkb24ndCB0aGlu
ayB3ZSBjYW4gZG8gbXVjaCBhYm91dCB0aGF0LiAgR3JvZmYgaXMgc3RpbGwNCj4gdXNhYmxl
IGZvciBtb3N0IHVzZXJzIHdpdGhvdXQgdG9vIG11Y2ggcGFpbi4gIFVubGVzcyBpIHdhbnQg
dG8NCj4gY29udHJpYnV0ZSBzaWduaWZpY2FudCBhbW91bnRzIG9mIGNvZGUsIGV2ZW4gaSBj
b3VsZCBkbyBzby4NCj4gQW5kIHRvIGJlIGZhaXIsIGV2ZW4gaWYgaSB3YW50ZWQgdG8gY29u
dHJpYnV0ZSBsYXJnZSBhbW91bnRzIG9mDQo+IGNvZGUsIHRoZSBHUEwgd291bGQgKm5vdCog
cHJldmVudCBtZSBmcm9tIGRvaW5nIHRoYXQgLSB0aGUgdGhpbmcNCj4gdGhlIHdvdWxkIHN0
b3AgbWUgaXMgdGhlIEZTRiBDTEEsIHdoaWNoIGlzIGFuIGVudGlyZWx5IGRpZmZlcmVudA0K
PiBiZWFzdC4NCg0KWWVzLCBlc3NlbnRpYWxseSwgdGhlIGtlcm5lbCBpcyBCU0QtbGljZW5z
ZWQgdG8gYmlnIGNvcnBvcmF0aW9ucyBwYXlpbmcgDQp0byB0aGUgRlNGLCBidXQgR1BMIHRv
IGZyZWUgc29mdHdhcmUgcHJvZ3JhbW1lcnMuDQoNCkJTRHMgYXJlIEJTRCBmb3IgZXZlcnlv
bmUuDQoNCkknbSBzdGlsbCB1c2luZyBHUEwgZm9yIG15IG93biB0aGluZ3MsIGJ1dCBJJ20g
bm90IGhhcHB5IGF0IGFsbCB3aXRoIA0KdGhpcyBzaXR1YXRpb24sIGFuZCBjb25zaWRlcmVk
IHNldmVyYWwgdGltZXMgZ2l2aW5nIHVwIGFuZCB1c2luZyBCU0QgDQpsaWNlbnNlcy4gIEkg
c3RpbGwgZG9uJ3QsIGJlY2F1c2UgSSdtIG5vdCBhY2NlcHRpbmcgdGhlIGxvc2UtbG9zZSBz
aXR1YXRpb24uDQoNCkJ1dCBhdCB0aGUgc2FtZSB0aW1lLCBJJ2QgbGlrZSB0byBtYWtlIGEg
bm90ZSBoZXJlIHRoYXQgdGhlIGludGVudGlvbiANCm1hdHRlcnMgbW9yZSB0aGFuIHRoZSBs
aWNlbnNlIHRvIG1lLCBhbmQgbXkgaW50ZW50aW9uIGlzIHRoYXQgbXkgY29kZSANCmNhbiBi
ZSB1c2VmdWwgdG8gb3RoZXIgb3Blbi1zb3VyY2UgcHJvZ3JhbW1lcnMuICBTbywgaWYgYW55
b25lIG5lZWRzIHRvIA0KdXNlIGNvZGUgb2YgbWluZSBpbiBvdGhlciBvcGVuLXNvdXJjZSBj
b2RlLCBkb24ndCBiZSBpbnRpbWlkYXRlZCBieSB0aGUgDQpsaWNlbnNlLCBhbmQgeW91IGNh
biBhbHdheXMgYXNrIG1lIGZvciBhbiBleGNlcHRpb24gdG8gdGhlIGxpY2Vuc2UuICBUaGUg
DQplbmQgZ29hbCBpcyB0aGF0IG9wZW4tc291cmNlIGNvZGUgaW1wcm92ZXMuDQoNCk5vbi1v
cGVuLXNvdXJjZSBpcyBzdGlsbCBzdHJpY3RseSBsaW1pdGVkIHRvIEdQTCByZWdhcmRpbmcg
bXkgb3duIGNvZGUuIA0KVGhlIHBhcmFncmFwaCBhYm92ZSBpcyBub3QgYW4gaW52aXRhdGlv
biB0byBicmVhayBHUEwgaW4gbXkgY29kZS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0K
QWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4N
Cg==

--------------vLDQIXtTYdjZOV51uplIuLYr--

--------------p5VDos70etNJsdpk1NpMgZV2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLjx8sACgkQnowa+77/
2zLeAxAAqYVIEd1rd4O/taLzaJm4Lqtwp6N1Q/1kYiPQcqzkgXv6D8Mgma2PmITM
NkPfpLgvNo1dqvU84Sp6g2gMAzuAFHWAlIt7r7w5nigA4js8TtFWlBOFZWm8doe0
Ng+YaVU9bxMDvTps/ONGaNUAKGEcGR47+HsMx2CqKaxRAwlZy1HkdXuf1tnuMB9A
OSJdcDncIj76wIIPCs9IApybp11grW5AEt4Mg7l5kiT8pzdjlJu8ZMlVxbcnbak/
/3rd7y79zDz4yCvRgkye9H7I4kNWWJpTHbS2Yrehku/mdpQLzD5yWhxnJFZsRvnJ
WFqwi9D0u5SlF84bj54fByd64BTk8scNlO6JI/kHMFUZ0oOpZWNbHXFXSHs+8oQC
7loleRi8Ojy/ls91qBm85xTdPOmv0sOVIGwEgesm7ruRp6sMnZq33qjplvfe+PQe
cd3okFUs0Ip+hU/G3pjU/yFjvlEWuhBy6LtiPq4HErjt8UakUylsQD5dkLDG9BLI
cjU6MZ55sZHNuQzREdoiPF0HoMgTEYA2YjLHbBGwjqOwZsXEIvDOQIkA36AF2mu+
UlsNNEdH4k6DVeidiQgCCJEGqJ7TiSAhHtqnBOjjFUSsmKQpYXSbXYmEV33uamnx
7NAdF40cCwpnA1//oa9DdFLGeYQypTeDEJplua9oX7MFodkkaqM=
=IqGC
-----END PGP SIGNATURE-----

--------------p5VDos70etNJsdpk1NpMgZV2--
