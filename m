Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D06F6ABF7B
	for <lists+linux-man@lfdr.de>; Mon,  6 Mar 2023 13:29:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229726AbjCFM31 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Mar 2023 07:29:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229792AbjCFM30 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Mar 2023 07:29:26 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41790CDEF
        for <linux-man@vger.kernel.org>; Mon,  6 Mar 2023 04:29:23 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id j2so8599867wrh.9
        for <linux-man@vger.kernel.org>; Mon, 06 Mar 2023 04:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678105762;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YlZ6DBJwOj8NVb8a9bx/odtAfbFcSsfUYJmFG5n6U+w=;
        b=mu+8bbDDQ3HcpNwARGgXf+JX2AbmwCoJbDCf5grLsYEGysXX9n8X1Vq+cq+bVCOcew
         f6z8QK92MSReKwFf5aRQiH89JVyPfY8ne0CtPNzvTRja96eIAMAKrg4ZX6R6itDkp5Bk
         seOS+bnIop8Ezs3KhLP2s6ilfMf3wcSgLH2RZmx8ApBGO556m44bImg7xNHZ/qvlMlkq
         1rG14/+gVzja7kcyWG4kuIK/icadsnMgTU+e6TRKQSzTRJPTWgFtPNJxGhyObA5GN5pQ
         T1VuLJkbvcP2CyYkI4EzPyAVJWdaoa5lsTzK9XXMBvPDqYF3QxN7E631JZJh+EH50a6I
         gQ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678105762;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YlZ6DBJwOj8NVb8a9bx/odtAfbFcSsfUYJmFG5n6U+w=;
        b=nA2hgCKhfXL5rGacbG81dsIF/+aLOYgWB1wOY0zUflVbi2TWSlSGsV87v9IzIeJDpd
         WzBiSJiF7r7mUHSjlEqfTlidLQKCZRu0a/4/rZBgEFzNlp2VWsdD3E8EpIBaoZ1bYzmk
         NglcFegp+TI+UH5wpZ6qnQcObklibIOcskcsRisA2F+oxDMQ/6jMMIOz5/NuKUapxULg
         XQQ9M+Tm0PxQllD3sNtpWVsJUgjczGyhBYIAwjp9hjBDWjpFUar4M26cQ1xv2pLvK4Hl
         qm6awDF9OJw8iy+soW+XJ2Dra0wNBvGP3GbTZA9vl25k2CoqPRP3/72NX+kM6U+0mhTa
         JRSw==
X-Gm-Message-State: AO0yUKWVurZpxRsLG2ZKLFXweCHh3XuhyaC6HoyKS2VLqvXNGwj2QZnU
        s3kEr2Jb4BQo807r1vudiZ4=
X-Google-Smtp-Source: AK7set/BXyHFSjh1bNI/LMZKv/G2xPUwRK46EM3y+hDA1Hyx67LusSa2Pb75jSb2j7Sw33FqS01/Tg==
X-Received: by 2002:adf:f74a:0:b0:2cb:33dc:b75e with SMTP id z10-20020adff74a000000b002cb33dcb75emr6141658wrp.30.1678105761393;
        Mon, 06 Mar 2023 04:29:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m13-20020a056000008d00b002c54c92e125sm9923644wrx.46.2023.03.06.04.29.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 04:29:20 -0800 (PST)
Message-ID: <47a6e7cf-6446-35f8-573b-5bca9bd1939d@gmail.com>
Date:   Mon, 6 Mar 2023 13:29:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: man-intro(1) [patch]
Content-Language: en-US
To:     "James K. Lowden" <jklowden@schemamania.org>,
        linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>
