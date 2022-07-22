Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0538857E0F8
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 13:46:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbiGVLqu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 07:46:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229992AbiGVLqt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 07:46:49 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECDFFB9A01
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 04:46:47 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id c187-20020a1c35c4000000b003a30d88fe8eso5020632wma.2
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 04:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:from:to:cc
         :references:content-language:in-reply-to;
        bh=avmw/nNo5A29wJzZ38lhCbT/8RBcLSoj55zntV1pU8E=;
        b=Y1IJnR8K8hxFkWFm2W2CoOsSMyuGRTtHXg37TvghdbkvDqdsoHTi1s/L0R7sz2fbvF
         EGA0soLzCE0M2z5k2Ovl7d3pDS47mNDIjYwZTim6a2cSQUd8CxW2KAQkER9bu/vQRvH5
         ULKJsbP79RUqFgo7QRGL5jVcwwtYvTOdrf5etwvSzC6Tv4YTVaT7/gqUjIcjtIdLVUb0
         fN2rDaudta/42tCLidACmIZRpzzWfiQTh7bQBOfDiYT7UullipquGfCsZMZdR1ctbXx7
         lbdpsFG70tKi9DmILmo9qoH67ctLN98QdnyyCD6hGDxI7IM6WdsHEUfQyfvXfL4Xl5gi
         vZkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :from:to:cc:references:content-language:in-reply-to;
        bh=avmw/nNo5A29wJzZ38lhCbT/8RBcLSoj55zntV1pU8E=;
        b=s+7MF+qkpPBCyKE2h2oUms6eX1C0AckRXYatSYwM13ccpHK7DUshqbfAvYNRWeSG9N
         Tj6Bq7TS6lsmmGio0qgTqBKlnjbtrvnmnz1MHQjKfhIAkitIuwnSC2KWTlSwbnrNfmEo
         nyXRDcdG9uX9ePjBq1uI7BXfrOugCHOwp5kmq5BVLRbL27y+IM72JsrJXt31roqk0y+6
         7exQ641Icxl6LQc1lpHddXEDJTGkBaIaC0Eq3N71fCOKxWNLE0PoE/NJz9ordbCyeVC4
         meFwZN3iEFSMv3tGshjA/4n+NEzOChzG7KziKpxe0dP4/rlbGJfSS678Pczp9UyLFcyU
         nk1A==
X-Gm-Message-State: AJIora+QujnK0/pSFs0HBg2YJKsCWg5uc7XqcOZMmuFKihU10BiHVpVD
        Z4RcMHX3illz2fcXprKwA7I=
X-Google-Smtp-Source: AGRyM1tEIifJE9CCTtdOlsYP/mMuV+S/UvAQjfHNp6MxLI5Cq8dlNKoAjsXeAAB3Sl8WNnZ0YFD6rA==
X-Received: by 2002:a1c:7c16:0:b0:3a0:4c5f:ce13 with SMTP id x22-20020a1c7c16000000b003a04c5fce13mr151810wmc.73.1658490406255;
        Fri, 22 Jul 2022 04:46:46 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m126-20020a1ca384000000b003a03e63e428sm9736537wme.36.2022.07.22.04.46.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 04:46:45 -0700 (PDT)
Message-ID: <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
Date:   Fri, 22 Jul 2022 13:46:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: All caps .TH page title
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
Content-Language: en-US
In-Reply-To: <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1FqctnQS3nPF0DM2n5Mr9zPb"
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
--------------1FqctnQS3nPF0DM2n5Mr9zPb
Content-Type: multipart/mixed; boundary="------------Bk50g7RGZgP5x5cQ20YFYKs0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Message-ID: <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
Subject: Re: All caps .TH page title
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
In-Reply-To: <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>

