Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93B813DAE9F
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 00:01:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234122AbhG2WBm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 18:01:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234107AbhG2WBm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 18:01:42 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB29CC061765;
        Thu, 29 Jul 2021 15:01:38 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id m10-20020a17090a34cab0290176b52c60ddso11521855pjf.4;
        Thu, 29 Jul 2021 15:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=G7IzZslmA118MFcScvf6yYPBrs6UuXOCa4NAljF0kc4=;
        b=glEGFySN2OBBRtbbPsBsgcpCztB/gzXfomLDxG8UPPbR/4bkw2yfrui68S1ycvu1WS
         b3/ust4Ar31th7VSxIKsL68jJCGYgVflGp0zqoIXQY6Qin63xKleT1LfHttuLG6RPUUw
         QIv3EU53WJpSreKqfKbLLKM1P39omR0IHgMhQA4uDdeBXTLh8n+kFbijBiRCCK+QW5ql
         6T4Ys8UP7NlfwqHZWId2iFhlWImyPEeFi/bpYVeP4T0Uomfjnvw+prMqPtp0Vakm4bgr
         6vzfPDIyECUUAHomlOpmfCTimX/0DU7upwicbR8SxecmVGd/hSA/0OBYVcpBJi8uFq9L
         n3aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=G7IzZslmA118MFcScvf6yYPBrs6UuXOCa4NAljF0kc4=;
        b=pswjzYCoaiEAMrdigmbCyfqQaXhzGJ/ax7GxEhY9JbK/vToV3nk044zZTuDIWwkQ8+
         9D+1G9E2ER71natp9wwjvnoSGr1T9mZzItcDYic79xNT5Yu8+EAeNDmoe4E3bV2itamz
         6skkZWouZ7CsvKrFirXqOQ3Vy8SVzuLHnZvg8Dbt/17eL/wj0EeI1gRi6iCu10kAt3YM
         OHtPzFEZRW/zWBXFwlYZjsdOBQ1ZFhO53C/Qq3mbJi1LK+Wzc+s5xFt77SIzc7zUqpAX
         5FfX2FLS4o8R1gFqYFucmRWeOu0KmPaLA3BlrEWdBYLillAsaUAWQZzOBl6OD329hHwn
         47yw==
X-Gm-Message-State: AOAM532rxlQT7cReqYe6x36UoCWIo3M1IhapiAkS73PYhz4wl/yCPRgj
        2guFYfyaGQH/XqpAi0vNvBA=
X-Google-Smtp-Source: ABdhPJxpRZYrifihnzWcM+QHEgynAoAUn/C5C2ftscKZmlImXL61pmWpLhQIVB1F57glTzcRJvO47g==
X-Received: by 2002:a17:902:9f88:b029:12c:c06:2645 with SMTP id g8-20020a1709029f88b029012c0c062645mr6420768plq.21.1627596098422;
        Thu, 29 Jul 2021 15:01:38 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id a18sm4595144pfi.6.2021.07.29.15.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 15:01:37 -0700 (PDT)
Date:   Fri, 30 Jul 2021 08:01:31 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
        Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 1/4] landlock.7: Add a new page to introduce Landlock
Message-ID: <20210729220129.ymfdnybbpvej4qck@localhost.localdomain>
References: <20210712155745.831580-1-mic@digikod.net>
 <20210712155745.831580-2-mic@digikod.net>
 <3f1b943b-2477-2c4e-c835-d6616888176c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zsrbbanbf4dzahm3"
Content-Disposition: inline
In-Reply-To: <3f1b943b-2477-2c4e-c835-d6616888176c@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zsrbbanbf4dzahm3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

[regrets for the huge CC--those not interested in English/linux-man
style issues can skip this]

At 2021-07-29T16:56:37+0200, Alejandro Colomar (man-pages) wrote:
> On 7/12/21 5:57 PM, Micka=EBl Sala=FCn wrote:
> > +For instance, one process's thread may apply Landlock rules to itself,
>=20
> s/process's/process'/

Many English language authorities would disagree with you, but I'll skip
digging up citations to them because the Linux man-pages project's
practice is already firmly in the other direction.

$ git grep "s's\>" | wc -l
322

Moreover, "process's" is extensively attested as most of those...

$ git grep "process's" | wc -l
320

=2E..and a global change in the opposite direction from your
recommendation is credited to mtk in the Changes.old file.

$ grep -B2 "process' " Changes.old |head -n 3
A few files
    mtk
        s/process' /process's/

Finding examples of the opposite practice is complicated by the use of
apostrophes as single quotes (these usually _aren't_ confounded by code
examples, however, since it would be incorrect C language syntax to
quote a string literal with them).  There are many such occurrences in
Changes.old; I'll skip them.  The remainder are few enough that I'll
quote them here.

$ git grep -E "s'(\s|$)" man*
man2/adjtimex.2:Linux uses David L.\& Mills' clock adjustment algorithm (se=
e RFC\ 5905).
man2/move_pages.2:.\" FIXME Describe the result if pointers in the 'pages' =
array are
man2/utimensat.2:.\" given a 'times' array in which both tv_nsec fields are=
 UTIME_NOW, which
