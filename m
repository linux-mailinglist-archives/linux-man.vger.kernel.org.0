Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 788CF59B391
	for <lists+linux-man@lfdr.de>; Sun, 21 Aug 2022 13:46:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230330AbiHULqw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Aug 2022 07:46:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230125AbiHULqv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Aug 2022 07:46:51 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD79218E21
        for <linux-man@vger.kernel.org>; Sun, 21 Aug 2022 04:46:50 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id bs25so10086148wrb.2
        for <linux-man@vger.kernel.org>; Sun, 21 Aug 2022 04:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=Z9ZDn/mauLrLdeCWXfnsqbSs2lUGe5AIHbpAUJPpCT4=;
        b=aO9lrD4hAOSaAeAUTHGfh5ZaAlVU6p1wV0IdfHoXM1IcKHMcgw7M8S45DRXytDXl6o
         dtsDERm0vfGnNKMs8/5pM7lJ5qOWwSc49bwQ4JIqsFsZxZgnsVsW9bj6fPNkLWixQAXv
         GAbTdGsxam1U9LssVzvlZKBsng+8NziXd7aOw6P4wwfIqhM92oULb5VNBKR06qepy2IO
         RDtG8jsxoCJj5vZmJNXFm707uAqNeq6+9W/bN1VYxNw2/F2Nlz9QMcvc39lU8R66hXUz
         ZFI4swA8MvfdB3KagdPhN7hAF11p0jf4ZXiR2CWxz/gW2t5rHfuZ3yci7Qqr7ml4Mr20
         iZ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=Z9ZDn/mauLrLdeCWXfnsqbSs2lUGe5AIHbpAUJPpCT4=;
        b=qa8Oanr8+L3clAtYFrSGioPX1baLtLgx3GDA30bcylWM5YiJ+pGf4Ajq2ZliU4RzzT
         Q/QY/dGYxatr6wbQ9zETCq9JbzI5hXNOhqwwWO0w+ZhoN7tKtVhVpa/PBNKXFLXljGI6
         JqD9tF/xAU/HR2Usc7XX60ASggXFyYoZHPrtsM8UGejbouLsBXnVhy29W9pzD0YE5oIY
         Q5sbjBFkI2WepkdPpiFCcyy5LjMO1J6t7sHi+nreDKa0ah5OgdM2u9RdKRdtPYG3Zwiy
         bIvC0YY/szvkyp87tl9fbVdBjZsDod/p+Y6uPVDgp5bnmv9zNWmtdwLYHN2AJHTS0C7b
         u2KA==
X-Gm-Message-State: ACgBeo0pQDPjMvPc86TUNf6ueLuFVaEWeUngl+DhNJIlFlId4XabAJs6
        DnPYJh/i2VckUgc8Y4JOyWM=
X-Google-Smtp-Source: AA6agR4roI+jW7bm9hiUdZelvIWRXlcr59AQJad9SQ+Mv9Fgz2XwlztMaxI+rWXsgL0H9LL3gNi/cA==
X-Received: by 2002:a5d:6da9:0:b0:225:59e4:1497 with SMTP id u9-20020a5d6da9000000b0022559e41497mr449757wrs.262.1661082409429;
        Sun, 21 Aug 2022 04:46:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m128-20020a1c2686000000b003a5dbdea6a8sm17248823wmm.27.2022.08.21.04.46.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Aug 2022 04:46:48 -0700 (PDT)
Message-ID: <e2b2674a-a799-76a4-d4d6-629a2662040c@gmail.com>
Date:   Sun, 21 Aug 2022 13:46:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
 <20220820122003.qeldeox7hlcy6dw7@illithid>
 <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
In-Reply-To: <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WB0bjeFVj8WkaIRQp8W6MtRZ"
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
--------------WB0bjeFVj8WkaIRQp8W6MtRZ
Content-Type: multipart/mixed; boundary="------------PgDIhiVP5rVBW6MxMplcY0CL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Cc: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <e2b2674a-a799-76a4-d4d6-629a2662040c@gmail.com>
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
 <20220820122003.qeldeox7hlcy6dw7@illithid>
 <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>
