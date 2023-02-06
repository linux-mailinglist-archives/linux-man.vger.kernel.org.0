Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44C7C68BC20
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 12:55:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbjBFLzZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 06:55:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229698AbjBFLzY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 06:55:24 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B74712F36
        for <linux-man@vger.kernel.org>; Mon,  6 Feb 2023 03:55:23 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id bh13-20020a05600c3d0d00b003dff6cd8b7eso3339275wmb.5
        for <linux-man@vger.kernel.org>; Mon, 06 Feb 2023 03:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yRwDn5cf5/RiTGv7jg1Vc/pkWioUPS8KcNhNP1R9OJc=;
        b=FDJ3oNGuS6KCLJl98Hnjs7fVtB6MZLJrj6zJRaRmldkVjwrGaTyeQfAsfmjA9vO//O
         FAaUrVg/TCObyxYH1LFTcDafq6RoWa3X5SRgvv6oFBeYBuOZ13xaWfmIZqBrlwrIeHUX
         Nsepcs0RuEwWUrk7vkslzISzr2ElU1OhzRxM4v9N5pFU5Ed929lkeP+QUizAJ6cT+oZ+
         /N0WHO9gc4latI8U1U3wXRyEfxOUuxPoBVBmpULrqZqkAA0LvWp1sBX3SKE6fLU0l9J7
         s8w7nndF5xyCnVjk7/6OYbKd1VjAruR7CnbLOgcj9TXd0ruiS8txheA/Zm56uxf7N3Z9
         8EaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yRwDn5cf5/RiTGv7jg1Vc/pkWioUPS8KcNhNP1R9OJc=;
        b=Wv5XPuwgSypg+abRicR2bRgjoqLqRcfxGABqNHiw9X0luDHC0APwTXd7BknRs3X1TT
         Iy+ajSrs8lGpN9jghSoR3BtzIWSPfTu8FDZhfhI8wMB9X2bkQ6twvSoIaXuGcE9HiwyG
         cMU71UkEivBaU60IncwMtrCQ8NYwyTXR6QrIyh1sZNVRvYdZxWquh+seg96dUrzT27XA
         S3d1WF5BO550ze0HqIXZugn+25jzIAGJGN73PjJKHUU7nbNeoFHWALouzTOLQbV/eac4
         VNFh8jiDUnnw4vM/zUO6WJMt3CEbcHsKFz5UEx1oja3uGWryCoKTiBIjOFvDh5zZCxNA
         YbGQ==
X-Gm-Message-State: AO0yUKVRyV3XBCMqNV4KAxsyJvpIjt+cXuILwiSJCVBsioSkbMuiJeJM
        pvVwhvhiFY2pfWleCOQorJQ=
X-Google-Smtp-Source: AK7set8C7reEeoA981lR2R+tLADCr+VKyOr+LFsR02R/OY2XfTivUyg4yfhH/Do6aLuIwDNAdL+NEg==
X-Received: by 2002:a05:600c:314a:b0:3df:ee43:860b with SMTP id h10-20020a05600c314a00b003dfee43860bmr10288427wmo.23.1675684521535;
        Mon, 06 Feb 2023 03:55:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v9-20020a05600c470900b003dfe549da4fsm11088479wmo.18.2023.02.06.03.55.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 03:55:21 -0800 (PST)
Message-ID: <ae73337b-7b37-9c94-e5e0-d6ebbf2c7ffb@gmail.com>
Date:   Mon, 6 Feb 2023 12:55:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
Content-Language: en-US
To:     Xi Ruoyao <xry111@xry111.site>, linux-man@vger.kernel.org,
        Rich Felker <dalias@libc.org>
Cc:     Alejandro Colomar <alx@kernel.org>, GCC <gcc@gcc.gnu.org>,
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
        Eric Blake <eblake@redhat.com>
References: <20230205152835.17413-1-alx@kernel.org>
 <f8a2f27b-9088-2dd7-79b5-b11c14fb5f1c@gmail.com>
 <0a9306fa37edeb4a989b2929de67fee8606a3d8a.camel@xry111.site>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0a9306fa37edeb4a989b2929de67fee8606a3d8a.camel@xry111.site>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8JeNdWONRs9EE0wQFFT8Ymbs"
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
--------------8JeNdWONRs9EE0wQFFT8Ymbs
Content-Type: multipart/mixed; boundary="------------IGfagdK0HIE8IYhGG0Tgh2Fa";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Xi Ruoyao <xry111@xry111.site>, linux-man@vger.kernel.org,
 Rich Felker <dalias@libc.org>