References: <20230227141715.28405f68e2e3dffec3763a75@schemamania.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230227141715.28405f68e2e3dffec3763a75@schemamania.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cBvvi2ZmdyJzhEpHVEgsVFK2"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------cBvvi2ZmdyJzhEpHVEgsVFK2
Content-Type: multipart/mixed; boundary="------------yAN61uhcIkvyxVQInUYx93fb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "James K. Lowden" <jklowden@schemamania.org>, linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff <groff@gnu.org>
Message-ID: <47a6e7cf-6446-35f8-573b-5bca9bd1939d@gmail.com>
Subject: Re: man-intro(1) [patch]
References: <20230227141715.28405f68e2e3dffec3763a75@schemamania.org>
In-Reply-To: <20230227141715.28405f68e2e3dffec3763a75@schemamania.org>

--------------yAN61uhcIkvyxVQInUYx93fb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi James,

On 2/27/23 20:17, James K. Lowden wrote:
> On Wed, 7 Sep 2022 00:13:18 +0200
> Alejandro Colomar <alx.manpages@gmail.com>=20
> wrote to <groff@gnu.org>:
>=20
>> If someone wants to send it as a patch, I'm open to discussing it.
>> I remember having some concerns when I read the page, but I don't=20
>> remember now about them.  I'd be happy to discuss it with a patch
>> sent to linux-man@.
>=20
> As requested, attached page is quoted below in line. =20

I won't comment on the formatting, since I don't understand mdoc(7)
so much.  We use man(7) in the Linux man-pages.  But I can do the
transformation if necessary.

>=20
> --jikl
>=20
> [snip]
> .Dd May 17, 2021
> .Dt MAN-INTRO 1
> .\"Os [OPERATING_SYSTEM] [version/release]
> .Sh NAME
> .Nm man-intro
> .Sh DESCRIPTION
> Most of the software installed on the system you are using is
> documented with .Em "man pages"
> and are displayed with the
> .Ic man
> command. The word

Please use semantic newlines.  See man-pages(7):

   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.

> .Dq man
> here refers to
> .Dq manual ,
> as in a reference manual.

Now I'm wondering about the etymology of manual as documentation.
I guess it really comes from manual as 'by hand' ('mano' is hand in
Spanish).  It probably comes from something like 'manual documentation
book', which was shortened to 'manual'.  StackExchange seems to confirm:
<https://english.stackexchange.com/questions/119574/why-do-we-call-an-ins=
truction-book-a-manual>

So, maybe we could chop the 'as in a reference manual', since there's
no other meaning for manual in this context?

> This page introduces how the manual is
> organized, how it works, and offers some advice on how to use it. .Pp
> To view a man page, you type
> .Pp
> .D1 Ic man Fa name
> .Pp
> where
> .Fa name
> is the thing you want to know about.
> .Pp
> References to the manual and what it documents are often
> denoted with the name followed by a section number, e.g.,
> .Pp
> .D1 Xr ls 1
> .Pp
> refers to the
> .Em ls
> command, as documented in section 1.  There are other sections for
> other kinds of things, described later.=20

Maybe it would be interesting to mention that one can use man -s to
select the section?

