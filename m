Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 410A053CD4B
	for <lists+linux-man@lfdr.de>; Fri,  3 Jun 2022 18:35:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235509AbiFCQfa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Jun 2022 12:35:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231305AbiFCQf3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Jun 2022 12:35:29 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DD662CDFF
        for <linux-man@vger.kernel.org>; Fri,  3 Jun 2022 09:35:29 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id h62-20020a1c2141000000b0039aa4d054e2so6650902wmh.1
        for <linux-man@vger.kernel.org>; Fri, 03 Jun 2022 09:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=os4Up5Su/sXS0PWXxVAF3ZCdG8db2IDG6rgWZYRa9Mc=;
        b=cToboXIRzATg7H95CghaGxcABYQKgAE1LlpJqD7SYrLzBVPAD6vLUelRaMmO9uRDZ3
         ++1Z7Rnfh5+C2bWleLByhWZyykafeVcZlH1oOlmB59gcAZRpjDqnLuJNr2K2z9VXiHAQ
         MJWgFSwEZk8v4VTFGp0CdUjg3f3XFRNmAnwFm1MLplrfuOJIGlGAV+c83H5orpFraW1o
         sTFv9pI8KVh/v6aofL2mi2aoy2FIwp/OqKOhGNf/PWkOPN6A2h7bykDBbabgwpSoENH0
         HyE3eyeaWIZJCMc4DR+4i0MS4liHoXUM34K+X1ddG8eX+rjM9a1vKoTW/Y88rJ6nVh1t
         E+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=os4Up5Su/sXS0PWXxVAF3ZCdG8db2IDG6rgWZYRa9Mc=;
        b=X3+pmI4rfKRhBUydQME2I+xIwToOcSeqMTUc23+knFpkMWvPpUiWOrSA7V+db2/DJl
         s9TY0RD5nUJUYK0aHwKVdOqFzrT6L9KfWWgZwGz9ZgwpJtr9zPDte3k+VQLLYfE2TyC0
         JyL6gzDmSJU/i03mybGgTIBypAZaEjan+yrwBhVg37IeRhDsB8hnkVgYRrTQF48oeSfl
         QV3oL4qXBWA+qbGYZRBJK0RHLugk4dx/CIS+UT3ibwF4TLh/rEJI2oTJGVQreczEzjRV
         cJ6zb482FrS/v7ndomJbHLLAxtaZEB/QnDkvkYTQW1iGvyJZep6jfYwb4168TXNHrKzz
         nDKA==
X-Gm-Message-State: AOAM532/2RHoixmq/T1kYnf+pLdIF4vz5j04Gap1LMZlzpdmzCnY1rVV
        e3kRL+8EZjShjjGH6Hote/Xyp/FOvak=
X-Google-Smtp-Source: ABdhPJw+10vvMtTTdYnsAdoRGCB9ztN6WE310hJ4FLKv68iF5LwWXQtUxVCAvfJc9ES/X7ECG4nF/A==
X-Received: by 2002:a05:600c:3c90:b0:39c:1f14:d2ba with SMTP id bg16-20020a05600c3c9000b0039c1f14d2bamr15040515wmb.43.1654274127530;
        Fri, 03 Jun 2022 09:35:27 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a4-20020a5d5084000000b002102f2fac37sm7928393wrt.51.2022.06.03.09.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 09:35:26 -0700 (PDT)
Message-ID: <71967548-c0d6-2997-4058-20bad59e7084@gmail.com>
Date:   Fri, 3 Jun 2022 18:35:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [GIT PULL] Landlock changes for v5.19
Content-Language: en-US
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20220523161245.2451265-1-mic@digikod.net>
 <165342401733.5255.6026414404497432650.pr-tracker-bot@kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <165342401733.5255.6026414404497432650.pr-tracker-bot@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zecxYuVNFvUunZEXCH6ECd7P"
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------zecxYuVNFvUunZEXCH6ECd7P
Content-Type: multipart/mixed; boundary="------------PH9B0BG0JYbZf1lJrpX1CdwI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <71967548-c0d6-2997-4058-20bad59e7084@gmail.com>
Subject: Re: [GIT PULL] Landlock changes for v5.19
References: <20220523161245.2451265-1-mic@digikod.net>
 <165342401733.5255.6026414404497432650.pr-tracker-bot@kernel.org>
