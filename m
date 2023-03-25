Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAE3C6C90C3
	for <lists+linux-man@lfdr.de>; Sat, 25 Mar 2023 21:47:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbjCYUrZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Mar 2023 16:47:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjCYUrZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Mar 2023 16:47:25 -0400
X-Greylist: delayed 588 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 25 Mar 2023 13:47:23 PDT
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D36459C3
        for <linux-man@vger.kernel.org>; Sat, 25 Mar 2023 13:47:23 -0700 (PDT)
Received: from localhost (ip-109-42-176-176.web.vodafone.de [109.42.176.176])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 32PKlKlt013934
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Sat, 25 Mar 2023 21:47:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1679777241; bh=Lqr+cjrvBQ128TETdcjoM0vkXz0vYuFFUMe9WHbvCL8=;
        h=From:To:Subject:References:Date;
        b=Feo4diBSiUmqFfnaJeg+wR7897hRn8buoiEMjxh33BdUu0VBmWvPljegaNtuVJ6ml
         8PpBRvrtI5zYuDZ7WACUVWCmEhWLFVKT4bnPFOEDptY+8RohHfcRm1T1Znc+JlzkDU
         HxKnnUm1qObStYD3UovGY1oNeb7G1IxWayD1TvQI=
From:   Dirk Gouders <dirk@gouders.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Playground pager lsp(1)
References: <ghileoo9dk.fsf@gouders.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Sat, 25 Mar 2023 21:47:15 +0100
Message-ID: <ghbkkgo8x8.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

first of all, chances are that you consider this post as spam, because
this list is about linux manual pages and not pagers.  In that case
please accept my apologies and ignore this post.

My reasoning was that readers here have some interest in manual pages
and therefore probably also in pagers that claim to "understand" manual
pages.  My hope is that even if you consider this post inappropriate you
will perhaps suggest some more appropriate place for such discussion.

Not long ago, I noticed a discussion [1] about what pagers can and
cannot do.  That was interesting to me, because I am currently playing
with a pager that claims to have a focus on manual pages.

I will try to not waste your time and attach the manual page and a link
to a short (3:50) demo video.  To me it is absolutely OK should you just
ignore this spam post, but perhaps you find lsp(1) interesting enough
for further discussion.

Best regards,

Dirk

[1] https://www.spinics.net/lists/linux-man/index.html#24494
[2] https://youtu.be/syGT4POgTAw

LSP(1)                           User commands                          LSP=
(1)

NAME
       lsp - list pages (or least significant pager)

SYNOPSIS
       lsp [options] [file_name]...

       lsp -h

       lsp -v

DESCRIPTION
       lsp is a terminal pager that assists in paging through data, usually
       text =E2=80=94 no more(1), no less(1).

       The given files are opened if file names are given as options.
       Otherwise lsp assumes input from stdin and tries to read from there.

       In addition to it=E2=80=99s ability to aid in paging through text fi=
les lsp has
       limited knowledge about manual pages and offers some help in viewing
       them:

       =E2=80=A2   Manual pages usually refer to other manual pages and lsp=
 allows to
           navigate those references and to visit them as new files with the
           ability to also navigate through all opened manual pages or other
           files.

           Here, lsp tries to minimize frustration caused by unavailable
           references and verifies their existance before offering them as
           references that can be visited.

       =E2=80=A2   In windowing environments lsp does complete resizes when=
 windows
           get resized. This means it also reloads the manual page to fit t=
he
           new window size.

       =E2=80=A2   Search for manual pages using apropos(1); in the current=
 most basic
           form it lists all known manual pages ready for text search and
           visiting referenced manual pages.

       =E2=80=A2   lsp has an experimental TOC mode.

           This is a three-level folding mode trying to list only section a=
nd
           sub-section names for quick navigation in manual pages.

           The TOC is created using naive heuristics which works well to so=
me
           extend, but it might be incomplete. Users should keep that in mi=
nd.

OPTIONS
       All options can be given on the command line or via the environment
       variable LSP_OPTIONS. The short version of toggles can also be used =
as
       commands, e.g. you can input -i while paging through a file to toggle
       case sensitivity for searches.

       -a, --load-apropos
           Create an apropos pseudo-file.

       -c, --chop-lines
           Toggle chopping of lines that do not fit the current screen widt=
h.

       -h, --help
           Output help and exit.

       -i, --no-case
           Toggle case sensitivity in searches.

       -I, --man-case
           Turn on case sensitivity for names of manual pages.

           This is used for example to verify references to other manual
           pages.

       -l, --log-file
           Specify a path to where write debugging output.

       -n, --line-numbers
           Toggle visible line numbers.

       -s, --search-string
           Specify an initial search string.

       -v, --version
           Output version information of lsp and exit.

       --no-color
           Disable colored output.

       --reload-command
           Specify command to load manual pages. Default is man.

       --verify-command
           Specify command to verify the existance of references. Default is
           man -w.

       --verify-with-apropos
           Use the entries of the apropos pseudo-file for validation of
           references.

COMMANDS
       Pg-Down / Pg-Up
           Forward/backward one page, respectively.

       Key-Down / Key-Up / Mouse-Wheel down/up
           Forward/backward one line, respectively.

       CTRL-l
           In search mode: bring current match to top of the page.

       ESC
           Turn off current highlighting of matches.

       TAB / S-TAB
           Navigate to next/previous reference respectively.

       ENTER

           =E2=80=A2   If previous command was TAB or S-TAB:

               Open reference at point, i.e. call `man <reference>'.

           =E2=80=A2   In TOC-mode:

               Go to currently selected position in file.

       /
           Start a forward search for regular expression.

       ?
           Start a backward search for regular expression.

       B
           Change buffer; choose from list.

       a
           Create a pseudo-file with the output of `apropos .'.

           That pseudo-file contains short descriptions for all manual pages
           known to the system; those manual pages can also be opened with =
TAB
           / S-TAB and ENTER commands.

       b
           Backward one page

       c
           Close file currently paged.

           Exits lsp if it was the only/last file being paged.

       f
           Forward one page

       h
           Show online help with command summary.

       m
           Open another manual page.

       n
           Find next match in search.

       p
           Find previous match in search.

       q

           =E2=80=A2   Exit lsp.

           =E2=80=A2   In TOC-mode: switch back to normal view.

           =E2=80=A2   In help-mode: close help file.

ENVIRONMENT
       LSP_OPTIONS
           All command line options can also be specified using this variab=
le.

       LSP_OPEN / LESSOPEN
           Analogical to less(1), lsp supports an input preprocessor but
           currently just the two basic forms:

           One that provides the path to a replacement file and the one that
           writes the content to be paged to a pipe.

SEE ALSO
       apropos(1), less(1), man(1), more(1), pg(1)

BUGS
       Report bugs at https://github.com/dgouders/lsp

alpha-1.0e-42                     03/25/2023                            LSP=
(1)
