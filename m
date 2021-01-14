Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B1E62F5B1A
	for <lists+linux-man@lfdr.de>; Thu, 14 Jan 2021 08:13:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725989AbhANHMl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Jan 2021 02:12:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725888AbhANHMl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Jan 2021 02:12:41 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3BC4C061575
        for <linux-man@vger.kernel.org>; Wed, 13 Jan 2021 23:12:00 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id u4so2694424pjn.4
        for <linux-man@vger.kernel.org>; Wed, 13 Jan 2021 23:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yo/KMVBH2CY7Sf0bmUJmG2WiZQQzC2A72PzuXnKoxlA=;
        b=UA+9GHUfgsTZI6PdwsXfnGrm1BoIknuXgfa+/omBFf6cyX2cydVoiNgcc9xJfPwkDh
         EJIU1ylLCDNGB+CGXxAMzLl5mxqj235y1mqj9mT4oGfQggef+cGssrsZTH9orcni8d36
         n6HMwuQB4ep172YLFg7iMCnV6XwZrSFuGcEnQns1u5BUUln33wIsOYcfuqdv20IyxSm8
         mZK36OBlBme95H49fHz78rnvpRluCmjJPNLSSits3Cnz+nnxqJKtQ02HxCAemVOUWrCt
         Rti17vUNqSsRFQ6wH8PcNTJOKJyG2eZM7pCaj3LyWMjmvaGfPmWjXusBgIfEhRgQrURM
         gzig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=yo/KMVBH2CY7Sf0bmUJmG2WiZQQzC2A72PzuXnKoxlA=;
        b=iL5ARuDKTx8ZirD/In3UQ3F5HoZfh/7UzH/BJY2Aw8yismUZRk7evZMm1k/oTOYYuJ
         pU/egqSDonAE9LSjdRH8+/w1uUQPNUj+94duj1A6lL7ULKmQ6nZbO+Y2/yjbllf7P1X+
         l3yitk7xWhk7f2hr6fyNmrO8bEX6WT8dznW2S9JCQOLUb5rUguISrOMv0kRXyUYh9i8E
         CAMRzqkRcQAd4MOVCqrLrSfSwrO5Z38oUYVoEXamPPFSVOlNIUvpmB1Mz1JVcRPGt2dc
         WHfu6PQSPPm9VURbKH6pJ8FGe2r06O2D8w/AFoYqJzsmCCSENt5cu3GwyZ2LL8U5Qh3i
         wpAg==
X-Gm-Message-State: AOAM531grHxI58O8ti1fMecq/tsfInvodRo/5KR8NvxewWfBdohnac28
        QFtfpiyeSWz2hkjKdY/aomxprP/RWRDsXw==
X-Google-Smtp-Source: ABdhPJz5MvsuC0+r1wr8nKlCPYGtYpFV1yXzhvFcGsab/UgmZpvqPdOY7uqsCaFB3Ievx2tRz6GnAg==
X-Received: by 2002:a17:902:c1cc:b029:da:dd7c:2ac7 with SMTP id c12-20020a170902c1ccb02900dadd7c2ac7mr6233108plc.25.1610608320444;
        Wed, 13 Jan 2021 23:12:00 -0800 (PST)
Received: from localhost.localdomain ([1.144.186.120])
        by smtp.gmail.com with ESMTPSA id a136sm4664970pfd.149.2021.01.13.23.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 23:11:59 -0800 (PST)
Date:   Thu, 14 Jan 2021 18:11:55 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>, groff@gnu.org
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
Message-ID: <20210114071154.hmb6jpt422dl67dm@localhost.localdomain>
Reply-To: groff@gnu.org
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yc7ij5suf6n445ei"
Content-Disposition: inline
In-Reply-To: <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yc7ij5suf6n445ei
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[redirecting to groff@gnu.org; Reply-To set]

Hi Jakub!

At 2021-01-12T21:51:15+0100, Jakub Wilk wrote:
> > On 1/10/21 7:50 AM, G. Branden Robinson wrote:
[regarding groff's an-ext.tmac's .UR/.UE macros]
> > > They use left and right angle bracket special character escapes
> > > (Unicode U+2039 and U+203A)
>=20
> I think that's a bug in groff. It should use plain <> for URLs, at
> least for tty output devices.

Even for TTY devices that can render angle brackets just fine?  Can you
say why?

> * Alejandro Colomar <alx.manpages@gmail.com>, 2021-01-10, 15:35:
> > I checked, and yes, it renders some character (the character depends
> > on the terminal: on tty I've seen a diamond, and on the xfce
> > terminal something similar (but slightly different) to a
> > parenthesis).
>=20
> Your console font doesn't support U+2039/U+203A and uses diamond as a
> replacement character.
>=20
> I have this in /etc/groff/mdoc.local and /etc/groff/mdoc.local as a
> work-around:
>=20
> .  if '\V[TERM]'linux' \
> .    tr \[la]<
> .  if '\V[TERM]'linux' \
> .    tr \[ra]>
>=20
> (In the long run, I should probably fix the font instead.)

I think this may be another use case for the .soquiet and .msoquiet[1]
requests I have proposed to support possibly-nonexistent or
permission-blocked opens of files; in this case, something like
$HOME/.troffrc or $XDG_DATA_HOME/troffrc.

I don't share Jakub's preference but, with the right tools, I'd defend
to the death his right to configure it.  :D

Thoughts?

Regards,
Branden

[1] Or .sofailok or .msofailok or whatever we end up calling them.

--yc7ij5suf6n445ei
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl//7rIACgkQ0Z6cfXEm
bc6qEA/+MpKIoD8UIZqb5ueZjeGsK7GRrlpMW25WBsWMm8jA1XpKc4ObUelkhBS8
WmgsjzyW8aFQl+T0BMs8vk+7B/itw32DtG7IDDHUfbzAnaZ55IY822uLQRH0EbSo
f1uK51TslPdUuHmC/gcKJ6SQpRrEH6GZiqRKjNdnGm32XUO3y6XYSpTfgvjEZ0Oz
fmdrP62aISWCQ2HbT/orGiwI1mV6gSX8SGris0j19BUQxUC5veuWQG+uK39/7qjn
In/GlqraWHdCU5+WhFL9asiWYCJTeV0layTuiIDWnEMfegcJamqjh/385dL/xIoA
QngHDDFkjyExINOczz/keuwJJJ1NmsGC8+C0qwwPeCW4N5WhprSxqXctZyAZJK4Y
ITO7hOQkO2M74YuWbpVOS/jQeFMfOSr23drJmAlpygz7NxeNTA2XfjurXWfLk+Ym
q6fGEQu2oII4jqEDmuPLfUOvDT3EpaTck3NX3wWBC+C3r5k34iCpeZXqjbbixL/M
iQ6WTbJcDYIpmlkeB7J4mDUB6KrK/+zcUsVvUOhMWjJPQweTzdcm+snvZVHOhFRI
/nIqzuUeskewmSaIHioHWOk4xADUiTVI7dTk5IOKL/Yf2AAXldfDxq7YmAjufnl0
Hu+5C5+j4R5sUyt/wV+Wbk2Vsm/tAX3wxtZe7hEKcKxYSG3xfUo=
=bj/4
-----END PGP SIGNATURE-----

--yc7ij5suf6n445ei--
