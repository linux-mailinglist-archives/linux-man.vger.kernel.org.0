Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37C5D63696F
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 20:02:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238261AbiKWTCE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 14:02:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239388AbiKWTBt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 14:01:49 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00608922C6
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:01:47 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id x5so26775991wrt.7
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eFN5ntfZk8DJbK5Cz7KQuRj3mWexTxg9cxCj/L18g2Q=;
        b=QZNUbiCDYU6a/n9eXmbLxrwVtV0PWRLRTNqPGegrgLJNWPqNF8UhaBqHL2C2sS52ze
         XgxratiQQwf1+6xvgEyYPJk0m4cix+FxCiP7p1FSU7mPb0t4nbuemarj7fcMJQs9J87V
         wcxqiDkTGbDDnZlcCUbueZ57+2TPPZBgLm7tsU7WZyiI4SaIsvbRB59/htmfncSErFMD
         3yl6JG/bPQBKNd+NxNZWn3ruOIltOgLiZrxLWzjfRsNwtZMPOUfh/D4eroRdIYndmTgY
         lANUe2y3KgUejyTx5rSZ94W9fUZQcRvGsLlJrOF6NpEtQUmEGhkldjh8YAnkl3aXsCJ+
         1Gqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eFN5ntfZk8DJbK5Cz7KQuRj3mWexTxg9cxCj/L18g2Q=;
        b=rD2rtI/M5/EL78ZEfWubJwMvWdhcGIzQzOVsdrgMVEXDd/FfbakQIHpcA5QqYXlIrK
         LQo5IMvtyLkqMrPapqEPwIt1XWnQ1W3MyZAznX7cKIgB/N2fFUIrlklVbSawmHXAiNFr
         L5uuNb7aKLol+KkdYTMKqGg/G3nChlYUxTV2XZaP5uyrlueDVW+T124pHTEyXGNAjFJ3
         IVNDTQPPGJkvzTEI36R4lZRL7PArx01N/rGn9iOpCYHce1mxjObhy7OD0n3T2G8j9lLa
         1sGHya5tMBHvFubpNlkiThAOzUwRdBmjkG4gMZs7a5oesnZb61MgL7tvZChDYxvLAkEq
         Q32A==
X-Gm-Message-State: ANoB5pm6NIvOy8cnSx/MTOjqr871SklIcTaddCqGFKb2x3rHXRsfR5WZ
        gfv4TQO00WzALT6lETIWWOzyvnpSI8g=
X-Google-Smtp-Source: AA0mqf5y1lzBPdf/2UIHbzU4iObIjVPLbCqrVQIBx6vkNNRWwRyNlGWFd/5m4QWORk7nTX0Vwca8gg==
X-Received: by 2002:a5d:5404:0:b0:241:d812:6a1f with SMTP id g4-20020a5d5404000000b00241d8126a1fmr9358723wrv.286.1669230106280;
        Wed, 23 Nov 2022 11:01:46 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p37-20020a05600c1da500b003cf4eac8e80sm3868366wms.23.2022.11.23.11.01.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 11:01:45 -0800 (PST)
Message-ID: <423d19dd-211a-1acc-eb9b-a86153c19f94@gmail.com>
Date:   Wed, 23 Nov 2022 20:01:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 1/4] zic.8: Add public domain notice
To:     Paul Eggert <eggert@cs.ucla.edu>, tz@iana.org
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20221123134827.10420-1-alx@kernel.org>
 <ab852b8f-2c05-ba10-187d-c7f0e6545dcd@cs.ucla.edu>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ab852b8f-2c05-ba10-187d-c7f0e6545dcd@cs.ucla.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KHlVexMZ6DsqzBSR3OX8qrjG"
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
--------------KHlVexMZ6DsqzBSR3OX8qrjG
Content-Type: multipart/mixed; boundary="------------e0QRwp8U1fvlGYS5SLR1LQRO";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Paul Eggert <eggert@cs.ucla.edu>, tz@iana.org
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <423d19dd-211a-1acc-eb9b-a86153c19f94@gmail.com>
Subject: Re: [PATCH v2 1/4] zic.8: Add public domain notice
References: <20221123134827.10420-1-alx@kernel.org>
 <ab852b8f-2c05-ba10-187d-c7f0e6545dcd@cs.ucla.edu>
In-Reply-To: <ab852b8f-2c05-ba10-187d-c7f0e6545dcd@cs.ucla.edu>

