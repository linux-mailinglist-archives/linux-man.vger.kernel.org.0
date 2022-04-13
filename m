Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6555A4FFDE1
	for <lists+linux-man@lfdr.de>; Wed, 13 Apr 2022 20:33:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237737AbiDMSfK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Apr 2022 14:35:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbiDMSfJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Apr 2022 14:35:09 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 914C65A17F
        for <linux-man@vger.kernel.org>; Wed, 13 Apr 2022 11:32:47 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id r13so3852006wrr.9
        for <linux-man@vger.kernel.org>; Wed, 13 Apr 2022 11:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=7SUIHWx59KLKCtePJeOMTRZ0kC5c0pVNrwITBIluCtk=;
        b=X3LCt/FptaWNy8q335E7CeFzUjmoxVR6T/suqP2ZOEVON11kggTgr1Rbm8YxGuZu0u
         FUGE+VI7+wz3CwLdnB/4gFA1Wuy+oSEXSjAhEpkwjzX3RsnuECZeJctzmQlRFjJarPO5
         o72ZNBoWlHiYSE0/EkJ9e6RzgvYXyWFj3n66iDTgAZzmIfUPJh+OcHyFYwmfhzi74S4F
         44I/qt4/ochk+B6UfIbChKjqkiB0UfEIjNMdQ4yN3mqji9TuMh5x/XU68TJFgtmvfEb9
         fE6LzPAuy6hpyK2LKCwOlGoa1WRHHjv7qz5nAy2hfuKqDb8jN7Uzb4QOV5i+P2pHGfBn
         TiRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=7SUIHWx59KLKCtePJeOMTRZ0kC5c0pVNrwITBIluCtk=;
        b=Jqvl67MN9j+hwQ9drI1YTJ5FeZMjApE6oLo6+jl0JcgyOo62JC/IqXgIfqtLUHliPs
         N8RYutX2435Jj2mlJm0rUliHsXcxqetWYBg7Gek2+dqUKH3I+Ts3CrM1bt5nZ9JjiogI
         5uGlwA6dXXKM1iWcZO3zGwAPAS6JCqPmvnjyf9XjYOL5cP9p9hv7iZ23T183JBfZmhkD
         0QPuSBAHRNG+Pk61K64nq1XiAMsIVN6SxCY3MlFFAX5bRCW9H1rKU127R/cvJSzFmdBs
         LHRMontxXHQydpG0eEgj6JfdXzM0++XrcUHZYvK68qsuNcL+sBX9xcdLSe+pIpZhof41
         e11w==
X-Gm-Message-State: AOAM531ybE8z0xmsRNLEymbekJ7APQQuh0AnFiz7tMPNg96WC/iY5T3U
        sVLelTKp/EE/BPHL13AxR+s=
X-Google-Smtp-Source: ABdhPJy73cUii1s35gQZFbCkLKx/99pwXpOG8nRqiHAKlYxmXh2yj1pl3SZX3FV7jNOsJN9Mqze1mQ==
X-Received: by 2002:a5d:6a47:0:b0:207:ab24:b1f6 with SMTP id t7-20020a5d6a47000000b00207ab24b1f6mr159192wrw.488.1649874766003;
        Wed, 13 Apr 2022 11:32:46 -0700 (PDT)
Received: from [192.168.42.187] ([46.6.183.70])
        by smtp.gmail.com with ESMTPSA id r12-20020a5d6c6c000000b00203ec2b1255sm40674998wrz.60.2022.04.13.11.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 11:32:45 -0700 (PDT)
Message-ID: <9f65abd8-0df3-4c28-7428-21d6fdc59261@gmail.com>
Date:   Wed, 13 Apr 2022 20:34:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] pthread_atfork.3: Remove a confusing reference to the
 current thread
Content-Language: en-US
To:     Arjun Shankar <arjun@redhat.com>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
References: <20220412135520.2388424-1-arjun@redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220412135520.2388424-1-arjun@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QL0vEXh69imHnGLlb4fiTpa0"
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
--------------QL0vEXh69imHnGLlb4fiTpa0
Content-Type: multipart/mixed; boundary="------------ZRQYcNjJzkR71G71QqQwxrd0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Arjun Shankar <arjun@redhat.com>, linux-man@vger.kernel.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 Florian Weimer <fweimer@redhat.com>
Message-ID: <9f65abd8-0df3-4c28-7428-21d6fdc59261@gmail.com>
Subject: Re: [PATCH] pthread_atfork.3: Remove a confusing reference to the
 current thread
References: <20220412135520.2388424-1-arjun@redhat.com>
In-Reply-To: <20220412135520.2388424-1-arjun@redhat.com>

