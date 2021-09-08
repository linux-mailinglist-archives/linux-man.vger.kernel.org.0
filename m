Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 314BD403361
	for <lists+linux-man@lfdr.de>; Wed,  8 Sep 2021 06:35:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbhIHEgR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Sep 2021 00:36:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbhIHEgQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Sep 2021 00:36:16 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 844CFC061575
        for <linux-man@vger.kernel.org>; Tue,  7 Sep 2021 21:35:09 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id w8so1238605pgf.5
        for <linux-man@vger.kernel.org>; Tue, 07 Sep 2021 21:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x+u6jN1pdw2AkQmD/EJRYiTSIPxUc0CnaRLEpWqtn/4=;
        b=hiWvoBbBOTItq55sEcuiiMseAmPoiwsIImS0/xUX7WV3S772HZJMWsuJlcxuGJg+q4
         wAdDd8+RIrOtI8PE0/HIkIUc1JWfOeQMrNq8qIm0X3lsoE9BWOQpDcBhheJrOdrITCBm
         /vL2A706Eys/pE8MrGYYYaLDZ2wEPM50N7C4IqvOEnr1f15fwRltpM87ISPlWXps2vAC
         umoCvnv7d4NQcEP9b/kLgQCAiojR1LOhBdJn4tQ2DrBgKKT4ICwldqEMiqb1HUPyMacj
         dqTbZzwFpCdXr1S8HYFNZHcsDSDbOJZZEp9K3DkPLaAxIa5ZEyZBfQxt/X0TmtF+NGXJ
         72Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x+u6jN1pdw2AkQmD/EJRYiTSIPxUc0CnaRLEpWqtn/4=;
        b=FekSAzlHo4eg6r4sesv+XBdsjEAGdQn46eYmYfQryED5yYAS+1GXNKsvsRjzuz4QEW
         q6eqKD4QdOiKYEDLKHVaxSkfr1FSm1DLQU44owUH6na7Iv823z5PmST2HXARTxX/U5sn
         2b2/75hzXsyOXAw1PODbA1GDL3ohkzJZfn3pB5O6peLoutzXVDJjmiQJHz+VKfikbEg7
         r4iEbTY8SWWydGbItHnWGuF12W5Ifxgk2LwzpUos/iVDZxzrXB2UJT+ZCNPnlvfSvb9P
         YBCSdxZ7gKCJ5i972kGkj3EU9jee4CUcso+bT5+dMqXTur9YBZh9OSBBhwsYGXbS5D9X
         h5Cg==
X-Gm-Message-State: AOAM533WHNrCU4950w1i9AViP/4D4XIdlVSgyAIiIFfwxu0wiHya8nXj
        R6TS+iGT/d/AvdmgifsA+BU=
X-Google-Smtp-Source: ABdhPJyGVwcK+CbBvoL5KO9fxEZsKdRZol9W+b16/zq0HORHNH7sS+FElIeD/2q5ovzGY4PZM0e0IA==
X-Received: by 2002:a62:ce0c:0:b0:412:3e11:1eff with SMTP id y12-20020a62ce0c000000b004123e111effmr1791074pfg.69.1631075708280;
        Tue, 07 Sep 2021 21:35:08 -0700 (PDT)
Received: from localhost.localdomain ([1.145.127.201])
        by smtp.gmail.com with ESMTPSA id h127sm629249pfe.191.2021.09.07.21.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 21:35:07 -0700 (PDT)
Date:   Wed, 8 Sep 2021 14:35:03 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [RFC v3 8/9] Many pages: [Verbatim-man-pages] Use SPDX markings
Message-ID: <20210908043502.xcmj6yoxrneokwl5@localhost.localdomain>
References: <20210905132542.245236-1-alx.manpages@gmail.com>
 <20210905132542.245236-9-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="xzq2hjtgog34axdf"
Content-Disposition: inline
In-Reply-To: <20210905132542.245236-9-alx.manpages@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--xzq2hjtgog34axdf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

I'd like to request a different choice of name for the SPDX license tag
used by the man-pages documents affected by this change.  It's my
understanding that there is freedom to make such a choice because the
proposed tag does not yet appear in the SPDX license list[1].

I have a few reasons: (1) the license tag says "Verbatim" which implies
to me that permission to modify the document is excluded--but it is not;
(2) with the exception of the paragraph about the kernel and system
libraries being in flux, this license appears identical to what I (and
some folks in Debian) started terming the "traditional GNU documentation
license) about 18 years ago when debate over the GNU FDL was raging[2];
this was in fact the license the GNU project used for most of its
documentation before it promulgated the FDL.  As far as I know, this
license text has no earlier provenance; I would appreciate correction on
this point.  Thirdly, since that time, the GNU project has christened
the license terms for many of its web pages the "GNU Verbatim Copying
License"[3].  You can perhaps see how this might generate confusion.

