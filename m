Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96E092EF5B2
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 17:28:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728069AbhAHQ0m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 11:26:42 -0500
Received: from mo4-p00-ob.smtp.rzone.de ([85.215.255.23]:27274 "EHLO
        mo4-p00-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728033AbhAHQ0m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 11:26:42 -0500
X-Greylist: delayed 726 seconds by postgrey-1.27 at vger.kernel.org; Fri, 08 Jan 2021 11:26:41 EST
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1610122970;
        s=strato-dkim-0002; d=clisp.org;
        h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:From:
        Subject:Sender;
        bh=h7gLHRGcdf+fX1r0WHL6+zGokW9wSi/stcwyuDZuNTI=;
        b=rxRlnMDzK9QUhBbAkyZUUVb735z3fe9NIGFgfFfa89ha0VUb9342IWBuO/Z2WEO8Id
        3Xff9RhYWzNZpcjLtxz1QlWuMYteyVZLjln5a3ZJJQd+avfurSw8pHI1ArVrL2IqKumA
        O2U3MtR8VM7lwnE//X/IEh8r+DfjdntUVgg1PnIEaOilc0Ig+lYHaRBTerl54Ee5pxMT
        VLN++2kBV1+TR9yNC3ERutaMrIzqzN4b7NS2xeTPn2tWcX7XUX57CFuZuNRUrukX05FY
        IKQBwtG0dntsasmYasBN7zSlDzzrSzQH82hSLDLdU5w4sP2e4U+Dxdj6rmTbFRB7lFQj
        Asug==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH+AHjwLuWOHqfyyvs="
X-RZG-CLASS-ID: mo00
Received: from bruno.haible.de
        by smtp.strato.de (RZmta 47.12.1 DYNA|AUTH)
        with ESMTPSA id u0aa20x08GAiCLr
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
        (Client did not present a certificate);
        Fri, 8 Jan 2021 17:10:44 +0100 (CET)
From:   Bruno Haible <bruno@clisp.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: setlocale.3: Wording issues
Date:   Fri, 08 Jan 2021 17:10:43 +0100
Message-ID: <1666349.hQisT8tt6K@omega>
User-Agent: KMail/5.1.3 (Linux/4.4.0-197-generic; KDE/5.18.0; x86_64; ; )
In-Reply-To: <0e50d381-73aa-970e-43b7-42519fcd8540@gmail.com>
References: <e198d995-5a85-bda1-1a82-57260b9d4efe@gmail.com> <879e52c6-e4f7-e5ea-5766-4893d01038db@gmail.com> <0e50d381-73aa-970e-43b7-42519fcd8540@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar (man-pages) wrote:
> >>>>>        (a) using the values returned from a localeconv(3)  call  fo=
r  lo=E2=80=90
> >>>>>            cale-dependent information;
> >>>>>
> >>>>>        (c) using the multibyte and wide character functions for tex=
t pro=E2=80=90
> >>>>>            cessing if MB_CUR_MAX > 1; and
> >>>>>
> >>>>>        (c) using strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3) t=
o com=E2=80=90
> >>>>>            pare strings.

If you feel it's better to separate the functions for strings from the func=
tions
for wide strings, I would write it like this:

        * using the values returned from a localeconv(3)  call  for  lo=E2=
=80=90
          cale-dependent information;

        * using the multibyte and wide character functions for text pro=E2=
=80=90
          cessing if MB_CUR_MAX > 1;

        * using strcoll(3) or strxfrm(3) to compare strings; and

        * using wcscoll(3) or wcsxfrm(3) to compare wide-character strings.

Regarding the type of enumeration, I generally use
  - (1), (2), (3), ... when the order matters, e.g. to describe steps that
    need to be done one after the other,
  - (a), (b), (c), ... for alternatives ("or"),
  - simple *, *, *, ... for other enumerations.

Bruno

