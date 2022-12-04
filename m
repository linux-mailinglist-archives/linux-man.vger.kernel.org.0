Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCB7C641CB8
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 12:40:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230204AbiLDLk1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 06:40:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230142AbiLDLjr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 06:39:47 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D251617E01
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 03:39:19 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id ay8-20020a05600c1e0800b003d0808d2826so4486632wmb.1
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 03:39:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PFV/zT8fYiZSWCkR4kOphVq/LAmp9y6Jqr4fvoFszbE=;
        b=bJpCQnecidvWzkw5i1aSuBDrIf7Uy8otiy85OnB/lhkj8jw0+2ZhQQ3T0sSOG+FSHT
         HuiMOaUu++cn5+ND0l9GvxaE7AyUd8upV7p/Ns2C4zIltj0CD0a+5GRSowYZlUtIprHv
         M4XMFIPx2+3Qo3VpSvQ0v8HMtTS7YZnrnozqfGvq49x0m2CSEu8frEsMq7Cfp3rWJYzc
         IgdjlK7QObO23jUtvQLOGq0Z6u/yICGvjBs5U37sUjaKf6OiOPVKrEVEfK0MiWGosG7Q
         kmDrOsJot31HqUkC7f3rsqv7TFG8hWKT2+HFaIY/xyhAOq4sQy+pE/f2kYD+JG238umx
         DCjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PFV/zT8fYiZSWCkR4kOphVq/LAmp9y6Jqr4fvoFszbE=;
        b=EdTYBaNjZd0SoU/M9FWxowSFKAELHdj/yB2ORhJf2zhznDuCjoW3c3I1BjcrY7KmGt
         dbd88cP/sxEsqrKHxyR02ja7YOXx2B2NQInUv+pntOPIsUTfG6NAjSc/ibFcXq9OcDcV
         J8fiDXLYmVuu9VhqKVv5QSXgYGUgeRSDDxaTuJ+R6IMiKmItTUg1QBUzjvEowmz0nIQF
         EEa5tkcWk0f8uOcsM0TMNJVcUgjzOn0r8S6Jxxv5QITMVtYXZu6cNFn9ILkuCfMsWc6q
         +6X7xiYAXwINIXgsSLp2UIlWN6Kk201t2Kr6/t0YuZ/WleltDMrADybTOtYGzedbN10U
         IfoA==
X-Gm-Message-State: ANoB5pm4Qp3JRNU6q50axLuCkOmfKtZBrnoUoGduDJAxzv5vTlUfM6ON
        a/ukukS8gjR4UtxqrHM6+Yw=
X-Google-Smtp-Source: AA0mqf5vu41Ygli8gjDLuUG7RyKRO2wkElAOxq5757uammyonb1c7V6vtwgTWQSwzobuUYLUqfAunQ==
X-Received: by 2002:a05:600c:1d1e:b0:3d0:4720:5293 with SMTP id l30-20020a05600c1d1e00b003d047205293mr30858855wms.176.1670153958381;
        Sun, 04 Dec 2022 03:39:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q6-20020a05600c2e4600b003c6bd91caa5sm13168293wmf.17.2022.12.04.03.39.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 03:39:17 -0800 (PST)
Message-ID: <bb033e53-d8d7-dc26-72cd-012066047d0a@gmail.com>
Date:   Sun, 4 Dec 2022 12:39:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page filesystems.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090709.GA32662@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090709.GA32662@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VMXk3T9It3q1Se1Tgd13HMPz"
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
--------------VMXk3T9It3q1Se1Tgd13HMPz
Content-Type: multipart/mixed; boundary="------------5sLZOuQ6bkTTsNAM0ZtarjAI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <bb033e53-d8d7-dc26-72cd-012066047d0a@gmail.com>
Subject: Re: Issue in man page filesystems.5
References: <20221204090709.GA32662@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090709.GA32662@Debian-50-lenny-64-minimal>

--------------5sLZOuQ6bkTTsNAM0ZtarjAI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIFdpbmRvd3MgZm9yIFdvcmtncm91cHMgb3V0ZGF0ZWQ/IDE4IFllYXJz
IGFnbyENCj4gDQo+ICJpcyBhIG5ldHdvcmsgZmlsZXN5c3RlbSB0aGF0IHN1cHBvcnRzIHRo
ZSBTTUIgcHJvdG9jb2wsIHVzZWQgYnkgV2luZG93cyBmb3IiDQo+ICJXb3JrZ3JvdXBzLCBX
aW5kb3dzIE5ULCBhbmQgTGFuIE1hbmFnZXIuICBTZWUgRTwuVVIgaHR0cHM6Ly93d3cuc2Ft
YmEub3JnXFw6LyINCj4gInNhbWJhXFw6L3NtYmZzLz4gRTwuVUUgLj4iDQoNCkkgbmV2ZXIg
dXNlZCAnc21iJyBzbyBwbGVhc2Ugc3VnZ2VzdCB3aGF0IGFyZSBub3dhZGF5cyB1c2VzIG9m
IHRoZSBmaWxlIHN5c3RlbSANCnRvIHJlcGxhY2UgdGhlIG9sZCB0ZXh0Lg0KDQpUaGFua3Ms
DQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------5sLZOuQ6bkTTsNAM0ZtarjAI--

--------------VMXk3T9It3q1Se1Tgd13HMPz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMhuQACgkQnowa+77/
2zL78BAAlqVEgtF0oRcsoT3GODMFlNz+rLZZPTMuZCAWXtxxLuC0TWd/ek63nT9N
7hYSh3P1OTuhdjB+HYf5H0o65LbTAzlHVNNgbkgZgu2IfRmMXd6UeSylVnDNLBe9
fSMpVLKgkjO7Hk+KqFDMR3L1jc9W9xeYagJdz/UYEj4PtuBpzcBA5Yo1uVrZC1TP
JHKNLEjdqaCqrgHkn7qiYVSywnmz6E1Yz+Nu/1omLy4U4se3McACyjztL5rXGdQi
/rA2RlnOL48DwQmtIe19dk5uTMDvs26cJooWKUe2tK0u4+9Fto5Bl7dXZh2y8hZ2
mWyP2egxtwKRY7a3jbwKuqSQC9TAO/650CR6GegqV0KnB9ZtQYoRb1Q8be96Y7oL
+R9Rb8OvoDuWsuU1kdkLjkBwxqj8YXTDVvgRHku+VV8+V4wr5H6Jm7Z2Vx0hzItt
n+hQuoYe3Xw04ahVe1sDUxmYVVGjfZarcSH2JagZ94KpurSRqX5KlvNeM+Tj3Azv
/T7kfliQ3uXW85nKYUXzLLYrnwO8CQ29JNqKmQ2p0fE6Vf5LkzpFW8HbKwU5kxEe
TWoPQdaT+gE4+WOH820PDisyVgBkypaSNyi89nE7X03qke82/ETpNj04kbKeOjvw
PDuA3amYs6F+9zvakdpanqXCyDtASBbxyiBx9zJPeg4wpH5cCU4=
=862p
-----END PGP SIGNATURE-----

--------------VMXk3T9It3q1Se1Tgd13HMPz--