> .Pp
> You may have noticed that the system also seems to have a
> .Dq help
> command.  Likely that's because you're using the
> .Xr bash 1
> shell to enter your commands.  Bash includes what's known as
> .Dq built-in
> commands \(em commands supplied by bash itself \(em of which
> .Dq help
> is one.  The bash help feature documents bash built-in commands.
> For instance,
> .Pp
> .D1 Ic help Li help
> .Pp
> describes the bash
> .Dq help
> command, and
> .Pp
> .D1 Ic help Li cd
> .Pp
> describes the bash
> .Dq cd
> command.
> .Pp
> A built-in commands

Singular-plural inconsistency.

> in the shell sometimes may also exist as a
> utility.

I don't think 'utility' is unambiguous for binary program
(not even for me).  Especially for someone new to Unix,
utility has no special meaning, and so the sentence above
would be ambiguous.

>  It may be instructive to compare the descriptions of
> .Xr time 1
> in=20
> .Bd -literal -offset indent=20
> .Ic help Li time
> .Ic man Li time
> .Ed=20
> .
> .Sh "man Page Conventions"
> Most man pages follow a standard structure beginning with NAME,
> SYNOPSIS, and DESCRIPTION.  The man page for a command defines the
> possible options, error messages, and exit status.  For a function, it
> defines the arguments, along with the meaning of any return code and
> possible errors.  Commands and functions may both be influenced by
> environment variables and/or configuration files.  Near the end is a
> SEE ALSO section of related topics in the manual.
> .Pp
> A template in
> .Xr groff_mdoc 7
> provides more detail.

We have something about this in man-pages(7).  You could refer to that,
which is language agnostic.

>  As you grow familiar with the manual, you'll
> find the conventional headings to be useful milestones.
> .
> .Sh The\ man\ Utility

I prefer 'program' or 'command', I think.

> All man pages on your system offers

Wording issues above.

> are formatted uniformly. The
> .Xr man 1
> utility sends the requested page through a system that formats it and
> presents it for viewing.  That system consists of several
> interchangeable parts that vary across operating systems.  The two
> most important parts are the
> .Em formatter ,
> and the
> .Em pager ,
> described next.
> If you invoke
> .Pp
> .D1 Ic man Li man
> .Pp
> you will see the man utility has many options, and also environment
> variables that control how .Xr man 1
> behaves, and aspects of the formatter and pager.  You won't often have
> reason to alter them, but you might, and, if you do, it's useful to
> know they're there.
> .
> .Sh Formatter
> The
> .Em formatter
> is the program that reads the man-page file and produces
> human-readable output, complete with paragraphs, boldface, italics,
> and underscores. The formatter is usually capable of producing a
> variety of output formats, depending on how the output will be viewed.
> In addition to viewing them in a terminal, for instance, the formatter
> may be able to produce PDF or HTML files. Some systems opt to include
> in the base system a limited version of the formatter that can be
> amplified from the packaging system.
> .Pp
> The most common formatter is GNU groff,

The official name is "GNU roff (groff)"

> an implementation of the AT&T
> .Xr troff 1
> typesetting system.  In addition to man pages, groff is used to
> produce a variety of other kinds of documents, from presentations to
> books.  Another formatter sometimes used is
> .Xr mandoc 1 Ns ,
> which is not a typesetting system but rather is specialized for man
> page formats. .
> .Sh Pager
> The output of the
> .Em formatter
> is normally sent to the=20
> .Em pager ,
> so called because it
> .Dq pages
> the output in a terminal, allowing the user to scroll the text up and
> down, instead of having it all run off the top of the screen.  The
> most commonly used pager is GNU
> .Xr less 1 Ns ,
> a play on the name of an older utility,
> .Xr more 1 Ns ,
> that let the user see
> .Dq more
> text (the next
> .Dq page )
> by pressing the space bar.  To get the most out of your manual, it's
> very helpful to get to know your pager.  A quick sketch follows, but
> see
> .Xr less 1
> for the whole enchilada.
> .
> .Sh "Introducing GNU less"
> GNU
> .Xr less 1
> has a minimalist user interface, to reserve the most possible space
> for the text it's displaying.  Many commands are a single keystroke.
> In case you get stuck, remember the 2 most important keys:
> .Pp
> .Bl -tag -offset indent -width nnnnn -compact
> .It h
> to access the help
> .It q
> to quit the help
> .It q
> to quit
> .Xr less 1
> and exit back to the command prompt
> .El
> .Pp
> Forget trying ^C to quit;
> .Ql q
> is your friend.
> .Pp
> Use the arrow keys to move up and down through the
> .Dq page .
> The space bar will scroll a screenful of text at a time, and the enter
> key will move one line at a time. Some other up/down keys are:
> .Pp
> .Bl -tag -offset indent -width nnnnn -compact
> .It G
> go to end of document
> .It f
> down one screenful (toward the end)

Maybe useful to mention the word "forward".

> .It d
> down one \(12 screenful

Maybe use the word "half"?

> .It j
> down one line
> .It k
> up one line
> .It u
> up one \(12 screenful

Maybe use the word "half"?

> .It b
> up one screenful (toward the beginning)

Maybe useful to mention the word "backward".

> .It g
> go to beginning of document

I think I would have grouped the above by pairs (up/down),
and then the pairs from the most movement to the least movement
(most used to least used, at least for me).

> .El
> .Pp
> .Pp
> Once you can move up and down, the next most important feature of
> .Xr less 1
> is the ability to search the text using regular expressions.  To start
> a search, press the
> .Ql /
> key.  In response, less puts a
> .Ql /
> in the lower left corner as a prompt.  Type the string to search for.
> For example, the sequence:
> .Bd -literal -offset indent
> /
> ^FILE
> <enter>
> .Ed
> .Pp
> searches for the FILE section, where the word

I'd use a real section, such as FILES.  See man-pages(7):

   Sections within a manual page
       The  list  below shows conventional or suggested sections.  Most m=
anual
       pages should include at least the highlighted sections.  Arrange a=
  new
       manual page so that sections are placed in the order shown in the =
list.

              NAME
              LIBRARY          [Normally only in Sections 2, 3]
              SYNOPSIS
              CONFIGURATION    [Normally only in Section 4]
              DESCRIPTION
              OPTIONS          [Normally only in Sections 1, 8]
              EXIT STATUS      [Normally only in Sections 1, 8]
              RETURN VALUE     [Normally only in Sections 2, 3]
              ERRORS           [Typically only in Sections 2, 3]
              ENVIRONMENT
              FILES
              VERSIONS         [Normally only in Sections 2, 3]
              ATTRIBUTES       [Normally only in Sections 2, 3]
              STANDARDS
              NOTES
              CAVEATS
              BUGS
              EXAMPLES
              AUTHORS          [Discouraged]
              REPORTING BUGS   [Not used in man=E2=80=90pages]
              COPYRIGHT        [Not used in man=E2=80=90pages]
              SEE ALSO


> .Dq FILE
> appears at the beginning of a line.  (The
> .Ql ^
> character anchors the search at the left edge.)

I'd say beginning of a line, rather than edge (which at least
to me has an implicit meaning of >=3D2D, but searches only have
1D).
=20
> Similarly, to search for environment variables that affect execution,=20
> .Pp
> .Bd -literal -offset indent
> /
> ^ENV
> <enter>
> .Ed
> .Pp

Instead of repeating an example of a section, I'd show a very
different case here.  One that is usually very useful is to search
for command options (I use it very often).

/
   -s
<enter>

To search for the option '-s' of the command that we're reading about.
Of course this will be painful if the page is lazily written, and
Branden and I are fighting against such pages.  So maybe it would
also be useful to mention that in some pages, this will fail, and
a workaround is:

/
   [^ a-z]s
<enter>

And of course please report such buggy pages to the author.

> Of course, you can search for any string, not only headings. If the
> 1st occurrence isn't what you're looking for, you can repeat the search=

> backwards or forwards from where you are with
> .Pp
> .Bl -tag -offset indent -width nnnnn -compact
> .It n
> to repeat the last search down, toward the end
> .It N
> to repeat the last search up, toward the beginning
> .El
> .Pp
> The less utility has dozens of options that can be set on the command
> line, and changed while it's running, from the keyboard.  A helpful
> one to know about affects whether searches are case-sensitive.  To
> toggle case-sensitivity, type
> .Ql -
> indicating an option change, followed by
> .Ql i ,
> meaning
> .Em "ignore case" .
> .Pp
> The options that
> .Xr man 1
> passes to=20
> .Xr less 1
> when it starts is controlled by the configuration for
> .Xr man 1 .
> Specifically, the
> .Ev MANPAGER
> environment variable controls which pager to use, and with what options=
=2E
> .
> .Sh "Cross References"
> The weakest part of user interface to the manual is its lack of
> support for hyperlinks.

Actually, the lack of support comes from the pager, isn't it?
groff(1) (at least 1.23.0) will support hyperlinks when you use `.MR`,
which I plan to start using as soon as I see support for it in
Debian Sid, even in the form of a .tmac file for groff 1.22.4.

>  There is no way to search documents by index
> term,

What's an "index term"?  Where would such an index be stored?
In fact, there's such a search.  The index term is what man(1)
uses to find the manual page.

$ whatis mandb
mandb (8)            - create or update the manual page index caches

The only "inconvenience" compared to something like info(1) is that
you need to type what you want to read in the terminal, rather
than being "clicky".  I'm not sure I'd call that an inconvenience
myself, though.

In fact, I prefer reading several pages side-by-side, instead of
jumping from a page to the next and then going back.  info(1) is
over-engineered in that regard.  I don't think I would tell a novice
that this is a limitation of man(1).

> or jump to a section from a table of contents,

man pages are written so that one should first look at the first few
sections.  Jumping directly is not usually a good thing.  If you want
to point a user to a specific section of it, consider if the page is
unorganized, which may happen if the thing being documented isn't well
designed.

> nor any way to
> jump back and forth between related documents. Most of the time if
> you're reading the page for
> .Ql X
> and want to jump to
> .Ql Y ,
> the simplest way is just to type
> .Ql q
> to exit
> .Xr less 1
> and type
> .Ic man Ar Y Ns .

Unless you are in a console, I recommend instead having two terminal
windows side-by-side.

> Occasionally, it can be handy to type
> .Ql \&!
> to start a subprocess, and type=20
> .Ic man Ar Y
> at the prompt.

Indeed!  I didn't know this trick.  With this and MR, I think we
could really implement something very close to info(1) with the much
simpler man(1) and less(1).

>  That way, when you press
> .Ql q
> to exit
> .Ar Y ,
> you're returned to the parent process, namely
> .Xr less 1 ,
> still reading
> .Ar X .
> .
> .Sh "Organization of the Manual"
> .Pp
> The whole manual covers much more than just command-line utilities. It
> is divided into numbered sections encompassing everything from
> programming interfaces to file formats:
> .Pp
> .Bl -enum -offset indent -compact
> .It
> General Commands
> .It
> System Calls
> .It
> Library Functions
> .It
> Kernel Interfaces
> .It
> File Formats
> .It
> Games
> .It
> Miscellaneous Information
> .It
> System Management Utilities
> .It
> Kernel Internal Functions
> .El
> .Pp
> If the man page you're reading doesn't seem related to what you're
> looking for, check the section number shown in the top left corner.  If=

> that's not the section you meant to search, you can be more specific by=

> typing
> .Pp
> .D1 Ic man Ar section Ar name
> or
> .D1 Ic man Fl s Ar section Ar name
> .Pp
> For instance, there is a
> .Xr printf 1
> and
> .Xr printf 3 .
> .Xr printf 1
> is utility ,
> and
> .Xr printf 3
> is
> the famous C function.  To distinguish, you can use
> .Pp
> .D1 Ic man Li 1 printf=20
> or=20
> .D1 Ic man Li 3 printf=20
> .Pp
> If you don't know what
> .Em name
> you need, you can search by keyword with the
> .Fl k
> option or
> .Xr apropos 1 ,
> e.g.,
> .Pp
> .D1 Ic man Fl s Li 1 Fl k Li html
> .Pp
> As a new user, you'll spend most of your time with section 1.  If
> you're administering a system, you'll use section 8.  If you're
> programming with C, you'll use sections 2 and 3.  Most configuration
> files are documented in section 5.
> .
> .Sh "Read on, MacDuff"
> Exhaustive as it is \(em it's not uncommon for system to have 3000
> man pages installed \(em the manual can sometimes be daunting.  The
> reader is expected to bring the knowledge required to understand the
> subject.  For example, consider this line from the first paragraph of
> the description of
> .Xr stat 1 ,
> .Bd -ragged -offset indent
> If no argument is given,
> .Ic stat
> displays information about the file descriptor for standard input.
> .Ed
> .Pp
> To understand that sentence, the reader must know that
> .Dq argument
> is not
> .Dq quarrel ,
> what a
> .Dq "file descriptor"

It's curious that there's no manual page fd(7).  It would be an
interesting topic for a page.  Especially, since you can send
file descriptors through a Unix socket, but nothing really
explains what a file descriptor is and what limitations or
guarantees it has.

> is, and
> what
> .Dq "standard input"

For that, you can point to stdin(3).

> means.  Without that knowledge, the sentence is incomprehensible.  The
> manual doesn't explain those terms, though, because to do so would
> make it wordy and redundant.  They are basic terminology used
> throughout the manual.  Once mastered, any explanation of them would
> only get in the way of the particular information contained in the
> .Xr stat 1
> page.
> .Pp
> Remember, the
> manual is a
> .Em reference
> manual, not a tutorial or a user guide.  If you find yourself
> struggling to understand a man page, you might want to seek out
> instructional material.  Then, with some grasp of the
> .Dq "lay of the land" ,
> you can return to the manual better equipped to understand it.=20
> .
> .Sh BUGS
> The manual is meant to document, completely and correctly, what the
> user must do to make the thing do what is says it does. There is a
> name for any discrepancy between what the manual says and what the
> thing actually does: a bug.  It may be an error in the documentation
> or in the program, but it's definitely an error.  If you think you've
> found one, most free software projects welcome accurate problem
> reports in the form,
> .Dq "the manual says X but the software does Y" .

The BUGS section of manual pages doesn't really describe differences
between the documentation and the implementation, since that should
be fixed either in the implementation or in the documentation.  That
section is more appropriate for design problems of the software that
were discovered later and which are not going to be solved.  So we
document that limitation of the software so that users are aware of it.

gets(3) is a perfect example of when BUGS is appropriate.  It's just a
broken API, and can't be fixed.

Cheers,

Alex

> .
> .Sh "SEE ALSO"
> .Bd -unfilled
> .Xr less 1
> .Xr man 1
> .Xr groff 1
> .Ed
>=20
> \"  LocalWords:  Dd groff mandoc Ns enchilada nnnnn screenful ENV Ar
> \"  LocalWords:  MANPAGER enum Ic Fl printf Li html MacDuff stat
> [pins]
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------yAN61uhcIkvyxVQInUYx93fb--

--------------cBvvi2ZmdyJzhEpHVEgsVFK2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQF3JgACgkQnowa+77/
2zIXag//QgHJ7xoIK0wzw5UFf4AGPpukgKeJJrLMBqa4kfiaec3UzjdTUFpZ0kWb
pMM2Zk4dAopVjH5SPQ9iFCv6X8bR8cl8MmKqagyD2HxReMdfefst55jre3i2QIWq
6mf38Lm4xXMbm1c/8MyqGKnmq/06BI0AZD8I8qb0HMqrUd7JBj4ynpi4fgFsr+P0
far5sExhkGdfONW4pB6MQWoqeZk4NI9oJkcuMAeBFRn1P0DOU8fvWh5895PDnUWI
/EkHwi4X1lGqoNwk3XrUyfuUjGa0B2n+SoOYI7bblc9uLdP2k6iMYzNaa9Pv5/ZO
EtR+0rpP/S2LsjA/NLRzhyJvvGAqL76LthWHJ+j/YPdYddz+NUW3BwvKPs7v0Th0
zSZKk1B+b9HvI4UdrFqpgSr1S84zQiEPVxm8kBdgtNBAqfRUs2JqI+3Lw1+5MA2t
v7SKnyL9IJbWcZMeC34ggtR1m2QpO8Trqs4vxvdM8vtkPoFCDcoeXbB+CjB0RnlD
S1qm+V/nMI37xPNH9yNQ92+8cvyvyOB4j0kdYxKt2QO1t7EblbbfRwD2BdjcSAp9
qN6iuLHRjLu0eqYWz18CLCB+CqUHy9ynyX9uGg6Ceje4bTNQbDg9+dv5GmBrqMyK
wBnh9CRRTjPb7HRTksFOVsuPLI/L9k93cC7AhUcTkI9/VsRhlE0=
=q5O3
-----END PGP SIGNATURE-----

--------------cBvvi2ZmdyJzhEpHVEgsVFK2--
