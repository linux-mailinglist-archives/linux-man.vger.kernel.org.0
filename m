Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24A1D641CC0
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 12:48:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229928AbiLDLr7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 06:47:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229638AbiLDLr5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 06:47:57 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B02D5B485
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 03:47:55 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id o5so14716187wrm.1
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 03:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YNaAKgM0k3bW/n0p/D2XFGvQG/HI5GTjkX8Vb5DCKi4=;
        b=b+txSLrPkhTUnAwSUcCoqmyo1AyzzfqY+OP2VLBj1OFfjb0hpj1fYrwkS85TZCofbD
         wK5Ml33v6wKrcjF3vT6BpcM8af1giTTUE0jH/i1y2XJ30n+6iSgKH21xSCdViyABIVBD
         u0W67TirTyZAOHhQ61o84MsYI8UBfJQETjrequCwsFKqXZMOhDV+tmh9gvamxfXxXkyO
         5cNDlrC/5QhxJWZEElXWyVWmp5A+RCYxMpMnuaWw8N2p2/sx5z8a25OSABxICxTlcXzG
         h9rZIf9AEtwWxtZQegFWgHREZM6wA2iV/IMNYhFA/nFIeSQ8WKXreHl7dc9bh7lhrivu
         AqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YNaAKgM0k3bW/n0p/D2XFGvQG/HI5GTjkX8Vb5DCKi4=;
        b=M+o5x8O9Q1IE/E5zt1gP2aIWuESGBW/1ulHEh1upn+H9ZYpyGdDsLvWptYXg91022M
         /bv8R9xyeAsQLpv4KAym2sckj/Olt2FqM16rdiva16HyJRkCWP8ZF57GEpkZYC4AwmTJ
         op6ccrQc5c5lcuPC80vM+rR7Aw3guqlDOFs1fFbk4OG030cJ9oEVUQfE/lY0icdrp+tG
         mOMGZW5T96Kw6LM6vXCQe2ikyVloTd/4O/RRlREXh1qgmRMhRNU3s9FcEOynolHV0U9q
         XP3s1qyAxBlwQG8AmNl/38NN+x4S2dkEy2Pp6wmxTWZapUWKoZFqqUeH6y1Bk2Uc9YKR
         6P7A==
X-Gm-Message-State: ANoB5plVFvtUKTkVcPGtMMFTlpGn1WHjRQoToE1tga7LQXDBees8/hAK
        4ddN8PRr9VLFa/1IO225CT4=
X-Google-Smtp-Source: AA0mqf6Dd4pQFcUq30Xg2WZ6L/b3BsHcuRVtEmULNVYYG2B9vhtVsasQZOTj9VDfy0hNI9sEVmIXpA==
X-Received: by 2002:adf:e486:0:b0:242:1b65:8901 with SMTP id i6-20020adfe486000000b002421b658901mr17794527wrm.639.1670154474197;
        Sun, 04 Dec 2022 03:47:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h40-20020a05600c49a800b003b3365b38f9sm13525906wmp.10.2022.12.04.03.47.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 03:47:53 -0800 (PST)
Message-ID: <14ded556-7113-50cd-d705-942c482f09e3@gmail.com>
Date:   Sun, 4 Dec 2022 12:47:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page keyrings.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090709.GA32717@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090709.GA32717@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pc8bEpJ0raRk02f8tPFlWwwB"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pc8bEpJ0raRk02f8tPFlWwwB
Content-Type: multipart/mixed; boundary="------------a0WQ09pD0820Ww3Y4aRDV21w";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <14ded556-7113-50cd-d705-942c482f09e3@gmail.com>
Subject: Re: Issue in man page keyrings.7
References: <20221204090709.GA32717@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090709.GA32717@Debian-50-lenny-64-minimal>

