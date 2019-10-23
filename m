Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 88C7EE12F0
	for <lists+linux-man@lfdr.de>; Wed, 23 Oct 2019 09:17:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731524AbfJWHRl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Oct 2019 03:17:41 -0400
Received: from mx01-fr.bfs.de ([193.174.231.67]:19385 "EHLO mx01-fr.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389539AbfJWHRl (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 23 Oct 2019 03:17:41 -0400
Received: from mail-fr.bfs.de (mail-fr.bfs.de [10.177.18.200])
        by mx01-fr.bfs.de (Postfix) with ESMTPS id 399ED2033A;
        Wed, 23 Oct 2019 09:17:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1571815055; h=from:from:sender:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=mMJeH/QdXDtQvdvk2Ts4fcjeSfR7r0RDhs6MSBd/zYY=;
        b=Nvigfnk9e9J9R5VSrFfo0Sl2tgbUKIeHG1eu9v1k5kT8XccP5TPgnBC8LTXKAec1Otgr5F
        lInXYMuYHvBMn/b/fA7d9y2Hc+jOsRFKBu+QBi4GfKQdg381GPQObE/gERu5tSQ1tQueMb
        PX4i4Lr65pnMqmdE05mtJxgehlMF7A5jK+0Mf7c94BSuqpxs5OeigcKQX0wf2LXzOL9Z2I
        ewfO7xZNHbLEPvG0vgfuhzr5FyC7dIzp4BYJFMMsW5/hAcVSBquA1Okv8PwphKFcUGVAUi
        elld1rupbmolqO6DKWJaSd8MIOrg+UVVqnWdLCxO7FY+V70wmlzXnjmz9EIa6Q==
Received: from [134.92.181.33] (unknown [134.92.181.33])
        by mail-fr.bfs.de (Postfix) with ESMTPS id 0B5BBBEEBD;
        Wed, 23 Oct 2019 09:17:34 +0200 (CEST)
Message-ID: <5DAFFE8E.6030401@bfs.de>
Date:   Wed, 23 Oct 2019 09:17:34 +0200
From:   walter harms <wharms@bfs.de>
Reply-To: wharms@bfs.de
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Thunderbird/3.0.11
MIME-Version: 1.0
To:     "Hayes, Bill" <bill.hayes@hpe.com>
CC:     "ocfs2-devel@oss.oracle.com" <ocfs2-devel@oss.oracle.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Should lseek manpage reference OCFS2 versus OCFS?
References: <CS1PR8401MB1031A3AE826CBEE15E95F60D8B680@CS1PR8401MB1031.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: <CS1PR8401MB1031A3AE826CBEE15E95F60D8B680@CS1PR8401MB1031.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.48
Authentication-Results: mx01-fr.bfs.de
X-Spamd-Result: default: False [-1.48 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_REPLYTO(0.00)[wharms@bfs.de];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         REPLYTO_ADDR_EQ_FROM(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         DKIM_SIGNED(0.00)[];
         BAYES_HAM(-2.38)[97.14%];
         NEURAL_HAM(-0.00)[-0.999,0];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         SUBJECT_ENDS_QUESTION(1.00)[];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         RCVD_TLS_ALL(0.00)[]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



Am 23.10.2019 00:30, schrieb Hayes, Bill:
> On the lseek man page (http://man7.org/linux/man-pages/man2/lseek.2.html), in its description of SEEK_DATA and SEEK_HOLE it says that: The SEEK_HOLE and SEEK_DATA operations are supported for the following filesystems:
>        *  Btrfs (since Linux 3.1)
>        *  OCFS (since Linux 3.2)
>        *  XFS (since Linux 3.5)
>        *  ext4 (since Linux 3.8)
>        *  tmpfs(5) (since Linux 3.8)
>        *  NFS (since Linux 3.18)
>        *  FUSE (since Linux 4.5)
> 
> I think that the reference to OCFS on the manpage should actually be to the OCFS2 file system.  
> 
> I think the 'OCFS (since Linux 3.2)' manpage reference is referring to this commit to OCFS2:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs?id=93862d5e1ab875664c6cc95254fc365028a48bb1
> 
> This OCFS2 commit was included as part of the Linux 3.2-rc4 drop (https://lwn.net/Articles/470337/).
> 
> Can someone with more experience with OCFS and OCFS2 confirm that the manpage should be changed to OCFS2 instead of OCFS?
> 
> Bill

Hi Bill,
i do not think this is the right way. The lssek man page
should say: the availability of SEEK_DATA and SEEK_HOLE
depend on the underlying filesystem.

On the other side the <filesystem> man pages need an entry
what they support. Having that list inside lseek(3) means
to have a big list of filesystems to maintain here.

re,
 wh



> 
> 	commit 93862d5e1ab875664c6cc95254fc365028a48bb1
> 	Author: Sunil Mushran <sunil.mushran@oracle.com>
> 	Date:   Mon Jul 25 14:58:15 2011 -0700
> 
> 		ocfs2: Implement llseek()
> 
> 
> 		SEEK_HOLE sets the file pointer to the start of either a hole or an unwritten
> 		(preallocated) extent, that is greater than or equal to the supplied offset.
> 
> 		SEEK_DATA sets the file pointer to the start of an allocated extent (not
> 		unwritten) that is greater than or equal to the supplied offset.
> 
> 		If the supplied offset is on a desired region, then the file pointer is set
> 		to it. Offsets greater than or equal to the file size return -ENXIO.
> 
> 		Unwritten (preallocated) extents are considered holes because the file system
> 		treats reads to such regions in the same way as it does to holes.
> 
> 		Signed-off-by: Sunil Mushran <sunil.mushran@oracle.com>
