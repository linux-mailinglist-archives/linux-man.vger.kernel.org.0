Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A94DD74BE52
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 17:57:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229682AbjGHP5P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 11:57:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjGHP5O (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 11:57:14 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 444F6125
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 08:57:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D25B660B7A
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 15:57:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D60E2C433C9;
        Sat,  8 Jul 2023 15:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688831832;
        bh=BKF3Z0w6xyRoSv/KUwxXa96CfhqhhvFtH8YrrMsOrL0=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=pmvcXfsHo2GGO5IO577fBtG+hbMr9plYysHel2wJw03hEJ4/t5gCtwShonM3SZIjA
         hQcyoLpdm7kQJRBmeDrgyeGDxQXkeko4wJg5yy+cEppaCwDM8HhdKJ15txfcZaXxIs
         q29cV/CMo44zNI35nhSyMBng5SHVprnhkcKRLeCZXCaiRlmHbgzIrkq9ZVd0b9lvYq
         T+aPj61LB3xlhSYDG2D+5vM2Kzn+kBWCn15mkVYkulXikHgZWMF5SCQcCqfeF1KqiD
         sEctoGvHvNy0s13MEyoBM6Zjvj1tpRa/B872fA1k661e1ptRTsyLb1M1vNY4JMhLJh
         FlXxWKVf8qfJg==
Message-ID: <378bf46d-3b2b-2034-41fc-7c2d3b0483ed@kernel.org>
Date:   Sat, 8 Jul 2023 17:57:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [patch] recv.2: correct non-existent name msg_iovec
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Rob Linden <rlinden@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <CAP0H_AFpK56deW+_Lb0Q3-51Z6kiL_G-SBYmC2GDnpTmrWj0FQ@mail.gmail.com>
 <69f90d0f-4731-2a7d-9e6c-e1dd0b36c404@kernel.org>
In-Reply-To: <69f90d0f-4731-2a7d-9e6c-e1dd0b36c404@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------M04cqVu0THdXG8pi3x7m07NX"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------M04cqVu0THdXG8pi3x7m07NX
Content-Type: multipart/mixed; boundary="------------P0FyzmcOkjw80f03jqmWNfcu";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Rob Linden <rlinden@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <378bf46d-3b2b-2034-41fc-7c2d3b0483ed@kernel.org>
Subject: Re: [patch] recv.2: correct non-existent name msg_iovec
References: <CAP0H_AFpK56deW+_Lb0Q3-51Z6kiL_G-SBYmC2GDnpTmrWj0FQ@mail.gmail.com>
 <69f90d0f-4731-2a7d-9e6c-e1dd0b36c404@kernel.org>
In-Reply-To: <69f90d0f-4731-2a7d-9e6c-e1dd0b36c404@kernel.org>

--------------P0FyzmcOkjw80f03jqmWNfcu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy84LzIzIDE3OjI5LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gT24gNi8xOS8y
MyAxMzo0OSwgUm9iIExpbmRlbiB3cm90ZToNCj4+IEhlbGxvIEFsZWphbmRybyENCj4gDQo+
IEhlbGxvIFJvYiENCj4gDQo+IFNvcnJ5IGZvciB0aGUgZGVsYXk7IEkndmUgYmVlbiBvbiB2
YWNhdGlvbi7CoCBQbGVhc2UgZG9uJ3Qgc3RhcnQgbmV3DQo+IHRocmVhZHMgZm9yIGNvbnRp
bnVpbmcgYW4gb2xkIG9uZSwgYXMgaXQgbWFrZXMgaXQgZGlmZmljdWx0IHRvIGZvbGxvdy4N
Cj4gSXMgdGhpcyBqdXN0IGEgcmVzZW5kIG9mIHRoZSBwcmV2aW91cyBwYXRjaD8NCg0KQ2Fu
IHlvdSBwbGVhc2UgcmVzZW5kIGFueSBwYXRjaGVzIHRoYXQgeW91IHNlbnQgYXMgYSBuZXcg
cGF0Y2ggc2V0LCB3aXRoDQphbGwgb2YgdGhlbSB0b2dldGhlcj8NCg0KVGhhbmtzLA0KQWxl
eA0KDQo+IA0KPiBUaGFua3MsDQo+IEFsZXgNCj4gDQo+Pg0KPj4gSSB0aGluayB0aGVyZSBp
cyBhIG1pc3Rha2Ugb24gdGhlIG1hbnBhZ2UgZm9yIHJlY3YuIEluIHRoZSBkZXNjcmlwdGlv
biBvZg0KPj4gdGhlIGZsYWcgTVNHX0VSUlFVRVVFIGl0IHNheXMgdGhhdCBkYXRhIGlzIHBh
c3NlZCB2aWEgIm1zZ19pb3ZlYyIuIA0KPj4gVGhpcyBpcw0KPj4gcHJvYmFibHkgcmVmZXJy
aW5nIHRvIG1zZ19pb3YgaW4gc3RydWN0IG1zZ2hkcg0KPj4gKGZyb20gL3Vzci9pbmNsdWRl
L2JpdHMvc29ja2V0LmgpLiBBICJtc2dfaW92ZWMiIGRvZXNuJ3Qgc2VlbSB0byBleGlzdC4N
Cj4+IE1heWJlIGl0IHdhcyBzcGVsbGVkIHdyb25nIGJlY2F1c2UgaXQncyBvZiB0eXBlIHN0
cnVjdCBpb3ZlYy4NCj4+IElmIGl0IGlzIGluZGVlZCB3cm9uZyB0aGVuIHRoZSBmb2xsb3dp
bmcgcGF0Y2ggY29ycmVjdHMgaXQ6DQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogUm9iIExpbmRl
biA8cmxpbmRlbkByZWRoYXQuY29tPg0KPj4NCj4+IMKgRnJvbSA4MzBhMWIxMjMzZWI2OWJk
OGE0YTY0Mjk2NTgxZDA5NGZiMGVkYzQ2IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KPj4g
RnJvbTogcm9ra2JlcnQgPHJva2tiZXJ0QGdtYWlsLmNvbT4NCj4+IERhdGU6IFR1ZSwgNiBK
dW4gMjAyMyAxMDowMDoyMCArMDIwMA0KPj4gU3ViamVjdDogW1BBVENIXSByZWN2LjI6IGZp
ZWxkIG1zZ19pb3YgaW4gc3RydWN0IG1zZ2hkciBpcyB3cm9uZ2x5IGNhbGxlZA0KPj4gwqAg
bXNnX2lvdmVjLiBDb3JyZWN0ZWQgdG8gbXNnX2lvdi4NCj4+DQo+PiAtLS0NCj4+IMKgIG1h
bjIvcmVjdi4yIHwgMiArLQ0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL21hbjIvcmVjdi4yIGIvbWFu
Mi9yZWN2LjINCj4+IGluZGV4IDI3ZDZkNjEyYy4uNjJlNDNjOWFhIDEwMDY0NA0KPj4gLS0t
IGEvbWFuMi9yZWN2LjINCj4+ICsrKyBiL21hbjIvcmVjdi4yDQo+PiBAQCAtMTU5LDcgKzE1
OSw3IEBAIGFuZA0KPj4gwqAgZm9yIG1vcmUgaW5mb3JtYXRpb24uDQo+PiDCoCBUaGUgcGF5
bG9hZCBvZiB0aGUgb3JpZ2luYWwgcGFja2V0IHRoYXQgY2F1c2VkIHRoZSBlcnJvcg0KPj4g
wqAgaXMgcGFzc2VkIGFzIG5vcm1hbCBkYXRhIHZpYQ0KPj4gLS5JUiBtc2dfaW92ZWMgLg0K
Pj4gKy5JUiBtc2dfaW92IC4NCj4+IMKgIFRoZSBvcmlnaW5hbCBkZXN0aW5hdGlvbiBhZGRy
ZXNzIG9mIHRoZSBkYXRhZ3JhbSB0aGF0IGNhdXNlZCB0aGUgZXJyb3INCj4+IMKgIGlzIHN1
cHBsaWVkIHZpYQ0KPj4gwqAgLklSIG1zZ19uYW1lIC4NCj4+IC0tIA0KPj4gMi4zOS4yDQo+
Pg0KPj4NCj4+IEFsbCB0aGUgYmVzdCwNCj4+IHJvYg0KPj4NCj4gDQoNCi0tIA0KPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDogQTkz
NDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0KDQo=

--------------P0FyzmcOkjw80f03jqmWNfcu--

--------------M04cqVu0THdXG8pi3x7m07NX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSph1QACgkQnowa+77/
2zISzw/9H0E3AiOYyvCkyJnEPVkHsnyz2x24ZNw67+20qGuW2/tTkCHhS6hot+Pd
2iT7uuXWTlWbGNu//egqQfKxjhIWSJ/BCq67lp57EUeKxPwoE4sVBVSqYJgL0Xec
HODVy36pHC3B3TWCvnpFV6IhQrQCYREOkLV/Hzts5CNB/xIhQXYI0fVUYmPcyKrx
t+N4BaAxT3rMHYmERZsVJ7+2IWKZbbpRN9/HiD0UcFmHOi9sChJLCdAqeSDADvNr
W+ACfKp/Arxp6xVTNk7S+p06gbcOgPfPlW7nZcq3vv98epk8l8RJb/l9R46S3tCk
BE4DWXG59JGEhM38DuwzhmqaNvagNUTmb1X7MN/PMnqKSItZZoqJMdHiGjZH2c0/
x7vrEWazKGdp/UpQ2PDq9w77VmzXOp7LLovac+FUvJgxVag6CMLLogbOuwCRSNNk
2oEWHUVMNjMexZKNCfKIM/5esKE0HSa0oYsv9DV5Doe1ie3VvhyNb4XPfgMDr5Pe
KXHa9E7jm/bVVHGhcj1Ko9PdkZqSRcVEeGmnjf785R4jK5ARA6MmUMIAsb5quNZi
3KxHiZ4STITHmPozZynnLCGPjbb1kPwD8Y9JMZDaOZSOXFSdKjHuQvVBG0tee8VS
YUFH7myvf8JUp9q0ynsJ/BOTIRi6a6lnz2Ivcc2JLPZHbs9tEGI=
=1GAs
-----END PGP SIGNATURE-----

--------------M04cqVu0THdXG8pi3x7m07NX--
