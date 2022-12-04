Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C45DD641F68
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:10:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbiLDUKm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:10:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbiLDUKl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:10:41 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67B7713DE2
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:10:40 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id h12so15747193wrv.10
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UzjGm1mODEpowzdFQe6uWvJEKogRNvuuZroCdrPn3cU=;
        b=S6iNguVYoPTj4Jt+My/YC7URn7JYAP7lv6S3DHebMqV0lBVX60msA/Cz2DgbS6j3ul
         Jju3owJJi7Y8zPPnq7gmpqsUBFUEPBksw1noBCNbn5jm+q2Uf2iafOyiYC2ZZmlQEPy1
         aSKJfMXoKBU7rJb37MSmT1cakjqYfLpApG8MLhu6EKFZDlA0qPOvYftuNf0vJa/qRdZe
         1pvpcOotwthgVfbtNkJO4dK58eKM+IjJAa1Ngmnjc8R0zFEH8jV7IMpU+cnxt7j2tXg1
         GwJEAjwH/2i8nxsy/4L/BWaqX1M1CzQVY310SXTmXi0ONLanx10K4Lt8x4onYJlN2NAq
         OoQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UzjGm1mODEpowzdFQe6uWvJEKogRNvuuZroCdrPn3cU=;
        b=2LntYYzq1IJKLlbwXrXnlD4i692JRV7fa2BtWhzB26kiT+YPh5WN9PJS/mvstAg5Vv
         APKOn5twtYd/fUkxMYPS52sTLG0abhK/vDHq+r4s57d+cGlUQ7XueZa9/EChLu3eoxOH
         WsinzIixt051pz6ALDDTp8B77CO/xF1vnwFd9SLqOwJOqgB7smU0cdHrgniq6COyi1Ax
         UApa+K5hT8SltLHwbKggjKEJlCS8zLyitC0vToOxcLA3koX1mDqelaKsznJBhLtdvEow
         cUdMgV0TcHEHhOw+e7OmKznlKKJT0YQDkahRU4MM6WPnZVlaNzP6JZ4dmCNK7a5SEGH5
         p7rQ==
X-Gm-Message-State: ANoB5pm6iWsPe5pPbVlPa1Io27oxdwfUxaQiPYL4Epd6vdEDsVVWNgbV
        RYUQPj3COxxnP3Xpl9vbr04=
X-Google-Smtp-Source: AA0mqf5Ci4HNOF+bEYpYKZROT3bk9kZdoV0Pdk1AH9carnyV3Y/YzBxxg5Vk/nMDUlxG3JZajAI4LA==
X-Received: by 2002:adf:ee82:0:b0:242:5786:ad59 with SMTP id b2-20020adfee82000000b002425786ad59mr3491024wro.612.1670184639003;
        Sun, 04 Dec 2022 12:10:39 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600c199100b003c7087f6c9asm20388912wmq.32.2022.12.04.12.10.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:10:38 -0800 (PST)
Message-ID: <ad60d4fb-aeeb-3527-ec87-0156fff149e0@gmail.com>
Date:   Sun, 4 Dec 2022 21:10:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page ttytype.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090718.GA854@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090718.GA854@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ylKzWkVaLT03igiR9q0uMQEn"
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
--------------ylKzWkVaLT03igiR9q0uMQEn
Content-Type: multipart/mixed; boundary="------------N8y8C7si9XrBkB31hb25ut4T";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <ad60d4fb-aeeb-3527-ec87-0156fff149e0@gmail.com>
Subject: Re: Issue in man page ttytype.5
References: <20221204090718.GA854@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090718.GA854@Debian-50-lenny-64-minimal>

--------------N8y8C7si9XrBkB31hb25ut4T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIEk8L2Rldi8+KSBwcmVmaXgg4oaSIEk8L2Rldi8+IHByZWZpeCkNCj4gDQo+ICJUaGUg
STwvZXRjL3R0eXR5cGU+IGZpbGUgYXNzb2NpYXRlcyBCPHRlcm1jYXA+KDUpL0I8dGVybWlu
Zm8+KDUpICB0ZXJtaW5hbCINCj4gInR5cGUgbmFtZXMgd2l0aCB0dHkgbGluZXMuICBFYWNo
IGxpbmUgY29uc2lzdHMgb2YgYSB0ZXJtaW5hbCB0eXBlLCBmb2xsb3dlZCINCj4gImJ5IHdo
aXRlc3BhY2UsIGZvbGxvd2VkIGJ5IGEgdHR5IG5hbWUgKGEgZGV2aWNlIG5hbWUgd2l0aG91
dCB0aGUgSTwvZGV2Lz4pIg0KPiAicHJlZml4LiINCg0KRml4ZWQuICBUaGFua3MuDQoNCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------N8y8C7si9XrBkB31hb25ut4T--

--------------ylKzWkVaLT03igiR9q0uMQEn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM/r0ACgkQnowa+77/
2zL6fxAAjmMaskAYF7B6hseCRv9Ga8dV5OsbfNdCN/VK78mZ63ZENT7ckzKsXNQ0
Vep+KgTvnfVkSspak6zB4dK+srHnk27S1mTENSqvmVGAzOqcFIhOoQQ6ym7M7qo0
qBm4IJfoVblpXjwAlII2BMD4XFbS9aUsU7U02EIIhnmWlqNFdEDRXQAOuSI4fw+r
nU7F3lKks5d7KYNKQF/jOe5whagPqKxTHL4HXoH0hrEzQAynqez1+dv6u0JisUAk
VH9f5Lf+GvnFru3IlZmsJE+mg1VPXf1BX6gwefWD5CnQu83CVrP0+YQmyPpdynmC
+lkG3fl7pAFZ7NoXl52c3wv1lP+c/Gx882xc3q79gORi7SEpTpkZNhmrmWqFAxvw
U/fumwLurLNf2Dag/BaCkykXP8MtwCplwiUdxLolals+NqSWttNXcUMvJyGxVYc3
l9TTwkMNpxVegaIAWa6eGsi7GRjvv7+/J8CLzhWE9LIdHc/xcqVCZKTk/DwE590o
nSKnI4wdOH21gnnmMXWyNRlGlJ1I5RVVga41YZTmiQsV+WXhBoZqbd2r0rl/5lQA
cDE0YFRy3fja8IJ9LrQbEIcuIH7VJIRNq30Bl0CEJYPC3LZQE9XZmeA7PWP0/G9q
lIimZBwE4U9pEW08GWmz64FSWCEzVMQg6mHE9PUxaEo3NC6wMoo=
=469l
-----END PGP SIGNATURE-----

--------------ylKzWkVaLT03igiR9q0uMQEn--
