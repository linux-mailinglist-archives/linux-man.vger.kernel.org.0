Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8319641CE7
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:29:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbiLDM3q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:29:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbiLDM3o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:29:44 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A520613EBB
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:29:42 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id m14so14758213wrh.7
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pgVh3eHEt9Pv4chkWfkUj7q7/poonr8RPjD8zggJ1do=;
        b=AMt/s97Xz8GXdwflkx325A4R5ItwOs/+NUdQIdI02uoca+Dtif7d+Rp3EYWX0PnCYB
         /X2YZcW0NTitPXDGf1+jx+7Uw5i4frzJGsZ45C9qQ7IqPasbeM0O/zAKsrvc3bh240aP
         BGAUwyJfxdu0zSAG5ZB/ZUzaZjQ9Bz5yypuQdZ7gT1/L5ON75/M8xz6mkkEBrrUAmxbG
         uhpis8gmphLVVHdwHNVg54KCPxAxYKT7zG0I4gZfUI8wz2jlbdI+QmPmydxqNSarEaJA
         2ghBb21olHygP09xka+0T3NM6FL3W0igBKYwliAhYEy2TFz82pDZd/47wtlqWeYLexSP
         hTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pgVh3eHEt9Pv4chkWfkUj7q7/poonr8RPjD8zggJ1do=;
        b=CSGojX4wUAOMpq9AV/7T+AZTOQPae2dfIkkzzGWXx71G5sZUN3ihFDwhyZgJeEDSff
         eQUo2X1fxaX5QttzqRjnb7/VZJ7TSOCD20L84L/JtHBy3xaoADgjDwFHijb/ewHQC35W
         zCy5uyDBTOyJjB34u3c+x4ql1nI5DrU38MEPRVHbr62/O4dvQifWhn8b13/9XOtW5fWk
         8PGevwpXg3TSccdBBSROy4fVTH1MmwueiqE02iEdKjcnJyRnFllngS9NshcRqkcj5op/
         5AQsJxiwWsjmtoEmYg6uAsRZE2WOe5Lq9kJBufSycpe0klrvsHlgAd0HrsCs+ymtbEaU
         7NFg==
X-Gm-Message-State: ANoB5plxtWsAElbcsTioYUkNLFzVoYge0CmKmKtuoLAxivYle0cQFoVs
        qylJaGFir4hMNVeS/hhiD/8HHKA5FSE=
X-Google-Smtp-Source: AA0mqf6LJsmGbXhWZTtABSP4UjBmTphjgF1AxkrcOLqBsHSM26ui67dicLQyFj8pFDjVfMVkyWDlkw==
X-Received: by 2002:adf:d234:0:b0:241:fe0e:b99c with SMTP id k20-20020adfd234000000b00241fe0eb99cmr30212164wrh.456.1670156981182;
        Sun, 04 Dec 2022 04:29:41 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t67-20020a1c4646000000b003cfa622a18asm17578183wma.3.2022.12.04.04.29.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:29:40 -0800 (PST)
Message-ID: <36e229a6-f2ba-4b06-8d76-5ff305fc23fc@gmail.com>
Date:   Sun, 4 Dec 2022 13:29:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090712.GA441@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090712.GA441@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xJsHA1X58yDY0MTaGXhoIO0v"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xJsHA1X58yDY0MTaGXhoIO0v
Content-Type: multipart/mixed; boundary="------------CkvO4pC7u1H1op8025JiAVvq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <36e229a6-f2ba-4b06-8d76-5ff305fc23fc@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090712.GA441@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090712.GA441@Debian-50-lenny-64-minimal>

--------------CkvO4pC7u1H1op8025JiAVvq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIHBlcmZvcm1lZC4g4oaSIHBlcmZvcm1lZCkuDQo+IA0KPiAiQWJvdmUsIHdlIHNlZSB0
aGF0IHRoZSBtb3VudCB3aXRoIElEIDI3MyBpcyBhIHNsYXZlIHdob3NlIG1hc3RlciBpcyB0
aGUgcGVlciINCj4gImdyb3VwIDEwNS4gIFRoZSBtb3VudCBwb2ludCBmb3IgdGhhdCBtYXN0
ZXIgaXMgdW5yZWFjaGFibGUsIGFuZCBzbyBhIg0KPiAiSTxwcm9wYWdhdGVfZnJvbT4gdGFn
IGlzIGRpc3BsYXllZCwgaW5kaWNhdGluZyB0aGF0IHRoZSBjbG9zZXN0IGRvbWluYW50Ig0K
PiAicGVlciBncm91cCAoaS5lLiwgdGhlIG5lYXJlc3QgcmVhY2hhYmxlIG1vdW50IGluIHRo
ZSBzbGF2ZSBjaGFpbikgIGlzIHRoZSINCj4gInBlZXIgZ3JvdXAgd2l0aCB0aGUgSUQgMTAy
IChjb3JyZXNwb25kaW5nIHRvIHRoZSBJPC9tbnQ+IG1vdW50IHBvaW50IGJlZm9yZSINCj4g
InRoZSBCPGNocm9vdD4oMSkgIHdhcyBwZXJmb3JtZWQuIg0KDQpGaXhlZC4gIFRoYW5rcy4N
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------CkvO4pC7u1H1op8025JiAVvq--

--------------xJsHA1X58yDY0MTaGXhoIO0v
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMkrMACgkQnowa+77/
2zI14w//cKeQKqcqUc2Ydg9jy7SpE8zQ5rjxK95RZi1iI7x/sfHXBowkPehOviY3
fS5qiV/ySGtQbh+T9evDtwb7/RSqQmlueD161F9wcT6oXiYAnArCpuf8IiE0vSi5
Q2WwFIIOlMRjipX3tVy3abJA6POj45Ag7fNqBWIH4axCzGaANMWyIsJU0/yNdgVC
FTnlp0ZAV19Eue5yn4bhOWhpFe2VcGPnkI5LebZkPQG73U7N00CnP0+5aZ4soXJa
VFuV/n9BNuYxeF9mZtNncDspyvAlzsTu268UxK+Zll491+RrGA6VFVmUrm/iSlTZ
4/T+oYrPwxV4/hcepZMrEkQueCsEyROOs8hPBQw6LjF6O9NyYhNVapxw4iumpViT
Oo8/7gPNdoLtI5AZnNBdfu15X7qfC9JdMHjqjnVtX8K17IZZm9oQ/p60KWt8JTIR
7+nG8C0YvCPSFTls0gP1J/qx/PmExzLcYNGvkmxiFKF6GGUxh9KAHtNaRQ9jJzuI
75QolbM42zjkJgjCxw4CLZ9Rf83BZMflpt7jWluWTl4c0nDD1/RVsp3imJaxMpJr
oZSw5ermpKlcAT0adjrPelCIpjWu7F/WScUbqaMwShnLqlGbZss6L1d2Hc7O+lw1
WTPjpXyI7qefDR8k5b2QOARgPdLpSzmyknhTIRKU85cn8/N14Sw=
=f6EQ
-----END PGP SIGNATURE-----

--------------xJsHA1X58yDY0MTaGXhoIO0v--
