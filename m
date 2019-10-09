Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A46A7D0974
	for <lists+linux-man@lfdr.de>; Wed,  9 Oct 2019 10:18:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725776AbfJIISl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Oct 2019 04:18:41 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:42711 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726765AbfJIISl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Oct 2019 04:18:41 -0400
Received: by mail-pg1-f195.google.com with SMTP id z12so912054pgp.9;
        Wed, 09 Oct 2019 01:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QpAyimoASf/ySZNb9gSEKfdKcZEXPK7su5sGdAVCoO8=;
        b=XrNJ+DdAH9P1JBeU1vRmJaFaoLTz9sLQDr6mIIrydIWD5G0xo9cAMywvwM/j4thHAO
         rM7Nj12+k8bmh4EOfebZ3IC3Xvgh/qS/gChkHYZLg62E9Q1ZMKz28oco6Nkop+b9N6sO
         yPpFtJx0Kuf9BNZ6otV2IBRZG79MtKBENvdzwWdIgas3P3UX7XyCIy/0Wej+IR4Yf2+E
         u0NbIAB9eZMUV+9eYLhpKIOp97nES5hgOGqZcLiiolSBI8rfbm3bavYEqc+2Zjym8C/s
         OVZRt3ny41FZOUX7LFHV6oxbaLlMgCbgsNRqlJXjGwe4eLU9ZN/g/Epni0DT9rajNj+B
         YIgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QpAyimoASf/ySZNb9gSEKfdKcZEXPK7su5sGdAVCoO8=;
        b=g9jfq7meaptLlEZeU6V1v2FwVwcfAdYaIuczwjbcO5PjQBf1CjA2wZTv7KJGkVo923
         vqSdgcFxSNJGc4YzoHmDEWLk6PvyfoIn+4ODps0A2A5jfa8JJluBEnZy6oUe9zQBzoVd
         JHVO4J6xdh3xO3hk+PGScyJNUBAEzsCxP8wywxsjAmzfV7TP5+FKeqvS1rb0+h5CRN39
         N8kBR2MaZ+5SNMabY8/gONNeh9nF47eXxK8jvlY1k/2VLC22qIcgrQjPnUxDmYCEsRsG
         DFNaMXITrtsoRfsU+PZldCrO0W5PBNn8fS+if6QFRBHXnQS5dlXN8zb3B46oURJRDYIl
         2rMw==
X-Gm-Message-State: APjAAAVet7ikKl4uOfVBxkEiQuTahTEx4xRXVeazEYB1yvsrJQ8136uw
        v2E6wvpfz0pwNrVfimGbEZA=
X-Google-Smtp-Source: APXvYqxCoYJ8GAdWpUZQXwykKiy+cFpHjK1ZkFdBliLUNjI2OMIWyCS+GtTZb7w9xGkMqkzJMTLWOQ==
X-Received: by 2002:aa7:8dd4:: with SMTP id j20mr2480490pfr.36.1570609120311;
        Wed, 09 Oct 2019 01:18:40 -0700 (PDT)
Received: from localhost.localdomain ([1.129.226.199])
        by smtp.gmail.com with ESMTPSA id b18sm1661374pfi.157.2019.10.09.01.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 01:18:39 -0700 (PDT)
Date:   Wed, 9 Oct 2019 19:18:30 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Philipp Wendler <ml@philippwendler.de>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        "Serge E. Hallyn" <serge@hallyn.com>,
        Christian Brauner <christian@brauner.io>,
        Aleksa Sarai <asarai@suse.de>,
        Reid Priedhorsky <reidpr@lanl.gov>,
        Andy Lutomirski <luto@amacapital.net>,
        Yang Bo <rslovers@yandex.com>, Jakub Wilk <jwilk@jwilk.net>,
        Joseph Sible <josephcsible@gmail.com>,
        Al Viro <viro@ftp.linux.org.uk>, werner@almesberger.net,
        linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        =?utf-8?B?U3TDqXBoYW5l?= Graber <stgraber@ubuntu.com>
Subject: Re: For review: rewritten pivot_root(2) manual page
Message-ID: <20191009081811.u4p3bd3bqvppgvcf@localhost.localdomain>
References: <620c691a-065e-b894-4f06-7453012bc8d3@gmail.com>
 <d449305b-f87c-f26e-e43f-d193fd8f4332@philippwendler.de>
 <e51e454c-b0e7-e5d1-7810-e8f023574aa2@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wjvmnzdal332aq42"