man2/utimensat.2:.\" provides equivalent functionality to specifying 'times=
' as NULL, the
man3/getaddrinfo.3:.\" 2008-02-26, mtk; clarify discussion of NULL 'hints' =
argument; other
man3/printf.3:thousands' grouping character is used.
man3/printf.3:the output is to be grouped with thousands' grouping characte=
rs
man3/printf.3:.\" no thousands' separator, no NaN or infinity, no "%m$" and=
 "*m$".
man3/scanf.3:This specifies that the input number may include thousands'
man3/xdr.3:the array elements' C form, and their external
man3/xdr.3:the array elements' C form, and their external
man5/elf.5:The array element is unused and the other members' values are un=
defined.
man5/proc.5:under the default overcommit 'guess' mode (i.e., 0 in
man5/proc.5:because other nodes' memory may be free,
man7/bootparam.7:The Linux kernel accepts certain 'command-line options' or=
 'boot time
man7/bootparam.7:parameters' at the moment it is started.
man7/bootparam.7:The option 'reboot=3Dbios' will
man7/bootparam.7:A SCSI device can have a number of 'subdevices' contained =
within
man7/hier.7:Users' mailboxes.
man7/mount_namespaces.7:the root directory under several users' home direct=
ories.
man7/uri.7:schemes; see those tools' documentation for information on those=
 schemes.
man7/uri.7:detects the users' environment (e.g., text or graphics,
man8/ld.so.8:and do not apply to those objects' children,

Of the above,

1. most are correct uses of the English plural possessive ("nodes'");
2. a few occur in comments, where they're fine if present as
   commentary--if they're "commented out" chunks of man page source,
   they should follow man page formatting rules in the event they
   require "resurrection";
3. we see some uses of apostrophes as quotation marks; and
4. David L. Mills's name is marked as a plural possessive.  The
   application of apostrophe+s to singular proper names ending in "s" is
   a debated issue, and there is probably some room for personal
   preference on the part of the bearer of the name.

Two side issues:

A. Regarding point 3, I'd say this illustrates advantages of using
special character escape sequences like \[lq] and \[rq] for quotation.
First, you will get paired quotation marks in UTF-8, PDF, and HTML
output.  Second, you won't encounter false positives in searches like
the above.  Third, you semantically enrich the content.  On the
downside, adopting special character escapes would likely mean having to
choose between U.S. and U.K. quotation styles[1].

B. Regarding another active thread we're in, I observe

man2/adjtimex.2:Linux uses David L.\& Mills' clock adjustment algorithm (se=
e RFC\ 5905).

as another case where \~ recommends itself over "\ "; this isn't even a
code example, and it illustrates the desirability of decoupling
non-breaking from participation in space adjustment.

Popping the stack, have I persuaded you on the plural possessive front?
:)

Best regards,
Branden

[1] https://man7.org/linux/man-pages/man7/groff_char.7.html (search for
    "the apostrophe")

--zsrbbanbf4dzahm3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEDJTEACgkQ0Z6cfXEm
bc6Zyw//WgUu23zxMMBNirfowQgJF1JyjYmdTjF7XgmjUXjcwu1NZrXyqx4R3jxh
u/9FXRuUoo/zBfl/OxOic4hy6W8jzBKSsHUGO1jZQ8BPV/JnXjdIjoTw6QevbQhr
1F/rPc42X3pExyEn8cByZY6BcIPTAdKjmvFjaMZ1845iGvYdJQXuYnisfeMXQH0A
mukuAldSdQM8y+EONDe1sUy5u/qiF1lqQCHo2UgG6XGW0NsOzwgzi8LCYZ4zgADK
GT5EPc/Ah61OUZQRoR4ShXpqgUIeqjreBNAYvOW6R8Kovxm5HC4TtP/cPaIvqOoC
n0BGxTm8vXV3/1LlNM+iDtwmwcAxyUKOsolkCEJ8EwpJFFpfqkWaEO3kLfnQ8DBm
lrLaQtLDBWyFFeNs9i4boKfXRCbrADNRemA0UJmoBENtTxi6c/Iky8inPrJgbo73
dIQZfBS5MM/WFg9Ss1/Ocr8dOHs8N8GgrRGhRBDwuGWPs1ET2qg992JbOiv7TyBA
ldngIV+D4oCpBEZpJeFmilizs2JwATGJwL6Cq2zl74N8KGK2YpZ59e17fm6VjpIi
LOMkl3tbrYqpZgFQtHvyEKNqZZYBH/NoLCXlpOQo9vk+/c9ELLBzI4FcnfIqtzLy
NilzxhjxcyN7fgp1FF3yP+5dy94KYxsnBBuD3/vAV3CFhLFGyAY=
=MWQH
-----END PGP SIGNATURE-----

--zsrbbanbf4dzahm3--
