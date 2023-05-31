Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFEC3718B86
	for <lists+linux-man@lfdr.de>; Wed, 31 May 2023 23:02:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjEaVCQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 May 2023 17:02:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjEaVCP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 31 May 2023 17:02:15 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17F1F129
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 14:02:14 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-30af86a96b4so69501f8f.3
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 14:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685566932; x=1688158932;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4wTnqTh8d1G5un9upJJesbet48ysAnxUZLOgOeb1Fvg=;
        b=mv7eoy+JnFdNKKImOP70yKqA/6gXCKbunoOSfJ+nZ+pLNMQoNOfd37yTm9BTi8/US+
         xTexCyzYMfHHSS2H1cQ1BIlAfyYM9OdaH+3w5TsMoJi2Q/OhvwdHxuXNCdbjtJ6r5SYi
         YSZoLAOBX+AqjT5mTHgyx175vE542aNAA2RDGoLllpwtjDTaI48iAbczSws/6I9GVWQM
         OHT0eStPPE25aTauuu99+Ka/plCeEatV6v3nNpB2SBec8Ggtv3m9KIS+ZZi4gy0yrQKl
         gFaEowzYSiPohUq1rXL1EMeWAFF9rW5ZbMs2U6P/15b13nfx0e00/rfGql8TQV/BQypK
         2n4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685566932; x=1688158932;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4wTnqTh8d1G5un9upJJesbet48ysAnxUZLOgOeb1Fvg=;
        b=GAIwtOwQPWP78Ik91Ne9dWTn/2CC3ED3bdb2T4cGtfc947btAcjrWAJVML3EptFdnD
         H42YU9vbdmsPKuCh6/A7Z6iWsbHyLfR7wtX3EAdzWxQfZqJErtsosy2U3QOtcZnuOOAc
         aRNMPA790e8/SyMZfyz/pwrOTfDncbyyZnBg2CarlalKLwtdnvX0Bv176WmYGc0J3tRy
         Md90nr2FnAXloN/CC7fVU7DlZEW9L0wt8lAJW49fdFS8o4vzpX8N0lTTF8LPLF/Da5Nh
         7wtlOHv/T4nHtV7hKv+2Ro2KnkVD+2Om3XocXvpaP7zHI+i3a69isT1akDWcoU7vVKa2
         pAKQ==
X-Gm-Message-State: AC+VfDysjUa8Zq0l+2mqf6/NQVPqjak9ge9FhwKNS0/eady/OOMeSDps
        HzhhicZG9LzGsAwHy2N4T0U=
X-Google-Smtp-Source: ACHHUZ7JWnq8B4XSqGYhKs8MUuqLON2mpZinn9FZanczy6IfP1Q5xLouEdgceqaazZFrvckMPndAhA==
X-Received: by 2002:adf:f781:0:b0:30a:bae6:fa98 with SMTP id q1-20020adff781000000b0030abae6fa98mr188808wrp.39.1685566932403;
        Wed, 31 May 2023 14:02:12 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e16-20020adfe390000000b003048477729asm7953530wrm.81.2023.05.31.14.02.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 14:02:12 -0700 (PDT)
Message-ID: <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
Date:   Wed, 31 May 2023 23:02:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: SPDX license review requests
Content-Language: en-US
To:     Andi Kleen <ak@linux.intel.com>
Cc:     linux-man@vger.kernel.org, Brian Inglis <Brian.Inglis@shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>, Chris Lameter <cl@linux.com>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com> <ZHXweLNKqHKoybXM@tassilo>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZHXweLNKqHKoybXM@tassilo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7XKc0v0cCEr5Fj0TmOsATgMy"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7XKc0v0cCEr5Fj0TmOsATgMy
Content-Type: multipart/mixed; boundary="------------kedPDod0UrFqhaXuAxu0NLBe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Andi Kleen <ak@linux.intel.com>
Cc: linux-man@vger.kernel.org, Brian Inglis <Brian.Inglis@shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Matthew Wilcox <willy@infradead.org>, Alan Cox <alan@lxorguk.ukuu.org.uk>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Adam Dobes <adobes@redhat.com>, Chris Lameter <cl@linux.com>
Message-ID: <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
Subject: Re: SPDX license review requests
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com> <ZHXweLNKqHKoybXM@tassilo>
In-Reply-To: <ZHXweLNKqHKoybXM@tassilo>

