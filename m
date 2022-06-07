Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 750BF53F919
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 11:08:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234748AbiFGJIz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 05:08:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238762AbiFGJIz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 05:08:55 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E08A193CF
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 02:08:54 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id s1so100130wra.9
        for <linux-man@vger.kernel.org>; Tue, 07 Jun 2022 02:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=0i/rSb/9WB8Sxva/oH5dOlRCV6TQ/nQvdBTpPQL7/PA=;
        b=F6uS1x7d5v3DT8RDVtAkmLim3jXWbzNxfDoc1VrxTOY9Oojkv557eSMxHQPwLl15jE
         9oMGfUzVPPf59zwvVed+dkzHtqRx4IW0Yq+ofVTai5NGvwJfvnr6sfJgQnaHTN+tX+GN
         brWN+5Gfext8sZNhwtUBe+7Tv0ZbycP4jdzx8oJ/aAlUuq/2ty+9MglPKY0Wywu7dmpP
         oqeJfRjAR1Nfp4y0ea6wGeTYpWTDCtBj0AHNJ5IadS3ZuHkrWFBzXp+H8obIeC9dexAR
         g2VH83SBjqH3va9Z23J/wjc5LA71RuoBDC9lnmOU2hsni3w7O4ExQRHJkqkNp/PG6ukE
         BXmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=0i/rSb/9WB8Sxva/oH5dOlRCV6TQ/nQvdBTpPQL7/PA=;
        b=wu1URHhjgph2fH8T/tgc6S6TEE1TJu+lokZQf3Q4eVGlB85KKPh8FOHjh6BRI2qtkm
         RIsPLQ09VIAuuA3CUenLkEjrSWlFXcHIZ806k4y3WioVZAF2xz/6treEXYwQhN1oPYil
         YuT9Y7l9VaxchwqNgqwrnY58mYFYY5j7tnR7VHMFjM3Z5CC7YghpsfjaRZBRjXyIOdqp
         Xe+Cwg0VSsrp4WjhcKHhR97DBF92OaOzNPSw8SKz0lvtXTTqhSbQNGODlLRDKJKM90ZI
         LBvM907oUwBRuwGoQOJrw5nWtDlY9h+2cYGuIS/0iENIQas0KcgAA8s9moTFBG4u3IwF
         THqA==
X-Gm-Message-State: AOAM532Oummg9fECJnYL27xJuMO5fWFpfoSD20/v1xdYJM/Pnq+S7GkT
        HuOcKAD39q6nNY+lzfrsOWCtx+UGd6U=
X-Google-Smtp-Source: ABdhPJwfetdVNZrF0K0CbdVVxZ44ZJYm8uOOpjEjD1vgM1N2AURk6VzvonTW+I/+sPfHisfYkaAQJg==
X-Received: by 2002:a5d:67c9:0:b0:218:4a6a:298e with SMTP id n9-20020a5d67c9000000b002184a6a298emr4633726wrw.153.1654592932522;
        Tue, 07 Jun 2022 02:08:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bp11-20020a5d5a8b000000b0020c5253d926sm4037083wrb.114.2022.06.07.02.08.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 02:08:51 -0700 (PDT)
Message-ID: <848979ee-6c5b-5e74-1b45-586303b57a25@gmail.com>
Date:   Tue, 7 Jun 2022 11:08:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Peter Xu <peterx@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
 <Yp5YGMFJWLtthc8U@xz-m1.local> <20220606213323.xtfx7qpab6dwdqpk@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220606213323.xtfx7qpab6dwdqpk@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pVOpKgFDrEg203JrbgPWhyhp"
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URI_DOTEDU autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pVOpKgFDrEg203JrbgPWhyhp
Content-Type: multipart/mixed; boundary="------------TDNu80jPwKuUq8n7IQlk6jIL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <848979ee-6c5b-5e74-1b45-586303b57a25@gmail.com>
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
 <Yp5YGMFJWLtthc8U@xz-m1.local> <20220606213323.xtfx7qpab6dwdqpk@illithid>
In-Reply-To: <20220606213323.xtfx7qpab6dwdqpk@illithid>

