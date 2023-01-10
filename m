Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FFF6664BE0
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 20:03:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235080AbjAJTDQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 14:03:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234191AbjAJTDP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 14:03:15 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C055FC4D
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 11:03:14 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id r130so10904201oih.2
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 11:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OxCCPrzM/f1LcxU7mNQBvn25bNxeu7lhJG5JCfuNHok=;
        b=GB5fbD9a66tSPsqzLIzG0PP+A8TgPcxzlaUQBcCzgGovXNg2Omcb3yn+W92sftkfm+
         iB2uF3d9DSAijfR/YQRu5687Pn1cb2cKiTLe28CGSWnmEilnxCbhBaKWRECy6XwymgKm
         /8qE7nWiYT4vqeQUv4XBlJuKaac/kLVy8ZjdfanvYLHqx9iWsJgzo3MzAlxzC60OzjDz
         gcSyl7AumfsFaWjrVCcaabSbbx076C8F+Z5baHUG6W9HU3YlriCoDXu8eCjXlQYTnf6T
         wzOwoOw2b9d0O4GeHVtbsF4L9ng5y4mXb5DhAZnxY5S8IgigKCEq/HWmK19IByMQ3pqn
         3Cvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OxCCPrzM/f1LcxU7mNQBvn25bNxeu7lhJG5JCfuNHok=;
        b=VtWVEUL/aoFpztSJKjSVLymzXEU5zDu3YhK3SImlc/wtTT1paEr+K2BEQuKqqV7Ny+
         qWeC4MpE1VYn8pYNFLWHx6dQYhxzfgwzGvSdAtd0npTH31Cf6IcMXo9oqZkOW6qbpcn6
         bsZdOXGjnj/7UHdm/lwdlr+uYKKBlebK3tL3WDqNyG94F5FZCxEi0XTSh0Wph7kJBjBr
         T5RDAMiGtBwfQzbRWxsbRbgw3K+GMF6eYFyiNSpJNWHfRJmKPySnR0TPmLSOlWo0Fjmy
         vIICiJSGLf+M84h+OLW0Xk+RksKbQ7X2pQT2Ny6/0Xy5dboDNHlJzoN5v+PKdRQd0KA7
         DSdQ==
X-Gm-Message-State: AFqh2kq1ClZdGCB02mLbTH4eVkJCoHvLGvWbDAk1sqK6+Zzh1C/8WcD5
        +fVzl+995tIP/7Fd4VJZsu4=
X-Google-Smtp-Source: AMrXdXs+Q+QiXqyauTiX+37Nns7dq8d1PYndxs8B/TknnlSQwryfWZAhNoZSP16s+e4u+OCS7StL0w==
X-Received: by 2002:a05:6808:3a96:b0:363:996:549e with SMTP id fb22-20020a0568083a9600b003630996549emr30627883oib.55.1673377393534;
        Tue, 10 Jan 2023 11:03:13 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bg31-20020a056808179f00b00363b5a6bc9esm5727466oib.12.2023.01.10.11.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 11:03:13 -0800 (PST)
Date:   Tue, 10 Jan 2023 13:03:11 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        groff@gnu.org
Subject: man page width limit and example indentation (was: rseq(2) man page)
Message-ID: <20230110190311.fk3outm4x2ojl4dm@illithid>
References: <095c479b-baed-9d11-08a1-e698f59763d9@efficios.com>
 <425ddf00-24a1-bf02-29f1-937ba1545020@gmail.com>
 <71b43f20-5d6d-f3f8-b3cd-786dfbc8d34d@gmail.com>
 <c8cb6136-6924-4fae-f4bb-981dec2e1952@efficios.com>
 <71e6728d-c2a8-e646-5c6c-2de8dfa982cc@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="uc5xkdip3u7nhlte"
Content-Disposition: inline
In-Reply-To: <71e6728d-c2a8-e646-5c6c-2de8dfa982cc@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--uc5xkdip3u7nhlte
Content-Type: multipart/mixed; boundary="oix2mx6abnaflsgq"
Content-Disposition: inline


--oix2mx6abnaflsgq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[formatting issues; CC list trimmed, added groff@]