--------------kedPDod0UrFqhaXuAxu0NLBe
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Andi,

On 5/30/23 14:47, Andi Kleen wrote:
>>
>> VERBATIM_ONE_PARA
>> 	This license was first used in the Linux man-pages in version
>> 	1.24 (year 1999) in several pages:
>>
>> 		sendfile.2
>> 			Pawel Krawczyk
>> 		cmsg.3
>> 			Andi Kleen <ak@muc.de>
>=20
> I assume there's no need to change these.
>=20
>> VERBATIM_TWO_PARA
>> 	This license was first used in the Linux man-pages in version
>> 	3.07 (year 2008) in a single page:
>>
>> 		move_pages.2
>> 			Added by Michael Kerrisk <mtk.manpages@gmail.com>,
>> 			but Copyright (C) 2006 Silicon Graphics, Inc.
>> 			                  Christoph Lameter
>>
>> 	It was later reused in another page:
>>
>> 		migrate_pages.2
>> 			Copyright 2009 Intel Corporation
>> .\"                Author: Andi Kleen
>> .\" Based on the move_pages manpage which was
>> .\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
>> .\"                               Christoph Lameter
>>
>> 	This license is the one considered non-free by Fedora, and which
>> 	we need to drop.  Luckily it's only two pages, so they could be
>> 	reasonably rewritten in a worst case.
>=20
> Not sure I followed why it is non-free, but I'm ok with relicensing my =
portions
> of this to VERBATIM_ONE_PARA.

I was confused.  It was another license that was non-free (LDPv1).  This =
is
fine for Fedora too.

I don't want to force anyone to change the license; if you like it, we'll=

keep it.  However, since I don't think there's much significant differenc=
e
between those two licenses above, and the more widely used
Linux-man-pages-copyleft, if you just chose the license randomly back the=
n,
it might be good to reduce the quantity of licenses that we use in the
project.

So, given this, if you give consent to change your pages to use
Linux-man-pages-copyleft, I'll do so provided for the pages that are
completely yours, and will keep in mind that when others agree, I'll also=

change the pages that are shared.

If you don't, then everything is fine.

Cheers,
Alex

>=20
> But I suppose you would also need agreement from the other contributors=
=2E
>=20
> -Andi

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------kedPDod0UrFqhaXuAxu0NLBe--

--------------7XKc0v0cCEr5Fj0TmOsATgMy
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmR3tdIACgkQnowa+77/
2zKhxQ//ScZ8s0pTpjt+jaG44wVgKKeuno6JLJN33cEjv1aRORQzFNAZ1GAQtCHA
9ZLA6ik4CpABBCOyT9V8y66rLRwrx+z+8mnkwyde+fBaNVSose1hirAG0/Ik5fI+
ADHjXKkTlMv7aR6dCbyh6hgagZgKMRwfzBhe+ZCS6Qcwvfew7hHKTcFWy+VLSQjt
pi6oVxHtOHhdXwm4/JMu8wZXRywwYuZbdLacclGPu8YJG3cjTWxWa1/mGjBt13fh
2DGCEmcP3DZwxNAYSGrtApAOpojQl7/fq4ST6SHv55Rr+02vlNR0sy8uFfXtA7te
M88gj0fYgqzhiFw7Vik3Cci25IpsRlQ78NK4DxHlLPvQcOHxRbAurQcAqjFXzHrq
zdOOQqDwNkDvhOiWPpQ2rKZ2BwWAQBPruIHlImNWnYQb+O9vwM9aAyWeH9AEL1Dd
EhckU/inv/MJDJVvhlP9rAPLgBFF16ZiiiXWhaUOZ5vAt5hhq2RNsXJKcchFdsKI
++rgAOkPpaylQzL9IOs67U5CRTfapaAZd/TVnFNayi5V/aoHsJbd84WAFRRntaei
lyOyuhsBKtfaUMcuhPX+p/AhLhpLqzp/FAoZoRmNCLFAknXEJ47iJ8/ILWM0U1gL
1aRItH2+KNwP/3Gqiqxo/ZnIDJ0ltFEcw2EjCqbISeHNdiR4PZM=
=g3J/
-----END PGP SIGNATURE-----

--------------7XKc0v0cCEr5Fj0TmOsATgMy--
