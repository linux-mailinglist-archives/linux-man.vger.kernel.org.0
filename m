Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9F3923D2CE
	for <lists+linux-man@lfdr.de>; Wed,  5 Aug 2020 22:16:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727808AbgHEUQU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Aug 2020 16:16:20 -0400
Received: from sdaoden.eu ([217.144.132.164]:37272 "EHLO sdaoden.eu"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726204AbgHEQS5 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 5 Aug 2020 12:18:57 -0400
X-Greylist: delayed 2500 seconds by postgrey-1.27 at vger.kernel.org; Wed, 05 Aug 2020 12:18:57 EDT
Received: by sdaoden.eu (Postfix, from userid 1000)
        id F37B016056; Wed,  5 Aug 2020 15:51:11 +0200 (CEST)
Date:   Wed, 05 Aug 2020 15:51:10 +0200
From:   Steffen Nurpmeso <steffen@sdaoden.eu>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     "Carlos O'Donell" <carlos@redhat.com>,
        Zack Weinberg <zackw@panix.com>,
        Florian Weimer <fweimer@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        Andrew Josey <ajosey@opengroup.org>,
        Joseph Myers <joseph@codesourcery.com>,
        linux-man <linux-man@vger.kernel.org>,
        Geoff Clare <gwc@opengroup.org>,
        Elliot Hughes <enh@google.com>,
        libc-alpha <libc-alpha@sourceware.org>,
        austin-group-l@opengroup.org
Subject: Re: Pseudoterminal terminology in POSIX
Message-ID: <20200805135110.6Sj7F%steffen@sdaoden.eu>
In-Reply-To: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
Mail-Followup-To: Michael Kerrisk <mtk.manpages@gmail.com>,
 "Carlos O'Donell" <carlos@redhat.com>, Zack Weinberg <zackw@panix.com>,
 Florian Weimer <fweimer@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>,
 Andrew Josey <ajosey@opengroup.org>,
 Joseph Myers <joseph@codesourcery.com>,
 linux-man <linux-man@vger.kernel.org>, Geoff Clare <gwc@opengroup.org>,
 Elliot Hughes <enh@google.com>, libc-alpha <libc-alpha@sourceware.org>,
 austin-group-l@opengroup.org
User-Agent: s-nail v14.9.19-99-g19301483-dirty
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Michael Kerrisk via austin-group-l at The Open Group wrote in
 <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>:
 |Elliot Hughes and I both noticed a point from "Minutes of the 3rd August \
 |2020
 |Teleconference":
 ..
 |On Tue, Aug 4, 2020 at 5:52 PM Andrew Josey <ajosey@opengroup.org> wrote:
 ...
 |> * General news
 |>
 |> We discussed terminology usage, in particuler terms such as
 |> master/slave, blacklist/whitelist.  It was agreed some terminology
 |> for pseudo-terminals could be better described using more functionally
 |> descriptive terms, but the details of this are left to a future bug
 |> report.  Andrew and Geoff took an action to investigate further
 |> and come back with an analysis.
 ...
 |The essence of the idea is simple. Let's not invent completely new
 |terms, but rather rework existing (familiar) terminology a little, as
 |follows:
 |
 |    pseudoterminal (device) ==> "pseudoterminal device pair"
 |
 |   slave ==> "terminal device"
 |           (or "terminal end of the pseudoterminal device pair")
 |
 |    master ==> "pseudoterminal device"
 |           (or "pseudoterminal end of the pseudoterminal device pair")

How about ancillary or accessory terminal device for the slave.
Having said that love is on its way out, rather than in, and
cosmetics on the language side do not do anything against the
dramatical and increasing hardening of the actual facts.  Likely
quite the opposite.  That is just my point of view, of course.

 |The resulting language (as it appears in the proposed changes for the
 |Linux manual pages) is reasonably clear, albeit a little clunky in
 |places (wordings like "the (pseudo)terminal end of the pseudoterminal
 |device pair" are clear, but a little verbose).

Yes.  It is terrible and absolutely unclear (to me).  And
presumely i would become dazed if i would read an entire manual
with the above terms.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
