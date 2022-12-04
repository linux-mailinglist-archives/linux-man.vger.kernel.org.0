Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C863641F74
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:20:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230184AbiLDUUK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:20:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230038AbiLDUUJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:20:09 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 378EE10E9
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:20:05 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id j5-20020a05600c410500b003cfa9c0ea76so8530064wmi.3
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ddUTHA0y6cNIVGv5Ixd/1LsAp4+gUlND8XYRmJIg900=;
        b=M33aVvKbGBA9dVUfaUPWzqEPq+yAybXh1oPxmZOLZPhwkxlnIaTWnfOb5t86vB4zIs
         8REIjRSHPq+dAPZiJ/K5Cmwe0QcvQcvh1GcfiIH4HGpEprZoo9wddfhVlVVttvTqUq2I
         JXwKLQhwGWgXkn7ZCdVbE4Iz2BTjOhzbSbIIRDySr0xl5NuJRzeo/zheYnYtycCKVJN4
         Dw03JTV+vNhFBUT2QEQSZ/o0228sRe12EBwZ2Ta1phlIBPoeV95DboVLAZcjpP2k6cd4
         jyYiwS6mbM91Ap7VIwm3CcDjkJvWq/QHTpf62ESWvU3lIygnWnn1nybXEY75XvhaOhLO
         pRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ddUTHA0y6cNIVGv5Ixd/1LsAp4+gUlND8XYRmJIg900=;
        b=kkjl1Cfc49L+mo4r09Nc04jmh8kgNf49L+IOzohgZbNWXpZ4YMmjjzn6xxesr6GkPJ
         SUaIb6kqXGkDPmph5897AD3t6vfSorFL/r5lufGeg8JbTOvtorDNM8+Jcy3ud13Wl29F
         gUsPKH35UTTQldw6HeYhhkDo9okCGih+G2yjCl/N+sB/vV6TwuqS4D5GkGXDGohW8D/4
         WFCYmjijds5ebRCNkk/iMkeFcYE9eVvpo0ED9218zLp1T5zc8k9NNMWvmOgdBFi1Vy9D
         bvqDLtpi1VIUNNOaaIz3u/KCEXUayL+0gzCLtBlcoZX0LEYksKW1LHlqUSxH1G/BkInP
         efHw==
X-Gm-Message-State: ANoB5pnX+bJWtup8BZ6FfmTYg2cC0gvhdk/zHhQP42HpeE8Jur4CIipO
        c+joMdWb1Ox1eup8prsgs2s=
X-Google-Smtp-Source: AA0mqf48c5iiy150Iv/6mrb8bT/YfDvQO4KjPOF3s08o0zEcQHA939Ndd75JUX3j81jxB+wJ/fS6aQ==
X-Received: by 2002:a7b:cc87:0:b0:3d1:6ecd:65a1 with SMTP id p7-20020a7bcc87000000b003d16ecd65a1mr3012055wma.100.1670185203799;
        Sun, 04 Dec 2022 12:20:03 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d8-20020a05600c34c800b003cf4eac8e80sm19283292wmq.23.2022.12.04.12.20.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:20:03 -0800 (PST)
Message-ID: <d527cf65-0015-8deb-9855-8d693b3cae88@gmail.com>
Date:   Sun, 4 Dec 2022 21:20:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page user_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090720.GA1027@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090720.GA1027@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------l2c14ohzxV3IeXHiw34o4c4v"
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
--------------l2c14ohzxV3IeXHiw34o4c4v
Content-Type: multipart/mixed; boundary="------------fRrZ5jl0BPjZQZuUF6l885L9";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <d527cf65-0015-8deb-9855-8d693b3cae88@gmail.com>
Subject: Re: Issue in man page user_namespaces.7
References: <20221204090720.GA1027@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090720.GA1027@Debian-50-lenny-64-minimal>