At 2023-01-06T23:57:35+0100, Alejandro Colomar wrote:
> On 1/6/23 21:57, Mathieu Desnoyers wrote:
> The line above goes beyond column 80 in formatted output.  That's a
> hard limit for manual pages.

The hard limit should be thought of as somewhat lower--as low as 76--in
pages that use tbl(1).  This is due to a groff design issue that goes
back 30 years.[1]  I will try to resolve it for groff 1.24 but it might
be the biggest challenge I've yet undertaken with the codebase.  It will
require a redesign of how tbl(1) gets information through to the
terminal output driver, grotty(1).

(My former advice was 78 columns; I am revising that advice in a more
conservative direction having dug more deeply into tbl(1) behavior.)

Here are the details.  Some readers will want to skip to the "Practical
Advice for Man Page Authors" heading below.

1.  When a table is "boxed", meaning it uses any of the "box",
    "doublebox", or "allbox" region options, 3 extra character cells
    consumed by the leading | character and a trailing space and | at
    the end of the table row.  tbl(1) sets up a warning to be emitted at
    formatting time if this happens.  (In its role as a preprocessor,
    tbl itself doesn't know what the line length of the output device
    will be.)

2.  When a table row uses a vertical rule (|) as a column descriptor,
    tbl(1) is designed such it considers the rule as taking up
    effectively no space.  And on typesetting devices, this is true for
    practical purposes.  On terminals, though, they eat an entire
    character cell, and this matters.

    a.  _Interior_ vertical rules, as with a format of "L | L | L.", are
        not a problem in practice because the columns of the table are
        already separated by 3n of space by default.  So what usually
        happens is that the middle space of the 3 gets
        replaced/overstruck with the "|" and the table formats happily
        without getting any wider and causing problems.

    b.  However the amount of inter-column space is both
        user-configurable--you can suffix any column descriptor with a
        number to change the column separation.  Also, the "expand"
        region option will _compress_ (reduce) the amount of
        inter-column space if it has to to fit the table within the
        available line length.  Fortunately, "expand" is not that
        popular a region option; it doesn't expand _columns_, but only
        the separation between them.  What people usually want is the
        "x" modifier on a column descriptor, as with "L L Lx.".

    c.  But this means that an inter-column space amount of 0 is in
        conflict with the presence of a vertical rule in that place (on
        terminal devices).  So, on terminals, the smallest practical
        spacing after any column that contains a vertical rule is not 0,
        but 1.

3.  Another issue is related to these and I may tackle it in parallel.
    It is not possible in terminal output to direct the inclusion or
    exclusion of space adjacent to vertical rules.  Presently, their
    handling is inconsistent; a leading vertical rule as a column
    classifier gets no space after it, but a trailing vertical rule as a
    column classifier _does_ get space _before_ it.[2]

4.  In preparing the attached exhibit of all the above weirdness, I
    noticed two further bugs.

    a.  I need to revisit my fix for Savannah #63449;[3] I'm still
        seeing unnecessary drawing of vertical rules 1v above the top of
        the table in circumstances where that isn't warranted (i.e.,
        there is no intersection with a horizontal rule).  More cases
        for the regression test.

    b.  The third exhibit (line 17) overruns the line length but doesn't
        produce a warning.

I think that's all I have on tables for now.  I've fixed 19 bugs in tbl
for groff 1.23, but it's not enough.  :-|

Practical Advice for Man Page Authors
=====================================

A.  The 80-column limit on output line length for terminals is "safe" if
    tbl(1) is not used.

B.  If tbl(1) _is_ used, you're still safe if you avoid:

    i.    using boxed tables ("allbox", "box", "doublebox");
    ii.   placing vertical rules at the left and right edges of tables
          (in a row description); and
    iii.  reducing the column separation to zero before a vertical rule
          (in a row description).

C.  If you've read this far and your table is still overrunning the
    line, you may need to reduce your table's width by up to 3 character
    cells.  Since the default column separation is 3n, any table with
    more than 2 columns is guaranteed to have enough total column
    separation for 3 character cells to be "borrowed" from two of the
    columns while still having at least 1n of separation.

D.  If even that doesn't work out, or you have a two-column table that
    is overrunning the line, you need to either:

    i.   recast the content of the table to shorten it; or
    ii.  use text blocks ("T{ T}") to house some of the table entries.

