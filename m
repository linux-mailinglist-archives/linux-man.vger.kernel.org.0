Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D15C711A6F
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 01:03:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232561AbjEYXDt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 May 2023 19:03:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230389AbjEYXDs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 May 2023 19:03:48 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBDFFBB
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 16:03:46 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f6da07feb2so1787255e9.0
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 16:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685055825; x=1687647825;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TrNhaP8QuHFwJo829L1vr6H2xgeQIac+54OWciGIIQY=;
        b=mqoFrDPwQdBBM0JMu1/LK7yR/5y1oivynP4Ah6IX0sKUfR2AOnNJ3deOLr2sCNPAwc
         O/bRBiTwN34U03HU3HoOFo1tsZ9M/RGzWP4/VvYTZUYRnTm6Hn4dcITKBFt9Sja5/DQ4
         Rg5BDyak7+Gw+m7q3RRRzFHvOybQvHhr8fF8dxppIbFbPgYIvAV2hguh+MlXH4plxiYd
         yXzurKVn0of8jwJAmX3GJJ1uP7dsOsUTsUy8Bvk9+S/fn3K7OJQg6URbPzTjOFdp4Mxz
         hUeU19VEDqNY6pT0W27wP1c7BvLeKLlcgQ6GHAmuOIqK+qRjmtpeiYsJkrJyG8etYzD/
         c3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685055825; x=1687647825;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TrNhaP8QuHFwJo829L1vr6H2xgeQIac+54OWciGIIQY=;
        b=kiUdOBSvLogIgP9AoRD4tJ1CXrqjR6be8gVK5JuQU6TW6HLdvcm0S47tEjf7vl/bk2
         1RcGyWwXDfDxl85xbcNxBKUwBh7PEc/BZDRH4KXLYdRr78RWkSskaYNFzlJ+4bV8uF87
         ZsNJkM0V7Uu8YJK4O6zb9kUI45iyrKr+NFmK/nkqEdNmyXgqCWk0jD6lAgcfxWOfLU3y
         3PYuc01ZRUZql4bQhfPdw/gREZxdwM1FY/UQ1iHCeZk26aNo5AY0to095jXbWQJtC30H
         AWkcbpi34jOShs2beBfjlfl/ZcchyZ8lVZZqVVmAGwFHUAS1kuc9Ehd7Khuk5NADO5lg
         ahaA==
X-Gm-Message-State: AC+VfDxULW+kVwl2j+QVto79XO68cSEdSH26r9OchNIAjNDt5EoS9/Y8
        Ou0SCXyqvQi7Eg++PdJyaY82FAvLMCs=
X-Google-Smtp-Source: ACHHUZ7kvkYxUDgPRP/btVMejLi9/Uoh0DFQjJuMATz4iBvc30gIWyS7+U23f4XjeQy2xu4tJnZTAg==
X-Received: by 2002:a1c:4c09:0:b0:3f4:2255:8608 with SMTP id z9-20020a1c4c09000000b003f422558608mr40808wmf.31.1685055824933;
        Thu, 25 May 2023 16:03:44 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n11-20020a05600c294b00b003f6129d2e30sm7018725wmd.1.2023.05.25.16.03.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 May 2023 16:03:44 -0700 (PDT)
Message-ID: <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
Date:   Fri, 26 May 2023 01:03:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: SPDX license review requests
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Andi Kleen <ak@linux.intel.com>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
In-Reply-To: <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vYO02cBNMdXcha05Mtgis6lk"
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
--------------vYO02cBNMdXcha05Mtgis6lk
Content-Type: multipart/mixed; boundary="------------HwnssZR4NidR4zMitlWCN1Dh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Matthew Wilcox <willy@infradead.org>, Alan Cox <alan@lxorguk.ukuu.org.uk>,
 Andi Kleen <ak@linux.intel.com>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Adam Dobes <adobes@redhat.com>
Message-ID: <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
Subject: Re: SPDX license review requests
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
In-Reply-To: <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>

--------------HwnssZR4NidR4zMitlWCN1Dh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[Minor self corrections.]