Cc: Alejandro Colomar <alx@kernel.org>, GCC <gcc@gcc.gnu.org>,
 glibc <libc-alpha@sourceware.org>, =?UTF-8?Q?Bastien_Roucari=c3=a8s?=
 <rouca@debian.org>, Stefan Puiu <stefan.puiu@gmail.com>,
 Igor Sysoev <igor@sysoev.ru>, Andrew Clayton <a.clayton@nginx.com>,
 Richard Biener <richard.guenther@gmail.com>,
 Zack Weinberg <zack@owlfolio.org>, Florian Weimer <fweimer@redhat.com>,
 Joseph Myers <joseph@codesourcery.com>, Jakub Jelinek <jakub@redhat.com>,
 Eric Blake <eblake@redhat.com>
Message-ID: <ae73337b-7b37-9c94-e5e0-d6ebbf2c7ffb@gmail.com>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
References: <20230205152835.17413-1-alx@kernel.org>
 <f8a2f27b-9088-2dd7-79b5-b11c14fb5f1c@gmail.com>
 <0a9306fa37edeb4a989b2929de67fee8606a3d8a.camel@xry111.site>
In-Reply-To: <0a9306fa37edeb4a989b2929de67fee8606a3d8a.camel@xry111.site>

--------------IGfagdK0HIE8IYhGG0Tgh2Fa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWGksDQoNCk9uIDIvNi8yMyAwNzowMiwgWGkgUnVveWFvIHdyb3RlOg0KPiBPbiBTdW4s
IDIwMjMtMDItMDUgYXQgMTY6MzEgKzAxMDAsIEFsZWphbmRybyBDb2xvbWFyIHZpYSBMaWJj
LWFscGhhIHdyb3RlOg0KPiANCj4+IFRoZSBvbmx5IGNvcnJlY3Qgd2F5IHRvIHVzZcKgIGRp
ZmZlcmVudMKgIHR5cGVzwqAgaW7CoCBhbsKgIEFQScKgIGlzDQo+PiB0aHJvdWdowqAgYcKg
IHVuaW9uLg0KPiANCj4gSSBkb24ndCB0aGluayB0aGlzIHN0YXRlbWVudCBpcyB0cnVlIChp
biBnZW5lcmFsKS4gIFRlY2huaWNhbGx5IHdlIGNhbg0KPiB3cml0ZSBzb21ldGhpbmcgbGlr
ZSB0aGlzOg0KPiANCj4gc3RydWN0IHNvY2thZGRyIHsgLi4uIH07DQo+IHN0cnVjdCBzb2Nr
YWRkcl9pbiB7IC4uLiB9Ow0KPiBzdHJ1Y3Qgc29ja2FkZHJfaW42IHsgLi4uIH07DQo+IA0K
PiBpbnQgYmluZChpbnQgZmQsIGNvbnN0IHN0cnVjdCBzb2NrYWRkciAqYWRkciwgc29ja2xl
bl90IGFkZHJsZW4pDQo+IHsNCj4gICAgICBpZiAoYWRkcmxlbiA8IHNpemVvZihzdHJ1Y3Qg
c29ja2FkZHIpIHsNCj4gICAgICAgICAgZXJybm8gPSBFSU5WQUw7DQo+ICAgICAgICAgIHJl
dHVybiAtMTsNCj4gICAgICB9DQo+IA0KPiAgICAgIC8qIGNhbm5vdCB1c2UgImFkZHItPnNh
X2ZhbWlseSIgZGlyZWN0bHk6IGl0IHdpbGwgYmUgYW4gVUIgKi8NCj4gICAgICBzYV9mYW1p
bHlfdCBzYV9mYW1pbHk7DQo+ICAgICAgbWVtY3B5KCZzYV9mYW1pbHksIGFkZHIsIHNpemVv
ZihzYV9mYW1pbHkpKTsNCj4gDQo+ICAgICAgc3dpdGNoIChzYV9mYW1pbHkpIHsNCj4gICAg
ICAgICAgY2FzZSBBRl9JTkVUOg0KPiAgICAgICAgICAgICAgcmV0dXJuIF9kb19iaW5kX2lu
KGZkLCAoc3RydWN0IHNvY2thZGRyX2luICopYWRkciwgYWRkcmxlbik7DQo+ICAgICAgICAg
IGNhc2UgQUZfSU5FVDY6DQo+ICAgICAgICAgICAgICByZXR1cm4gX2RvX2JpbmRfaW42KGZk
LCAoc3RydWN0IHNvY2thZGRyX2luNiAqKWFkZHIsIGFkZHJsZW4pOw0KPiAgICAgICAgICAv
KiBtb3JlIGNhc2VzIGZvbGxvdyBoZXJlICovDQo+ICAgICAgICAgIGRlZmF1bHQ6DQo+ICAg
ICAgICAgICAgICBlcnJubyA9IEVJTlZBTDsNCj4gICAgICAgICAgICAgIHJldHVybiAtMTsN
Cj4gICAgICAgICAgfQ0KPiAgICAgIH0NCj4gfQ0KPiANCj4gSW4gdGhpcyB3YXkgd2UgY2Fu
IHVzZSBzb2NrYWRkcl97aW4saW42LC4uLn0gZm9yIGJpbmQoKSBzYWZlbHksIGFzIGxvbmcN
Cj4gYXMgd2UgY2FuIGRpc3Rpbmd1aXNoIHRoZSAicmVhbCIgdHlwZSBvZiBhZGRyIHVzaW5n
IHRoZSBsZWFkaW5nIGJ5dGUNCj4gc2VxdWVuY2UgKGFuZCB0aGUgY2FsbGVyIHVzZXMgaXQg
Y2FyZWZ1bGx5KS4NCg0KVHJ1ZTsgSSBoYWRuJ3QgdGhvdWdodCBvZiBtZW1jcHkoKWluZyB0
aGUgZmlyc3QgbWVtYmVyIG9mIHRoZSBzdHJ1Y3QuICBUaGF0J3MgDQp2YWxpZDsgb3ZlcmNv
bXBsaWNhdGVkIGJ1dCB2YWxpZC4NCg0KPiANCj4gQnV0IG9idmlvdXNseSBzb2NrYWRkcl9z
dG9yYWdlIGNhbid0IGJlIGRpc3Rpbmd1aXNoZWQgaGVyZSwgc28gY2FzdGluZyBhDQo+IHN0
cnVjdCBzb2NrYWRkcl9zdHJvYWdlICogdG8gc3RydWN0IHNvY2thZGRyICogYW5kIHBhc3Np
bmcgaXQgdG8gYmluZCgpDQo+IHdpbGwgc3RpbGwgYmUgd3JvbmcgKHVubGVzcyB3ZSBtYWtl
IHNvY2thZGRyX3N0b3JhZ2UgYW4gdW5pb24gb3IgYWRkDQo+IFtbZ251OjptYXlfYWxpYXNd
XSkuDQoNCkJ1dCBhcyB5b3Ugc2F5LCBpdCBzdGlsbCBsZWF2ZXMgdXMgd2l0aCBhIHF1ZXN0
aW9uLiAgV2hhdCBzaG91bGQgb25lIGRlY2xhcmUgZm9yIA0KcGFzc2luZyB0byB0aGUgc3Rh
bmRhcmQgQVBJcz8gIEl0IGNhbiBvbmx5IGJlIGEgdW5pb24uICBTbyB3ZSBjYW4gZWl0aGVy
IHRlbGwgDQp1c2VycyB0byBlYWNoIGNyZWF0ZSB0aGVpciBvd24gdW5pb24sIG9yIHdlIGNh
biBtYWtlIHNvY2thZGRyX3N0b3JhZ2UgYmUgYSANCnVuaW9uLiAgVGhlIGxhdHRlciBzbGln
aHRseSB2aW9sYXRlcyBQT1NJWCBkdWUgdG8gbmFtZXNwYWNlcyBhcyBSaWNoIG5vdGVkLCBi
dXQgDQp0aGF0J3MgYSBtaW5vciB2aW9sYXRpb24sIGFuZCBQT1NJWCBjYW4gYmUgY2hhbmdl
ZCB0byBhY2NvbW9kYXRlIGZvciB0aGF0Lg0KDQpJZiB3ZSBjaGFuZ2Ugc29ja2FkZHJfc3Rv
cmFnZSB0byBiZSBhIHVuaW9uLCB3ZSBoYXZlIHR3byBiZW5lZml0czoNCg0KLSAgT2xkIGNv
ZGUgd2hpY2ggdXNlcyBzb2NrYWRkcl9zdG9yYWdlIGlzIG1hZGUgY29uZm9ybWluZyAobm9u
LVVCKSB3aXRob3V0IA0KbW9kaWZ5aW5nIHRoZSBzb3VyY2UuDQotICBVc2VycyBjYW4gaW5z
cGVjdCB0aGUgc3RydWN0dXJlcy4NCg0KSWYgd2UgZG9uJ3QsIGFuZCBkZXByZWNhdGUgc29j
a2FkZHJfc3RvcmFnZSwgd2Ugc2hvdWxkIHRlbGwgdXNlcnMgdG8gZGVjbGFyZSANCnRoZWly
IG93biB1bmlvbnMgX2FuZF8gdHJlYXQgYWxsIHRoZXNlIHN0cnVjdHVyZXMgYXMgYmxhY2sg
Ym94ZXMgd2hpY2ggY2FuIG9ubHkgDQpiZSByZWFkIGJ5IG1lbWNweSgpaW5nIHRoZWlyIGNv
bnRlbnRzLg0KDQpXaGljaCBvZiB0aGUgdHdvIGRvIHdlIHdhbnQ/ICBJIHRoaW5rIGZpeGlu
ZyBzb2NrYWRkcl9zdG9yYWdlIGlzIHNpbXBsZXIsIGFuZCANCmFsbG93cyBleGlzdGluZyBw
cmFjdGljZSBvZiByZWFkaW5nIHRoZXNlIHN0cnVjdHVyZXMuICBUaGUgb3RoZXIgb25lIGp1
c3QgbWFrZXMgDQoob3IgcmF0aGVyIGFja25vd2xlZGdlcywgc2luY2UgaXQgaGFzIGFsd2F5
cyBiZWVuIGxpa2UgdGhhdCkgYSBsb3Qgb2YgZXhpc3RpbmcgDQpjb2RlIGludm9rZSBVQiwg
YW5kIGFja25vd2xlZGdlcyB0aGF0IHlvdSBjYW4ndCBzYWZlbHkgdXNlIHRoZXNlIHN0cnVj
dHVyZXMgDQp3aXRob3V0IGEgbG90IG9mIHdvcmthcm91bmRpbmcuDQoNCkNoZWVycywNCg0K
QWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCkdQRyBr
ZXkgZmluZ2VycHJpbnQ6IEE5MzQ4NTk0Q0UzMTI4M0E4MjZGQkREOEQ1NzYzM0Q0NDFFMjVC
QjUNCg==

