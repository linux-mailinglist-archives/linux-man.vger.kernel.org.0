Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1707153CDA6
	for <lists+linux-man@lfdr.de>; Fri,  3 Jun 2022 19:02:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242161AbiFCRC5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Jun 2022 13:02:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344176AbiFCRC4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Jun 2022 13:02:56 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0139517F8
        for <linux-man@vger.kernel.org>; Fri,  3 Jun 2022 10:02:54 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id x17so11167140wrg.6
        for <linux-man@vger.kernel.org>; Fri, 03 Jun 2022 10:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=eZvUSRmGJkKOpWwA7hLh+Zcm0U16OMMjFLj460o7BB4=;
        b=WAuZSW41ecZrRudnSpYjvuBJx51IDUOHkSAQ0BkijowoWcmmwTGVAq9V/1Q4SvL1PO
         VNFIfyD45lxbpw4opKH+xH9tkuf0gaK2ZwIA2clqVBCcbdzEhn+yOrIHXu5bC+YKAPQp
         VDa7ivkka4VQmA7/w3yjckN1FoAJM7xR4gbFXZjrqiUUdBYW0L/wKLcM6EEDdizALi3F
         Vqx1+0q+Sic5ROGaEsfLU5EZ6C5ZJlxV47nhp2dvSJ1oZudT9bmYYrhGF3mqh0wOMNob
         zHn/Ju/JJ+HYGQT2K3njcuk1Ld6ojgvCp91UBQMZ63nQZfcQ9Se31eVug7N98P5DtnPP
         X5qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=eZvUSRmGJkKOpWwA7hLh+Zcm0U16OMMjFLj460o7BB4=;
        b=3yfhz9XahxMZWS554t4jQvbM5QfegEuONi1Kt1z2wRp1UGmejFLHuKP82OIFHcCd+i
         upMTn2AU/g8RY1NHJKiioRytFkZQwILitfZXb5jAPRrxvs7j2FVIG7p8jjEPOhCgAqkn
         Oo3vln4p23e251gklpIGWYkbaOXYNJ/GrM3zYaKDYYMA/XDTpIELGgNmKqz+gj3vfQER
         wzoTOFwEGk92VssKPaesqHLsUq4MFdSW8pBnUOZLbvZqgSoWhaBle6SziScGenRF0HSF
         +zYnO5VKNlkEeBkJ3iy3LWCfRNOhnkLKjLUHYmKTYYymh+wKzou4rDhx3WJOl+KpKm/F
         c4CA==
X-Gm-Message-State: AOAM532Go3D1/1cCXiMY5TXMzTVJt31Vnag6YDdeMllCk1DXPO4xmlWN
        1LU71+orUEXUZkTb8z+HG1U=
X-Google-Smtp-Source: ABdhPJy/jXQzS0hySh8zU6jsElnOwGKPzLHtKHolXAlQj0usrFuuPGueiYx4xU/LVc0WF2J7omf2fA==
X-Received: by 2002:a5d:5310:0:b0:20f:d075:a386 with SMTP id e16-20020a5d5310000000b0020fd075a386mr9218468wrv.619.1654275773184;
        Fri, 03 Jun 2022 10:02:53 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e11-20020adffd0b000000b0020e6ce4dabdsm7982846wrr.103.2022.06.03.10.02.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 10:02:52 -0700 (PDT)
Message-ID: <fef84382-8fd5-92f6-5625-60852c32ea72@gmail.com>
Date:   Fri, 3 Jun 2022 19:02:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: man-pages maintainership (was: Re: [PATCH v2] madvise.2: Clarify
 addr/length and update hugetlb support)
Content-Language: en-US
To:     David Hildenbrand <david@redhat.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        linux-man@vger.kernel.org, linux-mm@kvack.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Konstantin Ryabitsev <konstantin@linuxfoundation.org>
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
 <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5mW5CEzpJiScLMIgCE3EoVI7"
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
--------------5mW5CEzpJiScLMIgCE3EoVI7
Content-Type: multipart/mixed; boundary="------------cQTc0X4HO1W6WKT3qh2gcfKR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: David Hildenbrand <david@redhat.com>,
 Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
 linux-mm@kvack.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 Axel Rasmussen <axelrasmussen@google.com>, Peter Xu <peterx@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <fef84382-8fd5-92f6-5625-60852c32ea72@gmail.com>
