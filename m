Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27E79614BE7
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 14:40:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229496AbiKANkX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 09:40:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229894AbiKANkS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 09:40:18 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A4D7DE9D
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 06:40:17 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id w14so20120477wru.8
        for <linux-man@vger.kernel.org>; Tue, 01 Nov 2022 06:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+lxp16QgXB7q697C90CrDGMxUaRjiliwMHqLky1MIVo=;
        b=WlNX86b76dl6xOGOa5CL8qvtZ7ipsrwbr29T1Fvf96VRmIbDeh4pCVcPvMP7MBcONH
         1MH8HeWFNragU5eHClagSDf1euTXqSJglobK+E9A+gNzUfNMuewZy2L5G90BrffA/oUn
         q1o+HF7TMk2iXR6Y01iuEpzNztxIFoRwwkSyUfWZCccdVL+P6mjSzq8dgyStHGm/eLMC
         vP66BF+72xKXzaVBVKE9NMMWAJl0mkzHh9FKo9GLn6Kr/6srTfwB+gII1tPZY7h3tN3t
         tg1Rd47VwyPm7RHRhrBbH0jjBf4SwBJKR5nmd8fr8fKB+Rf0/UwtOwB/sonSF7xJxVQW
         XtCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+lxp16QgXB7q697C90CrDGMxUaRjiliwMHqLky1MIVo=;
        b=Uy7jMYAub7HX6umL5Pw8HYhpCgRV48dmpxv/kmbOIcpLuEJzYAFMY8QWG55WLbJgfh
         bBYk6pBweYOCFn2XO8IVYNWBWBJ3QXesySnSriaMwKJNaxXJf3yq45fiXSZzZNutW8Mj
         imhaCnydgrmB6fmhWFkyELicG01TWjkxEk4UrifvAprUvWb2YkDWFous1WTwnrwyzkJG
         Emc5TdyEywL98k8yCM5JOZNKICRE/uQlNu+pGSZfHFGmd08BqCAP44YHcEUi0EtKaFFS
         mFUHwx/sJPa2VSJ7s/g9FYrQOwhFA3ePre+pHWYLeq640h5VbAbI3tUZWpM8ETUDQuw3
         6bew==
X-Gm-Message-State: ACrzQf0AR8thgwMRQJ1G/OtzdRsMIKfwgz2jovuHNErLe0rFFHkLfvnW
        nHdy8S7f5PO014kLp8WbkfI=
X-Google-Smtp-Source: AMsMyM4xP4zO+l5Px4lqSZufLWNt9FI7Jrwt+ibgPkDGY08Zv5it0098Z2Ij0/M02lDnj6kyEQUFMA==
X-Received: by 2002:adf:e805:0:b0:236:22d6:1001 with SMTP id o5-20020adfe805000000b0023622d61001mr11765914wrm.277.1667310015483;
        Tue, 01 Nov 2022 06:40:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p16-20020adff210000000b0022ac672654dsm10148839wro.58.2022.11.01.06.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Nov 2022 06:40:15 -0700 (PDT)
Message-ID: <735fcef7-b09d-ecb3-68a0-1c51f68fd52f@gmail.com>
Date:   Tue, 1 Nov 2022 14:40:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [patch] nice.2: replace "thread" with "process"
Content-Language: en-US
To:     "i@1a-insec.net" <i@1a-insec.net>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <0dbe239f-22ce-2b8b-59e1-eeece3a64a66@1a-insec.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0dbe239f-22ce-2b8b-59e1-eeece3a64a66@1a-insec.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4q51GykekudDxW3Gm2hcg55A"
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
--------------4q51GykekudDxW3Gm2hcg55A
Content-Type: multipart/mixed; boundary="------------MbQPga60Zs3TkJ0ESRH3qd00";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "i@1a-insec.net" <i@1a-insec.net>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org
Message-ID: <735fcef7-b09d-ecb3-68a0-1c51f68fd52f@gmail.com>
Subject: Re: [patch] nice.2: replace "thread" with "process"
References: <0dbe239f-22ce-2b8b-59e1-eeece3a64a66@1a-insec.net>
In-Reply-To: <0dbe239f-22ce-2b8b-59e1-eeece3a64a66@1a-insec.net>

--------------MbQPga60Zs3TkJ0ESRH3qd00
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCk9uIDExLzEvMjIgMDc6MTcsIGlAMWEtaW5zZWMubmV0IHdyb3RlOg0KPiBu
aWNlKDIpIGluIGdsaWJjIHVzZXMgYHNldHByaW9yaXR5KFBSSU9fUFJPQ0VTUywgeClgLiBJ
IHRoaW5rICJ0aHJlYWQiIG1lYW5zIA0KPiBwdGhyZWFkIG1vcmUsIHNvICJwcm9jZXNzIiBp
cyB0aGUgYmV0dGVyIHdvcmQgaGVyZS4NCg0KQ291bGQgeW91IHBsZWFzZSByZXNlbmQgdGhl
IHBhdGNoIGZvbGxvd2luZyB0aGVzZSBndWlkZWxpbmVzPzoNCg0KPGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L3RyZWUvQ09O
VFJJQlVUSU5HPg0KDQpUaGFua3MsDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFu
ZHJvLWNvbG9tYXIuZXMvPg0K

--------------MbQPga60Zs3TkJ0ESRH3qd00--

--------------4q51GykekudDxW3Gm2hcg55A
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNhIb0ACgkQnowa+77/
2zJkaA//VOW7wAjOfIuJkQnKQvHQOYg7iR8QqF081+4oPWNgH8huVia9TGaZUyJD
fRRoeTBZgTXuxC1xGj3CL4u5tjf+Am8SFm+JR/RV8H/9yWwW1nex4qjjcStubhTl
RTSN4UVGK3gkFQ2p9sAbyZSKm8IUyYOXUneyYLw5mkOAp/3bTUP+I0SAUv/KM3b8
HmMnMbP9JEj7Cmd3zHEmvPVnQlZ2P9aYKBlytXelJQ0l0m3MyXfBOz0dLRU4V0dw
jqNbpGOW3ZjjScfWEG2WNu2aWpM4HIjnGN05HjgAc8K5JwkP+v/tqXLCIW/9n3Ub
fKt9ylZVLrkRI32Kt5zNsHQp/ruf+3C6v2i0g6Qj4bHFuwX0ed6cjE7YKmIJi/Hq
I/lU5//f298cAoRLIUm6PaT2Rvyymp4y/oFnxzqezbmxcn/+8Wnzxx3tmZpPmU10
Q2LeatWr1Bt9f3EjtIMuIlB8r5DRbWVxiAnaLxOnyudQIs3D7aO0tbOZvtaO42vR
fnxYAIWzizUmWhNn6tbGyoB45jtkftxx0vy6OAXwVHHaNjBaTVJI6yOAJ48QFoDV
pOYFOa/IpvEUPtNR0Md4EPrF6c6XCcCXNUFFupvSyoJqktCnlqD2Oa/M8vGHc6es
+Ppneu86ohZCAkOh5kV2tLkbxi02lwtgx+bKv6kOZQrn4HpWtFI=
=mLiP
-----END PGP SIGNATURE-----

--------------4q51GykekudDxW3Gm2hcg55A--
