Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36BE9612A6D
	for <lists+linux-man@lfdr.de>; Sun, 30 Oct 2022 12:50:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229792AbiJ3Luw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Oct 2022 07:50:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbiJ3Luv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Oct 2022 07:50:51 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E03F4BF65
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 04:50:50 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id t1so2016394wmi.4
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 04:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wJWlFN9pV7CMYjKUD9gK0F0hyjOyKxx2xeOhMhok1PI=;
        b=Gt9DLfm8coz/r+SFs2TBGG6Df2TBpWfAf+BP6RoQ82rJaYVKS9pNRFvJ12nCeMGPPQ
         2Ty78wZ+GV11p5yjb8grP5wlFN222OG5oIyFk8/pJqUZzdNERP1fX/4+/wejYmmP2mnz
         QDFIxhhZyxOGMia0ZNudAUD0IHLU+sSYr8eAimx8ND7EfuSZ3vE0sClDsp5na/nDv+Tp
         HlNdBatic2f4bggaF7NxJtYJzKikqeplzF2KF5ta+rHtl7HTv53QnRae8CSmYMO0eEX5
         Q8FnrC5FGkZ7FOxo9xDd74+QE8PXi+K8lYBd20tUBGgWYQDV06I97XaHdW+NoxJnWU/T
         N7+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wJWlFN9pV7CMYjKUD9gK0F0hyjOyKxx2xeOhMhok1PI=;
        b=NOI0SzIGSp7udXEDUQ/naI7GV3ABPlOC6bARog9Vg+0JbuJI5GbozEn+zbP2NuwRrT
         n5m/85oJqg2kBPtXZpaiDrcGalc2/jMpiSFqQQBvlkJU5f1wBOI+vaRSWrLibrRSXqJ/
         6CY2lJBFI4nUp0TcjpISfF+KK3f6i14/7P4xRxT155FPMnnXh8azOX/JzrTn7zHbHKH2
         IGV4NsvnsHXD7iQapLrzwzrHUo2SV21Gbc3RkQaF5+fcrlUIjtrzhRdtmshx+yexSlwG
         Wg8165axCRyXWe6YFVEb8Krtxkjs1QQaL8f4xxrV1bNx2fXbAgC2PwbqpIX6K4YYEeM3
         gn0w==
X-Gm-Message-State: ACrzQf1yuS7/qFPAnxhU2p0sDvPl+wNOISWUbz9bXO/iNXQEsYM8Iiif
        eBRqA/nKdP37iI+GcpvMPHw=
X-Google-Smtp-Source: AMsMyM4PgOoKYCsSKhZ0DwcFvirEk2lzi1qmt1gdMo/X/6uAOWrnWZih6NalDfwAWEyAmQwvuyCpDA==
X-Received: by 2002:a05:600c:600e:b0:3c6:fc59:5eda with SMTP id az14-20020a05600c600e00b003c6fc595edamr4926043wmb.30.1667130649295;
        Sun, 30 Oct 2022 04:50:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c192-20020a1c35c9000000b003c6f3f6675bsm4185693wma.26.2022.10.30.04.50.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 04:50:48 -0700 (PDT)
Message-ID: <ad6a0605-3494-ca32-c577-dbd4142ea7f8@gmail.com>
Date:   Sun, 30 Oct 2022 12:50:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH man-pages v3 3/4] process_madvise.2: fix capability and
 ptrace requirements
Content-Language: en-US
To:     Suren Baghdasaryan <surenb@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
        Zach OKeefe <zokeefe@google.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-4-zokeefe@google.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221021223300.3675201-4-zokeefe@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qWvl0UwRAumI62o5qunbheiy"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------qWvl0UwRAumI62o5qunbheiy
Content-Type: multipart/mixed; boundary="------------R1J2A20kwWF6KVxmYypw1yzi";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Suren Baghdasaryan <surenb@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
 Zach OKeefe <zokeefe@google.com>, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <ad6a0605-3494-ca32-c577-dbd4142ea7f8@gmail.com>
