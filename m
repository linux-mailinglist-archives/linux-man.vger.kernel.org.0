Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0637B624905
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 19:05:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229932AbiKJSFM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 13:05:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231536AbiKJSE5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 13:04:57 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBD5D4C25A
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 10:04:56 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id fn7-20020a05600c688700b003b4fb113b86so1703359wmb.0
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 10:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GYYCSHKDdqoGsg8EzvKtAj4+UqV39mu3Paig6hP9XJ4=;
        b=RIc6fmIH97IVX94Zer3vyWazCXiPvNooLIY9Abx5cXvx59MuesNyrzRU3CPanaocmY
         q0S6qs6vtsG5u+MHZmRrR6cnkH2NZ0OPxUG+rK5imPEOBdKPVGv7tiVNq4jIpGjjHoql
         y5UO/rcsxGUbDVvHGhOVXq2UvKY+Oww59k7ZZUe6FMHzNFctvRXVQqXxFtwrXahiNWeu
         r+/X6bHU9jvwtbqB0k582Qey1JZMtxDoeAJOgVC7/FJJRhby+NlXY4PgCHX15+5IrmD2
         S8oRgN8ouEj4M+PgT76WoF/qcopPUYhQZQcgWj7tT/us4L71H+UixPDrsW0hpateUw5h
         QU2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GYYCSHKDdqoGsg8EzvKtAj4+UqV39mu3Paig6hP9XJ4=;
        b=zPniMba9lfuLXnN+d9/jzaQf1a4d8qR5ifRmjjuIvdnPe8eKImgYQ8DuKKFtfpExjr
         ArOO/e1y/vDV391OW1IJj+eX7cFBfqDkaPzlUYpju+uBKmlkh98rsExBfOGkNWtS1pUw
         1kdeTZA/UgScrVzLbf47CNpSvPALQbFuW2bA2VzpB2z2Zo+VGO9YnOkAgfMrVDqHLBC5
         qhcDUN18pHcoHpcWFassA3/9odtmO5zq92IURLOnIdLi5V421GlVVJ7zQvzc8hn0j1uv
         nBLwlBQQkRAtEDk39NGdlTf3mEqc1EQFTJWy3hdYfyQU/y99rx+peEuIqGhVcUg2T6bY
         VaaQ==
X-Gm-Message-State: ACrzQf1d25jMvw9H4QXL7Lfhf6aEtHrUsI3hg7KzcfGY/4IAXDNrlKLa
        RPzzxgMdSNvB5nwzetuznNNABT+Bh/U=
X-Google-Smtp-Source: AMsMyM4dWQyQ8HLwKzwT3OMkIHj4INMqIYLb9codKPpWRdW+wF7CNBREcPuTmDvHxpCNYAwVPThUaA==
X-Received: by 2002:a05:600c:5116:b0:3cf:6e9b:21f1 with SMTP id o22-20020a05600c511600b003cf6e9b21f1mr1060559wms.90.1668103495289;
        Thu, 10 Nov 2022 10:04:55 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bi14-20020a05600c3d8e00b003b95ed78275sm277201wmb.20.2022.11.10.10.04.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 10:04:54 -0800 (PST)
Message-ID: <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
Date:   Thu, 10 Nov 2022 19:04:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use VLA
 syntax in function parameters)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
In-Reply-To: <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0p3OigRwYkYt7o4A0uUn10C9"
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
--------------0p3OigRwYkYt7o4A0uUn10C9
Content-Type: multipart/mixed; boundary="------------sBtwt4XmHlCBpa3HJ2ehrCE0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 groff <groff@gnu.org>
Cc: Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
Message-ID: <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
Subject: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use VLA
 syntax in function parameters)
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
In-Reply-To: <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>

