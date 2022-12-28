Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 010C46586FB
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 22:19:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229835AbiL1VS6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 16:18:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbiL1VS5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 16:18:57 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11A161403E
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:18:56 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id h16so15848065wrz.12
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eBiKPPt0hRQzR2eTw5fvV8whkG7xmv9tBBztz5jPRHY=;
        b=Om8l+Fo3u1UzwaZsdM3gNQqLK+g+JmIyaFk+HEWk4+OnUKIlWNzx4m2XXvhr0wH0u8
         l5nQDhWYJId3DK4hLp3eRzkoLomxDPKHBfjaaDHYmBT/jf7Qiq+o5t9pQ9Aj2hOj3/5q
         0c24tOiien4zG0T6jlpjZBpgVwCeiJx/WMnEDBqFvZbc1RQSMP84pHq9SzKrYAdpr8jy
         O++Ehoj+VJNSR7XpFlN2dwxgkJcBo9v9EmpD/1K+vrpIjg/8MHsH35hW1pZeVsFil+tD
         Xok22YZIJY6WwQuJk/YQlYmp7nwHGziGBnOd0HD5ovtKltvm1Z8LwgknVUaZGI6A2m1o
         mRtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eBiKPPt0hRQzR2eTw5fvV8whkG7xmv9tBBztz5jPRHY=;
        b=IK4tT6ae5ZbB/H9p0fvCFA7HiQ+gRWTqw3qwZYfaxDUwDnYIYKyY+GHBuro3tnxiXd
         urH8J5JkAPv6kVBGyshn14KNGtUNId7DCu4c5X9rLeN3JJb3HlbRuqqV70fZYv3wh9C/
         qfUjSUiP9UPKSFPQ/0MioJGH3l0s45ogkZ/siA9IYu4yVmRav3BWdbr6d26OdO8x5mLQ
         HnZpbrPxSm48kezHcCDCqNLoNBuTc1byPOonXP35eXa63dKc9QY4gIWam4skZ0JH4b4M
         RHWl0Qs0TysRs0OrX+W62Qo7igZk0nZCvbNf5sj6vCd5td0yUVU2xvYrq6onqixYwnYr
         j8Fg==
X-Gm-Message-State: AFqh2kr2wKip3IdR7+vCrDg4oBR7jmeDm0YhrF5hNqG0RYBScQ0y4fz9
        bgRQo7raCNccD9DYOMYwsBw=
X-Google-Smtp-Source: AMrXdXvD82pAoCFcXbS9FhNsCrKtPQNtfIrjZ1NpyPj+KRA8HVAW9pMx1VBstxXDgEGV/iuz7mH69g==
X-Received: by 2002:adf:e34e:0:b0:242:ac3:87f4 with SMTP id n14-20020adfe34e000000b002420ac387f4mr17601234wrj.50.1672262334527;
        Wed, 28 Dec 2022 13:18:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h9-20020adffd49000000b00242209dd1ffsm16402890wrs.41.2022.12.28.13.18.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 13:18:53 -0800 (PST)
Message-ID: <07f63ec3-8b0b-4720-daa7-d46a0dd36860@gmail.com>
Date:   Wed, 28 Dec 2022 22:18:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
To:     =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc:     Jonny Grant <jg@jguk.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Florian Weimer <fweimer@redhat.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
 <CAPBLoAdEbaH8yi_T=_BNAcgwE7=Pq+7QybwfHXNB92QFdx0XPQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAPBLoAdEbaH8yi_T=_BNAcgwE7=Pq+7QybwfHXNB92QFdx0XPQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qC0K5HNdF9KWOtR8LcwkqYqF"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------qC0K5HNdF9KWOtR8LcwkqYqF
Content-Type: multipart/mixed; boundary="------------2WW3eur2znqY4D4KUfdwXvbe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc: Jonny Grant <jg@jguk.org>, Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>,
 Florian Weimer <fweimer@redhat.com>
Message-ID: <07f63ec3-8b0b-4720-daa7-d46a0dd36860@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
 <CAPBLoAdEbaH8yi_T=_BNAcgwE7=Pq+7QybwfHXNB92QFdx0XPQ@mail.gmail.com>
In-Reply-To: <CAPBLoAdEbaH8yi_T=_BNAcgwE7=Pq+7QybwfHXNB92QFdx0XPQ@mail.gmail.com>