On 5/26/23 00:56, Alejandro Colomar wrote:
> Hi list!
>=20
> We've got 4 derivatives of the "VERBATIM" (now one of them in SPDX
> as Linux-man-pages-copyleft") license.  I'll paste here the four.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> $ cat LICENSES/Linux-man-pages-copyleft.txt=20
> Copyright (c) <year> <owner> All rights reserved.
>=20
> Permission is granted to make and distribute verbatim copies of this
> manual provided the copyright notice and this permission notice are
> preserved on all copies.
>=20
> Permission is granted to copy and distribute modified versions of
> this manual under the conditions for verbatim copying, provided that
> the entire resulting derived work is distributed under the terms of
> a permission notice identical to this one.
>=20
> Since the Linux kernel and libraries are constantly changing, this
> manual page may be incorrect or out-of-date.  The author(s) assume
> no responsibility for errors or omissions, or for damages resulting
> from the use of the information contained herein.  The author(s) may
> not have taken the same level of care in the production of this
> manual, which is licensed free of charge, as they might when working
> professionally.
>=20
> Formatted or processed versions of this manual, if unaccompanied by
> the source, must acknowledge the copyright and authors of this work.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> $ head -n21 man2/set_mempolicy.2
> .\" Copyright 2003,2004 Andi Kleen, SuSE Labs.
> .\" and Copyright 2007 Lee Schermerhorn, Hewlett Packard
> .\"
> .\" %%%LICENSE_START(VERBATIM_PROF)
> .\" Permission is granted to make and distribute verbatim copies of thi=
s
> .\" manual provided the copyright notice and this permission notice are=

> .\" preserved on all copies.
> .\"
> .\" Permission is granted to copy and distribute modified versions of t=
his
> .\" manual under the conditions for verbatim copying, provided that the=

> .\" entire resulting derived work is distributed under the terms of a
> .\" permission notice identical to this one.
> .\"
> .\" Since the Linux kernel and libraries are constantly changing, this
> .\" manual page may be incorrect or out-of-date.  The author(s) assume =
no
> .\" responsibility for errors or omissions, or for damages resulting fr=
om
> .\" the use of the information contained herein.
> .\"
> .\" Formatted or processed versions of this manual, if unaccompanied by=

> .\" the source, must acknowledge the copyright and authors of this work=
=2E
> .\" %%%LICENSE_END
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> $ head -n8 man2/getcpu.2
> .\" This man page is Copyright (C) 2006 Andi Kleen <ak@muc.de>.
> .\"
> .\" %%%LICENSE_START(VERBATIM_ONE_PARA)
> .\" Permission is granted to distribute possibly modified copies
> .\" of this page provided the header is included verbatim,
> .\" and in case of nontrivial modification author and date
> .\" of the modification is added to the header.
> .\" %%%LICENSE_END
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> $ head -n13 man2/move_pages.2
> .\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
> .\"                               Christoph Lameter
> .\"
> .\" %%%LICENSE_START(VERBATIM_TWO_PARA)
> .\" Permission is granted to make and distribute verbatim copies of thi=
s
> .\" manual provided the copyright notice and this permission notice are=

> .\" preserved on all copies.
> .\"
> .\" Permission is granted to copy and distribute modified versions of t=
his
> .\" manual under the conditions for verbatim copying, provided that the=

> .\" entire resulting derived work is distributed under the terms of a
> .\" permission notice identical to this one.
> .\" %%%LICENSE_END
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> And here go the copyright holders:

of _TWO_PARA and _ONE_PARA, which are the main ones I want to get rid of.=

_TWO_PARA seems to be non-free according to Fedora (and they seem right).=


>=20
> $ grep -rl VERBATIM man* \
> | xargs grep -L 'VERBATIM_PROF' \
> | xargs grep -hi -e copyright -e '(c)' \
> | sort \
> | uniq;
> .\" Copyright (C) 2008-2014, Michael Kerrisk <mtk.manpages@gmail.com>,
> .\" Copyright 2009 Intel Corporation
> .\" This man page is Copyright (C) 1998 Alan Cox.
> .\" This man page is Copyright (C) 1998 Heiner Eisen.
> .\" This man page is Copyright (C) 1998 Pawel Krawczyk.
> .\" This man page is Copyright (C) 1999 Andi Kleen <ak@muc.de>,
> .\" This man page is Copyright (C) 1999 Andi Kleen <ak@muc.de>.
> .\" This man page is Copyright (C) 1999 Claus Fischer.
> .\" This man page is Copyright (C) 1999 Matthew Wilcox <willy@bofh.ai>.=

> .\" This man page is Copyright (C) 2000 Andi Kleen <ak@muc.de>.
> .\" This man page is Copyright (C) 2006 Andi Kleen <ak@muc.de>.
> .\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
> .\" and Copyright (C) 2008 Michael Kerrisk <mtk.manpages@gmail.com>
> .\" and Copyright (C) 2016, Heinrich Schuchardt <xypron.glpk@gmx.de>
> .\" and copyright (c) 1999 Matthew Wilcox.
> .\" manual provided the copyright notice and this permission notice are=