--------------ZRQYcNjJzkR71G71QqQwxrd0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQXJqdW4sDQoNCk9uIDQvMTIvMjIgMTU6NTUsIEFyanVuIFNoYW5rYXIgd3JvdGU6DQo+
IFRoZSByZWZlcmVuY2UgdG8gInRoaXMgdGhyZWFkIiBpbiB0aGUgREVTQ1JJUFRJT04gb2Yg
cHRocmVhZF9hdGZvcmsoMykNCj4gY291bGQgYmUgaW5jb3JyZWN0bHkgaW50ZXJwcmV0ZWQg
dG8gbWVhbiB0aGF0IG9ubHkgaGFuZGxlcnMgcmVnaXN0ZXJlZA0KPiBieSB0aGUgdGhyZWFk
IGNhbGxpbmcgZm9yaygyKSBhcmUgZXhlY3V0ZWQuICBUaGVyZWZvcmUsIHJlbW92ZSB0aGUN
Cj4gcmVmZXJlbmNlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQXJqdW4gU2hhbmthciA8YXJq
dW5AcmVkaGF0LmNvbT4NCg0KSSBhbHJlYWR5IGFwcGxpZWQgYSBkaWZmZXJlbnQgcGF0Y2gg
cmVjZW50bHkuICBTZWUgDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy9zcmMv
YWx4L2xpbnV4L21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L2NvbW1pdC9tYW4zL3B0aHJlYWRf
YXRmb3JrLjM/aWQ9ZjMwZGViMDhhOWEwZGI5NWEzZDZiNGQwMGMwOTI3ZmI0MzkyOGNjND4u
DQoNCklmIHlvdSB0aGluayB0aGF0IGNhbiBiZSBpbXByb3ZlZCwgcGxlYXNlIHNlbmQgYSBw
YXRjaCBvbiB0b3Agb2YgdGhlIA0KbWFpbiBicmFuY2ggaW4gdGhhdCByZXBvLg0KDQpUaGFu
a3MsDQoNCkFsZXgNCj4gLS0tDQo+ICAgbWFuMy9wdGhyZWFkX2F0Zm9yay4zIHwgMiArLQ0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL21hbjMvcHRocmVhZF9hdGZvcmsuMyBiL21hbjMvcHRocmVhZF9h
dGZvcmsuMw0KPiBpbmRleCBiNzI3Y2I0OGUuLmRiNWUyMTBkNCAxMDA2NDQNCj4gLS0tIGEv
bWFuMy9wdGhyZWFkX2F0Zm9yay4zDQo+ICsrKyBiL21hbjMvcHRocmVhZF9hdGZvcmsuMw0K
PiBAQCAtMzksNyArMzksNyBAQCBUaGUNCj4gICAuQlIgcHRocmVhZF9hdGZvcmsgKCkNCj4g
ICBmdW5jdGlvbiByZWdpc3RlcnMgZm9yayBoYW5kbGVycyB0aGF0IGFyZSB0byBiZSBleGVj
dXRlZCB3aGVuDQo+ICAgLkJSIGZvcmsgKDIpDQo+IC1pcyBjYWxsZWQgYnkgdGhpcyB0aHJl
YWQuDQo+ICtpcyBjYWxsZWQuDQo+ICAgVGhlIGhhbmRsZXJzIGFyZSBleGVjdXRlZCBpbiB0
aGUgY29udGV4dCBvZiB0aGUgdGhyZWFkIHRoYXQgY2FsbHMNCj4gICAuQlIgZm9yayAoMiku
DQo+ICAgLlBQDQoNCg0KLS0NCkFsZWphbmRybyBDb2xvbWFyDQpMaW51eCBtYW4tcGFnZXMg
Y29tYWludGFpbmVyOyBodHRwOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL21hbi1wYWdlcy8NCmh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvDQo=

--------------ZRQYcNjJzkR71G71QqQwxrd0--

--------------QL0vEXh69imHnGLlb4fiTpa0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmJXF5gFAwAAAAAACgkQnowa+77/2zL/
ng//ZRe5imyBHpVI69G5YtIrRcHpDZtTpHdVPrTiwVObbiXmeA2rSyC01eUhWcnPDnHqeqYLATVS
FOf3aVkW0wOh96fWn8JqxZfwBToWOArQmOyCL9ES8eDa0MCVP2EX1lLbcusdYWpyZbI8Y4OZeK9v
MFHbc8XTzBpz9REB/pCUl0SLCTfGP1/lAgkkYsfeAuCHDw1pHTGDTck0wGlqY6V7lvrV+/TTO/EH
qXZGnEmj+5p1BRGbOz6auVGPjs3z93Ct3fwFuW8P9XXsZmHLalId2wkbDlyRZ8r7wSvG2UntEmJq
SYBCrj/t0BgzKVbHq28VRWp7C7SCRR/fgE5g/7L/2wZL5cPUOPI2TnONnD/D8Han8HXZIkvQvYgp
Pbz+bUWTLXDl2/1gNT02p/YBdY5o32Y5HeoTZZwfvo0Z6wsoXFC2yv0oP1skLDqb9MmAFpo8SGSw
7BhGq6ph8JycjIjK5jRliObcZ/nh5K9uo/FbRVXpzrto7FffIKGoIXjauEw1DuBBkWHcb0LD4Lfy
0XdsrVbaNPw9s5k64ILjexSBIgrXmklOemNB9/zQhk6jeGEGYHY5xRk7LgnT2b7NU2HcaA9MfqTh
/WVYmGkMNMOaSxTPbe4mgHgwgVA8LO9+3AJ9MyP7EciZofQFQfk137v94EQrpFeACWJsA27z6kK/
uyI=
=iUOp
-----END PGP SIGNATURE-----

--------------QL0vEXh69imHnGLlb4fiTpa0--
