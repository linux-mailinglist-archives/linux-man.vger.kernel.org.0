Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0811274BE89
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 19:03:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbjGHRDd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 13:03:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHRDd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 13:03:33 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 968C5191
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 10:03:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1852160DD6
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 17:03:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2633C433C7;
        Sat,  8 Jul 2023 17:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688835810;
        bh=4wLh8kpMpXiuvHTA1qihQ+SUGF0xgLXYrmjaktJrzfo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=o9JdpcaABCLMu8wleLcB8Y+hqIPTwkcoBEwnlIiWgpTC4rO6yITuHTz84Y3KmM+ko
         nf9NKH4ZaZpOufcQDN7WfEzs4tFM6rHs2HTnkOujc92+1pZa9A/ymr3WPdwrsNbFFk
         mGbcH/VXrCcSMT/e5rwpgbmPslUBn+yyVL7NgSdrZXuMBq3fZzurqd+CagBXg3Ie5C
         nYYNgs972JtC0l9hO4woAD/Wz5YfmMTKi29cqwJEdocsTbpgRaB3LLIM4yQ1/BETyg
         496AX7pfEoOqN9S9x5GWeS/6GRBbjXbEr2oEqtb19/pVEV0CVbF9vRMsug0bnZJZBh
         WCO0NuBuEYt4Q==
Message-ID: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
Date:   Sat, 8 Jul 2023 19:03:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [musl] Re: [libc-coord] Re: regression in man pages for
 interfaces using loff_t
Content-Language: en-US
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     "A. Wilcox" <AWilcox@wilcox-tech.com>,
        libc-coord@lists.openwall.com,
        Jonathan Wakely <jwakely@redhat.com>,
        Rich Felker <dalias@libc.org>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, musl@lists.openwall.com,
        Sam James <sam@gentoo.org>, Szabolcs Nagy <nsz@port70.net>,
        Jakub Wilk <jwilk@jwilk.net>
References: <31b53a8d-7cf4-b3a3-371f-a5723963383e@cs.ucla.edu>
 <9751E98E-025B-4E32-9EDF-D1984F998C10@wilcox-tech.com>
 <e8cd948b-10ea-9ff6-9707-68c1e0689759@cs.ucla.edu>
 <20230703181659.la7gx5nx4qar6r2v@jwilk.net>
 <0101bd69-1c8d-dcf2-f60d-ff5a984b7566@cs.ucla.edu>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <0101bd69-1c8d-dcf2-f60d-ff5a984b7566@cs.ucla.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jTyZAeTDHvHRaJAjVLG9MOYR"
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
--------------jTyZAeTDHvHRaJAjVLG9MOYR
Content-Type: multipart/mixed; boundary="------------0rQrf6gcRc7ebiB02OCijXaG";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: "A. Wilcox" <AWilcox@wilcox-tech.com>, libc-coord@lists.openwall.com,
 Jonathan Wakely <jwakely@redhat.com>, Rich Felker <dalias@libc.org>,
 linux-man@vger.kernel.org, libc-alpha@sourceware.org,
 musl@lists.openwall.com, Sam James <sam@gentoo.org>,
 Szabolcs Nagy <nsz@port70.net>, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
Subject: Re: [musl] Re: [libc-coord] Re: regression in man pages for
 interfaces using loff_t
References: <31b53a8d-7cf4-b3a3-371f-a5723963383e@cs.ucla.edu>
 <9751E98E-025B-4E32-9EDF-D1984F998C10@wilcox-tech.com>
 <e8cd948b-10ea-9ff6-9707-68c1e0689759@cs.ucla.edu>
 <20230703181659.la7gx5nx4qar6r2v@jwilk.net>
 <0101bd69-1c8d-dcf2-f60d-ff5a984b7566@cs.ucla.edu>
In-Reply-To: <0101bd69-1c8d-dcf2-f60d-ff5a984b7566@cs.ucla.edu>

