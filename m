Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 920206D70E2
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 01:46:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236634AbjDDXp7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 19:45:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236585AbjDDXp6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 19:45:58 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF5D140E4
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 16:45:56 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id m8so9021550wmq.5
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 16:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680651955; x=1683243955;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pbmk2OhUy4/kqDWNEU16dB3ZESggL5yhAMJNztskYqw=;
        b=QLWqlJS4WMAzyRqhJ/1aSEX0BCP5YKpA0wXd/kenEVr6b8cYJtJ4hlrnle6J7pagH1
         G/mb3zEesX6UrVoyVCBMyvkzloNOslldqtgOmcoieuy6oRQWHHReUgL+iIhSZqy1aW92
         6KKWChlBQdhclBrHyVb8pHEc2Dyp5I7i0Zw4GxvtoCs8v7uEyrjT6kvu0vHnpTwdmy7d
         UZtL/kBIcgd6hRRGhQTn4vvRt7K8BOm3dgaLFyZ4nzHNJ5GjFwK3zt45act+pjXR5L3A
         6yHhxmz+1h53Oa/7KwBBPk7TC1w4ApBCcTep1U4Lt5apv9zbQ7zotUUM6HzUox1sVOH6
         HxEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680651955; x=1683243955;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Pbmk2OhUy4/kqDWNEU16dB3ZESggL5yhAMJNztskYqw=;
        b=uQiwMVNfMV4JhRn2PzyPK1uX8c3jDgJycrqt0d81ilCD1J/aBsDd3f4YfU0UIPtsP8
         kywlC8nCddZ+a+MNkvfYOn2houLYZx2UZqDJ9gZBm+jUQOdW0HwgwFvhVM/5O3tP1nyX
         ztdpcBC/sihUmHbawO9HKOgf3yKzaeTzTUYRsGXvGtA+06en/KIKSdNgeuRMixWE9wRn
         WJz13Hvxjl2IIPwMR7HKYdIRSLJxW3Uz5jVVTc7EhqiG1ca6VvsAJrGXTeePImK9XWWb
         QlKMxmy7SX3szlD1MzRkNswqn+prcl7bHq3TNbGdkqXV1WMHuhuUVPmgvnhClT0G63sE
         Hqtg==
X-Gm-Message-State: AAQBX9flitnxthztbA6AUOIb7/SiaCkIGbAngcSMv73BLixRkZvGL6gL
        klacZi+KzOCihC93Vdgtez+S5ZSBjRc=
X-Google-Smtp-Source: AKy350bNMPls8wY7PPsGFK885GC3fPOf6B2RbT61DQfOV8qRYToD5/6I5C5GeiGYz+AVijoTE+SxFg==
X-Received: by 2002:a7b:ca55:0:b0:3ef:61f6:d7be with SMTP id m21-20020a7bca55000000b003ef61f6d7bemr3051170wml.35.1680651954945;
        Tue, 04 Apr 2023 16:45:54 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c13-20020adffb0d000000b002e5e7ee11besm12942080wrr.94.2023.04.04.16.45.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 16:45:54 -0700 (PDT)
Message-ID: <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
Date:   Wed, 5 Apr 2023 01:45:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Playground pager lsp(1)
Content-Language: en-US
To:     Dirk Gouders <dirk@gouders.net>, linux-man@vger.kernel.org
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
Cc:     help-texinfo@gnu.org
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ghbkkgo8x8.fsf@gouders.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------U1pC3YKI5iUYKz08deo7i8tm"
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------U1pC3YKI5iUYKz08deo7i8tm
Content-Type: multipart/mixed; boundary="------------Hk073cm9v705qUCgqVtAzBWj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Dirk Gouders <dirk@gouders.net>, linux-man@vger.kernel.org
Cc: help-texinfo@gnu.org
Message-ID: <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
Subject: Re: Playground pager lsp(1)
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
In-Reply-To: <ghbkkgo8x8.fsf@gouders.net>

--------------Hk073cm9v705qUCgqVtAzBWj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Dirk.

On 3/25/23 21:47, Dirk Gouders wrote:
> Hi Alejandro,
>=20
> first of all, chances are that you consider this post as spam, because
> this list is about linux manual pages and not pagers.

No, I don't.

>  In that case
> please accept my apologies and ignore this post.
>=20
> My reasoning was that readers here have some interest in manual pages
> and therefore probably also in pagers that claim to "understand" manual=

> pages.  My hope is that even if you consider this post inappropriate yo=
u
> will perhaps suggest some more appropriate place for such discussion.
>=20
> Not long ago, I noticed a discussion [1] about what pagers can and
> cannot do.  That was interesting to me, because I am currently playing
> with a pager that claims to have a focus on manual pages.
>=20
> I will try to not waste your time and attach the manual page and a link=

