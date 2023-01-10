Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 302F4664E22
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 22:39:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbjAJVjf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 16:39:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230468AbjAJVje (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 16:39:34 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 576D8301
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 13:39:33 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id r6-20020a056830448600b006848a91d910so4225937otv.12
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 13:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0n0evmrlhLYc4Mm3i74MZOHQFYzqsq1bSbEaTZ5G/oc=;
        b=OPjMTL3Dq6y2JqRave6WkgZqMrQYtwVuZWB5LBrfAYLkfPjH+lfjtHVvdKjY2QNvlb
         eT5JfW6scpJwhty35NnMDRlNvZcMVUwGyZjRksTYOCNuXbW/wqykDtP+Ca7ge0fCKicW
         LNvDtMf9jspXmYu0R2e1aVTzYcaMgm0MY2kI4SH1zvTCVZf21yqSDgsnTqdfxxc0wrF3
         Atimk3M9O5mo4FTuxXMERlEwCyPSZFER0uq7s27LxMduKdQDJZMY+gWRiMwgyY+JQSQS
         7w75EoiXVunrkPDIAli6a7SLANDE1QiPWLBevdns+h+ltxC5FgtoPyNVbV1m+IyP8LuF
         ZfjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0n0evmrlhLYc4Mm3i74MZOHQFYzqsq1bSbEaTZ5G/oc=;
        b=thY0fkocisZskOyqqeqKxx//f3vqnzofWCdhIJUPzboxqmkaMQe4zRVSLuwEjGmdEl
         JOg65PhvD7pLgasjVufF75Uas42MyeAUF2umzbPR64l0Kv32YHE5if+GiYTS9yJB4+yf
         gGhDGm2xEimepjheeKhT40Ks8nz658A2otQxbPG9eDUD/sMSHf83uoCPKIuMnxEsM3g7
         SPK9b1715YR6ygA/i8OmxQfNYQkY7X8fD95+H4wLloByuJfvGELd/M3hp4BzqQFhOtCu
         ePuu0YIuQyIR0KzhZHdOg3la+aQlmhazLlYMIR3JCNYFDG303qYxc5ASpCGtOfRuNC2n
         sbZA==
X-Gm-Message-State: AFqh2kr+T+yJAFqmyqmaaKbaL0DLcUVr8wsgA/sn7tRmtpIieBWBoMRn
        7FaYk2vrDV1chkoHydT44ng=
X-Google-Smtp-Source: AMrXdXtJB+BGr8nnU6cpKr/a+xJKR53vNlKmTL2fM5B2m2f0vGMU4e2GnYq1UOzGl7BcnnpbBidNHg==
X-Received: by 2002:a05:6830:40c5:b0:670:9610:1ce4 with SMTP id h5-20020a05683040c500b0067096101ce4mr35466513otu.24.1673386772610;
        Tue, 10 Jan 2023 13:39:32 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 12-20020a9d080c000000b00683fb31ab76sm6810529oty.48.2023.01.10.13.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 13:39:32 -0800 (PST)
Date:   Tue, 10 Jan 2023 15:39:30 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        groff@gnu.org
Subject: Re: man page width limit and example indentation (was: rseq(2) man
 page)
Message-ID: <20230110213930.qrp6fdyxl34jns5t@illithid>
References: <095c479b-baed-9d11-08a1-e698f59763d9@efficios.com>
 <425ddf00-24a1-bf02-29f1-937ba1545020@gmail.com>
 <71b43f20-5d6d-f3f8-b3cd-786dfbc8d34d@gmail.com>
 <c8cb6136-6924-4fae-f4bb-981dec2e1952@efficios.com>
 <71e6728d-c2a8-e646-5c6c-2de8dfa982cc@gmail.com>
 <20230110190311.fk3outm4x2ojl4dm@illithid>
 <b9ab937e-9aa4-59e3-f176-2737f41c6451@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zpobux4ajzlwswso"
Content-Disposition: inline
In-Reply-To: <b9ab937e-9aa4-59e3-f176-2737f41c6451@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zpobux4ajzlwswso
Content-Type: multipart/mixed; boundary="7ccdzivch6nkqwwo"
Content-Disposition: inline


--7ccdzivch6nkqwwo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-10T21:29:39+0100, Alejandro Colomar wrote:
> On 1/10/23 20:03, G. Branden Robinson wrote:
> > (My former advice was 78 columns; I am revising that advice in a
> > more conservative direction having dug more deeply into tbl(1)
> > behavior.)
>=20
> The terminal is 80 cols,

Not necessarily; it could be much wider.  The point I'm making is that
thanks to tbl(1) bugs, composing your table for within what you _think_
is 80 columns might cause it to overrun anyway.

> so I expect that setting a hard limit of 80 to the output should be
> fin, right?

No.  I would stay at 78n or even go down to 77 or 76 if you wanted to be
really paranoid.  But you kind of have to work at it to get to the 77
case, and the 76 is because of something I think I might do for groff
1.23.  But I'm not sure yet.

> tbl man2/perf_event_open.2 \
> | eqn -Tutf8  \
> | troff -man -t -M ./etc/groff/tmac -m checkstyle -rCHECKSTYLE=3D3 -ww -T=
utf8
> -rLL=3D78n  \
> | grotty -c  \
> | col -b -p -x  \
> | (! grep -n '.\{80\}.' | sed 's,^,man2/perf_event_open.2:,' >&2)
>=20
>=20
> Or do you think that I should change that rule?  In the end, that grep on=
ly
> tests what users will see.  It can't measure anything else.

That's an excellent approach.  If all your man pages stay within the
80-column limit under that test, then you're fine--don't change a thing.

> If you think I can add any other test, please suggest it, because I'm
> not sure I understand it.

My lengthy exploration of the issues is because I am more the kind of
paranoid person who likes Ada and Haskell than the sort who slouches off
the end of a `switch` statement without defining a `default` case
because I'm sure I handled every scenario and if I didn't it's not
important anyway.  :-P

> As for your example, I put it in an actual man page (added TH and SH),
> and removed ll, and it still showed weird no matter what the terminal
> width was, so I don't really understand it.  However, it shows badly,
> so I hope whatever the issue is, you fix it for 1.24 :)

