Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 55F379BAC7
	for <lists+linux-man@lfdr.de>; Sat, 24 Aug 2019 03:54:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbfHXByE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Aug 2019 21:54:04 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:36048 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725283AbfHXByD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Aug 2019 21:54:03 -0400
Received: by mail-pf1-f193.google.com with SMTP id w2so7708906pfi.3
        for <linux-man@vger.kernel.org>; Fri, 23 Aug 2019 18:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yNDYWNzV/HeJb8DM8R7X7TSafFsfXG5ZdkAi+D336wQ=;
        b=JVpq7kGxmH+ILKSCgRzdTIQhTsTGs8WTD3RCtRrKfro5J76bpPPqZSWbjkEvnft1rE
         gSrumGaoJmv3HNX7P7xUex+xao9w5kC9bonePugoRlm+UC/k1eVrdBKyzfFPKX5ssuyc
         K268oR0WskuCrhv65kK1IRmcdI/iPysEOSyVVn0pLnk93vTL8gBuZAEXDfAcDOMy7IMv
         8Jb9mz7I7LT2liSj3xmaO4lHd7pdEZ3W9KXnpHeo3JGUe3DbZpi/0O1kcOioaeTl+2X4
         hL4RVFKgzx0YS8WN0T/Gn2BRzfucaLSPA9PPEEQk5gvio5HEb0WD/C6WnG6+Oz2eBSex
         /u6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yNDYWNzV/HeJb8DM8R7X7TSafFsfXG5ZdkAi+D336wQ=;
        b=DAQ1Qox7+u3JDeSvCKkrp76hV1xlr5qMy508yW4yXssRiZkfYUwTyuZ4T69nqp2XC5
         /EdY3A90TuLEph6MsB3H1uOv7y2Bba3nj3LiVofj15gErrhQmtA4O7LwHt2ML6u1Msi/
         mFy8uUYnJznocI8Ui6wNoujUT02dBD0KN5l0Kms+Ha0M+VPq7xEX0s2kOLUsk+b8eE+/
         yPanwL5noO00q4s2GP4G9Ep5ie6nckOHnA7e1HxddADIYJT9DaVYvZfGs4hAR6LkoEKK
         U6RoCj+6ycovd5hoHzw9oUJY814aE36yoe8l2/gDsV75NRdlN+j9XpVhhD40NhajhjW1
         jgVA==
X-Gm-Message-State: APjAAAX9bkCOghCKIpusNkeKz7v/e4OtJCnWOG5y1Lmw0BL2tGLRkEfa
        WNy+XWYOtwf21ac4PUiw1F0=
X-Google-Smtp-Source: APXvYqzbMAuuxo+a5k6iI5hmUW8nLmAdr46YGzKksR2W/EIMtZ9hh6fy0zVEV00yL3PntoUzCq/zaA==
X-Received: by 2002:a17:90a:3b4f:: with SMTP id t15mr8452944pjf.45.1566611642688;
        Fri, 23 Aug 2019 18:54:02 -0700 (PDT)
Received: from localhost.localdomain ([1.144.175.47])
        by smtp.gmail.com with ESMTPSA id br18sm3974031pjb.20.2019.08.23.18.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 18:54:02 -0700 (PDT)
Date:   Sat, 24 Aug 2019 11:53:55 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Don Brace <don.brace@microsemi.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Kevin.Barnett@microchip.com, scott.teel@microchip.com,
        Justin.Lindley@microchip.com, scott.benesh@microchip.com,
        bader.alisaleh@microchip.com, gerry.morong@microchip.com,
        mahesh.rajashekhara@microchip.com
Subject: Re: [PATCH V2 6/6] smartpqi: correct lockup action table
Message-ID: <20190824015353.owabg7ato6zbxcdf@localhost.localdomain>
References: <156658004701.6969.3969396310784177369.stgit@brunhilda>
 <156658019169.6969.9703957231113751364.stgit@brunhilda>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="uikfwkodwdfaeor7"
Content-Disposition: inline
In-Reply-To: <156658019169.6969.9703957231113751364.stgit@brunhilda>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--uikfwkodwdfaeor7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Don,