Subject: Re: [PATCH man-pages v3 3/4] process_madvise.2: fix capability and
 ptrace requirements
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-4-zokeefe@google.com>
In-Reply-To: <20221021223300.3675201-4-zokeefe@google.com>

--------------R1J2A20kwWF6KVxmYypw1yzi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU3VyZW4sDQoNCk9uIDEwLzIyLzIyIDAwOjMyLCBaYWNoIE9LZWVmZSB3cm90ZToNCj4g
RnJvbTogWmFjaCBPJ0tlZWZlIDx6b2tlZWZlQGdvb2dsZS5jb20+DQo+IA0KPiBUaGUgaW5p
dGlhbCBjb21taXQgb2YgcHJvY2Vzc19tYWR2aXNlKDIpIHRvIExpbnV4LCBjb21taXQgZWNi
OGFjOGIxZjE0DQo+ICgibW0vbWFkdmlzZTogaW50cm9kdWNlIHByb2Nlc3NfbWFkdmlzZSgp
IHN5c2NhbGw6IGFuIGV4dGVybmFsIG1lbW9yeQ0KPiBoaW50aW5nIEFQSSIpLCByZWxpZWQg
b24gUFRSQUNFX01PREVfQVRUQUNIX0ZTQ1JFRFMgKHNlZSBwdHJhY2UoMikpLA0KPiBidXQg
d2FzIGFtZW5kZWQgYnkgY29tbWl0IDk2Y2ZlMmMwZmQyMyAoIm1tL21hZHZpc2U6IHJlcGxh
Y2UgcHRyYWNlDQo+IGF0dGFjaCByZXF1aXJlbWVudCBmb3IgcHJvY2Vzc19tYWR2aXNlIikg
d2hpY2ggcmVwbGFjZWQgdGhpcyB3aXRoIGENCj4gY29tYmluYXRpb24gb2YgUFRSQUNFX01P
REVfUkVBRCBhbmQgQ0FQX1NZU19OSUNFIChQVFJBQ0VfTU9ERV9SRUFEIHRvDQo+IHByZXZl
bnQgbGVha2luZyBBU0xSIG1ldGFkYXRhIGFuZCBDQVBfU1lTX05JQ0UgZm9yIGluZmx1ZW5j
aW5nIHByb2Nlc3MNCj4gcGVyZm9ybWFuY2UpLg0KPiANCj4gVGhlIGluaXRpYWwgY29tbWl0
IG9mIHByb2Nlc3NfbWFkdmlzZSgyKSB0byBtYW4tcGFnZXMgcHJvamVjdCwgbWFkZQ0KPiBh
ZnRlciB0aGUgc2Vjb25kIHBhdGNoLCBpbmNsdWRlZCB0d28gZXJyb3JzOg0KPiANCj4gMSkg
Q0FQX1NZU19BRE1JTiBpbnN0ZWFkIG9mIENBUF9TWVNfTklDRQ0KPiAyKSBQVFJBQ0VfTU9E
RV9SRUFEX1JFQUxDUkVEUyBpbnN0ZWFkIG9mIFBUUkFDRV9NT0RFX1JFQURfRlNDUkVEUw0K
PiANCj4gQ29ycmVjdCB0aGlzIGluIHRoZSBtYW4tcGFnZSBmb3IgcHJvY2Vzc19tYWR2aXNl
KDIpLg0KPiANCj4gRml4ZXM6IGExNDRmNDU4YiAoInByb2Nlc3NfbWFkdmlzZS4yOiBEb2N1
bWVudCBwcm9jZXNzX21hZHZpc2UoMikiKQ0KPiBDYzogU3VyZW4gQmFnaGRhc2FyeWFuIDxz
dXJlbmJAZ29vZ2xlLmNvbT4NCj4gQ2M6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5v
cmc+DQo+IFNpZ25lZC1vZmYtYnk6IFphY2ggTydLZWVmZSA8em9rZWVmZUBnb29nbGUuY29t
Pg0KDQpZb3UgYWRkZWQgeW91ciBSZXZpZXdlZC1ieSB0YWcgdG8gdjIgb2YgdGhpcyBwYXRj
aC4gIEkgZ3Vlc3MgeW91J2QgbGlrZSB0byBwdXQgDQppdCBpbiB0aGlzIG9uZSB0b28sIGJ1
dCBzaW5jZSBpdCBjaGFuZ2VkIHNsaWdodGx5LCBJJ2QgbGlrZSB5b3UgdG8gY29uZmlybS4N
Cg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuMi9wcm9jZXNzX21hZHZpc2Uu
MiB8IDIxICsrKysrKysrKysrKysrKysrLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNyBp
bnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIv
cHJvY2Vzc19tYWR2aXNlLjIgYi9tYW4yL3Byb2Nlc3NfbWFkdmlzZS4yDQo+IGluZGV4IDYy
MDgyMDZlNC4uNDRkM2I5NGU4IDEwMDY0NA0KPiAtLS0gYS9tYW4yL3Byb2Nlc3NfbWFkdmlz
ZS4yDQo+ICsrKyBiL21hbjIvcHJvY2Vzc19tYWR2aXNlLjINCj4gQEAgLTEwNSwxNiArMTA1
LDIwIEBAIHJlbW90ZSBwcm9jZXNzLg0KPiAgIE5vIGZ1cnRoZXIgZWxlbWVudHMgd2lsbCBi
ZSBwcm9jZXNzZWQgYmV5b25kIHRoYXQgcG9pbnQuDQo+ICAgKFNlZSB0aGUgZGlzY3Vzc2lv
biByZWdhcmRpbmcgcGFydGlhbCBhZHZpY2UgaW4gUkVUVVJOIFZBTFVFLikNCj4gICAuUFAN
Cj4gLVBlcm1pc3Npb24gdG8gYXBwbHkgYWR2aWNlIHRvIGFub3RoZXIgcHJvY2VzcyBpcyBn
b3Zlcm5lZCBieSBhDQo+ICsuXCIgY29tbWl0IDk2Y2ZlMmMwZmQyM2VhN2MyMzY4ZDE0Zjc2
OWQyODdlN2FlMTA4MmUNCj4gK1N0YXJ0aW5nIGluIExpbnV4IDUuMTIsDQo+ICtwZXJtaXNz
aW9uIHRvIGFwcGx5IGFkdmljZSB0byBhbm90aGVyIHByb2Nlc3MgaXMgZ292ZXJuZWQgYnkN
Cj4gICBwdHJhY2UgYWNjZXNzIG1vZGUNCj4gLS5CIFBUUkFDRV9NT0RFX1JFQURfUkVBTENS
RURTDQo+ICsuQiBQVFJBQ0VfTU9ERV9SRUFEX0ZTQ1JFRFMNCj4gICBjaGVjayAoc2VlDQo+
ICAgLkJSIHB0cmFjZSAoMikpOw0KPiAgIGluIGFkZGl0aW9uLA0KPiAgIGJlY2F1c2Ugb2Yg
dGhlIHBlcmZvcm1hbmNlIGltcGxpY2F0aW9ucyBvZiBhcHBseWluZyB0aGUgYWR2aWNlLA0K
PiAgIHRoZSBjYWxsZXIgbXVzdCBoYXZlIHRoZQ0KPiAtLkIgQ0FQX1NZU19BRE1JTg0KPiAt
Y2FwYWJpbGl0eS4NCj4gKy5CIENBUF9TWVNfTklDRQ0KPiArY2FwYWJpbGl0eQ0KPiArKHNl
ZQ0KPiArLkJSIGNhcGFiaWxpdGllcyAoNykpLg0KPiAgIC5TSCBSRVRVUk4gVkFMVUUNCj4g
ICBPbiBzdWNjZXNzLA0KPiAgIC5CUiBwcm9jZXNzX21hZHZpc2UgKCkNCj4gQEAgLTE4MCw2
ICsxODQsMTUgQEAgY29uZmlndXJhdGlvbiBvcHRpb24uDQo+ICAgVGhlDQo+ICAgLkJSIHBy
b2Nlc3NfbWFkdmlzZSAoKQ0KPiAgIHN5c3RlbSBjYWxsIGlzIExpbnV4LXNwZWNpZmljLg0K
PiArLlNIIE5PVEVTDQo+ICtXaGVuIHRoaXMgc3lzdGVtIGNhbGwgZmlyc3QgYXBwZWFyZWQg
aW4gTGludXggNS4xMCwNCj4gK3Blcm1pc3Npb24gdG8gYXBwbHkgYWR2aWNlIHRvIGFub3Ro
ZXIgcHJvY2VzcyB3YXMgZW50aXJlbHkgZ292ZXJuZWQgYnkNCj4gK3B0cmFjZSBhY2Nlc3Mg
bW9kZQ0KPiArLkIgUFRSQUNFX01PREVfQVRUQUNIX0ZTQ1JFRFMNCj4gK2NoZWNrIChzZWUN
Cj4gKy5CUiBwdHJhY2UgKDIpKS4NCj4gK1RoaXMgcmVxdWlyZW1lbnQgd2FzIHJlbGF4ZWQg
aW4gTGludXggNS4xMiBzbyB0aGF0IHRoZSBjYWxsZXIgZGlkbid0IHJlcXVpcmUNCj4gK2Z1
bGwgY29udHJvbCBvdmVyIHRoZSB0YXJnZXQgcHJvY2Vzcy4NCj4gICAuU0ggU0VFIEFMU08N
Cj4gICAuQlIgbWFkdmlzZSAoMiksDQo+ICAgLkJSIHBpZGZkX29wZW4gKDIpLA0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------R1J2A20kwWF6KVxmYypw1yzi--

