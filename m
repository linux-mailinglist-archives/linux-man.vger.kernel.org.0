Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 725745AE705
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 13:57:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230215AbiIFL5X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 07:57:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232531AbiIFL5W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 07:57:22 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1800D3F323
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 04:57:21 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id bz13so11666138wrb.2
        for <linux-man@vger.kernel.org>; Tue, 06 Sep 2022 04:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=WM81rCAuOAdlI3o7HRrLGiducile+8Wt3wybBA1VPd0=;
        b=UYaZWW8wwH84SejA+/nLBt+K21FkE1VOgJ7nlEB44e0kodu8eLUSh2kf7BTE2FoZG3
         wR9ZR0JMVDDp4vL6P8JX/AqXl0R7Jx2SJAM+bN4kD6J2Cxy5X/33lqDGxo73vOdJnaXs
         GKyQSs3vb2yhuNL+7LyNA10hJ9kywyGL0seDGAVLgelqtOe5Mqmn1JmT/KJ1AbuWZEHd
         kiT87VHkmNkJ/hVq4H9xFp96Wn9xSYuDRAG4N4Ih5bYyZdaebhSMFcs2Up80ymmq9qHr
         VRScJrJJf0UdJgvvaqQZGQHpksLV91x3iDWyBOe2kJSf5eMOdmsF6z9Ey/+amEK5ZcMO
         F/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=WM81rCAuOAdlI3o7HRrLGiducile+8Wt3wybBA1VPd0=;
        b=b6gbwTUbnRqh4KHiZdHTZ6Lea2zd+cBe52y8EOtpiZDUJk99cVH5o/pQVI+CTEXBgd
         svPBP77yQNk9xelmUXL/7Moy4s+1Ab9oVb3iQu32Kyba1aScF3LCxiwv4fGn/ELQRlXw
         1mWwP8oJtNtb0ma2GrdtZYC5Np1rkcMWI1wQ/bA3h7RvQXtqubXl3vc1oUf3AR5ImZF0
         zxR2Ecp2qtCEt7hVIPbokfDUHRdZNoMLhvVR0kb0AP+m+ZTNI/6yAxwfyQJjayaLCD3+
         F+9YLYlSbbDfiGtCWAWblKvk6zcYK69+Ehh0ucoX378WcAHpHEs1gCMqvsnB+9DoqMRN
         wr1Q==
X-Gm-Message-State: ACgBeo3eciqp2bQcF20nVbu6lELa1moi+Cm4qYnBNQ7lqDF9A+r1LcnW
        x2IhKRUmd5UhpAVu2TFLJIlKayI8h6A=
X-Google-Smtp-Source: AA6agR5wYAuci1CX1MhxxaJ65PRBa5MVTpyhzV1PlQR+mXmIIExWJHdFCxfdfKNPgXun6yth9wWwiw==
X-Received: by 2002:a5d:648b:0:b0:222:cb51:a57 with SMTP id o11-20020a5d648b000000b00222cb510a57mr27167476wri.287.1662465439604;
        Tue, 06 Sep 2022 04:57:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k1-20020adff281000000b00223b8168b15sm12458433wro.66.2022.09.06.04.57.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 04:57:19 -0700 (PDT)
Message-ID: <d63cf698-e15c-1fe6-5952-22afc7916904@gmail.com>
Date:   Tue, 6 Sep 2022 13:57:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Petr Vorel <pvorel@suse.cz>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <f8f6d1ba-5820-d238-4627-446d715fcf6f@gmail.com>
In-Reply-To: <f8f6d1ba-5820-d238-4627-446d715fcf6f@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MalMTPR3FOlpRvQS9evTMLk3"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------MalMTPR3FOlpRvQS9evTMLk3
Content-Type: multipart/mixed; boundary="------------WTfWtbZaFGbZqvUCp0W0PxJ6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <d63cf698-e15c-1fe6-5952-22afc7916904@gmail.com>
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
References: <YxcV4h+Xn7cd6+q2@pevik>
 <f8f6d1ba-5820-d238-4627-446d715fcf6f@gmail.com>
In-Reply-To: <f8f6d1ba-5820-d238-4627-446d715fcf6f@gmail.com>

