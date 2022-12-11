Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9D04649484
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 14:50:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbiLKNuX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 08:50:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbiLKNuW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 08:50:22 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26FC4AE5C
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 05:50:21 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id ja4-20020a05600c556400b003cf6e77f89cso8148948wmb.0
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 05:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xfQSmWkciStnqD+f1TRKLi4XLtOg+/ghwr30aBOX2Hs=;
        b=W1JQWRoB/h9Yh4R/Gsz6kTRMJo2MOUCY+mJnRb776EPxCBazrDxMOxVZ6z5Lv7JkyZ
         p3QXd+kZfOpvtdrKxAlRj1xOEtq75HFDlIDf1LXIEwMksSFQY5EoWJo/2/hppdMJvtlP
         parqiVm7qXRE8LL5IsF1l/keP8XA6watuvkbqPRoiitCll+FFQeQ6eMjOG1Ve5SL545M
         753lXswIs/D54Rn5sUGCZNln/lBWADtGdJyNvrutQYa2g2Vyik+JizIJ79GXe91TmQ61
         SlgckwN2mQqB1F7bfNHubQQHSVXGHrCgqlbkK1ZlQdG6RwLlwxUVVdXwN1svL9avac7W
         vCWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xfQSmWkciStnqD+f1TRKLi4XLtOg+/ghwr30aBOX2Hs=;
        b=EIPy/d69tsk8lbg1DUu4Rbzx5xt9/UUcn04MGkDI+wiv7KB0VBP0K1tu4TUMHwFFTt
         bdxQyOE9MOQvL8ZFe5osXFsXMYvnCautZm9Fs01C6ypGKIvgPrkzL/P6vqOpzCeeWJGU
         n3K9uxsI0ufOWAi6bDvFWxpd/CTs19sOKZxqtPl2EU9LnM5UpU9fUE4Sv+Q9uBilkfWT
         22a6ohwnNixK5GMYxQusD3pBT4o+Rmix9hQ6iZxPDyjeyVbNdDzA9e2hz4ghVAVT5UxA
         8IwPgaggrEIWlbFr3WLF5ZcAS+dQIUP7hGbpO+iWzTadkP0nbjS3c0GtK/gMKWJkTXB1
         QA7Q==
X-Gm-Message-State: ANoB5pljdsuUv+Ohgj4LEYhKVVg7byznM0Kjwj+Tm7Ezs8xDpqBTK+F8
        sqVYIayi+YuAXN4WdQwl2JQ=
X-Google-Smtp-Source: AA0mqf4XMyUltie3agTGnvGhlR7jn7MaWPTtTm6HPxhK5PAWI+G4cYNAoWApfv0z7hShil54CWJl8g==
X-Received: by 2002:a05:600c:3b84:b0:3cf:8762:22c2 with SMTP id n4-20020a05600c3b8400b003cf876222c2mr10155562wms.38.1670766618697;
        Sun, 11 Dec 2022 05:50:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g23-20020a05600c4c9700b003cf4ec90938sm5732938wmp.21.2022.12.11.05.50.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 05:50:18 -0800 (PST)
Message-ID: <c167cd01-60ad-1637-51cb-15f52a597eb7@gmail.com>
Date:   Sun, 11 Dec 2022 14:50:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Manual pages about strings
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pJ1N8YZJfiPUboHovmEtdU3c"
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
--------------pJ1N8YZJfiPUboHovmEtdU3c
Content-Type: multipart/mixed; boundary="------------FnQ3zUORt22GjnVRlFt0V3Xd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <c167cd01-60ad-1637-51cb-15f52a597eb7@gmail.com>
Subject: Manual pages about strings

