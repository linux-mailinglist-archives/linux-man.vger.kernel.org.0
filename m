Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C28859E894
	for <lists+linux-man@lfdr.de>; Tue, 23 Aug 2022 19:07:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343671AbiHWRHI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Aug 2022 13:07:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343829AbiHWRDH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Aug 2022 13:03:07 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B54CF14F94B
        for <linux-man@vger.kernel.org>; Tue, 23 Aug 2022 06:32:49 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id m17-20020a7bce11000000b003a5bedec07bso9612538wmc.0
        for <linux-man@vger.kernel.org>; Tue, 23 Aug 2022 06:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=YQfYf/rjYnCVqTfGw+Gn3s8pIRA8HNTgJduRvB34bMQ=;
        b=jTqOdbCAFA5zr7ednIyh3TS2bPSRXgvlheKXranBlW7lP7HOqxZisZi/vGfbgpKA1x
         at1lZBDDUa4/rZiR+Rk4dPBlADjfJgCvOS3s10aQlizT2Uqql/GthLut4/RrlTdIR3fk
         99PbaofyOOY+XQe8Bt7ZCF4aKFQCb8GUEQppHnoHt1MwmxS3NJuYuezGAp3f3bMK4EVW
         KinGGszTKWMmC4iWaxh7qZMQ7iFxiQmyESUQdZiOXCZV3kJWlyBm16Q9hOblrqGX6u1v
         Fq9eseZ9HFYyXA/vtGwe4CAIGJ/0M4jb+a6q4r2CK+HQqPUH0sex8nnZQuv3ENWV1ArZ
         PKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=YQfYf/rjYnCVqTfGw+Gn3s8pIRA8HNTgJduRvB34bMQ=;
        b=dsaHbQsKj2DgtjnlhbpzEe3GFugBxfkNeFpREzq0Nh18pQoQJAXXleueuWIo9WWiam
         JJucBQ2Dq+dNdnWXZ0mhDPBcc0ZV+vv2Gv/yTAfd8cfS6LrzOJMDdymDwyeaRbPaaO/B
         YWthn+qbvSYehC02leJCVGknRvy9hZs/2rC4Aesgo3xmuMY7sPMlLXrsI1gsbSC0fbAL
         3PqN49mSajXIg+XKKdKVhOHyKsfa8sDYhzTX+WNf7CwBsAz4u781UACL7KSw49+8+Sng
         jmpfYh7DdlgwdNixr4s88mvJqtwkJG59a/jUOeKg/Dq7d8fY+QrcZGjU3n8ub74E2LVg
         6qig==
X-Gm-Message-State: ACgBeo3wczVh5FDbAFwL2aCorLcW5/ZQh1iCy5s+WswS/tpd98PyXVrl
        K//Am7tVODILS9kYP+M9dZI=
X-Google-Smtp-Source: AA6agR6WG/0ixSzU1QJoNcbKLedwAYfvBHXEooMbke0mz5+k0W0F30mVr9ZFWpN089OZHCsxQLu1+A==
X-Received: by 2002:a05:600c:1497:b0:3a5:f608:d765 with SMTP id c23-20020a05600c149700b003a5f608d765mr2161649wmh.19.1661261568108;
        Tue, 23 Aug 2022 06:32:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i3-20020a05600c050300b003a60edc3a44sm21441082wmc.5.2022.08.23.06.32.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 06:32:47 -0700 (PDT)
Message-ID: <d7309d7a-445f-efd8-1739-9a9a8cb4eb95@gmail.com>
Date:   Tue, 23 Aug 2022 15:32:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
Content-Language: en-US
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87mtbv4chu.fsf@oldenburg.str.redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EtPA23dc2qYUd9kEhSyi3CuW"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------EtPA23dc2qYUd9kEhSyi3CuW
Content-Type: multipart/mixed; boundary="------------BmoHqUSGEhrpIxqcrub0ONzg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <d7309d7a-445f-efd8-1739-9a9a8cb4eb95@gmail.com>
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87mtbv4chu.fsf@oldenburg.str.redhat.com>

