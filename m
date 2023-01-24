Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B51E67A0BE
	for <lists+linux-man@lfdr.de>; Tue, 24 Jan 2023 19:00:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232483AbjAXSAp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Jan 2023 13:00:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbjAXSAo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Jan 2023 13:00:44 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 862D4269A
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 10:00:43 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id iv8-20020a05600c548800b003db04a0a46bso1486417wmb.0
        for <linux-man@vger.kernel.org>; Tue, 24 Jan 2023 10:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JkDwxGMuc4oktd5IxpHLCocLPT+WrhkDwVJp5Ea/Ivk=;
        b=OXQO30cn3Ax2rthtsF5OLHcvO6ZGqpwObyWty0Ks1jRJIv7+qofiOdhOJpdKNf4ZtI
         ZoArts3aFh0WyvcdFsbbVuhIy+Mj4VhAZG2vo0uqBPqotgHE5bD77j5dR3fwcOtjZrgi
         UnZ01mf2KovSgsAlQYOQR2VjvC7d35QodGZqwNsiACt1LDV9si9jdHeDi+tLGbk3DoMU
         f3HDxZX3JPo5G2fC8i6RxTFlSDFtztESzdJAaaoXRZPQSAulBcq3lhTfqOu9J5XxPtEk
         YffZ+/hEbAaMLfQEnrs4QNb1neOImcVTwv784BOL1IOZ9Coi47CMyn4xANh2/yZF8fgU
         4GFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JkDwxGMuc4oktd5IxpHLCocLPT+WrhkDwVJp5Ea/Ivk=;
        b=VaPoQ8gLWaA5t4bN2wWr7qRIiejyKTZlgL4oEXyNUtJ/Kyz3Bo4oMwIawr66U8UDhn
         GEwli+81ubqovc/t/OkIRB6Pn5S7W7RntkU5WI+0g3Kct4rUPrvPi2k3qDPngl7CUH6X
         cwdhexfb1xIEQj9r62belKDarzmmrQ17tQlYdXOweyN6EsoWKAc64WmuEZ0h2GMEC4p3
         mr0UwTyYQcbxcZf7imZ6VPXjnRKb7KS6QPLs6T2qWWwBnNZg8V6cxgKXQMEMKematHaT
         teDSG07PH2cjInBFxwhZwY+D+q6DtGD6aFOqplbtT1W95WwXtKCsfjicejaYGVqTx3M8
         BOrg==
X-Gm-Message-State: AFqh2kpOq/Od/G5jp0cJGfRFgGgqLZiiKul3bJL/HUpB+O1XFV363YQm
        cFNZYVxPXXRKFIjmqWJcF47FTxShw/w=
X-Google-Smtp-Source: AMrXdXvnWOcuW/UFeHC3oCELsAHNevyYi4jQU+vnAab25/Dy+IYvYOan4SzSVJcBL+dLpcpPzUFObA==
X-Received: by 2002:a05:600c:3b02:b0:3da:1bb0:4d71 with SMTP id m2-20020a05600c3b0200b003da1bb04d71mr36770606wms.11.1674583242022;
        Tue, 24 Jan 2023 10:00:42 -0800 (PST)
Received: from [192.168.43.80] ([46.222.154.138])
        by smtp.gmail.com with ESMTPSA id r9-20020a05600c320900b003dc16dee9b1sm1422968wmp.15.2023.01.24.10.00.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 10:00:41 -0800 (PST)