--------------qWvl0UwRAumI62o5qunbheiy
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNeZRcACgkQnowa+77/
2zIyFg/+OwmuNb4dh6UYjTrxRIH7CApFI3pen8EEAt5aOqLX2gF3QsbLs4GC6R3A
Em6xvqJtqKTDqpjY8VdpAX8eOs1HkFJY5kZ/Qf53HdUVny9v/cvYeHFg78N3n4Dt
YTU2l0j50FMy1ywxrFrvx9IXqKC1UfSYeYRZnk/TvIpOtvbGeKT7hnKLpJeBVKjq
584fXOYA6c9CdngZGcrNuNCZm/8JJYOqCw/ZoYSHO+eCoxktaf17mtMXIU/fRVLK
QWWw0+aerEQ7vE8yyGUjRMwQwc2Zy6BWVBEfqyYFD3oO/oUV3obPiq9sngYelhju
eeuTjy2HpkjNuJFSNH5/cXrqTTi/EKUoaukTqxXr/FJFaA8sgWOUAO/skXcgUGDO
FHdsxHC0+MRu0xbwV/Hqvv6pk5jAwPICE66jj/7SyvPXW0mWxQd4PtXd35B3LaPa
zejGYvZqpBOEg9Rdjh0+IHNsF2BmUVqh4dOT2+jcKQW22nnpLW9sVHqQHX7QUmD2
l5T4jXI+nCgaS9HAbnr3WIGfNxOPD/AAuWBfN+D5klOXlHechC7LWaW10mHnYFy4
uxYuydNwtQ2hmmlqPMRgqlT5fqfIbZuL6EaAt1xg5cGFeuFYxA5d0VfMDZn2uz3F
EBZ9UGTxb/G4Mm/7Agj8+Tr4piDM/41J54B13Sc28de3ISnHQuk=
=fW/X
-----END PGP SIGNATURE-----

--------------qWvl0UwRAumI62o5qunbheiy--
