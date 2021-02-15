Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DF3631C389
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 22:27:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbhBOV1X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 16:27:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229682AbhBOV1W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 16:27:22 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09A4AC061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 13:26:42 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id k13so4876874pfh.13
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 13:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Xdzqk3bGRiNEFNKtJAtk+Z9UXB3XeVPVh8764B0Wd7M=;
        b=a86Ny8RJvzsVvCudqJHw/TlPLWIc1ihSo6XnyCFhQaX4J0VkLfjHphl6NedK8yN1vy
         76Ek9xR3B3egsFtjTEYHTU20yFqCQHRtrSRifW/N0MjVeI5M+jcXS0tR6SL+N9F1IdBI
         Hc3nQ8WIIPY2T1uZAADtjumo14UJCHpdURWHv02+vWJS+GACMn0QRhwwTuBTTpSxTmYt
         isZ+tVG+H1BZGu72LiD9PrYWSirINR/7YPFTs6kD32B16b8QXWKwoTdY0yXDebh7UxiT
         doANFyb9z6nS8AYfn3V8LiNP3WG9BqjsxHhk0rZf+yH0SnLnxvEZKcNg1ULYa+/9TvsP
         VtUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Xdzqk3bGRiNEFNKtJAtk+Z9UXB3XeVPVh8764B0Wd7M=;
        b=jm62YBgV/UuThZoDQpELZfq5Q2Fq+XO7PW91sh7Yq5fMGeRuB84zCuwV7izYu/E/5r
         ljeKj4OC6I4HAtiCkgjQHR20tNz3jsDU6TIg2dtcBsc2ObUQIDU0raJoiURTzrYGwqGE
         0iWeYGqY7rcA0uGKdrsBTN4d5/9LAzi2mfrGkd9PYr/ldslrNWPf98kBriPz5glMgR1C
         QNO8NgxPo1tE3rK1XwZi9dSRc5rk7sYCyL3n/cE47dwptZ9XWVdvRjx/HP40wZ1t+/FO
         tKQiHbwrxEuAaLvdJ3Y2uMMPgLfqFFa2bjP9H84Y6hPyWaE1Bty6staPz1cciHw8DihQ
         9BNg==
X-Gm-Message-State: AOAM533njWtj8t3xM6urjyvpcVvWoplo6Qqhux41LNeMajAsIe9d84s7
        /drojgMkFW00rmcsQa+rxeo=
X-Google-Smtp-Source: ABdhPJyp2FHZVwZ4UxuP9BRwyzSL+XEloWlMi4cbEcP6KTjqIlb5N1ZzLIQPZUmxRk9wUI+JabXtgA==
X-Received: by 2002:aa7:9397:0:b029:1e1:abd5:7757 with SMTP id t23-20020aa793970000b02901e1abd57757mr16826782pfe.43.1613424401509;
        Mon, 15 Feb 2021 13:26:41 -0800 (PST)
Received: from localhost.localdomain ([1.129.238.76])
        by smtp.gmail.com with ESMTPSA id v9sm378206pjd.30.2021.02.15.13.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 13:26:41 -0800 (PST)
Date:   Tue, 16 Feb 2021 08:26:34 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: Formatting suggestion revisions
Message-ID: <20210215212631.trmheqbjtukrylfx@localhost.localdomain>
References: <20210128205734.nhvua6ameelaomaw@localhost.localdomain>
 <2c95eb35-3e8a-a745-3242-fc8c8947660c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ka47obtf3jmuphrm"
Content-Disposition: inline
In-Reply-To: <2c95eb35-3e8a-a745-3242-fc8c8947660c@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ka47obtf3jmuphrm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Michael!

