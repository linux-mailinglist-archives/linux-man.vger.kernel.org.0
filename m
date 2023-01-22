Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4D5A677281
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:00:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230025AbjAVVAE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:00:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229990AbjAVVAD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:00:03 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 844E51E1EB
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:00:02 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id j17so7687162wms.0
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zaxy0KqSvuHMPBz/vX98btom7WiwYngTEM/ogKP/gCo=;
        b=PNmbAJCFwUheQChZR5FDsuFiiGCOrzl1Rc+afuUAWOKxzUUD/voC25K3x0ZFz1ehOs
         bGU2QL75RMdL6+TSaB/G5tfmkP8Y7rtASVuQZBdHDPmVH4eQQhpJVcTW+SqvCD6UylKn
         StOaZf1LeivdT6fBOq1MDJlaVoNXrF/+s4DtJgbZ0lUDEyJJdV1/+1Dc1UxoiiqH6wYr
         45uJ32NU+iYgbfUnHzQm0491hx9u/paULD8VwLmHwQAe32f/T9A8pzXSJESwNxMmIYDb
         YrF9RvwpAuMkXm6VV3vzEYzYuDJ3DMfi88OgxYBzTdbiEfzhYDI37eMrmlDG4vX3qXZx
         PD0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Zaxy0KqSvuHMPBz/vX98btom7WiwYngTEM/ogKP/gCo=;
        b=wgEeqaokNRHylF3PQM3M0SIALCiICtRBbkdrcMfE94GVZkNUBMwY8ROZfICZl1ijwo
         zP0DfMyKyKqojkzGesqzn9cafl2VUR8iTOJer5ed4n3CkGMJEvAyuKGHr+g+GTIXJDBL
         hIMAO3H2OPL8/RXD77ZVu2KO+X3hChAaPoJaogm3jFZEATeurfpAyKoiDBLAkxIS9PEz
         r1qpJGIdN+ws6aIqa0ey5d6+D4cIU81LrgyP36Gur032EdTvWfXWLqvfYQuDknO3tTws
         ATQb1HtzpgPh85IyrwPTUG0zdysc6dKh4FrDoCy18CBQAq0/a84AYVFE/t27NFdNZ4Ul
         9usA==
X-Gm-Message-State: AFqh2krXDSg7HxXgWugP28QFriiiPPTdAedDqUxvDpoBvrYbN0mzaHLR
        YSbNr7K9KSGO65ow6atktO5chRqaU/A=
X-Google-Smtp-Source: AMrXdXvhenQQpa9T3Kx/k81mG07fyUQQ6ZOqg2OwXTbI9e1hLx0n1w/tmqHdbTPmHx/QHYJ9MgwpvA==
X-Received: by 2002:a05:600c:304a:b0:3d9:8635:a916 with SMTP id n10-20020a05600c304a00b003d98635a916mr22685440wmh.9.1674421201114;
        Sun, 22 Jan 2023 13:00:01 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j8-20020a05600c190800b003d9aa76dc6asm12043032wmq.0.2023.01.22.13.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 13:00:00 -0800 (PST)
Message-ID: <5f23edae-f2a3-198a-94d9-9586176d7695@gmail.com>
Date:   Sun, 22 Jan 2023 21:59:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page session-keyring.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193129.GA29064@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193129.GA29064@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------RG87EHfQDQaT94RwV4LfGiQ6"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------RG87EHfQDQaT94RwV4LfGiQ6
Content-Type: multipart/mixed; boundary="------------38cAurMXLIrCpn2RKUSDtgCp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <5f23edae-f2a3-198a-94d9-9586176d7695@gmail.com>
Subject: Re: Issue in man page session-keyring.7
References: <20230122193129.GA29064@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193129.GA29064@Debian-50-lenny-64-minimal>

--------------38cAurMXLIrCpn2RKUSDtgCp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIFBBTSDihpIgQjxQQU0+KDcpDQo+IA0KPiAiVGhlIHNlc3Npb24ga2V5
cmluZyBpcyBhIGtleXJpbmcgdXNlZCB0byBhbmNob3Iga2V5cyBvbiBiZWhhbGYgb2YgYSIN
Cj4gInByb2Nlc3MuICBJdCBpcyB0eXBpY2FsbHkgY3JlYXRlZCBieSBCPHBhbV9rZXlpbml0
Pig4KSAgd2hlbiBhIHVzZXIgbG9ncyBpbiINCj4gImFuZCBhIGxpbmsgd2lsbCBiZSBhZGRl
ZCB0aGF0IHJlZmVycyB0byB0aGUgQjx1c2VyLWtleXJpbmc+KDcpLiAgT3B0aW9uYWxseSwi
DQo+ICJQQU0gbWF5IHJldm9rZSB0aGUgc2Vzc2lvbiBrZXlyaW5nIG9uIGxvZ291dC4gIChJ
biB0eXBpY2FsIGNvbmZpZ3VyYXRpb25zLCINCj4gIlBBTSBkb2VzIGRvIHRoaXMgcmV2b2Nh
dGlvbi4pICBUaGUgc2Vzc2lvbiBrZXlyaW5nIGhhcyB0aGUgbmFtZSINCj4gIihkZXNjcmlw
dGlvbikgIEk8X3Nlcz4uIg0KDQpJbnN0ZWFkIG9mIGRvaW5nIHRoYXQsIEkgYWRkZWQgUEFN
KDcpIHRvIHRoZSBTRUUgQUxTTyBzZWN0aW9uLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0g
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------38cAurMXLIrCpn2RKUSDtgCp--

--------------RG87EHfQDQaT94RwV4LfGiQ6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNo88ACgkQnowa+77/
2zLT2A/+N2bBXr5h9WdL0WUcodhuzNTz/XgSGfkhvfzz2vtBO7ERDpZYLAOKgU/Q
avgbv8KbjQ2phd0C9tDbHuwdz5ghaSj5YocAWYH5cycF8dybDm0HTBNv/SOVNwAR
B3zvx4bDn4PZepFT/esrSr/ovW/wllIGHz+WOXvL4oRydeH+Y19jU1F6zQmmjs74
LZJGcPv5uDd5qmT59NY+9edAQHGvyK3r6Ciyf2f11Zemi7xsfgTblGGrq42iJpbN
jtGnv2lPiBOww7IU9DjLJ5+dKtVuQxzo76GIq1P3LhL803GJi5O1M9HmI+5xw5yJ
tv9va71oFsZmrI+sghwl0xHQJaGsCT3tIsdw0MQ/5Qjf/AUFpeAdxpYi0fazZDZ5
Lw14d3Jz1riWGC9NMVRo1eDZymFNuc9At10EeZ0eIcOTJPdNFRNzi+dsGpnOkGaC
u6BSfE7tROzqfjX49aizgTi2uo2pdsnIMpLh5qH+3+yGt4QaU9HIACigrlDNtW2s
z2EG9/ZWMkBIcNbwDDZ7NXTQYl1adsR4wa0wacJyYtxtkf2zOMQ/o1H7WSCsI4sD
kRtdT0oKwvDn54KyvHb1q6Zwl+Iav5APb2rG77WPsbHaAVofGACyA7om0kGCkGBe
6x71Hmoc+Y9TfIHHaSLZN9+Mr/zS8rmM/xDT7fhPqUREFNHw/eI=
=eb4f
-----END PGP SIGNATURE-----

--------------RG87EHfQDQaT94RwV4LfGiQ6--
