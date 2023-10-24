Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 230E47D45B1
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 04:48:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232373AbjJXCsP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Oct 2023 22:48:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231459AbjJXCsO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Oct 2023 22:48:14 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57F5A10CE
        for <linux-man@vger.kernel.org>; Mon, 23 Oct 2023 19:48:07 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6ce327458a6so2068868a34.1
        for <linux-man@vger.kernel.org>; Mon, 23 Oct 2023 19:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698115686; x=1698720486; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fwcJlAXRcgK6p6NHQRzfPhp0/t3Wv9Hv7BFnIx9tngM=;
        b=d8LaGo+EaW3lGEqnc+cR+Exm7JeGIN7CU9DR58xelwO8s8n8GZqfGSnxbDUEZ88pJ5
         Ww4zuMS8xKpfbm86XJLzYbvPSvepOwx3ux11sWJXBp3mWrC8mAx14klrb0XRit1ZuexD
         Nslrsd4eg/oVVFJJhNadVXlPvg1X0BIFTbR9APSt+yloPl5ZIKaHDv8n+yfWrHoPlEGZ
         sXle934YKYKuoJiFDeMNDEXRpdzNnB3vTU5FJfAobPCsH2NsBBXNS5r7pAgSiH80xyAZ
         N8xH3pWTqoe11ujroF8Yxh7lYVwtWLVtuDw8cYT/vU9QIYZFBw32aFUyrk+UiXbFnMH4
         jX+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698115686; x=1698720486;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fwcJlAXRcgK6p6NHQRzfPhp0/t3Wv9Hv7BFnIx9tngM=;
        b=SS4UdPTRWMgxgR2jxRaMLPAI7k6gAC80dRTjbKVYRE4n63xkMbdjb7Sd2xrUeKAe1s
         zJVnIynGwzqmAOxBC949KpLbqk8CRQvJJsJTqmMwMhHOx1kPBrCkSHnYA5CFDpjob9gO
         uJ8yxdiXLbgMGN6HNZvu7e8mUVXIjDl9O1G08VmHvYaXruY4OI3rQd2NL6+kEMsA126C
         5tGHairdxf6bfwKTstYlRspqXigEb9pn0VJZQIV7c/RAdg1aXInkspnXbLzdu+lonO64
         Nt1UzKJXteqE0pXjTHEdlHs984v1VIO+ooarYPwwzjJw4l4cKdcGituWz1yMf3qj+A41
         giLg==
X-Gm-Message-State: AOJu0YzDnHkfLvTf1F2xewSU6KWlGxReC2cujWeslywsXWamYOOflKZT
        GY8WjZwA6gHfJAog8+QBe+4=
X-Google-Smtp-Source: AGHT+IHwn+1y5t+VVvptfCtgoqqTJZ6Hh5JOC1O63MxoFQ/07uep+RYFruMQszuoPna//z+lMWgafA==
X-Received: by 2002:a05:6830:cc:b0:6c7:d3d6:c3b7 with SMTP id x12-20020a05683000cc00b006c7d3d6c3b7mr7689733oto.19.1698115686488;
        Mon, 23 Oct 2023 19:48:06 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l18-20020a056830269200b006b8e8884f2fsm1681689otu.51.2023.10.23.19.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 19:48:04 -0700 (PDT)
Date:   Mon, 23 Oct 2023 21:48:02 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] ioctl_pagemap_scan: add page for pagemap_scan IOCTL
Message-ID: <20231024024802.e6hfjvfumzc2rbil@illithid>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
 <20231019131252.2368728-2-usama.anjum@collabora.com>
 <ZTbrIskF1mt0zTM_@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ipd2umre3os6g5ob"
Content-Disposition: inline
In-Reply-To: <ZTbrIskF1mt0zTM_@debian>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ipd2umre3os6g5ob
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-10-23T23:52:28+0200, Alejandro Colomar wrote:
> [CC +=3D Branden]
> > +.SH SYNOPSIS
> > +.nf
> > +.BR "#include <linux/fs.h>" "  /* Definition of " struct " " pm_scan_a=
rg ", "
> > +.BR "                          struct page_region "and " PAGE_IS_* "co=
nstants " */"
>=20
> That space is not necessary after a closing '"' is something I don't
> know why exists.

Right; since filling is off, and the line will be broken after
"pm_scan_arg," (with typeface changes) anyway, this attempts to put a
space at the end of the line.  But that would be invisible, and an
according-to-Hoyle *roff formatter would get rid of such spaces at the
end of the line before sending them to the output device anyway.

$ printf '.TH foo 1 date package\n.B "pm_scan_arg, "\n' \
  | groff -Tutf8 -man -Z | sed -n '/pm_scan_arg/,/package/p'
tpm_scan_arg,
n40 0
f1
V200
H0
tpackage

