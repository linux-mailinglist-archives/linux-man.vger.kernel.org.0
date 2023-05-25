Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B113711A59
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 00:57:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232713AbjEYW5C (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 May 2023 18:57:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230020AbjEYW5B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 May 2023 18:57:01 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 915D8D9
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 15:56:59 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f60dfc6028so1514945e9.1
        for <linux-man@vger.kernel.org>; Thu, 25 May 2023 15:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685055418; x=1687647418;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9D1mXe0jhMYYde0kxnuGPLd6KhH5jxAr3awSLESBbDs=;
        b=pk3qgdZKP32Qz+wFs3zYgY0GVaSIlnQRe/UWY7ftoTC9br1bQGo0McTf8Dg7IyRdy9
         Vkxi9HVFJoDj9L1db2ppgNt7MI4p8TArkAkGRC9dp3eigfRbmXhG0RTySFSPUv8y5BlD
         rmnPfayDw0ulLaiPnDZx8PwNCasH5pz5QTRJS5cnaUJFp4Mkf0fyM4yr75A9cm0Rtxnc
         3Bq1ONJkDB6a1C3QxIvtJXRwfcsl3DTBEyc3kSgrHuLnNt39Wbhx6Pt118svn6K9TjCh
         aj/6AUJyGY6xKNTfX3tzDTIrk2nMcfCUsbZE0V7sGga35KCACqerPXtP21uUrLR1hq9f
         xE6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685055418; x=1687647418;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9D1mXe0jhMYYde0kxnuGPLd6KhH5jxAr3awSLESBbDs=;
        b=TcccMO3lTrkv75tsqqdnpj/VPOsQRmduVOTlY8fo1lRQv50mxdXWh061e1eC9mlfVo
         trXjKO3LTLVVOBoq7lGoyXtx2sJScYg+FVrtvh1li8NWBBU+ad0U9irY70cva9OUyXqc
         G/CsSEFwfcZAEMmQsHBbKD2Mo+SGSRm4X36AnSs1r0MXmeOzlIsoZpIO88t+9qK6XVCX
         t0u83TKSrSUAoMVEHk3g0pQjy5MHSKqp6MX2nydfRWggvcl4Qz3rwQIJSAvxMoMVt9x3
         l8jRkJOWOwPvc5LkDIzl4l2KkoZtqVGprZ6DEe8IXMhLexdB54yNCRraPNzEuLnU0sNN
         P7QQ==
X-Gm-Message-State: AC+VfDxfuU2qW/7MKamNVszzbubo0yLvLu9coXJUAQjkYWx3GHTZ9VAO
        m/liISNjHP5TlQ0IfQJikBoGmlUncyA=
X-Google-Smtp-Source: ACHHUZ7GIP+M5FrTEktOai9Tsg1oqtUXJxMDELFBqTRLDYDKntQYDO9uX/baz5Hs7Nr/4f/LUzmyew==
X-Received: by 2002:a05:600c:3653:b0:3f4:2bce:eef8 with SMTP id y19-20020a05600c365300b003f42bceeef8mr51663wmq.16.1685055417525;
        Thu, 25 May 2023 15:56:57 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u5-20020a05600c00c500b003f0ad8d1c69sm6967900wmm.25.2023.05.25.15.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 May 2023 15:56:57 -0700 (PDT)
Message-ID: <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
Date:   Fri, 26 May 2023 00:56:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: SPDX license review requests
To:     linux-man@vger.kernel.org
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
Content-Language: en-US
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Andi Kleen <ak@linux.intel.com>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8OAuXYlUlV1zXa0eSs9BaFye"
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
--------------8OAuXYlUlV1zXa0eSs9BaFye
Content-Type: multipart/mixed; boundary="------------CZV17mqeYg1GFeU0gBKaPDNq";
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
Message-ID: <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
Subject: Re: SPDX license review requests
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
In-Reply-To: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>

--------------CZV17mqeYg1GFeU0gBKaPDNq
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi list!

We've got 4 derivatives of the "VERBATIM" (now one of them in SPDX
as Linux-man-pages-copyleft") license.  I'll paste here the four.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

$ cat LICENSES/Linux-man-pages-copyleft.txt=20
Copyright (c) <year> <owner> All rights reserved.

Permission is granted to make and distribute verbatim copies of this
manual provided the copyright notice and this permission notice are
preserved on all copies.

Permission is granted to copy and distribute modified versions of
this manual under the conditions for verbatim copying, provided that
the entire resulting derived work is distributed under the terms of
a permission notice identical to this one.

Since the Linux kernel and libraries are constantly changing, this
manual page may be incorrect or out-of-date.  The author(s) assume
no responsibility for errors or omissions, or for damages resulting
from the use of the information contained herein.  The author(s) may
not have taken the same level of care in the production of this
manual, which is licensed free of charge, as they might when working
professionally.

Formatted or processed versions of this manual, if unaccompanied by
the source, must acknowledge the copyright and authors of this work.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

$ head -n21 man2/set_mempolicy.2
=2E\" Copyright 2003,2004 Andi Kleen, SuSE Labs.
=2E\" and Copyright 2007 Lee Schermerhorn, Hewlett Packard
=2E\"
=2E\" %%%LICENSE_START(VERBATIM_PROF)
=2E\" Permission is granted to make and distribute verbatim copies of thi=
s
=2E\" manual provided the copyright notice and this permission notice are=

=2E\" preserved on all copies.
=2E\"
=2E\" Permission is granted to copy and distribute modified versions of t=
his
=2E\" manual under the conditions for verbatim copying, provided that the=

=2E\" entire resulting derived work is distributed under the terms of a
=2E\" permission notice identical to this one.
=2E\"
=2E\" Since the Linux kernel and libraries are constantly changing, this
=2E\" manual page may be incorrect or out-of-date.  The author(s) assume =
no
=2E\" responsibility for errors or omissions, or for damages resulting fr=
om
=2E\" the use of the information contained herein.
=2E\"
=2E\" Formatted or processed versions of this manual, if unaccompanied by=

=2E\" the source, must acknowledge the copyright and authors of this work=
=2E
=2E\" %%%LICENSE_END

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

$ head -n8 man2/getcpu.2
=2E\" This man page is Copyright (C) 2006 Andi Kleen <ak@muc.de>.
=2E\"
=2E\" %%%LICENSE_START(VERBATIM_ONE_PARA)
=2E\" Permission is granted to distribute possibly modified copies
=2E\" of this page provided the header is included verbatim,
=2E\" and in case of nontrivial modification author and date
=2E\" of the modification is added to the header.
=2E\" %%%LICENSE_END

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

$ head -n13 man2/move_pages.2
=2E\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
=2E\"                               Christoph Lameter
=2E\"
=2E\" %%%LICENSE_START(VERBATIM_TWO_PARA)
=2E\" Permission is granted to make and distribute verbatim copies of thi=
s
=2E\" manual provided the copyright notice and this permission notice are=

=2E\" preserved on all copies.
=2E\"
=2E\" Permission is granted to copy and distribute modified versions of t=
his
=2E\" manual under the conditions for verbatim copying, provided that the=

=2E\" entire resulting derived work is distributed under the terms of a
=2E\" permission notice identical to this one.
=2E\" %%%LICENSE_END

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

And here go the copyright holders:

$ grep -rl VERBATIM man* \
| xargs grep -L 'VERBATIM_PROF' \
| xargs grep -hi -e copyright -e '(c)' \
| sort \
| uniq;
=2E\" Copyright (C) 2008-2014, Michael Kerrisk <mtk.manpages@gmail.com>,
=2E\" Copyright 2009 Intel Corporation
=2E\" This man page is Copyright (C) 1998 Alan Cox.
=2E\" This man page is Copyright (C) 1998 Heiner Eisen.
=2E\" This man page is Copyright (C) 1998 Pawel Krawczyk.
=2E\" This man page is Copyright (C) 1999 Andi Kleen <ak@muc.de>,
=2E\" This man page is Copyright (C) 1999 Andi Kleen <ak@muc.de>.
=2E\" This man page is Copyright (C) 1999 Claus Fischer.
=2E\" This man page is Copyright (C) 1999 Matthew Wilcox <willy@bofh.ai>.=

=2E\" This man page is Copyright (C) 2000 Andi Kleen <ak@muc.de>.
=2E\" This man page is Copyright (C) 2006 Andi Kleen <ak@muc.de>.
=2E\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
=2E\" and Copyright (C) 2008 Michael Kerrisk <mtk.manpages@gmail.com>
=2E\" and Copyright (C) 2016, Heinrich Schuchardt <xypron.glpk@gmx.de>
=2E\" and copyright (c) 1999 Matthew Wilcox.
=2E\" manual provided the copyright notice and this permission notice are=


I CCd the ones for which I know their email.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Here goes some comments about them:

The one and two paragraph licenses are almost identical to the usual
one.  There seems to be a small diference regarding translations in
the 2-paragraph one, being more restrictive.  Was that intentional?
Or maybe it was just an accident, and there was no intention of
disallowing translations?

Would you please relicense to either Linux-man-pages-copyleft or
VERBATIM_PROF?


Also, Linux-man-pages-copyleft seems to contain a sentence that
makes it differ from VERBATIM_PROF:

"""
  The author(s) may
not have taken the same level of care in the production of this
manual, which is licensed free of charge, as they might when working
professionally.
"""

I believe the quality of non-professional code and manuals to be
at least as high as the professional one.  We have more freedom to
reject crap.  I propose also deprecating Linux-man-pages-copyleft
and moving to VERBATIM_PROF as the single surviving license from
all four variants.

We're also discussing the names that each of these four should be
given in SPDX.


I suggest (in order of appearance in this email):

-  Linux-man-pages-copyleft to be renamed to the following, and
   mark it as a deprecated license.

	Linux-man-pages-copyleft-nopro
	Linux man-pages Copyleft (non-professional)

-  VERBATIM_PROF to be SPDX'd as:

	Linux-man-pages-copyleft-qual
	Linux man-pages Copyleft (high quality)

-  VERBATIM_TWO_PARA to be SPDX'd as:

	Linux-man-pages-copyleft-notrans
	Linux man-pages Copyleft (no translations)

-  VERBATIM_ONE_PARA to be SPDX'd as:

	Linux-man-pages-copyleft-verbatim
	Linux man-pages Copyleft (verbatim)



Cheers,
Alex


On 5/18/23 14:38, Adam Dobes wrote:
> Hi everyone,
>=20
> I have recently begun converting license names of licenses found in
> Fedora's man-pages package to SPDX. Several of these licenses did not
> have corresponding license identifier in SPDX. Because of this I have
> submitted several license review requests for these licenses on SPDX
> Github (links listed below). If you have any further comments
> regarding these requests, please feel free to add them.
>=20
> One of these licenses, LDP-1 (found in man5/dir_colors.5), was
> unfortunately determined to be not-allowed in Fedora, so I'd like to
> ask if it's possible to change the license of this man page so that it
> can be included in Fedora.
>=20
> Links to the issues mentioned above:
> https://github.com/spdx/license-list-XML/issues/1947
> https://github.com/spdx/license-list-XML/issues/1955
> https://github.com/spdx/license-list-XML/issues/1957
> https://github.com/spdx/license-list-XML/issues/1959
>=20
> Regards,
> Adam
>=20


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------CZV17mqeYg1GFeU0gBKaPDNq--

--------------8OAuXYlUlV1zXa0eSs9BaFye
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRv57AACgkQnowa+77/
2zJZTxAAqMv64GUYLKJmNgH4vYTCbeWFEe7mZW4QdYfehSEspU6B/wHCk97X7mjl
FP92td6QJF866Kr0PmByHGDyikalnxP/eaBfDdhlwPHkiH9Ouna/rBuSIRfcJm1i
PjuDEKVJlA+xGliUBKLGDODx+xGYuxj7Gs2S4NnP31yhkb/bRWWTep9rUeBjQ2Nb
ROXgmzqDdB2cdGMmqlhzN/mZNPOcBdTtQlGw7yUvltiTuTrAvgMVgEd3uQk5RN44
PTFZxLLrEaScqvEnjicQZe62bDx/2hrBJsgk7QQELE6putDA+xy26c4ra/qX5So4
Q7OZNCcFmb0qvJl5eGDWIE+XUD/+PPDbDMGBi/I+Orw6ZqnC0z/WxLSPVBWbMhrc
TBjHFLdjImrSZnffhVElaipwp59qFNGAbIHomOp4z9IMC5EPzPOj81KLuE7B0mQq
bi4OjRNxS0FS630MDLA8W7EY1g9YlnJut/nynGGz5Upbc+1eADyM4wr8UKhvtfCo
WhFV9+lVYGQn51vvotltKwv0LX/MmSfu+o3lQ5iHmneTSr1WZiuHSBmhrEhWiZ4g
ibYJkcbzIflDCNC2KKJ4c89Yv1rMYBO3pVahNoLWbVQF1KqX1baKv2jW459HAQTy
Ye1wft3MUJFv/TaWBE96D19PdqXjuSt/uYfZGtj6oNztknha77I=
=S4OP
-----END PGP SIGNATURE-----

--------------8OAuXYlUlV1zXa0eSs9BaFye--