--------------BmoHqUSGEhrpIxqcrub0ONzg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRmxvcmlhbiwNCg0KT24gOC8yMy8yMiAwOTo1OCwgRmxvcmlhbiBXZWltZXIgd3JvdGU6
DQoNCj4gTm90ZSB0aGF0IHRoaXMgYXBwcm9hY2ggZG9lcyBub3QgcmVhbGx5IHdvcmsgdGhh
dCB3ZWxsIGluIHByYWN0aWNlDQo+IGJlY2F1c2UgbWFjcm9zIHVzaW5nIF9HZW5lcmljIGV4
cGFuZCBhbGwgdGhlIGFsdGVybmF0aXZlcyAoaW4gY3VycmVudA0KPiBpbXBsZW1lbnRhdGlv
bnM7IGRvaW5nIHRoaXMgZGlmZmVyZW50bHkgcmVxdWlyZXMgZGV2aWF0aW5nIGZyb20gdGhl
DQo+IGxheWVyZWQgaW1wbGVtZW50YXRpb24gc3RyYXRlZ3kgc3VnZ2VzdGVkIGluIHRoZSBD
IHN0YW5kYXJkKS4gIFRoaXMNCj4gbWVhbnMgdGhhdCBfR2VuZXJpYy11c2luZyBtYWNyb3Mg
Y2FuIG9ubHkgYmUgbmVzdGVkIG1heWJlIHRocmVlIG9yIGZvdXINCj4gbGV2ZWxzIGRlZXAs
IGRlcGVuZGluZyBvbiB0aGUgbnVtYmVyIG9mIF9HZW5lcmljIGFsdGVybmF0aXZlcyBvbiBl
YWNoDQo+IGxldmVsLiAgRm9yIDx0Z21hdGguaD4sIHRoaXMgaXMgcmVhbGx5IG5vdCBlbm91
Z2gsIHNvIGEgaGlnaC1xdWFsaXR5DQo+IGltcGxlbWVudGF0aW9uIG9mIDx0Z21hdGguaD4g
dXNpbmcgX0dlbmVyaWMgaXMgbm90IGZlYXNpYmxlLiAgR0NDDQo+IHByb3ZpZGVzIF9fYnVp
bHRpbl90Z21hdGgsIHdoaWNoIGlzIGRlc2lnbmVkIGluIHN1Y2ggYSB3YXkgdGhhdCB3aGVu
DQo+IHVzZWQgaW4gYSBtYWNybywgdGhlIG1hY3JvIGFyZ3VtZW50IGlzIG9ubHkgZXhwYW5k
ZWQgb25jZS4NCj4gDQo+IE1heWJlIG1lbnRpb24gdGhpcyB1bmRlciBCVUdTPw0KPiANCj4g
QysrIHRlbXBsYXRlcyBkbyBub3Qgc3VmZmVyIGZyb20gdGhpcyBwYXJ0aWN1bGFyIHByb2Js
ZW0uDQoNCg0KQWhoLCBJIGdldCBpdCBub3cuICBZb3UgbWVhbiB0aGF0IHRoZSBwcmVwcm9j
ZXNzZWQgY29kZSBjb3VsZCBncm93IA0KZXhwb25lbnRpYWxseSwgZXZlbiBpZiB0aGUgYXNz
ZW1ibHkgY29kZSBpcyBzYWZlIGZyb20gc3VjaCBibG9hdCwgcmlnaHQ/DQoNClllYWgsIHBy
b2JhYmx5IHRoYXQgc2hvdWxkIGdvIGludG8gQ0FWRUFUUy4NCg0KV291bGQgeW91IG1pbmQg
c2VuZGluZyBhIHBhdGNoPw0KDQpBbnl3YXksIGlmIHRoZSBzdGFuZGFyZCBkZWZpbmVkIGlu
dG1heF90IGFzIGEgbWFjcm8sIGl0IHNob3VsZCBwcm9iYWJseSANCm5vdCBzcGVjaWZ5IGhv
dyB0aGF0IG1hY3JvIGlzIGltcGxlbWVudGVkOyB0aGlzIGlzIGp1c3QgYSBzaW1wbGUgDQpz
dWdnZXN0aW9uLCBidXQgYSBidWlsdGluIG9mIGNvdXJzZSB3b3VsZCBiZSBiZXR0ZXIuDQoN
CkNoZWVycywNCg0KQWxleA0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3
dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------BmoHqUSGEhrpIxqcrub0ONzg--

--------------EtPA23dc2qYUd9kEhSyi3CuW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmME1v4ACgkQnowa+77/
2zJPqxAAoplT8oWWdsbMPqb5R1TWSyamkxL3iLZnY+bQH2T7FyN0U3AjrBFz5PCj
hieXu/mePevEnbqAAaoUiRr1oJLnSsLodaQ1lwpzH7Fq1vXWvnrLGNJhY3e+9SeH
7gG1vYPig93UEqdpQYKlDZJfseFjV87ltGwOQRkjaCESsxG3plK5EoL92hJSdsKG
fWQGTdH/vofZwAMTZDJLXEL0N/LL28zuZAz4MQ+9BIBioJFgOe5AsrCdPJ9E5VS0
z6jGCUIiBGCLKnsx2cFt0rgwn2cM68qjlrLKaoISWvJsurvdovsXHp+CDj40hcj7
uoMGDNwCrm88vYPxu15AvEJ/8cqbVRPYELgYrz/nxPZcLJHoP/gBcPZnUZhYx6sS
gRNwbef7ONREMrxQ3M8L49zHMsLbjAFIk0UqW9sULGpBbAxeF9RjE/QdcmrflxB2
P/cd2NIUW5265oBDadsx+c4aI0MPRH/WahgPuipl4oI2KFqLsgiwXndvKB79txKQ
J4k5UfFPr542bTu6LUiF3vkWd6d3/GutgPaJ4RRf5TqjNUOZ+az42vfjqbwD16Pl
4/f9SH+lsVGCYRKO1pKVWByp/SP2Uwjz6Ud1MpFhA+b9qKZNQzoRAxHxWGzWLeRi
24ttRAMdgdfqhFzABsiq5wLuGdO15R2TiOnwOy3+1Nb6FUgKcIw=
=MNRy
-----END PGP SIGNATURE-----

--------------EtPA23dc2qYUd9kEhSyi3CuW--