--------------sBtwt4XmHlCBpa3HJ2ehrCE0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T2YgY291cnNlIEkgZm9yZ290IHRvIHJlbmFtZSB0aGUgdGl0bGUsIGFuZCB0byBhZ2cgZ3Jv
ZmZALiAgTmljZS4NCg0KLS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0NClN1
YmplY3Q6IFJlOiBbUEFUQ0hdIFZhcmlvdXMgcGFnZXM6IFNZTk9QU0lTOiBVc2UgVkxBIHN5
bnRheCBpbiBmdW5jdGlvbiBwYXJhbWV0ZXJzDQpEYXRlOiBUaHUsIDEwIE5vdiAyMDIyIDE4
OjQ3OjM4ICswMTAwDQpGcm9tOiBBbGVqYW5kcm8gQ29sb21hciA8YWx4Lm1hbnBhZ2VzQGdt
YWlsLmNvbT4NClRvOiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25A
Z21haWwuY29tPg0KQ0M6IEluZ28gU2Nod2FyemUgPHNjaHdhcnplQHVzdGEuZGU+LCBsaW51
eC1tYW5Admdlci5rZXJuZWwub3JnDQoNCltyZW1vdmVkIGdjY0AgYW5kIG90aGVyIHVuaW50
ZXJlc3RlZCBwZW9wbGU7IGFkZGVkIGdyb2ZmQF0NCg0KSGkgQnJhbmRlbiENCg0KT24gMTEv
MTAvMjIgMTE6NTksIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KID4+IEFsc28sIGFzIHNv
b24gYXMgQmVydHJhbmQgYW5kIEkgY2FuIGdldCBncm9mZiAxLjIzIG91dFsxXSwgSSBhbSBo
b3BpbmcNCiA+PiB5b3Ugd2lsbCwgc2hvcnRseSB0aGVyZWFmdGVyLCBtaWdyYXRlIHRvIHRo
ZSBuZXcgYE1SYCBtYWNyby4NCiA+DQogPiBOb3QgYXMgc29vbiBhcyBpdCBnZXRzIHJlbGVh
c2VkLCBiZWNhdXNlIEkgZXhwZWN0IChhdCBsZWFzdCBhIGRlY2VudCBhbW91bnQgb2YpDQog
PiBjb250cmlidXRvcnMgdG8gYmUgYWJsZSB0byByZWFkIHRoZSBwYWdlcyB0byB3aGljaCB0
aGV5IGNvbnRyaWJ1dGUgdG8sIGJ1dCBhcw0KID4gc29vbiBhcyBpdCBtYWtlcyBpdCBpbnRv
IERlYmlhbiBzdGFibGUsIHllcywgdGhhdCdzIGluIG15IHBsYW5zLiAgU28sIGlmIHlvdQ0K
ID4gbWFrZSBpdCBiZWZvcmUgdGhlIGZyZWV6ZSwgdGhhdCBtZWFucyBhcm91bmQgYSBjb3Vw
bGUgb2YgbW9udGhzIGZyb20gbm93Lg0KDQpJIHdvbid0IGJlIGFwcGx5aW5nIHRoZSBwYXRj
aCBub3csIHRvIGF2b2lkIGNvbnRyaWJ1dG9ycyBzZWVpbmcgcGVvcGxlIHN1ZGRlbmx5IA0K
bm90IHNlZWluZyBtYW4gcGFnZSByZWZlcmVuY2VzIHdoaWxlIHByZXBhcmluZyBwYXRjaGVz
LiAgQnV0IEknbGwgc3RhcnQgDQpwcmVwYXJpbmcgdGhlIHBhdGNoLCB0byBzZWUgd2hlcmUg
YXJlIHRoZSBtb3N0IGRpZmZpY3VsdCBwYXJ0cy4gIEFuZCBtYXliZSANCnJlcG9ydCBzb21l
IGlzc3VlcyB3aXRoIHRoZSB1c2FiaWxpdHkuDQoNCk15IGZpcnN0IHRoaW5nIHdhcyB0byBy
dW46DQoNCiQgZ3JlcCAtcm4gJ15cLkJSIC4qIChbMS05XVx3KiknDQoNCkknbSBzdXJwcmlz
ZWQgZm9yIGdvb2QgdGhhdCBpdCBzZWVtcyB0aGF0IHRoZXJlIGFyZSBubyBmYWxzZSBwb3Np
dGl2ZXMuICBJIA0KZGlkbid0IGV4cGVjdCB0aGF0LiAgQnV0IHNpbmNlIHRoaW5ncyBsaWtl
IGV4aXQoMSkgYXJlIGNvZGUsIHRoZXkgYXJlIHByb2JhYmx5IA0KZWl0aGVyIG5vdCBoaWdo
bGlnaHRlZCBhdCBhbGwsIG9yIG1heWJlIGFyZSBpdGFsaWNpemVkIChhcyBjb2RlIGlzKS4g
IFNvIHRoYXQncyANCmEgZ29vZCB0aGluZy4NCg0KSXQgc2hvd2VkIGEgZmV3IGxpbmVzIHRo
YXQgbWlnaHQgYmUgcHJvYmxlbWF0aWMsIGJ1dCB0aGF0J3MgYWN0dWFsbHkgYmFkIGNvZGUs
IA0Kd2hpY2ggSSBuZWVkIHRvIGZpeDoNCg0KbWFuNy9jcmVkZW50aWFscy43OjI3MDouQlIg
c2V0dWlkICIoMikgKCIgc2V0Z2lkICgyKSkNCm1hbjcvY3JlZGVudGlhbHMuNzoyNzQ6LkJS
IHNldGV1aWQgIigyKSAoIiBzZXRlZ2lkICgyKSkNCm1hbjcvY3JlZGVudGlhbHMuNzoyNzc6
LkJSIHNldGZzdWlkICIoMikgKCIgc2V0ZnNnaWQgKDIpKQ0KbWFuNy9jcmVkZW50aWFscy43
OjI4MDouQlIgc2V0cmV1aWQgIigyKSAoIiBzZXRyZWdpZCAoMikpDQptYW43L2NyZWRlbnRp
YWxzLjc6Mjg0Oi5CUiBzZXRyZXN1aWQgIigyKSAoIiBzZXRyZXNnaWQgKDIpKQ0KDQpUaG9z
ZSBhcmUgYXNraW5nIGZvciBhIDItbGluZSB0aGluZywgd2hlcmUgdGhlIHNlY29uZCBsaW5l
IGlzIFJCIGluc3RlYWQgb2YgQlIuIA0KV2hpY2ggcmVtaW5kcyBtZSB0byBjaGVjayBSQjoN
Cg0KJCBncmVwIC1ybiAnXlwuUkIgLiogKFsxLTldXHcqKScNCg0KVGhlcmUgYXJlIG11Y2gg
bGVzcyBjYXNlcywgYW5kIGFsc28gc2VlbSB0byBiZSBmaW5lIHRvIHNjcmlwdCwgd2l0aCBh
IGZldyBtaW5vciANCmZmaXhlcyB0b28uDQoNClRoZSBiaWcgaXNzdWUgaXMgdGhhdCB5b3Vy
IE1SIGRvZXNuJ3Qgc3VwcG9ydCBsZWFkaW5nIHRleHQ6DQoNCiAgICAgICAgIC5NUiBwYWdl
4oCQdGl0bGUgbWFudWFs4oCQc2VjdGlvbiBbdHJhaWxpbmfigJB0ZXh0XQ0KDQpJIHJlbWVt
YmVyIHdlIGhhZCB0aGlzIGRpc2N1c3Npb24gYWJvdXQgd2hhdCB0byBkbyB3aXRoIGl0LiAg
QSA0dGggYXJndW1lbnQ/IA0KVGhlcmUncyBhbHNvIGNvbmZsaWN0IHdpdGggYSBoeXBvdGhl
dGljYWwgbGluayB0aGF0IHdlIG1pZ2h0IHdhbnQgdG8gYWRkIGxhdGVyLg0KDQpNeSBvcGlu
aW9uIGlzIHRoYXQgdGhlIDR0aCBhcmd1bWVudCBzaG91bGQgYmUgdGhlIGxlYWRpbmcgdGV4
dC4gIEFza2luZyB0byB1c2UgDQp0aGUgZXNjYXBlICh3YXMgaXQgXGM/KSBzZXF1ZW5jZSB0
byB3b3JrYXJvdW5kIHRoYXQgbGltaXRhdGlvbiBpcyBub3QgdmVyeSBuaWNlLiANCiAgIEVz
cGVjaWFsbHkgZm9yIHNjcmlwdGluZyB0aGUgY2hhbmdlLg0KDQpJZiB5b3Ugd2FudCBhIDV0
aCBhcmd1bWVudCBmb3IgYSBVUkksIHlvdSBjYW4gc3BlY2lmeSB0aGUgbGVhZGluZyB0ZXh0
IGFzICIiLCANCndoaWNoIGlzIG5vdCBtdWNoIG9mIGFuIGlzc3VlLiAgQW5kIHlvdSBrZWVw
IHRoZSB0cmFpbGluZyB0ZXh0IGFuZCB0aGUgbGVhZGluZyANCm9uZSB0b2dldGhlci4NCg0K
V2hhdCBhcmUgeW91ciB0aG91Z2h0cz8gIFdoYXQgc2hvdWxkIHdlIGRvPw0KDQpDaGVlcnMs
DQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------sBtwt4XmHlCBpa3HJ2ehrCE0--

