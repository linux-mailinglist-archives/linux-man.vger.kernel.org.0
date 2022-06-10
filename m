Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B16E546881
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 16:39:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235211AbiFJOjB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 10:39:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238121AbiFJOjA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 10:39:00 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EBBC23BD6
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 07:38:59 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id s1so13698269wra.9
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 07:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=kO5n6ajaT3IeYFjrzs9l/yWljNRgNaFmC1k+KCHemWc=;
        b=O1o3wWH1dSBYeNLe4l5yyGC/gZ6dEz15ODwP44iXMsauO4Tna3d/oU9gcIJzJgyIsD
         Tt2XknDUOC8dCg1v/50YCkgYXr4BQ2tGHPXoY4Qq+/bcQmRFyti0wj1TxqhkxtIEh12y
         a6EYmmCYxGOkn2JD0Yuxqw9OKxOu7IMPdwdYslXba06k/oq7r3olI3pzwpAn54i2fa8Q
         YXYuOYq03EzfKCBN81+/fSjlz4ck/Gd6vmbYSM320z+nmIcOxaA2AE097fMAjkkg3s30
         LM8gcB4+8QQrD1WO3DWWoBB3KoupKpAHgHR8lkG1gtwC8vLPO11rrCeYRQRw/DwxIgfy
         i6bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=kO5n6ajaT3IeYFjrzs9l/yWljNRgNaFmC1k+KCHemWc=;
        b=uA3S9MJVMjAIeyc6StX1Nf119+SKB03mJbyjBV0mocA0fG3c3NBzyp8u0CMwHqlYUt
         ckiVhEgK1Jf/5qU0qUojE2Y7QWRjl7OtcW5KXfVpa2CEQ9irme9wY4qQHA+CYigG/wIJ
         BvOsrXezVc2NVsqXrzpq16XTuSnJlKLMieFS4K2YznJCnJv97f9FvTkT3UQKXSH+gsy0
         8h16twerEuz/QOePJ8COU5oEtGpBfbVbXW5csQgpBiZQqEwrY3oAFlbctWQ9RyWqZ0mW
         Rzw9sIqgshusPwh729IgfiOts8Lnft+jWUAsAV/a95iU0OEB2258BZyihT2JLLceJk4l
         xXFA==
X-Gm-Message-State: AOAM532gjHJJFXqJ/pSR1jgQ9ap3yZLJ1uwp2GuunGnYrU2R0ielwZRk
        WO6iEtulsJV9QEbwWmMCW6k=
X-Google-Smtp-Source: ABdhPJxFAwey7ZnsmiTPEDGXUdxhNYN6PCcvSOgNyfTnLg9C9Bhi7VS/drSEgHgeP/B9VPMX9K8Ocg==
X-Received: by 2002:a05:6000:1a8b:b0:219:ad61:f4e3 with SMTP id f11-20020a0560001a8b00b00219ad61f4e3mr11445446wry.190.1654871937745;
        Fri, 10 Jun 2022 07:38:57 -0700 (PDT)
Received: from [192.168.42.187] ([77.107.214.69])
        by smtp.gmail.com with ESMTPSA id u2-20020a7bcb02000000b0039c5cecf206sm3234962wmj.4.2022.06.10.07.38.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jun 2022 07:38:56 -0700 (PDT)
Message-ID: <bfda1f0d-34ee-e9da-b9e3-d741c3070959@gmail.com>
Date:   Fri, 10 Jun 2022 16:41:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
Content-Language: en-US
To:     Peter Xu <peterx@redhat.com>
Cc:     David Hildenbrand <david@redhat.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        linux-man@vger.kernel.org, linux-mm@kvack.org,
        Axel Rasmussen <axelrasmussen@google.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
 <YqJUZcol6c7HL6Dt@xz-m1.local>
 <05301a1a-6020-aa52-d539-c2e0ba147181@redhat.com>
 <12971f94-d329-5db2-c1d9-3fdad23f3840@gmail.com>
 <YqNQKMNXMvxH8+aE@xz-m1.local>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YqNQKMNXMvxH8+aE@xz-m1.local>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------H6jb7aWjqNVh6Typ5pp0sUrF"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------H6jb7aWjqNVh6Typ5pp0sUrF
Content-Type: multipart/mixed; boundary="------------ZRryellmlsZBP3c0uZYQ7Ccm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Peter Xu <peterx@redhat.com>
Cc: David Hildenbrand <david@redhat.com>,
 Mike Kravetz <mike.kravetz@oracle.com>, linux-man@vger.kernel.org,
 linux-mm@kvack.org, Axel Rasmussen <axelrasmussen@google.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <bfda1f0d-34ee-e9da-b9e3-d741c3070959@gmail.com>
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
 <YqJUZcol6c7HL6Dt@xz-m1.local>
 <05301a1a-6020-aa52-d539-c2e0ba147181@redhat.com>
 <12971f94-d329-5db2-c1d9-3fdad23f3840@gmail.com>
 <YqNQKMNXMvxH8+aE@xz-m1.local>
In-Reply-To: <YqNQKMNXMvxH8+aE@xz-m1.local>