> to a short (3:50) demo video.  To me it is absolutely OK should you jus=
t
> ignore this spam post, but perhaps you find lsp(1) interesting enough
> for further discussion.

If you had a Debian package, I might try it :)

Or maybe a Makefile to build from source...  What is this meson.build?

>=20
> Best regards,
>=20
> Dirk
>=20
> [1] https://www.spinics.net/lists/linux-man/index.html#24494
> [2] https://youtu.be/syGT4POgTAw
>=20
> LSP(1)                           User commands                         =
 LSP(1)
>=20
> NAME
>        lsp - list pages (or least significant pager)
>=20
> SYNOPSIS
>        lsp [options] [file_name]...
>=20
>        lsp -h
>=20
>        lsp -v
>=20
> DESCRIPTION
>        lsp is a terminal pager that assists in paging through data, usu=
ally
>        text =E2=80=94 no more(1), no less(1).

I'd say it does quite a lot more than paging...  We could say this is som=
e
info(1) equivalent for manual pages.

With the benefit that you don't need to implement such a system from scra=
tch,
but just reusing the existing tools (apropos, man, whatis, ...).  It seem=
s
something like what I would have written if I had to implement info(1) fr=
om
scratch.  I wish GNU guys had thought of this instead of developing their=

own incompatible system.

>=20
>        The given files are opened if file names are given as options.
>        Otherwise lsp assumes input from stdin and tries to read from th=
ere.
>=20
>        In addition to it=E2=80=99s ability to aid in paging through tex=
t files lsp has
>        limited knowledge about manual pages and offers some help in vie=
wing
>        them:
>=20
>        =E2=80=A2   Manual pages usually refer to other manual pages and=
 lsp allows to
>            navigate those references and to visit them as new files wit=
h the
>            ability to also navigate through all opened manual pages or =
other
>            files.

Out of curiosity, is this implemented with heuristics?  Or do you rely on=

semantic mdoc(7) macros?

If it's the first, how do you handle exit(1)?  Is it a reference, or is i=
t
just code (with the meaning exit(EXIT_FAILURE))?

If it's the second, I guess it doesn't support that in man(7), right?  At=

least until MR is released.

>=20
>            Here, lsp tries to minimize frustration caused by unavailabl=
e
>            references and verifies their existance before offering them=
 as
>            references that can be visited.

Do you mark these as broken references?  It is interesting to know that
there's a reference which you don't have installed.  It may prompt you to=

install it and read it.  When I see a broken reference, I usually find it=

with `apt-file find man3/page.3`, and then install the relevant package.

>=20
>        =E2=80=A2   In windowing environments lsp does complete resizes =
when windows
>            get resized. This means it also reloads the manual page to f=
it the
>            new window size.

Good.  This I miss it in less(1) often.  Not sure if they had any strong
reason to not support that.

>=20
>        =E2=80=A2   Search for manual pages using apropos(1); in the cur=
rent most basic
>            form it lists all known manual pages ready for text search a=
nd
>            visiting referenced manual pages.

What does it bring that `apropos * | less` can't do?  If you're going the=

of info(1) with full-blown system, it seems reasonable, but I never reall=
y
liked all that if it's just a new terminal and a command away from me.

>=20
>        =E2=80=A2   lsp has an experimental TOC mode.
>=20
>            This is a three-level folding mode trying to list only secti=
on and
>            sub-section names for quick navigation in manual pages.

Nice, and this an important feature missing feature in info(1), as I
reported recently.  :)  Maybe they are interested in something similar.

>=20
>            The TOC is created using naive heuristics which works well t=
o some
>            extend, but it might be incomplete. Users should keep that i=
n mind.

I guess the heuristics are just `^[^ ]` for SH and `^   [^ ]` for SS, rig=
ht?
I tipically use something similar for searching for command flags, and as=

you say, these just work.

Cheers,
Alex

>=20
> OPTIONS
>        All options can be given on the command line or via the environm=
ent
>        variable LSP_OPTIONS. The short version of toggles can also be u=
sed as
>        commands, e.g. you can input -i while paging through a file to t=
oggle
>        case sensitivity for searches.
>=20
>        -a, --load-apropos
>            Create an apropos pseudo-file.
>=20
>        -c, --chop-lines
>            Toggle chopping of lines that do not fit the current screen =
width.
>=20
>        -h, --help
>            Output help and exit.
>=20
>        -i, --no-case
>            Toggle case sensitivity in searches.
>=20
>        -I, --man-case
>            Turn on case sensitivity for names of manual pages.
>=20
>            This is used for example to verify references to other manua=
l
>            pages.
>=20
>        -l, --log-file
>            Specify a path to where write debugging output.
>=20
>        -n, --line-numbers
>            Toggle visible line numbers.
>=20
>        -s, --search-string
>            Specify an initial search string.
>=20
>        -v, --version
>            Output version information of lsp and exit.
>=20
>        --no-color
>            Disable colored output.
>=20
>        --reload-command
>            Specify command to load manual pages. Default is man.
>=20
>        --verify-command
>            Specify command to verify the existance of references. Defau=
lt is
>            man -w.
>=20
>        --verify-with-apropos
>            Use the entries of the apropos pseudo-file for validation of=

