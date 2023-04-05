Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B64C6D792F
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 12:02:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231873AbjDEKCi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 06:02:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235498AbjDEKCe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 06:02:34 -0400
Received: from mx10.gouders.net (mx10.gouders.net [202.61.206.94])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B30FDD7
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 03:02:31 -0700 (PDT)
Received: from localhost ([193.175.198.193])
        (authenticated bits=0)
        by mx10.gouders.net (8.17.1.9/8.16.1) with ESMTPSA id 335A27YZ030852
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
        Wed, 5 Apr 2023 12:02:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gouders.net; s=gnet;
        t=1680688927; bh=ag74DpgkjHSRuamjgvtTvj6OV+43ELfc9pkvtH9fNeg=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date;
        b=Qolh8Xf8j3n3HNzL6wuqGGjUOJpL0TLPySShETaDyBVsr4ZKkfk2yeTf2w0fT0oGx
         vxVSuU3yiEmS2VUZkYWKaPBmqlJNFbYjmhC13ecAlPIzUlai0y5gSQLNO0zg98V+o+
         LIqPlTn0y0XEcEUHaOPn+eVhA6T6K54VCt+hSJoc=
From:   Dirk Gouders <dirk@gouders.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, help-texinfo@gnu.org
Subject: Re: Playground pager lsp(1)
In-Reply-To: <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> (Alejandro
        Colomar's message of "Wed, 5 Apr 2023 01:45:46 +0200")
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
        <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date:   Wed, 05 Apr 2023 12:02:01 +0200
Message-ID: <ghedoy8x5y.fsf@gouders.net>
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

>> first of all, chances are that you consider this post as spam, because
>> this list is about linux manual pages and not pagers.
>
> No, I don't.

that's fine, thank you for taking the time give me feedback.

>> I will try to not waste your time and attach the manual page and a link
>> to a short (3:50) demo video.  To me it is absolutely OK should you just
>> ignore this spam post, but perhaps you find lsp(1) interesting enough
>> for further discussion.
>
> If you had a Debian package, I might try it :)
>
> Or maybe a Makefile to build from source...  What is this meson.build?

If you want to take a look at it: there is a branch "next" which you
might prefer as it closer resembles my current work.  There is a new
toggle "-V" that can be used to completely turn off validation.

I tried to assemble a Makefile that might work without a configure
script and attach it to the end.  A prefix /usr is the default value, if
your system prefers /usr/local you can use `make prefix=3D/usr/local
install`.  I hope I prepared some reasonable Makefile...

Concerning meson.build: I decided to have a look at meson as the
autobuild tool for lsp.  I am just gathering experiences with it and if
you have meson(1) installed you could use thes steps to (un)install lsp:

$ # cd to lsp directory
$ meson setup --prefix=3D/usr builddir ; cd builddir
$ ninja install # or uninstall

>>        =E2=80=A2   Manual pages usually refer to other manual pages and =
lsp allows to
>>            navigate those references and to visit them as new files with=
 the
>>            ability to also navigate through all opened manual pages or o=
ther
>>            files.
>
> Out of curiosity, is this implemented with heuristics?  Or do you rely on
> semantic mdoc(7) macros?

This is purely based on heuristics (regex) which is one reason for
validation of the found references.

> If it's the first, how do you handle exit(1)?  Is it a reference, or is it
> just code (with the meaning exit(EXIT_FAILURE))?

exit(1) gets recognized as a possible reference but validation will fail.

> If it's the second, I guess it doesn't support that in man(7), right?  At
> least until MR is released.

>>=20
>>            Here, lsp tries to minimize frustration caused by unavailable
>>            references and verifies their existance before offering them =
as
>>            references that can be visited.
>
> Do you mark these as broken references?  It is interesting to know that
> there's a reference which you don't have installed.  It may prompt you to
> install it and read it.  When I see a broken reference, I usually find it
> with `apt-file find man3/page.3`, and then install the relevant package.

No, broken references aren't marked.  Usually those unavailable
references make sense, e.g. if a manual page references some program
that not everyone uses.