Subject: man-pages maintainership (was: Re: [PATCH v2] madvise.2: Clarify
 addr/length and update hugetlb support)
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
 <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>
In-Reply-To: <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>

--------------cQTc0X4HO1W6WKT3qh2gcfKR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRGF2aWQhDQoNCk9uIDUvMzEvMjIgMTE6MTAsIERhdmlkIEhpbGRlbmJyYW5kIHdyb3Rl
Og0KID4gQlRXLCB0aGUgZ2l0IHJlcG9zaXRvcnkgWzFdIHdhcyBsYXN0IHVwZGF0ZWQgMjAy
MS0wOS0wMi4gT25lIG9mIG15DQogPiBwYXRjaGVzIFsyXSB3YXMgYXBwYXJlbnRseSBwaWNr
ZWQgdXAgKHJlcGx5IHZpYSBtYWlsKSBidXQgZG9lc24ndCBhcHBlYXINCiA+IGluIHRoYXQg
cmVwb3NpdG9yeS4NCiA+DQogPiBJcyB0aGUgcHJvamVjdCBjdXJyZW50bHkgZGVhZC91bm1h
aW50YWluZWQgb3IgYW0gSSBqdXN0IHN0YXJpbmcgYXQgdGhlDQogPiB3cm9uZyByZXBvc2l0
b3J5Pw0KID4NCiA+IFsxXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vZG9jcy9t
YW4tcGFnZXMvbWFuLXBhZ2VzLmdpdA0KID4gWzJdIGh0dHBzOi8vbGttbC5rZXJuZWwub3Jn
L3IvMjAyMTA4MjMxMjA2NDUuODIyMy0xLWRhdmlkQHJlZGhhdC5jb20NCiA+DQoNCllvdXIg
cGF0Y2ggaGFzIGJlZW4gYXBwbGllZCBoZXJlOg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNv
bG9tYXIuZXMvc3JjL2FseC9saW51eC9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQv
bWFuMi9tYWR2aXNlLjI/aWQ9OWYzMDdjMDZlZmM4YzQwYThhZmYzMGNmMTNlZjNhODUyOGJl
OTIyMj4NCg0KVGhlIHByb2plY3QgaXMgbWFpbnRhaW5lZCwgYnV0IHRoZSBnaXQgcmVwb3Np
dG9yeSBpcyB1bm1haW50YWluZWQuDQpJIGtlZXAgcmV2aWV3aW5nIGFuZCBhcHBseWluZyBw
YXRjaGVzIGluIG15IHBlcnNvbmFsIGdpdCByZXBvc2l0b3J5LCBidXQgDQpJIGRvbid0IGhh
dmUgYWNjZXNzIHRvIGtlcm5lbC5vcmcgeWV0LCBzbyB0aGUgb2ZmaWNpYWwgc2l0ZXMgYXJl
IA0KdW5tYWludGFpbmVkLiAgQW5kIG9mIGNvdXJzZSwgdGhhdCBhbHNvIG1lYW5zIG5vIHJl
bGVhc2VzIHNpbmNlIDUuMTMuDQoNCkknbSBub3QgdmVyeSBjb25jZXJuZWQgYWJvdXQgdGhp
cywgc2luY2UgaW4gZXNzZW5jZSwgYSBmb3JrIG9mIHRoZSANCm1hbnVhbCBwYWdlcyBpcyBz
dGlsbCB2ZXJ5IHdlbGwgbWFpbnRhaW5lZCBvbiBteSBzZXJ2ZXIsIGFuZCBmcmVlIGZvciAN
CmFueW9uZSBpbnRlcmVzdGVkIGluIHJlYWRpbmcgdXAtdG8tZGF0ZSBwYWdlcy4gIEFuZCBz
aW5jZSBJIGRvIHRoaXMgb24gYSANCmhvYmJ5IGJhc2lzIChteSBjb21wYW55IGRvZXNuJ3Qg
cGF5IG1lIHRvIGRvIHRoaXMgYXQgYWxsKSwgSSBkb24ndCBjYXJlIA0KYXQgYWxsIGFib3V0
IG5vdCBoYXZpbmcgcmVsZWFzZWQgaW4gYWxtb3N0IGEgeWVhciBub3cuICBUaGF0J3MgbW9y
ZSBvZiBhIA0KcHJvYmxlbSBmb3IgZGlzdHJvcyBhbmQgY29tcGFuaWVzLCB3aGljaCBuZWVk
IHJlbGVhc2VzLiAgRm9yIA0KaW5kaXZpZHVhbHMsIEkgcmVjb21tZW5kIGdldHRpbmcgYSBj
b3B5IG9mIG15IG1hbnVhbCBwYWdlcycgZ2l0IHJlcG8gYW5kIA0KYG1ha2UgaW5zdGFsbGAu
DQoNCkkgYXBwbGllZCByZWNlbnRseSBmb3IgYSBrZXJuZWwub3JnIGFjY291bnQsIHNvIG1h
eWJlIHRoZSBvZmZpY2lhbCByZXBvIA0KY2FuIGJlIG1haW50YWluZWQgYWdhaW4gc29vbi4g
IFN0aWxsLCBJIGRvbid0IGV4cGVjdCByZWxlYXNpbmcgc29vbiBldmVuIA0KaWYgSSBnZXQg
YWNjZXNzIHRvIGtlcm5lbC5vcmcgYW5kIGNhbiB1cGRhdGUgdGhlIGdpdCByZXBvLiAgSSBu
ZWVkIHRvIA0KbGVhcm4gaG93IHRvIGRvIGEgcmVsZWFzZSBwcm9wZXJseSBiZWZvcmUgSSds
bCByZWxlYXNlIGEgbmV3IHZlcnNpb24sIA0KYW5kIHRoYXQgd2lsbCB0YWtlIGEgbG90IG1v
cmUgZWZmb3J0IGFuZCB0aW1lIGZyb20gbXkgc2lkZSB0aGFuIHVwZGF0aW5nIA0KdGhlIHJl
cG8uDQoNClRoYW5rcyBmb3IgeW91ciBwYXRpZW5jZSENCg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------cQTc0X4HO1W6WKT3qh2gcfKR--

