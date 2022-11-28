Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46A2163B575
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 00:02:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232957AbiK1XCY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Nov 2022 18:02:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbiK1XCX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Nov 2022 18:02:23 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47E9A1C10D
        for <linux-man@vger.kernel.org>; Mon, 28 Nov 2022 15:02:22 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id j5-20020a05600c410500b003cfa9c0ea76so9521142wmi.3
        for <linux-man@vger.kernel.org>; Mon, 28 Nov 2022 15:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ZV8MpGHFgZrK0xpQV+TMW3aR+IU6jCa5Dw2m+OaUas=;
        b=jptN7V5KaYaBZANIHQkbmuet6d9mOBf8XMEY0U6LSUIMWqx/AHwYLxAAtNyyzCPwU/
         RnCuono+G+ayS2zhkIUBuwo5lRxjQ0G6RVdOmOvU+l1eAzbLIKOqqPJqb3J76T7/QnGT
         Wwn7sXVGzi6uEYWzg96u36ZJq5VhFIRL1L7Ert2nFdHblgqJzrU6eA6yJaIvY8zArDRV
         /oJHfJGzrISo5PEbAW7o31HBc7M+L+nkl94oYgXd7tRHomHqKAqWThmAz7hLiqgYrWcp
         vwRe8bXz50pV2QaQ1vqc2yoGBulT5nKstrn7/MRXBVEJ0DjSm7LO6UT486mQ23ipVLfd
         QRcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9ZV8MpGHFgZrK0xpQV+TMW3aR+IU6jCa5Dw2m+OaUas=;
        b=xmf6NWDEL8+9OoBcvR+756wu+FdwEEIb4O2aiifMDP2zvxp/Go/+rwyzR8oLsblXYM
         TlrDUutp8LSBFmTUngPL24l835BXfaaKX7TxPK7ziECgqSGv6KbxstDhloyftkhcM2zb
         idriSg2a2jqaAE221sR9Y6T0qaLcdrgLSGdwKR7xqY3S8xEvtDczw6NfPid1IJZJV7F1
         1AL9ia4iBJ/MlurlDaxRBvuLCfqP6tpE3ffmIY7xHEcLBZgsfJKAVpV7ie4HADqrQmaY
         qE+PCPGA0uB8+Hr+qcGLpsgM0jAGu64VaYyYE/A/oqZpiVhH0/NrbfcwD6e4sQ5e33Ir
         /jIg==
X-Gm-Message-State: ANoB5pki8NLvH15b44iCxbcFe7zloCMT09eKCB/B9zAx4GL8cxUWYbfq
        6uAiyuwZXiUtVqzNtkJoTUILyiwxMYc=
X-Google-Smtp-Source: AA0mqf4UQwRiWRdoOxhjVJJDz0FzzVzZ0XUVbqTpF+avrkPxYF4AEVjjJ5kmbjc71YkM0ipU/Kto9g==
X-Received: by 2002:a05:600c:3ac7:b0:3cf:75db:c417 with SMTP id d7-20020a05600c3ac700b003cf75dbc417mr30250567wms.109.1669676540826;
        Mon, 28 Nov 2022 15:02:20 -0800 (PST)
Received: from [192.168.43.80] ([31.221.250.124])
        by smtp.gmail.com with ESMTPSA id l18-20020a05600c4f1200b003b95ed78275sm9564wmq.20.2022.11.28.15.02.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 15:02:20 -0800 (PST)
Message-ID: <9da08271-decf-8d94-0640-161ba768554e@gmail.com>
Date:   Tue, 29 Nov 2022 00:02:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
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
 <a91e48c-4e6-552e-c3f-fdae039ad1b@codesourcery.com>
 <fbac0ca9-97f5-6122-4335-610129555526@gmail.com>
 <46d586c9-a3da-93fd-d67c-a0dfb24a3d17@codesourcery.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <46d586c9-a3da-93fd-d67c-a0dfb24a3d17@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MhD7FrWGDvt7DowKaET6sIaB"
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
--------------MhD7FrWGDvt7DowKaET6sIaB
Content-Type: multipart/mixed; boundary="------------ZZGKTBHDzMp97xjWdogbqBtZ";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>
Cc: Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
 JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
 gcc@gcc.gnu.org
Message-ID: <9da08271-decf-8d94-0640-161ba768554e@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
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
 <a91e48c-4e6-552e-c3f-fdae039ad1b@codesourcery.com>
 <fbac0ca9-97f5-6122-4335-610129555526@gmail.com>
 <46d586c9-a3da-93fd-d67c-a0dfb24a3d17@codesourcery.com>
In-Reply-To: <46d586c9-a3da-93fd-d67c-a0dfb24a3d17@codesourcery.com>