--------------a0WQ09pD0820Ww3Y4aRDV21w
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIHBpbm5lZCDihpIgYW5jaG9yZWQ/DQo+IA0KPiAiUHJvY2VzcyBjcmVk
ZW50aWFscyB0aGVtc2VsdmVzIHJlZmVyZW5jZSBrZXlyaW5ncyB3aXRoIHNwZWNpZmljIHNl
bWFudGljcy4iDQo+ICJUaGVzZSBrZXlyaW5ncyBhcmUgcGlubmVkIGFzIGxvbmcgYXMgdGhl
IHNldCBvZiBjcmVkZW50aWFscyBleGlzdHMsIHdoaWNoIGlzIg0KPiAidXN1YWxseSBhcyBs
b25nIGFzIHRoZSBwcm9jZXNzIGV4aXN0cy4iDQoNCkknbSBub3Qgc3VyZS4gIEkgc2VlIHVz
ZXMgb2YgYm90aCB0ZXJtcywgYW5kIGRvbid0IGtub3cgdGhlIGludGVyZmFjZXMgZW5vdWdo
IHRvIA0KYmUgYWJsZSB0byB0ZWxsIHdoaWNoIHRlcm0gaXMgbW9yZSBhcHByb3ByaWF0ZSBo
ZXJlLiAgUGxlYXNlIENDIGFueSBkZXZlbG9wZXJzIA0Kb2YgdGhvc2UgaW50ZXJmYWNlcyBh
bmQgc2VlIHdoYXQgdGhleSB0aGluayBhYm91dCBpdC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Ci0tLQ0KDQokIGdyZXAgLXJuIHBpbiB8IGdyZXAga2V5DQptYW4yL2tleWN0bC4yOjEzOTQ6
ZXZlcnl0aGluZyBpdCBwaW5zIGNhbiB0aGVuIGJlIGdhcmJhZ2UgY29sbGVjdGVkLg0KbWFu
Mi9pb2N0bF9nZXRmc21hcC4yOjU3OmtleSBmb3Igd2hpY2ggdGhlIGFwcGxpY2F0aW9uIHdv
dWxkIGxpa2UgcGh5c2ljYWwgbWFwcGluZw0KbWFuMi9pb2N0bF9nZXRmc21hcC4yOjU5OkEg
cmV2ZXJzZSBtYXBwaW5nIGtleSBjb25zaXN0cyBvZiB0aGUgdHVwbGUgKGRldmljZSwgDQpi
bG9jaywgb3duZXIsIG9mZnNldCkuDQptYW41L3JlcGVydG9pcmVtYXAuNToyNzpUaGUgbWFw
cGluZyBzZWN0aW9uIHN0YXJ0cyB3aXRoIHRoZSBrZXl3b3JkDQptYW43L3VzZXIta2V5cmlu
Zy43OjI2OlRoZSBrZXlyaW5nIHJlbWFpbnMgcGlubmVkIGluIGV4aXN0ZW5jZSBzbyBsb25n
IGFzIHRoZXJlIA0KYXJlIHByb2Nlc3Nlcw0KbWFuNy91c2VyLWtleXJpbmcuNzoyODooVGhl
IGtleXJpbmcgY2FuIGFsc28gYmUgcGlubmVkIGluZGVmaW5pdGVseSBieSBsaW5raW5nIGl0
DQptYW43L3VzZXIta2V5cmluZy43OjYwOnRoZSBsYXN0IHByb2Nlc3MgcGlubmluZyBpdCBl
eGl0cy4NCm1hbjcva2V5cmluZ3MuNzoyMzI6VGhlc2Uga2V5cmluZ3MgYXJlIHBpbm5lZCBh
cyBsb25nIGFzIHRoZSBzZXQgb2YgY3JlZGVudGlhbHMgDQpleGlzdHMsDQptYW43L2tleXJp
bmdzLjc6NjE0OnN0cnVjdHVyZXMgdGhhdCBhcmUgcGlubmluZyB0aGUga2V5DQptYW43L2tl
eXJpbmdzLjc6ODU2Ok5GUyAtIFVzZXIgSUQgbWFwcGluZw0KbWFuNy9rZXlyaW5ncy43Ojg1
NzpUaGUgTkZTIGZpbGVzeXN0ZW0gdXNlcyBrZXlzIHRvIHN0b3JlIG1hcHBpbmdzIG9mDQpt
YW43L3BlcnNpc3RlbnQta2V5cmluZy43OjQ2OmV2ZXJ5dGhpbmcgaXQgcGlucyBjYW4gdGhl
biBiZSBnYXJiYWdlIGNvbGxlY3RlZC4NCm1hbjcvdXNlci1zZXNzaW9uLWtleXJpbmcuNzoy
NzpUaGUga2V5cmluZyByZW1haW5zIHBpbm5lZCBpbiBleGlzdGVuY2Ugc28gbG9uZyANCmFz
IHRoZXJlIGFyZSBwcm9jZXNzZXMNCm1hbjcvdXNlci1zZXNzaW9uLWtleXJpbmcuNzoyOToo
VGhlIGtleXJpbmcgY2FuIGFsc28gYmUgcGlubmVkIGluZGVmaW5pdGVseSBieSANCmxpbmtp
bmcgaXQNCm1hbjcvdXNlci1zZXNzaW9uLWtleXJpbmcuNzo2Mzp3aGVuIHRoZSBsYXN0IHBy
b2Nlc3MgcGlubmluZyBpdCBleGl0cy4NCg0KDQokIGdyZXAgLXJuIGFuY2hvciB8IGdyZXAg
a2V5DQptYW4yL2FkZF9rZXkuMjo1NTouXCIgaXMgY29uc2VxdWVudGx5IHVubGlua2VkLCB0
aGVuIGtleXMgdGhhdCBpdCB3YXMgYW5jaG9yaW5nDQptYW43L3VzZXIta2V5cmluZy43OjEw
OlRoZSB1c2VyIGtleXJpbmcgaXMgYSBrZXlyaW5nIHVzZWQgdG8gYW5jaG9yIGtleXMgb24g
DQpiZWhhbGYgb2YgYSB1c2VyLg0KbWFuNy9rZXlyaW5ncy43OjIxODppdCBtdXN0IGJlIGFu
Y2hvcmVkIHRvIGtlZXAgaXRzIHJlZmVyZW5jZSBjb3VudCBlbGV2YXRlZA0KbWFuNy9rZXly
aW5ncy43OjIyMTpLZXlyaW5ncyBhcmUgdXNlZCB0byBhbmNob3Igb3RoZXIga2V5czoNCm1h
bjcva2V5cmluZ3MuNzoyMjQ6YXJlIGFsc28gc3ViamVjdCB0byB0aGUgc2FtZSBhbmNob3Jp
bmcgcmVxdWlyZW1lbnQgdG8gcHJldmVudA0KbWFuNy9rZXlyaW5ncy43OjIyNzpUaGUga2Vy
bmVsIG1ha2VzIGF2YWlsYWJsZSBhIG51bWJlciBvZiBhbmNob3Iga2V5cmluZ3MuDQptYW43
L2tleXJpbmdzLjc6Mjk4OlRoZXJlIGFyZSBzcGVjaWFsIGtleXJpbmdzIG93bmVkIGJ5IHRo
ZSBrZXJuZWwgdGhhdCBjYW4gDQphbmNob3Iga2V5cw0KbWFuNy9wZXJzaXN0ZW50LWtleXJp
bmcuNzoxMDpUaGUgcGVyc2lzdGVudCBrZXlyaW5nIGlzIGEga2V5cmluZyB1c2VkIHRvIGFu
Y2hvciANCmtleXMgb24gYmVoYWxmIG9mIGEgdXNlci4NCm1hbjcvdGhyZWFkLWtleXJpbmcu
NzoxMDpUaGUgdGhyZWFkIGtleXJpbmcgaXMgYSBrZXlyaW5nIHVzZWQgdG8gYW5jaG9yIGtl
eXMgb24gDQpiZWhhbGYgb2YgYSBwcm9jZXNzLg0KbWFuNy9wcm9jZXNzLWtleXJpbmcuNzox
MDpUaGUgcHJvY2VzcyBrZXlyaW5nIGlzIGEga2V5cmluZyB1c2VkIHRvIGFuY2hvciBrZXlz
IA0Kb24gYmVoYWxmIG9mIGEgcHJvY2Vzcy4NCm1hbjcvc2Vzc2lvbi1rZXlyaW5nLjc6MTA6
VGhlIHNlc3Npb24ga2V5cmluZyBpcyBhIGtleXJpbmcgdXNlZCB0byBhbmNob3Iga2V5cyAN
Cm9uIGJlaGFsZiBvZiBhIHByb2Nlc3MuDQptYW43L3VzZXItc2Vzc2lvbi1rZXlyaW5nLjc6
MTA6VGhlIHVzZXIgc2Vzc2lvbiBrZXlyaW5nIGlzIGEga2V5cmluZyB1c2VkIHRvIA0KYW5j
aG9yIGtleXMgb24gYmVoYWxmIG9mIGEgdXNlci4NCg0KDQotLSANCjxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------a0WQ09pD0820Ww3Y4aRDV21w--