--------------IGfagdK0HIE8IYhGG0Tgh2Fa--

--------------8JeNdWONRs9EE0wQFFT8Ymbs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPg6qAACgkQnowa+77/
2zLbgA//UZli3sutK/wLNJiACy4+QRD72l/7itbD6C6g+/xgKSq/Kj9TP/f22AI/
KtFqXB6R/8Lce1ObbP63f5Ei8yUVcg9R/ejyDyzi6Jy+H237QG2P8yTrFFiAgQbj
iOzDoB5pcr+Q2fJi/HDeLM1RMcahTgty78XDSHzCEGzTQA7ckmFqucRqGT6U/ac+
cUmwS3kKxdPge3jsQfuJpDP6X0axdabaBMHQCycZL3zhJPpWQ38zv+oK/FS/r6Tv
pnBBCxPw2orLDdHMLV7jyFNYt014MM2rnIYj9FDZgDqjyg2MR1E7vD6Z3DPL9MZ/
LVt4z6tL8IyH/DRMimD49ZAW5lnWi0r/mXwQLvO549tSsXImpFW5aTnwem7B2tUG
f8JjrN94zk/rXvE99xJ4IjctTcC8I5SnejsaRClGUiXqGZ7VWehFv5A2h7PDweSV
K1mpBidpQegC6aD7vGY6WWQwH51Y0ZbGK0dlbGyeMBx+9Ck4Yncp5l9KIsUeVpLV
xqtPmr7MqD/3y+CIi6jVUV3HuIDFJNRe8TOgPhO8dVFzonzyMlMuplhwJ7V1jxPE
kUH4DYcnRo5FE1iDp6Pa2qxwBXbYpyEPhyDcunFcc30aQDbTK3LPE5V1BROgo5pu
FAeoYH+s4z6l3VAtN6uDtxOpYpfNUSA0FYOmE1rqJ0KuTCpus7M=
=chma
-----END PGP SIGNATURE-----

--------------8JeNdWONRs9EE0wQFFT8Ymbs--
