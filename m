Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4147016386
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2019 14:13:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726322AbfEGMNs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 May 2019 08:13:48 -0400
Received: from mx01-fr.bfs.de ([193.174.231.67]:17715 "EHLO mx01-fr.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726276AbfEGMNs (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 7 May 2019 08:13:48 -0400
Received: from mail-fr.bfs.de (mail-fr.bfs.de [10.177.18.200])
        by mx01-fr.bfs.de (Postfix) with ESMTPS id E993D20322;
        Tue,  7 May 2019 14:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1557231222; h=from:from:sender:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=G9but4695PrXffGw8mTv2HJzuOnNLpTw6zYkG3CJPbw=;
        b=kFYjSmiVtSuRAXbxw3sP+yHb4if5ttTMfy6ycSebSVud/+YZjyQbUFiQO0F3OrXruYfkLq
        4uWPHoEofy9J1mbJGVpL1e4Xc/0jyyIdIJAT5fPC7H30qoAiwJ2L1vw0k+8xWe1PDqlVzR
        B2wfI9JIfrlUZno22fvpBmWYSf8am+VXrTBgnffdnTrJEn07Ciu+dwJBJqu+T0mEYyI1g+
        iIacKKZSea1znswG0K1zj3e1Wcxd/hMxE+bG6CFbaiCKuL+lO3Yu3IT6MWky84dMKe/1md
        xFIXUjq9Z3uHVzRDBmb/CIh5PN2lFCHZTOrtlFHoO2cx7YBxsr4TRwp9+UddxA==
Received: from [134.92.181.33] (unknown [134.92.181.33])
        by mail-fr.bfs.de (Postfix) with ESMTPS id BFA30BEEBD;
        Tue,  7 May 2019 14:13:41 +0200 (CEST)
Message-ID: <5CD17675.80800@bfs.de>
Date:   Tue, 07 May 2019 14:13:41 +0200
From:   walter harms <wharms@bfs.de>
Reply-To: wharms@bfs.de
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Thunderbird/3.0.11
MIME-Version: 1.0
To:     Francesco Sanesi <francesco.sanesi@gmail.com>
CC:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] awk.1p: tilde rendered as " " in man page and online
 HTML page
References: <CAG+x03ByjP2jdimjENgnOsNMwHgpgCVv==Fna_aLhj_d7Eh+ZA@mail.gmail.com>
In-Reply-To: <CAG+x03ByjP2jdimjENgnOsNMwHgpgCVv==Fna_aLhj_d7Eh+ZA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.03
Authentication-Results: mx01-fr.bfs.de
X-Spamd-Result: default: False [-3.03 / 7.00];
         ARC_NA(0.00)[];
         HAS_REPLYTO(0.00)[wharms@bfs.de];
         BAYES_HAM(-2.93)[99.70%];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[3];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         REPLYTO_ADDR_EQ_FROM(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         DKIM_SIGNED(0.00)[];
         FREEMAIL_TO(0.00)[gmail.com];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         FREEMAIL_CC(0.00)[gmail.com];
         MID_RHS_MATCH_FROM(0.00)[];
         RCVD_TLS_ALL(0.00)[];
         RCVD_COUNT_TWO(0.00)[2]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



Am 07.05.2019 13:54, schrieb Francesco Sanesi:
> In awk's POSIX documentation,
> both online at:
> http://man7.org/linux/man-pages/man1/awk.1p.html
> and in the awk(1p) man page:
> man-pages-posix-2013-a/man1p/awk.1p
> bundled in the archive man-pages-posix-2013-a.tar.xz downloaded from:
> https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/man-pages-posix/
> some instances of '~' (tilde) have been rendered as ' " " ' (space -
> double quotes - space - double quotes - space).
> 
> Referring to man-pages-posix-2013-a/man1p/awk.1p, these instances are
> fixed in the attached patch.
> It has been created with plain "git diff". Since I was not able to
> find any SCM repository for the POSIX man pages, the commits it refers
> to are obviously not meaningful (I created a local git repository to
> test "git diff" and "git apply").
> 
> The list of fixes has been determined comparing the above documents
> with "The Open Group Base Specifications Issue 7, IEEE Std 1003.1,
> 2013 Edition" at
> http://pubs.opengroup.org/onlinepubs/9699919799.2013edition/utilities/awk.html
> 
> Thank you for your great job.
> Best regards.
> 

good catch,
but perhaps it is better to use the groff character description: \[ti]
this will avoid possible translations by less then perfect tools.
(see man grof_char).


re,
 wh


