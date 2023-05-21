Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B286170B068
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 22:53:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbjEUUxm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 16:53:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjEUUxl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 16:53:41 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 960F0DD
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 13:53:40 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f5fc210b4dso13042125e9.0
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 13:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684702418; x=1687294418;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aAilHkIcb6Fa4xwoJXQF3YLaldr9/hjJZvTfUdoftHA=;
        b=syneAgvuYUTLoRMK4f0jKCFFHHSWvjUP/A9zWwm87K3zRarPVAvdWmKJnf2qgCajks
         HzxCQVUqXJn+YyLwsqULfcaJbqcczz4I1RuVLLXC5xHs/joBtseghsl4/D+AMMTT5SxM
         g2c1dP29ElehSvXK69BJtIKBlOvLKNbmMzZinVpU1ZDp9FnpNFJX0bqiEcKKT8K2jnLN
         5OfX9gNkbQnxWmVFDpuvSTHPAnjWQitDvom1KV3kg4UBjwMy4D7EFohB4QraUwO4fQsF
         zThp+L5gwEt4OTJtM/C2WFIUkSWHTXbajNJtKCjtF7Idf0DuQII5QGHGIidi/yKEd+tp
         EwHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684702418; x=1687294418;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aAilHkIcb6Fa4xwoJXQF3YLaldr9/hjJZvTfUdoftHA=;
        b=fqhVq5us+PihTia2HQ41Ql7oaMcCS4F8iMZvV8bRZb5ORLU2TUbVM5pATOYKpx7lKk
         fvtaap/QYtf6CBamhUlfCdBG1uhffKnwLRU8SJKxg3aLIMxHSOFDfXNegSRUhPkIj1K5
         orz6OaxvZsiAMHvZgsbtNoA+e7cZp5V5CqXiUaiuISv1bXCVsgj003uSzpMnLHCJ4AuJ
         sh+rMTbrL9r02YbTHgwMWj9I4igt6PlbpudhgpL3KZo/kh/rAKC/M+36zPhcS+iFQUjb
         XZlxqfatyWAYEgKLHlSmTO11QOdKvFucJHZ5UoIWnZwzEutLHmRmsI+LYieTq7kWHbnD
         ng2g==
X-Gm-Message-State: AC+VfDwJui72K9uRPyQNaiKN6mYvdt3uEkyvApJE2hcRZF6upBSQ1687
        i60Z4o1E9rF0RngrzhMqRWM=
X-Google-Smtp-Source: ACHHUZ7LngHjLnH62FaTkw/CJeC462xM2NqaG0Rw44uA8UquDvqoq88qyvbFMcAU+lznnXpragt6fA==
X-Received: by 2002:a7b:cd01:0:b0:3f4:2174:b29d with SMTP id f1-20020a7bcd01000000b003f42174b29dmr6324434wmj.1.1684702418119;
        Sun, 21 May 2023 13:53:38 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e9-20020adffc49000000b003078a3f3a24sm5572356wrs.114.2023.05.21.13.53.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 May 2023 13:53:37 -0700 (PDT)
Message-ID: <806c6e68-6646-e42b-0ee0-a0fec1cc0291@gmail.com>
Date:   Sun, 21 May 2023 22:53:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: 2 spaces after the end of a sentence is the _right_ amount (was:
 [PATCH] iconv.3: Clarify the behavior when input is untranslatable)
Content-Language: en-US
To:     Bruno Haible <bruno@clisp.org>
Cc:     linux-man@vger.kernel.org, Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
References: <20230521103128.8472-1-alx@kernel.org> <18117042.sWSEgdgrri@nimes>
 <5d2a1776-66fc-4a76-a28e-31c613d3af3a@gmail.com> <2906989.o0KrE1Onz3@nimes>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2906989.o0KrE1Onz3@nimes>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Fnh0E7b6MiGeMHQHbCcF2o1J"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Fnh0E7b6MiGeMHQHbCcF2o1J
Content-Type: multipart/mixed; boundary="------------dD0utG4GiTnC1fd2Xc4ThFS6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org, Reuben Thomas <rrt@sc3d.org>,
 Steffen Nurpmeso <steffen@sdaoden.eu>, Martin Sebor <msebor@redhat.com>,
 Alejandro Colomar <alx@kernel.org>
Message-ID: <806c6e68-6646-e42b-0ee0-a0fec1cc0291@gmail.com>
Subject: 2 spaces after the end of a sentence is the _right_ amount (was:
 [PATCH] iconv.3: Clarify the behavior when input is untranslatable)
References: <20230521103128.8472-1-alx@kernel.org> <18117042.sWSEgdgrri@nimes>
 <5d2a1776-66fc-4a76-a28e-31c613d3af3a@gmail.com> <2906989.o0KrE1Onz3@nimes>
In-Reply-To: <2906989.o0KrE1Onz3@nimes>

--------------dD0utG4GiTnC1fd2Xc4ThFS6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Bruno,

On 5/21/23 21:37, Bruno Haible wrote:
> Hi Alejandro,
>=20
>> Please use semantic newlines.  See man-pages(7):
>=20
> Thanks for explaining. I wondered whether I should use one space or two=
 spaces
> after the end of a sentence,

That one's easy: one space is always wrong.  :-)

<https://web.archive.org/web/20171107164742/http://www.heracliteanriver.c=
om/?p=3D324>
<https://lore.kernel.org/linux-man/9c5c5744-dde0-b333-09e0-ba9d92aa96b1@g=
mail.com/T/#u>
<https://lists.gnu.org/archive/html/groff/2020-11/msg00076.html>

> but found no precedent for either style. This
> explains it :)

:)

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------dD0utG4GiTnC1fd2Xc4ThFS6--

--------------Fnh0E7b6MiGeMHQHbCcF2o1J
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRqhMYACgkQnowa+77/
2zIQIw//eq1nBHt8ow66sx8HTkfwQse0J2u38bEMiBgIVISLheTYZHpTDyQCdd7u
iKnXQGU8cq3zuas5XoQNQ44JdHhjtjuT7ZVJeH74BRVHETLeuIHH3qmzfvNSxjMr
RswxiZtw7ePQxRcXthvp056dzybOm0CQ3T2xv6qm9/UNjf2ivPxRJS4jHZ7dh6/c
4qkCAVKxh0/SxTtJmsp7DVGrfX5Y12M7KbzAqyQydU61BSE2xyuPkF8Y3mR0CaVf
sEjb54vADy5GnyhfgueX39FpRJENHUt6wC2r1xGthtQwAyQkeCVdPqEi91UmtFAv
fDu/ZowHi/0WVHsA783RBOmC4XcDK4OX8IHETCyVchiibPkUGN3bGJ8p7jQ3VChx
dNlbQzVoTzXA6VEkIZWwHL0iIF180/N65C8ARs2HBKKgt/A1tb/IJaoMFAEFkz3X
B+vkzUE+6pyCtcPRLTqYN6Qb3cq34hRe29IBhHPIaTe+YDCohDmeHNIJ9qEvf8wk
LvM8Vi7vWD9dTdkbBhk8yP1xBwY7QoozrrBLgizH4B6RHkdSje524k+EubtO9hbU
nH7Rv7jQYYhQvBa1aHymXY2ZH8oXLl1wECkWe6nfJS7StOE+lxI+HY+xcAhWJwBY
0RjbBMrlQxewGxfrjHnMhZjMyWqGPnF5FErGIxGcx9m3vOkF6gE=
=Q5m8
-----END PGP SIGNATURE-----

--------------Fnh0E7b6MiGeMHQHbCcF2o1J--