Content-Disposition: inline
In-Reply-To: <e51e454c-b0e7-e5d1-7810-e8f023574aa2@gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wjvmnzdal332aq42
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2019-10-09T09:41:34+0200, Michael Kerrisk (man-pages) wrote:
> I'm not sure. Some people have a bit of trouble to wrap their head
> around the pivot_root(".", ".") idea. (I possibly am one of them.)
> I'd be quite keen to hear other opinions on this. Unfortunately,
> few people have commented on this manual page rewrite.

pivot_root(".", ".") seems as ineffable to me as chdir(".").

Meaning mostly, but not completely.

I have an external drive with a USB cable that's a little dodgy.  If it
moves around a bit the external drive gets auto-unmounted, and then
remounted in the same place, so I can experience the otherwise-baffling
shell experience of:

[disconnect/reconnect happens; the device is mounted again now]
$ ls .
Input/output error
$ cd .
$ ls .
[perfectly fine listing]

What's happened is that the meaning of "." has subtly changed in a way
that I suppose would never have been seen back in Version 7 Unix days.
Maybe I've been reading too much historical documentation (I'm currently
enjoying McKusick et al.'s _Design and Implementation of the 4.4BSD
Operations System_), but the way we describe and teach Unixlike systems
in operating systems classes and, more to the point, in our man pages I
think continues to be strongly informed by the invariants we learned in
our youth, and which are slowly but steadily being invalidated.

Concretely, I recommend having pivot_root(".", ".") in the man page as
an example, but perhaps as an alternate.  Because it is
counterintuitive (to some minds), it's worth spending some time to
explain it.  But I would offer it because it's a valid use of the system
call and because it makes sense to a domain expert (Eric Biedermann).

I would try to offer an explanation myself but I lack the understanding.
_If_ I'm following the discussion correctly, which I doubt, then what I
imagine to happen is that a sequence point occurs between the function
parameters, and "." changes its meaning as with my "cd ." example above.
I am probably reasoning by analogy, and perhaps not by a good one.

Also, it is okay if the language of this page continues to evolve over
time.  I appreciate your desire to get it "perfect" (or at least to some
local optimum) now since you're most of the way through an overhaul of
it, but it is not just the system that changes with time--the audience
does too.

Maybe in 5 or 10 years, the kids will be au fait with pivot_root(".",
".") and only some graybeards will continue to think of it as a bit
strange.

Regards,
Branden

--wjvmnzdal332aq42
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl2dl9QACgkQ0Z6cfXEm
bc6iQw//Wj9DRlvFekN/bWAFUHQFeVgm41LiCTNACrM37qSpuUf6oBcodnylh7XX
VYfDss1uVUNWNPPaYfX+QCIaKVOdGFhnEcRcRtNFmEObnNJ8EsA5JbfLQ1/n+DCq
80UZjCZJNVQC9FK+Oy9VfByJA29hEhDP+sn7DyS7t6mdJmue9Edc9cBdT7TYq9We
uCrUBhk/yF2hmjyIsMPJxwNG7gHVkKoasVwwXDEZhsT0Y5EOZ/ZmG1HMaEEXu3tw
JCpK+vfuweMzoBRgq/wxmZpPTTvdPuwFf1CIBsyPpn5pY1d+1khQAbzmCwCIlRHc
XYf31M/5ajh7y1Ksbg2YDffVck4l+Z4kYHVySkEWEtZYOtHLNXxnAI1k9c3mXSFF
ebtezKXzFE35peNirzf9ev7hHDfDiL5szNKWvvLfCR4xTknR7nIQpq5J3BV+6l+D
nFZ/4l8iLYcEMBUorfNZSaCWfm97XY2eBHwjQeWa/bDnLG/r2lpK6Eby5Ne6Az/s
uOeBCgmgS7gK8r7Tc6DrsA0Ttk5FInLGXLcl9gm4niUKVle0+blMqGw3O3ZD6s+2
3uqw7cB4ojF9qUqG7l8CoCS2Lh5EE1eARGV7Qx/QUR72GmxcSJEqMYz6cxTIzpR7
JBRbZKpE526rNq0mbMJQJFqd9guJGRn8OXMBZMf6vJ2goEJLxro=
=agT8
-----END PGP SIGNATURE-----

--wjvmnzdal332aq42--
