Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8311F54F883
	for <lists+linux-man@lfdr.de>; Fri, 17 Jun 2022 15:49:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233590AbiFQNtE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jun 2022 09:49:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231462AbiFQNtC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jun 2022 09:49:02 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ECA742A2B
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:49:02 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id g4so5834261wrh.11
        for <linux-man@vger.kernel.org>; Fri, 17 Jun 2022 06:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=7URuGFFMAB2idksQzqu3I64NHUE/e+lgYxl5iZmzPTo=;
        b=Ft3zHUrr584rLS15nkVwYIjrTz6nBvK6lPcUi/v5hIqsxq2URgdVzoRok1LpV6gvH7
         EKB69b7lQAGx0UJ6b8ayQSwCebAYVt0L/xgVmef5pJGBjElPl1i4Y0ItfM6vQdT+Lknp
         Vle8eDNNwAK6eu7qvn4CV1/L1904jJyBgooO+13zpX1t7XKKnmdqmA0H3LLmATE4Suck
         ulhSwvrztJcS0Vvft9c+ao/IY/JFN2WUOLnetLpKiOdcUqqbX2EvHOwKew0lfGndxmZK
         GIr9y+QKq/9YTc2CTvSBFG5W7KdLqamqIBKAU6CbijbPpI+lqWFgP3SV048oEIEIS2z1
         rC+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=7URuGFFMAB2idksQzqu3I64NHUE/e+lgYxl5iZmzPTo=;
        b=MlR1L7AN6fJkbheywUf1io85wZo0wvRnzHUSjateb2NAwiZxYS33QCmbgtpd3fxFsh
         YmGH8uMyirCBhu2ARArqjrqGYnwrI1a96nV6fr+K3Amy5jT7eRMAQ7DHTvvWbLEzctxQ
         nH2DI1+YjXkvUWnGfAZ1K+8Pl3gULaD+i9P5AfbYoWeP1C+mlw6XpMJ4+Z64Xj720Wxk
         T8vILfUqMDZmCs0EIOV5ChFCwBeBpsV9baVrcaGnJ1fqCQXs2C9T0Ayjnb6Tp+x0UHbx
         gwos1lOHijs49a98yPAQb02ipc/D+xJ5u4S5IGaiFf8uSIvJMwljFhvMDhV57/7fO+c2
         RBEg==
X-Gm-Message-State: AJIora+I+LwA5ZUKBOsK4WcWvxID+wb2Pfc1eX29tTy0bka5GDn5W0KM
        PTN0vktyicEPsUXetHGTK6I=
X-Google-Smtp-Source: AGRyM1s528qFHQCV5tZl7p4XlKD/Qn4BZRdLGQs0FmaB2nfjJdAAotAipHD+PyRjBKhJVbfPcuURPQ==
X-Received: by 2002:adf:f744:0:b0:21b:8210:9ea6 with SMTP id z4-20020adff744000000b0021b82109ea6mr1572134wrp.498.1655473740600;
        Fri, 17 Jun 2022 06:49:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i188-20020a1c3bc5000000b0039ee52c1345sm2717381wma.4.2022.06.17.06.48.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 06:48:59 -0700 (PDT)
Message-ID: <fd783262-e40c-d23d-cb99-8d6be1f479d1@gmail.com>
Date:   Fri, 17 Jun 2022 15:48:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 0/2] fanotify man page updates for v5.17
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
References: <20220617131158.1661235-1-amir73il@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220617131158.1661235-1-amir73il@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Gsi9FfcdMadRX3XDlPd20ctl"
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Gsi9FfcdMadRX3XDlPd20ctl
Content-Type: multipart/mixed; boundary="------------GZtQ0XSWW0TiWwLHp8Ah0wOt";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
 Matthew Bobrowski <repnop@google.com>, linux-man@vger.kernel.org
Message-ID: <fd783262-e40c-d23d-cb99-8d6be1f479d1@gmail.com>
Subject: Re: [PATCH 0/2] fanotify man page updates for v5.17
References: <20220617131158.1661235-1-amir73il@gmail.com>
In-Reply-To: <20220617131158.1661235-1-amir73il@gmail.com>