At 2021-02-02T14:14:33+0100, Michael Kerrisk (man-pages) wrote:
> Hello Branden,
>=20
> {I've also seen you reply to this mail.]

Cool.  Sorry for the delay in replying; I was hopeful that we'd get
groff 1.23.0, or at least a release candidate, into Debian bullseye but
that is looking less likely.  Ah well.

> I think I'm okay with everything you say in this patch/mail, but I
> have one concern
[my own stuff snipped]
> So, I understand much better now. I guess my one concern is that
> sometimes there are tables with a lot of T{ / T} blocks.

Yes.  Since you last wrote I encountered and dealt with just such a
page, groff_ms(7), and I think it reveals how poorly understood (and
likely, to date, how poorly documented) tbl(1) text blocks really are.

I was able to kill off nearly every instance of T{/T} in the groff_ms(7)
page[1] because it simply wasn't necessary in most cases[2].

There may be more esoteric uses, but from what I've seen in man pages,
you need tbl text blocks in exactly one scenario: when you require a
line break in a table cell.  You might not care exactly where it
happens (use the .br request if you do), but you know you're going to
need it.

Therefore, if you know your table row is going to fit in the available
space without breaking (78 columns in nroff mode for the Linux man pages
project), you don't need to mess with text blocks.  You already know
this, but for the benefit of the wider audience, a good first resort
before reaching for text blocks is, if possible, to have one table
column which is expected to be the widest, and give its column
specification the "x" modifier.  This GNU tbl extension tells tbl to
expand the table width to the full available line length and give all
the slack space to the designated column.

Here's a real-world example.

=2ELP
=2ETS
cb    s  s  s
cb   cb cb cb
lfCR lx  l  lfCR.
Margin settings
Parameter       Definition      Effective       Default
_
\[rs]n[PO]      Page offset (left margin)       next page       1i
\[rs]n[LL]      Line length     next paragraph  6i
\[rs]n[LT]      Header/footer length    next paragraph  6i
\[rs]n[HM]      Top (header) margin     next page       1i
\[rs]n[FM]      Bottom (footer) margin  next page       1i
_
=2ETE

In the above, the "Definition" column will expand to fill all available
space on the line.  (If you're cutting and pasting, you'll need to
sed 's/  \+/\\t/g' the rows of table data.)

Admittedly, this strategy will fail if you want your document's layout
to be _completely_ independent of the line length.  On the bright side,
you will get warnings when rendering your document if the table grows
too wide to fit the line length of the output device.

In practice, I think the authors of most practical documents have a
minimum line length they are prepared to support.

> What you are saying is that I'd need to add .na and/or .nh in each
> such block. That's kind of burdensome. (In practice, maybe it is not
> as bad as I think, since a quick grep suggests that there are less 50
> such pages.)

I hope the above observation brings that count down some.  If it were
me, I'd probably sed-automate the conversion away from text blocks[3],
render all the altered pages, and let the pages themselves tell me when
the lines overran.

Here's an example of such a change, to clone(2), just as a specimen.

diff --git a/man2/clone.2 b/man2/clone.2
index 11eb6c622..f4af93549 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -257,9 +257,7 @@ l l l
 li li l.
 clone()	clone3()	Notes
 	\fIcl_args\fP field
