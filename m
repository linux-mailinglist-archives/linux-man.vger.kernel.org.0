Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76A52641F63
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:08:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229970AbiLDUIg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:08:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230142AbiLDUIf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:08:35 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BDA412A97
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:08:34 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id m14so15781266wrh.7
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3AaZKUCuqIdGcQ6ypzXsbQuGoOwlHocYZkyS8WWK3zM=;
        b=k84dF+6mlysLX2TuE+jTspxkS+X9cghg3+JWG2275c4+6WVGELvKplWhT1zV/DM7/B
         D0VGRxLGur8OEQ/zeu2h7lfpinj2P7H3HougJUSVTjngOmsgkU5wZgaJ6SjMLX9X2qI1
         V2SUABJ0bABxcPak/qJBouW3VQj9kJrrRGsG9i6us4KGQpylYckLFhC52Ur8+UYhvlbk
         aX18Dxl8m5bfYhWBF7jlftNQbxqLUyQDtERA4n+ORsx+sAh8llvTN7ngFpIdMyr0zFJ/
         3RbPHPbpqsDPUSkWCNa/1EYZe7op2muQdYblQyHqlItX0cBi+P5bTsndHXfHid5WywI4
         6Qyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3AaZKUCuqIdGcQ6ypzXsbQuGoOwlHocYZkyS8WWK3zM=;
        b=A8473jt1xqMUpHtqo76l665klw9f+N6DchaZKodaGS/hYCCIwHOsiyGO7vlXuXjSdF
         RIkicqD/m7s4unPtlykZqKD9eitjNu7eFwG0NFGn7X9hPVZgn5KiUb0qv3NCcIgNX19H
         0SIEjLacW7ntb2zfeW3PqVjPj2nJHbgYnxm8SwrCEOTgy/VTZpD3QItZ9AagPwsM25PG
         QZLQZdsrQGqr5JDicKPBAJHtZtg3ySj6DOg+vlNn5eLr4NebfYOKQiHQJvuMaNTkpc5F
         3VhfIbtspMmQ4R+YU6D9I2Vo0XOKueOYNxCRmx9el9hWneRteNOjOzDGTMDofcD2rC2i
         3M/A==
X-Gm-Message-State: ANoB5plKsCLnYUEbwh0hwbrnw96WDEG9wEdbS8o7WYOOxIWYu7CZc3KM
        NZ3kMi0PIg8n9puj6pRV2Lw=
X-Google-Smtp-Source: AA0mqf427Laq3vZOQ61MHvxWaX54IwEwjXjZedPQMF07UzMSrQatYowWhZ1k4U5aByziTCn+0f1jkA==
X-Received: by 2002:adf:fbc8:0:b0:236:c820:97d1 with SMTP id d8-20020adffbc8000000b00236c82097d1mr38175798wrs.201.1670184512980;
        Sun, 04 Dec 2022 12:08:32 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p15-20020a05600c358f00b003c6b874a0dfsm21313618wmq.14.2022.12.04.12.08.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:08:32 -0800 (PST)
Message-ID: <9382edc7-2a58-5844-b7a2-4ee991af8d64@gmail.com>
Date:   Sun, 4 Dec 2022 21:08:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page proc.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090715.GA682@Debian-50-lenny-64-minimal>
 <09758b86-2f45-2ca4-4641-162c74683e3e@gmail.com>
 <20221204200234.GA15305@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204200234.GA15305@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kJLOQEMy9jORHtxnhdJ6cvNb"
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
--------------kJLOQEMy9jORHtxnhdJ6cvNb
Content-Type: multipart/mixed; boundary="------------aUlsIXqD0qbdLkIJjesm9q0c";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <9382edc7-2a58-5844-b7a2-4ee991af8d64@gmail.com>
Subject: Re: Issue in man page proc.5
References: <20221204090715.GA682@Debian-50-lenny-64-minimal>
 <09758b86-2f45-2ca4-4641-162c74683e3e@gmail.com>
 <20221204200234.GA15305@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204200234.GA15305@Debian-50-lenny-64-minimal>

