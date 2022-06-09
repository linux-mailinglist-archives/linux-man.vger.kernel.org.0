Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D449544623
	for <lists+linux-man@lfdr.de>; Thu,  9 Jun 2022 10:40:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241842AbiFIIjT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Jun 2022 04:39:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241841AbiFIIi5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Jun 2022 04:38:57 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7435EDFE
        for <linux-man@vger.kernel.org>; Thu,  9 Jun 2022 01:38:56 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id k16so31383646wrg.7
        for <linux-man@vger.kernel.org>; Thu, 09 Jun 2022 01:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=RCQRjKMvmXXnxBt/CXfUtN1HPXgoaNtuulNV535nNVo=;
        b=c3gc7KMV/clm1nD7i6mpkbZlXzceZdWPKm3iKR5+Ri1KoG5zx4/urupwRbQeU0fmiY
         40BOrtXchR+qhFxXqLSQSgHkxb+KkigPOJJAoDkbEuZFlad8oxLqmqMBHMDIIZkmCUJx
         zEqKUXNAH9GF18tn+APPqeU4T7uKEGsqJjWrDITwSCGNFSHAqbvmwn2NSWxa7pxCucox
         6TPadBVVwJoojvmA3maFto1paMgnl91lQLZhcCXfh65/XnnThgn4CCtMsXVF8CN3UOjF
         Bu1d1IvJsKsQjj1NfXjARvNL40ZmRLPiovVjVhurH0r31xj7YcPMU0oSULYyqsJIX1pD
         hCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=RCQRjKMvmXXnxBt/CXfUtN1HPXgoaNtuulNV535nNVo=;
        b=VDepTsWltlZ/EOyZvZsy98W9/P/28KSO5qK+aTkFymQQL0i1qWLKVTiQEsyERlcpmI
         o6fxrQyUyBp23S1ZfQcV3NspBWupShEOnolToyTGUQbyoQm9Z/mkkEmKLbWuRgq2bfxK
         Opc6MGvyxig57w1n4k+/yJdceAXlC40MEgVEB72ZPjawwuLgL75Q9ud9nloCY7UaZlHs
         ADuGVXnBlJMORD4VoOM3YUihmU1DWcIiY8Np6m2mINnSIdGXCi79UI6oAoAAdwii8t4Z
         ge3qBLubLxl1yuxoCC73RjirbC6QNjZn6txgNgDu7qUd7XGtWejMxqSPLbYv9eMeO30x
         zmMg==
X-Gm-Message-State: AOAM53034miakXZeVW3RGcD3BSnbhvLwxXNNiSj9KzGJraRT7+2q/f1t
        5cz83ZX70wzY3h3TIsErnBQ=
X-Google-Smtp-Source: ABdhPJz075k4N+DKdbnBI4J1//QjYzyMXa8PGSleLw6nSM4iXRJQwGqUBFNfwXVV40oepJNdjkbtBQ==
X-Received: by 2002:adf:d1ec:0:b0:210:2c68:a06d with SMTP id g12-20020adfd1ec000000b002102c68a06dmr37163819wrd.37.1654763934954;
        Thu, 09 Jun 2022 01:38:54 -0700 (PDT)
Received: from [192.168.42.187] ([31.221.238.245])
        by smtp.gmail.com with ESMTPSA id d14-20020a5d6dce000000b0020c5253d927sm23886474wrz.115.2022.06.09.01.38.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jun 2022 01:38:54 -0700 (PDT)
Message-ID: <a2009ae6-7f51-f7c5-e108-f0c89a17a963@gmail.com>
Date:   Thu, 9 Jun 2022 10:41:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: sorting "See also" cross-references? (was: [PATCH] ioctl_pipe.2:
 Add.)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     chrubis@suse.cz, linux-man@vger.kernel.org,
        David Howells <dhowells@redhat.com>
References: <20220608124710.12647-1-chrubis@suse.cz>
 <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>
 <20220608202602.d7hppyzgfv5hx6qc@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220608202602.d7hppyzgfv5hx6qc@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CbYR0gvngUKRFWO3v0MLXNu6"
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
--------------CbYR0gvngUKRFWO3v0MLXNu6
Content-Type: multipart/mixed; boundary="------------kgRHTU6RfPHkEqZl9rcTiUUP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: chrubis@suse.cz, linux-man@vger.kernel.org,
 David Howells <dhowells@redhat.com>
Message-ID: <a2009ae6-7f51-f7c5-e108-f0c89a17a963@gmail.com>
Subject: Re: sorting "See also" cross-references? (was: [PATCH] ioctl_pipe.2:
 Add.)