-flags & \(ti0xff	flags	T{
-For most flags; details below
-T}
+flags & \(ti0xff	flags	For most flags; details below
 parent_tid	pidfd	See CLONE_PIDFD
 child_tid	child_tid	See CLONE_CHILD_SETTID
 parent_tid	parent_tid	See CLONE_PARENT_SETTID

> What would be nice is a way of saying in the table preamble
> that a particular column should not be hyphenated or should be
> left adjusted. Is there a way to do that? I'm aware of the tbl(1)
> 'm' modifier:
>=20
>        m,M    This  is  a  GNU tbl extension.  Either of these specifiers
>               may be followed by a macro name (either one or two  charac=
=E2=80=90
>               ters  long),  or  long  name  in parentheses.  A one-letter
>               macro name must be separated by one  or  more  blanks  from
>               whatever  follows.   The  macro which name can be specified
>               here must be defined before  creating  the  table.   It  is
>               called just before the table's cell text is output.  As im=
=E2=80=90
>               plemented currently, this macro is only called if block in=
=E2=80=90
>               put  is  used,  that  is,  text between =E2=80=98T{=E2=80=
=99 and =E2=80=98T}=E2=80=99.  The
>               macro should contain only simple troff requests  to  change
>               the  text  block formatting, like text adjustment, hyphena=
=E2=80=90
>               tion, size, or font.  The macro is called after other  cell
>               modifications  like  b,  f or v are output.  Thus the macro
>               can overwrite other modification specifiers.
>=20
> But that seems to be usable for only one macro. In other words,
> doing something like
>=20
> lmnhmna
>=20
> to disable hyphenation and adjustment in the T{ / T} blocks in a
> particular column of a table doesn't work. More precisely, if
> there's a series of 'm' requests attached to a column in the
> table preamble, it looks like only the last one is honored.

You're right.  It had never occurred to me to give the "m" modifier the
name of a _request_ for the "macro" before, but doing so is perfectly
consistent with *roff design principles since Ossanna first wrote nroff.

To answer your question, I'm not aware of a way, no--and what's worse,
not only is "m" yet another GNU extension[4], but one remedy you suggest
requires the definition of a page-private macro, which makes life
difficult for maintainers of non-roff man page interpreters.

The other remedy, extending the "m" modifier to build a queue of macros
(or requests) to call when processing a text block in the corresponding
column is an interesting idea.  It'll probably be up to me to implement
it if it proves necessary.

As a minor point, since "m" is a GNU extension already, I think if you
used this approach, it would be more readable to use the GNU tbl
long-name syntax for the macro name.  So instead of:

lmnhmna

you could:

lm(nh)m(na)

=2E..but again, at present, _multiple_ "m" modifier specifications will
not work; only the last one will be honored.

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=3Dcd5e94235339ed=
aa0af44f2c3b0bcf1dee1f841f
[2] I killed off 11; 2 remain.  Even those two may not be necessary, but
    revising that part of the page was outside the scope of the work I
    was doing at the time.
[3] Since this would, I think, involve using the hold space, it could be
    a fun exercise.
[4] As noted earlier in the thread, while "x" is a GNU extension, the
    Heirloom Doctools troff developers considered it appealing enough to
    document support for it, even if in the Heirloom tbl version that I
    use for testing, that support doesn't work.

--ka47obtf3jmuphrm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmAq5wAACgkQ0Z6cfXEm
bc4cxA/9GPT49EOFaLyF86WRtiiNHWS8ap9TN4UTi1qjykDTHGiUPCFwMvqvO85z
05dvhEyrbCCKQt49wSjtOCRsCftu7IV7HYrOBJiriF/jF1rPTaTaQ+86qmcxVT6c
8gkKQ7YecQQWglIrt5GHeMK/qvu3yxpUZGDLjWkinlaHCz+7bB/ojSvv4Lo6DauV
jaHe7OcgVxdz9Py80E6/n4c4azEO7ca8irq819hNcLm++kjzHutYuiv2rc2ddx+J
gs1fihnNJT1PUOwLujn2IHqZFClq3XfuUYo7WKRhruVMImVWgVqgbOLlhvYJp7rE
lkJUpz04/QFs22SFRPqMxp92REH1f9FIRf+qUpNZIHGaR13CLoVWv6nvzRCnAwv9
s5hMVd0lkETMxp7zxawQPShTRhcg3UHq6f2gZkjKMSb/KN2CtVbvMVRpfBt1CZFB
Qs4FV+Zn61vgeIuiElWc403Diuuu9UDCTOZ4swopkb5Hn2eheE9yEx9KeCt2+1/A
Gs9ZwzinQITp10vMj1eUIwWlowMFYecZmbyVSdYiYuqu4Jj21wU3gTglbzTLOLkw
IbSNlKbUVLSAgSSAw30RJPkLPPrkDfpZDf+85P8884xnuYnMGvOrRnO/Usd4YwIb
fc/r8jFVA4OIB5aQDT9gjJ7NQrbje8Fr77cHPYvvzrc4Vmi/sMo=
=9/Wy
-----END PGP SIGNATURE-----

--ka47obtf3jmuphrm--