--------------aUlsIXqD0qbdLkIJjesm9q0c
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMjE6MDIsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IEhlbGxvIEFsZWphbmRybywNCj4gT24gU3VuLCBEZWMgMDQsIDIwMjIgYXQgMDg6NTI6
MzNQTSArMDEwMCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxMi80LzIyIDEw
OjA3LCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IFdpdGhvdXQgZnVydGhlciBhZG8s
IHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPj4+DQo+Pj4gSXNzdWU6ICAgIEhhcyBtb3Jl
IGZpZWxkcyBpbiBMaW51eCA2LjAuMTENCj4+Pg0KPj4+ICJzbCAgbG9jYWxfYWRkcmVzcyBy
ZW1fYWRkcmVzcyAgIHN0IHR4X3F1ZXVlIHJ4X3F1ZXVlIHRyIHJleG1pdHMgIHRtLUU8Z3Q+
d2hlbiB1aWRcbiINCj4+PiAiIDE6IDAxNjQyQzg5OjAyMDEgMEM2NDJDODk6MDNGRiAwMSAw
MDAwMDAwMDowMDAwMDAwMSAwMTowMDAwNzFCQSAwMDAwMDAwMCAwXG4iDQo+Pj4gIiAxOiAw
MDAwMDAwMDowODAxIDAwMDAwMDAwOjAwMDAgMEEgMDAwMDAwMDA6MDAwMDAwMDAgMDA6MDAw
MDAwMDAgNkYwMDAxMDAgMFxuIg0KPj4+ICIgMTogMDAwMDAwMDA6MDIwMSAwMDAwMDAwMDow
MDAwIDBBIDAwMDAwMDAwOjAwMDAwMDAwIDAwOjAwMDAwMDAwIDAwMDAwMDAwIDBcbiINCj4+
DQo+PiBQbGVhc2Ugc2VuZCBhIHBhdGNoLg0KPiANCj4gT24gbXkgbWFjaGluZSB1c2luZyA2
LjAuMTEgSSBzZWUgdGhlIGZvbGxvd2luZzoNCj4gDQo+IHJvb3RAdHdlbnR5dHdvOn4jIGNh
dCAvcHJvYy9uZXQvdWRwDQo+ICAgICBzbCAgbG9jYWxfYWRkcmVzcyByZW1fYWRkcmVzcyAg
IHN0IHR4X3F1ZXVlIHJ4X3F1ZXVlIHRyIHRtLT53aGVuIHJldHJuc210ICAgdWlkICB0aW1l
b3V0IGlub2RlIHJlZiBwb2ludGVyIGRyb3BzDQo+IDEyNDc5OiAyMEIyQThDMDowMDQ0IDAw
MDAwMDAwOjAwMDAgMDcgMDAwMDAwMDA6MDAwMDAwMDAgMDA6MDAwMDAwMDAgMDAwMDAwMDAg
ICAgIDAgICAgICAgIDAgMzA5MTkgMiAwMDAwMDAwMDQwM2VjOWE4IDANCj4gMTMwNDI6IDAw
MDAwMDAwOjAyNzcgMDAwMDAwMDA6MDAwMCAwNyAwMDAwMDAwMDowMDAwMDAwMCAwMDowMDAw
MDAwMCAwMDAwMDAwMCAgICAgMCAgICAgICAgMCAyNTY5OCAyIDAwMDAwMDAwYWQ3M2ZlNDUg
MA0KDQpJIGRvbid0IHVuZGVyc3RhbmQgdGhlIHJlcG9ydCB2ZXJ5IHdlbGwuICBJZiB5b3Ug
ZG9uJ3QgbWluZCwgc2VuZGluZyBhIHBhdGggDQp3b3VsZCBtYWtlIGl0IG1vcmUgY2xlYXIg
dG8gbWUuICBUaGFua3MuDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBHcmVldGluZ3MN
Cj4gDQo+ICAgICAgICAgSGVsZ2UNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0K

--------------aUlsIXqD0qbdLkIJjesm9q0c--

--------------kJLOQEMy9jORHtxnhdJ6cvNb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM/j8ACgkQnowa+77/
2zKrrQ/8C6IznqFNjsYXxh1311rrvTbTzwswLV4myzEQ5yBYinVNnN2i3TV8FZI1
rw2cdzfbWXYuRoHnP2Pk1pnZ1c4RU5VflcziwjZdcScBRKtusrQqGYwXD5k7VLga
cYgtB5jY4TM8ccQioRd/xWDkUcwS8+4DVHnhTwwzeN4Y3kvy9zuVSs2U8Za6aq4Q
FY6xAOU+BuuEvrF/ObfY2g/Oe74nKd/n1u34h8qVM065tRDC+PVL4S5naLFtWdYw
A0Xorgljy7SRmVoA98HIjapuunPBf7Dd+vQ1rmGDrpoetKmIMN4ns+/uaid0UmSU
C1ngXZhICokC4gBiG/Tny4qfP5fholPrO2eaLoAnWYXkDIVv2ob3sc2vFxy4RFCH
JmW9gK3i+2ue6Ae3D5dR1d/H5gn/Cq8/OlmbEmibIHfuZ2KRsyr8UDKwF1faWKeV
yYpZaPRAUY0Sn+TC5dtEHzhb9wUiBb/HxQpisaVRvqI8babyfQbKgJeGCevO43Bs
QVuZwZagSKSk8DsNN/XHW+Gqf68cjGKRfdaU88gOXiNp2Sb23xAPwGbHf6jbIV0M
iSgCYrdOOCAj6o8RpszinmVQO6QNWO2VmFo2t190fvg50xKoNZHo7bxC+UKZCcKs
VDKyNW32OTwNOpn01hKsKXOL08mPpplgjRZoSEMkIdmw+RhVc2Y=
=oIcL
-----END PGP SIGNATURE-----

--------------kJLOQEMy9jORHtxnhdJ6cvNb--
