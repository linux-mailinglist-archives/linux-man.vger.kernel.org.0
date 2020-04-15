Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE6A01A9502
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2020 09:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2635274AbgDOHpB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Apr 2020 03:45:01 -0400
Received: from mx2.suse.de ([195.135.220.15]:41870 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2635245AbgDOHo7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 15 Apr 2020 03:44:59 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id 67252AD23;
        Wed, 15 Apr 2020 07:44:54 +0000 (UTC)
Date:   Wed, 15 Apr 2020 09:44:53 +0200
From:   Petr Vorel <pvorel@suse.cz>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, David Howells <dhowells@redhat.com>
Subject: Re: [PATCH 1/1] getdents.2: Mention glibc support for getdents64()
Message-ID: <20200415074453.GA6565@dell5510>
Reply-To: Petr Vorel <pvorel@suse.cz>
References: <20191007135315.2214-1-pvorel@suse.cz>
 <39488d73-6d42-3213-98c3-5dc4f54203aa@gmail.com>
 <20200414181001.GA619561@x230>
 <9655825c-be5d-3941-60da-ccb8e5e433cb@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9655825c-be5d-3941-60da-ccb8e5e433cb@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

...
> >> Thanks. Patch applied.
> > Thanks a lot. I still don't see this patch in master (nor in other branches),
> > but you just maybe haven't pushed the changes.

> Yes, I've puushed now.
Thanks a lot!

> > BTW it'd be great if you push patch "Add manpage for fsopen(2), fspick(2) and
> > fsmount(2)" [1] and "Add manpages for move_mount(2) and open_tree(2)" [2] I sent
> > 2 months ago. It's based on David Howells' work with few obvious fixes.
> > It might not be perfect, but IMHO it's a good start and it'd be great to have
> > these recent syscalls documented.

> > Kind regards,
> > Petr

> > [1] https://marc.info/?l=linux-man&m=158109737807969&w=2
> > [2] https://marc.info/?l=linux-man&m=158109737907972&w=2

> These patches are on my radar still, Pester me in 
> a few days if nothing happens :-).
Thanks a lot, fully understand that you're busy :).

Kind regards,
Petr
