Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86D3D565170
	for <lists+linux-man@lfdr.de>; Mon,  4 Jul 2022 11:55:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233444AbiGDJzV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jul 2022 05:55:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230136AbiGDJzU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jul 2022 05:55:20 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7AB2DEC9
        for <linux-man@vger.kernel.org>; Mon,  4 Jul 2022 02:55:18 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id k129so5089069wme.0
        for <linux-man@vger.kernel.org>; Mon, 04 Jul 2022 02:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Oy69ldP6bT643gAJRJBsNwcB9Gjc5liAhU+3tGd4J/4=;
        b=o2/dK6JAgbth4SoIwH6J2iltTPIGT5s3tI0hZHJ+OrXg9H3fHL0c3qVfgyId/h+omo
         UH73Tps3AiA1y8zTq5hsyI5lk9O9GH7U9LgJqER0AwNRACCZul3DBZe6L7Q8beqXOTNN
         8NV6dEZZ2rMuQcuOUDbqodiWguQ1CdgDAyGn4leGcvO/rT/PWdIHOU5Mvm0duTCSx3PE
         td4EfnfWda8t9KoZqLZvefr5rpnl+Z2n6sTapQFZMQZxD7Pe3smjhgZbyonC5mex1xNx
         +mRYB97SSwbOJd2QwSZwJ9rPXuQREBnwM6KIxTavYso91Iq4Ba4PqpBDB27pJ9YDL5Sl
         JKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Oy69ldP6bT643gAJRJBsNwcB9Gjc5liAhU+3tGd4J/4=;
        b=SRLz+LmpAHeIULkxYDVFhyWkaiTQaUfL9c1Z++PQ33oK4ytCBpt8ZH5a8Ssbk9SdSp
         9IIVi/rg36R5ev67EUOxmejxlShHJvhYDkqgycaGMcXcDYV7HR+i5dJuKOn9EADe6SG6
         /G+aO+pfFMg+Ml/n73q8CtkknONgHWNPwpuF0iWyFffFlo8kxBYbgQJQ2axEr+7D4olR
         QxggrFeWcilahVXQM6l35Nr2SFV999Dm9dKNyTGddnMyzFV/0DdgWotig9+AU2VU4iJC
         WqK4SMhfzKifNvDHEE2eHRb84F6T53O+FWXIplcxXkJNuhrCbwryv2eTr3U4K0n9+pO8
         tYyA==
X-Gm-Message-State: AJIora+vFk0v51mFIzs4J1gSMWCLIXPnH0y6eezoySbi9Ffr94YO9/nJ
        Kd196ESRnI9i54wRzNErZmVg4lG5kHY=
X-Google-Smtp-Source: AGRyM1vLB1YADIIhc7E03NEWICvAlgoE0KdzhN5wC5VuR2yj6FBfcGbs1l/xGjQ3uTp6if4MqR3cKw==
X-Received: by 2002:a05:600c:22d8:b0:3a0:4092:caff with SMTP id 24-20020a05600c22d800b003a04092caffmr32608850wmg.59.1656928517164;
        Mon, 04 Jul 2022 02:55:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bn24-20020a056000061800b0020fe35aec4bsm28910406wrb.70.2022.07.04.02.55.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 02:55:16 -0700 (PDT)
Message-ID: <f1d806ac-0e12-1cb1-82ca-d211df1d45f8@gmail.com>
Date:   Mon, 4 Jul 2022 11:55:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 1/2] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_TARGET_FID
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20220630190610.3043428-1-amir73il@gmail.com>
 <20220630190610.3043428-2-amir73il@gmail.com>
 <f8c3ecab-1c8e-c3f1-05a5-ffd4d30996d6@gmail.com>
 <CAOQ4uxjMDq9nb0hBSV_Fbf190GdwLfTd2+erY9+KTnw4NmBo7Q@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAOQ4uxjMDq9nb0hBSV_Fbf190GdwLfTd2+erY9+KTnw4NmBo7Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OJbtM2qzjKTlqVGIhPrzuacJ"
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
--------------OJbtM2qzjKTlqVGIhPrzuacJ
Content-Type: multipart/mixed; boundary="------------WoPaQCzXkbIRgeHDQTXqVGIA";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>, linux-man <linux-man@vger.kernel.org>
Message-ID: <f1d806ac-0e12-1cb1-82ca-d211df1d45f8@gmail.com>
Subject: Re: [PATCH v3 1/2] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_TARGET_FID
References: <20220630190610.3043428-1-amir73il@gmail.com>
 <20220630190610.3043428-2-amir73il@gmail.com>
 <f8c3ecab-1c8e-c3f1-05a5-ffd4d30996d6@gmail.com>
 <CAOQ4uxjMDq9nb0hBSV_Fbf190GdwLfTd2+erY9+KTnw4NmBo7Q@mail.gmail.com>
In-Reply-To: <CAOQ4uxjMDq9nb0hBSV_Fbf190GdwLfTd2+erY9+KTnw4NmBo7Q@mail.gmail.com>

--------------WoPaQCzXkbIRgeHDQTXqVGIA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW1pciwNCg0KT24gNy80LzIyIDA5OjI3LCBBbWlyIEdvbGRzdGVpbiB3cm90ZToNCj4g
SGkgQWxleCwNCj4NClsuLi5dDQoNCj4gaWYgeW91IGNhbiBtYWtlIHRoYXQgc21hbGwgZml4
IG9uIGNvbW1pdCB0aGF0IHdvdWxkIGJlIGdyZWF0Lg0KDQpTdXJlLCBwYXRjaCBzZXQgYXBw
bGllZCENCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------WoPaQCzXkbIRgeHDQTXqVGIA--

--------------OJbtM2qzjKTlqVGIhPrzuacJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLCuPUACgkQnowa+77/
2zJM4A//drPPZK0U3eksEszS+cC9HxBxIXagtBMwLYgOj/TBCq1cGR3SysnHfLrW
Imi58w5J6ek9pw2VBTA79EsIKTXE0iGw9/kjPY+PY+jWs3QROuWfzvMRkdEEcBix
2M901trEunLA41y2hOvrNyhUSCb1sW51WIcDTtXuDV39MbmohNGglLsDvRoepiT6
B9iIbtgiU5J9SVlk5YihEupgdS0glhVUfjUaUVIolTE6C7g3mL3jYxHjo2SL0KPx
kcIRECMwK35ISWi5xwMjs3UhuyGNV5QN/b7VKusfBe2RTxqDl4PBeGc34IcSrUYj
vw1LWMcocfgvR1yotW/zGooACN0rYowIjm6/A4gtXQp3KA9ehM1a9wMm8XIka8pQ
+2piSql0mndSrOmct+WL6LoNv23m4zZqWry9FyAII8Pmsnln24pvM/XC6JBb2grV
VviYTy/ceqBCJm1t+NhRpYuFuigU2lgYpJsSIJoEHVvwI19FT7smGwdWe9tVPp0D
G8ZfayXG7gSE+mJOMqXZZbnDwxfTAtDC9hHgC7EQhYI0GnQ/32ZS/b7M1HPEYfgI
CYUtG/D7l6D9xUBWc8tqr2NTBJAa4uyu4y87hTzRQznTpaNC7F7s1zfdDnhDp4lJ
rhFaKslWD1V4/C+IWzZGFhl8qLj+BOzZRIuQuXvqtso6k/PNTRI=
=4+mw
-----END PGP SIGNATURE-----

--------------OJbtM2qzjKTlqVGIhPrzuacJ--
