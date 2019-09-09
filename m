Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 446A0ADEE3
	for <lists+linux-man@lfdr.de>; Mon,  9 Sep 2019 20:27:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731442AbfIIS1y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Sep 2019 14:27:54 -0400
Received: from tartarus.angband.pl ([54.37.238.230]:41192 "EHLO
        tartarus.angband.pl" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730720AbfIIS1y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Sep 2019 14:27:54 -0400
Received: from kilobyte by tartarus.angband.pl with local (Exim 4.92)
        (envelope-from <kilobyte@angband.pl>)
        id 1i7OOB-0003Ia-1Z; Mon, 09 Sep 2019 20:27:47 +0200
Date:   Mon, 9 Sep 2019 20:27:47 +0200
From:   Adam Borowski <kilobyte@angband.pl>
To:     walter harms <wharms@bfs.de>
Cc:     mtk.manpages@gmail.com,
        Florin Blanaru <florin.blanaru96@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Quick fix for syscall man page
Message-ID: <20190909182747.GA12602@angband.pl>
References: <CAMkHNDzkn10oZLyK9S8-UnjGn=OyMy=P8Bx7+vf0iEBwpc5p2g@mail.gmail.com>
 <CAKgNAkhOCxB_go-+qSJBAabJxi67c=iBXfajTY09CXUMUj=hnQ@mail.gmail.com>
 <5D761692.9090905@bfs.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5D761692.9090905@bfs.de>
X-Junkbait: aaron@angband.pl, zzyx@angband.pl
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: kilobyte@angband.pl
X-SA-Exim-Scanned: No (on tartarus.angband.pl); SAEximRunCond expanded to false
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Sep 09, 2019 at 11:08:34AM +0200, walter harms wrote:
> Am 09.09.2019 10:52, schrieb Michael Kerrisk (man-pages):
> > [Adding Adam Borowski in CC, since he wrote the riscv text back at the
> > start of 2018, andand he may have a comment.]

I don't know RISCV; I needed to learn how to issue syscalls to port
something -- so I've searched for relevant documentation, tested that it
indeed works, then submitted that line to make the man page complete.

> > On Thu, 5 Sep 2019 at 18:35, Florin Blanaru <florin.blanaru96@gmail.com> wrote:
> >> http://man7.org/linux/man-pages/man2/syscall.2.html
> >>
> >> In the first table, for the riscv Arch/ABI, the instruction should be
> >> ecall instead of scall.
> >>
> >> According the official manual, the instruction has been renamed.
> >> https://content.riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf

What matters for us, and the vast majority of programmers, is that the
rename predates merging into official releases of binutils.  Thus, there is
no reason to ever use the old name in actual code.

> Maybe it would be helpful to add a "footnote" that this is a rename only.
> Otherwise people may get confused.

I wonder, perhaps just a commit message would be enough?  The alias is
historic only; new documentation is supposed to use the new name.  Man pages
contain a lot of data that has been obsolete for decades -- it might be good
to avoid stuff that became obsolete before the official release.

But it's up to you -- you know better what's your policy about historical
information.

> > --- a/man2/syscall.2
> > +++ b/man2/syscall.2
> > @@ -196,7 +196,7 @@ mips        syscall v0      v0      v1      a3      1, 6
> > -riscv  scall   a7      a0      a1      -
> > +riscv  ecall   a7      a0      a1      -


Meow!
-- 
⢀⣴⠾⠻⢶⣦⠀ We domesticated dogs 36000 years ago; together we chased
⣾⠁⢰⠒⠀⣿⡁ animals, hung out and licked or scratched our private parts.
⢿⡄⠘⠷⠚⠋⠀ Cats domesticated us 9500 years ago, and immediately we got
⠈⠳⣄⠀⠀⠀⠀ agriculture, towns then cities.     -- whitroth on /.