--------------TDNu80jPwKuUq8n7IQlk6jIL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksIFBldGVyIGFuZCBCcmFuZGVuIQ0KDQpPbiA2LzYvMjIgMjM6MzMsIEcuIEJyYW5kZW4g
Um9iaW5zb24gd3JvdGU6DQo+IFtDQyBsaXN0IHRyaW1tZWQgc2luY2UgdGhpcyBpcyBzb2xl
bHkgYWJvdXQgRW5nbGlzaCBhbmQgKnJvZmZdDQo+IA0KPiBBdCAyMDIyLTA2LTA2VDE1OjQw
OjA4LTA0MDAsIFBldGVyIFh1IHdyb3RlOg0KPj4+IEkgdGhpbmsgdGhlIHBhdGNoIGJlbG93
IHdvdWxkIGltcHJvdmUgYSBsaXR0bGUgYml0IHRoZSB3b3JkaW5nIChhbmQNCj4+PiBuZXds
aW5lcykuICBJIHN0aWxsIGhhdmUgYSBiaXQgb2YgdHJvdWJsZSB1bmRlcnN0YW5kaW5nICJX
aGVuIGENCj4+PiBrZXJuZWwtb3JpZ2luYXRlZCBmYXVsdCB3YXMgdHJpZ2dlcmVkIG9uIHRo
ZSByZWdpc3RlcmVkIHJhbmdlIHdpdGgNCj4+PiB0aGlzIHVzZXJmYXVsdGZkIi4gIERpZCB5
b3UgbWF5YmUgbWVhbiAicmFuZ2UgcmVnaXN0ZXJlZCIgaW5zdGVhZCBvZg0KPj4+ICJyZWdp
c3RlcmVkIHJhbmdlIj8NCj4+DQo+PiBTaW5jZSBJJ20gbm90IGEgbmF0aXZlIHNwZWFrZXIg
SSBkb24ndCBpbW1lZGlhdGVseSBzZWUgdGhlIGRpZmZlcmVuY2UNCj4+IGJldHdlZW4gdGhl
IHR3by4NCj4gDQo+IFNob3J0IGFuc3dlcjogSSB0aGluayB5b3VyIGV4aXN0aW5nIHdvcmRp
bmcgaXMgYWNjZXB0YWJsZS4NCj4gDQo+IEFzIGEgbmF0aXZlIHNwZWFrZXIgKGJ1dCBub3Qg
YSB0cmFpbmVkIGxpbmd1aXN0KSBJIHRoaW5rIEkgY2FuIHNwZWFrIHRvDQo+IHRoZSBzdWJq
ZWN0OiBib3RoIGZvcm1zIGFyZSBlcXVpdmFsZW50IGluIHRoaXMgYXBwbGljYXRpb24uICBJ
biBzdGFuZGFyZA0KPiBFbmdsaXNoLCBhZGplY3RpdmVzIHVzdWFsbHkgcHJlY2VkZSB0aGUg
bm91bnMgdGhleSBtb2RpZnkuDQpbLi4uXQ0KDQpCdXQgaW4gdGhpcyBjYXNlLA0KDQoiV2hl
biBhIGtlcm5lbC1vcmlnaW5hdGVkIGZhdWx0IHdhcyB0cmlnZ2VyZWQgb24gdGhlIHJlZ2lz
dGVyZWQgcmFuZ2UgDQp3aXRoIHRoaXMgdXNlcmZhdWx0ZmQiDQoNCiJyZWdpc3RlcmVkIiBp
cyBub3QgYWN0aW5nIGFzIGFuIGFkamVjdGl2ZSwgYnV0IGFzIGEgdmVyYi4gIE1heWJlIFBl
dGVyIA0Kd2FzIGNvbmZ1c2VkIGJ5IHRoYXQ7IEkgZGlkbid0IGNvbnNpZGVyIHRoYXQgb3B0
aW9uLiAgSSdtIGFjdHVhbGx5IA0Kc3VycHJpc2VkIHRoYXQgeW91IHdlcmUsIEJyYW5kZW4s
IGJ1dCBJIGd1ZXNzIGl0IHdhcyBqdXN0IGEgbmV1cm9uIGdvaW5nIA0KY3JhenksIGFzIG1p
bmUgd2l0aCBcYyB0aGUgb3RoZXIgZGF5IDpwDQoNCg0KPiANCj4+IEl0J3MgYWx3YXlzIGNo
YWxsZW5naW5nIGZvciBtZSB0byBncmFzcCBob3cgeW91IHByZWZlciB0aGUgbmV3bGluZXMN
Cj4+IGFyZSBtYWRlLCBidXQgYW55d2F5IGJlbG93IGNoYW5nZXMgbG9va3MgZ29vZCB0byBt
ZS4NCg0KU29ycnksIFBldGVyLiAgSSdsbCB0YWtlIHRoYXQgaW50byBhY2NvdW50LCBhbmQg
dHJ5IHRvIGhlbHAgYXMgbXVjaCBhcyBJIA0KY2FuLiAgQXBhcnQgZnJvbSB3aGF0IEJyYW5k
ZW4gaGFzIGFscmVhZHkgYWRkZWQgdG8gdGhpcyB0aHJlYWQsIHRoZSANCmZvbGxvd2luZyBt
YW4tcGFnZXMgY29tbWl0IGhhcyBzb21lIG1vcmUgZGV0YWlscywgcXVvdGVkIGZyb20gQi4g
Vy4gDQpLZXJuaWdoYW4sIGFuZCBtYXkgaGVscCB5b3UgdW5kZXJzdGFuZCB3aGF0IEkgd2Fu
dDoNCg0KPGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1wYWdlcy9t
YW4tcGFnZXMuZ2l0L2NvbW1pdC9tYW43L21hbi1wYWdlcy43P2g9YWx4L21haW4maWQ9NmZm
NmY0M2Q2ODE2NGY5OWE4YzNmYjY2ZjQ1MjVkMTQ1NTcxMzEwYz4NCg0KSSBoYXZlIGEgbG9u
Zy1zdGFuZGluZyBkaXNjdXNzaW9uIHdpdGggQnJhbmRlbiByZWdhcmRpbmcgaG93IG11Y2gg
c2hvdWxkIA0KSSBwdXNoIGZvciBzZW1hbnRpYyBuZXdsaW5lcy4gIFRoZSBvcmlnaW4gb2Yg
dXNpbmcgc2VtYW50aWMgbmV3bGluZXMgaXMgDQpvbmx5IHRvIHNpbXBsaWZ5IGRpZmZzIChh
bmQgaXQgZG9lcyB0aGF0IHZlcnkgd2VsbCksIGJ1dCBmb3Igc29tZSANCnJlYXNvbiwgbXkg
YnJhaW4gcmVhZHMgdGhlIHRleHQgYmV0dGVyIHRvbyB3aGVuIG9yZ2FuaXplZCB0aGF0IHdh
eSwgYXMgDQpvcHBvc2VkIHRvIG5vcm1hbCBwcm9zZS1saWtlIHRleHQgZmxvdy4gIFRoZXJl
IEkgc2VlbSB0byBkaXNhZ3JlZSB3aXRoIA0KQnJhbmRlbiwgd2hvIHByZWZlcnMgdG8gcmVh
ZCBteSBlbWFpbHMgYXMgaWYgdGhleSB3ZXJlIGEgYm9vay4gIE1heWJlIEkgDQpuZWVkIHNl
bWFudGljIG5ld2xpbmVzIHRvIHVuZGVyc3RhbmQgdGhlIHRleHQgYmV0dGVyLCBiZWNhdXNl
IHRoZXJlIGFyZSANCmEgbG90IG9mIHRlY2huaWNhbCB0ZXJtcyB0aGF0IEkgZG9uJ3Qga25v
dywgYW5kIGhhdmluZyBsZXNzIGxvYWQgb24gbXkgDQpicmFpbiAoYmVjYXVzZSBJIGRvbid0
IG5lZWQgdG8gY2FsY3VsYXRlIHBocmFzZSBib3VuZGFyaWVzKSBtYWtlcyBpdCANCmVhc2ll
cjsgaXQncyBlc3BlY2lhbGx5IHVzZWZ1bCB3aGVuIHRleHQgaXMgdW5kZXIgZGV2ZWxvcG1l
bnQsIHdoZXJlIGl0IA0KbWF5IGhhdmUgbWlzdGFrZXMgdGhhdCBtYWtlIGl0IGV2ZW4gbW9y
ZSBkaWZmaWN1bHQgdG8gcmVhZC4NCg0KQnV0LCBqdXN0IGRvIHdoYXQgeW91IGNhbi4gIEkn
bGwgdHJ5IHRvIGRvIHRoZSByZXN0LCBhbmQgYXNrIHlvdSBpZiBJIA0KZG9uJ3QgdW5kZXJz
dGFuZCBzb21ldGhpbmcuDQoNCj4gDQo+IFNvIHdlIGNhbiBzYWZlbHkgc2F5IHRoYXQgaXQn
cyBhIDQwLXllYXIgdHJhZGl0aW9uLCBhdCBsZWFzdC4gIFRvIHNvbWUsDQo+IGhvd2V2ZXIs
IGl0cyBhZ2UgbWF5IG5vdCByZWNvbW1lbmQgaXQuIDstKQ0KDQo7LSkNCg0KPiBGYXVsdC1o
YW5kbGluZyBpbiB1c2VyIG1vZGUNCj4gaXMgY2VydGFpbmx5IGFycml2aW5nIG5vbmUgdG9v
IHNvb24uICBUaGFuayB5b3UgZm9yIHlvdXIgd29yayBvbiBpdC4NCg0KWXVwLCB0aGFua3Mg
Zm9yIHlvdXIgd29yayBQZXRlciENCg0KPiANCj4gUmVnYXJkcywNCj4gQnJhbmRlbg0KPiAN
Cj4gWzFdIGh0dHBzOi8vb3dsLnB1cmR1ZS5lZHUvb3dsL2dlbmVyYWxfd3JpdGluZy9ncmFt
bWFyL3RoYXRfdnNfd2hpY2guaHRtbA0KPiBbMl0gU2VlIHdoYXQgSSBkaWQgdGhlcmU/DQoN
ClllcyA6KQ0KDQo+IFszXSBodHRwczovL2VuZ2xpc2guc3RhY2tleGNoYW5nZS5jb20vcXVl
c3Rpb25zLzI2NDIzNi9jYW4tYW55LXZlcmJzLXByZXNlbnQtYW5kLXBhc3QtcGFydGljaXBs
ZXMtYmUtdXNlZC1hcy1hZGplY3RpdmVzDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCkFs
ZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------TDNu80jPwKuUq8n7IQlk6jIL--

