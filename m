Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F4197594CB3
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 03:33:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239428AbiHPAw3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Aug 2022 20:52:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346710AbiHPAvP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Aug 2022 20:51:15 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48E9DD9D42
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 13:46:57 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id v3so10380042wrp.0
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 13:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=qhuHDoq6UvkfNHDdQ0P3QFA3lY4KcA5fN7hvHtYMvts=;
        b=hDY2NYb0bvr1/qpE+/SgyCDhl7KTSThzrclGMHjnF/FwSyDnMH8S5pzNY+bINyOH2y
         vdaB9JqKMJq1AKG+i8dZZZk/zBKYLxDzkcCl8uyJHSGEuNCiFCc81POPWG6f5blW+y8K
         ykMzsKa6d6pTIWWgpp48t74bZKA+X2Vq1VD5lCcoQnyXRqjzzFaKREabkr3IWEiXEa36
         bUEFCuzVo1v07QdDSB/zLL6JPWpAAJK8oZUnGNELPKxxx0uxV39IEgIEzAc/cmt3jNvh
         XD6siVV7FoFlR+VhEoY3l4ki8FmIL6xNEc3dNheJ9URTAZyagnxLEpKntwlDU1RI1Xqa
         Z7Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=qhuHDoq6UvkfNHDdQ0P3QFA3lY4KcA5fN7hvHtYMvts=;
        b=unwRN1yU1rJt/Tk0mNHkjjGJ/50VqIH79WctPVlTldzyyTGhtRKsUnnktJtkADrgHD
         28jOAgM1nbKgZAzBa0J2irYSxUyOkc2xFDQsfTxC23b6bvM0g/j3rYuKsH3zX3MgBqWr
         mWwy/8NoCFsEP6z3jLgAHSRQ36jcRmYzWVUfAIcrcYaFyooERZT/1IpEFP5LbR7GdFBV
         Y7zfkWi7LVAVTfAd2ZGlWRGBrQZEgm9V927InZ5WO7FJsOiegpQpIDIXKc15QFWS93kh
         O3N3zRRGQTBFX3iAzm2YtwK6cbiTbo8B6MqHMGUH5v8Ml0eSgGQxjpqQHcfHFbjG7kgj
         Quhw==
X-Gm-Message-State: ACgBeo1TsbMlrXO6Dm0CaYtjYwjCE2bqt8c5X46vMEPG7yEht7qVhTj/
        PKgWOQBuaqjV3k7FwXCapEY=
X-Google-Smtp-Source: AA6agR5DHwmLmRhl1SogLxqSfMatxheFF6FSrsae1LeMdxvLd3qfJTovZleQnjHk+kYJA4+KwyYRFQ==
X-Received: by 2002:a5d:5887:0:b0:220:81c9:8ab7 with SMTP id n7-20020a5d5887000000b0022081c98ab7mr9624624wrf.702.1660596415541;
        Mon, 15 Aug 2022 13:46:55 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v8-20020a05600c214800b003a5c244fc13sm11193818wml.2.2022.08.15.13.46.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 13:46:55 -0700 (PDT)
Message-ID: <ab836558-b7c5-7321-d9d8-5a6bc00d7bba@gmail.com>
Date:   Mon, 15 Aug 2022 22:46:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        David Hildenbrand <david@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
 <0c07c5ad-01f3-0e74-a2cf-4a5198460c1b@gmail.com>
In-Reply-To: <0c07c5ad-01f3-0e74-a2cf-4a5198460c1b@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yNm6C7vlc0JgQzByI5Y6FLvS"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yNm6C7vlc0JgQzByI5Y6FLvS
Content-Type: multipart/mixed; boundary="------------SV7g3XX3E2dj6jEktshlpKwL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
 linux-mm@kvack.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 David Hildenbrand <david@redhat.com>,
 Axel Rasmussen <axelrasmussen@google.com>, Peter Xu <peterx@redhat.com>
Message-ID: <ab836558-b7c5-7321-d9d8-5a6bc00d7bba@gmail.com>
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
 <0c07c5ad-01f3-0e74-a2cf-4a5198460c1b@gmail.com>
In-Reply-To: <0c07c5ad-01f3-0e74-a2cf-4a5198460c1b@gmail.com>

