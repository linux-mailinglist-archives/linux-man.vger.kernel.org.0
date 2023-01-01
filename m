Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6953265AAB4
	for <lists+linux-man@lfdr.de>; Sun,  1 Jan 2023 17:41:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229883AbjAAQlk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Jan 2023 11:41:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229862AbjAAQlj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Jan 2023 11:41:39 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C888DE49
        for <linux-man@vger.kernel.org>; Sun,  1 Jan 2023 08:41:38 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id ay40so18667922wmb.2
        for <linux-man@vger.kernel.org>; Sun, 01 Jan 2023 08:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p9NKWwMGX5kDl7bObctizf+F/5PHEjdyN1m44hgwoNc=;
        b=VAmIdbnMtKlpxLGcHjdwrEO6MiZj2qUlfPZS/iA1WhJm9R0VDDspoyMprp8yQjtiNJ
         5Qjzcs9r1MxJwzKK+9yOwCsM9EK/kAJMDdNBZWUpdFC9XX2KXVB67cVxxXKP9u5VXqJB
         JZOdYgZtzZJz79VdnIyBstnpmaVnmjV6QN0cvubXqj+hi/2T4w4ffdhwsa1CTiSJbqnq
         IE1L8ZajCRjFQQxL8QTe2lAE/SR66npzg49KFqR07vIjgNQkA5Rairtqi3yUvZJ9Vuai
         Ua5mgqNljSfjVzSSvjM5xUmRQB/zPv58TWd+pIKPckhZY1/YTErqSaoMRQUCAgHBgF0P
         a2zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p9NKWwMGX5kDl7bObctizf+F/5PHEjdyN1m44hgwoNc=;
        b=1J1HslR7X26Cnxx9mnrJuQtEQSunncHNz8PmQo1zE0Uv+2/DFfsaCZwiZ8glmYNw5N
         SJBpHf6mdwHhqyqnUkq97K6Y13n2iHoKXR0Xta8KqBg+10Ae0ZNdb6c6yP7eH8VSJ/KF
         tAQ6LOrOqh11V7S0pMQi9lRLKntS7elB4fDVhcb32fdGq89IdhziFQtOoaGwmTVB7Rcw
         Mk46Yl2xKLNL0jmGTyRiIpoqZgJRhmXh+XzXxvdvvPCS9ArnKtyv/XVTInpNMFyYw/uM
         Q+bpje2ygSPJBDQaClBe4P6SHfslxFX+fmiiFbn6oTse5AhtMZ7FzOLW9TEbhhV0R2Qb
         5VYQ==
X-Gm-Message-State: AFqh2kr3/cRLesj7Vb+W+E+wDjEhSNgzXal4K4N2SOi6xrKPCKxmzuxR
        ahSqBY8I45Yup89EkSFtz0k=
X-Google-Smtp-Source: AMrXdXvSYlxyY+P+BuddNv+lzsTagwXpX7CoOPq7eeT+WYFK0WN4gYrF3pNtX4PtGp/jq7D4opxHOQ==
X-Received: by 2002:a05:600c:3b82:b0:3d3:4877:e560 with SMTP id n2-20020a05600c3b8200b003d34877e560mr26688189wms.27.1672591297394;
        Sun, 01 Jan 2023 08:41:37 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y24-20020a05600c365800b003cf894dbc4fsm34742432wmq.25.2023.01.01.08.41.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Jan 2023 08:41:36 -0800 (PST)
Message-ID: <a0aed30a-cac7-c2e7-815d-c123e4228238@gmail.com>
Date:   Sun, 1 Jan 2023 17:41:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        "Jason A. Donenfeld" <Jason@zx2c4.com>
References: <20230101162627.28031-1-alx@kernel.org>
 <CPH02SKUI9O7.27QRN0MS8YK88@morphine>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CPH02SKUI9O7.27QRN0MS8YK88@morphine>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0NFztwnaaYgSPsZ1cx3n0t3T"
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0NFztwnaaYgSPsZ1cx3n0t3T
Content-Type: multipart/mixed; boundary="------------xZvEjq3KsFVo0MeLOCT0dMka";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tom Schwindl <schwindl@posteo.de>, linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
 "Jason A. Donenfeld" <Jason@zx2c4.com>
