Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 754726496CE
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 23:40:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230400AbiLKWkK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 17:40:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230424AbiLKWkE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 17:40:04 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D79ECE2A
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 14:40:01 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id h8-20020a1c2108000000b003d1efd60b65so3780185wmh.0
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 14:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8O+BUzEOlPVFYsAILnpKlXg7Rnt8XOhPi9arBeTsc3I=;
        b=dMNyRjWv1D3s69ZwLGwLzfPUFGnYS0DwsaDEwO8WyBfKBBB8f31slqwK4Pxn3qhjuo
         ZkaDk/pcT17X9xo906r1NnSea+/OU7jaXTC3rXtMTP4ycvifODXBq0HLWjeHSmGQukCL
         FZBoILmPG/XLaKwuQ19ku042EcHkiFRSepS8dh3d58PxK+8vI0DZ26xReZKD+LJMMqMe
         aPBgtOHFB/2L9EIxgvWnGU+AKFutMAuMlNswy6cD5kt/FH638u6HQjWwLkYpuL8FUSMe
         Vh5jrOlIKJRzrXC/dq7mKv6zG912gmPjnbY0yEEblCJKmCHaI9yQNPs1dZan7Dw0lHsP
         B5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8O+BUzEOlPVFYsAILnpKlXg7Rnt8XOhPi9arBeTsc3I=;
        b=hY8E/nKOVo6z3B002YmsyzOyRWnM66fWvkagRdc3JUTvvduJnMmsgAKtf0hjDnwykH
         VvU2xKR9VbtHlL75nuv/Ccb5uuu0SvIILLw7dLq/5oldtJxjFMQlC02FHH+7n0x1P/+P
         CP+SwjGdKUqMoFbsK+0LURadC2MiqUdb1hYj+jyo/TEaypiA9bTNni2pLRAFBTCXe8qR
         rpyHZSee04oC6OYAYgxkrN2x9R3kk65jxoPTdal9n5FSy661P6lN+bI4kPdyKXfXK4k1
         0Kbdh1Bx+ga0Pk+vh+KCephz728T4yu9Ggc+HjHYVwTqu8l99rS4Ft4wffqMAlPUNEKc
         vlSQ==
X-Gm-Message-State: ANoB5pnd5LJC4xC3f4zbaDqHp5g5Puct0Cadl9AB75bHvUhZsCrW8WOx
        GBw+xBAEZBjM623b9UbbY24=
X-Google-Smtp-Source: AA0mqf69mCtatdAb+d57Rh4o+YWw7KtBRQUcST8CeISJ7PLw+SLaXrIl8r9dy0d7Q25yQxdvlqd/aw==
X-Received: by 2002:a05:600c:5570:b0:3d1:ee6c:f897 with SMTP id ja16-20020a05600c557000b003d1ee6cf897mr10756453wmb.3.1670798400090;
        Sun, 11 Dec 2022 14:40:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h67-20020a1c2146000000b003d1de805de5sm7228137wmh.16.2022.12.11.14.39.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 14:39:59 -0800 (PST)
Message-ID: <f6d5c4cd-fb65-e93d-bc4f-ea4a033c87d2@gmail.com>
Date:   Sun, 11 Dec 2022 23:39:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
Content-Language: en-US
To:     Zach O'Keefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-5-zokeefe@google.com>
 <374b1dcd-6a2c-a452-9c1b-9f5945df493b@gmail.com>
 <CAAa6QmQU5T9E1kCxE3MpU6ybp0vR6kftwJiw68+5X14PoD-a5A@mail.gmail.com>
 <f5e276a1-cfb5-4b92-37d2-4630cc55bbc1@gmail.com>
 <CAAa6QmT4qUUQiSa3FfBjNh9bdM15BZWPzcs0rNJasDV=ndNzmQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAAa6QmT4qUUQiSa3FfBjNh9bdM15BZWPzcs0rNJasDV=ndNzmQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hfyb8HnNioSAyBLzX2E1JAwu"
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
--------------hfyb8HnNioSAyBLzX2E1JAwu
Content-Type: multipart/mixed; boundary="------------yCotBo7wQEETp6P0Ax0GVZIW";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach O'Keefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org
Message-ID: <f6d5c4cd-fb65-e93d-bc4f-ea4a033c87d2@gmail.com>
Subject: Re: [PATCH man-pages v3 4/4] madvise.2: add documentation for
 MADV_COLLAPSE
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-5-zokeefe@google.com>
 <374b1dcd-6a2c-a452-9c1b-9f5945df493b@gmail.com>
 <CAAa6QmQU5T9E1kCxE3MpU6ybp0vR6kftwJiw68+5X14PoD-a5A@mail.gmail.com>
 <f5e276a1-cfb5-4b92-37d2-4630cc55bbc1@gmail.com>
 <CAAa6QmT4qUUQiSa3FfBjNh9bdM15BZWPzcs0rNJasDV=ndNzmQ@mail.gmail.com>