--------------SV7g3XX3E2dj6jEktshlpKwL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDgvMTUvMjIgMjI6NDEsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBIaSBN
aWtlLA0KPiANCj4gT24gNi85LzIyIDIwOjQ4LCBNaWtlIEtyYXZldHogd3JvdGU6DQo+PiBP
biA2LzkvMjIgMDY6MjQsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4+IEhpIE1pa2Us
DQo+Pj4NCj4+PiBPbiA2LzkvMjIgMDE6NDUsIE1pa2UgS3JhdmV0eiB3cm90ZToNCj4+Pj4g
Q2xhcmlmeSB0aGF0IG1hZHZpc2Ugb25seSB3b3JrcyBvbiBmdWxsIHBhZ2VzLCBhbmQgcmVt
b3ZlIHJlZmVyZW5jZXMNCj4+Pj4gdG8gJ2J5dGVzJy4NCj4+Pj4NCj4+Pj4gVXBkYXRlIE1B
RFZfRE9OVE5FRUQgYW5kIE1BRFZfUkVNT1ZFIHNlY3Rpb25zIHRvIHJlbW92ZSBub3RlcyB0
aGF0DQo+Pj4+IEh1Z2VUTEIgbWFwcGluZ3MgYXJlIG5vdCBzdXBwb3J0ZWQuwqAgSW5kaWNh
dGUgdGhlIHJlbGVhc2VzIHdoZW4gdGhleQ0KPj4+PiB3ZXJlIGZpcnN0IHN1cHBvcnRlZCBh
cyB3ZWxsIGFzIGFsaWdubWVudCByZXN0cmljdGlvbnMuDQo+Pj4+DQo+Pj4+IFNpZ25lZC1v
ZmYtYnk6IE1pa2UgS3JhdmV0eiA8bWlrZS5rcmF2ZXR6QG9yYWNsZS5jb20+DQo+Pj4+IEFj
a2VkLWJ5OiBQZXRlciBYdSA8cGV0ZXJ4QHJlZGhhdC5jb20+DQo+Pj4NCj4+PiBQbGVhc2Ug
Y2hlY2sgc29tZSBjb21tZW50cyBiZWxvdy4NCj4+Pg0KPj4+IFRoYW5rcywNCj4+Pg0KPj4N
Cj4+IFRoYW5rIHlvdSENCj4+DQo+PiBBbmQsIG15IGFwb2xvZ2llcyBmb3Igbm90IGxvb2tp
bmcgYXQgZm9ybWF0dGluZyByZXF1aXJlbWVudHMuDQo+PiBXaWxsIHNlbmQgYSB2NCBzaG9y
dGx5Lg0KPj4NCj4gDQo+IEkgd2FzIHJldmlzaW5nIG9sZCBwYXRjaGVzLsKgIEknbSBqdXN0
IHBpbmdpbmcgeW91IG9uIHRoaXMsIHRvIG1ha2Ugc3VyZSANCj4gaXQncyBub3QgbG9zdC4N
Cg0KTmV2ZXIgbWluZCwgSSBqdXN0IGNoZWNrZWQgdGhhdCB0aGUgcGF0Y2ggd2FzIGFscmVh
ZHkgYXBwbGllZC4gIEkgZGlkbid0IA0KZmluZCBpdCBieSBzb21lIGVycm9yLiA6Lw0KDQpD
aGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------SV7g3XX3E2dj6jEktshlpKwL--

--------------yNm6C7vlc0JgQzByI5Y6FLvS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6sL0ACgkQnowa+77/
2zKfGRAAlxLGe+MCyAuatlGQc89VzQrgDTQm58A3/ScMKa3OU8zzSKOC6TEbhomD
zJLtoo4XCpcZOLOxXwiAu/XCIYYvPfDWcF5EfkTEQ2/GxAgoJGhQbbPFhDGfdisO
kzi+lPyqsvVxx/m8ceZyVkrLGae1imy+w/WAP41jmHShHbp8D+l7wsCAF4qTr/3y
0kDSrVueeyFNbbWLhCxFCQo1vzFK46bxK4jUUOTEZqbF+MRJA7ClsafTlNLTa1ET
hZKX6imd73NnirT9z1N+k4+h+EmR5xyhaw/9ILkfe/B1Pa667P2gLb4GM6ToPT99
hvlZgmS7ro6ykgT0BD5s0zrLLBsnhXEUvCeiRqaVybh+RirOkCWJBZoZ0AnTSHlo
7TPS5QHNBxVgNbUuV4HiL06euY/rZvEopbksNYtgpVtV6pw4FQ2ZpKbQz/MedgFx
HL5f/1nX4Ky7IPuOP2KQ6W1DaHmJei3MMuz2FgyUP5/svjtRDb1luSxG6mfXkKvk
rK17ux+9HEl4WF0LbnVHztG/nuqSBcv1hxtQ6JAlleyQfkcBs8KMZEddImtC0UsT
Zcjhf+5BVn3qRy2EllUw2C8Z52p6jOIbj2CPUMY/CRYboeRmT9A7iITmqYmjkuSC
OdndB9OIthLqvGPuXLVsFTnoz/94bao4//mt0i+XNUkoGHCOhIQ=
=4bfN
-----END PGP SIGNATURE-----

--------------yNm6C7vlc0JgQzByI5Y6FLvS--