--------------ZZGKTBHDzMp97xjWdogbqBtZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoLA0KDQpPbiAxMS8xNC8yMiAxOToyNiwgSm9zZXBoIE15ZXJzIHdyb3RlOg0K
PiBPbiBNb24sIDE0IE5vdiAyMDIyLCBBbGVqYW5kcm8gQ29sb21hciB2aWEgR2NjIHdyb3Rl
Og0KPiANCj4+PiBUbyBxdW90ZSB0aGUgY29udmVub3IgaW4gV0cxNCByZWZsZWN0b3IgbWVz
c2FnZSAxODU3NSAoMTcgTm92DQo+Pj4gMjAyMCkgd2hlbiBJIGFza2VkIGFib3V0IGl0cyBz
dGF0dXMsICJUaGUgYXV0aG9yIGFza2VkIG1lIG5vdCB0byBwdXQgdGhvc2UNCj4+PiBvbiB0
aGUgYWdlbmRhLiAgSGUgd2lsbCBzdXBwbHkgdXBkYXRlZCB2ZXJzaW9ucyBsYXRlci4iLg0K
Pj4NCj4+IFNpbmNlIGhpcyBlbWFpbCBpcyBub3QgaW4gdGhlIHBhcGVyLCB3b3VsZCB5b3Ug
bWluZCBmb3J3YXJkaW5nIGhpbSB0aGlzDQo+PiBzdWdnZXN0aW9uIG9mIG1pbmUgb2YgcmVu
YW1pbmcgaXQgdG8gYXZvaWQgY29uZnVzaW9uIHdpdGggc3RyaW5nIGxlbmd0aHM/ICBPcg0K
Pj4gbWF5YmUgcG9pbnQgaGltIHRvIHRoZSBtYWlsaW5nIGxpc3QgZGlzY3Vzc2lvblsxXT8N
Cj4+DQo+PiBbMV06DQo+PiA8aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWFuLzIw
MjIxMTEwMjIyNTQwLmFzM2pyamR6eHNub3Qzem1AaWxsaXRoaWQvVC8jbTc5NGFkMmEzMTcz
YTE5MDk5NjI1ZWUxZGVjN2VhMTFhYjc1NDUxM2Q+DQo+IA0KPiBJIGRvbid0IGhhdmUgaGlz
IGVtYWlsIGFkZHJlc3MgKEkgZG9uJ3Qgc2VlIGFueSBlbWFpbHMgZnJvbSBoaW0gb24gdGhl
DQo+IHJlZmxlY3RvciBzaW5jZSBJIGpvaW5lZCBpdCBpbiAyMDAxKS4NCg0KTWVoOyB0aGFu
a3MuICBXb3VsZCB5b3UgbWluZCBjb21tZW50aW5nIHRoaXMgaXNzdWUgdG8gd2hvZXZlciBk
ZWZlbmRzIA0KaGlzIGRvY3VtZW50LCB3aGVuZXZlciB5b3UgdGFsayBhYm91dCBpdD8NCg0K
VGhhbmtzLA0KDQpBbGV4DQoNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNv
bG9tYXIuZXMvPg0KDQo=

--------------ZZGKTBHDzMp97xjWdogbqBtZ--

--------------MhD7FrWGDvt7DowKaET6sIaB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOFPfoACgkQnowa+77/
2zKicA//QVoAWQL/P1vEEcWUwvBTGjY7GQ6D9loI6s8uCOvFz1LF2J3+RZ3a9ofr
POFzR4BLEEYBzNrgE33k2J1eIKPmAuSPwKyr4F9cFKI34bV2+f7qXJwdGwKNVd4N
kFGHmiMoDmr6LvkvO+OSiCr2OkxTfqPz1Bc2RnlQ4uhJS4nuxF3eitLlX+DxdoHv
qm5eU9biwfJKnbuWb2OfCGOTIfKnC9BnkTghRnUxCTRXMhsT6XS7fknnDkuuQhM6
B4jmAg1mGx/hpZH6SKe4i1VF6wNXmxUX5oGH5ihmuQFBiUTt0JeSEqSSkTNsgvG3
Qlr2fkBp2HxUK33aoC/5ExI3qvsfEz09jnQ1ldhicdAtsduF/wkWJxRa6L6P44iR
32TK+DX2FV4x2sK8dxDqE4ilTdVDVCIwAtXG/bMs2gx5dazPlywC70BLxQjvGfXO
jAo1hbsO8EEHbasr4975eyGb2/DW4tPMzKoriwTaxVwsbgO1+61iU3Z1s+UiyYbK
BIy/p1qv5R7ENNZPPOeeGZknqtRT2ymZFEjhjYkKRjLLGa+ZXZZ03JVKv73zXmKw
qNTyxM+YFSlDT2+EXFba2dCZjMswgrNVejiqu+TLaw86JXIagN2Q3LUl7aYiS+Ai
TgZRCGtItkDDhXimE7U1FwRUdk8k++gbuwwUwQJh6/edloLnGNs=
=BsbZ
-----END PGP SIGNATURE-----

--------------MhD7FrWGDvt7DowKaET6sIaB--