Message-ID: <e4a07ca9-f438-265d-c476-46843c6f3597@gmail.com>
Date:   Tue, 24 Jan 2023 19:00:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: struct sockaddr_storage
Content-Language: en-US
To:     GNU C Library <libc-alpha@sourceware.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
 <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
 <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com> <Y8633MfNxeI9StbW@tucnak>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y8633MfNxeI9StbW@tucnak>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------E0lByi7n2HdVN4rigWxcU2EK"
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
--------------E0lByi7n2HdVN4rigWxcU2EK
Content-Type: multipart/mixed; boundary="------------8zhtLoXftiI0l8edXq05esI0";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: GNU C Library <libc-alpha@sourceware.org>,
 =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc: Stefan Puiu <stefan.puiu@gmail.com>, linux-man
 <linux-man@vger.kernel.org>, gcc@gcc.gnu.org, Igor Sysoev <igor@sysoev.ru>,
 Rich Felker <dalias@libc.org>, Andrew Clayton <a.clayton@nginx.com>,
 Richard Biener <richard.guenther@gmail.com>,
 Zack Weinberg <zack@owlfolio.org>, Florian Weimer <fweimer@redhat.com>,
 Joseph Myers <joseph@codesourcery.com>, Jakub Jelinek <jakub@redhat.com>
Message-ID: <e4a07ca9-f438-265d-c476-46843c6f3597@gmail.com>
Subject: Re: struct sockaddr_storage
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
 <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
 <CACKs7VDGAaSXkjeuBdvEkFbFJ_OnwObTf1_9eVb44RJf-O3Fwg@mail.gmail.com>
 <4c47dcb0-f665-d6ff-cc26-d5f4e99bd739@gmail.com> <Y8633MfNxeI9StbW@tucnak>
In-Reply-To: <Y8633MfNxeI9StbW@tucnak>

--------------8zhtLoXftiI0l8edXq05esI0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCkFmdGVyIHJlYWRpbmcgbW9yZSBhYm91dCB0cmFuc3BhcmVudF91bml0LCBoZXJl
J3MgbXkgaWRlYSBvZiBhIGZpeCBmb3IgDQp0aGUgQVBJLiAgb2xkX2FwaSgpIGlzIGFuIGV4
YW1wbGUgZm9yIHRoZSBsaWJjIGZ1bmN0aW9ucyB0aGF0IGFjY2VwdCBhIA0KYHN0cnVjdCBz
b2NrYWRkciAqYCwgYW5kIHVzZXJfY29kZSgpIGlzIGFuIGV4YW1wbGUgZm9yIHVzZXIgY29k
ZSANCmZ1bmN0aW9ucyB0aGF0IGhhbmRsZSBzb2NrYWRkciBzdHJ1Y3R1cmVzLiAgVGhlIGlu
dGVyZmFjZSB3b3VsZCBiZSB0aGUgDQpzYW1lIGFzIGl0IGlzIGN1cnJlbnRseSwgYnV0IHRo
ZSBpbXBsZW1lbnRhdGlvbiBpbnNpZGUgbGliYyB3b3VsZCBjaGFuZ2UgDQp0byB1c2UgYSB1
bmlvbi4gIEluIHVzZXIgY29kZSwgdXNlcyBvZiBzb2NrYWRkcl9zdG9yYWdlIHdvdWxkIGJl
IG1hZGUgDQpzYWZlIHdpdGggdGhlc2UgY2hhbmdlcywgSSBiZWxpZXZlLCBhbmQgbmV3IGNv
ZGUgd291bGQgYmUgc2ltcGxlciwgc2luY2UgDQppdCB3b3VsZG4ndCBuZWVkIGNhc3RzLg0K
DQoNCg0Kdm9pZCBvbGRfYXBpKHVuaW9uIG15X3NvY2thZGRyX3B0ciAqc2EpOw0KDQoNCnN0
cnVjdCBzb2NrYWRkcl9zdG9yYWdlIHsNCgl1bmlvbiB7DQoJCXN0cnVjdCB7DQoJCQlzYV9m
YW1pbHlfdCAgc3NfZmFtaWx5Ow0KCQl9Ow0KCQlzdHJ1Y3Qgc29ja2FkZHJfaW4gICBzaW47
DQoJCXN0cnVjdCBzb2NrYWRkcl9pbjYgIHNpbjY7DQoJCXN0cnVjdCBzb2NrYWRkcl91biAg
IHN1bjsNCgkJLy8gLi4uDQoJfTsNCn07DQoNCg0KdW5pb24gW1tnbnU6OnRyYW5zcGFyZW50
X3VuaW9uXV0gc29ja2FkZHJfcHRyIHsNCglzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZSAgKnNz
Ow0KCXN0cnVjdCBzb2NrYWRkciAgICAgICAgICAqc2E7DQp9Ow0KDQoNCnZvaWQgb2xkX2Fw
aShzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZSAqc3MpDQp7DQoJLy8gSGVyZSBsaWJjIHVzZXMg
dGhlIHVuaW9uLCBzbyBpdCBkb2Vzbid0IGludm9rZSBVQi4NCglzcy0+c3VuLnNhX2ZhbWls
eSA9IEFGX1VOSVg7DQoJLy8uLi4NCn0NCg0KDQp2b2lkIHVzZXJfY29kZSh2b2lkKQ0Kew0K
CXN0cnVjdCBteV9zb2NrYWRkcl9zdG9yYWdlICBzczsgIC8vIG9iamVjdCBkZWZpbml0aW9u
DQoNCgkvLyAuLi4NCg0KCW9sZF9hcGkoJnNzKTsgIC8vIFRoZSB0cmFuc3BhcmVudF91bmlv
biBhbGxvd3Mgbm8gY2FzdHMuDQoNCglzd2l0Y2ggKHNzLnNzX2ZhbWlseSkgew0KCQkvLyBU
aGlzIGlzIHNhZmUgdG9vLg0KCQkvLyB0aGFua3MgdG8gY29tbW9uIGluaXRpYWwgc2VxdWVu
Y2Ugd2l0aGluIGEgdW5pb24uDQoJfQ0KfQ0KDQoNClRoaXMgd291bGQgaW4gZmFjdCBkZXBy
ZWNhdGUgcGxhaW4gYHN0cnVjdCBzb2NrYWRkcmAsIGFzIEJhc3RpZW4gc3VnZ2VzdGVkLg0K
DQoNCkNoZWVycywNCg0KQWxleA0KDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNv
bG9tYXIuZXMvPg0KDQo=

