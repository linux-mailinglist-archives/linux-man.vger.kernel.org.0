Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A39653DCB62
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 13:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbhHALgh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 07:36:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbhHALgg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 07:36:36 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D48EC06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 04:36:29 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id j1so21553411pjv.3
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 04:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VZisN3fhCEi2DEc5FDS9ww4yH+uW9lS1tHlYHyo3fMY=;
        b=SqgPWki/UnWytTU0+ScOlptTzpd6Yfgc6yfMQC6x4bknRAYnoy7YI9Q+Ki1Wv2AzV5
         WIxfnh9gvnK9D2jqFRw9JYAUuEuxtDMT1YqqAXXI8DBUV0g1eJe2EApNEUu6xJp44K0B
         YIk9/RbZPRv1ZYASW86D3sxqWQrhcw+hrMKBQLZGF+iuiOVuJPiEhlysCcfriQ9WPdUS
         kvoMDQvXa2mcZqSUMVDWKTXrh1aBFZAPfKLRAe4mfvk0mmMNfx1qiLPtVOfFb3Dy/pjZ
         /sPobF6D5X8p583FRnsnhjA1A469nivOTpuF+Zyej46uOCV2CIkaQhYwBQ9VWUsrt8wg
         2+0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VZisN3fhCEi2DEc5FDS9ww4yH+uW9lS1tHlYHyo3fMY=;
        b=Y9/F8KK1VFFVlWdCR0UTZVssAoqwP92Jga/1bZc4CxtDvu+HjJkRTHMmGiGhPnkXgl
         6GwlqOe3PGIYflZTny9qDNtPatX37zBZQR0F6K9SnZ53lWZD9lGm9PhN/Hx7PRfymZSn
         39F4CyYo9oaEMrnIYEsp5BgrYwier894wsCXK4NTMZRV6hPcfnyHNZDg1TWd5IXrganf
         hI24d2s6FY8NUSWS0IXS0dr3VykROhA9htGM/Do2Yp8IODDrsH/E9WcOR19z1Yu0hWFb
         ofA2scRGGLN+HhUr0MVuMlNbCCszPJeia3kRBt//WBlJp0hHzbcUOKTLaOuZLXiUIuk0
         SASQ==
X-Gm-Message-State: AOAM532umDz/Gg7MvPzvHkoFh6T9qI2vntQ16h5ra5i1wZSTheAzTQtf
        tEuWfSRg1AphdGD6a/J15jo=
X-Google-Smtp-Source: ABdhPJy0P9yU+ds/SfH0o5cOFJW0oUH/t91gW+yx6fKy45wV0dogufHYqdHDSgiVNuMLLCVwjB5ULQ==
X-Received: by 2002:a17:90a:ce03:: with SMTP id f3mr12326502pju.30.1627817788655;
        Sun, 01 Aug 2021 04:36:28 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id b7sm8066592pfl.195.2021.08.01.04.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Aug 2021 04:36:28 -0700 (PDT)
Date:   Sun, 1 Aug 2021 21:36:24 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] mount_setattr.2: New manual page documenting the
 mount_setattr() system call
Message-ID: <20210801113623.lk5lfm4brhgx6hbq@localhost.localdomain>
References: <20210730094121.3252024-1-brauner@kernel.org>
 <9ba8d98e-dee9-1d8d-0777-bb5496103e24@gmail.com>
 <20210731014251.whqfubv3hzu3mssw@localhost.localdomain>
 <00d3c648-bdb5-3005-807f-ec2d3360f16a@gmail.com>
 <20210801100234.mcgwwxr42wxwe7gf@localhost.localdomain>
 <1cde7dff-b62b-4697-1229-dd02529b3110@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wiprcjkgaobxdr2f"
Content-Disposition: inline
In-Reply-To: <1cde7dff-b62b-4697-1229-dd02529b3110@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wiprcjkgaobxdr2f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-08-01T12:38:36+0200, Alejandro Colomar (man-pages) wrote:
> What are "font escapes" and "italic correction escapes"?  I don't know
> those technical terms.

\f introduces a font escape sequence, which changes the font being used
to set the text.  They go way back to 1970s AT&T troff.

Italic correction escapes are a groff innovation for a typographical
concept of ancient vintage.  They are spelled "\," and "\/" (these are
the sorts of names you come up with when you run out of room in a
one-character name space that has to be input from an ASCII keyboard).

All are documented in groff(7)[1].  The italic correction escapes are
discussed at greater length in groff_diff(7)[2] since they would be new
to AT&T troff veterans.

> Ahh, I used mgroff(1) (mental groff).  I should debug my mental
> parser.
>=20
> So, as I suspected, that .IP is ignored, if my mental groff is working
> correctly now.

Well...it's not _ignored_, it's a macro--it gets interpolated and
interpreted.  It just, in this case, doesn't do much if anything that
isn't redundant.

> Since almost when I started here, I'm trying to have the man-pages be
> consistent across all of the pages, both in terms of source code and
> rendered output.  Not an easy thing...
>=20
> I hope that when I finish this (if it can ever be finished), reading
> and writing man-pages is a simpler task for newbies :)

I have similar goals.  It's a pleasure to work with you.  :D

Regards,
Branden

[1] https://man7.org/linux/man-pages/man7/groff.7.html
[2] https://man7.org/linux/man-pages/man7/groff_diff.7.html

--wiprcjkgaobxdr2f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEGhzcACgkQ0Z6cfXEm
bc5pWBAAm56RbOLgFy8U8y/HGBHhOkgm9K+sq/iRhSS9U/Y8M19lXChtEE3MbSJi
LDucIHIs2bzdPBvfbCjwOFE5JSG3J00IWF2gFtGdMwEBwabYF30BFqyYWtwllLde
btDH1tUM+U+/87I/igytbCCL6X6I4tzIpZ5TPGzuUOVLAPd7YCT5hpid1u2pSjMA
Uyx8sdR+3V1rkp6h3SvD6trkZUxHYWzxW4lY5ZaVxIfzMl+Fx7jqWGbFv3phwHsb
TsXHvuB+uylv8d61BhrHgNyv5JDmjbIyPA/6NUK8cbt+LXEdAYuGTxrKhobYw9n+
Z5iPdwHi/M00mwwf3VRzFLRLU9g6CH6NORJReHA6hK0kC5n/uAzampmI5jkSEssD
kh3Uh4ytWJIBFGsFonIcdc1mzTIdFrJf/fxTeSbcsS4PTrDda94zRO321Vsurvev
E6L5TBIg8Th88zxWHh7IP8IAXDS7ud6VfhHw12tRfL+xiaNNTz4VY+3eWXwMWyah
I5hrwBhyIikmO8Ztl0yczho606xxqY5UbUiKKdo119aP+Fl/KiqnaiN24sBfIWmE
6U31Cu5t5MhvHeXJANJYOhCDNg1K/dFrJ8w97oC5IUWLKY6sG5T7rjA+y3yZNUer
DQAo9kyFDud/CDJfU1vVNZxLrVdbqcZ8/iEJHakW/OGBUVIORqU=
=8qV/
-----END PGP SIGNATURE-----

--wiprcjkgaobxdr2f--
