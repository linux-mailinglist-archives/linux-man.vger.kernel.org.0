Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D988542F5A
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 13:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238364AbiFHLjO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 07:39:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238325AbiFHLjH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 07:39:07 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7DFE3B291
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 04:39:00 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id x17so27988599wrg.6
        for <linux-man@vger.kernel.org>; Wed, 08 Jun 2022 04:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=XUGXaO503exhJYI4EGWmDIo5FU8wTtmnNxXhV2o8vgM=;
        b=nDtUG3NL+Cv26flEBImbv6sRSjJYwyiiqIdNxk0HHnhuNFsKKjFJyMZIxsLF/zG5xT
         QzFyX/XTVR6onoN+H52y+43HXAvCbYRxOlge8aT5a1La8Dwp/CLvppYvzYTGIXXFKVJB
         VPQwDuMJjkk4mu4+aXnSAhxWts3Xmvbf83GX6UBKOdZnoNswh4qZvgC81SZqkaFYVxYU
         5lGrxVMCi1JUn32ix+4v7np04c2u2Cys4vd56e+f8wCnA1EZd5WuaIb3cGjj0B+Qc6sZ
         evH85eYIHhV1Kqrx6ed5Rv4w2wIl5RkUkJqzmj3eec/UAz8zTnhNRqlvhZ8hBYx3vV05
         2rrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=XUGXaO503exhJYI4EGWmDIo5FU8wTtmnNxXhV2o8vgM=;
        b=6CAhO0ZtddA/g3PW32HmJxtCsLhBnDnzMJ+W1FNMpS5zF0VhOWgXsHxnO67q8rIJeD
         1lSVleeA5dpmdYR6oA8O7tSB6wOPpdRlswcZyVy/y4MX0ROKuZ76i9gAh8wuEvXd56Gk
         rvQ+ay5eoQmIc73KCULZwYlNzUNRhJs9cGgi5759ZTZ4tQWCDPCXln7HP52vtQ3ag1CD
         uFtsGzxFG19jTsFYtx+wt4K/5BVrYZyGgMLLx2dKDI9Zmqw5n+ae/SjAOw++aoVlkwby
         SHVBICz3qkY7Tci8dRTdjZ/yMrr9+qzeIsJ/8YsanTXFNf7jy4ZpnibsV1eNuvduzujl
         iwpA==
X-Gm-Message-State: AOAM531PKUEs20rXHkxu7slxGyx+OKLHZfDEnQqj++tqVG1n6GvtQK4p
        EAi6nouE05NBGZMFJffJ1QI=
X-Google-Smtp-Source: ABdhPJyQ9OJBpOEpJ5dQfdaRbNJy7iLAAYXV1NbA4t9+2IoP5nogyWR7XmDqQefGbUYVIGxnkh9hHQ==
X-Received: by 2002:adf:ef91:0:b0:218:4e7c:cbbe with SMTP id d17-20020adfef91000000b002184e7ccbbemr9582711wro.710.1654688338656;
        Wed, 08 Jun 2022 04:38:58 -0700 (PDT)
Received: from [192.168.157.138] ([62.77.182.180])
        by smtp.gmail.com with ESMTPSA id g19-20020a05600c4ed300b0039c4506bd25sm18950175wmq.14.2022.06.08.04.38.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 04:38:57 -0700 (PDT)
Message-ID: <08d70162-ab3d-faf7-ccf5-3bd55dd810dc@gmail.com>
Date:   Wed, 8 Jun 2022 13:41:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: man-pages maintainership (was: Re: [PATCH v2] madvise.2: Clarify
 addr/length and update hugetlb support)
Content-Language: en-US
To:     David Hildenbrand <david@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>, linux-mm@kvack.org,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
        Mike Kravetz <mike.kravetz@oracle.com>
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
 <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>
 <fef84382-8fd5-92f6-5625-60852c32ea72@gmail.com>
 <1257e092-79af-3624-2f6a-fb5fd69e5c18@gmail.com>
 <7eb14472-d269-ecc6-1ef4-6ea81949efb1@redhat.com>
 <b961003a-0e32-cc6b-9f87-66ae21d37f35@gmail.com>
 <9915bba2-ca15-aa4d-eab7-686cd991cd62@redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <9915bba2-ca15-aa4d-eab7-686cd991cd62@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MrQiWbNTr8h9cp7NrVjn7bda"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------MrQiWbNTr8h9cp7NrVjn7bda
Content-Type: multipart/mixed; boundary="------------ZeRiTy98rjN7RUDkMBXRlI1i";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: David Hildenbrand <david@redhat.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org, Axel Rasmussen <axelrasmussen@google.com>,
 Peter Xu <peterx@redhat.com>, linux-mm@kvack.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <08d70162-ab3d-faf7-ccf5-3bd55dd810dc@gmail.com>
Subject: Re: man-pages maintainership (was: Re: [PATCH v2] madvise.2: Clarify
 addr/length and update hugetlb support)
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
 <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>
 <fef84382-8fd5-92f6-5625-60852c32ea72@gmail.com>
 <1257e092-79af-3624-2f6a-fb5fd69e5c18@gmail.com>
 <7eb14472-d269-ecc6-1ef4-6ea81949efb1@redhat.com>
 <b961003a-0e32-cc6b-9f87-66ae21d37f35@gmail.com>
 <9915bba2-ca15-aa4d-eab7-686cd991cd62@redhat.com>
In-Reply-To: <9915bba2-ca15-aa4d-eab7-686cd991cd62@redhat.com>