--------------GZtQ0XSWW0TiWwLHp8Ah0wOt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW1pciwNCg0KT24gNi8xNy8yMiAxNToxMSwgQW1pciBHb2xkc3RlaW4gd3JvdGU6DQpb
Li4uXQ0KPiANCj4gSSBkaWQgbm90IG1lbnRpb24gdGhpcyBjb3Vyc2Ugb2YgZXZlbnRzIGlu
IHRoZSBtYW4gcGFnZSwgYmVjYXVzZSBpdA0KPiBzZWVtZWQgdG9vIG11Y2ggaXJyZWxldmFu
dCBpbmZvcm1hdGlvbiBmb3IgZW5kIHVzZXIsIGJ1dCBhbSBtZW50aW9uaW5nDQo+IGl0IGhl
cmUgZm9yIGZ1bGwgZGlzY2xvc3VyZSBpbiBjYXNlIHNvbWVib2R5IHRoaW5rcyB0aGlzIGlu
Zm9ybWF0aW9uIGlzDQo+IHJlbGV2YW50Lg0KDQpIbW0sIG1heWJlIHdlIHNob3VsZCBpbmNs
dWRlIGl0IGluIHRoZSBjb21taXQgbWVzc2FnZT8NCg0KSSdsbCBjb21tZW50IGFsc28gb24g
dGhlIHBhdGNoZXMsIGJ1dCBtb3N0bHkgZ29vZCBzdHVmZi4NCg0KQ2hlZXJzLA0KDQpBbGV4
DQoNCj4gDQo+IFRoZXNlIHBhdGNoZXMgYXBwbHkgb24gdG9wIG9mIGZhbi1mcy1lcnJvciBi
cmFuY2ggaW4gbXkgdHJlZSBbMV0NCj4gd2hpY2ggeW91IGhhdmUgYWxyZWFkeSByZXZpZXdl
ZCwgYnV0IGhhdmUgbm90IHlldCBhcHBsaWVkLg0KPiANCj4gWzFdIGh0dHBzOi8vZ2l0aHVi
LmNvbS9hbWlyNzNpbC9tYW4tcGFnZXMvY29tbWl0cy9mYW4tZnMtZXJyb3INCj4gDQo+IEFt
aXIgR29sZHN0ZWluICgyKToNCj4gICAgZmFub3RpZnkuNywgZmFub3RpZnlfaW5pdC4yOiBE
b2N1bWVudCBGQU5fUkVQT1JUX1RBUkdFVF9GSUQNCj4gICAgZmFub3RpZnkuNywgZmFub3Rp
ZnlfaW5pdC4yLCBmYW5vdGlmeV9tYXJrLjI6IERvY3VtZW50IEZBTl9SRU5BTUUNCj4gDQo+
ICAgbWFuMi9mYW5vdGlmeV9pbml0LjIgfCA1MyArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLQ0KPiAgIG1hbjIvZmFub3RpZnlfbWFyay4yIHwgMjMgKysr
KysrKysrKysrKysrKysrKw0KPiAgIG1hbjcvZmFub3RpZnkuNyAgICAgIHwgMzEgKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0NCj4gICAzIGZpbGVzIGNoYW5nZWQsIDkwIGluc2VydGlv
bnMoKyksIDE3IGRlbGV0aW9ucygtKQ0KPiANCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------GZtQ0XSWW0TiWwLHp8Ah0wOt--

--------------Gsi9FfcdMadRX3XDlPd20ctl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKshkoACgkQnowa+77/
2zJ5Kw/+PbEwFdsIhRQkChHEjk46+UJHhhevul4dlKKtST1AVq7PAJ2KHHv/Nj0a
PR2WHWYitgsUG/Gf/vvdLvmeR3m+SqZ25O6vEPG4jH3kVu8wbj1KmhEZ2W1e/3Rk
wU4B5w2l9ygvldZUUJW0Js02wF8nel8+R/vcUFdXMt9uG8auv6F5VJgxjrbgkL/+
TB5tPJaPNHolD+I1HsKPQGV6ijQb0K2woGRw32vDuKJr/y0udwidNMO7RONMTRvQ
2zs7SP7DgcqfEIT8B3nYN6XIVqLGxY+r8o4Sk8K6VuXhq2oytcT5vrUeNNqkiBW1
CgL6KXKxPQ2IgojahxrAPb78s0vnHmoW6TlO9ZDk5TWQME6TIswljsMBq8dCoGwY
ouwz8jNAB3/NLC7UFu6dAWaktRCRHq0p5viXVlPigt6JXwQi8SD5hY/PYK7T/XeY
+VRfw5FXGR5QRfzhSUvphvsOzkdlZidyszXvdPkZJ5GbUpSik2oPZZ3j1xrrlht8
NuX/r3I6peRUc3UckvUY/p988F2QTC4s6yUtaubx1XLnCBVYfAtA8QWhEdHZcZig
9p7M0TSw8rze4SfkJJANbVBLj6BKe7LUSIDpI00AkkV0gBbp5B2UX18u/vHNiqdq
OqDY3ewOKwnnOGH5PsCSygjQ+dYKDnvc84VyiCbVSgVLqbHCAkA=
=vLlZ
-----END PGP SIGNATURE-----

--------------Gsi9FfcdMadRX3XDlPd20ctl--