--------------0rQrf6gcRc7ebiB02OCijXaG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpPbiA3LzMvMjMgMjM6MzUsIFBhdWwgRWdnZXJ0IHdyb3RlOg0KPiBPbiAy
MDIzLTA3LTAzIDExOjE2LCBKYWt1YiBXaWxrIHdyb3RlOg0KPj4+IC1UaGlzIGZvcm1hdCBp
cyBlbXBsb3llZCBpbiBjYXNlcyB3aGVyZSBvbmx5IGEgc2luZ2xlDQo+Pj4gLWZlYXR1cmUg
dGVzdCBtYWNybyBjYW4gYmUgdXNlZCB0byBleHBvc2UgdGhlIGZ1bmN0aW9uDQo+Pj4gLWRl
Y2xhcmF0aW9uLCBhbmQgdGhhdCBtYWNybyBpcyBub3QgZGVmaW5lZCBieSBkZWZhdWx0Lg0K
Pj4+ICtUaGlzIGZvcm1hdCBpcyBlbXBsb3llZCBpbiBjYXNlcyB3aGVyZSBmZWF0dXJlIG1h
Y3Jvcw0KPj4+ICtleHBvc2UgdGhlIGZ1bmN0aW9uIGRlY2xhcmF0aW9uIHdpdGggdGhlIGNv
cnJlY3QgdHlwZSwNCj4+PiArYW5kIHRoZXNlIG1hY3JvcyBhcmUgbm90IGRlZmluZWQgYnkg
ZGVmYXVsdC4NCj4+DQo+PiBUaGlzIGlzbid0IHJpZ2h0LiBUaGUgc2hvcnRoYW5kIGZvcm1h
dCBpcyBzb21ldGltZXMgdXNlZCB3aGVuIHRoZXJlJ3MgDQo+PiBubyBvZmYoNjQpX3QgaW52
b2x2ZWQsIGUuZy4gaW4gbWVtZmRfY3JlYXRlKDIpLg0KPiANCj4gRmFpciBlbm91Z2guIExl
dCdzIGltcHJvdmUgdGhhdCB3b3JkaW5nIHRvOg0KPiANCj4gVGhpcyBmb3JtYXQgaXMgZW1w
bG95ZWQgd2hlbiB0aGUgZmVhdHVyZSB0ZXN0IG1hY3JvcyBlbnN1cmUgdGhhdCB0aGUgDQo+
IHByb3BlciBmdW5jdGlvbiBkZWNsYXJhdGlvbnMgYXJlIHZpc2libGUsIGFuZCB0aGUgbWFj
cm9zIGFyZSBub3QgZGVmaW5lZCANCj4gYnkgZGVmYXVsdC4NCj4gDQo+IFJldmlzZWQgcGF0
Y2ggYXR0YWNoZWQuIElmIHRoaXMgd29yZGluZyBpcyBzdGlsbCBub3QgY2xlYXIgZW5vdWdo
LCANCj4gcGxlYXNlIGZlZWwgZnJlZSB0byBzdWdnZXN0IGJldHRlciB3b3JkaW5nLg0KDQpU
aGFua3MgZm9yIHRoZSB2MyBwYXRjaCwgUGF1bC4gIEkgbGlrZSBpdC4gIFdvdWxkIHlvdSBt
aW5kIHJlc2VuZGluZyBpdA0KaW5saW5lLCB0byBtYWtlIGl0IGVhc2llciB0byBxdW90ZS1y
ZXBseSB0byBpdCwgaW4gY2FzZSBhbnlvbmUgd2FudHMNCnRvIGRpc2N1c3MgYW55dGhpbmc/
ICBEb2VzIGFueW9uZSBvcHBvc2UgdG8gdGhpcyBwYXRjaCwgYW5kIHdhbnRzIHRvDQpwcm9w
b3NlIGFuIGFsdGVybmF0aXZlIHBhdGNoPw0KDQpDaGVlcnMsDQpBbGV4DQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDog
QTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0KDQo=

--------------0rQrf6gcRc7ebiB02OCijXaG--

--------------jTyZAeTDHvHRaJAjVLG9MOYR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpltsACgkQnowa+77/
2zLKlQ/8DdiFZ2PHFgjDjKTa7QdTU8NElWGYKdOQf4ZFye9rAIndMFtdoZTGjaeW
DcXUdQpoJFegpq0PxQ24R6f3STuyemYDkVP+3qopxh+FH0keKioepzItE75npsmq
snaVNHexEazvGhRMT83i2ajyLa/Jl078xWWea1bnXhl0tawR9/5pcQihhpyrD46+
qMfH9Tjxb76GpF/BzErwljMnq4ZjqugZ2xjH4bHbKZFIEmFANFWjVPzam01wx1Xi
ayI15hAvD/l63rWECgMyIrBPooCqtDngPCuWdKYMd+gVEJWgkaIAlM8OU3+p2auS
x+8wzaeqirw/LedRe/ByOnaauW7JeErJqDoTWzl3mnI8uGeERY5coSn9Dr07jzmF
eiqNDTcu7Tsu85CBHoCxJi314QnI2GYcLg11Gl9iECEZgyvYElGldJwRg6urcslV
C061EwOcxM42yVXTOiUk9MiKMNVNSd1NWVUPDzzRM8dNwPBiTHjqTv7GevuV9vhU
wmvSX5ptQoTZF0/MJA+qAHZ4ZSBV2bHyIq7xy8nOfGwYS+dvao91iaHuxnAYmNs+
2zgqR63nJ93K6DVG0Acqo9W0IExwTkIWo8H6zj0H7U3J/Z1fE4vMTdNjLD+5rmTN
8OeaQwH4RRLEreW0mUPZUqyGvu2SgYPHEv83ETXczNuGTpzGsTA=
=jBrd
-----END PGP SIGNATURE-----

--------------jTyZAeTDHvHRaJAjVLG9MOYR--
