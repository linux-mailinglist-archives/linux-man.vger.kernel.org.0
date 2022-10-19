Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F481604686
	for <lists+linux-man@lfdr.de>; Wed, 19 Oct 2022 15:13:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231918AbiJSNNZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Oct 2022 09:13:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232728AbiJSNND (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Oct 2022 09:13:03 -0400
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C1B14FD0E
        for <linux-man@vger.kernel.org>; Wed, 19 Oct 2022 05:58:06 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id az22-20020a05600c601600b003c6b72797fdso14492503wmb.5
        for <linux-man@vger.kernel.org>; Wed, 19 Oct 2022 05:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=wXVOQItNPbmhVBT15XYN+g0Fq0gxnco/mLD9Ycf/j3w=;
        b=elvRrNdwQAvz2/Zqb6uWME+oDUUJf00HrVUFi/cVRTj9ciIB2TcmzWgs3LZvl1VHt3
         m7Eyq+62nq7r7AIrtp2SqrLHzqGN/px1HPfb75Uth/xMALc36zpcScXMQZzblrtbZ+q9
         aZFfBO1h1Lb8v/DCCh68lsVi/iUmFimYCVEJ9XxtLyZm22fer5ZjjJqSycnWkTTOd8rX
         IXXv8LjbaJcDDDdH+C/YwMuwrPdRCLIY4maRn0Sw+kAWsu8UmlLXskvFWNcryjFFqKfi
         A2R3+PM/NjcJazI06baGeLaC+QyszAxQjaDmNr5yHYl15eAAQsezfaTDTTvQSn/Jz6oz
         67vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wXVOQItNPbmhVBT15XYN+g0Fq0gxnco/mLD9Ycf/j3w=;
        b=qs8gfBXxBc7w9S2/XL51o9BQVtrsHZ4TCyveTaEJgV8W5xxSnDQxzR6QWpFI7K5DyD
         4UxeJps5kxLtt6fcQ/8REQFbcMYizrkCQYqUMl0DkSqHHbtRlbFqz+PDYb1hXIMtciqC
         I5TggHpL0stVzRV21zTBr0MpaWXYuYdThodIlt3d6muyLMKDlqHokFDoW114w5m/xNhk
         +WFKC8QvyPR5RvXE07dE3aad/qWsnKEKjwNG0Nk+BiQPVsdstuxC/xrsTdCJ+WAfsL98
         J+u/GTA61NUo96uryCEAtOm0pe61GAtnUDxMhr66P0R0N0ZpIn4n8xcCiTTB8Z8M0lEQ
         cZ6A==
X-Gm-Message-State: ACrzQf3MQq504fmDcH9xjzn9CWE06LRMAkPYpVM9w5pMigUCP5mwYnf9
        4b26Ljav7WKpTUWflSlIpV0WwDAhqgA=
X-Google-Smtp-Source: AMsMyM7ki5In48WMIt5sjjA+aZq24rquB3GyXtx6dsZ7wHwD5lSdmLRjwYg9IdCqlFZ2gYZbQYhx2g==
X-Received: by 2002:a05:600c:654a:b0:3c6:f83e:d142 with SMTP id dn10-20020a05600c654a00b003c6f83ed142mr5404019wmb.147.1666183895676;
        Wed, 19 Oct 2022 05:51:35 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c3b8a00b003c6b7f55673sm22940568wms.2.2022.10.19.05.51.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 05:51:35 -0700 (PDT)
Message-ID: <741f4e2a-2659-025b-0ad7-ca679a4e2152@gmail.com>
Date:   Wed, 19 Oct 2022 14:51:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: man-pages RELEASE file
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nCNr0qS6uswJgewN38DFpjtl"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------nCNr0qS6uswJgewN38DFpjtl
Content-Type: multipart/mixed; boundary="------------VeftlMS0W9wZDV1fM5MFPEz5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <741f4e2a-2659-025b-0ad7-ca679a4e2152@gmail.com>
Subject: man-pages RELEASE file

--------------VeftlMS0W9wZDV1fM5MFPEz5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpJIGp1c3QgYWRkZWQgYSBmaWxlIFJFTEVBU0UsIG9mZmljaWFsbHkgZG9j
dW1lbnRpbmcgaG93IGEgcmVsZWFzZSBpcyANCm1hZGUsIGluIGNhc2UgSSBkaXNhcHBlYXIg
YXQgc29tZSBwb2ludCwgc29tZW9uZSBjYW4gcGljayBpdCBhbmQga25vdyANCndoYXQgdG8g
ZG8uDQoNClRoZSBtb3N0IGludGVyZXN0aW5nIHBhcnQgdG8geW91IGZyb20gdGhhdCBmaWxl
LCBpcyB0aGF0IGl0IGFsc28gY292ZXJzIA0KdGhlIGNhc2Ugb2Ygc29tZW9uZSB3YW50aW5n
IHRvIHBhY2thZ2UgYSByYW5kb20gY29tbWl0LiAgSXQncyBhcyB0cml2aWFsIA0KYXMgcnVu
bmluZyAnbWFrZSBkaXN0JywgYnV0IGl0J3MgYmV0dGVyIGlmIGl0J3MgZG9jdW1lbnRlZC4g
IDspDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

--------------VeftlMS0W9wZDV1fM5MFPEz5--

--------------nCNr0qS6uswJgewN38DFpjtl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNP8s8ACgkQnowa+77/
2zIYqQ/4hyMtI9sye4rMmJvlktqBjpRqaioRh9FhX8Vi3xl946tB0TF+mJ5o9xMJ
K45PetCS2d/hJVicjsCvvEHYJjdUjscbnIGxE3VJ4KukCLODKQPpmx3FbS7Oa1E5
36D9RTp+0syqOPyG9rqlSIWc271omhxgDck5WVB626/zO2XpX8AGL6LM6HapVwDw
IOhx9uln2gXvQU5kDER0a3wwIONJV7I0gQkZkGed1FreznOfjXtilSRhyNEeiaG/
ZcX3AnM0oeMCQjgcDeeV/dyB5c6y78hnlDnc4L7FBlg5TOwkBGp7qTMR+/4+iAkS
zgCetYCVuPcn8Z45wKwi1G7b5BMDScw2DAdDZXMUAY8d28MC7EP64siBEqPVhPJx
fpTBAxDMxDOjCyb4Kq5qIAZi+vB625y/y+tJ/2xZ29phsvt4uU+q7lDLSjQp+9/4
qw6NhUnNnUWHUQcTXkmlA+p4DUP5mH75iQAf3qkn1Z49ffupyzHPHmpN/oECUksM
ngeBPYeTivg/1xKZB1NtPP3zoi8i3DGv3GdboYL+R6V8NpgiHL+GRRXjbmyzt2Tb
LQZZBqGyOUC9kPFR/9bxxicTyw8HdXiolFX6dxXyhrMMdhTYj15bMlJW4zQKMcAC
sdt5veoEdJx20Qzaj/mn00lTXtn+rKJxeYxTS27NXwa6TlCzlQ==
=LRVr
-----END PGP SIGNATURE-----

--------------nCNr0qS6uswJgewN38DFpjtl--