In-Reply-To: <a35cf5e8-ad2c-92bd-ca78-7be3dec3d62e@gmail.com>

--------------PgDIhiVP5rVBW6MxMplcY0CL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOC8yMC8yMiAxNDo0MCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IFNvLCBJJ2xs
IGhhdmUgdGhlIE1ha2VmaWxlIHByb2R1Y2UgdGhpcyBzdHVmZiwgZm9yIGJvdGggYG1ha2Ug
aW5zdGFsbGAgDQo+IGFuZCBgbWFrZSBkaXN0YCwgYW5kIGl0IHdpbGwgYmUgcHJvZHVjZWQg
aW4gZ2VuZXJhdGVkIHBhZ2VzLCBidXQgbmV2ZXIgDQo+IG1vZGlmeSByZXBvIG9uZXMuDQoN
Ck5haCwgSSdsbCBrZWVwICdtYWtlIGluc3RhbGwnIHNpbXBsZSwgc28gaXQnbGwga2VlcCB0
aGUgJyh1bnJlbGVhc2VkKScgDQp3YXRlcm1hcmsuICBTbyBpZiBzb21lb25lIGluc3RhbGxz
IGZyb20gZ2l0LCB0aGV5J2xsIGhhdmUgDQonKHVucmVsZWFzZWQpJy4gIEhvd2V2ZXIsIHRo
ZSB0YXJiYWxscyB3aWxsIGhhdmUgdGhlIGdpdC1kZXNjcmliZSgxKSANCnZlcnNpb24gZnJv
bSB3aGljaCB0aGV5IHdlcmUgZ2VuZXJhdGVkLCBhbmQgc28gYSBgbWFrZSBpbnN0YWxsYCBm
cm9tIGEgDQp0YXJiYWxsIHdpbGwgYmUgZGlmZmVyZW50Lg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------PgDIhiVP5rVBW6MxMplcY0CL--

--------------WB0bjeFVj8WkaIRQp8W6MtRZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMCGxwACgkQnowa+77/
2zKV5hAAodLDT/MMmQG9d7VG6WK/S5QDmdBV46czXqTTox4xmoD/8P3frdIhGKb/
xEZ575RODxLA2z+WHYsvCgIsi76Wbw4S3H6JZfrp2i43rZgvZxAekmMMzSUbBAg3
S2RjMJpoO38V0/IUCkCaDnoaOihbUVekow4wBWiYe+PZz02RYQU2POClsFXFtXXu
+c83j8qeSnx4JwHlWHr8vHejHvcD9PtYT/Ch8hSsT10y1TOn0orNYhQFyakAvYfa
IVmjovqmojFvxRGaX7As3Ns+C7sJUcPmOhtR7FIMhdA06gCLWM7/xJ74aDLTTVOm
Om/voQAmX70GAm+8n9STj8Swb1RwusGfbVJAHZ4+E4ZpeCwqr5VkZFHnb8pAfDbI
EAOpPMoKnPn+PhiSE14GC5nlpbZlrPplKxmZ+zsMVRro3zVQkdHf6SczJg4hFiuo
N7wkCfluMF4eK0KeeUkNrDizBTPlkQiM/Mypgts5apFQEr9j7orKdmYmLk3kWCcO
ZEUOfdaex9g4MfurwZ3z5LHQxbF/WRBFmlJDcATcG0mWn+5Qyu3wwYLv1ewEPm7u
PZvIuyQIbFG3Zg8PxojSU+hsV+AUBBnpM+1MpRNii256c1HCIBCZuAlAhHqdyrGO
cxewqcW8AfDv0qik0gMPULcim27SNggQ60vWSZlif0Dl09id6oM=
=yD17
-----END PGP SIGNATURE-----

--------------WB0bjeFVj8WkaIRQp8W6MtRZ--