--------------5mW5CEzpJiScLMIgCE3EoVI7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKaPqYACgkQnowa+77/
2zKQ/w/8CwmxBvDDrg4S7PuhljiIWmqfConlkay1yjxjcBfBTRi6lGaLRPvBc+Rz
XZZb7cNcBOppCuR/OpxjcdT6ptz9k6PUpgMqiUIuG9FTo+VnTJZPUSoFS0dhSB2F
+maU3KlirGowLwK8LffSUyXlXqZJmuNs6bBqaPMPD0sP8d+Xsyr0L7krD0eowuJk
T/aMQ3tcaf+2ngBMQrcy/RpzsRFU8fGf2qdiFBBYREaZQ/PYEh9b1StwxInAu5B5
ibbJjFXILx4x5vH7N0FZK5oWdfzxtOTYCFtpUnKjJ01lLcFPm/Edr1jz1vt77hwY
CbY7apeV7HkfnROpX4icAt6GGHHvftreAo46vGCB5pLSkh42bBh7leH2tWpmBNit
vt3OibWN/cS2CjWGwJYFQN/zI86+H7eBuaDYG7nWPqeRZ2ONuQhjcrNwDzKhHBXD
AmHtHsNxCjcUJfdOnGy60ADN0tA5ZC62GqphSkLwH1RW1ywnTlqk944cWIz2OarD
wcVa4MUdErvznu8SlXQelK9/W1h0ftV3xqIWFFvd1awAZh8mes4g+U3R6MMvs4gZ
XkvYjAh69FxIF1DyLG4dj8e1nYKO00KpLKTuJfx+ENDpfJ/lj8BQBV4W6JfMTD8z
dOIP+i03aVNfRIxvsPW0M9e7HFrx3MyJaDtcii+xP+elr/fWqSE=
=wvN2
-----END PGP SIGNATURE-----

--------------5mW5CEzpJiScLMIgCE3EoVI7--