References: <20220608124710.12647-1-chrubis@suse.cz>
 <8f521c29-3822-0e04-9f67-9b832edd2d50@gmail.com>
 <20220608202602.d7hppyzgfv5hx6qc@illithid>
In-Reply-To: <20220608202602.d7hppyzgfv5hx6qc@illithid>

--------------kgRHTU6RfPHkEqZl9rcTiUUP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiENCg0KT24gNi84LzIyIDIyOjI2LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4IQ0KPiANCj4gQXQgMjAyMi0wNi0wOFQxNzoxMjoxOSswMjAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+PiArLlNIIFNFRSBBTFNPDQo+Pj4gKy5CUiBw
aXBlICgyKSwNCj4+PiArLkJSIGlvY3RsICgyKQ0KPj4NCj4+IHwgc29ydA0KPiANClsuLi5d
DQo+IEluIHRoZSBncm9mZiBtYW4gcGFnZXMsIEkgdHJ5IHRvIG9yZGVyIHRoZXNlIGNyb3Nz
IHJlZmVyZW5jZXMgaW4gYQ0KPiBjb25zaWRlcmVkIHdheSwgc3RhcnRpbmcgd2l0aCB0aGUg
cGFnZSB0aGF0IEkgY29uc2lkZXIgbW9zdCAiaW1wb3J0YW50Ig0KPiBvciBsaWtlbHkgdG8g
ZnJ1aXRmdWxseSBmb2xsb3cgdXAgdGhlIHRvcGljIGZvciB0aGUgcmVhZGVyLiAgVGhhdCBz
b3J0DQo+IG9mIGp1ZGdtZW50IGlzIHN1YmplY3RpdmUsIG9mIGNvdXJzZSwgYnV0IHdpdGgg
YSB3ZWxsIGN1cmF0ZWQgbWFuIHBhZ2UNCj4gY29ycHVzLCBJIHRoaW5rIGl0J3MgbGlrZWx5
IG1vcmUgdXNlZnVsIHRoYW4gYSBtZWNoYW5pY2FsIHNvcnQuDQo+IA0KTWFrZXMgc2Vuc2Uu
ICBNb3N0IHBhZ2VzIGhhdmUgbGV4aWNvZ3JhcGhpYyBvcmRlciwgYnV0IGltcG9ydGFuY2Ug
b3JkZXIgDQpzZWVtcyBhbiBpbXByb3ZlbWVudC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0K
LS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KTGludXggbWFuLXBhZ2VzIGNvbWFpbnRhaW5lcjsg
aHR0cDovL3d3dy5rZXJuZWwub3JnL2RvYy9tYW4tcGFnZXMvDQpodHRwOi8vd3d3LmFsZWph
bmRyby1jb2xvbWFyLmVzLw0K

--------------kgRHTU6RfPHkEqZl9rcTiUUP--

--------------CbYR0gvngUKRFWO3v0MLXNu6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKhskUACgkQnowa+77/
2zJBlA//UTpDEswBIuESVCUPYfBMFi9SYVn5YKkipFGkhRT4/bqdXuBCJKsmkU5N
/ZZcX7nTGGTXeA3Dw4zlTsVPUVC0ITSLsmjG9ll16ecaTk/1yGllz3fNNEVJdSXS
OwRaau54oSRbmNKYe4Xqk8At5zoA1+ykR8/2LuCdr1lo/5yo/OogRKP1v1LPPNO/
EB6bvsbYWVx6vRyyEqvCQ20BHNO+SD29QaX/iR+Ee3ZfQJJ3FXP7Nq09HCcVSA0N
H0DlKWWJOpRr7UDDsA99W4LoPHfJE9QYgMa1ITNoEjOD56frBXlou7ChLxDwtPOG
kYJnrd947U//arp8Kk19IYJtoKyX1Tlzyfmxqx1/PtiqabhbIMa91FHj2aRndzbR
7xm9mOrzg7QL/dTrj3dOgKaCmywJzAhph+ZXZmar0/Yg73HkaTqm63xr7eOyY1lC
XfV/hLA+i6dfXa6pXa24by/B03mBRJI2NAnz4qgtjRTP5+rypgSic9eaDM0vQy4j
X+i6guBanxixZnsY40z9gNXH/Ki/xKacqUQ+z0Oi90OsIbXLEfve4iq/RCCJicjD
OkHCa9YlweHyVy+X1DkHnlDlRkDAywpLr3ap66q6o0J5tsmE6vsb6yiF4CN7Qgej
/OrXMy0y7L5o2a9KVSp9BSBNfUUEVJYYgF1nRbL+Myd5ZHCks8Y=
=NhF+
-----END PGP SIGNATURE-----

--------------CbYR0gvngUKRFWO3v0MLXNu6--
