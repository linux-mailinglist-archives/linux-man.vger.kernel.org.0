Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8FD06D8F02
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 08:01:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbjDFGBe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Apr 2023 02:01:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234651AbjDFGBc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Apr 2023 02:01:32 -0400
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D8195B8E
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 23:01:30 -0700 (PDT)
Received: from localhost (ip-109-40-241-98.web.vodafone.de [109.40.241.98])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 33661KWm002916
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Thu, 6 Apr 2023 08:01:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1680760882; bh=p3fwYG/i8i5Sjl+IXbKUV6P6viv1y8Y7dbaalRPx0ZI=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date;
        b=YQpbLmS3tDiIeydKqSAreHiy/9RZ4dCpqU2a0NDKfLJrsurf5WOhnLhh1Mnh78kqS
         c70nhFVOEyFVNrrKiYerTB7UzBUqdgDhELKMqyNyaR7Uv6jzDlEaubRxmJFxXti8SM
         4mZe/S6luGkzwHb+5tugJzwSGD3VB0E/F7QfhX6c=
From:   Dirk Gouders <dirk@gouders.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, help-texinfo@gnu.org
Subject: Re: Playground pager lsp(1)
In-Reply-To: <8d828572-cdcc-8b19-d5d4-1256831d7183@gmail.com> (Alejandro
        Colomar's message of "Thu, 6 Apr 2023 03:31:47 +0200")
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
        <ghedoy8x5y.fsf@gouders.net>
        <8d828572-cdcc-8b19-d5d4-1256831d7183@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Thu, 06 Apr 2023 08:01:15 +0200
Message-ID: <ghh6ttzh04.fsf@gouders.net>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Alejandro Colomar <alx.manpages@gmail.com> writes:

>> If you want to take a look at it: there is a branch "next" which you
>> might prefer as it closer resembles my current work.  There is a new
>> toggle "-V" that can be used to completely turn off validation.
>>=20
>> I tried to assemble a Makefile that might work without a configure
>> script and attach it to the end.  A prefix /usr is the default value, if
>> your system prefers /usr/local you can use `make prefix=3D/usr/local
>
> The default prefix in GNU should be /usr/local
> <https://www.gnu.org/prep/standards/html_node/Directory-Variables.html>
>
>> install`.  I hope I prepared some reasonable Makefile...
>
> I'll have a look.

Perhaps, I messed up the Makefile.  Some time ago, I test-compiled lsp
on Rasbpian and CentOS and -lutil was missing.  That got fixed in
meson.build but not in the Makefile I sent you.  I'll attach a new
one -- this time as plain text ;-)

>>> If it's the first, how do you handle exit(1)?  Is it a reference, or is=
 it
>>> just code (with the meaning exit(EXIT_FAILURE))?
>>=20
>> exit(1) gets recognized as a possible reference but validation will fail.
>
> `man 'exit(1)'` works for me.  It brings the exit(1posix) page, from
> manpages-posix.

Oh yes, I didn't have the POSIX manual pages installed -- now, exit(1)
gets recognized as a reference.  Thank you.

>> No, broken references aren't marked.  Usually those unavailable
>> references make sense, e.g. if a manual page references some program
>> that not everyone uses.
>>=20
>> One example that I couldn't resolve so far is a reference to
>> getconf(1) for example in fpatchconf(3).  Up to now I was not able to
>> find out which package contains getconf(1)...
>
> $ apt-file find /getconf.1
> glibc-source: /usr/src/glibc/debian/local/manpages/getconf.1
> libc-bin: /usr/share/man/man1/getconf.1.gz
> manpages-fr: /usr/share/man/fr/man1/getconf.1.gz
>
> It's in libc-bin.
>
> BTW, did you mean fpathconf(3)?

Yes, that was a typo.  I'm on Gentoo and there is no libc-bin.  But now
I have a direction to search.  Thank you, again.

>
>>=20
>>>>
>>>>        =E2=80=A2   In windowing environments lsp does complete resizes=
 when windows
>>>>            get resized. This means it also reloads the manual page to =
fit the
>>>>            new window size.
>>>
>>> Good.  This I miss it in less(1) often.  Not sure if they had any strong
>>> reason to not support that.
>>=20
>> Unfortunately, info(1) also doesn't do full resizes (on my system).
>>=20
>>>>
>>>>        =E2=80=A2   Search for manual pages using apropos(1); in the cu=
rrent most basic
>>>>            form it lists all known manual pages ready for text search =
and
>>>>            visiting referenced manual pages.
>>>
>>> What does it bring that `apropos * | less` can't do?  If you're going t=
he
>>> of info(1) with full-blown system, it seems reasonable, but I never rea=
lly
>>> liked all that if it's just a new terminal and a command away from me.
>>=20
>> You get a pseudo-file from where you can reach any manual page on the
>> system.  Originally I thought this to help novice users but since lsp is
>> my system's PAGER I use it more often than expected.  I'm missing the
>> ability to give keywords to apropos but that's just a matter of time to
>> get fixed.
>
> I guess that's a matter of preferring navigation in some interactive
> program (to me, info(1) style), vs standalone simple commands where you
> first find what you want, then run it.
>
> I don't find that magic much more comfortable than
>
> $ apropos sysctl
> ... oh, I find many freebsd pages, let's grep them out ...
> $ apropos sysctl | grep -v freebsd
> ... hmm, let's see system ...
> $ apropos system | grep -v freebsd
> ... okay, now this shows a lot of stuff, let's remove man1 ...
> $ apropos system | grep -v -e freebsd -e '(1'
> ... I don't want systemd either ...
> $ apropos system | grep -v -e freebsd -e '(1' -e systemd
> ... let's sort by section and navigate through that list ...
> $ apropos system | grep -v -e freebsd -e '(1' -e systemd | sort -k2 | less
>
> Find some pages that may be interesting, note them down, and open
> them one by one, in different tabs, until I find I wanted to read
> proc(5), and close everything else.

As I wrote: I (also) had novice users in mind when I implented the
Apropos pseudo-file (it can also be used for verification, that's
another use of it).  I often watch novice users getting frustrated about
all the typing that is needed to get useful results.  I know, first of
all, they need to train their "keyboard abilities" but some help here
and there could perhaps help to keep them on board or minimize
frustration...

> Which brings us to a valid point Eli raised.  Some pages are an
> unreadable mess, and I think proc(5) is one of those that needs
> a big split into smaller pages such as proc_pid_attr(5).

Yes, one of the points where I thought pagers with additional
features could help...

Cheers,

Dirk


--=-=-=
Content-Type: text/plain
Content-Disposition: attachment; filename=Makefile
Content-Description: Makefile for lsp(1)

version=\"$(shell cat .version)\"
CFLAGS := $(shell pkg-config --cflags ncursesw)
CFLAGS += -DLSP_VERSION=$(version)
LDFLAGS := $(shell pkg-config --libs ncursesw)
LDFLAGS += -lutil

ifeq ($(prefix),)
	prefix := /usr/local
endif

lsp: lsp.c
	gcc $(CFLAGS) $(LDFLAGS) -o $@ $<

doc/lsp.1: doc/lsp.adoc
	a2x --doctype manpage --format manpage -a lsp-version=$(version) $<

.PHONY: uninstall install

install: lsp doc/lsp.1 doc/lsp-help.1
	install lsp $(prefix)/bin
	install doc/lsp.1 doc/lsp-help.1 $(prefix)/share/man/man1/

uninstall:
	rm $(prefix)/bin/lsp
	rm $(prefix)/share/man/man1/lsp{,-help}.1

--=-=-=--
