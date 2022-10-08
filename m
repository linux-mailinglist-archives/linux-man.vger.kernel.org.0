Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B39945F8174
	for <lists+linux-man@lfdr.de>; Sat,  8 Oct 2022 02:13:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbiJHANT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Oct 2022 20:13:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbiJHANS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Oct 2022 20:13:18 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 249A8BBE1C
        for <linux-man@vger.kernel.org>; Fri,  7 Oct 2022 17:13:17 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id n12so9324362wrp.10
        for <linux-man@vger.kernel.org>; Fri, 07 Oct 2022 17:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SI41KpKTjJ9ls81MqBt4vk95s/Jjiu+HQpE2WcpHKmc=;
        b=Tpd2N0xvxgaqwziiBqcajWyqeqOhwqdDVYceFGsUD7essYACQ7MITJdXT33p+jbVYI
         hj7KqxQg4jBcRbZ9B/Ne0EIn5WKDx7vbXQMqqhbH51uAjhKe2f8+J6Yv379E46vHf8BC
         e7Rls7FCo/nCv9zo8rWazhIH+gHqEG6GxU/P/hSXqzsNQOk7AK/+eIjaRNXck9/Mts3c
         O51UQv/1WR9DqMLtZ6eojkDgu+n4Epz0p8yq0i9qrYrSpCOLjjLtDGzVfJxOjVQObNSW
         X29HE3dFxDfjpnkuwNTsY0lR7m82j0ar+I1320JYRRi5bx24xmPvEi1sZxabD4tHDbeL
         xphA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SI41KpKTjJ9ls81MqBt4vk95s/Jjiu+HQpE2WcpHKmc=;
        b=Xi20AH+CeYxRBaUnhOIhJOIhySG9DfBqSz6f5G/cFh8vfAGJmjH1RcqKdeOzgkvz5e
         RqPFYVcOjZpc2noB0T+c5lxP0KBqBngUCdV6FZMUAo6R30Is+oRktuDQQFoCtOdI2kgr
         b22oQsp/civFw+Bcp7grjDNNjgPt1hktmLfT0GXbXPrgNrgf3Cbi8/UvCdLyhiPu4rt5
         PQMVrM69swIhf9V0szqIJlfUMkjlTb6TO+7CC9uqbBXGyHmhIQQ63xbQZsvKgWUPVyTH
         lXdrnlREqRvvdyCGwsPRBpXP59ZBQZbjsisv3mtN0NAr+n7KghmkNFaQS5HqjhVm77v8
         5MkA==
X-Gm-Message-State: ACrzQf1+9b2+oSFPb/0IzyfUQigzvh+eQFSA88pqaubfQgGKsTb+A8mH
        7mp+b0VrtfPUV/m/UscLZhqKl2MZThk=
X-Google-Smtp-Source: AMsMyM6uDisO9bR4mkQqqAgPsqcYpRZVNtUNV++kYqCNF4IVPRhuaYFMsxXxumvPVJaharcPv6EiTA==
X-Received: by 2002:a5d:59a8:0:b0:22e:d6ff:3a7c with SMTP id p8-20020a5d59a8000000b0022ed6ff3a7cmr2774456wrr.128.1665187995560;
        Fri, 07 Oct 2022 17:13:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n22-20020a05600c4f9600b003b341a2cfadsm3888174wmq.17.2022.10.07.17.13.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 17:13:14 -0700 (PDT)
Message-ID: <d9f6ae19-33e0-6d71-8f16-6505cdb2afd2@gmail.com>
Date:   Sat, 8 Oct 2022 02:12:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] unix.7: fix section reference wrt length
Content-Language: en-US
To:     Mike Frysinger <vapier@gentoo.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220927074132.16007-1-vapier@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220927074132.16007-1-vapier@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yewKwOSrTGXdBllhkvU3E4Wi"
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yewKwOSrTGXdBllhkvU3E4Wi
Content-Type: multipart/mixed; boundary="------------6xYCdjKyOHNvueeF7u0OWQHe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mike Frysinger <vapier@gentoo.org>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <d9f6ae19-33e0-6d71-8f16-6505cdb2afd2@gmail.com>
Subject: Re: [PATCH] unix.7: fix section reference wrt length
References: <20220927074132.16007-1-vapier@gentoo.org>
In-Reply-To: <20220927074132.16007-1-vapier@gentoo.org>

