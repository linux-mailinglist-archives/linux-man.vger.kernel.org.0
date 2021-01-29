Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E2A6308DBE
	for <lists+linux-man@lfdr.de>; Fri, 29 Jan 2021 20:52:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232902AbhA2TvX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jan 2021 14:51:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232867AbhA2TvE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jan 2021 14:51:04 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 112BEC06174A
        for <linux-man@vger.kernel.org>; Fri, 29 Jan 2021 11:50:24 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id h15so5842341pli.8
        for <linux-man@vger.kernel.org>; Fri, 29 Jan 2021 11:50:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OMfDzO3oB65Qp7aKjOu2CjIM6uuTkcWX+4dW07B0hdc=;
        b=CDK60rA37gdUQwL1ThdPaOHpUG8E6Khy6dinwXYcWZe7Ze4e6wh4qE32uKMErWp77z
         qgS8bULI6UDQDPEs4B2WMTdPIb93xiTi21/E2Qda3rW0Y1P3gosjlnErSYXTf7C8Gi0l
         7MFmJQCMCDG7Iq+eJHt3f/JkxWPl77sXbhkoNmzZPLUTVgBvkgVhyjfR1wM79/379/uy
         c0jbV1CRHgJNCuOE1vRHaThWxHV31VU98AbC4aKmQbDpwGsdYCsnvQQNRfA8tOveaixf
         Xj5XJSC68fyPgSRO0gCmW35B7olQjwsqBRYoDQQ8Bmlk9YQHUcDX8oz+gkR1y+IkUDWa
         bp/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OMfDzO3oB65Qp7aKjOu2CjIM6uuTkcWX+4dW07B0hdc=;
        b=JvcZtgyWO8A4TPQveJ9WWddXohmoOJaVFig2/0x3C9RMsRqfFtFeZT9XbYlyRSEDiK
         9mUfSa0PnKQNer8n75uhVoC/WgKlYbQaMbd57wlX1Y1wxLbS+Al9Q6VQN99nxi1YWZac
         gByrbjS+YftTsbX6Ydv80uhYOtFHhNRHJ3Xc3bgTrMJGMBEprT3EcAZYxdV0ZNyEtMk0
         jbxnrNXFHT52ecLS4CdeA1ZAfJnTy10E9SbFoo/3JKH/H6JjAR5ouObA9VSsQTVb8dlX
         o0dgNtwbrA/x2WgpZjEB1ndxCXY7cqfZwkshzWRsWkgBIZsv8bZk2IP0oiGdKbgD4T7i
         wUmQ==
X-Gm-Message-State: AOAM533l1aSQgJamLb0DM6HHOh80b9VT4A4FAIo1+3lq2wPB878LFPe1
        CJY7NvC+JMIKCikKW4nlRAU=
X-Google-Smtp-Source: ABdhPJzcct/tcQ92s8T8kfeFLDLvzzTJ5sMN5JfhZ9vuLOJ0N/tFOCGpGWo8qN6Oj6LDxG0sjZdhzw==
X-Received: by 2002:a17:90a:db50:: with SMTP id u16mr6182096pjx.39.1611949823575;
        Fri, 29 Jan 2021 11:50:23 -0800 (PST)
Received: from localhost.localdomain ([1.129.183.134])
        by smtp.gmail.com with ESMTPSA id 67sm9385493pfv.20.2021.01.29.11.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 11:50:22 -0800 (PST)
Date:   Sat, 30 Jan 2021 06:50:18 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: Formatting suggestion revisions
Message-ID: <20210129195017.q3cqq2euyodc6tch@localhost.localdomain>
References: <20210128205734.nhvua6ameelaomaw@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cctqc3ekjgtebvue"
Content-Disposition: inline
In-Reply-To: <20210128205734.nhvua6ameelaomaw@localhost.localdomain>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cctqc3ekjgtebvue
Content-Type: multipart/mixed; boundary="elzxv3mdjdtgdzsl"
Content-Disposition: inline