--------------e0QRwp8U1fvlGYS5SLR1LQRO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUGF1bCwNCg0KT24gMTEvMjMvMjIgMTk6MzIsIFBhdWwgRWdnZXJ0IHdyb3RlOg0KPiBP
biAyMDIyLTExLTIzIDA1OjQ4LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gDQo+PiBk
aWZmIC0tZ2l0IGEvemljLjggYi96aWMuOA0KPj4gaW5kZXggZjc5MTQ4ZjQuLmMyYzYxNzM5
IDEwMDY0NA0KPj4gLS0tIGEvemljLjgNCj4+ICsrKyBiL3ppYy44DQo+PiBAQCAtMSwzICsx
LDcgQEANCj4+ICsuXCIgJSUlTElDRU5TRV9TVEFSVChQVUJMSUNfRE9NQUlOKQ0KPj4gKy5c
IiBUaGlzIHBhZ2UgaXMgaW4gdGhlIHB1YmxpYyBkb21haW4NCj4+ICsuXCIgJSUlTElDRU5T
RV9FTkQNCj4+ICsuXCINCj4+IMKgIC5USCBaSUMgOA0KPj4gwqAgLlNIIE5BTUUNCj4+IMKg
IHppYyBcLSB0aW1lem9uZSBjb21waWxlcg0KPiANCj4gTGV0J3Mgbm90IGRvIHRoYXQgdXBz
dHJlYW0uIFRoZSBmaWxlIGFscmVhZHkgY29udGFpbnMgYSBwdWJsaWMtZG9tYWluIG5vdGlj
ZSBhdCANCj4gdGhlIGJvdHRvbSwgaW4gYSBodW1hbi1yZWFkYWJsZSBmb3JtYXQgdGhhdCBp
cyB2aXNpYmxlIHRvIGFueWJvZHkgd2hvIGxvb2tzIGF0IA0KPiB0aGUgcHJpbnRhYmxlIHZl
cnNpb24gb2YgdGhlIG1hbiBwYWdlLiBMZXQncyBub3QgcHV0IGluIGNvbW1lbnRzIGZvciBl
dmVyeSANCj4gZG93bnN0cmVhbSB1c2VyIHdpdGggaXRzIG93biBpZGlvc3luY3JhdGljIG1h
Y2hpbmUtcmVhZGFibGUgd2F5IG9mIHJlcGVhdGluZyANCj4gd2hhdCdzIGFscmVhZHkgdGhl
cmUuDQoNCkFoLCBJIGRpZG4ndCBzZWUgdGhhdC4NCg0KV291bGQgeW91IG1pbmQgbW92aW5n
IGl0IHRvIHRoZSB0b3Agb2YgdGhlIGZpbGUsIGFzIGlzIGNvbW1vbiB3aXRoIHRoZXNlIA0K
bm90aWNlcz8gIEknZCByZW1vdmUgdGhlIG9uZSBpbiB0aGUgTGludXggbWFuLXBhZ2VzIHJl
cG8gaWYgeW91IGRvIHRoYXQsIHdoaWNoIA0Kd291bGQgbWVhbiBsZXNzIG1haW50ZW5hbmNl
IGZvciBtZSAoSSBjb3VsZCBhbHNvIHJlbW92ZSBpdCBhbmQga2VlcCB0aGUgb25lIGF0IA0K
dGhlIGJvdHRvbSwgYnV0IGl0J3MgbGlrZWx5IHRvIG5vdCBiZSBmb3VuZCBhcyBlYXNpbHkp
Lg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------e0QRwp8U1fvlGYS5SLR1LQRO--

--------------KHlVexMZ6DsqzBSR3OX8qrjG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN+bgoACgkQnowa+77/
2zLIow//ex60WpyisVqZte7X4nov9NMQk8n6iOVtYR0lZsLpjGvvE23kpBBECqJc
FSvYz3dntnJIqS/IDlm8ARovEeVyGTSPQdagJ1NRIUGeSZKO/WSvk8n00rtigAlr
ZApEmuvCpY65eq4DWhnppyVb3Yh/778UyGCYNSqnRG7M80SllkKI+msBtpXnvz1L
9x+swv78goXa4Wen/q/FTVIr/EVgvNAEpjhCl72p25WE9bk029W9bO9i9nXMs+IQ
5DOI1O0v5ISj/eWY6ouV4Ps3PKTDUdL3zeACtNP4pg4kVKeVMRphDqxnCNcw1CV7
9uok6g5vvhYSx4cfrDHA0GtGGzvwZ9gwTtX00uACsWKI05Btva/Fg5cO3uEl2nGJ
Rx78XBgYdQhpuwV+sxKW/SgWrVpoDoqId2D0LiFZ3JF3to/VXTIeu9lbN5BIqolk
JbKPvjuQ00CPmlH51/3b8pElsOV3xsSkruPsPudCi7jw+spAHu47Q8pbn6cqPQk7
LyN2VSHA0RuSsoj6Qc6jiFedflfBXN+do6gwX+FqNpWX2bjQucXnS1tbDP6ECQu/
rA5q1OUXTONwn+tJ/GnMExuYJUMYBrzK4Ir0eh8PRF1FwvAru5fIPh7Rhd4tMp67
35t1T68e+oZoxLdHc8rykaGQQW65BjnYOAmAYcbisu8+PAhMMDk=
=Trz6
-----END PGP SIGNATURE-----

--------------KHlVexMZ6DsqzBSR3OX8qrjG--