In-Reply-To: <165342401733.5255.6026414404497432650.pr-tracker-bot@kernel.org>

--------------PH9B0BG0JYbZf1lJrpX1CdwI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlja2HDq2wsDQoNCk9uIDUvMjQvMjIgMjI6MjYsIHByLXRyYWNrZXItYm90QGtlcm5l
bC5vcmcgd3JvdGU6DQo+IFRoZSBwdWxsIHJlcXVlc3QgeW91IHNlbnQgb24gTW9uLCAyMyBN
YXkgMjAyMiAxODoxMjo0NSArMDIwMDoNCj4gDQo+PiBnaXQ6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbWljL2xpbnV4LmdpdCB0YWdzL2xhbmRsb2NrLTUu
MTktcmMxDQo+IA0KPiBoYXMgYmVlbiBtZXJnZWQgaW50byB0b3J2YWxkcy9saW51eC5naXQ6
DQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvdG9ydmFsZHMvYy9jYjQ0ZTRmMDYxZTE2YmU2
NWI4YTE2NTA1ZTEyMTQ5MGM2NmQzMGQwDQo+IA0KDQpEbyB3ZSBuZWVkIGFueSB1cGRhdGUg
aW4gdGhlIG1hbnVhbCBwYWdlPyAgSXMgdGhpcyBhbHJlYWR5IGNvdmVyZWQgYnkgDQpwYXRj
aGVzIHRoYXQgSSBhcHBsaWVkIGZyb20geW91Pw0KDQpUaGUgbGF0ZXN0IG9uZSBJIGhhdmUg
YXBwbGllZCBmcm9tIHlvdSByZWdhcmRpbmcgbGFuZGxvY2sgaXMgDQo8aHR0cDovL3d3dy5h
bGVqYW5kcm8tY29sb21hci5lcy9zcmMvYWx4L2xpbnV4L21hbi1wYWdlcy9tYW4tcGFnZXMu
Z2l0L2NvbW1pdC8/aWQ9Mzg0NTRlM2ZjZDc4NzZkY2QzNDQxZjRiYjg2MjQ2YjlmM2I4Zjlk
YT4uDQoNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------PH9B0BG0JYbZf1lJrpX1CdwI--

--------------zecxYuVNFvUunZEXCH6ECd7P
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKaOE0ACgkQnowa+77/
2zLRnQ//WUYQMhJE6LASDnyq5vEVw4ITYs/WwbP0FsnyfoU7vaH1ZDN6aaOVLn9n
hPLUIP6EJRe6j19vPh8oCndSkGYOw4CBY7FUkkZx5UiuhjhnrameNnYEa8sYESXg
adGKaAw/123kBGlXbGiyKMhabBQa0yu6sPukzVjp0uT22OCNUfdni4xxIVhbTYd+
s/uoAcR0Slv3vBVUrr+vBqoEOiOQwmwL7XEpb3t9i7uoGLiM3kLHRHiz280rY12/
/Yi8p8Kdo4EMpB7mdrLGt9O7IsjHHwC8cCCs6VuPgJcUW5nzH95MVB8Uskbcqc6q
YV4YQYtb9Oz2i3LQAWax/vm2yXd6vOZOylv6RFC8YnTDFa1TdbDFRJ2JX08kmuWr
idMGLkqwzb6NTMkrrgpxEL77GLoLmqTGg8zDQ6WvyhX8n69QesnZURNCvlcAgt4u
nu0zCWF1Bc4ayciAacY15g5tglI4t8mFXnfqw2vDU3tDYywml1xgwrqkeo420dj6
6PP07a+Bv9wyt5eglvBYva7F0ZHl2/lEk4JSMAOEieGVxKPquo7nIGSIJlFaEGCp
0STPxrUAXMhJXIApA8LYN9twnXW+sTKTXlHYfoUz0TFr9iWU/U532mtisR92Hj5N
XA8O/3EFFTv93ee1celsdChl9iuSW5HXNRa0TRkS5tSvCUWXkL4=
=rWVh
-----END PGP SIGNATURE-----

--------------zecxYuVNFvUunZEXCH6ECd7P--