Because the warranty-disclaiming third paragraph about the Linux kernel
is unique to the Linux man-pages project and the term "verbatim" implies
too much restriction in my view, I envision a few alternatives.

man-pages-doc
man-pages-document-copyleft
man-pages-copyleft

Any of the above could be further prefixed with "Linux-" to reinforce
the specificity to this project, of course.  If pressed for a
preference, I reckon I would pick "Linux-man-pages-copyleft".

I feel that the "VERBATIM" string is similarly misleading, but it's not
presented as an SPDX license tag, and I see that its use is already
well-entrenched.  I expected to find something like a sed script in the
man-pages scripts/ directory that manipulated lines matching
'%%%LICENSE_START(' but failed to.  Perhaps a convenient new moniker
could be adopted to supersede "VERBATIM" in this context, once the SPDX
tagging initiative is complete?

Regards,
Branden

At 2021-09-05T15:25:41+0200, Alejandro Colomar wrote:
> To simplify understanding which license applies to each file,
> let's use SPDX markings, which are simple, informative, and
> commonly used in many projects.
> Let's also follow REUSE <https://reuse.software/> conventions.
[...]
> diff --git a/man8/sln.8 b/man8/sln.8
> index 341cf9afb..0a2f04844 100644
> --- a/man8/sln.8
> +++ b/man8/sln.8
> @@ -1,26 +1,5 @@
> -.\" Copyright (c) 2013 by Michael Kerrisk <mtk.manpages@gmail.com>
> -.\"
> -.\" %%%LICENSE_START(VERBATIM)
> -.\" Permission is granted to make and distribute verbatim copies of this
> -.\" manual provided the copyright notice and this permission notice are
> -.\" preserved on all copies.
> -.\"
> -.\" Permission is granted to copy and distribute modified versions of th=
is
> -.\" manual under the conditions for verbatim copying, provided that the
> -.\" entire resulting derived work is distributed under the terms of a
> -.\" permission notice identical to this one.
> -.\"
> -.\" Since the Linux kernel and libraries are constantly changing, this
> -.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> -.\" responsibility for errors or omissions, or for damages resulting from
> -.\" the use of the information contained herein.  The author(s) may not
> -.\" have taken the same level of care in the production of this manual,
> -.\" which is licensed free of charge, as they might when working
> -.\" professionally.
> -.\"
> -.\" Formatted or processed versions of this manual, if unaccompanied by
> -.\" the source, must acknowledge the copyright and authors of this work.
> -.\" %%%LICENSE_END
> +.\" SPDX-FileCopyrightText: 2013, Michael Kerrisk <mtk.manpages@gmail.co=
m>
> +.\" SPDX-License-Identifier: Verbatim-man-pages
>  .\"
>  .TH SLN 8 2021-03-22 "GNU" "Linux Programmer's Manual"
>  .SH NAME
> --=20
> 2.33.0
>=20

[1] https://spdx.org/licenses/
[2] https://lists.debian.org/debian-legal/2003/09/msg00264.html
[3] https://www.gnu.org/licenses/licenses.html#VerbatimCopying

--xzq2hjtgog34axdf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmE4PW4ACgkQ0Z6cfXEm
bc4fexAAk53LmYb/IEkowBxWM97tQhKQ4aHzbasTnJhnoS3ht+n04P/lSxgpSk0o
tYlw69OD3xcfLWN4jujWpXGLHg+xkcilJOz7d1r1U8vJMl0Ynq+fXByQz+Cqczdn
rS/9IUTloALyMO+6UTVbUjM2Gt2QnFHX4bTsxzE9+WdenLjMH7oLG/L7+3J76z+j
LCLqKSYjcE8oWGCV2xNqpbG8jBx/BE7q0+SmiaHE0jVOyULWA2s1zZ9Yhxk92EV6
Iq8kO8HAg02sBHjJwTS57Wb+jDRVx0XZKCAieVBc6baKOhA2NNvtLfCf9uhQqsOA
CnZQd1PosdbeSiyodmu+iaoPIX7ToIdc6jLUILdnc5c+B3uXTSvmjLkuggmvIdeg
/5+O9Arqur9UyrZkqCyR+p7HvptlHoAWQQeIIT2z+YSqIZpvfHIjBuBq06QSYzxC
UnLOq8VmowPLAN9SsqvIh98w6M02vNCs0Lq+DdI+ts10cTYjlT/OGUTgfJLhsRQK
tgLGfPzYOb0yelwbK8BbSvBDug8X3oEMguxIShtfp9duALbc8IpYLf1zLEwMdRX+
I7FaNwyvOQHdTrhSEst+8x30i1BQUEiZCw3rv1kS5Rd3LPAx6zq9/iZkNsFd2Fwf
6cJhHYiWFGdgMN/Sdj767/aStLJqTMnruHP0YtH/Gi2P6aTINB0=
=jHV1
-----END PGP SIGNATURE-----

--xzq2hjtgog34axdf--