--------------ZRryellmlsZBP3c0uZYQ7Ccm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8xMC8yMiAxNjowNywgUGV0ZXIgWHUgd3JvdGU6DQo+IE9uIEZyaSwgSnVuIDEwLCAy
MDIyIGF0IDExOjM4OjUzQU0gKzAyMDAsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4g
SXQncyBub3QgcGVyZmVjdCwgYW5kIGN1cnJlbnRseSBpdCBkb2Vzbid0IGRldGVjdCBzZW1h
bnRpYyBuZXdsaW5lIHByb2JsZW1zLA0KPj4gSSB0aGluaywgYnV0IEkgZ3Vlc3MgaXQgY291
bGQgYmUgaW1wcm92ZWQgaW4gdGhlIGZ1dHVyZS4NCj4gDQo+IFNlbWFudGljIG5ld2xpbmVz
IGNhbiBiZSBjaGFsbGVuZ2luZyBhcyBJSVVDIGl0J3Mgbm90IGRldGVybWluaXN0aWM/DQo+
IA0KPiBJIG1lYW4sIEkgaGFkIGEgZmVlbGluZyB0aGF0IHNvbWUgcGFyYWdyYXBoIGNvdWxk
IGhhdmUgbXVsdGlwbGUgdmFsaWQgd2F5cw0KPiB0byBkbyB0aGUgbGF5b3V0IGFuZCBuZXds
aW5lcyB3aXRob3V0IHZpb2xhdGluZyB0aGUgcnVsZS4gIElNSE8gdGhhdCBjb3VsZA0KPiBi
ZSBhIGNoYWxsZW5naW5nIHBhcnQgZm9yIGNvbnRyaWJ1dG9ycy4NCj4gDQo+IChPciBtYXli
ZSB0aGUgcnVsZSB3YXMgZGV0ZXJtaW5pc3RpYyBidXQgSSBkaWRuJ3QgcmVhbGx5IGZ1bGx5
IGRpZ2VzdCBpdC4uKQ0KDQpZb3UncmUgY29tcGxldGVseSByaWdodDsgaXQncyBub3QgbWFj
aGluZSBwYXJzZWFibGUuICBCdXQgaXQgY291bGQgDQpkZXRlY3QgdGhlIGVhc2llc3Qgc3R1
ZmYgc3VjaCBhcyAiZm9vLiAgQmFyIiBmb3IgZXhhbXBsZS4gIEFuZCBvbmx5IA0KbWF5YmUg
ImZvbywgYmFyIi4gIEJ1dCBnb2luZyBmdXJ0aGVyLCB0aGF0J3MgYSBqb2IgZm9yIGh1bWFu
cy4NCg0KQW5kIHllcywgbWFueSB0aW1lcyB0aGVyZSBhcmUgc2V2ZXJhbCB3YXlzIHRvIGJy
ZWFrIHRoZSBsaW5lIHdoaWxlIHN0aWxsIA0KZm9sbG93aW5nIHRoZSBydWxlcy4NCg0KPiAN
Cj4gQnV0IHRoZSB0b29sIChldmVuIHdpdGhvdXQgdGhlIG5ld2xpbmUgZGV0ZWN0aW9ucykg
bG9va3MgcHJvbWlzaW5nIGFuZA0KPiBoZWxwZnVsLg0KDQpUaGFua3MhICBJJ2xsIHRyeSB0
byBtYWtlIGl0IHVzYWJsZS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IFRoYW5rcywN
Cj4gDQoNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KTGludXggbWFuLXBhZ2VzIGNvbWFp
bnRhaW5lcjsgaHR0cDovL3d3dy5rZXJuZWwub3JnL2RvYy9tYW4tcGFnZXMvDQpodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLw0K

--------------ZRryellmlsZBP3c0uZYQ7Ccm--

--------------H6jb7aWjqNVh6Typ5pp0sUrF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKjWDMACgkQnowa+77/
2zKZBw/+JNg+ddjREh6hpc7qbULuyk/w6asumx+dRd2HPSaiEhM+cde9Dt6+atJB
1aowbqKnrvArh7VwdoO6LifD9ja3UnjmnjW4m1hz/x42temkZPusPTTNBslbXUrC
u4twuBUZJjZ/81DzlD8yNoT6XcXtI8v5xd34yWKjTgkImvpSitDWma4Y/5E9/vE0
z3bySLF47irRYXg4kqcaYN37EiJoNNupY94ScH2B/LZowdGNfGnJmVNjlZSfWDZS
1zKPkdrBolLHdgOGf8vz4MqDMRH1/lmWrgu47Qqv5ZpcYRNwi93k6vTFe6ggrYAt
39pw2F0FjddPUpQmVfo/+m6b+kj4IS32qHc6QB+ni+DGNFndebEoUeqrg+JF58kP
BWG7uGpGzuQVRUuoEUk+rQQUFutr5W4vxJ9BWfYl6ollFToID7YXHsaiVGeGxZ35
wVWbKXGbiVvrts72Q4BTt/gxAStXrnUOhi6fp+nOpdDJNosuJHnxH1ChNKW7lJP1
7PKcRkYxYhh+Vei+mq+74z2VpI0+wFzH/sC1qXpq91bYcsXFsuauPEK8sGT2IBZy
XxXLlnRnabYvWUTj2vx0+Ck4jFLI9YrJqy/FMR8T722astBprU+mecpHyMdcZpNf
PLIdttfqpYzDLXfT43CVaEGFOVXxNJYIkJ1A18Swa8IGfc9EAjU=
=5J4I
-----END PGP SIGNATURE-----

--------------H6jb7aWjqNVh6Typ5pp0sUrF--
