Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E961B68BFB0
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 15:13:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231424AbjBFONK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 09:13:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231514AbjBFOMt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 09:12:49 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C802D2BECD
        for <linux-man@vger.kernel.org>; Mon,  6 Feb 2023 06:11:58 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id d14so10468582wrr.9
        for <linux-man@vger.kernel.org>; Mon, 06 Feb 2023 06:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XnvhmnM2+jQAtYzW1J9r2SvehF+TtBY3YsxiW6DzMmw=;
        b=YHSyb1GVbHgKAcnLqwgnueUFSZij3P0BVef18cbOJy43BOk5rBn9+k6O8aOxmtdjSu
         4ezIY4RJWj+Zhlpn/ae/2FV8okbpdyBCzqrtInXp0oqbMr+9F9AVJGFz4akE2jvUrRNK
         tiFCSkKVOOl4EKttDck5KbJvD014eqv2mi25nyQaxuAUAvu07yRz5xnSheyTdD6if/No
         DtpQj6Ok+GlCCYqNhyqDSwofBLA4rYQmWgyjQGLr0to9YdfCZYG88AQMPAGAk6OyO8k6
         sUHaMZgIA0s9t6+ogWo22EZ6wvZUYDAPDVeKXz3OPgzguXC9f1nKI6jxXz4O22j2Hgks
         yrNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XnvhmnM2+jQAtYzW1J9r2SvehF+TtBY3YsxiW6DzMmw=;
        b=qAe9k0WZ2vThDQfkVjfdNsBhda/1me2JvGkRIiB8u+vS+1hxRjIZeT95woDqq8AtnW
         wSKk2Doq+qcq/QwwY5IO1C+/KRZRRtVEpY+/aP0ijW5wlY2a9mMb4GE/jR7CJ8zW6NnE
         Y7eBrIgA8OBoBRF6cLNHjhuiAFsMeq0g/8zM2stEI+vfC/NMuZ2kTBLbMsUB/8ND+Hmv
         HcNF+n4duJBFerkguh5jPxbe9x/7lxKziAj72FzrvWBdokKSse6/GO9dY5BOLrc7pdi9
         0lHjh7mfjLay3k4V9K5SsYyuH+IB3Jr+hRlJcZjtiE6hYp0FwKn3DrCGG6ogN0aiti+o
         qCCQ==
X-Gm-Message-State: AO0yUKW3NARpvYOfdcT4hTi+D8oclI0OrDIBqlayGze/18wFLTry4CYn
        TDwBNmb5D3IV/+e/Ac/NIVs=
X-Google-Smtp-Source: AK7set87v/wdSJCPEaV45ebJuPM+0f21XhjWvxwUbo0R1Oqv0OmnPlv8IyTAr7WHsQTyBnBNzIPPCQ==
X-Received: by 2002:adf:dec9:0:b0:2c3:e7f5:be8c with SMTP id i9-20020adfdec9000000b002c3e7f5be8cmr4669419wrn.26.1675692679567;
        Mon, 06 Feb 2023 06:11:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j5-20020a5d5645000000b002c3efee2f4bsm814084wrw.80.2023.02.06.06.11.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 06:11:19 -0800 (PST)
