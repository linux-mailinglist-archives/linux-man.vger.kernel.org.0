Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AABF595173
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 06:57:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233987AbiHPE5M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 00:57:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234211AbiHPE43 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 00:56:29 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D449ABBA75
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 13:51:25 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id m10-20020a05600c3b0a00b003a603fc3f81so483504wms.0
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 13:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=xMj2R9ph3fbJFDj8CXRdI+E6bfxEuYUHviwYQE/G0FY=;
        b=pRBXe3pz+SHzTJjm8YKIh7N9Yyr6X6l272WXUnJMSvluBNnsQzLQ6WBQyst3V2Tevs
         Vdg3Zd/4D2yDbCPQUlnZHNmOaf7aoP9wz9LHum/ba2HUP/k7s60wZtLMXhGxykHop2/1
         DKNLW6bXoZH5MZf6by3cZmiWYg5T2oKTZ/irOOUUUmnf6po7aUWIYYiQwzV5XjG3cg/d
         iAlKLSN9WkPnIxjHNX7idteJyz0LfS1KU3y0nL4V8AuSMg/7HfO5g0y6dskDLaARaPAu
         Kt3JgfcPUFp9bo2xj3IkFvD0jYTg71V1Ku8qhdBLvrG6AoM7FQxtPBvK89rqFh2RPkv6
         QZBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=xMj2R9ph3fbJFDj8CXRdI+E6bfxEuYUHviwYQE/G0FY=;
        b=eUefIrYzo/4qB1RvZzKnR537X5aK5yHWJ0jXpKAPqW/Hl3ixhhiFInfc7NK4Ik2vv0
         xHWJ7AWd0h20WqUN4+9s1I0DQQNUMs6P2s0fIHw4REsNvDXccbrI04eW2Y3753IoL15Z
         vge7Go0iSRWw5U4I3eYdASBiceKMwz0jQK4BfU/oA4nu79vWQZw3TqHGUI5aZ9VJg5vR
         8f7P06jxaHVsWS9SdWT42ER1Y2n1YoViGIPpK0GYUPHYAln9DbGCRCLo2zz1IAAU4bg9
         Kk+yrSCMcFRH4L8EsfuBZLYk2ses45VHUlOZosKvHjHgQjtzhJtCilFHlCsLX2ejZBVi
         IIvQ==
X-Gm-Message-State: ACgBeo2ARkAEQJl1MNEdLMCabZf78xfAix3nuMCUNNpx4p2ZQWYghxaw
        lG0G5mj9McTh9i0IkJ+DtU4=
X-Google-Smtp-Source: AA6agR5bjKnyeIy16rGoqsIehw69R6Kg8i8wNNn5/Q9oiFS50CKZocIPExeaYZPZhIxt0FPIVzHOoA==
X-Received: by 2002:a1c:3b46:0:b0:3a5:a92d:9e62 with SMTP id i67-20020a1c3b46000000b003a5a92d9e62mr10887503wma.175.1660596684371;
        Mon, 15 Aug 2022 13:51:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j36-20020a05600c1c2400b003a4c6e67f01sm11190798wms.6.2022.08.15.13.51.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 13:51:23 -0700 (PDT)
Message-ID: <2d743214-482f-eaf5-67b7-3319d0a5a936@gmail.com>
Date:   Mon, 15 Aug 2022 22:51:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: typo elf(5)
Content-Language: en-US
To:     Cedric Lucas <clucas@pnfsoftware.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
References: <CAE0C7aw5Vimcy9sqcgjg-aDY_hJ=kyY0RBAY+a8ibUnv_0yFmA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAE0C7aw5Vimcy9sqcgjg-aDY_hJ=kyY0RBAY+a8ibUnv_0yFmA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zu0JiaJfLGRWZp526pWBBRG0"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------zu0JiaJfLGRWZp526pWBBRG0
Content-Type: multipart/mixed; boundary="------------TKhGe09JYJaySfD3I90rDHwp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Cedric Lucas <clucas@pnfsoftware.com>, mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org, GNU C Library <libc-alpha@sourceware.org>
Message-ID: <2d743214-482f-eaf5-67b7-3319d0a5a936@gmail.com>
Subject: Re: typo elf(5)
References: <CAE0C7aw5Vimcy9sqcgjg-aDY_hJ=kyY0RBAY+a8ibUnv_0yFmA@mail.gmail.com>
In-Reply-To: <CAE0C7aw5Vimcy9sqcgjg-aDY_hJ=kyY0RBAY+a8ibUnv_0yFmA@mail.gmail.com>