--------------2WW3eur2znqY4D4KUfdwXvbe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzI4LzIyIDIyOjA0LCBDcmlzdGlhbiBSb2Ryw61ndWV6IHdyb3RlOg0KPiBP
biBXZWQsIERlYyAyOCwgMjAyMiBhdCA1OjU3IFBNIEFsZWphbmRybyBDb2xvbWFyIHZpYSBM
aWJjLWFscGhhDQo+IDxsaWJjLWFscGhhQHNvdXJjZXdhcmUub3JnPiB3cm90ZToNCj4gDQo+
PiBBaGgsIEkgZGlkbid0IGNvbm5lY3QgdGhlIGRvdHMgdGhlIG90aGVyIGRheSEgIFdlIGRv
bid0IG5lZWQgdG8gd2FpdCBmb3IgZ2xpYmMuDQo+PiBsaWJic2QgYWxyZWFkeSBwcm92aWRl
cyBhcmM0cmFuZG9tIG9uIEdOVS9MaW51eCBzeXN0ZW1zLCBzbyBJIGNhbiBhbHJlYWR5DQo+
PiByZWNvbW1lbmQgdXNpbmcgYXJjNHJhbmRvbSB0byBzZWVkIHNyYW5kKDMpLg0KPj4NCj4+
IEknbGwgcHJlcGFyZSBhIHBhdGNoLi4uDQo+Pg0KPiANCj4gSSB3b3VsZCBzdWdnZXN0IGF2
b2lkaW5nIHRoYXQsIGFzIGl0IHN1ZmZlcnMgZnJvbSBhbGwgdGhlIHByb2JsZW1zDQo+IHBy
ZXZpb3VzbHkgZGlzY3Vzc2VkIG9uIHRoaXMgbGlzdCAsIG9uIHRoZSByZWxldmFudCBhcmM0
cmFuZG9tIHRocmVhZA0KPiANCj4gdGw7ZHIgLCBpdCBjYW4ndCBiZSBzYWZlIHdpdGhvdXQg
a2VybmVsIHN1cHBvcnQsIGFzIHlvdSBuZWVkIHRvIGtub3cNCj4gd2hlbiB0byBkcm9wIHRo
ZSBidWZmZXIuIChvbiBmb3JrLCBvbiByZXN1bWUgcGx1cyBvbiAkZGVpdHkga25vd3MNCj4g
Y29uZGl0aW9uIGZvciB3aGljaCB0aGVyZSBpcyBubyBrZXJuZWwgbm90aWZpY2F0aW9uIGFi
b3V0KQ0KDQpNYXliZSBJJ2QgcmVtb3ZlIHRoZSBTRUUgQUxTTyByZWZlcmVuY2UgdG8gYXJj
NHJhbmRvbSgzYnNkKSB0aGVuLCBzbyB0aGF0IEkgDQpkb24ndCAicmVjb21tZW5kIiB1c2lu
ZyBpdC4gIEknbGwgYWRkIGFyYzRyYW5kb20oMykgdG8gU0VFIEFMU08gd2hlbiB3ZSBoYXZl
IGEgDQptYW51YWwgcGFnZSBmb3IgdGhlIGZ1bmN0aW9uLg0KDQotLSANCjxodHRwOi8vd3d3
LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------2WW3eur2znqY4D4KUfdwXvbe--

--------------qC0K5HNdF9KWOtR8LcwkqYqF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOssrwACgkQnowa+77/
2zLvdw//W90s8SFvNcuJwoI7Ndh6Zrq188hEaXXquiw9BccmhpcoYET0Z0vZbnI1
xlL3+TOdhxnGhKuAP1/dGWbiGPdGlagEirp90S08wHtj07/VWF68FmZDOXvw2f7g
5vqna8Swmf48oN+x6OxGUQG/MqUVrNVbOWnRRKjriplAF5lDR9DdwnUmL+Y3nVXy
scZCfkVXycZ7P1rjCPuAGGVqEwPylSSGst8id4vU8IbFgNc0hreeITI48C2RZYIg
5t/KcmcVTLrssV/TIOPEj56crM7qSygOcgsB7RUHndUXitBNdokEJ8JTfseBvE7I
LGrAl5eC7MV2mbpzCCuVC4Y964yPBV/g9bBsEU1KDH1kMBdbHxXyDFsYHROyMnHZ
NL2eByXfWn5hnMqVnwns2vxUf2yB68g2NE39KdhTg50XaWtMXkEJKbrANOTG5JHL
ICt9NWLgrFDXHiKkEuiPdhxxms7CFPxut7khOvyj8OGXv7SOLO43UBHnCwW3nhpq
LYT2Jv8NAixmADzzawxmPbG325Q8d7V4F5qHBNhJbZwhx4QXvSnxdQj/AeLgFGNq
5G6d4mfnntHOUTXxfD94VyKFmZuB25dAjWllZBRMJyN+Fk1O9joezOjvdbexUfrj
7BnZV020xM9t3/SYsCV1BJRQTQ4zatkTBpEki2yQDPkztoDjGb4=
=TEsr
-----END PGP SIGNATURE-----

--------------qC0K5HNdF9KWOtR8LcwkqYqF--