>            references.
>=20
> COMMANDS
>        Pg-Down / Pg-Up
>            Forward/backward one page, respectively.
>=20
>        Key-Down / Key-Up / Mouse-Wheel down/up
>            Forward/backward one line, respectively.
>=20
>        CTRL-l
>            In search mode: bring current match to top of the page.
>=20
>        ESC
>            Turn off current highlighting of matches.
>=20
>        TAB / S-TAB
>            Navigate to next/previous reference respectively.
>=20
>        ENTER
>=20
>            =E2=80=A2   If previous command was TAB or S-TAB:
>=20
>                Open reference at point, i.e. call `man <reference>'.
>=20
>            =E2=80=A2   In TOC-mode:
>=20
>                Go to currently selected position in file.
>=20
>        /
>            Start a forward search for regular expression.
>=20
>        ?
>            Start a backward search for regular expression.
>=20
>        B
>            Change buffer; choose from list.
>=20
>        a
>            Create a pseudo-file with the output of `apropos .'.
>=20
>            That pseudo-file contains short descriptions for all manual =
pages
>            known to the system; those manual pages can also be opened w=
ith TAB
>            / S-TAB and ENTER commands.
>=20
>        b
>            Backward one page
>=20
>        c
>            Close file currently paged.
>=20
>            Exits lsp if it was the only/last file being paged.
>=20
>        f
>            Forward one page
>=20
>        h
>            Show online help with command summary.
>=20
>        m
>            Open another manual page.
>=20
>        n
>            Find next match in search.
>=20
>        p
>            Find previous match in search.
>=20
>        q
>=20
>            =E2=80=A2   Exit lsp.
>=20
>            =E2=80=A2   In TOC-mode: switch back to normal view.
>=20
>            =E2=80=A2   In help-mode: close help file.
>=20
> ENVIRONMENT
>        LSP_OPTIONS
>            All command line options can also be specified using this va=
riable.
>=20
>        LSP_OPEN / LESSOPEN
>            Analogical to less(1), lsp supports an input preprocessor bu=
t
>            currently just the two basic forms:
>=20
>            One that provides the path to a replacement file and the one=
 that
>            writes the content to be paged to a pipe.
>=20
> SEE ALSO
>        apropos(1), less(1), man(1), more(1), pg(1)
>=20
> BUGS
>        Report bugs at https://github.com/dgouders/lsp
>=20
> alpha-1.0e-42                     03/25/2023                           =
 LSP(1)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Hk073cm9v705qUCgqVtAzBWj--

--------------U1pC3YKI5iUYKz08deo7i8tm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQstqoACgkQnowa+77/
2zKZ/g/4x0EQJN8h/Z+VFIIn1Eyl69l1mUT8VBn13XWbU/o+ZqrGUvL8j/3m7i7r
ePWMT23Qw2g2foa0rYvLJKonZNqEbE+I7TLMXfiLrq2RzdhTeLaIWrlNG67I5mhC
XXX2XM9DWvmwjCpp0W2NeNCKfp6enEFd0qs5mjYdLqN3BScXqKnsQ/pFkt/mhItM
yN6Ql/zUSnJlyubujV16aKxF+REGQpTjoOpnsNwFxBQnfPPbop+j0FkgIE+YQkmE
R11uFljGuoFLilVQReM3snq3vBbb1LWHpvBTH64WPVDpdS0HmJuQR7kUtLlk49d5
E3sSm7CYAmqu6Cmqw8M43XRRvWJ8B8/vLjK8Cbt3jKMdNHCFnqgIe19NZsUZL6Kc
8gZZWeb+/T5K448FGJdmEobQpdckDlirW0UKa74YlITgy8ESv7oxfIyxpMbdhqZ3
HCQEO5nDww4OiS2a7yFGC+psL4IdaRviRG60bh9CvxTw4uwQoplvhGmDL+Ocbzlv
qC2cgwlNdrEsd/OSrW/6+85CWgWSIGDekgXJCch8+lUTin9Z7rjEWB9PW+S9WB6E
yEV2E+y9cqdRScTFAfIRYJHCiNKCZvtMlACS+EdSV0tFMCgNZmo7Owq+TSOX90wi
P4rgFyq11xABK9YwhVuB7OIkdH6XC0OtKF21NHK3HIvkIYxr+Q==
=TKJp
-----END PGP SIGNATURE-----

--------------U1pC3YKI5iUYKz08deo7i8tm--