Well, some of it, I'm still trying to fix for 1.23.  I _still_ have not
heard back from Bertrand.  It's been two weeks.  I need to start
considering begging Werner to come out of retirement just long enough to
tag and push some tar archives.  :-O

> > Practical Advice for Man Page Authors
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > A.  The 80-column limit on output line length for terminals is "safe" if
> >      tbl(1) is not used.
>=20
> If it is used, it is also the only limit that makes sense, isn't it?
> Please show some actual manual page with which I can reproduce a bug
> when the terminal isn't wide enough.

Okay.  Is a mocked-up manual page good enough?  I'm attaching one.

> > > For code examples we use .in +4n rather than .RS.  I don't remember
> > > the exact reason, but it had some glitches in some cases.
> >=20
> > There were no glitches that I recall, but Michael wanted the man(7)
> > source to be in a form where examples could be moved freely between
> > various contexts without needing any internal alteration.  The
> > discussion was in November 2020.  The following message and his reply
> > capture the boundaries of the problem.
> >=20
> > https://lore.kernel.org/linux-man/20201113094755.bg6pl7g2s5h2w4mu@local=
host.localdomain/
>=20
> Ahh, thanks.  So yes, there was a glitch: RS forced a blank line, which m=
ay
> not be desirable in all cases.

Er, I don't think that's true.  `RS` forces a _break_, but not vertical
space ("blank line(s)").  I've added a demonstration to the attached man
page.

If you can point me to what you're referring to, maybe I can clarify.

> Fun thing: My dad talked to me about ChatGPT a couple of weeks ago (I
> had never heard of it).  We tried it with some code; I showed a
> function I had written, and asked it to review it.  ChatGPT proposed
> an alternative implementation, but it introduced two bugs.  :P

Wow, it really is as good as the average programmer at a tech company!

Regards,
Branden