--------------pc8bEpJ0raRk02f8tPFlWwwB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMiOgACgkQnowa+77/
2zLXEQ//esZbrSOYuszJcwWpc78fFSALWWFMQlptnwygzMLTTBBB9vufYx/WP0Ov
reAEtJ7wU0gfRNNUcmJccIURJpDRN7+B/xwrPyS4gtwFHYeDhu0c27QoZNG4rOFZ
z32QkbfXiUJXPptBundtjX1bl7owqzvKvIruuqB/fmu/76tfnn8Ma6/z+81yr2nt
PeTlci6Ws6O58+8rOy5eKTxLK5vasJmA1JVd5AEz7F9HdhSJFKS/fg8WGUzEmXm3
KFvVnZLERoBEDivw/oejOjctX7D1kHNleOniH2IhdLb/ITiBYhjrG03nbzKvS9f7
jaWbGJwSmV4Vt8Ywq71WXyk8qvchpBOmO9rGikded4wVGcjrVjlWLGbXLCQo4EeM
h9VrUBVpX/6V2wCmfDXpi0zmZDz+uwQLw1VQvxkY5DE/xgSyD6lsl+keCipXZk6k
x0zGfuPqoBOm1ofdhchYxdstqQRjTWpgfTQVPm2tgsfQm8L/uPTD0JKK5viiZLWj
BSVOriYSmKbvYpyTUzVJwSTFkpt5NVUqANiKkbleubHyADQzSs4WzroymjipR3xb
3lvci8pjxPblB16AkZTslMDm6fdZUd0zk7UYY7gG6uDc/FnK1/G0RcFwH1c80zQH
xGyOF3kqmrULqV4txbQSuvt+fmLvWtVl/ooer3q3FyuN8FuwtIk=
=FBJP
-----END PGP SIGNATURE-----

--------------pc8bEpJ0raRk02f8tPFlWwwB--