--------------8zhtLoXftiI0l8edXq05esI0--

--------------E0lByi7n2HdVN4rigWxcU2EK
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPQHL8ACgkQnowa+77/
2zKsTg//eQYnb5zJfLFb5JiMGuMFpmBrWjlnSXyMo5UfqhQ3RbOOCdGveI8Z5dEC
SzkgfZcAJumoJgOfSG7PhYbmavkzGgTKAAubNntzqgKeASurgJn1oJT8gEWZ3FEm
p8CWl311opECY1+vNsMnEXk/KEVYcSRaoLWP0qiIeG0SEU/BgVjq6QEwdSLi83rB
k3ZixtfjBITa9lkeS0MKkbW+mNo6A480jVfaA2iH90fyf4fe/bZEeUw3FtPF+oLN
njl2r3nMUG0y2ntjXHUpcJ7/RSw4Ukth9LmhfZGUXOLj1NPAAYZg/2Zm0JRTIY76
E/m+E0/km2GcU9y59UMPcgYJRu/sGAgyvCxUPr/bv4v+E8flSqu8IO9lki975p9f
nNhHanrlIHU5bPjo1tX+vhKMhBptc1UQLaF0FJaU84UHOFH75FSQOer+gcoywl//
LOUqYX+GJZZWWnJ06A46dDFDdJixrwmZU2+xmxVKiII10ZEdXZRwVWHwVWEQVcE7
+wiv0dVN1vrpP8urv8+cxQGV4vTKh+U2a3QIitKsgpdFh5gdoJQ8VHWOzlpeBUoX
LQ1iAZe6ZpI3QTO6LSt/Bj6m8TNkToW0QRunCO55DvU2cKA47HJSw7EoV1hUurq5
3purB08rVYJ26Lruapgwyl62nUYBY5RtYxOQNWAucw6GpQulJS4=
=aC/k
-----END PGP SIGNATURE-----

--------------E0lByi7n2HdVN4rigWxcU2EK--