--7ccdzivch6nkqwwo
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="wide-table.man"
Content-Transfer-Encoding: quoted-printable

=2Ede RULER=0A.ti 0 \" NEVER do this in a man page.  EVER.=0A12345678901234=
567890123456789012345678901234567890123456789012345678901234567890=0A.fi=0A=
=2E.=0A.TH foo 1 2023-01-10 "groff test suite"=0A.SH Name=0Afoo \- frobnica=
te a bar=0A.SH Description=0AThe table is indented by 7n,=0Aso I should be =
able to make my table 73 columns wide,=0Aright?=0A.RULER=0A.TS=0Atab(@);=0A=
| L L |.=0A.\" 40 a, 33 b=0Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@bbbbbb=
bbbbbbbbbbbbbbbbbbbbbbbbbbb=0A.TE=0A.PP=0AOkay,=0Aminus 3 character cells f=
or the inter-column gap.=0A70 columns,=0Ahere we come!=0A.TS=0Atab(@);=0A| =
L L |.=0A.\" 35 a, 35 b=0Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@bbbbbbbbbbbbb=
bbbbbbbbbbbbbbbbbbbbbb=0A.TE=0A.PP=0AOh noes!=0AWhat happened?=0A.I man=0As=
ucks,=0AI'm switching to Info!=0AOr Markdown!=0A.PP=0AOr just not writing d=
ocumentation at all!=0AFTW!=0A.PP=0AMore seriously,=0Aif we take out the ve=
rtical rules,=0Athe table will fit.=0A.TS=0Atab(@);=0AL L.=0A.\" 35 a, 35 b=
=0Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb=
=0A.TE=0A.RULER=0A.PP=0AThis issue also affects boxed tables.=0A.TS=0Abox t=
ab(@);=0AL L.=0Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@bbbbbbbbbbbbbbbbbbbbbbb=
bbbbbbbbbbbb=0A.TE=0A.PP=0AWe're too wide again.=0A.SH "The RS macro"=0APar=
agraph.=0A.RS=0AFirst indented region.=0A.RS=0ASecond indented region.=0A.R=
E=0ABack to the first.=0A.RE=0AAll done now.=0A
--7ccdzivch6nkqwwo--

--zpobux4ajzlwswso
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO92wsACgkQ0Z6cfXEm
bc5+NQ/9G/1shZ8wRq45KRP18YyXRfF0nNtCValtEOphHcXFXnSLtVe2+PFPbdzy
1Ch5Zx8n5LMsfIhnMxiVdDfd0EctT2mTAH6ZiATl9bpHAfn/vqTFcLmuskkdA33U
+2xpJxGDrqPbkG7llYHi/de5WLayA6I8zYKXj9b7GFOowbku8ue0ua47RS6B2693
zxJ4kJRwVFxpgEa/XSwZd5dNogXAYKQ05mn/gOWBM3AWPVHPdkWwSe7ysYxvhGOt
ZPoneCeV0otjLJkDoMpqlQF6ZeiS/guScavhAjL8uVkJowKziRXb9H7UBgiUJCEg
dIsGCWgxQygc/8tfB6+XEo6QBOGlWVCJI5+FTsf7/AVGM5VgqIVZRay3vU8vaItW
sqiBBsph4eNB/KPqGhy81EtDS61AMsEPFRhqTnMNIo3IP2RO2fk0e4ij69d+VNSs
sjWvdZ3Ccl8BTjvxALlxkxK2RDcAB11SteP/OPiVTHJaGF1umS0ftRDnVlkLwbBT
EX4F8A5gyRINnLSDnHAsMASvUp1IOB+i4RX54d0EnN6DJKdzX+1A/cArfxiRj8jl
Ro8XTAVQK455T0eC8HywJVSZ7TPjejEBgN0/MswKHP5VSGNfQ8VwdHWi0jNEv9Wd
NUyjx0YKDglO684ZIlVHtxEuWZnSN/bGxlbBEXzSm8gpkbi90ng=
=R2jk
-----END PGP SIGNATURE-----

--zpobux4ajzlwswso--