If one has learned device-independent troff's output language (see
groff_out(5)), one can see that the space after the comma is simply
discarded.

> I changed that slightly.
[...]
> We try to use \~ for a fillable space; it has the nice effect of
> removing the quotes.
>=20
> -.IR "sizeof(struct pm_scan_arg)" .
> +.IR sizeof(struct\~pm_scan_arg) .

Yes.  This is portable _almost_ everywhere (certainly anyplace where
_Linux_ man pages are available), and it can prevent a lot of ugliness.

groff_man_style(7):

       \~        Adjustable non=E2=80=90breaking space.  Use this escape
                 sequence to prevent a break inside a short phrase or
                 between a numerical quantity and its corresponding
                 unit(s).

                        Before starting the motor,
                        set the output speed to\~1.
                        There are 1,024\~bytes in 1\~KiB.
                        CSTR\~#8 documents the B\~language.

                 \~ is a GNU extension also supported by Heirloom
                 Doctools troff 050915 (September 2005), mandoc 1.9.14
                 (2009=E2=80=9011=E2=80=9016), neatroff (commit 1c6ab0f6e, =
2016=E2=80=9009=E2=80=9013),
                 and Plan 9 from User Space troff (commit 93f8143600,
                 2022=E2=80=9008=E2=80=9012), but not by Solaris or Documen=
ter=E2=80=99s
                 Workbench troffs.

> > +.TP
> > +.B vec
> > +The address of
> > +.I page_region
> > +array for output.
> > +.PP
> > +.in +8n
>=20
> Ahh, this is great, because I needed to explain to groff(1)
> maintainers what is the problem with TP that I was complaining about
> in another thread.
>=20
> Branden, here's what I mean.

Good, yes.  I see what you're talking about.  We can now use
ioctl_pagemap_scan(2) as a site for our horrific medical experiments.
3:-)

I think this is an instance of the tricky little constraint problem
Michael Kerrisk and I discussed almost 3 years ago.

https://lore.kernel.org/linux-man/a79fc055-c7ab-1793-04eb-eb4f678e5035@gmai=
l.com/

In all that time, no flash of brilliance has yet illuminated a solution
(that wouldn't involve extending the man(7) language, like recognizing
an additional argument to TP or other paragraphing macros).

> If you're new to man(7), it is rather unintuitive what to do here.

Yes.  groff_man_style(7) attempts to offer advice here, in subsections
"Horizontal and vertical spacing" and as one of the FAQs in "Notes"
(".RS doesn't indent relative to my indented paragraph.").

That's more material than I care to quote to this list, so I will just
advise anyone who doesn't already have groff 1.23.0 installed to check
out pages 261 and 269 of
<https://www.gnu.org/software/groff/manual/groff-man-pages.pdf>.

> Muhammad, in this project, we usually use IP to continuate a TP.

More projects than this one use it for that purpose; when `IP` itself is
given no tag argument, it is idiomatic usage going back to 1979.

Regards,
Branden

--ipd2umre3os6g5ob
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU3MFsACgkQ0Z6cfXEm
bc6MUg/+O/5/uVnc5xoY1o7L6pU53hsxvxyWPxVc2X6fDtIhXZgt6JzYdkKXoUH1
MAYlluAuxklFS7QdsSgTl99FB2aoZtGdjnK6aitxffN1rxW9Yv6Dpv//9s09SJSf
UFvH+m1wiotwu5El3BVe7nf/nWZkgHtONNVSk/MNYTBi7kf/Y4e4rTW6ohKP1XAF
cN4qkegdhZOEjaXhu9yjd5HOnHRq17jStvVpPomdjwdwb1beiXYi36E2gc4cqlMC
iN9tXMoWFwOTdpSltylulZcqMh19eg3ViNynnxh94jCW4igDS6w8JIEwCZf5kHOW
RxdTqj26LAknxc6LZ8Zi0dAeDGdgG8/Kf9lhIZqx1Gj77NewUbs+85PkFAR57F9F
n+wt8NApmlXbVI31R9inGlrcnZ3SOFULwNsxDLNPbIjZFh66mTFiNUMpphF2U/Ax
DtzzllCL5EUUN1jq3BkSL8jM/1wtEGaY2uwE+r+LzMGJhctntBL11b2ZbrOrXKDM
sggmS8DkMGmmHmSQu4cpVoRmU33FlZ47YlsbYmWTWpfwR0aP6UjS9/PRXsaPRb8w
8Cs9WHQGW3u3rDvMBuYbR6fP9KFdg/FlOa+XpEKbdxX2+bechdR7PVTira8wYkhc
KfJY0TiESYyvvHw7cdLWWG7PlgM7Cow7TDc8PK9LUQyZheXgaAo=
=DZvo
-----END PGP SIGNATURE-----

--ipd2umre3os6g5ob--