--------------fRrZ5jl0BPjZQZuUF6l885L9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIFRleHQgbWlzc2luZz8gaW4gb3JkZXIgdG8gZHJvcCDihpIgaW4gb3JkZXIgdG8gZHJv
cCBwcml2aWxlZ2VzPw0KDQogRnJvbSB3aGF0IEkgcmVhZCwgSSB0aGluayBpdCB3YW50ZWQg
dG8gc2F5ICJkcm9wIGdyb3VwcyIuDQoNCkZpeGVkLiAgVGhhbmtzIQ0KDQpDaGVlcnMsDQoN
CkFsZXgNCg0KPiANCj4gIi8qIExpbnV4IDMuMTkgbWFkZSBhIGNoYW5nZSBpbiB0aGUgaGFu
ZGxpbmcgb2Ygc2V0Z3JvdXBzKDIpIGFuZCB0aGVcbiINCj4gIiAgIFxcKGFxZ2lkX21hcFxc
KGFxIGZpbGUgdG8gYWRkcmVzcyBhIHNlY3VyaXR5IGlzc3VlLiBUaGUgaXNzdWUgYWxsb3dl
ZFxuIg0KPiAiICAgKnVucHJpdmlsZWdlZCogdXNlcnMgdG8gZW1wbG95IHVzZXIgbmFtZXNw
YWNlcyBpbiBvcmRlciB0byBkcm9wXG4iDQo+ICIgICBUaGUgdXBzaG90IG9mIHRoZSAzLjE5
IGNoYW5nZXMgaXMgdGhhdCBpbiBvcmRlciB0byB1cGRhdGUgdGhlXG4iDQo+ICIgICBcXChh
cWdpZF9tYXBzXFwoYXEgZmlsZSwgdXNlIG9mIHRoZSBzZXRncm91cHMoKSBzeXN0ZW0gY2Fs
bCBpbiB0aGlzXG4iDQo+ICIgICB1c2VyIG5hbWVzcGFjZSBtdXN0IGZpcnN0IGJlIGRpc2Fi
bGVkIGJ5IHdyaXRpbmcgXCJkZW55XCIgdG8gb25lIG9mXG4iDQo+ICIgICB0aGUgL3Byb2Mv
UElEL3NldGdyb3VwcyBmaWxlcyBmb3IgdGhpcyBuYW1lc3BhY2UuICBUaGF0IGlzIHRoZVxu
Ig0KPiAiICAgcHVycG9zZSBvZiB0aGUgZm9sbG93aW5nIGZ1bmN0aW9uLiAqL1xuIg0KDQot
LSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------fRrZ5jl0BPjZQZuUF6l885L9--

--------------l2c14ohzxV3IeXHiw34o4c4v
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONAPIACgkQnowa+77/
2zJYIw//T7JDCFlK4CCCh4gXjPTx+GnS4wxzGEFRWaToCGyyq//AJFf0JtvEozOF
fthbUwfVfM23mqjTYnPGv/V4rqpCfP0QB9UuGwqU/QHruglzZSrvgC5xcjcNQKrJ
QTPSDliUirkAeoPqL3Ze7YrhOi8KBGLpKYYPjx/Ukc4nHbRIzIQjNl69VIJ16IBu
4g5OJew5/IrvUi0LjtkVw62Tc9wiy+TODxXvKZkCNfEKlK3DYXJEMEErnfaK2rKO
d/9CzseKyt1yZ6W7aq1wkcdEIQmkATWQdc1w6e5pJ3Sdj5K48uqJO72WmdKGNf8C
WsmF4M80HOhCR41n0qSfkSH94e6RIrH+sy8cf79JHafJsuI1WDXO/VMMUjrUNfGM
VsojJ57O7xwPK5czzx+EGPqbg59/bJuNHWn9Wy2IGee0bJeN/fGqMcojVv5gsy5q
mTy/t7974SFvw3/R9TXnWJdgI2pzsBq6paE3jkUgNP57hzyrj15EnBc+spYdklna
FlgNLVDysJ+Ih5s6Cl80iMbfy/g6aseS5Vgm24dX6+jucvSp2B8jC/HsHEGMT9GY
+/0ip+PkIyfAShnt2F1Rhakk9z1zj0vbZ5u+ZGCkfaUQad7JK7b4fuljkso6A6vj
TITt3QtFCgzlfA+DnYAeJlHbUaZ8HeqJNelLaulOkbIlNEmf/DM=
=JusQ
-----END PGP SIGNATURE-----

--------------l2c14ohzxV3IeXHiw34o4c4v--
