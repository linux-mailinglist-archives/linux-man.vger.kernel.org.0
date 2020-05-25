Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FDBB1E0C30
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 12:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389856AbgEYKwP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 06:52:15 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:20465 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S2389484AbgEYKwP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 06:52:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1590403933;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=FEKOOTgqpvlMsa/3ZbSMrbUzuAtJR/7EOgIm3PIV96I=;
        b=AUjv4fYYYr/GSD2OS/w2rYH0z9mjLmBeEBxnw82uroRWEItyaxeVxQbDqQ9/zj5vbz6iCd
        mKuUnfBx8RAEHqXhWQyRzkFRtiAoiOpZDXPIb3SMIc1Oh9YdSBFdcjx0jT0f1qvlpSbJ+W
        wRzmd8ZrbU/a+UveHsBloD1hhOyFevY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-322-wG1tohVsOUeLwBe_4cSO3Q-1; Mon, 25 May 2020 06:52:04 -0400
X-MC-Unique: wG1tohVsOUeLwBe_4cSO3Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4BCA6460;
        Mon, 25 May 2020 10:52:03 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-112-121.ams2.redhat.com [10.36.112.121])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A1F519D7C;
        Mon, 25 May 2020 10:52:02 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     "Carlos O'Donell via Libc-alpha" <libc-alpha@sourceware.org>,
        Martin Sebor <msebor@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: The GNU C Library Manual - Authoritative or not?
References: <501e5e0c-f293-b838-5106-764c6b18e061@gmail.com>
        <875300cf-92ca-c115-c42d-19dda5de5a4a@redhat.com>
        <87ftbs3zb8.fsf@oldenburg2.str.redhat.com>
        <CALxWeYqN+4GeTtE2Cf0ZtHn+eFZa4P9fh709qqXnyqd+nGUF=g@mail.gmail.com>
Date:   Mon, 25 May 2020 12:52:00 +0200
In-Reply-To: <CALxWeYqN+4GeTtE2Cf0ZtHn+eFZa4P9fh709qqXnyqd+nGUF=g@mail.gmail.com>
        (Michael Kerrisk's message of "Mon, 25 May 2020 11:04:31 +0200")
Message-ID: <87d06sxp67.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk:

> Each year I come into contact with quite a large number of developers
> (some few hundred each year) in many locations in my day job (or, at
> least what used to be my day job until COVID-19 landed), and I think
> *very* few of them are aware of the existence of the glibc manual.
> Most are aware of manual pages. (However, they mostly aren't aware
> that there is an project entity called "Linux man-pages"; rather, they
> just know that they get a pile of manual pages on their systems, and
> many of them consult those pages.)

Thanks for sharing your perspective.

> And then there is the "info" thing. As a complete document (i.e.,
> PDF), the glibc manual is quite a handsome document with a lot of good
> information, but not the thing one wants to reach for when facing a
> specific API problem. What is one then left with? "info". I think in
> all of the years that I have been around Linux, I cannot recall
> meeting anyone who had a kind word to say about this format/interface.
> People generally don't understand how to navigate in "info", and I
> think the whole idea of hyperlinking in a textual UI is one that
> doesn't work well from a usability perspective. https://xkcd.com/912/
> is funny for a reason.

Even for Emacs users, I suspect that many more are aware of =E2=80=9CM-x ma=
n RET
RET=E2=80=9D than those that are aware of =E2=80=9CC-h S=E2=80=9D, which ju=
mps right to the
function documentation in the glibc manual.  I have not figured out how
this actually works in practice.  I suspect it uses the Texinfo function
index.  Unfortunately, quite a bit of useful information in the Texinfo
sources is not visible in rendered versions.

One could try to get something similar to =E2=80=9CC-h S=E2=80=9D into Visu=
al Studio
Code and other IDEs.  But I'm not convinced this is a good use of
resources.  Even if I can remember the Emacs command, I usually need the
manual pages because I'm more interested in the system call
documentation.

> And on that last point, I circle back to an issue that I've banged on
> about before. The CLA. It's just a huge barrier to contribution (and,
> I remain convinced, A Bad Thing [TM], even if its motivation is well
> intentioned [6]). Just in the last day or two, there's someone doing
> what seems natural to so many in this (FOSS) world:
>
> https://lwn.net/ml/libc-alpha/20200523191809.19663-1-aurelien.aptel%40gma=
il.com/
>
> I presume this patch submitter has no idea of the existence of the
> CLA. Once that person learns of it, will they bother doing the
> paperwork, or will they just never bother submitting another patch? I
> know which way I would bet my money.

I still haven't given up hope entirely for relicensing the manual under
a license that is compatible with Debian's requirements, and also making
it easier to move code and documentation between the manual and the
implementation itself.  The current copyright assignment procedure means
that there is no legal or technical obstacle to relicensing, one has
simply to convince the single copyright owner.

Thanks,
Florian

