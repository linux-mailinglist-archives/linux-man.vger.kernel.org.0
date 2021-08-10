Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A560E3E5520
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 10:27:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238109AbhHJI11 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 04:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238113AbhHJI1Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Aug 2021 04:27:24 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7508EC061796
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 01:27:02 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d17so19938352plr.12
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 01:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=F8lA543qQ7W7FaWz7VxYFRrmKs5fxEhTl05F+ddKUpI=;
        b=ig07CiFCG0KhXYHiqTD7v7Mwdo4TCF0YUbk3KwSFfuZdNZA2jywoQddh4Ubaf76uwG
         M/WRNcKzyWFxMW0H8WtyVrwMzvbJFroRlMyX2mRf6kCVG/MnVYJZG1674gczT/fL8x6c
         wIlTYBxFpnzyVe0jSQ2d/U/Zu5C1DkXmHpjhdRIWai4EK6nGvqX9s5bzDieLpCdHED2Y
         6rqPZdNuYyA3NTopw2MqrZzTOjLrYcuat8lysxaj9NkhIPXyr7dLS87nK2XrnTTVjZ6b
         M2nBacNQ5fk+LUhV2wOI3GRQ+3ulT1A98xlWKLK/OAkY6F8H1GeHb2c2yWMSqFQDRv8T
         NIjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=F8lA543qQ7W7FaWz7VxYFRrmKs5fxEhTl05F+ddKUpI=;
        b=oIrSWIfBuX/QWmt5Eo3+aQowHLF5UxZg2K8Xx8DqZsETtKCg+ggsQbpFucqeGm+gej
         vcpdBWbyCj1IYWm5PO5+v8YIFovejK00h8kJk8Qp7TK7JGofynWPy3J6zbXkgcJ/Qx0x
         xt0WcWnkASPzJAEH/LkIxGEnJWQplyshoaUbnkH11i9Jc2TJqv40tvl2FBTiU3UlCpE/
         EPTruBep5xtqvUj0bFN5Po3VAxXYJUPRbpUEBbyG0UVTbi87UPBMbjTf03gefmA+KlO0
         PfuwOU4UHXMOLFyU9GDOKkXb5rfHlYzFsDJRZc28JtTA/ewL/wc3hoCipVD5IzGJZWGZ
         XDQw==
X-Gm-Message-State: AOAM5329lbUkoEOwv6WfHpRrSX35MYK0fPBMdVReAsQKK2iwW/njczhn
        g70Oc8pYbHHL10EtmjL9CFU=
X-Google-Smtp-Source: ABdhPJz9lUCDhJOgMXa8RpVpPE70cOSJ4PYDLvr1syso6zrWdIj/wz/SuUNL9MJjgsBT1tyIFxYUag==
X-Received: by 2002:a17:90b:3708:: with SMTP id mg8mr3777639pjb.19.1628584021963;
        Tue, 10 Aug 2021 01:27:01 -0700 (PDT)
Received: from localhost.localdomain ([1.145.127.164])
        by smtp.gmail.com with ESMTPSA id s22sm22050008pfu.52.2021.08.10.01.26.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Aug 2021 01:27:01 -0700 (PDT)
Date:   Tue, 10 Aug 2021 18:26:57 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Helge Kreutzmann <debian@helgefjell.de>,
        linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal.2
Message-ID: <20210810082655.l6qlc5h4vgn2hwpg@localhost.localdomain>
References: <20210725170929.GA16841@Debian-50-lenny-64-minimal>
 <CAKgNAki+-u-7MY8pD5WB95ss_0_f=2B4zk7HnckxNDD6mD=UDA@mail.gmail.com>
 <20210727190315.i55sv2pap6ffhkuv@jwilk.net>
 <fc7d02d0-7fd8-0ed9-d1a8-9156240b177a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cmfjbnprluh4gjh6"