One example that I couldn't resolve so far is a reference to
getconf(1) for example in fpatchconf(3).  Up to now I was not able to
find out which package contains getconf(1)...

>>=20
>>        =E2=80=A2   In windowing environments lsp does complete resizes w=
hen windows
>>            get resized. This means it also reloads the manual page to fi=
t the
>>            new window size.
>
> Good.  This I miss it in less(1) often.  Not sure if they had any strong
> reason to not support that.

Unfortunately, info(1) also doesn't do full resizes (on my system).

>>=20
>>        =E2=80=A2   Search for manual pages using apropos(1); in the curr=
ent most basic
>>            form it lists all known manual pages ready for text search and
>>            visiting referenced manual pages.
>
> What does it bring that `apropos * | less` can't do?  If you're going the
> of info(1) with full-blown system, it seems reasonable, but I never really
> liked all that if it's just a new terminal and a command away from me.

You get a pseudo-file from where you can reach any manual page on the
system.  Originally I thought this to help novice users but since lsp is
my system's PAGER I use it more often than expected.  I'm missing the
ability to give keywords to apropos but that's just a matter of time to
get fixed.

>>=20
>>        =E2=80=A2   lsp has an experimental TOC mode.
>>=20
>>            This is a three-level folding mode trying to list only sectio=
n and
>>            sub-section names for quick navigation in manual pages.
>
> Nice, and this an important feature missing feature in info(1), as I
> reported recently.  :)  Maybe they are interested in something similar.
>
>>=20
>>            The TOC is created using naive heuristics which works well to=
 some
>>            extend, but it might be incomplete. Users should keep that in=
 mind.
>
> I guess the heuristics are just `^[^ ]` for SH and `^   [^ ]` for SS, rig=
ht?
> I tipically use something similar for searching for command flags, and as
> you say, these just work.

Yes, that is correct.  Only level 2 (0-based) does some additional
look-ahead.

Cheers,

Dirk


--=-=-=
Content-Type: application/octet-stream
Content-Disposition: attachment; filename=Makefile.new
Content-Transfer-Encoding: base64
Content-Description: Makefile

dmVyc2lvbj1cIiQoc2hlbGwgY2F0IC52ZXJzaW9uKVwiCkNGTEFHUyA6PSAkKHNoZWxsIHBrZy1j
b25maWcgLS1jZmxhZ3MgbmN1cnNlc3cpCkNGTEFHUyArPSAtRExTUF9WRVJTSU9OPSQodmVyc2lv
bikKTERGTEFHUyA6PSAkKHNoZWxsIHBrZy1jb25maWcgLS1saWJzIG5jdXJzZXN3KQoKaWZlcSAo
JChwcmVmaXgpLCkKCXByZWZpeCA6PSAvdXNyCmVuZGlmCgpsc3A6IGxzcC5jCglnY2MgJChDRkxB
R1MpICQoTERGTEFHUykgLW8gJEAgJDwKCmRvYy9sc3AuMTogZG9jL2xzcC5hZG9jCglhMnggLS1k
b2N0eXBlIG1hbnBhZ2UgLS1mb3JtYXQgbWFucGFnZSAtYSBsc3AtdmVyc2lvbj0kKHZlcnNpb24p
ICQ8CgouUEhPTlk6IHVuaW5zdGFsbCBpbnN0YWxsCgppbnN0YWxsOiBsc3AgZG9jL2xzcC4xIGRv
Yy9sc3AtaGVscC4xCglpbnN0YWxsIGxzcCAkKHByZWZpeCkvYmluCglpbnN0YWxsIGRvYy9sc3Au
MSBkb2MvbHNwLWhlbHAuMSAkKHByZWZpeCkvc2hhcmUvbWFuL21hbjEvCgp1bmluc3RhbGw6Cgly
bSAkKHByZWZpeCkvYmluL2xzcAoJcm0gJChwcmVmaXgpL3NoYXJlL21hbi9tYW4xL2xzcHssLWhl
bHB9LjEK
--=-=-=--
