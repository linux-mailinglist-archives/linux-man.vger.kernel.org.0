Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDB2D641F6B
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:11:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230288AbiLDULw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:11:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230315AbiLDULt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:11:49 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 482DA13DE2
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:11:47 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id bx10so15866029wrb.0
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=auKa5M0o6oTixsUAkxRV4nEbsj941pBszZHmbp4m/jY=;
        b=qPY9foF+qg8e9mExQQvtg7qTnCo/hhAfJRENWidIMQbZb3MejzK/JGM6dSw2B869aS
         nPxM7/hZN37YKMeO4NMlbignQSfUbFrgk46aqPSInV3h70sPvZdm0owLNIynmfs58E+G
         RKKXsnfJec2gm1P9PQIzQVS4IyUGk0NutGwp7xxcI8wfTw3CMgE5ScxQCfMAKD0JT5u6
         PZuAzZ6lfCSmkWzRDwkQbvK6O2b2sbb/r3Vp1EKfTgh4pbHKxiDZanijIVABzJarZPB8
         2XcB9dhA7DfgWmb+IqShapzBpxUwLhn3rShWd5RL4NOSwDc/vgFuEszDZSe1KJt6G++n
         4X8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=auKa5M0o6oTixsUAkxRV4nEbsj941pBszZHmbp4m/jY=;
        b=B8wuKI0C31S6dRQhI0g66b+cFxFEn3/LVdr+uVGYh/pkdgyLwb6+EKO261GC35396u
         2yW1YG+h16ZXi9LuoqPrvUs6G9+gbTI4u7h8R+qImtWJ33kMZWbaKSxL2U5c6stTizV1
         JmlC6KSrBs8v07MSaP0CzcIeBlmhlff9INFRoKJuPEzwrzT2p/dMhS0AWdgFRkgR9zjC
         ji1TCIB3vprxfnbUhHmKq/YGEJ8s994B0Y7WwyYhLxhhjK9CPEKRy7Ye6wUfBQDIhJKE
         EBh7gw1h16v4Ng356LH+NfoqzvtuUBoD4WByf/MGMQ0bqoRNOYVndMLtfZq/hIjUeT78
         vQ1Q==
X-Gm-Message-State: ANoB5pmOp8O4jcYkGjPrhETQntT+kpBaC+UoUNIqjrYo4SZJEaWmTB8u
        1o2b67aXhPHixR7GMIQM9ko=
X-Google-Smtp-Source: AA0mqf6izn/esZLPDqXkVKAxf+/Q1BG2lINxD3cE4mqesMEWUym1tLbdYGlVM5lhmobXinaUm20mpQ==
X-Received: by 2002:adf:f146:0:b0:242:624:8cc5 with SMTP id y6-20020adff146000000b0024206248cc5mr27530148wro.59.1670184705881;
        Sun, 04 Dec 2022 12:11:45 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p14-20020adf9d8e000000b00236b2804d79sm12483043wre.2.2022.12.04.12.11.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:11:45 -0800 (PST)
Message-ID: <954ea55e-517c-6fd1-265b-9fe1fd9e4721@gmail.com>
Date:   Sun, 4 Dec 2022 21:11:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page towctrans.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090717.GA829@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090717.GA829@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tquaWh3ZyxRWhbH0FQ0GpBmp"
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
--------------tquaWh3ZyxRWhbH0FQ0GpBmp
Content-Type: multipart/mixed; boundary="------------yTfwc9FdOH20HlTYhF4oqDAe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <954ea55e-517c-6fd1-265b-9fe1fd9e4721@gmail.com>
Subject: Re: Issue in man page towctrans.3
References: <20221204090717.GA829@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090717.GA829@Debian-50-lenny-64-minimal>

--------------yTfwc9FdOH20HlTYhF4oqDAe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIHRoZSBCPHRvd2N0cmFucz4oKSDihpIgdGhlbiB0aGUgQjx0b3djdHJhbnM+KCkNCj4g
DQo+ICJJZiBJPHdjPiBpcyBhIHdpZGUgY2hhcmFjdGVyLCB0aGUgQjx0b3djdHJhbnM+KCkg
IGZ1bmN0aW9uIHRyYW5zbGF0ZXMgaXQiDQo+ICJhY2NvcmRpbmcgdG8gdGhlIHRyYW5zbGl0
ZXJhdGlvbiBkZXNjcmlwdG9yIEk8ZGVzYz4uICBJZiBJPHdjPiBpcyBCPFdFT0Y+LCINCj4g
IkI8V0VPRj4gaXMgcmV0dXJuZWQuIg0KDQpGaXhlZC4gIFRoYW5rcy4NCg0KLS0gDQo8aHR0
cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------yTfwc9FdOH20HlTYhF4oqDAe--

--------------tquaWh3ZyxRWhbH0FQ0GpBmp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM/wAACgkQnowa+77/
2zIGBw/+MupvW4vjDexclGe3aiFapUUsWYFtN2QB6w0nSb0KT++/A5jFgu+HG0z6
jSCD3CChPNwqzPxSQF0hxqwxIcTHJ/AYpvJFK+f+RO0aZX3XM57LoBfMO3lT9yct
sdVJM4MdgojZJoiDdImpSFUZXMCs/wp792RT2ODMRUybsdixhESiycLIZxl2I6vx
rRkYkasiX1veSaA1oG0eHhbQN+Woj8R0nxrbrHAldKUKQw7u8kj7nnrrzd4wC2BN
TpHK72KKoPVB/vj3zwqiUwQFM9Qtrc6FypAA9dS322m+FsWyKV7kdgBFVhsO5PwK
ERNZpL5H5ZARjT6ZqHi9N5MeakASZXU7T9SEpQ/SAQfKcSj45wwO6k/MTeoSk2NM
MC2rrCq5UMYsoRTJ2ptryrXZgmso27IujhFuuXiNlYpxM4KWmVc6DiZwMsm2/c0q
tKy+Xw2CKNEekLFyOSbl1w7NjWl3G9r/ilyQDq4H3305TTLWoR/4X5r2F/urFEHO
LZ95VaQ+O9jPGPsOVzxBqxkNNyGBSASfPkWoIK+KsuixLIyKc20r0k1FRESFKn4M
82K27ZhTD+Bo/fMkuBnhXc/vQep/2f8CgH98GZd0SaztIrzjVkOI778+S7PmMB3t
kPJLjSa+17szk39BfKcervWTclej5brUtt4te8ZgJWtAjX5tPp0=
=EeTT
-----END PGP SIGNATURE-----

--------------tquaWh3ZyxRWhbH0FQ0GpBmp--