--elzxv3mdjdtgdzsl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Michael and Alex,

A bit of my narrative about adjustment was unclear, and a bit of it was
wrong.

At 2021-01-29T07:57:34+1100, G. Branden Robinson wrote:
> (1) In the groff man pages we do _not_ encourage wrapping tables with
> .na/.ad pairs.  (I do notice you said ".ad l/.ad" instead--I'll return
> to that.)  Quoting a commit to our tbl(1) man page from September[1]:
>=20
>   Stop advising people to use adjustment-altering requests to bracket
>   tables to cheaply set the alignment of text blocks ("T{", "T}") in
>   table entries.  This is bad advice for man pages (it was overriding
>   -dAD=3Dl to force full justification on after a table in groff_ms(7)).
>   Adjustment requests can be embedded inside text blocks anyway, and you
>   don't even have to remember to undo them.
>=20
> The problem with .na before a table, which is the more popular
> approach, and which you probably already discovered given that you're
> recommending ".ad l" instead, is that people who have found a way to
> force adjustment off already will be angry with man pages taking your

s/your/that/

> advice because "full" adjustment (to both margins) will spring to life
> after the table.

> People who _do_ like adjustment to both margins will also be angry
> with your man pages because ".ad l" configures the adjustment mode to
> be ragged-right, which means ".ad" afterwards is a no-op.

The above is false.  The .ad request aggrieves me badly because of the
non-orthogonal implementation of adjustment mode and its enablement.

=2Ead restores the previous adjustment mode, _unless_ that mode was left
adjustment (set by ".ad l"), in which case it starts adjusting at both
margins again.

My _advice_ is unaffected by these details; I think it is better to
advise man page authors to disable adjustment and hyphenation in tables
as needed on a per-text block basis.

On the portability front, it may also be worth noting that Heirloom
Doctools's man macros not only disable hyphenation and set left
adjustment, but delete requests so that these settings can't be altered
afterward.