--------------6xYCdjKyOHNvueeF7u0OWQHe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlrZSENCg0KT24gOS8yNy8yMiAwOTo0MSwgTWlrZSBGcnlzaW5nZXIgd3JvdGU6DQo+
IEZyb206IE1pa2UgRnJ5c2luZ2VyIDx2YXBpZXJAY2hyb21pdW0ub3JnPg0KPiANCj4gVGhl
IGRlc2NyaXB0aW9uIG9mIExpbnV4IHBhdGggbGVuZ3RoIGhhbmRsaW5nIGhhcyBhbHdheXMg
YmVlbiBpbiB0aGUNCj4gQlVHUyBzZWN0aW9uLiAgVGhlIGNvbW1pdCB0aGF0IGFkZGVkIHRo
aXMgc2VlLWFsc28gbm90ZSBpbmNvcnJlY3RseQ0KPiByZWZlcnJlZCB0byB0aGUgTk9URVMg
c2VjdGlvbiBpbnN0ZWFkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWlrZSBGcnlzaW5nZXIg
PHZhcGllckBnZW50b28ub3JnPg0KDQpUaGFua3MgZm9yIHRoZSBwYXRjaC4gIEkndmUgYXBw
bGllZCBpdC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuNy91bml4Ljcg
fCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy91bml4LjcgYi9tYW43L3VuaXguNw0KPiBp
bmRleCBmNDRmZmJlMzA5NGMuLjY5M2MzMzliMjQ0YyAxMDA2NDQNCj4gLS0tIGEvbWFuNy91
bml4LjcNCj4gKysrIGIvbWFuNy91bml4LjcNCj4gQEAgLTc1LDcgKzc1LDcgQEAgZmllbGQg
YWx3YXlzIGNvbnRhaW5zDQo+ICAgLkJSIEFGX1VOSVggLg0KPiAgIE9uIExpbnV4LA0KPiAg
IC5JIHN1bl9wYXRoDQo+IC1pcyAxMDggYnl0ZXMgaW4gc2l6ZTsgc2VlIGFsc28gTk9URVMs
IGJlbG93Lg0KPiAraXMgMTA4IGJ5dGVzIGluIHNpemU7IHNlZSBhbHNvIEJVR1MsIGJlbG93
Lg0KPiAgIC5QUA0KPiAgIFZhcmlvdXMgc3lzdGVtcyBjYWxscyAoZm9yIGV4YW1wbGUsDQo+
ICAgLkJSIGJpbmQgKDIpLA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFy
LmVzLz4NCg==

--------------6xYCdjKyOHNvueeF7u0OWQHe--

--------------yewKwOSrTGXdBllhkvU3E4Wi
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNAwIwACgkQnowa+77/
2zIhMRAAn8tGPjuv74HSd0L5ENnwoGzSUOj4OLbTyhAU17Y4btSdoT906EDSj9DO
WEAAj0ofAwAUueFi97r2VEdAUVCVjYSGrpKgmcx3hOQdPUdv5wG4NVvfBwWooPv1
El/GcqKSMb9/DvSO8L8PiY4HLjWzp1gYGpMVa7UCOeuuCVFCIiKRGHyNYLJobn0P
U19VX0/tlKHeActEGnR+hC663uWQW3yzHWO7gKQH+ENW5stMoufNC0awmJY6rmNV
DgutcoMAaeLu3t0u4D4+Hr5nY7pmwrLIDTgntMqVEP404nLDTPHghyxmzgzcxJ6O
jFYvui9KWTotmCgkBhoLxysVUjXGRuvZO1ZGPEEi1/JQgbriNGhD+zauGS8pjdKU
XJDDX8mNz17JxZJoeFB1fETbw+gKU3xR8K5OLdUAmI8Y4sAjE5q0ulR5OXmLfjst
jjbi9RRRipoQeZI7udN7QgQTose09qWwqKIbt5R505oZrFtmCZyv27NbsLASUUjq
M4QkgX+/FI1FkfQMQG5s65+0Y+RksPxcokUK+A89S81ytPwUKrvF5TZ59dJYNzWG
cP7c85ToMgvy9ohEWnT2196qYAs6zw9QzKEnFJs1ZGHRcXVPHmai/SMYl3btCQ5T
TyUAohDEZF7UmRcI4BpJ7CKK8jf5dmmwnSGrvSVa8IeGM7pZhFs=
=Y2uM
-----END PGP SIGNATURE-----

--------------yewKwOSrTGXdBllhkvU3E4Wi--