> For code examples we use .in +4n rather than .RS.  I don't remember
> the exact reason, but it had some glitches in some cases.

There were no glitches that I recall, but Michael wanted the man(7)
source to be in a form where examples could be moved freely between
various contexts without needing any internal alteration.  The
discussion was in November 2020.  The following message and his reply
capture the boundaries of the problem.

https://lore.kernel.org/linux-man/20201113094755.bg6pl7g2s5h2w4mu@localhost.localdomain/

There is a limit to Michael's solution, but if the Linux man pages don't
go bonkers with deeply nested regions, it's workable.  (If they do, then
migrating examples may need to be reformatted due to changes in the
available line length; the more you indent, the less there is.)

It would please me to come up with a way, possibly a groff man(7)
extension (smaller than most, like recognition of a second argument to
the `RS` macro), that would enable "purer" man(7) input without recourse
to troff requests.

...but it might not be worth it.  If you relocate an example from a
heavily-indented region to a less-indented one, you _gain_ some line
length, and this is not an error condition.  Abbreviations or
compromises you made in an example's formatting might no longer be
necessary, and only an engaged human brain will detect the fact that the
example can be recast to leverage the added line capacity.

I don't think ChatGPT is to up that sort of thing.  Yet.

Regards,
Branden

[1] https://savannah.gnu.org/bugs/index.php?62471
[2] https://savannah.gnu.org/bugs/index.php?61597
[3] https://savannah.gnu.org/bugs/index.php?63449

--oix2mx6abnaflsgq
Content-Type: text/troff; charset=us-ascii
Content-Disposition: attachment; filename="table64.roff"

.ll 64n
.nf
1234567890123456789012345678901234567890123456789012345678901234
.fi
.TS
L L L L L.
abandoning	babysitter	cablecasts	dachshunds	earmarkingX
.TE
.
.TS
| L L L L L.
abandoning	babysitter	cablecasts	dachshunds	earmarkingX
.TE
.
.TS
L L L L L |.
abandoning	babysitter	cablecasts	dachshunds	earmarkingX
.TE
.
.
.TS
| L L L L L |.
abandoning	babysitter	cablecasts	dachshunds	earmarkingX
.TE
.
.TS
doublebox;
L L L L L.
abandoning	babysitter	cablecasts	dachshunds	earmarkingX
.TE

--oix2mx6abnaflsgq--

--uc5xkdip3u7nhlte
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO9tlwACgkQ0Z6cfXEm
bc7BPBAAmjDIPowUPe5x1fyjsOMczAzWFlQtmfW+sBhFE7BzF4JB5Bx4YWXA5uo1
Fznfu7r8TuTUtZV0m4r9JCznHM3j4rFn36Vmn1uUU/k4N7tYFVg0q8tfgIrVIEoS
mTumWvnunv6vBdt1tpviVYKMU0OHWI2ybP/GUSu4NIoLWbnw9eSUCS1ylBrMHVnD
f61HpKr6Yo0yjH1+LPDD3eMR9+1ST7bFJAyClamZ/mWYUEENuXBqFLkYMDJVMAe+
GrSU+IjQ80musOuJtNtYVjgHBmfOL1W003DZErjPTjgnmoZEj+gegIBFpMaZRrom
XVltFS+tFLFywcF6LRQUCKjI16TXNIZTZNnTE2h3DPiO6OYSq5yikbZF3pjOBp50
WpN1xT2ip0ch1fdKMkz51Vuu3a/4H1BXWrFjmSjVPdng8eE3v3JsJYLYtGsU90bY
llW/WLApT37qgvAYfY7xd8U1xQ3A3ShiExRJ58duTSy/MF5EbL6vM3ozt4gTCNTi
SzcHTKj7OBZIaofdsTL6LKxfahGxyXLghYjrbkXj2gDNKb7/ybKDoo6+xgB273wJ
FWZYsiAYctUWggdPKYvvJ7zB4+BTc1ZegH69WItm2QzNwOr8fjyirRyaQFZ8dWEk
yI5Okg/l3MfmGje2AifderR6Jltn0RrsCBCPnNBveJAVFNXSXEQ=
=u7f/
-----END PGP SIGNATURE-----

--uc5xkdip3u7nhlte--