In-Reply-To: <CAAa6QmT4qUUQiSa3FfBjNh9bdM15BZWPzcs0rNJasDV=ndNzmQ@mail.gmail.com>

--------------yCotBo7wQEETp6P0Ax0GVZIW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCENCg0KT24gMTIvMTEvMjIgMjM6MzcsIFphY2ggTydLZWVmZSB3cm90ZToNCj4g
SGVoIC0tIG5vIHdvcnJpZXMgOikgVGhhbmtzIGZvciBmb2xsb3dpbmcgdXAhDQoNCjopDQoN
Cj4gDQo+PiBDaGVlcnMsDQo+Pg0KPj4gQWxleA0KPj4NCj4+IFAuUy46IERvIHlvdSBrbm93
IGlmIEkgaGF2ZSBhbnl0aGluZyBtaXNzaW5nIGZyb20geW91IG9yIGFueSBvZiB5b3VyIGNv
bGxlZ3Vlcz8NCj4gDQo+IEF0IGxlYXN0IG9uIG15IHBhcnQsIEkgdGhpbmsgeW91J3ZlIHRh
a2VuIGFsbCBteSBwYXRjaGVzICh3aXRoIGhlbHAgJg0KPiBlZGl0cyAtLSB0aGFuayB5b3Uh
KS4gSSBjYW4ndCBzcGVhayBmb3IgYW55b25lIGVsc2UgYXQgR29vZ2xlLCBob3dldmVyDQo+
ICh0aG91Z2gsIGp1c3QgYSB2ZXJ5IGhhc3R5IGNyb3NzIHJlZmVyZW5jZSBiZXR3ZWVuIGdp
dCBsb2cgYW5kDQo+IGxvcmUua2VybmVsLm9yZy9saW51eC1tYW4gc2VlbXMgdG8gaW5kaWNh
dGUgcGF0Y2hlcyBzZW50IGZyb20NCj4gKkBnb29nbGUuY29tIHNpbmNlIG1hbi1wYWdlcy02
LjAwIGhhdmUgcHJldmlvdXNseSBtYWRlIGl0IGludG8NCj4gbWFuLXBhZ2VzLTYuMDEsIGFu
ZCBub3RoaW5nIGFmdGVyd2FyZHMpLg0KDQpNYWtlcyBzZW5zZS4gIDYuMDEgaXMgdmVyeSBy
ZWNlbnQsIGFuZCBJIGRvbid0IHJlbWVtYmVyIGFueSBwYXRjaGVzIHNpbmNlIHRoZW4uDQoN
Cg0KPiANCj4gSGF2ZSBhIGdyZWF0IHJlc3Qgb2YgeW91ciB3ZWVrZW5kLA0KDQpIYXZlIGEg
bmljZSB3ZWVrZW5kIQ0KDQpDaGVlcnMsDQoNCkFsZXgNCj4gDQo+IEJlc3QsDQo+IFphY2gN
Cj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------yCotBo7wQEETp6P0Ax0GVZIW--

--------------hfyb8HnNioSAyBLzX2E1JAwu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOWXDgACgkQnowa+77/
2zIzghAAl6dqMv/YqDt6mQa1La1uVPPNLXmZnNRgj+9rChSkGaGUTO5jCNwso/yb
qo3IE6CBt8wYnNX2QhFx5tQcYNnSxctx7sQO2KkARJ2y8+31RaNiuuGT/YDK3EzW
PQ1M0xwdQk5f4tfievFMqgc7YXmsCosvZEuXA2qcJWR19KOtX49zCARrYYGrfxlJ
F1CfLgQZCAbJuUdgW8xvUtk51T6ZbCse7SHkVKKKGgW8g1RF9RrchS1ZXxs+/a9l
t7Z7+BVaVhTlpK8fC80VB7FR5D6xGfah+3X2KOAPjyBiRazPfY2EcvG7J0MvrDYr
4+6p3EYIxFh4QTDZRsotigyvuQtLdqosxrLb8l8HtglQmBJu+D588hGabu/b9Dql
vhTCFFt+IVBf2iod4MHBsro2GgtPD0UsTnfoY012abMc4V729XYb/B/Pk1LQMxwd
gNp5wGhXqU99/qEqsLbsA7R3KIdweY7X5dFtvM55v9APB4AwsE8ohK6s51jAekLO
6plPraW6L3Obxvtew4i9FNU1g76n5X9EXTFV/QrrLsFjUTSqHjuiVHc5I3NZjonY
twYMVopjG6KrnZdXEFsJF7TFCbyauecLsajlo2yRHaOdIi/oHNOJJGQ/vWdamx5P
cyJRUTjXt9RJyUziCSDC3TlbIsMDKprcPV7goG623NVADHEtI/M=
=7vmi
-----END PGP SIGNATURE-----

--------------hfyb8HnNioSAyBLzX2E1JAwu--
