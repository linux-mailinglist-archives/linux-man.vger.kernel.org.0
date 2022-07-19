Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4C5357A20F
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 16:44:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239025AbiGSOoj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 10:44:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239777AbiGSOoI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 10:44:08 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C95A1FB
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 07:42:27 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id f24-20020a1cc918000000b003a30178c022so10072936wmb.3
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 07:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=MWi98P9i339BTJTOi7brNMk/8LqVNr19ZHeJcc/1PZ4=;
        b=gVNUBP/HcYbI/Ve9a6QPjQuHKLh5v3c3TEfHdalft6v0/90sqruE83IBTUWoRuZdbX
         0T+OnFEldZZEZ174qdZm8oSS9vK5O0IzN8PFhW7cSAN3jU9EZnSmohDa3gAKL2IZ79Hi
         XDLVUSkcJd5eB6CviY6xRwP68btxNytTdSI5dxREuwm8FdJ5wOVKcyI/u9C+DNfI+GsA
         M2sYB0ZKZvksMFAV5T0O+xAO8l6RQJMUrh3FVkjhL0rHrx/4zyrnCkpQg7SFMQEW+M4m
         eludiED6o6Vji07GV77k6W2Rqt1fLs9KP9LEVMi4ds0ONzBGbhiReyuT+/2NI0djykBS
         SLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=MWi98P9i339BTJTOi7brNMk/8LqVNr19ZHeJcc/1PZ4=;
        b=QU5pnTY/xAzHlFy5HXcjc2x3dGOlDIpkO+xEoFzdFIGLaLObKC+49SpnPoYrAlCzun
         p5NYRgLJ9mq/xP2y+vv/asnZ7HFBegoQio+lR9QPpLvh7kAFlZTlwjbOlbVlkIsT8g5i
         qscvMb+a5NsmyVtHyx4WS0Wd5tdbij4q96tV72HK0L3CmrPePAQsJEj05fFwXjZtKjTi
         NTi8cX3Pjip9czONEs24eSWvBrY3H1+nSsKhujFpMacCvYFV+u5k3VlizeisCOTRYzk3
         4/hJoLu1ViOhCc1kfL6RS6549GH58rh4LuMFoJlPe4shcwcZbJnW+od729WVuovAhcAJ
         JM3w==
X-Gm-Message-State: AJIora+XX2P6MTOWr1MmG9TZ+LfrMffzMql9vEExkV/hnkBKDGEOifAD
        j7EK4zagPNljxfY9POR6/Cg=
X-Google-Smtp-Source: AGRyM1u61bhb3zSLQLYTaXxh9tftUqdFGaEcQk4XYwUFjHPLSuiQlKiosFzH0W942j6esNKhDxnsWA==
X-Received: by 2002:a05:600c:3b24:b0:3a3:1fa6:77d with SMTP id m36-20020a05600c3b2400b003a31fa6077dmr6531722wms.3.1658241745677;
        Tue, 19 Jul 2022 07:42:25 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t4-20020a1c7704000000b003a308e9a192sm16572949wmi.30.2022.07.19.07.42.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 07:42:25 -0700 (PDT)
Message-ID: <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
Date:   Tue, 19 Jul 2022 16:42:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: Update bpf-helpers(7) man page
Content-Language: en-US
To:     Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Cc:     linux-man@vger.kernel.org, quentin@isovalent.com
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DaN9Wlq06XVe9pKozeQLEQjA"
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
--------------DaN9Wlq06XVe9pKozeQLEQjA
Content-Type: multipart/mixed; boundary="------------Oau8cCXt64k1b0b4GMv5Gc9h";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rumen Telbizov <rumen.telbizov@menlosecurity.com>
Cc: linux-man@vger.kernel.org, quentin@isovalent.com
Message-ID: <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
Subject: Re: Update bpf-helpers(7) man page
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
In-Reply-To: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>