--------------pVOpKgFDrEg203JrbgPWhyhp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKfFZoACgkQnowa+77/
2zItFRAAj1q4pTEJ/im9XfoQW3RhcMf56l2ywXoDtxBMRWed8Ru0xW50vqmZUo0H
bFSSKRTu54fmDSn9rEOEYZ4W2aoLJSo39iaA74ZzO8cg4lWGMqM8anrnhhk+IQN6
P3gMqBYjulqnC7bNKxjapxudAVAHdn6o7JG4dVDEN64OBcett6eA9OI6dzn+KDP5
xmqT9pX69gKM9zzcPyY6gq0pdOELbgPOIZdajyWI0AdAfWWVD5GKvuoR5sHhgSIN
riudZ7PqxHtWoUez1ykx5CfjT0zEn7KTWQ6CsDToXxpXNmurwNgXmgzuz8utfWcE
fOpdX5xciojK6ESn5Vq5GZ2QY0LJCspwJhNjRssm4o5wnEV++aXZE6iSSnFJLyCX
ZA8mBceM30ri7AtJFUJomay8hu9kjfFPHw8G9rEIxX8fj2RtbxmHUj+ShSHqEXtC
koUaFknCGswUmRV68hCHCdZ1ou9riTbMAx9oTIcCzQIkhbjMikXpEWNEDiQCB371
TcC6Elz9Zk/3YYLOgmgF37vzww07cFIDRh7iEi4zNtVDSfbX0SXBmxwt05IsRojT
E0D+MppMIewc5WCxCS2Vc3DuKCBbpGjvuSc5j8Xa4EZJ+tIftKFt9tiG/V13pRzH
Yi8RHySCRoGDW6uvqJ+Tsk6dm5pfyaIERkGpA3xlLYmnJk1+9n0=
=bxy+
-----END PGP SIGNATURE-----

--------------pVOpKgFDrEg203JrbgPWhyhp--
