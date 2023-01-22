Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70274677236
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:08:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbjAVUIE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:08:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230026AbjAVUID (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:08:03 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C46FF76B
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:08:02 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso7172187wms.3
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fWESgv5Ax7NlX2MS9AZKr5q0he5LnGRuFN5v9jVkCtk=;
        b=mWrNkoWTBUklXvaVptndLQL0SPMK7MzT/b1Q+QXr7zfvdKvaDVgUL5XFBRJxaWTegX
         vGhPwVrCBSigCL4ARBpv1OWz5QiP8OrUQ0+Px12CEBxNafYVlN9CUCp8Ks2FG2u1R4IW
         YEAs61tLMlqq+XRvJ1eWrcSEt1Q9n7O+L1O+HJFnvfRKMV6Qy0UF8JSsLKR1VrEmmC6T
         6wANMN5xRJEvQ6ZDAuPG6rjGPHbswz8K8IX69S4xaiyxLCkO3ZgJkaAkUQ03gd9hN0gD
         dVMrNkx2zY80WBJabj4ytFCEZcYfPett9lWCqpZV2Q7Ru0JlYp2bbjoCsmYLHHYDxHtU
         RUbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fWESgv5Ax7NlX2MS9AZKr5q0he5LnGRuFN5v9jVkCtk=;
        b=MDdyl2VbsQJW2Hfl2ZaWhoCi4ujvSmOTEDwistWkpMASesm955tP7TW0tUjm1qCDbJ
         JltHlAwiGWT5htCb431KxRYUfLVce8Yk2BkIm6HwR+LRfMHvydAeKeX9qLfxDBVngmwQ
         4e2srmYoVBGJucYxNqx11zE6S30Xwr2ZLMgAK8oytoiO+38bZfSdhTBrjLu9vH22mYTX
         iabIjTLe60Lt2Z/oS91wYKk5k4GpZvBqnbsdEWY/rGrDbvDolgtHYqeZ3KJnSek+caM8
         VHJVxNtFhIxo3SbAYmFVegiNhJ3bru0g4i9pn9A+v4wpD982+SvmfRQsKmmQ4qUDtyEe
         rw1Q==
X-Gm-Message-State: AFqh2kpHODFR1FaidRbTUIVQd93Nko48TIuMAqm+bcxr1SOPJ8QRk9pz
        ozEbdAxezdfHKqZAn/vjLA9fC9aTDf0=
X-Google-Smtp-Source: AMrXdXu9SwtSb3YYLQvEc3qsuam3GFNkywggR6BA20L9AKgZXG3ACIxs7Nu7yVWNwli8GNWq55FA/A==
X-Received: by 2002:a05:600c:3c86:b0:3da:2a59:8a4f with SMTP id bg6-20020a05600c3c8600b003da2a598a4fmr21578030wmb.38.1674418081012;
        Sun, 22 Jan 2023 12:08:01 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p7-20020a05600c468700b003a3442f1229sm9292061wmo.29.2023.01.22.12.08.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 12:08:00 -0800 (PST)
Message-ID: <fc20e87a-bb2e-3821-ea0f-40d923163cdd@gmail.com>
Date:   Sun, 22 Jan 2023 21:07:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page motd.5
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193124.GA28740@Debian-50-lenny-64-minimal>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193124.GA28740@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------YdrfiVFcToVEm6tPgASsJs0s"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------YdrfiVFcToVEm6tPgASsJs0s
Content-Type: multipart/mixed; boundary="------------0wI0ILMDnuLk2uYYsoAC5W7Y";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <fc20e87a-bb2e-3821-ea0f-40d923163cdd@gmail.com>
Subject: Re: Issue in man page motd.5
References: <20230122193124.GA28740@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193124.GA28740@Debian-50-lenny-64-minimal>

--------------0wI0ILMDnuLk2uYYsoAC5W7Y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIEI8cGFtX21vdGQ+KDgpICBCPGxvZ2luPigxKSDihpIgQjxwYW1fbW90
ZD4oOCkgZnJvbSBCPGxvZ2luPigxKQ0KDQpTb3JyeSwgSSBjYW4ndCByZXByb2R1Y2UuICBU
aGUgY3VycmVudCB1cHN0cmVhbSBtYW51YWwgcGFnZSBoYXMgdGhlIGZvbGxvd2luZyANCnRl
eHQgKGlnbm9yaW5nIGZvcm1hdHRpbmcpOg0KDQoNCkRFU0NSSVBUSU9ODQogICAgICAgIFRo
ZSAgY29udGVudHMgb2YgL2V0Yy9tb3RkIGFyZSBkaXNwbGF5ZWQgYnkgbG9naW4oMSkgYWZ0
ZXIgYSBzdWNjZXNzZnVsDQogICAgICAgIGxvZ2luIGJ1dCBqdXN0IGJlZm9yZSBpdCBleGVj
dXRlcyB0aGUgbG9naW4gc2hlbGwuDQoNCiAgICAgICAgVGhlIGFiYnJldmlhdGlvbiAibW90
ZCIgc3RhbmRzIGZvciAibWVzc2FnZSBvZiB0aGUgZGF5IiwgYW5kIHRoaXMgIGZpbGUNCiAg
ICAgICAgaGFzICBiZWVuICB0cmFkaXRpb25hbGx5ICB1c2VkICBmb3IgZXhhY3RseSB0aGF0
IChpdCByZXF1aXJlcyBtdWNoIGxlc3MNCiAgICAgICAgZGlzayBzcGFjZSB0aGFuIG1haWwg
dG8gYWxsIHVzZXJzKS4NCg0KDQo+IA0KPiAiVGhlIGNvbnRlbnRzIG9mIEk8L2V0Yy9tb3Rk
PiBhcmUgZGlzcGxheWVkIGJ5IEI8cGFtX21vdGQ+KDgpICBCPGxvZ2luPigxKSINCj4gImFm
dGVyIGEgc3VjY2Vzc2Z1bCBsb2dpbiBidXQganVzdCBiZWZvcmUgaXQgZXhlY3V0ZXMgdGhl
IGxvZ2luIHNoZWxsLiINCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------0wI0ILMDnuLk2uYYsoAC5W7Y--

--------------YdrfiVFcToVEm6tPgASsJs0s
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNl5UACgkQnowa+77/
2zIJCQ/+Pq0xjFkL01QQxlgtmL2Hxi4dCm+u5yrNr1eENm19qZFaRds/uVLeueZf
CGdtLAujdtZjM2sL3NqqDEYtOuE8UcwRhXv/gxBAJn1SM9EkkSy1c73kCImwbaS2
/dIBQJv3+waO3ur1u9av5WECMvCN2cXk8ASCNT9iNUp1zL2OmSowYQlIeVx+kYdc
SWPZYZxcTrZWB/bUH4yJK5nfb2S6BPgmzGH9zKS1C5Oq1l3PNuc/dyDpvVW40JR7
5mWTM9tZCixfRjUkKPVKw9aF+7mM2/m+dVosT3dMN35Gq3hLb1XM/NZvKhztKV5a
6pUsmzKZCmBvBlbyDGRTxr5Yrb/nZ98MhOCwP8r/RAZnid97azRJDDaDtcfnkrNR
ulM+CIrXEvpvh/gkNehJ4ev24t6Ir2KPPUiZ4T5r3GQwNOBXLUddM5LFGvtCKZiK
9hjhd46L6YjnsXgrJGRh6GvGVdeAOLz7koiXaO7gqB10dvP+tvlokKOJF+Zbvsgf
4xihjtDAw0Bm7uzmMp+shfeBs0+jupIphtOvZqjDc+T8YS7D41CWukmLz6O1NrkE
oxo4BddZY2yL0hVwWZ254/QWqphS8tUw0tLK2mVAF0c+KZExhYXGVUfDN4GaBXy4
0SfUohi928tbqc3mhJjtxXwjb0aEkwPER+xL6LEWFaqdeh72SSs=
=ctiE
-----END PGP SIGNATURE-----

--------------YdrfiVFcToVEm6tPgASsJs0s--
