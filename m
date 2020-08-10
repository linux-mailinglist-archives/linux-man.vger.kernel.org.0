Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66369240CF5
	for <lists+linux-man@lfdr.de>; Mon, 10 Aug 2020 20:27:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727982AbgHJS1U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Aug 2020 14:27:20 -0400
Received: from l2mail1.panix.com ([166.84.1.75]:62676 "EHLO l2mail1.panix.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728052AbgHJS1S (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 10 Aug 2020 14:27:18 -0400
X-Greylist: delayed 982 seconds by postgrey-1.27 at vger.kernel.org; Mon, 10 Aug 2020 14:27:17 EDT
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
        by l2mail1.panix.com (Postfix) with ESMTPS id 4BQPCg4d5CzF8w
        for <linux-man@vger.kernel.org>; Mon, 10 Aug 2020 14:10:55 -0400 (EDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
        by mailbackend.panix.com (Postfix) with ESMTPSA id 4BQPCf6KybzmYt
        for <linux-man@vger.kernel.org>; Mon, 10 Aug 2020 14:10:54 -0400 (EDT)
Received: by mail-ej1-f41.google.com with SMTP id g19so10311339ejc.9
        for <linux-man@vger.kernel.org>; Mon, 10 Aug 2020 11:10:54 -0700 (PDT)
X-Gm-Message-State: AOAM5339MSAzzreMsh7Ou76JToHhKcEkP7kK1lOPuoapyr55bLQkd5Js
        gwVeu3sw5kpXBWXk844/pZbbadw4mbIkvUr6umY=
X-Google-Smtp-Source: ABdhPJz56b1qKGh4l6GFMykXlg8u3FIBwD25o14qSGh1Ujz3wYtTha+yx3rtkwyMqnUWtF07PCIms6JMJVIeNApxq/w=
X-Received: by 2002:a17:906:ce43:: with SMTP id se3mr22380490ejb.403.1597083053849;
 Mon, 10 Aug 2020 11:10:53 -0700 (PDT)
MIME-Version: 1.0
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com> <5f3149ad.G/e/1Ac5SJF38sra%Joerg.Schilling@fokus.fraunhofer.de>
In-Reply-To: <5f3149ad.G/e/1Ac5SJF38sra%Joerg.Schilling@fokus.fraunhofer.de>
From:   Zack Weinberg <zackw@panix.com>
Date:   Mon, 10 Aug 2020 14:10:42 -0400
X-Gmail-Original-Message-ID: <CAKCAbMgmuha1qTB_TKNSVxKvoWKVU-eG27+G-S9kP6rR021fGA@mail.gmail.com>
Message-ID: <CAKCAbMgmuha1qTB_TKNSVxKvoWKVU-eG27+G-S9kP6rR021fGA@mail.gmail.com>
Subject: Re: Pseudoterminal terminology in POSIX
To:     Joerg Schilling <Joerg.Schilling@fokus.fraunhofer.de>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        larryd.kbd@gmail.com, austin-group-l@opengroup.org,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Joseph Myers <joseph@codesourcery.com>, gwc@opengroup.org,
        Florian Weimer <fweimer@redhat.com>, enh@google.com,
        Paul Eggert <eggert@cs.ucla.edu>,
        "Carlos O'Donell" <carlos@redhat.com>, ajosey@opengroup.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Aug 10, 2020 at 9:21 AM Joerg Schilling
<Joerg.Schilling@fokus.fraunhofer.de> wrote:
> Larry Dwyer via austin-group-l at The Open Group <austin-group-l@opengroup.org> wrote:
>
> > How about the "control" side and the "terminal" side (of the paired
> > device files)?
>
> The Solaris man pty page since a really long time has this:
>
>     By default, 48 pseudo-terminal pairs are configured as  follows:
>
>        /dev/pty[p-r][0-9a-f] controller devices
>        /dev/tty[p-r][0-9a-f] slave devices
>
> so I would be OK with "controller" side and "terminal" side.

(libc-alpha, Michael - sorry about not responding to any of this
thread last week, my actual job has had me swamped.  I still mean to
give a whack at revising the glibc manual with this terminology but I
won't be able to get to it until *next* week at the earliest.)

I like "terminal side" for the tty[p-r][0-9a-f] | pts/[0-9]+ devices,
but "control(ler) side" still gives the wrong impression IMNSHO.  The
pty[p-r][0-9a-f] | ptmx devices don't exert any actual control over
anything.  They are just the other side of a bidirectional
communication channel.  It's not like USB, where the "master" side is
the only one that can initiate a data transfer.

The relationship between "real" terminals and "pseudo" terminals is
very much like the relationship between remote network sockets and
loopback sockets.  Data received from, or written to, a "real"
terminal is transferred over a hardware communications channel from/to
an external device, such as an RS232 serial line or a
directly-attached console.  With a "pseudo" terminal, on the other
hand, the data is transferred over a software queue from/to another
program running on the same computer (e.g. sshd, screen, xterm).  So I
think an inside/outside metaphor is more appropriate: how about
"outside", "exterior", or "external" device for the pty[p-r][0-9a-f] |
ptmx devices ?

zw
