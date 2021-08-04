Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEC0A3DFB56
	for <lists+linux-man@lfdr.de>; Wed,  4 Aug 2021 08:14:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234328AbhHDGOp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Aug 2021 02:14:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233631AbhHDGOp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Aug 2021 02:14:45 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5075AC0613D5
        for <linux-man@vger.kernel.org>; Tue,  3 Aug 2021 23:14:32 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id q17-20020a17090a2e11b02901757deaf2c8so2182731pjd.0
        for <linux-man@vger.kernel.org>; Tue, 03 Aug 2021 23:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+cjs9anIaapLTW/1hqKl8tnUo3gdX88FFR0D+FPr5KM=;
        b=FJOdl/Wy23njKYfX0yPcCsUgQ0jzuj6+XKc5Hdn2VvtB3MaOjm7RfKhjYtQ9Kqlc77
         zn/3fCpIG6/+ZaA2HD6CmpWD9CWzeg9vA29eSdqP3mjpOj5o3OyjRQKWXWDsLya8DHIO
         ++ZH2HysKOQk2Z/zJXWDcwScnuf45eiAEC1QeNtkKg1qAl0qeyJ0SX1Bl13Pjy/H24GP
         roqxJv1xLuhwNSpTlqgJxqKojMvaSvVSlYtD/CZLArogv34Tqkeq8SKr1qhnMM/ZiHQ5
         0LuJY4VKAD21yPvvtkNOBLOi6wrvqtUFt2FwyJ58mz2MLffB3+VohvDbOt6Bz/IvQatJ
         4RKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+cjs9anIaapLTW/1hqKl8tnUo3gdX88FFR0D+FPr5KM=;
        b=A1mhyVxyhBjUfBfKO6WolkUEHut4rgFGHKxDCPa/MqDEuCv/JoyFzV4ytJcazeZ03U
         e5r17uZ0IVMkM0PVxnksjfVW377lk9qQyoRKKCmQV/2cFoWPn5oEKyMPHK3Ym5pWltYz
         ltR5QX81gNyI7RtGnvY3rxZWb9TVKurOQhY/+vMTBDRBjYm2OKZr4IOif1zQugmxE61m
         cgGG4wj150ZILkIfqCaS5l12RZIy3tbVag1TCDyxwq1YCDmCXv7S4iYPIQNXu4N6wsR+
         pSgTxYWm88ZFzm6j13NtRZ4Uj82BHlbs8mYqWU1SfwNFMlNikzK5aAMxne9g0VSBhQd4
         PYpw==
X-Gm-Message-State: AOAM530EJtbQ2KsBfN+BYMQRylMfG+kaRjxhIoTM4rDrGqmSQWhbESK0
        aNKnteUejH+TCM6n3f0Vp1I=
X-Google-Smtp-Source: ABdhPJyaJHRII905Xkcqm+SK2NUB1Xye5CB0b4IrpCMJmkI5h4h1sm0+6JdW2vg06WDuc22rUUE5RA==
X-Received: by 2002:aa7:9af7:0:b029:3be:afdf:e75c with SMTP id y23-20020aa79af70000b02903beafdfe75cmr12754365pfp.77.1628057671831;
        Tue, 03 Aug 2021 23:14:31 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id d65sm539295pjk.45.2021.08.03.23.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 23:14:31 -0700 (PDT)
Date:   Wed, 4 Aug 2021 16:14:27 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] termios.3: SPARC architecture has 4 different Bnnn
 constants
Message-ID: <20210804061425.yde647cvq3wy4stw@localhost.localdomain>
References: <20210731145501.9944-1-pali@kernel.org>
 <20210801112229.w75qb3sggampa757@localhost.localdomain>
 <31c0e6d7-0b5c-19dd-bfcb-01e703ed2008@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5aztyuhvfxkby67i"
Content-Disposition: inline
In-Reply-To: <31c0e6d7-0b5c-19dd-bfcb-01e703ed2008@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5aztyuhvfxkby67i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-08-01T14:13:39+0200, Alejandro Colomar (man-pages) wrote:
> On 8/1/21 1:22 PM, G. Branden Robinson wrote:
> When I saw the patch, I had no idea what those .ft/.fi things do, and
> guessed that they're correct based on existing context.  I think your
> replacement suggestion below is better.

The 'ft' request changes the font (or style), and accepts exactly the
same parameter as the \f font (style) escape.

The 'fi' request enables filling; 'nf' disables it.