--------------0p3OigRwYkYt7o4A0uUn10C9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtPT4ACgkQnowa+77/
2zIOqA//ZdafclCy9FhKzRKr3n+ZlIgXNysLbFkvTwhBl1WucEIplFZbX8447KsD
sdIqtV7PhGM+F+6IduHT3xoUVYl+tTNDCKzwr0GNQ067Umx66OklycaWnWP7I58i
5WrQGgCOzsRXp0htY8hn6p4Qu27dbTV73H7Ck+9hqa2PU+UhUrZ2ZdmnnTqDWkwe
rbQRhUB2UxVleNDLSJuHDeXvZiFU2gwy+8ml2/KrtNlpCjPozXI9EYWGc5FO6FTB
EveayjqGAPXRvvMPOBS5NQlIytR4uUos0V7FyNdXIuOsbHKocixB6Xir/zmuNFmr
JyTXZVSuWJq8uC0AMcAP7aEHnIt5Um7OSXDQjIzbKxLerQkmfD6Jt1x1Ve69D5Jn
svpYiJNyWOpmsT1surCESXCvoWstCS5TbuqSxyZ5B5bo4W42C+EvpWNXeAFFebHT
/IFT1c2IL+3pR9mmIhRZIx4W7juy0OD9dLxvHK+bsJqQ3NWW4bgm/r9dP99Xg/OH
PTa6B37AhHAGFUBAufb6PTa5DEPcGycqtJvnqG0q71Cj2xzHCptY+FDMgODqNI+y
4LrCFuE8DlIhaOrp8lHp+RkozkzBf5jeM+2DcN4qeRXh9djQznPoUbzJ8SbIwAyt
keCLMqKjyipAy8HVmxoJtPwDYESzuwmuFsEreW9abmdzb7f2ZC8=
=7Wlv
-----END PGP SIGNATURE-----

--------------0p3OigRwYkYt7o4A0uUn10C9--
