Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7600968D756
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 13:58:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231371AbjBGM6z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 07:58:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231809AbjBGM6y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 07:58:54 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EFB439B8B
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 04:58:50 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id y1so13479936wru.2
        for <linux-man@vger.kernel.org>; Tue, 07 Feb 2023 04:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Bp9gatkyTZV+sZlD44uSzs3boQVmmkXJnrSEUxU5wg=;
        b=oBQEEz3QlU5uriaBgD/BLTS/yhj4xjdbWc5fPdnVGjXsxNgIaz6l7/YCOIxodqTYiD
         XU/vdNLPbjnAlcJVcVGPG+9rZW/6+nqhO3pChxP7c9qe3HzsKAdMnXnFlI0RQiXcoO02
         0TOcRgTeRaa0iJbgCuktJ+ZXfEVvz6wg+3OPnrnLN36k70hGekQlQjayHAr6hLuvB9mr
         uFsWMWAn1MV8c+XjGpJmPv3cB/ZD3XEFayc16xw/igXOzhZjeTPWs2ieWhiMfMGHn/pO
         Z3M9uJVqpNsJXw5V5QRw2kGUXZ/uu6BzjSAc/F1heYiGJyNECOmEk1pQa30zl8dD6ECH
         Z+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6Bp9gatkyTZV+sZlD44uSzs3boQVmmkXJnrSEUxU5wg=;
        b=k+FQ9PEZzBqLK0bTduFu1P5gUozaNk2fe2ABsiI+jaxtHnXBxOqNlxDKASpP2qUVxM
         E1NfyzkPgqEgnNhErF67Er+TwuT4tL7I2EWtEZbG/pPS7/xH7Oj+McajbL+rt6I9ihc7
         6B580WVOv+ACXM/d7EYK+Ynn/iL5OSG3qN+V3d0c8zFXAgCp7VTRnuGn/DZNdEkit/Av
         0RRWSez9Pnz83NJX0TUWcH4S3tNJC8e61mSfgglm5Z6xOPpWBOcOXSE7rTU8bXVJOquZ
         bd8K1F5Rly8COMyBA3sqzy+5WkOmLZMN1XTHsquIU6BSmJTFhHkF+SYkvgk0MY9cC+4H
         M9hQ==
X-Gm-Message-State: AO0yUKV/9rueiITcK/thFFRln6kOxhG1AH6BypxHwbiHMz4K+asTe5/7
        0glduvXsLmheebdJucck+hM=
X-Google-Smtp-Source: AK7set97A8/AlV1CyMumQg2TXYr1yCkj8qMd41FfIbbZtziqLXfbXi+7XC/D8xIwyQbCjWZKUXl8qg==
X-Received: by 2002:a5d:510e:0:b0:2c3:f0ed:4beb with SMTP id s14-20020a5d510e000000b002c3f0ed4bebmr2668347wrt.70.1675774728724;
        Tue, 07 Feb 2023 04:58:48 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l10-20020a5d6d8a000000b002bfb5bda59asm11899482wrs.25.2023.02.07.04.58.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 04:58:48 -0800 (PST)
Message-ID: <dc630b03-6624-84b9-5c31-351f9671c9df@gmail.com>
Date:   Tue, 7 Feb 2023 13:58:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: man kcompactd missing
Content-Language: en-US
To:     ijaaskelainen@outlook.com, linux-man@vger.kernel.org
References: <GV1PR10MB6241C10CBC1414734F920FBAA3DB9@GV1PR10MB6241.EURPRD10.PROD.OUTLOOK.COM>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Muchun Song <muchun.song@linux.dev>,
        David Hildenbrand <david@redhat.com>,
        Kefeng Wang <wangkefeng.wang@huawei.com>,
        William Lam <william.lam@bytedance.com>,
        Punit Agrawal <punit.agrawal@bytedance.com>,
        Mel Gorman <mgorman@techsingularity.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <GV1PR10MB6241C10CBC1414734F920FBAA3DB9@GV1PR10MB6241.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------i2uSzSahRkMXGP6cMcV8uJiG"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------i2uSzSahRkMXGP6cMcV8uJiG