> > Here's how I'd do that:
> >=20
> > .P
> > On the SPARC architecture,
> > the following additional constants are supported.
> > .RS
> > .TP
> > .B B76800
> > .TQ
> > .B B153600
> > .TQ
> > .B B307200
> > .TQ
> > .B  B614400
> > .RE
> >=20
> > Why would I do it this way?  I'm trying to keep the size of the
> > language we ask man page writers to learn as small as possible, and
> > I especially try to keep the number of *roff requests they have to
> > know as close to zero as possible.  There are already two ways to
> > change fonts: through macros and escape sequences.  Personally, I'd
> > like to protect casual man page writers from having to learn the
> > third.  (And, again, outside of tbl(1) tables, I'd prefer they not
> > have to know the second [escapes].)
>=20
> Can you please send a more detailed email about what the current
> implementation does and how compatible is the solution and any
> differences there may be (if any)?

Sure, I'll mark 'em up like assembly.  I hope your mail reader uses a
monospaced/fixed-width font.

=2Efi			\" enable filling[1] of text
=2EPP			\" man(7) paragraphing macro; see groff_man(7)
On SPARC architecture	\" text line
=2EPP			\" man(7) paragraphing macro; see groff_man(7)
=2Enf			\" disable filling of text
=2Eft B			\" change font to style "B"
	B76800		\" text line using literal tab
	B153600		\" ditto
	B307200		\" ditto
	B614400		\" ditto
=2Eft P			\" change font to "previous" selection
=2Efi			\" enable filling[1] of text

Here's how I define filling in the groff Texinfo manual; many other
sources define it equivalently.

    GNU 'troff' reads its input character by character, collecting words
 as it goes, and fits as many words together on an output line as it
 can--this is known as "filling".  To GNU 'troff', a "word" is any
 sequence of one or more characters that aren't spaces, tabs, or
 newlines.  Words are separated by spaces, tabs, newlines, or file
 boundaries.(2)  (*note Filling-Footnote-2::) To disable filling, see
 *note Manipulating Filling and Adjustment::.

I try to avoid use of tab characters in man page sources, except to
separate columns in tbl(1) input.  I prefer to use the relative inset
feature (.RS/.RE) because the default size of a relative inset is a
configurable parameter.  (And if must be a certain value, it can be set
as the argument to the RS macro.)

=2EP			\" man(7) paragraphing macro; see groff_man(7)
On the SPARC[...]
the following[...]
=2ERS			\" begin relative inset
=2ETP			\" begin tagged paragraph
=2EB B76800		\" set argument in bold style
=2ETQ			\" declare additional paragraph tag
=2EB B153600		\" [repeat previous two lines]
=2ETQ			\"
=2EB B307200		\"
=2ETQ			\"
=2EB  B614400		\"
=2ERE			\" end relative inset.

=2ERS and .RE are used with timidity by man page authors; I think it is
because they are ill-understood.  It is certainly not because they are
new; like .B and .TP they date back to the original 1979 man(7)
implementation.  Even .P is "new", dating to Unix System III in 1980.
=2ETQ is the real newcomer, introduced to groff in January 2007.  Like
=2ETP, it's somewhat semantic.

> I'd like to be able to fix that.

Let me know if I can shed more light on things.

Regards,
Branden

--5aztyuhvfxkby67i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEKMDcACgkQ0Z6cfXEm
bc782g//b/hxVq9ZFaXJBVpdLXOVrDuhcsN3LXEWT27xA8tYjnBF47O94HC5QJpu
drTcqfHlXMdVvHYvHfZ231mvDBf7yKo3pnH8HfU6a0ADMBlnD5HqKM6QUHHuMCFL
kwuVDFduronaQlrYaHdZAxYjZvw6T/6b4a6KU/HDRD+diRP8cOsYxmaENg+pggAT
n8tc9pjc//+FeGnh3s/wUmrntVPIEnpmeye2Mpfk0sDQTVo4juWvRD91tlLxij58
D/ynPzwS6HlGcwG30ecRnEi00NOlNUIkzgNlO8hLoKZwTmYAgGCxt24SbE9t0pah
BRZxK1QjUPsgvtJPniuzmJwrGeFB1nWYLhoPmyjZMTSZIVm1KfIE2KA9LbF/uaQG
9sr36YYkFJHKgZlYKpRUO69DcV9DM/tR6D3c/9Xf/VEXd9GZ0x82a960KDNOUA36
Eot9bla9E6pTEApCvgV0obgRpfVuaqOmJg8HEwXtChIZNF6AkZOnblR7npWhvXQ4
c/ZTsaBFkW8RNaqCdyh6lTyMecbzHhY2ItQIwz0mIuF9eHervliWFUVa+OyzoL5+
0636IOtBvPH42uHhybSYaK3/AcIj9HUKYvKHmfteMuOIztTwS7n4FNpvVodQOYj8
DxVgNNChYhNpKFYrTQ7pq5BTcxwWiWktGIO91JKAYlrmfrnlgvA=
=QlQT
-----END PGP SIGNATURE-----

--5aztyuhvfxkby67i--