--------------Oau8cCXt64k1b0b4GMv5Gc9h
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUnVtZW4sDQoNCk9uIDcvMTgvMjIgMTg6MzcsIFJ1bWVuIFRlbGJpem92IHdyb3RlOg0K
PiBIaSBNaWNoYWVsLCBldmVyeW9uZSwNCj4gDQo+IEkgd2FzIGRpcmVjdGVkIHRvIHlvdSBi
eSBRdWVudGluIE1vbm5ldCB3aXRoIHJlZ2FyZHMgdG8gYSBtaXNzaW5nDQo+IGZ1bmN0aW9u
IGluIHRoZSBicGYtaGVscGVycyg3KSBMaW51eCBtYW4gcGFnZS4gSSBmb3VuZCBvdXQgdGhh
dCB0aGUNCj4gbWFuIHBhZ2UgZG9lc24ndCBoYXZlIGFueXRoaW5nIHJlZ2FyZGluZyBicGZf
cmVkaXJlY3RfbmVpZ2goKS4gUXVlbnRpbg0KPiBtZW50aW9uZWQgdGhhdCBoZSBoYXMgYSBz
Y3JpcHQgd2hpY2ggZ2VuZXJhdGVzIHRoZSBtYW4gcGFnZSBmcm9tIHRoZQ0KPiBjb21tZW50
cyBpbiB0aGUgc291cmNlIGNvZGUsIGJ1dCB0aGVuIEkgYW0gbm90IHN1cmUgaG93IGFuZCB3
aGVuIHRoZQ0KPiBtYW4gcGFnZSBpcyBiZWluZyBnZW5lcmF0ZWQgc28gdGhhdCBpdCBnZXRz
IG91dCBvZiBkYXRlLiBUaGlzIGZ1bmN0aW9uDQo+IGRlZmluaXRlbHkgaGFzIGNvbW1lbnRz
L2RvY3VtZW50YXRpb24gaW4gdGhlIGNvZGUgYW5kIGl0IHdvcmtzDQo+IHByb3Blcmx5IGJ1
dCBpcyBtaXNzaW5nIGluIHRoZSBtYW4gcGFnZS4NCj4gDQo+IElzIHRoaXMgc29tZXRoaW5n
IHlvdSBjYW4gaGVscCB3aXRoPw0KDQpZZXMsIHRoZSBwYWdlIGlzIGdlbmVyYXRlZDoNCg0K
YWx4QGFzdXM1Nzc1On4vc3JjL2xpbnV4L21hbi1wYWdlcy9tYW4tcGFnZXMkIGNhdCBNQUlO
VEFJTkVSX05PVEVTDQpFeHRlcm5hbGx5IGdlbmVyYXRlZCBwYWdlcw0KPT09PT09PT09PT09
PT09PT09PT09PT09PT0NCg0KQSBmZXcgcGFnZXMgY29tZSBmcm9tIGV4dGVybmFsIHNvdXJj
ZXMuIEZpeGVzIHRvIHRoZSBwYWdlcyBzaG91bGQgcmVhbGx5DQpnbyB0byB0aGUgdXBzdHJl
YW0gc291cmNlLg0KDQp0emZpbGUoNSksIHpkdW1wKDgpLCBhbmQgemljKDgpIGNvbWUgZnJv
bSB0aGUgdHogcHJvamVjdA0KKGh0dHBzOi8vd3d3LmlhbmEub3JnL3RpbWUtem9uZXMpLg0K
DQpicGYtaGVscGVycyg3KSBpcyBhdXRvZ2VuZXJhdGVkIGZyb20gdGhlIGtlcm5lbCBzb3Vy
Y2VzIHVzaW5nIHNjcmlwdHMuDQpTZWUgbWFuLXBhZ2VzIGNvbW1pdCA1MzY2NmY2YzMwNDUx
Y2RlMDIyZjY1ZDM1YThkNDQ4ZjVhNzEzMmJhIGZvcg0KZGV0YWlscy4NCg0KDQoNCklmIFF1
ZW50aW4gaGFzIHRoZSBzY3JpcHQsIGhlIGNvdWxkIHNlbmQgaXQgdG8gbWUgYXMgYSBwYXRj
aCB0byB0aGUgDQptYW4tcGFnZXMgcmVwbywgc28gdGhhdCBpdCdzIGFkZGVkIHRvIG91ciBz
Y3JpcHRzLyBkaXJlY3RvcnkuICBJIGNhbiANCnJlZ2VuZXJhdGUgdGhlIHBhZ2Ugd2hlbmV2
ZXIgSSdtIHJlcXVlc3RlZCB0byBkbyBzbywgYnV0IEkndmUgbmV2ZXIgZG9uZSANCml0LCBz
byBJIG5lZWQgdGhlIHNjcmlwdCBhbmQgYSBzaW1wbGUgZXhwbGFuYXRpb24gdG8gdXNlIGl0
Lg0KDQoNClRoYW5rcywNCg0KQWxleA0KDQo+IA0KPiBUaGFuayB5b3UsDQo+IFJ1bWVuIFRl
bGJpem92DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------Oau8cCXt64k1b0b4GMv5Gc9h--

--------------DaN9Wlq06XVe9pKozeQLEQjA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLWwsgACgkQnowa+77/
2zI1sA//UEdCNyILmz9fij6bqUB4Ry00Z/PODfypG8EUKraHdpIxcFIBzZSNt9Vp
IW//Q+fr0iw1UaHGl8evLu3alcViRc1zZutXK/nTmcADFbS4SrBYmXkUPNtAlFOq
/OiCYb2J2rezXqQK0oGnQPdxmKs1MXn4dQ1Z70wTvybXe4UTN/TbX9LK6sLQnDl2
2sB3WNQTmm7Bb4/Tq8SNqhHQ0+JkB2Cj2nhbd1tVjJ2Tw6bOiU6niJy26nM1HGH5
msWZ7w0e/UMqKD9K1jdJp2Iz2rJdhlj/FWKGgs5fHtbB2i/hytqOtVBQsnules9L
8luJfQQXYWMYGlbpJKzhM3jiUggFkUjwMpGltsX7cc/ZZ0m0YJ8MDpQvKrUTCNNG
OaXjPWd9WB4vJKWFw7V1B6DMQYTulJ5fkZjGmK6In0j44osdKgBwp9VxbmNod+Zb
O6VESGR0sk5ExKJLwr9nacSz3pkF770JsLXjDN+ZM3208l2qq9XxEzzbY84bDEDD
3zypaseoXsXfZTsAPJ+to5SJfepZMwH7SNU1+N8BuKE3qbHkeY0EpvS5n02urGZG
/VBq1yqzJNmcWRsqiZMyNEIgiB0+lP14EoAITMAKcfCARo3KxI77o1jM75EIS38k
TQmXIenRTlALfFngrMHah2+jdSU0bjivx2R+57wafc5b41u0y3o=
=RqPb
-----END PGP SIGNATURE-----

--------------DaN9Wlq06XVe9pKozeQLEQjA--
