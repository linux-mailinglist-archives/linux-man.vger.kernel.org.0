Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6358594E51
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 03:56:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230176AbiHPB4E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Aug 2022 21:56:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234305AbiHPBzP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Aug 2022 21:55:15 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B8615D0EC
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:46:44 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id r83-20020a1c4456000000b003a5cb389944so4501643wma.4
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=hjbuwG+d+5iH+d0AdJ/J+2JfDyy9s5XmI0/WVlevNp0=;
        b=DGRH6niw5TEzcOyZsHvxm6KVoxOlhribH0Af11VPl8ianTwwbDvgbyGdQzKi5nhkwa
         sxJGLeD1VPL8x9f9gZgBksTmn4lWeLAk1ccy4YizzxeXbACObdT7TAFDbZk+Qc3NmbE3
         mhp2GpG0mE2E1jZr7NTT7d+NCkEHRFaEip1yXgqaRVDcDplmmxc6hVhYKT/qOFC/U8NY
         HQrUCOXdGufrs19GYNFCEldgU5I6Q0KM1B+AhHnUMBl3dr6MB+aj2NUDWls2/grgTgnz
         xSy3/wkE8q5jQ5Oy053o1GprwGJDXsZIR3h1DXZ4pxQjsWH7Z/Cj8CLa+XKRbrrvKGrp
         IjVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=hjbuwG+d+5iH+d0AdJ/J+2JfDyy9s5XmI0/WVlevNp0=;
        b=ko+VNADlWnwMhBKQysxAz4vo82LEB6I7gkSr7l4XW+vXBPsP/kfBbhjACBSn5imdnf
         HgYsV940De0zYVf3GQfjpkaZ3npvefb5LO6W0skVjXlCHjIDwrpIE9GK1OTqj0FCsxmW
         pdUjKm9aeIbIAStM/YT5lbHjiNe+KmrADLVY0Vv+ok+uNnZKRTUP8m+SoH0oGml/X6Hf
         T5qIqPdk3I9PEYdPy5m1W7nlTwIjgcx/cLqLsRtHCdKD6o+CHzlb070ajQAH8PRnnGX7
         kyxxrMldpaaWCjYK1p/r8DHnPxtU8KRlKiRAFYbMxchkeZEFTwV5QskkNgHu3j1FkPGr
         dTug==
X-Gm-Message-State: ACgBeo1YRkWIkmn3rcQ+K5S6UUuZbOMYgL+l4H5a/SaLXsqk2ZSMd0Oj
        7Th8Lk6ivUPNd1STgKjb2ddNuPbW8Hk=
X-Google-Smtp-Source: AA6agR7qfoful629W5GBL84IBxwT8iyWHR5KUur6VZm3qbTcBq6gjJt4F/U5rRdsY+7IB6j+D6vfSg==
X-Received: by 2002:a05:600c:a41:b0:39c:1512:98bd with SMTP id c1-20020a05600c0a4100b0039c151298bdmr17540223wmq.88.1660600003106;
        Mon, 15 Aug 2022 14:46:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d19-20020adf9c93000000b0021e4829d359sm8186782wre.39.2022.08.15.14.46.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 14:46:42 -0700 (PDT)
Message-ID: <ebfe309d-c656-f1f1-e723-f724414232e3@gmail.com>
Date:   Mon, 15 Aug 2022 23:46:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: Typo in mount(2)
Content-Language: en-US
To:     glibg10b <pugonfireyt@gmail.com>, linux-man@vger.kernel.org
References: <CAAEVSTFUvVPEXuF6PoefJ2YCuUBCS-tZ9+YRNZBmhMN76O8v8w@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAAEVSTFUvVPEXuF6PoefJ2YCuUBCS-tZ9+YRNZBmhMN76O8v8w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QnRnTsEvVuhtlYrl8F3JSIy4"
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
--------------QnRnTsEvVuhtlYrl8F3JSIy4
Content-Type: multipart/mixed; boundary="------------No8wfkelZZF2b0B08k8TzGyP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: glibg10b <pugonfireyt@gmail.com>, linux-man@vger.kernel.org
Message-ID: <ebfe309d-c656-f1f1-e723-f724414232e3@gmail.com>
Subject: Re: Typo in mount(2)
References: <CAAEVSTFUvVPEXuF6PoefJ2YCuUBCS-tZ9+YRNZBmhMN76O8v8w@mail.gmail.com>
In-Reply-To: <CAAEVSTFUvVPEXuF6PoefJ2YCuUBCS-tZ9+YRNZBmhMN76O8v8w@mail.gmail.com>

--------------No8wfkelZZF2b0B08k8TzGyP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDgvMTEvMjIgMjM6MzEsIGdsaWJnMTBiIHdyb3RlOg0KPiBTZWN0aW9uICJT
RUUgQUxTTyI6DQo+IA0KPj4gbW91bnRwb2ludCgxKSwgY2hyb290KDIpLCBpb2N0bF9pZmxh
Z3MoMiksIG1vdW50X3NldHRhdHIoMiksDQo+IA0KPiBtb3VudF9zZXR0YXRyIHNob3VsZCBi
ZSBtb3VudF9zZXRhdHRyDQoNCkZpeGVkOiANCjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQvP2lkPWE2MjdlOTRm
ODFlMGJiODg1ODU0OTJmYTAyYzBhZTRjNjg5MWM5OTM+DQoNCkNoZWVycywNCg0KQWxleA0K
DQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------No8wfkelZZF2b0B08k8TzGyP--

--------------QnRnTsEvVuhtlYrl8F3JSIy4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6vsEACgkQnowa+77/
2zJqYQ/+NXpxcLxdKALgsH+1rbO6uk1M5ZVhu2Zo88xdfcPLYT8ZWYCvU3CMeCU+
DM9Fuj2qM0tz8XXth3s4BRyXMIyPmrdxYd03qGDHfaUJPq+Rwwg75PU7C5R0kqy8
j7qkL2NXIoR1Uw3WarMzWytaFk/p4BUgibNVo3hmhBZc8PRLS4BDZ5jDhRbOTXTP
LHM6eHo78PiIhQa2keMeXAdLrsIe0NyK5B+BKspgAP1+qyXudRgdt7qt2uZNW+UM
VyhCXqmEHsYJt2pEmUu/OpeaCuO5mmYRrhostfmkLgFrqIa4qAhbMCKbaMWn96+S
d8vNEZ1XLN5lE3KtU67kEzBUjOJCw14Kx20um6n5UeqqOr0rmAHlfqHaUYTBl3PK
B+tvDfipKs5STPCSNwLDq3S3/Eh0TPNWTC2NJ0BpR2f61n8yL5EBCjkIpZvIN2KP
6W6sQQqAG4KKlZuzZkDtlnygBv29OoCGQQqpx+SZXAVZ2B5wOjIQj4are2xLjw2v
MZczdczbfQXzaFsVeddZpB4/0685CbynKaTTTBgwUefh/qiDcRnDknWW3mlDbVgr
D/HYDo1o4RDHZ3WsmzVQhoMBOZdgprrD6wkrbGRxYQDZioH11iiBAxTFeWd3rdkh
wHpmqHGpV4ocxIajgHnU4AeQKVo3q6Qr5pSq0I0GZO4sHZisU5Y=
=wqEP
-----END PGP SIGNATURE-----

--------------QnRnTsEvVuhtlYrl8F3JSIy4--
