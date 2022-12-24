Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A1B16557F4
	for <lists+linux-man@lfdr.de>; Sat, 24 Dec 2022 02:44:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236885AbiLXBoU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Dec 2022 20:44:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237082AbiLXBn6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Dec 2022 20:43:58 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C5C049DEB
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 17:34:40 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id bg10so4613688wmb.1
        for <linux-man@vger.kernel.org>; Fri, 23 Dec 2022 17:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=w+6azl8Bt0oxp0ARZACCqT0Z6eddnsC/CHYNPoKk9Xc=;
        b=aW9WVQFXsMvTUXoq75mDHBHmwFkJCmDebq6tk9PUhA6xAyabDYpfeJsGI2jx7bXId6
         8Sx+lNTuFUC7MXOf8O+l45KafKUdzPiyqEvz1b1FeuIRSwqxKqxHuU2+LOWr3kBAqBtE
         wz+iQuRQ6dY6HSv60nXmhMeLV8YrOMHLjls0cm027zZSP7Lk2NFM71CP24ibGGk96Js0
         NlzsdXy6/+qLej8y9XdveEdcjjj1sznS1SY9a7R6/aiPGdey/07sFFcJhXEZvaA+3X8D
         TORRNKFuH3ld6dPIp+qJLjFnbpK6VYqjSDVxDcrGfGYoxpxXGWd/x1sfVQ7nldSExOec
         kllQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w+6azl8Bt0oxp0ARZACCqT0Z6eddnsC/CHYNPoKk9Xc=;
        b=isAKzm/dAwtPiLOvu/YJi0PDk8AYLQzenPWSiBsXqg4i42uAxPvoKn23pn2v7Pn+Ia
         JHq02tCBjZG5/3RLz6VnC0peI1L+RdWGRge+OJyQ2H+S/aLAqafYKj4P534eGRAgVih4
         qs394jM5j8CWu0Cb3m0BsQ67YHlBOB0nJwxCrAAjV3Ev2P9mzXpE/0oOCo2QiwYg8F+B
         exhpmcuKjms8tFn1CkTfZtNdaPhbz8Zgk6og+6rDCHH4LO1Thj1PLlJw0xCMZsqo38QV
         Mtdymm20hfzpx8BbBmz3B7u5oZ5wgPrQgvmhiByeXWeejapBLwuB6Bewiv1zuWpGH603
         TztA==
X-Gm-Message-State: AFqh2kpaBcD4JQHQXvUMwDCQfYrGY9CCd9R3zkHgBwFI5bIV92eKW8xv
        FFp36af9GXO5xnvjrAocPiV+Td94jTU=
X-Google-Smtp-Source: AMrXdXuAPR5zoHbJoWteW+EN2sito0njz7eqdWn+xd4C6T1yVJpXWwGUM9TlZJ+kpSOppHSXyogG5A==
X-Received: by 2002:a05:600c:4e48:b0:3cf:5d41:b748 with SMTP id e8-20020a05600c4e4800b003cf5d41b748mr11171858wmq.36.1671845664639;
        Fri, 23 Dec 2022 17:34:24 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y22-20020a1c4b16000000b003d01b84e9b2sm6035024wma.27.2022.12.23.17.34.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 17:34:24 -0800 (PST)
Message-ID: <bc608529-e8bf-ba91-8206-986d880a595f@gmail.com>
Date:   Sat, 24 Dec 2022 02:34:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To:     Deri <deri@chuzzlewit.myzen.co.uk>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: man-pages book: Using stdin/stdout more?
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gZS2SQ6Vm5cC0YJDVXzX0UiH"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------gZS2SQ6Vm5cC0YJDVXzX0UiH
Content-Type: multipart/mixed; boundary="------------00n64fYkYRTclysVnTL0sQ7F";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <bc608529-e8bf-ba91-8206-986d880a595f@gmail.com>
Subject: man-pages book: Using stdin/stdout more?

--------------00n64fYkYRTclysVnTL0sQ7F
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRGVyaSENCg0KSSB1cGxvYWRlZCB0aGUgc2NyaXB0IHRvIHRoZSByZXBvLiA6KQ0KDQpX
b3VsZCBpdCBiZSBwb3NzaWJsZSB0byB1c2UgYSBwaXBlIGluc3RlYWQgb2YgdGhlIFQgZmls
ZT8NCldvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIGdlbmVyYXRlIHRoZSBQREYgb24gc3Rkb3V0
Pw0KDQpUaGF0IHdvdWxkIGhlbHAgaG9va2luZyB0aGUgc2NyaXB0IGludG8gdGhlIGJ1aWxk
IHN5c3RlbS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------00n64fYkYRTclysVnTL0sQ7F--

--------------gZS2SQ6Vm5cC0YJDVXzX0UiH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOmVxUACgkQnowa+77/
2zIGlQ/8CozQe21T0y3kyxytrH0BJh9i7R/ZAesiFm6U5cgU3WYjWMeIPyYKhAu8
5M7Up3aTz/9SsAxwscgpJApViNarmiZizIpVdtbpU9Uv0tu5yUllCvKcIy0WASG3
Sbd+zX3ETsGxWeOnqi1RYgzUxOykqpdwpoDiKhWMjjfpZOb4xuCf920ZNO1cBrDl
L2UcJ/wUpzvzK537XOaUxRyBCu4mmzFQVLho3FAVKQ/yxg8HNv6+ygUs9dSzQHRc
pLqDvESxHjsmkieuyzLi+r7ZftobJv07zOzxg4UYETXTQH8KXc7Wg5KhCr4AWJSx
qFUJvld8VgB9eigZak0jcuqWSXZVHGejPILQXgGr9Jc3NFvdmOW6o0BhUiScknv6
HonuIj4fv9z+MtAulXLETI8wwDrMQuI9RYVwSkTRcAfDSd0tltfiGRVmGXVQP0jo
BNBxTl016ZocYxlQVYcoIDIC94pI/BjtwUB3mHDrLyjQ/UpT3vvmS63Ax6NOBu/A
N6GZnCJpub9lY1DnACX8gmoI/Kt/ZCY3Umr052jaRr75/T/cCCWxiZ6sssf01Owb
PdFS4NRETc4KhYsfKEwXv+83ZgnKUMUE+cOaDvYTAgqxcAfDpsXlGjFxT0inOMjx
THNSpTpTdGhAAdMpO6amwylsdwx6rXtJ7XXZn2C7lw82qmirmq0=
=BUrK
-----END PGP SIGNATURE-----

--------------gZS2SQ6Vm5cC0YJDVXzX0UiH--
