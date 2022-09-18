Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC7DE5BC068
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 00:36:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbiIRWgy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Sep 2022 18:36:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiIRWgx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Sep 2022 18:36:53 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1E8713DF3
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 15:36:51 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id j9so8994884ljg.2
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 15:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=IL8Q6cadmnVpgByk5m/btJpW4Me4MyCwj27YAg5eQcE=;
        b=cOadtUyPnkvKcFJ8IoQwcSOTWptskM6DiW60o+VSpRa8s3EdTxgmfh+Ks7JizHSuS8
         aDp7c/PZfqqXJ4/gj5Rf/ELKCGxqkcofBI/VjqUo1Yxk26j5Ii5id8OvkN3LQUnyfY/z
         C2dYTASyESo/SgXPmVQLVgDeBG+nCyEhOj+KqAdsPvXWzEdznOh3P7MhUO+L3tH5T5/u
         NML2CuFSfFZ5U4OxwudL6RSlBHwO5TAeqz7cLeSQwSRexIpQOZfC0y4fs1pNkC8NxjZ2
         hXHpQdUVknXpSjuleIHSb7SNZ6xcgJWYn95l7I+34u4EUq3QB6+ls3DcWdIroWgcoTky
         PQkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=IL8Q6cadmnVpgByk5m/btJpW4Me4MyCwj27YAg5eQcE=;
        b=5at31qb4slFQACaz7jdRwqdQF/CBjtZl0+eltTHRp+Q93VUen49M0PYD8YKxytlCd9
         9EB9Uhz1nr8pkWkuF2La7mwJOMYExL2mtx07jiIwEaUKnzQz6E0LOtV3rTS0OpkCTTnv
         xDdBtRlcLCTvvFab2GDLUKplxrrhNjxuWR5lgmgucXVeOmMOW/k3x8LvP2VsAeo4FaV2
         5eqKNt2d9JY/HvcAnVLlVQqmkxc6TgdUFs5xpL97TZgf2JBCJwmZnZ9YF3S6LB75KU1p
         DBj8lgod1HOKkUcwyvM31TlNEjOsJ8C/zJVjsFyxJmyhWNB+d4QmT3zgdFi1QArqX09E
         aIhQ==
X-Gm-Message-State: ACrzQf30z/XdIJjIhi2D8fMk6ofRS+8H3u+VPErmk9wiZk4hcdsV+rGN
        PPbFVXH7kth17aXYX5EVjjC9JcGriEknMw==
X-Google-Smtp-Source: AMsMyM7MyvWAh+NDpZbwYZ6FrDTzSxoykmL5lPBR3oqqET7wx8b0kJd5ImtuTLLzJac/q8+37rR7Nw==
X-Received: by 2002:a05:651c:903:b0:26c:2f7f:c037 with SMTP id e3-20020a05651c090300b0026c2f7fc037mr4644495ljq.325.1663540610072;
        Sun, 18 Sep 2022 15:36:50 -0700 (PDT)
Received: from [192.168.1.104] ([31.169.55.19])
        by smtp.gmail.com with ESMTPSA id z14-20020a19650e000000b00490b5f09973sm4883950lfb.92.2022.09.18.15.36.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Sep 2022 15:36:49 -0700 (PDT)
Message-ID: <23ae1f95-d2aa-87f7-664e-ba3ffab16c43@gmail.com>
Date:   Mon, 19 Sep 2022 00:36:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] register_printf_speficier.3, register_printf_modifier.3,
 register_printf_type.3: Add new manual page and links
To:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
Cc:     Walter Harms <wharms@bfs.de>
References: <20220918221640.19942-1-alx.manpages@gmail.com>
Content-Language: en-US
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220918221640.19942-1-alx.manpages@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QEIteanmbEl5swtI0L4oGsFJ"
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------QEIteanmbEl5swtI0L4oGsFJ
Content-Type: multipart/mixed; boundary="------------2u5d5GmGB1UZfKyZ4PsO1yoQ";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Cc: Walter Harms <wharms@bfs.de>
Message-ID: <23ae1f95-d2aa-87f7-664e-ba3ffab16c43@gmail.com>
Subject: Re: [PATCH] register_printf_speficier.3, register_printf_modifier.3,
 register_printf_type.3: Add new manual page and links
References: <20220918221640.19942-1-alx.manpages@gmail.com>
In-Reply-To: <20220918221640.19942-1-alx.manpages@gmail.com>

