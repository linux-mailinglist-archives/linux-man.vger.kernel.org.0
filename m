Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACB9F607722
	for <lists+linux-man@lfdr.de>; Fri, 21 Oct 2022 14:42:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbiJUMmB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Oct 2022 08:42:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229995AbiJUMlw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Oct 2022 08:41:52 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82D802690A6
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 05:41:40 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id a3so4796155wrt.0
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 05:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q7q8WYvKv2eM2Gz1eQJ4GTOMGk73vle4GtHOVEytQ7o=;
        b=Wzbmh8IJRGFS66gAIvUvN58rrAK5RFawW0prWDDF4MA2kQeZMTVuOC3wEkzu1f8L70
         88oRz1fvZoKNo0rf8g8s9Wz10vBcJ1GSacLyHGHNJyJfCpGx8/jB+1jQqK7JWL3zDxua
         GFAlJMQufW4iQLwzLYANi0GfCh3glh7K22jSQGnrgOkGIS+AqpG5Uag6ZiVnXg81R+QF
         fkHcI1No5BCbO/8hgiUfsJ7o0pAyY4sXkJAuJEbEgFVP/eECEPKCOhVhOMBaNiqQGTP5
         /bI7PG64su0xkyO1k8EmupaL+ZdFsFmC0C3aAHTQy03TDG8w7q6jk6yT3TybkY76P1IO
         nR/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q7q8WYvKv2eM2Gz1eQJ4GTOMGk73vle4GtHOVEytQ7o=;
        b=FiMR8r9H4CSGpIvxuYhK15SebNs9QzaPr1h2VioxlsnshpesW0YEeStumcBIP2Yp+k
         jxjVHEhdPTlNqe3geJN0LJ0ap7pYE5VI27yXDP3qtGO1o4HFUhhb8o+vcbnAhhTabnZT
         wKhkkMOBrTkOQrSMp7nx2Hf1Vi3eM45vkhph2vnDsIgb5Dzl0Oyb9+Pk0F/bQKK8vn/A
         dbs0NmvFReOifO++4pVWe5xqXrauqOYle9Q4idL7rYNoUy2w4OE4qHqFmpo3QFslLGqe
         KQl30znKKTNq7FNVBsJ7ToV+Ogk0QOxGM1pv9+/2YMMudJCsKrtaf2tGrHtuWZDe21/V
         LDOw==
X-Gm-Message-State: ACrzQf0U2kaIQCr414jpgGx10biOfpYQ1iiExkfN18+OXdJOJd4Oq7Yf
        V7+4MnaZWDw9aaz5sSnMWHY=
X-Google-Smtp-Source: AMsMyM6XOCuIy0EiPxny38uW5KtZRoX27Pq4fIrU7Gxx+q1+iCAG+808nqXK521ukHZFrVsGtGifhg==
X-Received: by 2002:a5d:4d07:0:b0:22e:3c45:9f00 with SMTP id z7-20020a5d4d07000000b0022e3c459f00mr12045905wrt.646.1666356098587;
        Fri, 21 Oct 2022 05:41:38 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n128-20020a1c2786000000b003c43dc42b4dsm2680987wmn.16.2022.10.21.05.41.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 05:41:38 -0700 (PDT)
Message-ID: <ca631c4f-0e7c-6dc4-0375-97c25088d252@gmail.com>
Date:   Fri, 21 Oct 2022 14:41:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH man-pages v2 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Zach OKeefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        Minchan Kim <minchan@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221018235051.152548-1-zokeefe@google.com>
 <20221018235051.152548-4-zokeefe@google.com>
 <d9f8599f-fb81-6915-85d9-fbbc74226608@gmail.com>
