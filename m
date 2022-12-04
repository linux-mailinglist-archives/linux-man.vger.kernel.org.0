Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 218E6641FA8
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:52:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229970AbiLDUwg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:52:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230117AbiLDUwf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:52:35 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A2D1BF3
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:52:34 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id h7so9876448wrs.6
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A7+qGQX5AyKMticGUwBJ50tkNYnv6K+ybIe41hLkn9I=;
        b=douxs40GMbX/FOZQVtdKrSp/PAs7mKTfzki/ew+vo5mDTDlBhBBmFUlv3nwYEcHbP8
         j1hG/Mk4q2ADqqV18tlxIjcbImLgoyx+bPiPr14mlqC1yOZrt4QfIMlIPZ0QxhwmPpeW
         s+94eFbHUJ6+GBqT2YP9AA+Qm6Cg6M/CHxFYGpi7UV9P+zEhHblZofEJl/mK9hydjx/O
         C059G4mZWDKW2YuNcufZE1VHbqPKnbOYlZJsxSX6Iptb/MU9tcxJ4FYjrEx5yE1WNP/2
         DgXrKll3lsg00T//W8NOR1Y1Eyl311aoEMinFZYgp/P9VeI22bd/2DKoA/u0bfQ4uYkd
         VMhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A7+qGQX5AyKMticGUwBJ50tkNYnv6K+ybIe41hLkn9I=;
        b=uZFpmOg7IIQ0SEjPcWBUhesS8kL8HrK4fOxmzc+n2fWzmKzp3VXbF6BddD8MMbIV/5
         k+W2mobat1vLLb3d1o9//3Iy5AGOnIp/IZUnBSPb8/zHlz8lvwTau1sWn9dQDS35MOay
         mOmVY6RRAQyZh4IfDgWf2PP3JZlYpPKS7MoKYW9lyArzdtuUR19x8rtBRQTf0pgj3VEd
         cfXPMrzWleU9tTX3Dbevb1cX7JZ8Cbzz3O7FoAr9ln12KaXE2u0jIU6ucnqZe82cv9n3
         4fu9qXlVGppr0tfr44zBJJaat7bLOi7Mhr8/8+zkkWru4dFl6S0F89gtRtBonN6E3mZ8
         IUyw==
X-Gm-Message-State: ANoB5pkMr6LI/w/xbyovxSiGrXg7Rqq6udxY579K2QxfXr5xCFqLoMM3
        /5eh18E7W7bHl/QuWH5/Ivg=
X-Google-Smtp-Source: AA0mqf4BEwa3BIXKdGn3HbWng8OIJo7P8AJPcxMp3EqKzGHZgyNxYJ5FNTiMDwObMT9JyUxIphLQOw==
X-Received: by 2002:a05:6000:5c2:b0:242:2601:719d with SMTP id bh2-20020a05600005c200b002422601719dmr14591313wrb.366.1670187152781;
        Sun, 04 Dec 2022 12:52:32 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j33-20020a05600c1c2100b003b4ff30e566sm25664571wms.3.2022.12.04.12.52.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:52:32 -0800 (PST)
Message-ID: <31bfcd99-ae09-8277-5da5-179d9c547e73@gmail.com>
Date:   Sun, 4 Dec 2022 21:52:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page wcsspn.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090725.GA1297@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090725.GA1297@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------b0yl500CgkgSGfXI4DDK170F"
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
--------------b0yl500CgkgSGfXI4DDK170F
Content-Type: multipart/mixed; boundary="------------UsN7NShCoVcbJ0lwaMgwJp3n";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <31bfcd99-ae09-8277-5da5-179d9c547e73@gmail.com>
Subject: Re: Issue in man page wcsspn.3
References: <20221204090725.GA1297@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090725.GA1297@Debian-50-lenny-64-minimal>

