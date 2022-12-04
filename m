Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7986641CD6
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:13:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229753AbiLDMNa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:13:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiLDMN3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:13:29 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ABC660D9
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:13:28 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id h11so14690991wrw.13
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:13:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QFw37fboQpYNq+aqIOmAfg3u3ff/Ngyf0xlGRacYuCM=;
        b=HKR5qtBU9+JvZCyMGEA91p4GK7WFa9uSLSNX8VuHe0V0hI5mtJvRQI+Z/FWUQudg6Q
         DpK/PyJW2xsgBy9yjHeZuoI3EV4np3sTffcJ2YYSni8Op1Bq8ffEES0XrVsjURZNlgXw
         GK74JEAD+4572kaw/kwUQZ7rReT07WhqRjh5oqzBXG7tEBxskLWzB6jPnrRFQfEepVV8
         obPenWawOIUgZK1264eypVtffVC/IsA73/UPGFFuvcqsy1ugm7cYFcapetiBOiwhAA2X
         gg6byBAXSEQBbeYHkC3WRLOvEKW0u0jH/uE4oF6vRPwXFKkKCQ72f1mmTL9xT5dEG7fs
         x4aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QFw37fboQpYNq+aqIOmAfg3u3ff/Ngyf0xlGRacYuCM=;
        b=SmvUAizEsy1m4gmOGpyvSDAuU/ENQiNFS7XtnRVPFqct668db2mUuJL8juOTujp+fF
         QYxA6KFRq5uLTFrkXzcggZaNgnQp2gXmc8ncZCRHr8B5JtD2Q2K+TO5eikurLtzFkwKK
         jwpTl5pI4fhLsQgROIgV34QWgZ3+SIrogIv3CUX5EPwMmmvabLp4pFCKeRnmrXqBPyBw
         QUmIVjXMXOGI2mw/bAJo3k03vqbCRW5GlfKxgdV8uNN2t4q1zzLpw1YUwcARSqFqrejj
         diz5nCgweI7bOEaBFQEnCQLfqHmsSYq2qIyoB2FPilmwe6eSHJOWw0Z6MssitoOnl0o4
         oxXQ==
X-Gm-Message-State: ANoB5pkXGflry1Emgck6Uu/CQl87FTcak3ZZ1KGXCEl9oKSepZIw0SNz
        +hZ5XlDXIBt2wsCK3i0mpVQ=
X-Google-Smtp-Source: AA0mqf7WraWxBLws5UIEVLgACGX7wXH0E6+KENu9WjfQoVKaeopU7xoXc3OqChwBrYQhQO6MjagxMA==
X-Received: by 2002:a5d:4dc1:0:b0:242:343:d934 with SMTP id f1-20020a5d4dc1000000b002420343d934mr27372085wru.365.1670156006826;
        Sun, 04 Dec 2022 04:13:26 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k15-20020a05600c1c8f00b003c6c3fb3cf6sm15538428wms.18.2022.12.04.04.13.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:13:26 -0800 (PST)
Message-ID: <6eecf6fc-cb8e-38e5-fd65-beade207136e@gmail.com>
Date:   Sun, 4 Dec 2022 13:13:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page mount_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090710.GA347@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090710.GA347@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------g0YJb7s4lCp1wFlfMR0GB47y"
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
--------------g0YJb7s4lCp1wFlfMR0GB47y
Content-Type: multipart/mixed; boundary="------------vkrqKhTo0NYuyksyXoywJ4zj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <6eecf6fc-cb8e-38e5-fd65-beade207136e@gmail.com>
Subject: Re: Issue in man page mount_namespaces.7
References: <20221204090710.GA347@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090710.GA347@Debian-50-lenny-64-minimal>

--------------vkrqKhTo0NYuyksyXoywJ4zj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIHVubW91bnRzIOKGkiB1bW91bnRzDQo+IA0KPiAiTm90ZSB0aGF0IGEgbW91bnQncyBw
cm9wYWdhdGlvbiB0eXBlIGRldGVybWluZXMgd2hldGhlciBtb3VudHMgYW5kIHVubW91bnRz
Ig0KPiAib2YgbW91bnRzIEk8aW1tZWRpYXRlbHkgdW5kZXI+IHRoZSBtb3VudCBhcmUgcHJv
cGFnYXRlZC4gIFRodXMsIHRoZSINCj4gInByb3BhZ2F0aW9uIHR5cGUgZG9lcyBub3QgYWZm
ZWN0IHByb3BhZ2F0aW9uIG9mIGV2ZW50cyBmb3IgZ3JhbmRjaGlsZHJlbiBhbmQiDQo+ICJm
dXJ0aGVyIHJlbW92ZWQgZGVzY2VuZGFudCBtb3VudHMuICBXaGF0IGhhcHBlbnMgaWYgdGhl
IG1vdW50IGl0c2VsZiBpcyINCj4gInVubW91bnRlZCBpcyBkZXRlcm1pbmVkIGJ5IHRoZSBw
cm9wYWdhdGlvbiB0eXBlIHRoYXQgaXMgaW4gZWZmZWN0IGZvciB0aGUiDQo+ICJJPHBhcmVu
dD4gb2YgdGhlIG1vdW50LiINCg0KRml4ZWQgKGFuZCBvdGhlciBpZGVudGljYWwgY2FzZXMp
LiAgVGhhbmtzLg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4N
Cg==

--------------vkrqKhTo0NYuyksyXoywJ4zj--

--------------g0YJb7s4lCp1wFlfMR0GB47y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMjuUACgkQnowa+77/
2zLXNA/9Gte3odzg2Den0ZS4KOrHADW5RCAbItpM6O7N9/8IorxZnJ5RZL9DgPY3
7lxlgHUN6GWGRWppa+dGpX1rZSkxfaZ5Q8TCRG7O7AIW0aGnPtUYDVZd4BQLi0VL
bomFQkhdAuU2KkWv6ZXCPyqFjlrqkTqHPfL1Sh+lz7QyV8NI8qe2Kj7MYv6EsYYp
+JPZ+hj8hqPTcvTpC1CwtWNMAc2uIQbUdmWjdkQGKXCt//1sKVc+H2a96Uz57mEz
YgZyvlJmvVNbyEpbVDALKTwqwYacvdHyerQtEh9jnrxzTqOV1S3x8WYtL+mwtzgK
UiFeqjJs8Kp7ou+YQ1sqxax8E7HBgBuAunVge+G3yL3Pt2PpvcQdSs6fqfY/mOHm
AtNAd2EQE4MgN9KHGITbrzE22gdruI52INOGbbqA58w/8lS56u9F0fIKjd8B9GRV
D3dOqIiKfLkSWxRXIQEL5OEgxP4zJTw8DXyPizqkEBkZPckHiujVk5xw2dGFeshI
SMviBpPiIZm86phyNm1Z3q5eErCcnH33RY8GEBXy/6RVzY1XxKNCrh1wSk/brn32
JYVB9U3eSRrmKicS0GMAuJgIbPhxq6G4DKGL2nx9rTDwF3DUhU9WNY61pDNwFf/A
5h5f17pdZv5NWU/GDo9x/J+FV2qtidIAR2eJBhedSV0f/IBzZ/s=
=c8eC
-----END PGP SIGNATURE-----

--------------g0YJb7s4lCp1wFlfMR0GB47y--