--------------2u5d5GmGB1UZfKyZ4PsO1yoQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOS8xOS8yMiAwMDoxNiwgQWxleCBDb2xvbWFyIHdyb3RlOg0KPiBBbmQgaXQgc2VlbXMg
SSBhbHNvIG5lZWQgc29tZSBoZWxwIHdpdGggbXkgb3duIGV4YW1wbGUsIHNpbmNlIEkNCj4g
ZGlzY292ZXJlZCB0aGVyZSdzIHNvbWUgc29ydCBvZiB1bmRlZmluZWQgYmVoYXZpb3IgaW4g
aXQgKGp1c3QgcnVuDQo+IGl0IHNldmVyYWwgdGltZXMgYW5kIHNlZTsgc29tZSB3b3JrLCBi
dXQgc29tZSBkbyBzaG93IHdlaXJkIHN0dWZmDQo+IGZvciB0aGUgY2FzZXMgd2hlcmUgd2l0
aCBtb2RpZmllcnMgdGhhdCBtYWtlIHRoZSBudW1iZXIgd2lkZXIgdGhhbg0KPiB1bnNpZ25l
ZCBpbnQpLiAgSWYgeW91IGZpbmQgdGhlIHVuZGVmaW5lZCBiZWhhdmlvciwgcGxlYXNlIHNo
b3cNCj4gbWUuICBJJ2xsIGNvbnRpbnVlIGRlYnVnZ2luZywgYW55d2F5Lg0KPiANCg0KDQpU
aGlzIGlzIHRoZSBVQiBJJ20gZXhwZXJpZW5jaW5nOg0KDQphbHhAZGVsbDc3NjA6fi90bXAk
IC4vYS5vdXQgfCBoZWFkDQouLi4uLS0tLS4uLi4tLS0tLi4uLi0tLS0uLi4uLS0tLQ0KMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAxMTExMTExMTEx
MTExMDEwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMTAxMTExMDsNCjAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMTExMTExMTExMTExMTAxMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDEwMTExMTA7DQowMDAwMDAwMTAxMTExMDsNCjAwMDAwMDAx
MDExMTEwOw0KMDAwMDAwMDEwMTExMTA7DQowMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDExMTExMTExMTExMTEwMTAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAxMDExMTEwOw0KMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAxMTExMTExMTExMTExMDEwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMTAxMTEx
MDsNCi4uLi4tLS0tLi4uLi0tLS0uLi4uLS0tLS4uLi4tLS0tDQowYjAwMDAwMDAxMDExMTEw
Ow0KYWx4QGRlbGw3NzYwOn4vdG1wJCAuL2Eub3V0IHwgaGVhZA0KLi4uLi0tLS0uLi4uLS0t
LS4uLi4tLS0tLi4uLi0tLS0NCjAwMDAwMDAxMDExMTEwOw0KMDAwMDAwMDEwMTExMTA7DQow
MDAwMDAwMTAxMTExMDsNCjAwMDAwMDAxMDExMTEwOw0KMDAwMDAwMDEwMTExMTA7DQowMDAw
MDAwMTAxMTExMDsNCjAwMDAwMDAxMDExMTEwOw0KLi4uLi0tLS0uLi4uLS0tLS4uLi4tLS0t
Li4uLi0tLS0NCjBiMDAwMDAwMDEwMTExMTA7DQoNCg0KVGhlIGZpcnN0IHJ1biBpcyB3cm9u
ZywgYW5kIHRoZSBzZWNvbmQgb25lIGlzIGNvcnJlY3QuICBUaGUgcmVsZXZhbnQgDQpwcmlu
dGYoMykgbGluZXMgYXJlOg0KDQoNCiAgICAgICAgICAgIHByaW50ZigiLi4uLi0tLS0uLi4u
LS0tLS4uLi4tLS0tLi4uLi0tLS1cbiIpOw0KICAgICAgICAgICAgcHJpbnRmKCIlbGxiO1xu
IiwgMHg1RWxsdSk7DQogICAgICAgICAgICBwcmludGYoIiVsQjtcbiIsIDB4NUVsdSk7DQog
ICAgICAgICAgICBwcmludGYoIiViO1xuIiwgMHg1RXUpOw0KICAgICAgICAgICAgcHJpbnRm
KCIlaEI7XG4iLCAweDVFdSk7DQogICAgICAgICAgICBwcmludGYoIiVoaGI7XG4iLCAweDVF
dSk7DQogICAgICAgICAgICBwcmludGYoIiVqYjtcbiIsICh1aW50bWF4X3QpMHg1RSk7DQog
ICAgICAgICAgICBwcmludGYoIiV6YjtcbiIsIChzaXplX3QpMHg1RSk7DQogICAgICAgICAg
ICBwcmludGYoIi4uLi4tLS0tLi4uLi0tLS0uLi4uLS0tLS4uLi4tLS0tXG4iKTsNCiAgICAg
ICAgICAgIHByaW50ZigiJSNiO1xuIiwgMHg1RXUpOw0KDQoNCkNoZWVycywNCg0KQWxleA0K
DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQo=

--------------2u5d5GmGB1UZfKyZ4PsO1yoQ--

--------------QEIteanmbEl5swtI0L4oGsFJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMnnXkACgkQnowa+77/
2zLKgQ//UqictuYplllFEx95u/KtPA/VclZE8vu7znB712Mki3xjZ/jnsgkcrVVl
IpF643SZXm7szJwrWS21iYAUF2y/msTqhi/R0FQFF6+YbWWFOhvgW1Bz/liSOBtx
olQW5JYgWK8VY9OODf3zubK/wRG07z/0E787i+jwbltnIboyns354Q/AC3wcNcAl
rFYfYKGzAXaSXfnNETKri46kDb2GZgwL9rMz4bTxJ40zE6KzS/cGfzySv3JK0Brq
BVr02DO3ySWRN4VLLvx6lPo+fz8a2ZPCSbusQFe2ijPzV0hyg/eUAuQ1oZNNksMV
gFEcVDQMTLGaZyBajiZoMNp5HbV7jcDwcl7iB8lCF12ivbgSQsU4xMCSaJPsxEeX
OzYasVN487Ne1MeCDZpZWx2HzBBVeHUpkH5ng64hsZAFUgKkMUL7GsWizw7t+lNd
1dpa2WWnLDU9fwYgRuEtzzkvFW0WUQo1lNhYJ9nZcODcu42ObQmFmzFUsVegqp1O
GpiYINW/6r7z91sWHiqX4xHXJWB0lhuh9ubiTc2R4MHBJCwjYjIw3KVTqwrLZ1yl
rjMSPk9Q9bP0YS32Kx+481jwLvaVX2LFpxm1BFHREbNT3n2HGE19FBEe5AOQVlRo
UyKquTsXsa+Qwy/HWsFKh0E/XZ78UcQtZNlfPPn4jOZVCHHZAmI=
=Lt8a
-----END PGP SIGNATURE-----

--------------QEIteanmbEl5swtI0L4oGsFJ--