--------------WTfWtbZaFGbZqvUCp0W0PxJ6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOS82LzIyIDEzOjE5LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSSByYXJlbHkg
Y2QuwqAgSSBlZGl0IHBhZ2VzIGZyb20gdGhlIHJvb3Qgb2YgdGhlIHJlcG8gd2l0aCAoaW4g
bXkgDQo+IGV4YW1wbGUsIEknbGwgcHJldGVuZCB0byBlZGl0IG1lbWJhcnJpZXIoMikpOg0K
PiANCj4gKHByZXZpb3VzIHRvIHN1YnNlY3Rpb25zKToNCj4gdmkgbVtUQUJdMltUQUJdbWVt
YltUQUJdDQo+IA0KPiAoYWZ0ZXIgc3Vic2VjdGlvbnMgd2VyZSBpbnRyb2R1Y2VkLCBidXQg
YmVmb3JlIHRoaXMgY2hhbmdlKToNCj4gdmkgbVtUQUJdMi9tZW1iW1RBQl0NCj4gDQo+IChh
ZnRlciB0aGlzIHBhdGNoKToNCj4gdmkgbVtUQUJdbVtUQUJdMi9tZW1iW1RBQl0NCg0KU29y
cnksIGl0J3MgcmVhbGx5DQoNCnZpIG1bVEFCXS9tW1RBQl0yL21lbWJbVEFCXQ0KDQpkdWUg
dG8gdGhlIEFubm91bmNlIGFuZCBsc20gZmlsZXMuICBTbyAzIGV4dHJhIGtleXN0cm9rZXMu
DQoNCj4gDQo+IA0KPiBJIGFncmVlIGl0J3MgdHdvIG1vcmUga2V5c3Ryb2tlcywgYW5kIGl0
IHRvb2sgbWUgc28gbG9uZyB0byBkZWNpZGUgdG8gDQo+IGNoYW5nZSBpdCBiZWNhdXNlIHR3
byBrZXlzdHJva2VzIGFsbCB0aGUgdGltZSBhcmUgbm90IHRoZSBtb3N0IGZyaWVuZGx5IA0K
PiB0aGluZyBpbiB0aGUgd29ybGQsIGJ1dCBJIHRoaW5rIEkgY291bGQgbGl2ZSB3aXRoIHRo
ZW0uDQo+IA0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0K

--------------WTfWtbZaFGbZqvUCp0W0PxJ6--

--------------MalMTPR3FOlpRvQS9evTMLk3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMXNZ4ACgkQnowa+77/
2zLZfBAApODjJzFLhyYujGHBmuCaIjAx9vyIjoZFtkectFJgvnnQX8mi0WvmxNdH
eZqCzgjzJLvB9swLNtP5RCNNYxLoSTPMz3WU7cvPgAx8sdn/1XnDlKrpr9xMvHQZ
2x225vmOrjnPr2yYl5WFLvosn4uOumLTE/NXR5NlCev3oEYaFdaWs8awpgt0dOSa
o/7hV1PnoEkqp9D7e7W0Gu+qC/XRC75dZ5r1Ivi+vjOwKPNHQMor8zk/Oq9nmPfD
MhdTaICTC4hR+n/wF90gAOKXh4Te72XXg2rtnRl0ll4oYNf07HS+2qEsjcbUSvSF
LrUv9tlzTRt7Xb1GotiprZg8z1b3AitO3Kg+qPuQUnMsgnuuOj1PhsyYZJr/3Gz7
MGniBsfpT5S7nA8k9ibp5F5XPWuQSG2c9+/r7XRZlxVdPjrRycl1Z5pRt1bsCuin
Drt7HUSH53jxERx9novn079Lix6+CY1oyQ7gwmpo2kf6jGp7X8Nq3P5K6rikHmuR
Eal0oCPtx4bp4DN+s+1IT6FWSbKfnlkJMxHD5xn69sFPUCJXDL7XObJQZLSnxkrk
lavcYWWnB2kINDylZ3A3EzdnvfNwGXPrkbqPVFn+T6fcMMgn01cQOy36+dmWJ7eX
/U+43hd+YNSNI2J4iNipeNKqTgKZH11IxsJ9iTvsgTIoFWS1ILA=
=U1Ux
-----END PGP SIGNATURE-----

--------------MalMTPR3FOlpRvQS9evTMLk3--