Message-ID: <9998a4eb-528b-b006-ebeb-d94816e62d82@gmail.com>
Date:   Mon, 6 Feb 2023 15:11:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
Content-Language: en-US
To:     Rich Felker <dalias@libc.org>
Cc:     Xi Ruoyao <xry111@xry111.site>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx@kernel.org>, GCC <gcc@gcc.gnu.org>,
        glibc <libc-alpha@sourceware.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>,
        Eric Blake <eblake@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20230205152835.17413-1-alx@kernel.org>
 <f8a2f27b-9088-2dd7-79b5-b11c14fb5f1c@gmail.com>
 <0a9306fa37edeb4a989b2929de67fee8606a3d8a.camel@xry111.site>
 <ae73337b-7b37-9c94-e5e0-d6ebbf2c7ffb@gmail.com>
 <20230206133850.GI3298@brightrain.aerifal.cx>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230206133850.GI3298@brightrain.aerifal.cx>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mzvDFLq2VxvXRUq0GZ2zYOtl"
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
--------------mzvDFLq2VxvXRUq0GZ2zYOtl
Content-Type: multipart/mixed; boundary="------------QdWLQuX0epHCLtSpf0E5jho8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rich Felker <dalias@libc.org>
Cc: Xi Ruoyao <xry111@xry111.site>, linux-man@vger.kernel.org,
 Alejandro Colomar <alx@kernel.org>, GCC <gcc@gcc.gnu.org>,
 glibc <libc-alpha@sourceware.org>, =?UTF-8?Q?Bastien_Roucari=c3=a8s?=
 <rouca@debian.org>, Stefan Puiu <stefan.puiu@gmail.com>,
 Igor Sysoev <igor@sysoev.ru>, Andrew Clayton <a.clayton@nginx.com>,
 Richard Biener <richard.guenther@gmail.com>,
 Zack Weinberg <zack@owlfolio.org>, Florian Weimer <fweimer@redhat.com>,
 Joseph Myers <joseph@codesourcery.com>, Jakub Jelinek <jakub@redhat.com>,
 Eric Blake <eblake@redhat.com>, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <9998a4eb-528b-b006-ebeb-d94816e62d82@gmail.com>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
References: <20230205152835.17413-1-alx@kernel.org>
 <f8a2f27b-9088-2dd7-79b5-b11c14fb5f1c@gmail.com>
 <0a9306fa37edeb4a989b2929de67fee8606a3d8a.camel@xry111.site>
 <ae73337b-7b37-9c94-e5e0-d6ebbf2c7ffb@gmail.com>
 <20230206133850.GI3298@brightrain.aerifal.cx>
In-Reply-To: <20230206133850.GI3298@brightrain.aerifal.cx>

--------------QdWLQuX0epHCLtSpf0E5jho8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUmljaCwNCg0KT24gMi82LzIzIDE0OjM4LCBSaWNoIEZlbGtlciB3cm90ZToNCj4gVGhl
cmUgaXMgYWJzb2x1dGVseSBub3QgYW55IG5lZWQgdG8gZGVjbGFyZSB0aGUgdW5pb24gZm9y
IGFwcGxpY2F0aW9uDQo+IGNvZGUgY2FsbGluZyB0aGUgc29ja2V0IEFQSXMuIFlvdSBkZWNs
YXJlIHdoYXRldmVyIHR5cGUgeW91IHdpbGwgYmUNCj4gdXNpbmcuIEZvciBiaW5kaW5nIG9y
IGNvbm5lY3RpbmcgYSB1bml4IHNvY2tldCwgc29ja2FkZHJfdW4uIEZvciBJUHY2LA0KPiBz
b2NrYWRkcl9pbjYuIEV0Yy4gVGhlbiB5b3UgY2FzdCB0aGUgcG9pbnRlciB0byBzdHJ1Y3Qg
c29ja2FkZHIgKiBhbmQNCj4gcGFzcyBpdCB0byB0aGUgZnVuY3Rpb24uDQoNCkV4Y2VwdCB0
aGF0IHlvdSBtYXkgYmUgdXNpbmcgZ2VuZXJpYyBjb2RlIHRoYXQgbWF5IHVzZSBlaXRoZXIg
b2YgQUZfVU5JWCwgDQpBRl9JTkVULCBhbmQgQUZfSU5FVDYuICBBIHdlYiBzZXJ2ZXIgbWF5
IHZlcnkgd2VsbCB1c2UgYWxsIHRoZSB0aHJlZS4NCg0KPiANCj4gQnV0IG5vcm1hbGx5IHlv
dSBkb24ndCB1c2UgZGVjbGFyZWQtdHlwZSBvYmplY3RzIGZvciB0aGlzIGFueXdheS4gWW91
DQo+IHVzZSB0aGUgc3RydWN0IHNvY2thZGRyICogb2J0YWluZWQgZnJvbSBnZXRhZGRyaW5m
byBhcyBhbiBhYnN0cmFjdA0KPiBwb2ludGVyIGFuZCBuZXZlciBkZXJlZmVyZW5jZSBpdCBh
dCBhbGwuDQoNClRoYXQncyByaWdodC4gIE1vc3Qgb2YgdGhlIHRpbWUsIHdlIHNob3VsZCBi
ZSB1c2luZyBnZXRhZGRyaW5mbygzKSwgd2hpY2ggDQphbHJlYWR5IHByb3ZpZGVzIHRoZSBz
dG9yYWdlLiAgSSBkb24ndCBrbm93IGZvciBzdXJlIGlmIHRoZXJlIGFyZSBhbnkgY2FzZXMg
dGhhdCANCmNhbid0IGJlIHJld3JpdHRlbiB0byB3b3JrIHRoYXQgd2F5Lg0KDQpIb3dldmVy
LCB0aGVyZSBhcmUgc29tZSBBUElzIHRoYXQgcmVxdWlyZSB5b3UgdG8gYWxsb2NhdGUgYW4g
b2JqZWN0LiAgRm9yIA0KZXhhbXBsZSByZWN2ZnJvbSgyKS4gIEhvdyB3b3VsZCB5b3UgcmVj
b21tZW5kIHVzaW5nIHJlY3Zmcm9tKDIpLCBvciBpcyBpdCBzb21lIA0KQVBJIHRvIGF2b2lk
PyAgRXhhbXBsZSBvZiB1c2FnZTogDQo8TWh0dHBzOi8vbWFuNy5vcmcvdGxwaS9jb2RlL29u
bGluZS9kaXN0L3NvY2tldHMvaWRfZWNob19zdi5jLmh0bWw+Lg0KDQoNCkNoZWVycywNCg0K
QWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBr
ZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVC
QjUNCg==