--------------UsN7NShCoVcbJ0lwaMgwJp3n
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgbG9uZ2VzdCBpbml0aWFsIOKGkiBpbml0aWFsDQoNCkludmFsaWQsIGFz
IHNhaWQgaW4gdGhlIG90aGVyIHJlcG9ydCwgSSBiZWxpZXZlLg0KDQpDaGVlcnMsDQoNCkFs
ZXgNCg0KPiANCj4gIlRoZSBCPHdjc3Nwbj4oKSAgZnVuY3Rpb24gaXMgdGhlIHdpZGUtY2hh
cmFjdGVyIGVxdWl2YWxlbnQgb2YgdGhlIg0KPiAiQjxzdHJzcG4+KDMpICBmdW5jdGlvbi4g
IEl0IGRldGVybWluZXMgdGhlIGxlbmd0aCBvZiB0aGUgbG9uZ2VzdCBpbml0aWFsIg0KPiAi
c2VnbWVudCBvZiBJPHdjcz4gd2hpY2ggY29uc2lzdHMgZW50aXJlbHkgb2Ygd2lkZS1jaGFy
YWN0ZXJzIGxpc3RlZCBpbiINCj4gIkk8YWNjZXB0Pi4gIEluIG90aGVyIHdvcmRzLCBpdCBz
ZWFyY2hlcyBmb3IgdGhlIGZpcnN0IG9jY3VycmVuY2UgaW4gdGhlIHdpZGUtIg0KPiAiY2hh
cmFjdGVyIHN0cmluZyBJPHdjcz4gb2YgYSB3aWRlLWNoYXJhY3RlciBub3QgY29udGFpbmVk
IGluIHRoZSB3aWRlLSINCj4gImNoYXJhY3RlciBzdHJpbmcgSTxhY2NlcHQ+LiINCj4gDQo+
ICJUaGUgQjx3Y3NzcG4+KCkgIGZ1bmN0aW9uIHJldHVybnMgdGhlIG51bWJlciBvZiB3aWRl
IGNoYXJhY3RlcnMgaW4gdGhlIg0KPiAibG9uZ2VzdCBpbml0aWFsIHNlZ21lbnQgb2YgSTx3
Y3M+IHdoaWNoIGNvbnNpc3RzIGVudGlyZWx5IG9mIHdpZGUtY2hhcmFjdGVycyINCj4gImxp
c3RlZCBpbiBJPGFjY2VwdD4uICBJbiBvdGhlciB3b3JkcywgaXQgcmV0dXJucyB0aGUgcG9z
aXRpb24gb2YgdGhlIGZpcnN0Ig0KPiAib2NjdXJyZW5jZSBpbiB0aGUgd2lkZS1jaGFyYWN0
ZXIgc3RyaW5nIEk8d2NzPiBvZiBhIHdpZGUtY2hhcmFjdGVyIG5vdCINCj4gImNvbnRhaW5l
ZCBpbiB0aGUgd2lkZS1jaGFyYWN0ZXIgc3RyaW5nIEk8YWNjZXB0Piwgb3IgSTx3Y3NsZW4o
d2NzKT4gaWYgdGhlcmUiDQo+ICJpcyBub25lLiINCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQo=

--------------UsN7NShCoVcbJ0lwaMgwJp3n--

--------------b0yl500CgkgSGfXI4DDK170F
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmONCI8ACgkQnowa+77/
2zIc+A/9HznzVa8HSmQM0uRzRLuvamYgVpFs3w+BX6Ssj5EP4L9sphxIKvul/1Bi
sW3wvu6+W7C621gUWyE1j7oUaMzNuFkbqiLjsif1I+R/F/NqPPj5QjKc6zVHqLNm
4InQ51x3uSDFF9AE+a4t2zXanr9LefR7j8f+DD+8EIcnpGZsA0KGeM9Jiu2v6gcX
RHuwf8MXYFth3a8uV4/u/GOZw5a5UWLSuZ84oxIcbMSTvjdqLJje9xIMufxaD9b2
yjn7SmaYs7w0cy7Zzrm9V7zWIV3jKvk668ebF47wcY94FhdZm1CxeROfpS1P7d+/
ueGVqYyEp592OEno0+reKKsnvYcH/XfIoHSa/Vw+8ZiMVXyfTAm4VXvS7y2ZlZ0C
g5x84ptciZVGIRt4EouvVWOg5pc6k2HeN/hxkiq7D3kSMpC0RKqGWqJT3Fl6UQ/Y
yqmsNKM8KiDJcZX0vzH/KDN1H0qFkQVDTktUUVzc1BWzjTm/BbZ5aUV1wHbGHpW6
7aYBdjVXKo9sARfVzkcFs8U5Y9BZdBWDpqJl2rh2cpBuPw6kkWD6PygUdj0g/O5d
NxU0ybQSGf3j587vET/pVLqlsp0TlLtwkpYqm9YQ3TGLc7yog76jvgHgQg2Rp7pP
VuJtUVwCH5Zn5bRQ8TJZhk2y5D6q78FayJIZxX8Vg68S0XDMitk=
=MP3b
-----END PGP SIGNATURE-----

--------------b0yl500CgkgSGfXI4DDK170F--