Message-ID: <a0aed30a-cac7-c2e7-815d-c123e4228238@gmail.com>
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
References: <20230101162627.28031-1-alx@kernel.org>
 <CPH02SKUI9O7.27QRN0MS8YK88@morphine>
In-Reply-To: <CPH02SKUI9O7.27QRN0MS8YK88@morphine>

--------------xZvEjq3KsFVo0MeLOCT0dMka
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgVG9tLA0KDQpPbiAxLzEvMjMgMTc6MzksIFRvbSBTY2h3aW5kbCB3cm90ZToNCj4+ICsu
U0ggU1RBTkRBUkRTDQo+PiArVGhlc2Ugbm9uc3RhbmRhcmQgZnVuY3Rpb25zIGFyZSBwcmVz
ZW50IGluIHNldmVyYWwgVW5peCBzeXN0ZW1zLg0KPiANCj4gSSdtIG5vdCBhIG5hdGl2ZSBz
cGVha2VyLCBidXQgSSB0aGluayBpdCBzaG91bGQgYmUgcy9pbi9vbi8uDQoNClRoYW5rcy4g
IEknbSBub3QgZWl0aGVyLCBhbmQgYWx3YXlzIGhhdmUgZG91YnRzIGFib3V0IHRob3NlLCBz
byBJJ2xsIGFzc3VtZSANCnlvdSdyZSByaWdodC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4g
DQo+IC0tDQo+IEJlc3QgUmVnYXJkcywNCj4gVG9tIFNjaHdpbmRsDQoNCi0tIA0KPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------xZvEjq3KsFVo0MeLOCT0dMka--

--------------0NFztwnaaYgSPsZ1cx3n0t3T
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOxt7YACgkQnowa+77/
2zKDHw//adt+L4/iUN3KzQJy39dka7WUSbrlfnJ3XMwy7L/sMZFq9CurVFFPI4DL
FwO/hPKcsGNq0xFmLJTd7fuH6LJMI9ei9iIUPrzsklKLGjJ5We198Bvn4u6YM1BY
+brSYCnCO1+q5SKcyYJ8o5qRryYKA1P8SSveEA+z3o0SnTlcIijk2WK9XpYi92wT
0SiRDI3h0TmwcPFhFmV2nJmHM83mfQojRu3wrQ57hnoz38KOAZtsK/cCYQNoKWpu
BDL87CFWmFfeHJMHxFqY+YBRZ6tHGzrq49CnF1/y3W8zLeAUgdAIIVb4Wjp2v7EJ
C8ADorZs6K1I3y8B7LeFeojpJ301BfgBpIZMa85R0rHkr/y0793peHO4YEwndMOZ
J6nG8YJElGOrFJmWYOC41wocQBjJ+cAbdRjRu65qm8Mo4LaZSRsLaCQfFRJenK5e
BUmtuIPeaQCmWiHbBLFaSaLDgKF4S9SQw6fRV6C8DkE7oCcc/kw+nov+EYctVcMi
3Dlhte28+tJ0xpGU+jht+TGc3Crvg7xRL/mfdL0Dsb8Ipo+Oiq32kSwy4U3yT0L4
tFJu+3ZBdrpT2emV5G+gBxmeNZJ3PqsU9U4eRlGfPb7JGL6jf7a0DI9KXixTvLcv
a8cnZznJlz50ZLX3w8RAesE67js+s6WmLDjTuH8Jei7ZOUpjC6I=
=XpDc
-----END PGP SIGNATURE-----

--------------0NFztwnaaYgSPsZ1cx3n0t3T--
