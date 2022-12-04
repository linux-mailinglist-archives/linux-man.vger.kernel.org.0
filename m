Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC663641D18
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:46:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229805AbiLDMqf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:46:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiLDMqe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:46:34 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3936115FE0
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:46:32 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 125-20020a1c0283000000b003d076ee89d6so7211114wmc.0
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pD27pmAH9CYijI0iljQcONXje8UE5jUyOmpenCGsm68=;
        b=ho/Cxs9zTUosWjkTw1DZzEmGs3eCxU+VfX3Mno3ef4qSzJXxb6aaMKawwL9A80SKgA
         gKqHCxAFjtdJcgoQoTExgkcXaT13EIg4Yve8w89KTGZQK4LciwB3G/hPAiCxc49zZ5uP
         cU/ERWopCuTLt0WGKwaFaX8TQ7JMebE9ikaayXJRcMHe5A6sVYRK655/mYePAFi54hU+
         qbACE7bt81tsLkg7bxaVg3e4EqhaZkdJ6J+S3hwUXKgIBKG36nF5fxiincyttoEZTZ1+
         rqPdjNthNMzFo+KVJYMHmJWPPDfCMdOFIMeCRxfM+QbRzTKBaoP3q3PMwHyuggP2uCOA
         y86g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pD27pmAH9CYijI0iljQcONXje8UE5jUyOmpenCGsm68=;
        b=m/p37Y6JVKEf56BICWkiPywZT9NaNAi2k7X1I4joupCo+qhJ3HIXt79bRUNNsA48ac
         zNvb5UIkZnr+zeYayn7PvTlzzwCZgxABfOYpbFjbZtjSqn55IBkHln8+gDDZSgZJcQ0m
         Po9aaAiwEhGD25eTBJQcRsmfPK4+cgsOI5Fh9sXDQ1wnIJY4BVzGNFcCc30IgzC+2DH5
         WwLljEj50Fq5qSPC08vCkPOssWM5OqoqeCcvIzkigE4oxAbyVlv8i/RIhSa37Em/SSRG
         IqmuqXtZgxVSiUkGly0/44O4xaQA5fmqMIpPiJkV8tCV1RXvq4sIyqavsr+6qi5fGh2T
         keqw==
X-Gm-Message-State: ANoB5pkf5qa+ZvZ05eDSP1HYxjSEjIaVnpAYrt+ag3WLag1G4Zq6W+A5
        NU31XuLBOd00ehPR9fQCDks=
X-Google-Smtp-Source: AA0mqf6hzrNhpfw3p/XhybE1y5s3ZIuA8NFRLcFMMPC7yMrpgrUBDFPbtGiWZi1QKMHuaMDEwBzj8w==
X-Received: by 2002:a05:600c:4b27:b0:3d0:a089:4d6b with SMTP id i39-20020a05600c4b2700b003d0a0894d6bmr3700321wmp.78.1670157990770;
        Sun, 04 Dec 2022 04:46:30 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600c199100b003c7087f6c9asm19287229wmq.32.2022.12.04.04.46.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:46:30 -0800 (PST)
Message-ID: <4c00b870-212e-9546-24fb-b700e800fce3@gmail.com>
Date:   Sun, 4 Dec 2022 13:46:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page passwd.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090714.GA587@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090714.GA587@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------p2EeQ90dCjW5WitrxYnApayv"
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
--------------p2EeQ90dCjW5WitrxYnApayv
Content-Type: multipart/mixed; boundary="------------mYLofN0sfmRIT0UTYtmhOtr0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <4c00b870-212e-9546-24fb-b700e800fce3@gmail.com>
Subject: Re: Issue in man page passwd.5
References: <20221204090714.GA587@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090714.GA587@Debian-50-lenny-64-minimal>

--------------mYLofN0sfmRIT0UTYtmhOtr0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgXCJtb3VudCBkZXYgcGF0aFwiIOKGkiBCPG1vdW50PiBJPGRldiBwYXRo
Pg0KPiANCj4gIkFmdGVyIGEgXCJtb3VudCBkZXYgcGF0aFwiIGNvbW1hbmQsIHRoZSBwYXRo
bmFtZSBcInBhdGhcIiByZWZlcnMgdG8gdGhlIHJvb3QiDQo+ICJvZiB0aGUgZmlsZXN5c3Rl
bSBoaWVyYXJjaHkgb24gdGhlIGRldmljZSBcImRldlwiLCBhbmQgbm8gbG9uZ2VyIHRvIHdo
YXRldmVyIg0KPiAiaXQgcmVmZXJyZWQgdG8gZWFybGllci4iDQoNCkkgY2FuJ3QgZmluZCB0
aGlzIHRleHQgaW4gdGhlIGN1cnJlbnQgdmVyc2lvbiBvZiBwYXNzd2QoNSkuICBQbGVhc2Ug
bWFrZSBzdXJlIA0KdGhhdCB0aGUgcmVwb3J0IGlzIGFib3V0IHRoZSBjb3JyZWN0IHBhZ2Us
IGFuZCBpcyBub3Qgb3V0ZGF0ZWQuDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------mYLofN0sfmRIT0UTYtmhOtr0--

--------------p2EeQ90dCjW5WitrxYnApayv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMlqUACgkQnowa+77/
2zLY9Q//WHdcW465YFvFw/mxfHxutJ0dsULr/KTIFctox3MpnaqtFfPoUilCnFJa
9/yvhnCUub+zsr4FCTrnkpXcMweSuxme3mk/05TmHgNScqHnkMVg6RnMsrwW+VE4
EvEIMlwjiJP4m2MJ49kukHhRfpgmKglqZFrB+v+V28+WB8pMpF3AiObzrJTj378d
pm9/qSiEcffJ4TKCYfXyVGsbipSsRrlbFYQt6zUY5NN6piysQ9vcWNzcSCVlYJK6
Tk8YEKZp/Ml9iJ/GQX26sVCsAxgR6dHMSjar4TBZOZSkOaiaTQ/ksch9qhbV2Q7E
MRqyMET9vko8BqJYvPIB4/u3KaFkVktm0c4rEprVpVouWxucuRdh4ZfrX549X9VX
i3JFM9AcNPYbht9GIUsstj4hZFksSw2wfX1m4uqXprlw8lX5BQUuxshkkMOQnRPh
Ib9GkR9RDEhKj84KvqbIWSBl3dOe76BvT/w93r7tTDdwtglCNTwy2B/IFJ8j9g3g
AjDboDX0qu8ZNT/B7QzLATpSj/6vvLSJz0nmAeR9fLShdhX133LyHUjCFChF5tMB
YQ3bS3Gx3vfUczgmjeelxFyXkJyJYpoom+PRClb+WpfUor2wef0PVer/nvF13OZ4
poDuf3RqO+KpD8HMibIjJ5g9MPUxIYtX5lBT/5Wh92Vvn2HW3hY=
=mkAU
-----END PGP SIGNATURE-----

--------------p2EeQ90dCjW5WitrxYnApayv--