As noted in my previous message, I suspect this entire segment (6/6) of
the patch is rendered unnecessary if you revert the introduction of the
=2ETP tagged paragraph macro immediately prior to the .TS table start
macro in segement 3/6.

Also, it's generally better style-wise (in my opinion!) to use tbl(1) to
achieve columnated output in man pages, rather than trying to use tab
stops for this purpose.  I suspect Mr. Kerrisk agrees; while there's no
formal guidance regarding this in man-pages(7), I find 722 lines
matching '^\.TS' in man-pages git HEAD, and only 10 matching
'^\.ta'--and all of those are in timezone-related pages[1], so they
perhaps came in together as part of some sort of import.

This is true even if all tbl(1) ends up doing is setting up tab stops
for you!  It is valuable to preserve the semantic content that tbl
macros give us.  Recognition of the distinction between semantic
markup and presentational markup has been hard-won in the decades since
the classic Unix toolkit was designed.

Finally, in man-pages project parlance, the change below, to convert
=66rom a tbl-preprocessed table to a hand-crafted one using low-level roff
tab requests and literal tab characters, would probably be characterized
as a "srcfix" if there is no visible change to the page as rendered, and
"ffix" if there is[2].

Regards,
Branden

[1] for the curious: tzfile(5), zdump(8), and zic(8)
[2] https://www.kernel.org/doc/man-pages/patches.html ; see "For trivial
    patches..."

At 2019-08-23T12:09:51-0500, Don Brace wrote:
> Reviewed-by: Matt Perricone <matt.perricone@microsemi.com>
> Reviewed-by: Scott Benesh <scott.benesh@microsemi.com>
> Signed-off-by: Don Brace <don.brace@microsemi.com>
> ---
>  man4/smartpqi.4 |   10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 6e2cd1328..43e1d1cb2 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -84,15 +84,15 @@ Specifies the action the driver takes when a controll=
er
>  lockup is detected.
>  The default action is
>  .BR none .
> -.TP
> -.TS
> -l l
> ----
> -l l.
> +.nf
> +.ta 10n +10n
> +
>  parameter	action
> +---------	----------------------------
>  \fBnone\fP	take controller offline only
>  \fBreboot\fP	reboot the system
>  \fBpanic\fP	panic the system
> +.fi
>  .TP
>  .BR expose_ld_first=3D { 0 | 1 }
>  This option enables support for exposing logical devices to OS before ph=
ysical devices.
>=20

--uikfwkodwdfaeor7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl1gmKAACgkQ0Z6cfXEm
bc7elxAAqRH7wq5ek1dKFb/ID+J32gX1TOIvFplnrexYivOriSigD8W3m9LL4gCd
L3d/g7/gL4bL/JUZOe2T2AFojW6Tx3uHzY1ZT1Gj5I2athUyJ6UebYk77E0BwlFj
FwTHa+RtBUhCEtx8QEdHHrIx3F6mDmLJJzVVoMxmJX5N7mqXBjlP5N6caMEhEftG
eO9qmQFo52ASGwtc1yP/XEg8UTiTumU5CDm5TtYCDtwwz7/+wIXXzTlk09pDKOye
j/hnUJ/uikV32j4uqOYiBYzG2S9AWnqmfHYM5pmYD6EHk03zvfJvz2WEC0X40zYd
D2uKDDTtx6wz64XbLlVx3i9cpnnRefZSkEVFEcCQIplbiU5Nz55xIwYjsaXN2HpZ
Vtq2B/C+6lNLRXDcgdtCsuHUldzoCGdvTE+VyhV+bYNmTgtCJouLcUK7HUyXYe9N
8Cg0YB8vqNBFSawBSSJnWHHIE6TT69OVDbSZlbDQmdZzz09PruDwo0XhrFqJctWV
kJJF6ShXWhKLxy9GhzngJIExoZ2oYJI18ls66YnV+ws11FJMDaQKWFNSoRV5xEUq
lT4q4l5AHU3I9odikMaXev7u0ATco58jp1zVvU/ZmIDCa1p+0FHb6H0IjXuJSaqC
1RBL+fpRohOJVKIeyufJ27Rvv1TU1IGdS4rfD1loAHHXdxS/8RE=
=7kIH
-----END PGP SIGNATURE-----

--uikfwkodwdfaeor7--
