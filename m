Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEB3C7D8338
	for <lists+linux-man@lfdr.de>; Thu, 26 Oct 2023 14:58:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230413AbjJZM6o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 08:58:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230330AbjJZM6n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 08:58:43 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3AA8AC
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 05:58:39 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6ce2d4567caso495162a34.2
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 05:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698325119; x=1698929919; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AR/7aWVru0hv9p0FT3SfKH+o34HlRqLJ9liGmuoiwbk=;
        b=O6gxdNZ/YldmUPzjvacdHwwIxhMSHhOFP+cWzgi2cuV41oF/kgKI1z1i0RNoGYO/CD
         8NimlPKOLurxihOqBTmcexfA8tpEI5zfB7oTmRziIJhmM5/Apwhi2/ZEwrtT5GyDElqd
         WnqTmD5BkvjKuxzkGCOdjKpJM1uS4EvVX/IJm8LF2UhRreACagkRC472OVYw5wUZhRa7
         XU4mrATePmUWtYOjqcwV06o8V/EkguK0p2qN8LDunoMMzBRtX+GTuWY2UBrkP3b96yse
         /Invf6R5q5snd5oQ+3a36voV8XlmOx9pKo9IUwRxJDCsqejekkw7+zKNwf3YZN5LbrKO
         eZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698325119; x=1698929919;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AR/7aWVru0hv9p0FT3SfKH+o34HlRqLJ9liGmuoiwbk=;
        b=SlM1yepU3lCtZ0ugDAldBR845oBX5O/slcCqBxvCwuFTCXoh+/jpDCfxAtwjOytlRC
         CoiCKgtGLNgubpziMqSDtLCUsumnTFe7i7FXtbmNgHsKDXFmC0RY4Y36ZgFFZJ8QlPr1
         9SqCx1SfXtDXxfBm0Dsjbe0TNt14+P30uENhq04iNGXAez1AMknuIZ2QPbjDpYW5V8oJ
         udI+DAaUxugGqhTj8gkjCSH2vG23Hwdd3ZjKW9XdfTs830w3iOGjI0SORSGdr0UkPAR1
         NGsRC7ywUpIS0KWRv3+sywHKjnnUXdX8TDQikdcY2L8weDVQ3nALxgT8GCZ0Jzsu91vf
         D3bA==
X-Gm-Message-State: AOJu0Yw8CgSAG34q+fRMoapRwrJRSXPFLcm0qbQB1nwJLT95UXeK8i88
        axgX5xU3w7EY63l49D27t+wIAnmsZEc=
X-Google-Smtp-Source: AGHT+IFV5S9x4VapNpPb/g8y89P/oYlwYd/t86RTQk34iEnT9xxsPio2ht1oz9dWAc5hcpyaiQI7uA==
X-Received: by 2002:a05:6830:25d4:b0:6b9:4216:c209 with SMTP id d20-20020a05683025d400b006b94216c209mr21321479otu.12.1698325118859;
        Thu, 26 Oct 2023 05:58:38 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id a16-20020a9d4710000000b006c351d30e19sm2686071otf.40.2023.10.26.05.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 05:58:37 -0700 (PDT)
Date:   Thu, 26 Oct 2023 07:58:35 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: `\c`, mdoc(7), and man(7) extension macros (was: [PATCH 1/2] man*/:
 srcfix)
