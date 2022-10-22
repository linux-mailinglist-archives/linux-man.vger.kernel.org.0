Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F319F608FCF
	for <lists+linux-man@lfdr.de>; Sat, 22 Oct 2022 23:45:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbiJVVpz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Oct 2022 17:45:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiJVVpy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Oct 2022 17:45:54 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB8BF6DAC9
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 14:45:52 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id r8-20020a1c4408000000b003c47d5fd475so7512000wma.3
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 14:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kcgd7iKDivegbgNRylB8nMg5MmFixKzjTGqo2D6s7SU=;
        b=VOnGv3BhGjxiHIAW/Jp8ezfVcBg3Rp2szFh45M+g8ixcmehY4+/xkzB/GN5RNmElH+
         uP8tpuTVWo7kupT6Hy5f+XAQM+wnL7SSvR0mqM071WsPqBoaqb/khg0/wuQk0rTx3rgJ
         JBQDLtyMWRYg4pG08+zzPAv4CXBabfS9xSLhJWLwEyCkDaXiTtd1c2ZCDnY1BWnFIX7d
         AMRXsS6yIvP/G25e90LHrdAAc3C5+UYRMBm5lXFgJvxC0DgvQlyghjB5ViZCkIWoJKOk
         gLCdHmxmEbzfM9Waik4ao6Di2hv1gnBoz6TiUFfR0UQ4OiXHOpE4XrtXYnjj/jU8HICx
         oRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kcgd7iKDivegbgNRylB8nMg5MmFixKzjTGqo2D6s7SU=;
        b=lZVz2ttuqzEgYsgv8P+FWCo5lwKRoAlVVrajxIr3Ayxw02mVUHzlow/LZL9M/rxlpX
         dTmg35Z0/45wzpTpiSr8dpjocYrB1vT7+JQUHOcGgObMnoaHMyPVrO9RbMJJ0C2KQ8fH
         Z1tklhOOjcb1SrrNoUXD0PiPVMqqllj8ySFff2NJ4jWT5fLacuA/3m9ppx+xg6oeGwGD
         xY02v0gP2+I3ix2M5AiBCWk0tmqGNIgBC/6NdIGzABjki0+1gQJfSjQ5NvEAEPVPS70Y
         IL3voBJlUpkWUtgLXU7WB+a7uS7a6oa8XV4xSXJFEc6A7+g9VJwCknztS/YFy7dj9YYn
         UhkA==
X-Gm-Message-State: ACrzQf2PgHhH68lB/QcLRDdVfKExVFhXyDNB9dHyth8yW7Ls6xt6uDYW
        OtGj/sYQGo/yy7rMQkmY6fZJM15dq4c=
X-Google-Smtp-Source: AMsMyM7chqeE76Ddb5ra7ZkX7EEr6krP0UZw7mWOW6RhuQHC5aSd3C56LISgcN6wLT+1Nkbi9kDBOQ==
X-Received: by 2002:a05:600c:3844:b0:3b4:becc:e43 with SMTP id s4-20020a05600c384400b003b4becc0e43mr38552910wmr.33.1666475151451;
        Sat, 22 Oct 2022 14:45:51 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l39-20020a05600c1d2700b003c6deb5c1edsm6670148wms.45.2022.10.22.14.45.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 14:45:50 -0700 (PDT)
Message-ID: <fc1a1d0f-8b4c-1127-5565-cccc40c00bae@gmail.com>
Date:   Sat, 22 Oct 2022 23:45:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] man-pages.7: add missing . before macro
Content-Language: en-US
To:     Mike Frysinger <vapier@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221022173623.11560-1-vapier@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221022173623.11560-1-vapier@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------afdtBY00tkwdNDJT9AgCQJP1"
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
--------------afdtBY00tkwdNDJT9AgCQJP1
Content-Type: multipart/mixed; boundary="------------BdfyQDGPTkPBBwwYDQnihW1O";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mike Frysinger <vapier@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <fc1a1d0f-8b4c-1127-5565-cccc40c00bae@gmail.com>
Subject: Re: [PATCH] man-pages.7: add missing . before macro
References: <20221022173623.11560-1-vapier@gentoo.org>
In-Reply-To: <20221022173623.11560-1-vapier@gentoo.org>

