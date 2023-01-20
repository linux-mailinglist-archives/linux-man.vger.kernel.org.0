Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 769046747DD
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 01:12:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbjATAMT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 19:12:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjATAMS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 19:12:18 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADE1CA25AD
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 16:12:17 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so4796129wmb.0
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 16:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uZKoPPL9zAPawaK+nqjsIeOhLRDPwflbj1nr02WLMFk=;
        b=Z4L5zBa2s5z2LQCCc1SZfzO7EaOJsFy8uhL5N3Y5UiZ3MBvuWhlgN9ZWj5q3udrrGQ
         haxeVizIGxd+AicXeEh8h18+7YtiCyBkNCy/3qmEg9uyvP+Awg/+ekhRIl0NmVeWWNiK
         F20o/Bp5KHiDmskpvjyqI7zY2c2GBETff3O1r/2j5MT0vNUpjPhrNZQtpWzy1kG8PPXc
         oHb1Q9FctbPh5zfupVSgHl4m0twzeVzymEuo24MaOXi4KoRVASsmJLA8O3ROa/OICXYo
         Z7iVk5LH8KyhVcj2a3MEQghMkl8ZbYnDrsNk14UCXbaTAoWJNNilbNxAG6RjyXPQl2bA
         eKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uZKoPPL9zAPawaK+nqjsIeOhLRDPwflbj1nr02WLMFk=;
        b=XWCBDLrS9zeGEsRKndhATMz/mC8lS1bNIEwhYlH/4+qFbK85R9sO5SYh2N5YFdCIVA
         vQ9XIFDMPwbMu8xlJzNtDjeptPvWveEZGasWgaZ0vyIT+EVzp4ucw7NoAJh1zJhXL2eY
         A90SF28ukiJQoJpGCWr4NSoNpkycSeIG+mxRWJFkLRcnpcNZGRd3iRdohvwMlyXlSHaa
         aFgP0CEK4Y8jcKWxu+JNOBw9R6FLueinFPTxjlzyFFqturRRTIimN6BvVeKUDhkIVOKC
         szKi9ewZslCRa/rnbEVlN7pgetcz/q3m0tEejgq7pSF3lNENMlM1BMb2L02Rgj3tOdZ3
         gHCA==
X-Gm-Message-State: AFqh2kruoltEPZ5NRY+uwwKoydb8NP4sOD0VgcFf5B81cXDsGPjzAlFB
        8JbK2n4yDKuVNrY48gQ5JNU=
X-Google-Smtp-Source: AMrXdXs09dCPxSJIX51u4OXrKmdLSQ1feT+f534wOabfDZMGWBQo1TRHe862XWKVfBDZ1CkPA+yB8Q==
X-Received: by 2002:a05:600c:4e50:b0:3da:4e:8dfe with SMTP id e16-20020a05600c4e5000b003da004e8dfemr11836402wmq.38.1674173536114;
        Thu, 19 Jan 2023 16:12:16 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k10-20020a05600c1c8a00b003db2dbbd710sm643299wms.25.2023.01.19.16.12.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 16:12:15 -0800 (PST)
Message-ID: <9dc0c245-b92e-d90e-fdfc-b266d9e5a83e@gmail.com>
Date:   Fri, 20 Jan 2023 01:12:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <2889739.XEG2VLDMQ1@portable-bastien>
 <3299211.1eNo6cvScQ@portable-bastien>
 <b709c21f-2553-8679-fde9-49d7400ca4ca@gmail.com>
 <18201055.pzcD54PWfD@portable-bastien>
 <528e35f3-ee79-52e0-be5b-ea5572cf3d07@gmail.com>
In-Reply-To: <528e35f3-ee79-52e0-be5b-ea5572cf3d07@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Bb80U8Zy4OBq2mwZGc0qxWtF"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Bb80U8Zy4OBq2mwZGc0qxWtF
Content-Type: multipart/mixed; boundary="------------ttV8t5hBMnJ0sgINCL0IKcXv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <9dc0c245-b92e-d90e-fdfc-b266d9e5a83e@gmail.com>
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
References: <2889739.XEG2VLDMQ1@portable-bastien>
 <3299211.1eNo6cvScQ@portable-bastien>
 <b709c21f-2553-8679-fde9-49d7400ca4ca@gmail.com>
 <18201055.pzcD54PWfD@portable-bastien>
 <528e35f3-ee79-52e0-be5b-ea5572cf3d07@gmail.com>
In-Reply-To: <528e35f3-ee79-52e0-be5b-ea5572cf3d07@gmail.com>

--------------ttV8t5hBMnJ0sgINCL0IKcXv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

V2hpbGUgaW1wbGVtZW50aW5nIHRoaXMsIEknbSBoYXZpbmcgc29tZSBkb3VidHMgYWJvdXQg
c3RyaWN0IGFsaWFzaW5nIHJ1bGVzIGFuZCANCmZ1bmN0aW9uIGJvdW5kYXJpZXMuICBZb3Ug
bWF5IGJlIGFibGUgdG8gYW5zd2VyIHRoaXMgcXVlc3Rpb24gdGhhdCBJIGp1c3QgcG9zdGVk
Og0KDQo8aHR0cHM6Ly9zb2Z0d2FyZS5jb2RpZGFjdC5jb20vcG9zdHMvMjg3NzQ4Pg0KDQpD
aGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------ttV8t5hBMnJ0sgINCL0IKcXv--

--------------Bb80U8Zy4OBq2mwZGc0qxWtF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPJ3FIACgkQnowa+77/
2zJV7RAAiNFddXFqLHpZD6z1A9FAlRxbK71RyrWc1DXTYD3SAd4uYyBw6eulh5SQ
QUW0K1XTwsh0FZv7RWoMWTY+GtdYVSk8q+0OougmW0qcTBvZzu3lYYAgIs+04pMj
dScEFi3Aq4KXrb2kO3w0g8N6wWZoKRHQjwbHroPjXbrMGr3Sv8KetW4zpmgWnLCV
OOvFvQ1npteA1L2VGKUIctJwRmxnQcNlkaCtrQ2Bb2tgAzZXrwnKD53OecI6TQPq
AAkXEJL8V7XJDOeK5lLj9YgfD9Z52X2Ad0yr1zg8ZMOucfoMy5A7TeeuU5o6xRls
dHNgAuzdkgICpMcujJR6lrCqi/nUlheg/wCkB/J2gApxJ2IQ8D3Bz+UJiX+AfgqW
WwEAvT9jGYaoGu+R/na6XXzYDcdVFKyAEVOchQQNX8V9AOnMGQUZw1jj7WsTfI5b
PjIZ39JhUYjQ/UAmdzBGfqrZ4KVxTfdYHj/e2bArEFHH+hy+VwLk3wWoOJ+AUYJB
vWdP2GytD/Z8EzxRYmVq0bV3bZMD4cL6owrHaGUxcsu2LAzvamuQIUKizYkA3XEv
5iyQ2fChNZuY3Y94tRzjzwdJH4JBUovqhbHAdPbnRkkhU6xcI6FnmSiMfbron914
fg81YlgOLyiOzCCxsHzTiDFXERN+dUHEReAPp7gNI+qOnaxAqw8=
=xUq1
-----END PGP SIGNATURE-----

--------------Bb80U8Zy4OBq2mwZGc0qxWtF--