>=20
> I CCd the ones for which I know their email.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Here goes some comments about them:
>=20
> The one and two paragraph licenses are almost identical to the usual
> one.  There seems to be a small diference regarding translations in
> the 2-paragraph one, being more restrictive.  Was that intentional?
> Or maybe it was just an accident, and there was no intention of
> disallowing translations?
>=20
> Would you please relicense to either Linux-man-pages-copyleft or
> VERBATIM_PROF?
>=20
>=20
> Also, Linux-man-pages-copyleft seems to contain a sentence that
> makes it differ from VERBATIM_PROF:
>=20
> """
>   The author(s) may
> not have taken the same level of care in the production of this
> manual, which is licensed free of charge, as they might when working
> professionally.
> """
>=20
> I believe the quality of non-professional code and manuals to be
> at least as high as the professional one.  We have more freedom to
> reject crap.  I propose also deprecating Linux-man-pages-copyleft
> and moving to VERBATIM_PROF as the single surviving license from
> all four variants.
>=20
> We're also discussing the names that each of these four should be
> given in SPDX.
>=20
>=20
> I suggest (in order of appearance in this email):

Of course, I messed the order, but luckily I included the old names
so it's clear.

>=20
> -  Linux-man-pages-copyleft to be renamed to the following, and
>    mark it as a deprecated license.
>=20
> 	Linux-man-pages-copyleft-nopro
> 	Linux man-pages Copyleft (non-professional)
>=20
> -  VERBATIM_PROF to be SPDX'd as:
>=20
> 	Linux-man-pages-copyleft-qual
> 	Linux man-pages Copyleft (high quality)
>=20
> -  VERBATIM_TWO_PARA to be SPDX'd as:

and mark it as a deprecated license.

>=20
> 	Linux-man-pages-copyleft-notrans
> 	Linux man-pages Copyleft (no translations)
>=20
> -  VERBATIM_ONE_PARA to be SPDX'd as:

and mark it as a deprecated license.

>=20
> 	Linux-man-pages-copyleft-verbatim
> 	Linux man-pages Copyleft (verbatim)
>=20
>=20
>=20
> Cheers,
> Alex
>=20
>=20
> On 5/18/23 14:38, Adam Dobes wrote:
>> Hi everyone,
>>
>> I have recently begun converting license names of licenses found in
>> Fedora's man-pages package to SPDX. Several of these licenses did not
>> have corresponding license identifier in SPDX. Because of this I have
>> submitted several license review requests for these licenses on SPDX
>> Github (links listed below). If you have any further comments
>> regarding these requests, please feel free to add them.
>>
>> One of these licenses, LDP-1 (found in man5/dir_colors.5), was
>> unfortunately determined to be not-allowed in Fedora, so I'd like to
>> ask if it's possible to change the license of this man page so that it=

>> can be included in Fedora.
>>
>> Links to the issues mentioned above:
>> https://github.com/spdx/license-list-XML/issues/1947
>> https://github.com/spdx/license-list-XML/issues/1955
>> https://github.com/spdx/license-list-XML/issues/1957
>> https://github.com/spdx/license-list-XML/issues/1959
>>
>> Regards,
>> Adam
>>
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------HwnssZR4NidR4zMitlWCN1Dh--

--------------vYO02cBNMdXcha05Mtgis6lk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRv6U8ACgkQnowa+77/
2zISgxAAhijRh/vOR9y2/x/M8QnVWrUJ99jliBjZW+h3PggwULrOTeFsT1Ajj4tu
Azi1vHm89eCO7/W2SlpjZYXKmE3P+8FBsl+ct0fOrgbQ2DbSiOYffnP0qjODFYGS
fun0i1n5uEGHHL3pU4eVrvhYXQkht5gs+7eOdiBC6YiPIsSNGRDO+qmcHZ0HyVbn
4ehHCtESO+paTXQCkk2HEGyhUL2OuKLRL6wjRddVDt9g2foGX9cxNfZIQ4ZFFoJk
Stqv1JMGHyr60CdlFK0mI8RVvXrI7gTkUr5ro8hJ+Y6nTt1ee+p/VbAZHEJbfIsg
YyS1yuplnU/hrdnwTnkU5cG8GZ8J37or0TBUv2G0MZLQ4R7L0LoQoYyPNOLG46OG
CMsH2BqY7ZsmSVugAxCo6HBa4kPzDPmAIf4YGmlq7CJfe3VRovJkH8t4UK1EuiBN
liuggQ1E4FLhfoQmHwWqX1ejixFagBul79VvAtS5JSgoSn/sP07b8Vm4zseP643X
BkjRojYtu0wzcGzs+EfKtsAAh15/ipupJjPSWPIlEVND/GlHkQWCGYU52asmyJXZ
o4q8TDVtVcG+dgv0MdoVz3/odebQ9fZQK0Ymm0EL1zl8dWAw2QQLrS+52ieTlLht
b8aX/2ENC6KdhHgTpZYDlNi4urqLrVn7ehvcYoYhNSsd4/c/Quo=
=K81z
-----END PGP SIGNATURE-----

--------------vYO02cBNMdXcha05Mtgis6lk--