--------------FnQ3zUORt22GjnVRlFt0V3Xd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KWW91IHN1Z2dlc3RlZCByZWNlbnRseSBwYXRjaGluZyBzdHJpbmco
MykgYW5kIHNwbGl0dGluZyBpdCBpbnRvIHN0cmluZy5oKDNoZWFkKSANCmFuZCBzdHJpbmdz
LmgoM2hlYWQpICh3ZWxsLCB0aGUgZXhhY3QgbmFtZXMgYXJlIG5vdCBzdWdnZXN0ZWQgYnkg
eW91LCBidXQgSSANCmd1ZXNzIHdoYXQgd2Ugc2hvdWxkIGRvKS4NCg0KSSBhZ3JlZSB3aXRo
IHRoYXQsIGFzIEkgYWxyZWFkeSBzYWlkLCBzbyBwbGVhc2Ugc2VuZCBhIHBhdGNoLg0KDQpI
b3dldmVyLCBwbGVhc2UgaG9sZCBvbi4gIEknbSB3cml0aW5nIHNldmVyYWwgY2hhbmdlcyB0
byBzdHJpbmcgbWFudWFsIHBhZ2VzLCANCndoaWxlIEknbSBhbHNvIGFkZGluZyBhIG5ldyBt
YW51YWwgcGFnZSwgc3RyaW5nX2NvcHkoNyksIHdoaWNoIHdpbGwgY292ZXIgdGhlIA0Kb2J2
aW91cywgYW5kIHdpbGwgYWxzbyByZXN1bHQgaW4gcmV3cml0aW5nIG1vc3Qgb2YgdGhlIG90
aGVyIHJlbGF0ZWQgcGFnZXMuICBUbyANCm5vdCBtYWtlIHlvdXIgcGF0Y2ggaW5jb21wYXRp
YmxlLCBJIHN1Z2dlc3QgdGhhdCB5b3Ugd2FpdC4NCg0KQmVjYXVzZSBvZiB0aGVzZSBpbXBv
cnRhbnQgY2hhbmdlcywgSSdtIHdpdGhkcmF3aW5nIG9mIG15IHJlY2VudCBtZXNzYWdlIHNh
eWluZyANCnRoYXQgSSB3b3VsZCByZWxlYXNlIGFnYWluIHNvb24uICBFc3BlY2lhbGx5LCBz
aW5jZSB3ZSBjb25jbHVkZWQgdGhhdCB0aGUgYnVnIA0KcmVwb3J0IHRoYXQgbWFkZSBtZSBj
b25zaWRlciByZWxlYXNpbmcgYWdhaW4gaXMgbm90IGEgbWFuLXBhZ2VzIGJ1ZywgSSBzZWUg
bm8gDQp1cmdlbmN5IGluIHJlbGVhc2luZy4gIEV2ZXJ5dGhpbmcgZ29lcyBiYWNrIHRvIG15
IHBsYW4gb2YgYSAyLXllYXIgcmVsZWFzZSANCnNjaGVkdWxlLiAgOi0pDQoNCkNoZWVycywN
Cg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------FnQ3zUORt22GjnVRlFt0V3Xd--

--------------pJ1N8YZJfiPUboHovmEtdU3c
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOV4BEACgkQnowa+77/
2zLdjg/7BTf8qwDrP1aYcLM4QnsYzGKj6grliTQtBJQpL/Jn+n/Cv6cRRAHZDKz3
hyEYqyyeLU5YD/FYswPLdoYqmvtTxkgS0UpN0fewZLJzxEm+YNJ3zIPMxF2R11ct
bMJ5+0/skkqv3CLDBTlYk+9QqD5w3R17bjUj2PVNlH1Wrxe3NeKacZyDsXQMfCdv
Uo5PdbanVekUHbGWGIXQxLHqPl/UJlBd2Oq//2ikgXr5381Rzn88EFvRB8c6Kizp
wfwx6lwZiMm+0UAirzFxjrMj1V+5tm9DIhSDdRdVv6AFwyR8eYA8mVab1byQ1nlE
wprhDZCefBIrbnwbpZZo6P7GHIWKylQt2PyP0fUfaYtjT8MSGDH0SjMzO9qKUuYh
hV/wgZ/GizgBnhluLfq9lPy3W7LV5td3P6XnP9jVFH6UVi8PQYUJY5ZC5AqSr1gV
NR55+ZEHTsJl6xqLd8EzmCnTcf1MemZvUm6t3ISsi0vLGZmA3ZYnBwnVK1IXuIee
324iVbVzZeetDbM6TyUMQMy4KLyh0cwgRDMN//2spzfCF72qRcx/fWpVTCmTYrlW
vWrOuPAIWz8ZKKf3/SEcZN1PTgHu8aeF6BHwX7us/zNJH7BGB/vbkbHrdzJg+nAx
m5awnFEFFWSq+IV8l79AfoaU6fC47cFzO/DUo96cI/BnoS+zJlE=
=u5+p
-----END PGP SIGNATURE-----

--------------pJ1N8YZJfiPUboHovmEtdU3c--