In-Reply-To: <d9f8599f-fb81-6915-85d9-fbbc74226608@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1mjqlOTRS9vn3om5h0J6pHE6"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------1mjqlOTRS9vn3om5h0J6pHE6
Content-Type: multipart/mixed; boundary="------------VIa0xNE0Chx4bssHRFHNDPUb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach OKeefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 Minchan Kim <minchan@kernel.org>, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <ca631c4f-0e7c-6dc4-0375-97c25088d252@gmail.com>
Subject: Re: [PATCH man-pages v2 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
References: <20221018235051.152548-1-zokeefe@google.com>
 <20221018235051.152548-4-zokeefe@google.com>
 <d9f8599f-fb81-6915-85d9-fbbc74226608@gmail.com>
In-Reply-To: <d9f8599f-fb81-6915-85d9-fbbc74226608@gmail.com>

--------------VIa0xNE0Chx4bssHRFHNDPUb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTAvMjEvMjIgMTQ6MzcsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBPbiAxMC8x
OS8yMiAwMTo1MCwgWmFjaCBPS2VlZmUgd3JvdGU6DQo+PiBGcm9tOiBaYWNoIE8nS2VlZmUg
PHpva2VlZmVAZ29vZ2xlLmNvbT4NCj4+DQo+PiBUaGUgaW5pdGlhbCBjb21taXQgb2YgcHJv
Y2Vzc19tYWR2aXNlKDIpIHRvIG1hbi1wYWdlcyBwcm9qZWN0IGluY2x1ZGVkDQo+PiBhbiBl
cnJvciwgaW5kaWNhdGluZyB0aGF0IENBUF9TWVNfQURNSU4gY2FwYWJpbGl0eSB3YXMgcmVx
dWlyZWQgd2hlbiwgaW4NCj4+IGZhY3QsIENBUF9TWVNfTklDRSB3YXMgdGhlIHJlcXVpcmVk
IGNhcGFiaWxpdHkuDQo+Pg0KPj4gVGhlIGluaXRpYWwgY29tbWl0IG9mIHByb2Nlc3NfbWFk
dmlzZSgyKSB0byBMaW51eCwgY29tbWl0IGVjYjhhYzhiMWYxNA0KPj4gKCJtbS9tYWR2aXNl
OiBpbnRyb2R1Y2UgcHJvY2Vzc19tYWR2aXNlKCkgc3lzY2FsbDogYW4gZXh0ZXJuYWwgbWVt
b3J5DQo+PiBoaW50aW5nIEFQSSIpLCByZWxpZWQgb24gUFRSQUNFX01PREVfQVRUQUNIX0ZT
Q1JFRFMgKHNlZSBwdHJhY2UoMikpLA0KPj4gYnV0IHdhcyBhbWVuZGVkIGJ5IGNvbW1pdCA5
NmNmZTJjMGZkMjMgKCJtbS9tYWR2aXNlOiByZXBsYWNlIHB0cmFjZQ0KPj4gYXR0YWNoIHJl
cXVpcmVtZW50IGZvciBwcm9jZXNzX21hZHZpc2UiKSB3aGljaCByZXBsYWNlZCB0aGlzIHdp
dGggYQ0KPj4gY29tYmluYXRpb24gb2YgUFRSQUNFX01PREVfUkVBRCBhbmQgQ0FQX1NZU19O
SUNFIChQVFJBQ0VfTU9ERV9SRUFEIHRvDQo+PiBwcmV2ZW50IGxlYWtpbmcgQVNMUiBtZXRh
ZGF0YSBhbmQgQ0FQX1NZU19OSUNFIGZvciBpbmZsdWVuY2luZyBwcm9jZXNzDQo+PiBwZXJm
b3JtYW5jZSkuDQoNClsuLi5dDQoNCj4gSWYgSSB1bmRlcnN0YW5kIHRoZSBwYXJhZ3JhcGgg
YWJvdmUsIGZyb20gNS4xMCB0byA1LjEyIHRoZSBjYXBhYmlsaXR5IHJlcXVpcmVkIA0KPiB3
YXMgQ0FQX1NZU19BRE1JTj8NCg0KT3Igd2FzIGl0IENBUF9TWVNfUFRSQUNFPw0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------VIa0xNE0Chx4bssHRFHNDPUb--

--------------1mjqlOTRS9vn3om5h0J6pHE6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNSk4AACgkQnowa+77/
2zLQ+Q/7BqQlCHBWpEmPh6iUKGavv4rTieIZpdhIuN6s4z+//rUywpeCv6TEodoG
RRsmRz/Sz+ekN1qkTs9eaDEIHQPwpK7Btnk6MGs6/BcyzmzByjfhvbQJfD9Tnv11
oTsvJqM4TfTV9iCWFgvvLmSpkxJm5cJVUMo6M45oXFgLQZqJCv8wqyi47KeE2RCC
vlO1QrM/JAopE9GGRLg0lu903x9SzfXLQ9UrofdQ8loCTygaTl7wiBqSi2WkUsSS
ecqFHeqGCFDF1hEALZ2nN+Fq6fvJfOz0DXRoWIvefSUbtg/Y8DG3yHDo2qsFkT+8
0QC9H1S+kp/qj+Z5ASg109R0YTXf8EuD6G5xng/Xjn84gCoBQRrhXwm/0xP8IOPn
NqzYy85WgoAsPSxspCo0jZKxOBE03J1LnMJiuJqXMsu+1ywfwwoCDjPGbdHBQmkl
fYJWeOte97UmqK13L8o6LuRcRy3o1Zy8caRrEyUl6h17VAtoNo7JCyeF7/IpKVd9
DXDv/dMNzmrRAyDhObJ0ARkVSTQ+LFb6Y+gD8KymlD+A+lb5WZ/3ZOhsNMWgTQGU
LbEAAmXCKfqfR/0YlGgx4Min6z912FJ68cQ9lVc09wW2QkOUyq9AYPqxeUj8AlRh
le3+6KYuzkiLjGYSB56GiaWTP14WrclU5lEgEhRgpHy1PySUbzQ=
=2rxk
-----END PGP SIGNATURE-----

--------------1mjqlOTRS9vn3om5h0J6pHE6--