--------------ZeRiTy98rjN7RUDkMBXRlI1i
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRGF2aWQsDQoNCk9uIDYvOC8yMiAxMjowMCwgRGF2aWQgSGlsZGVuYnJhbmQgd3JvdGU6
DQpbLi4uXQ0KPj4+IEhlaCwgaW5jbHVkaW5nIG1lIDspDQo+Pg0KPj4gV2hpY2ggcGFydCBv
ZiB0aGF0IHRleHQgaW5jbHVkZXMgeW91PyAgImludGVyZXN0ZWQgaW4gcmVhZGluZyB1cC10
by1kYXRlDQo+PiBwYWdlcyI/ICBPciAibmVlZCByZWxlYXNlcyI/ICBPciBib3RoPyAgOi0p
DQo+IA0KPiBBIGxpdHRsZSBiaXQgb2YgZXZlcnl0aGluZy4gT2J2aW91c2x5LCBJJ20gaW50
ZXJlc3RlZCBpbiB1cC10by1kYXRlIG1hbg0KPiBwYWdlcyBmb3IgUmVkIEhhdCBMaW51eCB1
c2VycyA6KQ0KDQo6KQ0KDQpbLi4uXQ0KPj4gU3RpbGwgZmFyIGZyb20gYSByZWxlYXNlLCBo
b3dldmVyOyBJIG5lZWQgaGVscCB3aXRoIHRoYXQuDQo+IA0KPiBXaGF0IGtpbmQgb2YgaGVs
cCB3b3VsZCB5b3UgYmUgbmVlZGluZz8NCj4gDQoNCk9rYXksIHNvIG5vcm1hbGx5LCBNaWNo
YWVsIGdlbmVyYXRlcyBhIGNoYW5nZWxvZyBmcm9tIHRoZSBnaXQgbG9nLiANClRoYXQncyBk
b25lIHdpdGggYSBzY3JpcHQgYW5kIHRoZW4gc29tZSBtYW51YWwgZWRpdGluZy4gIEkndmUg
bmV2ZXIgZXZlciANCndyaXR0ZW4gYSBjaGFuZ2Vsb2cgYmVmb3JlLCBzbyBJJ2QgbGlrZSB0
byBkbyBpdCBhcyBjbG9zZSB0byB3aGF0IHdhcyANCmJlaW5nIGRvbmUgYmVmb3JlIGFzIHBv
c3NpYmxlLiAgSGF2aW5nIE1pY2hhZWwncyBzY3JpcHQgd291bGQgYmUgbmljZS4NCg0KU2Vl
IGNvbW1pdCBhNzg0NjYwOWRiMjc1MTY5NGM5OGZhYTk3NTY1N2NjZjk5MGE3NDdhIGZvciBh
biBleGFtcGxlIG9mIA0Kd2hhdCBJIG5lZWQgdG8gcHJvZHVjZS4NCg0KDQpJJ2xsIGFsc28g
bmVlZCBhIHNjcmlwdCBmb3IgdGhlIHRpbWVzdGFtcHMsIGJ1dCBJIGNhbiB3cml0ZSB0aGF0
IG9uZTsgaXQgDQpzaG91bGQgYmUganVzdCBhIGZldyBzaCgxKSBsaW5lcy4gIEknbGwgd3Jp
dGUgdGhhdCBzY3JpcHQgdGhpcyB3ZWVrLg0KDQpUaGFua3MsDQpBbGV4DQoNCi0tIA0KQWxl
amFuZHJvIENvbG9tYXINCkxpbnV4IG1hbi1wYWdlcyBjb21haW50YWluZXI7IGh0dHA6Ly93
d3cua2VybmVsLm9yZy9kb2MvbWFuLXBhZ2VzLw0KaHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8NCg==

--------------ZeRiTy98rjN7RUDkMBXRlI1i--

--------------MrQiWbNTr8h9cp7NrVjn7bda
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKgivIACgkQnowa+77/
2zI9DhAAnMwc+4xJ9LPlfqJr89wy6xPxOHNb+B2NmZ/vMUkpgninzCXU9UvE4F/+
Bg2B8HguN0svpn/FuHL2hDOOPueYz/951R3jU+sx+s5txqH4/qKucdJW09Re1z1Q
eZ4XLC8SLse/yG/U/HxbPqEiOGdTZgChyhLZxpA4YzpKBukzh2GTOeiPwfIsLhwn
+lee7R0deC9eBBOlo8Q//IJgrT/NkB19Ekp3tklohdwf6FUzA06jmo2R8C2DiPM/
GIr2R92p6X/vfSXBVrtdGoqdfFawlc2h8mghnNzJ6cb+1z6Bgjl/zptmboycR5ta
xF2zXw8dbEPZ/qDGgpZgPzeioaG9aou5vF+wR/zcebB+0sGAIiY2hVmP5OX0vuIh
1GG5b9X/30LOCoEjZfNY8S4ILELav6YBveN/kFTeBFNr7pJL7IINp0CeET82Lq4R
0NiGRU5/hscDF3uKao/J4pPYsCnQ63yYXivb1EmV19D9pc4O00lDOKZsafwAsE1T
aDugcvpEo/tYJ7IkWjaDWTOLXM5FGmrfBcj6KAf6hqO6gQ9lskt438h89tMVQNRy
IrZNQN4OIVBTR4Okx72etJk6DAVH1C6Q8RJy18JDq0UhJHhxKqqiwnGV+AOz8Cfp
Cj563n6owj/ZZPklNrtVZeA6NkqQB59lBlEH9YZkfWImc+tGpts=
=3f7w
-----END PGP SIGNATURE-----

--------------MrQiWbNTr8h9cp7NrVjn7bda--