Content-Type: multipart/mixed; boundary="------------OOTFNzwmAyCq93O66iWweOXh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: ijaaskelainen@outlook.com, linux-man@vger.kernel.org
Cc: Andrew Morton <akpm@linux-foundation.org>,
 Muchun Song <muchun.song@linux.dev>, David Hildenbrand <david@redhat.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 William Lam <william.lam@bytedance.com>,
 Punit Agrawal <punit.agrawal@bytedance.com>,
 Mel Gorman <mgorman@techsingularity.net>
Message-ID: <dc630b03-6624-84b9-5c31-351f9671c9df@gmail.com>
Subject: Re: man kcompactd missing
References: <GV1PR10MB6241C10CBC1414734F920FBAA3DB9@GV1PR10MB6241.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <GV1PR10MB6241C10CBC1414734F920FBAA3DB9@GV1PR10MB6241.EURPRD10.PROD.OUTLOOK.COM>

--------------OOTFNzwmAyCq93O66iWweOXh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCk9uIDIvNy8yMyAwODoxNywgaWphYXNrZWxhaW5lbkBvdXRsb29rLmNvbSB3
cm90ZToNCj4gQ2FuIHlvdSBpbXBsZW1lbnQgaXQ/DQoNCkkndmUgQ0NlZCBzb21lIExpbnV4
IGRldmVsb3BlcnMgdGhhdCBhcHBlYXIgaW4gdGhlIGxhdGVzdCBjb21taXRzIHRoYXQgYXBw
ZWFyIGluIA0KYGdpdCBsb2cgLS1ncmVwIGtjb21wYWN0ZGAuICBUaGV5IHNob3VsZCBiZSBp
biBhIG11Y2ggYmV0dGVyIHBvc2l0aW9uIHRvIHdyaXRlIGEgDQptYW51YWwgcGFnZSBmb3Ig
aXQgaWYgdGhleSBjb25zaWRlciBpdCBhcHByb3ByaWF0ZS4gIEkgZGlkbid0IGV2ZW4ga25v
dyANCmtjb21wYWN0ZCBleGlzdGVkIHVudGlsIHlvdXIgZW1haWwgOikNCg0KQ2hlZXJzDQoN
CkFsZXgNCg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQ
RyBrZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFF
MjVCQjUNCg==

--------------OOTFNzwmAyCq93O66iWweOXh--

--------------i2uSzSahRkMXGP6cMcV8uJiG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPiSwYACgkQnowa+77/
2zLR0A//QR+pYvj4k7ZOxCnSP68SdOtNS+LIBiQIcATsBjFhlPcs1XUnAbqPSkUm
9naHSX6UbHBKyZMGjBxox5v7xzsNk+x1/9qqpkvxADawIptyqR92G5Lxg/uuYLdq
XXTpbdu34kfjm1NdAM4Ji3gn85z9x/a9+1XJEPm5XO0v9fNcfDvp7pNdu9gLSo+G
41s5RinztiW10bAMcPt6KFY7K3U0pPaMZIFW2p1YZZLGNK507hnuA/5wZcxk9I0E
R3+/6cHwMCyJFg5yoR/A5to4IOMspY5B0pAeaaWLeZq9VuYHTm7x+v7E1RKWOxxy
XtI+vvQwt6UzM38rJfFIr1rS/JS3A5aHOSVTxRh/GMMyJJYn4S2KTvj3RRCD+gr/
5BtHWYamqFkaCA0yoGV1HvoXjX8IFQbIY0Q1o44H8OGStJkyOI9g9H98/FJ/GT+I
lPFxTI/JaWyac84MFoqba2X81nsfrN872N7fDnclzCAspUf8uiVZ/3DkPo9+K6pC
wj7Kxfu4VF6fM6S3EiY9ZDpIy/274Scs99oxfqIPGZDvfqqEL4Ur+P0tZO+mmlPj
kC2jmF9pPLWGqHyeRYugYYk1M4D1PVEb1bdQx50vktsWG7TStguyNApXDfhb/GPP
x03eiWzUCvPHBrVF/fUWjXStTcJsGRWCOqzt26tK2GrytXJIpTU=
=qW0l
-----END PGP SIGNATURE-----

--------------i2uSzSahRkMXGP6cMcV8uJiG--