Message-ID: <20231026125835.phpfjhz6xbsde33d@illithid>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jglvpl5x7yyfzyfw"
Content-Disposition: inline
In-Reply-To: <ZTlu2r8N3nrCnMpa@debian>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jglvpl5x7yyfzyfw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-10-25T21:38:59+0200, Alejandro Colomar wrote:
> On Wed, Oct 25, 2023 at 01:54:24PM -0500, G. Branden Robinson wrote:
> > diff --git a/man2/open.2 b/man2/open.2
> > index 4c921723c..6603dfdff 100644
> > --- a/man2/open.2
> > +++ b/man2/open.2
> > @@ -82,8 +82,13 @@ .SH DESCRIPTION
> >  to an entry in the process's table of open file descriptors.
> >  The file descriptor is used
> >  in subsequent system calls
> > -.RB ( read "(2), " write "(2), " lseek "(2), " fcntl (2),
> > -etc.) to refer to the open file.
> > +(\c
>=20
> I'm going to disagree with Ingo with his claim that a macro that
> forces using \c is bad because it promotes bad style.  '(\c' doesn't
> look bad to me here.  Not more than having the leading punctuation as
> an Nth argument.

I disagree with Ingo on that point as well.

Saying why leads me to digress; I found myself writing down thoughts
about future man(7) development more concretely than I have to date.
(I'll return to this patch at the end.)  So, Ccing the groff list...

I think Ingo's perspective is strongly influenced by mdoc(7), the use of
which he strenuously advocates.  And mdoc _does_ manage to make `\c`
almost(?) totally unnecessary--at the cost of a weighty internal
recursive macro reprocessing system that no other *roff package is known
to implement.

(This is what that "parsed"/"callable" stuff in groff_mdoc(7) (and
mandoc_mdoc(7)) is all about.  Also, by "weighty", I mean it--back in
~1990, when mdoc was implemented, its documentation warned the reader of
its slowness.  Fortunately, on modern systems, the rendering latency
relative to man(7) is no longer noticeable.)

Even with performance considerations out of the picture, I think such a
system is a point against adoption of mdoc; one can observe that,
nowadays, both man(7) and mdoc require a person to acquire knowledge
that they will "never" transfer anywhere else, assuming no resurgence in
*roff popularity.  But the point is _even more true_ of mdoc than it is
of man(7), by dint of the recursive macro reprocessing feature and the
funny requirements that become necessary as a consequence (you have to
use `\&` in more places; you have to break up individual punctuation
characters when using them as macro arguments if you want them to work
right).  In other words, learning mdoc doesn't help you learn *roff all
that much.  Not as much as man(7) does.  And it doesn't help you learn
any other programming/documentation system anywhere.

Plus, in mdoc, there is a much larger lexicon of macros to learn in the
first place.  I count 115.

$ git grep '\.\(als\|de\) [A-Z][A-Za-z1][a-z]*' \
  tmac/doc.tmac tmac/mdoc/doc-!(nroff) | wc -l
115

Admittedly, a couple of those are, if not deprecated, unlikely to be
used in practice, because even after mdoc's documentation spent decades
asking its readers for help, no one could be found who clearly remembers
what they were supposed to do (`Me`, `Ot`).  So, call it 113 macros.

But Ingo added `Tg` to mandoc(1) mdoc--which groff doesn't support yet--
so make that 114.

man(7), in groff 1.23.0, has 30.  2 of those (`LP`, `PP`) are redundant
synonyms for `P` that I'd happily kill off if the man page authors of
the world would let me.  Six others, the font alternation macros--`BI`,
`BR`, and friends--are schematic and so are relatively "light" on human
memory.  Several more come in pairs (`EX`/`EE`, `MT`/`ME`, `RS`/`RE`,
`SY`/`YS`, `UR`/`UE`).[1]  I confess that I do have plans to grow
man(7)'s macro repertoire for groff 1.24, but not by more than a few,
and only for purposes where we see concrete needs.[2]  Further, `SB` is
already deprecated in Git (it was never "standard" in the first place).

Granted, some of mdoc's macros are systematically named as well.  The
enclosure macros are probably the prime example.

groff_mdoc(7):
       Quote   Open   Close   Function                  Result
       .Aq     .Ao    .Ac     Angle Bracket Enclosure   <string>
       .Bq     .Bo    .Bc     Bracket Enclosure         [string]
       .Brq    .Bro   .Brc    Brace Enclosure           {string}
       .Dq     .Do    .Dc     Double Quote              =E2=80=9Cstring=E2=
=80=9D
       .Eq     .Eo    .Ec     Enclose String (in XY)    XstringY
       .Pq     .Po    .Pc     Parenthesis Enclosure     (string)
       .Ql                    Quoted Literal            =E2=80=9Cstring=E2=
=80=9D or string
       .Qq     .Qo    .Qc     Straight Double Quote     "string"
       .Sq     .So    .Sc     Single Quote              =E2=80=98string=E2=
=80=99

None of this is to say that mdoc should go away.  I do not mirror
mandoc(1)'s initial ambition to completely kill off man(7).[3]  There's
room in the world for mdoc, and I think it can coexist with man(7).  But
I tire both of mdoc advocates' derogations of man(7), and of resistance
to development of the man(7) language so intransigent that it keeps the
macro package from rising to the challenge mdoc has presented to it,
particularly in areas that man(7) authors also complain about.  A
community with totalitarian conquerors on one hand and reactionaries who
prefer death to evolution on the other is an unhealthy one.

Does mdoc do a better job of semantic markup?  Absolutely.  But I have
an idea for bringing man(7) to parity in that department as well--at a
much lower cost in macro name space and human memory loading.  It will
cost 3 macros: one to define a tag class, and two others to open and
close an annotation of enclosed material with a tag class.  (The
bracketing is for (a) flexibility: tag as large a region of the page as
you like, and (b) robustness: if an implementation doesn't support the
macros--and many won't, especially at first--the rendered text of the
page will not be damaged by ignoring the macros.)

(b) is a property `MR` didn't have, and that fact necessitated the
inclusion of some boilerplate in every groff 1.23.0 man page so that
they would render acceptably with other formatters, including old
versions of groff.  (This problem afflicted renderings of the groff man
pages on Michael Kerrisk's man7.org site for a while.)  I'm not happy
about this, but I'm not sure it was avoidable.[4]  And eventually the
boilerplate can be dropped.

Potentially, the big payoff is that most man pages won't have to define
tag classes at all.  The definitions of these can be left to man page
maintenance communities--like that of the Linux man-pages--and the class
definitions `so`urced in.  Again, nothing breaks the formatted page if
something goes wrong with this, like an anemic formatter not
implementing the `so` request, or the tag definition file being missing.

What would tag classes enable us to do?

(1) Associate formatting (style) decisions, like what typeface to use
    for an item, with text based on the _meaning_ of that text.

(2) Make those styles customizable independently of a given man(7)
    document, and in one or only a few locations.  Want file names to
    show up in italics always?  Or roman always?  If the man page uses
    semantic tagging, you'll be able to.  groff mdoc supports this but
    it seems to be a fairly obscure feature.  For mandoc(1), this sort
    of customization is, as I understand it, considered an anti-feature.

(3) Embed this semantic information in GNU troff device-independent
    output, meaning that it can then be handled by an output driver
    (like grohtml(1)).  (A terminal output driver would ignore it.)
    mandoc(1) has a really nice feature in its HTML output where you can
    hover the pointer over some text, and a tooltip will pop up telling
    you what mdoc macro was used to mark it up.  This is cool, and
    surely an aid for acquiring the portions of its gigantic lexicon
    that man page authors actually want to use.

> > diff --git a/man5/proc_locks.5 b/man5/proc_locks.5
> > index cf4ff678c..a938e4ad7 100644
> > --- a/man5/proc_locks.5
> > +++ b/man5/proc_locks.5
> > @@ -10,10 +10,12 @@ .SH NAME
> >  .SH DESCRIPTION
> >  .TP
> >  .I /proc/locks
> > -This file shows current file locks
> > -.RB ( flock "(2) and " fcntl (2))
> > -and leases
> > -.RB ( fcntl (2)).
> > +This file shows current file locks (\c
>=20
> For consistency with the above two cases, I think you should move that
> (\c to a new line.  It also reduces the diff (semantic newlines any?)
> :)

Well, okay.  I'll roll a v5.

By the way, even the diffless version of 2/2 (the actual `MR` migration)
got canned by vger.  Even just the diff --stat blows past the 100,000
byte limit.  But you should have a copy in your inbox, and the sed
script is what does the real work of 2/2 anyway.

Regards,
Branden

[1] It _would_ be nice if these all ended in `S` and `E`, respectively,
    for "start" and "end".  Alas, there is historical baggage here,
    which Doug McIlroy, author of the original man(7) macros and of the
    latter Ninth Edition Unix `EX`/`EE` extension, recently lamented.

    https://lists.gnu.org/archive/html/groff/2023-09/msg00058.html

    We _could_ fix all the outliers, save one, without collision.

	EX -> ES (example start)
	MT -> MS (mail-to start)
	UR -> US (URL start)
	YS -> SE (synopsis end)

    The oddball is `SY`.  We can't rename that to `SS`, which is already
    a subsection heading macro.  But we could rename _both_ synopsis
    macros.

	SY -> NS (syNopsis start)
	YS -> NE (syNopsis end)

    I'm game for any of these reforms, if people think it's worth it.
    The old names can be kept for backward compatibility for as long as
    necessary (but de-documented).  I _assume_ there's too much inertia
    for this.

[2] An example of a concrete need is better control of vertical spacing
    within lists.  In one case, the "concrete need" is for semantic
    tagging.  Can semantics be concrete?  Signs point to "yes".

    http://concrete-semantics.org/

[3] "The mission of mdocml is to deprecate groff, the GNU roff
    implementation, for displaying -mdoc pages whilst providing token
    support for -man."

    This rather fiery statement appeared at mdocml.bsd.lv in 2009, but
    was withdrawn in late 2013.

    Cf.

    https://web.archive.org/web/20090306052112/https://mdocml.bsd.lv/
    https://web.archive.org/web/20131024053011/https://mdocml.bsd.lv/
    https://web.archive.org/web/20131111191539/https://mdocml.bsd.lv/

    While no longer a statement of mission, the attitude persists.

[4] I pretty much followed the example of the old DEC Ultrix `MS` macro,
    and the Plan 9 from User Space `MR` macro.  (I did make groff's `MR`
    macro supply the parentheses for the section number itself.)  I
    figure that new man page cross references need to look a _lot_ like
    the old ones or authors will be too confused to adopt the new ones.
    (I admit, retaining the requirement to type the parentheses would
    serve that goal even better, but, to me, not making people type
    invariant literals--stuff they don't _need_ to type--weighed more
    heavily.  And it closed a window through which typos or absent-
    mindedness could enter.  I don't know if the plan9port folks noticed
    this, or were annoyed by it, but I'm happy to supply a patch to
    migrate the `MR` calls in their corpus of man pages to align with
    groff practice if they would like.  What's one more sed script?  :)

--jglvpl5x7yyfzyfw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU6YnQACgkQ0Z6cfXEm
bc7bVA/9GZmanR28m4W0nhjeJwbZ8Yl+41thtPQpOOvXxV0olK5EWT4JrGPT8hvL
WtW7+BkF9jki4zgdY9LxZ9KKD8fseZQ0LMcgBXo0lrTZBMSdYCpRZRS3BCCgcKUr
h/PWLDHrV2nYkqMI5rurbWCOSZ8PycSnH3Vz3iC+qcxKejC1I9b+goJm0zHKQvio
78Z4uuYwybmXVm6xlJUnK8IP292b1v9UqFsV+xzfIfQvpw/zWZzODUsaUHM8GSVX
gKYHtf+AYjoRU9OsH8qxwSt/q6YQ8CU1hUD+dOYjcYsJ91JkklWFn842VDe3cnyT
FrzxcH3WafEJ4gYRuojAl0gwGAqA2/LYgwYUfqB3JUtYKFgnACf/n3e/SFzgXo0s
thvsLwnLlq/UjVXTQLyaMZpzZa4sSvOyQo9lVU/hpxjmR7zzc7Lwx5P3v0C7K49Y
NKQjL4DIk0uGq2oX6jJvrliPFkoMo+Qy/XZ5jmii4vfqnmmSXCsEiuuDsPo2XYCF
3ufgSCjxc340kgS6fIbO5cXl7P8XFbSCG+GMtrmGuA6uLf29eWGk52W02Snbuovd
ko5bm5SX65YzQf8PJAWNZW0fWcqJ9U6aGYj4zzm4YfoqgB7e9tpzPlJWbmOAby2G
ZJGDIGPVKMtMa/INf9WiRFYH6gbzPc/DyxqQoRQqfLMtlAvfzx4=
=WJTg
-----END PGP SIGNATURE-----

--jglvpl5x7yyfzyfw--