Heirloom Doctools tbl also does not seem to correctly support the "x"
column modifier to expand the column until the line length is reached;
this seems to be a bug, as it's the only GNU tbl extension documented as
supported in its tbl(1) man page.  (I'm using version 191015.)

mandoc 1.14.1 forces left adjustment and disables hyphenation in all
circumstances, but _does_ correctly support "x" in tables.

I apologize for the error above.  I'm attaching another man page that
demonstrates the above behaviors.

Regards,
Branden

--elzxv3mdjdtgdzsl
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="man-table-demo.man"
Content-Transfer-Encoding: quoted-printable

'\" t=0A.hw a-bc-def-ghij-klmno-pqrstu-vwxyz=0A.TH table 1 "groff experimen=
ts" 2021-01-29=0A.SH Name=0Atable \- explore tbl behavior=0A.SH Description=
=0AFirst let's see if hyphenation is enabled at all when rendering this=0Ap=
age.=0Aabcdefghijklmnopqrstuvwxyz=0Aabcdefghijklmnopqrstuvwxyz=0Aabcdefghij=
klmnopqrstuvwxyz=0A.=0A.=0A.PP=0AAdjustment can be set on a per-text block =
basis and is not remembered=0Aacross text blocks,=0Aeven in the same table.=
=0A.=0AThe default adjustment for any text block is whatever mode was in fo=
rce=0Aimmediately before the table began.=0A.=0A.TS=0Al lx.=0Afoo	T{=0AThis=
 is a table cell with default hyphenation and adjustment.=0Aabcdefghijklmno=
pqrstuvwxyz=0AT}=0Abar	T{=0A.ad c=0AHere's a table cell with center adjustm=
ent.=0Aabcdefghijklmnopqrstuvwxyz=0AT}=0Abaz	T{=0ADoes the center adjustmen=
t persist to the next text block?=0Aabcdefghijklmnopqrstuvwxyz=0AT}=0A.TE=
=0A.=0A.=0A.PP=0ALet's see if hyphenation is enabled:=0Aabcdefghijklmnopqrs=
tuvwxyz=0Aabcdefghijklmnopqrstuvwxyz=0Aabcdefghijklmnopqrstuvwxyz=0A.=0A.=
=0A.PP=0ANow here's a table with adjustment and hyphenation disabled in its=
 text=0Ablock.=0A.=0A.TS=0Al lx.=0Afoo	T{=0A.na=0A.nh=0Aabcdefghijklmnopqrs=
tuvwxyz=0Aabcdefghijklmnopqrstuvwxyz=0Aabcdefghijklmnopqrstuvwxyz=0AT}=0A.T=
E=0A.=0A.=0A.PP=0ALet's see if hyphenation is enabled again as it should be=
=2E=0A(Do not expect it to be prior to 2021-01-30.)=0Aabcdefghijklmnopqrstu=
vwxyz=0Aabcdefghijklmnopqrstuvwxyz=0Aabcdefghijklmnopqrstuvwxyz=0Aabcdefghi=
jklmnopqrstuvwxyz=0A.=0A.=0A.ad l=0A.PP=0AHere's a paragraph using adjustme=
nt mode \[lq]l\[rq].=0AJackdaws love my big sphinx of quartz.=0AThe quick b=
rown fox jumps over the lazy dog.=0AJackdaws love my big sphinx of quartz.=
=0A.=0A.ad=0A.hy 4=0A.PP=0ANow we've \[lq]restored\[rq] adjustment with \[l=
q].ad\[rq]=0Aand hyphenation with \[lq].hy 4\[rq].=0Aabcdefghijklmnopqrstuv=
wxyz=0Aabcdefghijklmnopqrstuvwxyz=0Aabcdefghijklmnopqrstuvwxyz=0AJackdaws l=
ove my big sphinx of quartz.=0AThe quick brown fox jumps over the lazy dog.=
=0A
--elzxv3mdjdtgdzsl--

--cctqc3ekjgtebvue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmAUZvIACgkQ0Z6cfXEm
bc73/Q//dkIrGxpFeobuv6MLM1a2hJ2C3kHF/hpbodrgt/3Yv2SvSMfAJqqm1Q3f
kHG7Qnu2BSAzcdyWBkqIL39Q/QyEnraw3qeEZ0KIxKZ1Z5bzuZNo6+9OgpxvSR7V
p5h++EPJzDimJZX4KW49AYiZJrX5IB//vGwehrKMhavs1AP+R/zqzJEoUmjn6hsr
h3YerTj3A+JGKCtmLxigSE804RqoMjqxGTiQTI5gbVrk4dXZ8F+gyxqQyBznpkVN
huTDupRIs1Ory//LP7b9mPuzVRlyueKOEyOGDuCYj0u1a9dL6WzmG/eiCxC+23p7
f0SdCRMuPQvh1bujduzXUwCI97PndgU4zJaEALPBOAoyuVzseMXaipU3dr/nIXyZ
5fGE+boIkEfaNS+KgClr/o9yIX2Qj3OXQcDkP2M/McjYe4BWJYvcDDu3xmu5b1gm
nwjSHE1S+7UqP5wAAfZeHZoM/rnhMNBf0zzdWd8jL7u3lfDi5GZZQROQcEZXKSMR
p7UMLCzyx1YHcYEwM7Kuv2zWFDyY6vCCcZ0XevM7FBOYefTndeSBKZ10bGaOFvn5
g5flCuVEUZaGvWh8cIZjxWJTa/e1A3gIK+760JIHmdxiDBowvOQBn5SVMlWAnze4
JrSrbVbfwEiBKYItXRu589e07oe2gxJrFdUWSX1sI+AueV9S6Do=
=D2EZ
-----END PGP SIGNATURE-----

--cctqc3ekjgtebvue--