--------------TKhGe09JYJaySfD3I90rDHwp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ2VkcmljLA0KDQpPbiA2LzEzLzIyIDE0OjU0LCBDZWRyaWMgTHVjYXMgd3JvdGU6DQo+
IEhpLA0KPiANCj4gaHR0cHM6Ly9tYW43Lm9yZy9saW51eC9tYW4tcGFnZXMvbWFuNS9lbGYu
NS5odG1sIA0KPiA8aHR0cHM6Ly9tYW43Lm9yZy9saW51eC9tYW4tcGFnZXMvbWFuNS9lbGYu
NS5odG1sPg0KPiANCj4gVGhlIGVudHJ5ICIuZ251LnZlcnNpb25fciIgc2hvdWxkIGJlIG9m
IHR5cGUgIlNIVF9HTlVfdmVybmVlZCIgaW5zdGVhZCANCj4gb2YgIlNIVF9HTlVfdmVyc3lt
Ig0KPiANCj4gc291cmNlOiANCj4gaHR0cHM6Ly9yZWZzcGVjcy5saW51eGZvdW5kYXRpb24u
b3JnL0xTQl8xLjMuMC9nTFNCL2dMU0Ivc3ltdmVycnFtdHMuaHRtbCA8aHR0cHM6Ly9yZWZz
cGVjcy5saW51eGZvdW5kYXRpb24ub3JnL0xTQl8xLjMuMC9nTFNCL2dMU0Ivc3ltdmVycnFt
dHMuaHRtbD4NCg0KV291bGQgeW91IG1pbmQgcGxlYXNlIHNlbmRpbmcgYSBwYXRjaD8NCg0K
VGhhbmtzLA0KDQpBbGV4DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiAtLSANCj4gQ2Vkcmlj
IEx1Y2FzDQo+IFNvZnR3YXJlIEVuZ2luZWVyIGF0IFBORiBTb2Z0d2FyZQ0KDQotLSANCkFs
ZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------TKhGe09JYJaySfD3I90rDHwp--

--------------zu0JiaJfLGRWZp526pWBBRG0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6scoACgkQnowa+77/
2zL4gQ//YftFGo36IDqOmz1SD0kKC894KfysRqsqqCAY3yQzHtTwVX4JXPuu1642
qfyUoB/4U+oZs8DPA7Qx5k0X3KOPA5ZhbWq2zvYDRwhEoukPusM/QJIaut+j4FqB
om66No/7yy1cdovs/lj049pAFKj6h/eJ1qgfZnaD/k9ikt7/I4NWvi7BBfdpu+Xj
DzgxH6aTf4QhjG6E+hdShYhSk0PlX6x7a+orCb46lpZlhPwI1XVH3BNTaTJ13K0d
lkyc3bMFp2BTs00GpVw3HahWL9kDUlTPz8DDCGBT6Azxq2AaF/oujF4ZEdeMskQn
+/wZ2wizSPmHA5FSxFJMRbOj6LT5LlWfr/YQo4lVIMnUVi7QPB938D45zuLiIrvO
/OMJ/L27ryV1Xu1PndTyeF97myfeupcSSxM3Vh85Ulr1VZhZ1RuOOKgH2Qex3Dlv
1Rk9AVNXGpO0TtsBEnKIOTj97QfzuDRFjr1m/6Hp3xQPFzQ4MWK1Ktz2hv7AYk4g
Gp5Mp83T/eoSkgEhEr7Sg2BpUjJs4+huKggKDJj6pkfwK338BcCcqzPBnOJZ4XCX
gOt9ytXMU4POWVkDTarUlcJo7rvSL/+b7wfEJKuNIqi04nwjV21eozcOUwsVHZKM
HcVKKeRdT20bKtwZIUhiAjDhFhhJ+9VnliMP8B0fL8N3WNcqthA=
=ilZ4
-----END PGP SIGNATURE-----

--------------zu0JiaJfLGRWZp526pWBBRG0--