--------------QdWLQuX0epHCLtSpf0E5jho8--

--------------mzvDFLq2VxvXRUq0GZ2zYOtl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPhCn4ACgkQnowa+77/
2zLU3g/8CUOZsHfchV0X/bo1PDM/ne5BhVDofPOYTYthcC2b+9DmwJlZYjItiZbJ
NzT9vCf93RyHIofjHmTbfCb6TgviMIp7up1dobsZ1vMCxEJThcCfIcKaWOGzCsDJ
ZVa/8xM/TPfteHF4sWmOgcykWaFiVjMTEDF296q4lCOTgnwalxgv4+5qfSXofDFb
9BV6Q4d94vblxF8D0Uu/0O49R1ax4B6xvZXX5cc17K+WpaBZ2Ve1WKLhXiWHwyu1
iwo2IKIfWLh5jKH1pVGcUA4b03H3gYITIAT3XugyjlBXyVICQ+cx3e4FVj7YcHCf
krWk3vera3hEgi5d8fDeuOoZMG+MPfEU+A8sHkqMl+4a50GzhMAwEPliS36HgHMA
4xIzyvqG03ilHkrAbMC71++JQBCig+wTzKABhY+iDaR3pibOSmX2525q05Fqmq5p
x0YkUATbHm0y5+tjZJ+pqG3BeW20wYWKUqkv4MhqctiTRavAu4kPWL+xVn1MyVX0
KXeECcQJXXgZ/181tGo/sb4Tr3C8zM3QN1Xg0bYwQkWDtycNIfoBMEdFtean1xL0
ql2ULZ4eebTzjZibYXCwoMupDA6EqYcC48oPOmvmM3DuWF3hyLaR6wb88IQCqmQA
ihKzOdDDihmn37hspWOEwXnbC0KmxtPaQUU8bVrXxhMl2stmiHI=
=gJaB
-----END PGP SIGNATURE-----

--------------mzvDFLq2VxvXRUq0GZ2zYOtl--
