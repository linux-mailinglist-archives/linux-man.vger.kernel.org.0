Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EB3D6D7F47
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 16:24:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237845AbjDEOYY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 10:24:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237766AbjDEOYX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 10:24:23 -0400
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D76D2E4A
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 07:24:02 -0700 (PDT)
Received: from smtp2.mailbox.org (unknown [10.196.197.2])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4Ps6LX2xcfz9sQ3;
        Wed,  5 Apr 2023 16:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aarsen.me; s=MBO0001;
        t=1680704612;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=188OGn/f0GXoRPub6W/h+EzbOZy+dsHMTe4HFOKxMcM=;
        b=OG70EKoQtTrSShemf1ZBBXUILWyXbhJcMX+eWeAFMw/8POOCgi0dk0Yjec8PS4mHOQzN6W
        0cl1u+wz1ite+FCHKmvh9MZQF6RAftoVTh8YIn4fkTzlcE1UmBz+qm4JoPtjX/otvgkOOW
        uMGoq9Oup/ghcz1vEtjwPYhZPqwH/A4N85JiUlYlWg6oG9RzrGMX8pOngjyR5UiuF1Zxn+
        LXNTB7eCPbKhRo5Ap4V5kXxqk9W6teYLsSTnMNbCM/rFseATyuNZw6H6t9MQ/PxkA8bhRi
        hvlkQFjLX6qum+mi6MNTDOX3rKq1cxVnFNzoMLEHgW4hBHjeHwEWiv6/x6gL4g==
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <ghedoy8x5y.fsf@gouders.net>
From:   Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
To:     Dirk Gouders <dirk@gouders.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, help-texinfo@gnu.org
Subject: Re: Playground pager lsp(1)
Date:   Wed, 05 Apr 2023 16:19:53 +0200
In-reply-to: <ghedoy8x5y.fsf@gouders.net>
Message-ID: <87y1n6o1b3.fsf@aarsen.me>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
X-Spam-Status: No, score=-0.9 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Dirk Gouders <dirk@gouders.net> writes:

> Hi Alex,
>
>>> first of all, chances are that you consider this post as spam, because
>>> this list is about linux manual pages and not pagers.
>>
>> No, I don't.
>
> that's fine, thank you for taking the time give me feedback.
>
>>> I will try to not waste your time and attach the manual page and a link
>>> to a short (3:50) demo video.  To me it is absolutely OK should you just
>>> ignore this spam post, but perhaps you find lsp(1) interesting enough
>>> for further discussion.
>>
>> If you had a Debian package, I might try it :)
>>
>> Or maybe a Makefile to build from source...  What is this meson.build?
>
> If you want to take a look at it: there is a branch "next" which you
> might prefer as it closer resembles my current work.  There is a new
> toggle "-V" that can be used to completely turn off validation.
>
> I tried to assemble a Makefile that might work without a configure
> script and attach it to the end.  A prefix /usr is the default value, if
> your system prefers /usr/local you can use `make prefix=3D/usr/local
> install`.  I hope I prepared some reasonable Makefile...
>
> Concerning meson.build: I decided to have a look at meson as the
> autobuild tool for lsp.  I am just gathering experiences with it and if
> you have meson(1) installed you could use thes steps to (un)install lsp:
>
> $ # cd to lsp directory
> $ meson setup --prefix=3D/usr builddir ; cd builddir
> $ ninja install # or uninstall
>
>>>        =E2=80=A2   Manual pages usually refer to other manual pages and=
 lsp allows to
>>>            navigate those references and to visit them as new files wit=
h the
>>>            ability to also navigate through all opened manual pages or =
other
>>>            files.
>>
>> Out of curiosity, is this implemented with heuristics?  Or do you rely on
>> semantic mdoc(7) macros?
>
> This is purely based on heuristics (regex) which is one reason for
> validation of the found references.
>
>> If it's the first, how do you handle exit(1)?  Is it a reference, or is =
it
>> just code (with the meaning exit(EXIT_FAILURE))?
>
> exit(1) gets recognized as a possible reference but validation will fail.
>
>> If it's the second, I guess it doesn't support that in man(7), right?  At
>> least until MR is released.
>
>>>=20
>>>            Here, lsp tries to minimize frustration caused by unavailable
>>>            references and verifies their existance before offering them=
 as
>>>            references that can be visited.
>>
>> Do you mark these as broken references?  It is interesting to know that
>> there's a reference which you don't have installed.  It may prompt you to
>> install it and read it.  When I see a broken reference, I usually find it
>> with `apt-file find man3/page.3`, and then install the relevant package.
>
> No, broken references aren't marked.  Usually those unavailable
> references make sense, e.g. if a manual page references some program
> that not everyone uses.
>
> One example that I couldn't resolve so far is a reference to
> getconf(1) for example in fpatchconf(3).  Up to now I was not able to
> find out which package contains getconf(1)...
>
>>>=20
>>>        =E2=80=A2   In windowing environments lsp does complete resizes =
when windows
>>>            get resized. This means it also reloads the manual page to f=
it the
>>>            new window size.
>>
>> Good.  This I miss it in less(1) often.  Not sure if they had any strong
>> reason to not support that.
>
> Unfortunately, info(1) also doesn't do full resizes (on my system).

Do you mean the info pages' column limit or that the viewer itself
doesn't resize to fit the frame?  The latter would be a bug.

>>>=20
>>>        =E2=80=A2   Search for manual pages using apropos(1); in the cur=
rent most basic
>>>            form it lists all known manual pages ready for text search a=
nd
>>>            visiting referenced manual pages.
>>
>> What does it bring that `apropos * | less` can't do?  If you're going the
>> of info(1) with full-blown system, it seems reasonable, but I never real=
ly
>> liked all that if it's just a new terminal and a command away from me.
>
> You get a pseudo-file from where you can reach any manual page on the
> system.  Originally I thought this to help novice users but since lsp is
> my system's PAGER I use it more often than expected.  I'm missing the
> ability to give keywords to apropos but that's just a matter of time to
> get fixed.
>
>>>=20
>>>        =E2=80=A2   lsp has an experimental TOC mode.
>>>=20
>>>            This is a three-level folding mode trying to list only secti=
on and
>>>            sub-section names for quick navigation in manual pages.
>>
>> Nice, and this an important feature missing feature in info(1), as I
>> reported recently.  :)  Maybe they are interested in something similar.
>>
>>>=20
>>>            The TOC is created using naive heuristics which works well t=
o some
>>>            extend, but it might be incomplete. Users should keep that i=
n mind.
>>
>> I guess the heuristics are just `^[^ ]` for SH and `^   [^ ]` for SS, ri=
ght?
>> I tipically use something similar for searching for command flags, and as
>> you say, these just work.
>
> Yes, that is correct.  Only level 2 (0-based) does some additional
> look-ahead.
>
> Cheers,
>
> Dirk
>
> [2. Makefile --- application/octet-stream; Makefile.new]...


=2D-=20
Arsen Arsenovi=C4=87

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iIYEARYKAC4WIQT+4rPRE/wAoxYtYGFSwpQwHqLEkwUCZC2EYBAcYXJzZW5AYWFy
c2VuLm1lAAoJEFLClDAeosSTyUwA/2v+faXYEKw5iTxCvoj8vXetdpVP2uHhZsPv
MLBFVbTAAP9HZJKO7WwpROA5O8kWbUdKVDJIcrvMeLkks/HiEdpmBw==
=v3mx
-----END PGP SIGNATURE-----
--=-=-=--