--------------BdfyQDGPTkPBBwwYDQnihW1O
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlrZSwNCg0KT24gMTAvMjIvMjIgMTk6MzYsIE1pa2UgRnJ5c2luZ2VyIHdyb3RlOg0K
PiBTaWduZWQtb2ZmLWJ5OiBNaWtlIEZyeXNpbmdlciA8dmFwaWVyQGdlbnRvby5vcmc+DQoN
ClBhdGNoIGFwcGxpZWQuDQoNClRoYW5rcyENCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1hbjcv
bWFuLXBhZ2VzLjcgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9tYW4tcGFnZXMuNyBi
L21hbjcvbWFuLXBhZ2VzLjcNCj4gaW5kZXggOGVkNWY2NmU1NGVhLi45NDE4MzJmMTUzMjkg
MTAwNjQ0DQo+IC0tLSBhL21hbjcvbWFuLXBhZ2VzLjcNCj4gKysrIGIvbWFuNy9tYW4tcGFn
ZXMuNw0KPiBAQCAtNzQ5LDcgKzc0OSw3IEBAIGFuZA0KPiAgIGZvcm1hdCB0aGVtIHVzaW5n
IHRoZQ0KPiAgIC5JIC5FWA0KPiAgIGFuZA0KPiAtLkkgRUUNCj4gKy5JIC5FRQ0KPiAgIG1h
Y3JvcywgYW5kIHN1cnJvdW5kIHRoZW0gd2l0aCBzdWl0YWJsZSBwYXJhZ3JhcGggbWFya2Vy
cyAoZWl0aGVyDQo+ICAgLkkgLlBQDQo+ICAgb3INCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQo=

--------------BdfyQDGPTkPBBwwYDQnihW1O--

--------------afdtBY00tkwdNDJT9AgCQJP1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNUZI0ACgkQnowa+77/
2zIo8BAAltmg5grsYQMaF8um9nXq3ncTvQXkzxLEjbigOiFqJ8F5LX1x7h1EsX8r
C8cUclnKy/Ydo2USWWn9qZ4hm+C8s1PPclkBKfz0WPO9FQFpVhHrWf+xBy+RjMjJ
Ptc6px2ss8UgShNASB8KQQpIzw/mw2aoUvXh9Q+w5AuC6BwqUv8zq2DMc6zHMa9n
S3P3mCk7/YkSqC4tN6XoOa51gDID1TkAS+s6aV7Sb3jYUCkFBtAidQANfJ+MDnNg
CWk4vwVQYxNJFuYqlv96VUh2cM4nVJlxOv2+Yf2jxjubQvwPMVWg3+gTmAThqbM4
XLWeGO5xzCZHL90e6cAl8Q+407eEgyjB47fZ7lZJc+w/ClhiQLlcMG2f9Li6N2Fe
C7N8UqLRRgD28eUEiVG7JOr0JJA/8CywBpauSm/ukyDwJ6/GhLJ2yGexQp52ydAM
H62xiMDWSDiXeL6+gUW7X5jk5eITBeZragI+5V7xANW1dWJ4T3K7cFPyevc4Gnfv
PW/KksadMNiBbYlwAFNCkx2WkCGfSOj5BeXLQJeB9dUL6myTl7egKLfyVJ3R3Zpr
I3KB6TKEbkijuCTNfLanB1wuqbHelWV2ok5zRC84G0bpF6cXaDOKTYb+VwVQ7PAS
9P5v+0plPyON0ruUsKszv5kz1DVWaDC81qqe2xMT+uGE05HejS8=
=7q+x
-----END PGP SIGNATURE-----

--------------afdtBY00tkwdNDJT9AgCQJP1--
