Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12131641FAA
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:55:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230235AbiLDUy7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:54:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230117AbiLDUy5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:54:57 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EAACFCF7
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:54:56 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id o5so15929977wrm.1
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JUMd9kplLXdoezd6x5sxwHIz3f/pcg0+X0DgWsA/szA=;
        b=ijodMaTzwI+j1OtuoRcQalZYpT9E8I5wtA2siytu2uoJOQF3KX4GXmTsyeGU7kZsa1
         rlBFPXsqJBeWCDG2eVw7UY0zfo6R1qdxN7IfxM/gzsPEPtbIoGNNLM29PBzYzWqFGHgB
         vZvLmj8suO2j/SxMYDiuKu53tkbffla7BlT7AV7HY7qScyqFxwFw4EecaS7SedOsZ7Vm
         YRlbAzgOxpb5z5330lp/S0yoKs5CksGahu1m7tdXZyW6aDjhuByEF3LOe9VG2XdCAEfd
         VaIpJ+FYL+V/W53WrMwQd+1fC7REXzgQUS3NpuLDa4DZ0Alh9bWV2e7319WCCkbooNle
         3wLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JUMd9kplLXdoezd6x5sxwHIz3f/pcg0+X0DgWsA/szA=;
        b=21mUxs+fya3/HzEy0JHOpdaquzVw38xlvITdyikPUGIjRJdgsefmROI0aBiDdPterE
         owjnSjdEj9dA/M1CQIeG0O1hwKHXmlDXItoEZnQQr3/8BgNbX+EUNQVWR+gOpxBc0YPK
         kvZ7YLXC0r1fTBRGu/7bTlyD+++IqRowSyMV/kolvQZL//LI3FFh8xOgTHntmwOd/2IR
         r2a3R7UptFNcOZj0iwzMek1beU6dj3OY5jL2zbS65Rd3Bk1gnZ2+dZEO6v5sXk0PkxcT
         piZo48shxbGRDb6Eizxr236kLzggddSvPSiydeBoibg5o2GVu+cPkX1IpfDP5oD6mx6G
         ADmQ==
X-Gm-Message-State: ANoB5pk1lCzBMhX0iCKIOP4qFGsJByQ63fg6mWzIc3wdR1gv6Uj+z6jn
        fpjqbbD14eQa06sHOPoOKYo=
X-Google-Smtp-Source: AA0mqf5gNPOTR5xik3JLlrWig69DqR5KKOaBkoe5NdilNt0anIi9HJR4g6xpPlIGUMKn6+n/cxoPSQ==
X-Received: by 2002:a5d:6602:0:b0:242:63e9:151c with SMTP id n2-20020a5d6602000000b0024263e9151cmr1361531wru.400.1670187295213;
        Sun, 04 Dec 2022 12:54:55 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v5-20020adfebc5000000b00241c6729c2bsm12393846wrn.26.2022.12.04.12.54.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:54:54 -0800 (PST)
Message-ID: <bdbf9866-cdba-e42c-13f0-aa40282081af@gmail.com>
Date:   Sun, 4 Dec 2022 21:54:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page connect.2
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090725.GA1324@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090725.GA1324@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xyylEXqODLtWT10ZCHAsohEn"
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
--------------xyylEXqODLtWT10ZCHAsohEn
Content-Type: multipart/mixed; boundary="------------QA8017Li40tIDlC0YOF33Aj1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <bdbf9866-cdba-e42c-13f0-aa40282081af@gmail.com>
Subject: Re: Issue in man page connect.2
References: <20221204090725.GA1324@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090725.GA1324@Debian-50-lenny-64-minimal>

--------------QA8017Li40tIDlC0YOF33Aj1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgICJkZCIgYXQgdGhlIGVuZA0KPiANCj4gIkI8RUFDQ0VTPiBjYW4gYWxzbyBiZSByZXR1
cm5lZCBpZiBhbiBTRUxpbnV4IHBvbGljeSBkZW5pZWQgYSBjb25uZWN0aW9uIChmb3IiDQo+
ICJleGFtcGxlLCBpZiB0aGVyZSBpcyBhIHBvbGljeSBzYXlpbmcgdGhhdCBhbiBIVFRQIHBy
b3h5IGNhbiBvbmx5IGNvbm5lY3QgdG8iDQo+ICJwb3J0cyBhc3NvY2lhdGVkIHdpdGggSFRU
UCBzZXJ2ZXJzLCBhbmQgdGhlIHByb3h5IHRyaWVzIHRvIGNvbm5lY3QgdG8gYSINCj4gImRp
ZmZlcmVudCBwb3J0KS4gIGRkIg0KDQpIZWgsIHNvbWVvbmUgd2FudGVkIHRvIGRlbGV0ZSBz
b21ldGhpbmcgOikNCg0KRml4ZWQuDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------QA8017Li40tIDlC0YOF33Aj1--

--------------xyylEXqODLtWT10ZCHAsohEn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONCR0ACgkQnowa+77/
2zIYtQ/8CzKJImHJI9hSB54A7RqMxh8LkCmHVAJp/xlvxn8FstefQF/zsWBgjCso
uRBnLJpghDJ4QoSEP0y+eRCfQMmYqb7I9etcCLZHMeaSuKvU5RRmzisNR4hXGPaI
vfBoGnoRskVGSIsHPCGQQfdpp8WVnX5SGRPu6p1E4L6XreQlAnM1TYtraZTWpjlv
/5TuY59Smm+ic856o2E5nChuOGrtHzL4FCJm+cBBN7WTCYLp9veF44oXskFqM/FZ
x4cFec16nP/sTBdx5TFcdcJCv5fjeGJUVppWTVlidkq+Kpsvm8izW8HROZs/m4Nc
Kno43tDZnr6RIODFWC2l7xUP7if1S4b41+7LCYfMTRNdDqmRXdJSv7QBff/0ut+J
nLvCPpnSrbFWZCGbAF921fE/2r10rd74Mc/IGvgLeWKA5iP/idvuLLyreMaOaQdk
XT0jmpMSC+NmjLIpMNsI+jREzP/mubMAsjtD2d3idFdj+re6LPCC4h4klyKg1Nuf
yE4rOT8o440T1iOmQ1EwIWi3dvgHztkXaQ45IB4csLtjq/X2a5dq9g7md2XNB2I1
5NCLEljf2/xBUNIiZRXs0VCokpbYbY4mNZXtPUw2MbXrrH78qL92VPNh3hIcinTA
gWAzLTCjOnDT3KSADK0zABbgs2EOP7NO4h0jH4EzRWq/RMrNVEE=
=wkyt
-----END PGP SIGNATURE-----

--------------xyylEXqODLtWT10ZCHAsohEn--