Content-Disposition: inline
In-Reply-To: <fc7d02d0-7fd8-0ed9-d1a8-9156240b177a@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cmfjbnprluh4gjh6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-08-10T03:46:23+0200, Michael Kerrisk (man-pages) wrote:
> On 7/27/21 9:03 PM, Jakub Wilk wrote:
> > * Michael Kerrisk <mtk.manpages@gmail.com>, 2021-07-25, 23:02:
> >>> Man page: signal.2
> >>> Issue: Such paragraphs shouldn't be no-wrap
> >>>
> >>> "B<WARNING>:\n"
> >>> " the behavior of\n"
> >>> "B<signal>()\n"
> >>> "varies across UNIX versions,\n"
[...]
> >>
> >> I don't understand this report, and can't see a problem. Please
> >> elaborate.
> >=20
> > I think the problem is that the spurious space before "the behavior"
> > is confusing po4a.
>=20
> Thanks, Jakub. I fixed that.

My interpretation would be not that po4a was getting confused, but that
it was taking roff(7) language input at its word, where the default
semantics of a leading space in filled text are that it causes a break
and indents the line by however many spaces are present.

Here's some material from the groff Texinfo manual in the forthcoming
1.23.0 release.

[[
A blank input line not only causes a break, but by default it also
outputs a one-line vertical space (effectively a blank output line).
This behavior can be modified; see *note Blank Line Traps::.  Macro
packages may discourage or disable the blank line method of paragraphing
in favor of their own macros.

A line that begins with one or more spaces causes a break.  The spaces
are output at the beginning of the next line without being _adjusted_
(see below); however, this behavior can be modified (*note Leading Space
Traps::).  Again, macro packages may provide other methods of producing
indented paragraphs.  Trailing spaces on text lines are ignored.(1)
(*note Breaking-Footnote-1::)
]]

I've changed the groff man(7) macro package to install traps to warn of
blank lines and filled lines with leading spaces if the CHECKSTYLE
register is set to a value of 3 or greater.

Here's an example of style-checking the signal.2 page as of commit
1d767b55 (22 March) with groff in development.

$ ./groff/build/test-groff -Tutf8 -man -rCHECKSTYLE=3D3 -z man-pages/man2/s=
ignal.2
an.tmac:man-pages/man2/signal.2:49: style: 1 leading space(s) on input line
an.tmac:man-pages/man2/signal.2:163: style: .BR expects at least 2 argument=
s, got 1
an.tmac:man-pages/man2/signal.2:179: style: .BR expects at least 2 argument=
s, got 1
an.tmac:man-pages/man2/signal.2:254: style: .BR expects at least 2 argument=
s, got 1

The register has to be set to enable style checking; the above
diagnostics will not be presented to innocent man page readers.

Regards,
Branden

--cmfjbnprluh4gjh6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmESOEYACgkQ0Z6cfXEm
bc5KwQ/9H5MChqrTIz4vKxEfddh1FdcMTD+rp8Pssm5dTkU00CTNgN2Zb+uFCSRU
vNblbuHv7dFqxaAOkqZrJR6XVftnnUUG3kdWn6hsF8yQW+RJAygAKN2SDqn+vwD+
YAjzxBOobfiSmJKNvloAcOmUG35YGjt9sAwwi+BFrF2oOZf9fmSCr+AWjuQ5rulm
XQ9mwFQcp81FT2bY1s5gxs682oebS+8r1J7dpTiTze9N6s87+SfFrfgHmPV9UZPk
2/0Ffx+I8l9EMEr153f8E4A7z9Af5SdbmFvbtKJMP12rjpTu4B7UvJIUzaLt6k6p
jBQcODenHCk7Sa2QTqlvm+iTao2ZOiqusrn4CJXbW45TcAKF/+8fFd8A7q3h3P8i
Xekzzzz0RQmLFmJOW6capWVTyp8reDMVtTlGmK2CSl/pZQ9LeC3bbulzsMtOSrQ4
jbCWFvPvRMnvaYEFEsOwb1h75dFJ5zM+MFvG5SfsGYGHwb7RMbgx+X/UVtMflWU+
tTmvHPDa9B2lJTFsfnozIgal0L9NnrbVVkph8JefE6qyeIIGKQxl4jW/cR4TviM/
7OrcWTMKFDI2FPRlAnmMnpCuqHoshF+1WrwKceH64cJVjz2QPnapOhAadYiAtjwC
+U9M5LsB8pQwGaCxxop6HRfgGFdhX+BOjOqoOeBOyYfZJiKpTnQ=
=zg+m
-----END PGP SIGNATURE-----

--cmfjbnprluh4gjh6--