--------------Bk50g7RGZgP5x5cQ20YFYKs0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDcvMjIvMjIgMTI6MzUsIEFsZWphbmRybyBDb2xvbWFyIChtYW4tcGFnZXMp
IHdyb3RlOg0KPiBCVFcsIEkgdGhpbmsgSSBkaWRuJ3QgcmVwbHkgKG9yIGlmIEkgZGlkIHdh
cyB2ZXJ5IHNob3J0KSB0byB5b3VyIGNvbW1lbnQgDQo+IHRoYXQgb3RoZXIgbGFuZ3VhZ2Vz
IG1heSBmaW5kIGl0IGRpZmZpY3VsdCB0byBtaXJyb3Igb3VyIHVzZSBvZiANCj4gc3Vic2Vj
dGlvbnMsIHNpbmNlIHRoZWlyIG1haW4gc2VjdGlvbiBpcyBhbHJlYWR5IGEgc3Vic2VjdGlv
biAoZS5nLiwgDQo+IDNwbCkuwqAgSSdkIHNheSB0aGF0IHNpbmNlIEMgaXMgdGhlIG5hdGl2
ZSBVbml4IGxhbmd1YWdlLCBhbmQgb3RoZXJzIGFyZSANCj4ganVzdC4uLiBvdGhlcnM/LCBJ
J2Qgb3B0aW1pemUgZm9yIEMsIGFuZCBsZXQgb3RoZXIgbGFuZ3VhZ2VzIGZpbmQgYSB3YXkg
DQo+IHRvIGRvY3VtZW50IHRoZWlyIHRoaW5ncy7CoCBJdCB3b3VsZCBiZSBlYXN5IHRvIHNh
eSBqdXN0IGdvIGF3YXksIHRoZSBtYW4gDQo+IHBhZ2VzIGFyZSBmb3IgQywgYnV0IEkgd29u
J3QgZGFyZSB0byBzYXkgdGhhdCwgc2luY2UgSSBsaWtlIG1hbiBwYWdlcywgDQo+IGFuZCBJ
J2QgbGlrZSB0byBzZWUgbW9yZSBkb2N1bWVudGF0aW9uIGZvciBsYW5ndWFnZXMgdGhhdCBJ
IHNvbWV0aW1lcyANCj4gaGF2ZSB0byB1c2UgYmUgaW4gdGhlIGZvcm0gb2YgbWFuIHBhZ2Vz
LCBzbyBJJ2xsIHRyeSB0byBjb21lIHVwIHdpdGggYSANCj4gbW9yZSBpbWFnaW5hdGl2ZSBh
bnN3ZXI6wqAgaG93IGFib3V0IHVzaW5nIHN1YnN1YnNlY3Rpb25zIG9mIHRoZSBmb3JtIA0K
PiAzcGxfdHlwZT/CoCBBdCBsZWFzdCBpdCdzIGEgcG9zc2liaWxpdHkuwqAgbWFuKDEpIHdv
dWxkIGhhbmRsZSB0aGVtIGFzIGFueSANCj4gb3RoZXIgc3Vic2VjdGlvbiwgYnV0IHRoYXQn
cyBub3QgYSBiaWcgcHJvYmxlbS7CoCBNYXliZSBtYW4oMSkgY291bGQgDQo+IGRldmVsb3Ag
YSB3YXkgdG8gcHJvdmlkZSBzdWJzdWJzZWN0aW9ucy4uLsKgIENvbGluLCBhbnkgaWRlYXMg
aW4gdGhpcyANCj4gcmVnYXJkPw0KDQpPciwgbWF5YmUgaXQncyB0aGUgdGltZSB0byB3cml0
ZSBhIHdob2xlIG5ldyB2b2x1bWU/ICBJIHRoaW5rIHRoZXJlJ3MgYSANCmNvbXBhcmFibGUg
ZGlmZmVyZW5jZSBiZXR3ZWVuIDN0eXBlIGFuZCAzIHRoYW4gYmV0d2VlbiAyIGFuZCAzIG9y
IDEgYW5kIA0KOCwgc28gaXQgd291bGQgYmUgbWVyaXRlZC4gIEkgZGlkbid0IGRvIGl0IGJl
Zm9yZSBmb3IgdHdvIHJlYXNvbnM6IGl0IA0KbWlnaHQgYnJlYWsgc29mdHdhcmUgdGhhdCBh
c3N1bWVzIHRoYW4gVW5peCBtYW51YWxzIHVzZSBhIHNpbmdsZSBudW1iZXIgDQpmb2xsb3dl
ZCBieSBhbiBvcHRpb25hbCBzdHJpbmcgKEknZCBzYXkgaXQncyBub3QgYSBmYWlyIGFzc3Vt
cHRpb24gdG8gDQpzYXkgdGhhdCBtYW45IHdvdWxkIGJlIHRoZSBsYXN0IG9uZSBldmVyIHVz
ZWQ7IGlmIHRoZXJlJ3MgOSwgdGhlcmUgbWlnaHQgDQpiZSBhIDEwIHNvbWUgZGF5KSwgYW5k
IGJlY2F1c2Ugb3RoZXIgcHJvamVjdHMgaGFkIGFscmVhZHkgdXNlZCAzdHlwZS4NCg0KQnV0
LCB0aGF0IHdvdWxkIHN0YXJ0IGEgY2xlYW4gbmFtZXNwYWNlLiAgTWF5YmUgaXQncyB3b3J0
aCBpdC4NCg0KSG93IHdvdWxkIHlvdSBmZWVsIGlmIEkgaW5hdWd1cmF0ZSBtYW4xMCBmb3Ig
dHlwZXMsIGFuZCBsYXRlciBtYW4xMSBmb3IgDQpub24tZnVuY3Rpb24tbGlrZSBtYWNyb3M/
IDpEDQoNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxo
dHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------Bk50g7RGZgP5x5cQ20YFYKs0--

--------------1FqctnQS3nPF0DM2n5Mr9zPb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLajh0ACgkQnowa+77/
2zJT8A/+MzVtjOlLtgkhto7UZfKKQWLXsSvvIH0fgdUWUYqAkkdwRqpJMbzI0Hwj
huQfYF8e8UoBXrTXhtuh95hfN3sUzWX4KB3oWybcRiuSPx/E50pGZyLneIrPR6GM
fV/3Xt+ig7hOHL878Mbvv2JeXIhxBvsvV8JBdb1K5M9qPdeWDuD7WMswCIpX7wSX
Qx03cDBqTLqC93kodDkk7SDoRsg8wTqsuP+NVUBbSQ3Gmj3JIQBeOcr/4CGFS22S
GQiZWjENJuW4ck4njAeE0f04WanvpRdHLJ7DwDIVW/5Qf9UnOBMUOa+8UC/nnsDj
PAyccUDpfFvaPbqK668PBcTYLcSNs2h1AJHXP6Jls3l/WSDngXg8slHI9+F1Z5GA
R03rAv51+HpU9ferDDn+jlzmzeYyv68w+6/4ycSYmxZrmJ9L1SiRUPakyE4jtaRR
57EBIjMm8t5jYMY9nekE8+xjyZ9vqJm+CIuo2q5XfI83llqpCtT2KvtDmSzZSZ5t
bkHDFLrzkqRpNHVV2vy8vntRA0CLW19KYcek40tu3yTz7T2Xj5xfiuJ5RYR8e2pd
yio9elAGkbrnx9tif3vYmR+fJggbh7Jj7Ucj5/t86A1l6ysBoCg5okoMcBcVyNJ8
J3Va3Xr2ouWIX/xxNbghfqxXxQiA/7TsQgzewaNSrMPVSEbBLEg=
=s4H+
-----END PGP SIGNATURE-----

--------------1FqctnQS3nPF0DM2n5Mr9zPb--
